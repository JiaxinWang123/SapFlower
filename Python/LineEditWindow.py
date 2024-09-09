import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QHBoxLayout, QWidget, QPushButton, QLabel, QToolBar
from PyQt5.QtGui import QKeySequence
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QShortcut
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure
from matplotlib.patches import Rectangle
from matplotlib.backends.backend_qt5 import NavigationToolbar2QT as NavigationToolbar
from utils import export_plot, add_toolbar
import numpy as np

class LineEditWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("SapFlower")
        self.setGeometry(100, 100, 1280, 760)
        self.setWindowIcon(QtGui.QIcon("SapFlower_white_bg.ico"))
        
        self.deleted_data_history = []

        self.central_widget = QWidget()
        self.setCentralWidget(self.central_widget)
        self.layout = QVBoxLayout(self.central_widget)
        self.layout.setContentsMargins(0, 0, 0, 0)  # Remove layout margins

        # Create Matplotlib figure and canvas
        self.figure = Figure()
        self.canvas = FigureCanvas(self.figure)
        self.layout.addWidget(self.canvas)

        # Add toolbar
        self.add_toolbar()

        # Add buttons horizontally
        self.add_buttons()

        # Status bar
        self.status_bar = QLabel()
        self.layout.addWidget(self.status_bar)

        # Example plot
        self.plot_example()

        # Variables for region selection
        self.selected_region = None
        self.selected_points = []

        # Rectangle patch for selected region
        self.rect_patch = None

        # Storage for deleted data
        self.deleted_data = []

        # Connect mouse events
        self.canvas.mpl_connect('button_press_event', self.on_press)
        self.canvas.mpl_connect('button_release_event', self.on_release)

        # Connect window resize event
        self.resizeEvent = self.custom_resize_event

        # Create shortcuts
        self.create_shortcuts()

        # Flag to keep track of the last attempted undo operation
        self.last_undo_operation = None

    def add_toolbar(self):
        self.toolbar = NavigationToolbar(self.canvas, self)
        self.addToolBar(self.toolbar)

    def add_buttons(self):
        self.button_layout = QHBoxLayout()

        # Example buttons
        self.delete_button = QPushButton("Delete Selected")
        self.undo_delete_button = QPushButton("Undo Delete")
        self.subtract_button = QPushButton("Subtract from One")
        self.undo_subtract_button = QPushButton("Undo Subtract")
        self.export_button = QPushButton("Export Plot")

        self.delete_button.clicked.connect(self.delete_selected_region)
        self.undo_delete_button.clicked.connect(self.undo_delete)
        self.subtract_button.clicked.connect(self.subtract_from_one)
        self.undo_subtract_button.clicked.connect(self.undo_subtract_from_one)
        self.export_button.clicked.connect(lambda: export_plot(self.figure))

        self.button_layout.addWidget(self.delete_button)
        self.button_layout.addWidget(self.undo_delete_button)
        self.button_layout.addWidget(self.subtract_button)
        self.button_layout.addWidget(self.undo_subtract_button)
        self.button_layout.addWidget(self.export_button)

        self.layout.addLayout(self.button_layout)


    def plot_example(self):
        ax = self.figure.add_subplot(111)
        x = np.linspace(0, 10, 100)
        y = np.sin(x)
        ax.plot(x, y)
        ax.set_xlabel("Day time ", fontname="Arial")
        ax.set_ylabel("Temp diff (°C)", fontname="Arial")
        ax.grid(True)
        for item in ([ax.title, ax.xaxis.label, ax.yaxis.label] +
                    ax.get_xticklabels() + ax.get_yticklabels()):
            item.set_fontname("Arial")
        self.canvas.draw()
        self.tight_layout()  # Adjust layout to minimize empty space

    def tight_layout(self):
        self.figure.tight_layout(rect=[0, 0, 1, 1])  # Adjust layout to minimize empty space

    def custom_resize_event(self, event):
        self.tight_layout()
        self.canvas.draw()

    def report_status(self, message):
        self.status_bar.setText(message)

    def on_press(self, event):
        if event.inaxes is not None:
            self.selected_region = [(event.xdata, event.ydata)]
            self.selected_points = []

    def on_release(self, event):
        if event.inaxes is not None and self.selected_region:
            self.selected_region.append((event.xdata, event.ydata))
            self.draw_rectangle()

    def draw_rectangle(self):
        if len(self.selected_region) == 2:
            if self.rect_patch:
                self.rect_patch.remove()

            x0, y0 = self.selected_region[0]
            x1, y1 = self.selected_region[1]
            width = abs(x1 - x0)
            height = abs(y1 - y0)
            min_x = min(x0, x1)
            min_y = min(y0, y1)
            self.rect_patch = Rectangle((min_x, min_y), width, height, edgecolor='red', facecolor='none')
            self.figure.gca().add_patch(self.rect_patch)
            self.canvas.draw()

    def delete_selected_region(self):
        if self.selected_region and len(self.selected_region) == 2:
            x0, y0 = self.selected_region[0]
            x1, y1 = self.selected_region[1]
            x_data, y_data = self.figure.gca().lines[0].get_data()

            # Find indices of points within the selected region
            mask = (x_data >= min(x0, x1)) & (x_data <= max(x0, x1)) & (y_data >= min(y0, y1)) & (y_data <= max(y0, y1))
            selected_indices = np.where(mask)[0]

            if selected_indices.size > 0:
                # Set selected points to NaN and store them
                self.deleted_data_history.append((selected_indices.copy(), list(zip(x_data[selected_indices], y_data[selected_indices]))))
                x_data[selected_indices] = np.nan
                y_data[selected_indices] = np.nan

                # Update the plot
                self.update_plot(x_data, y_data)

                self.report_status(f"Deleted {len(selected_indices)} points.")
            else:
                self.report_status("No points found within the selected region.")
        else:
            self.report_status("No valid region selected.")

        # Reset selected points
        self.selected_region = None

    def undo_delete(self):
        try:
            if self.deleted_data_history:
                # Retrieve the last deleted data and its indices
                deleted_indices, deleted_values = self.deleted_data_history.pop()

                # Restore the deleted values to their original positions
                x_data, y_data = self.figure.gca().lines[0].get_data()
                for index, value in zip(deleted_indices, deleted_values):
                    x_data[index] = value[0]
                    y_data[index] = value[1]

                # Update the plot
                self.update_plot(x_data, y_data)
                self.report_status("Undo delete operation.")
            else:
                self.report_status("No deletion operation to undo.")
        except IndexError:
            if self.last_undo_operation == "subtract":
                self.report_status("Ctrl+Z is not applicable for undoing deletion.")
            else:
                self.report_status("Undo delete operation failed.")


    def update_plot(self, x_data, y_data):
        # Store initial axes limits
        xlim = self.figure.gca().get_xlim()
        ylim = self.figure.gca().get_ylim()

        # Update plot
        self.figure.gca().clear()
        self.figure.gca().plot(x_data, y_data, color='green', linestyle='-', linewidth=2, label='Modified Data')
        self.figure.gca().set_xlabel("Day time", fontname="Arial")
        self.figure.gca().set_ylabel("Temp diff (°C)", fontname="Arial")
        self.figure.gca().grid(True)
        self.figure.gca().legend(fontsize=10)

        # Set font properties to match original plot
        for item in ([self.figure.gca().title, self.figure.gca().xaxis.label, self.figure.gca().yaxis.label] +
                     self.figure.gca().get_xticklabels() + self.figure.gca().get_yticklabels()):
            item.set_fontname("Arial")

        # Reset axes limits
        self.figure.gca().set_xlim(xlim)
        self.figure.gca().set_ylim(ylim)

        self.tight_layout()  # Adjust layout to minimize empty space
        self.canvas.draw()

        # Remove selection rectangle
        if self.rect_patch:
            self.rect_patch.remove()
            self.rect_patch = None

    def subtract_from_one(self):
        if self.selected_region and len(self.selected_region) == 2:
            x0, y0 = self.selected_region[0]
            x1, y1 = self.selected_region[1]
            x_data, y_data = self.figure.gca().lines[0].get_data()

            # Find indices of points within the selected region
            mask = (x_data >= min(x0, x1)) & (x_data <= max(x0, x1)) & (y_data >= min(y0, y1)) & (y_data <= max(y0, y1))
            selected_indices = np.where(mask)[0]

            if selected_indices.size > 0:
                # Subtract each selected data point from 1 and store the changes
                self.deleted_data.append((selected_indices.copy(), y_data[selected_indices].copy()))
                y_data[selected_indices] = 1 - y_data[selected_indices]

                # Update the plot
                self.update_plot(x_data, y_data)

                self.report_status(f"Subtracted each selected data point from 1.")
            else:
                self.report_status("No points found within the selected region.")
        else:
            self.report_status("No valid region selected.")

        # Reset selected points
        self.selected_region = None

    def undo_subtract_from_one(self):
        try:
            if self.deleted_data:
                x_data, y_data = self.figure.gca().lines[0].get_data()

                if len(self.deleted_data[-1][0]) == 0 or len(self.deleted_data[-1][1]) == 0:
                    self.report_status("No data to undo.")
                    return

                # Retrieve the indices of the selected points
                selected_indices, _ = self.deleted_data.pop()

                # Store the undo operation for multiple undos
                self.deleted_data_history.append((selected_indices.copy(), y_data[selected_indices].copy()))

                # Perform subtraction again on the selected points
                y_data[selected_indices] = 1 - y_data[selected_indices]

                # Update the plot
                self.update_plot(x_data, y_data)

                self.report_status("Undone subtraction from one.")
            else:
                self.report_status("No subtraction operation to undo.")
        except IndexError:
            if self.last_undo_operation == "delete":
                self.report_status("Ctrl+Z is not applicable for undoing subtraction.")
            else:
                self.report_status("Undo subtraction operation failed.")

    def create_shortcuts(self):
        # Undo Delete shortcut
        self.undo_delete_shortcut = QShortcut(QKeySequence("Ctrl+Z"), self)
        self.undo_delete_shortcut.activated.connect(self.undo_delete)
        self.last_undo_operation = "delete"

        # Undo Subtract shortcut
        self.undo_subtract_shortcut = QShortcut(QKeySequence("Ctrl+Shift+Z"), self)
        self.undo_subtract_shortcut.activated.connect(self.undo_subtract_from_one)
        self.last_undo_operation = "subtract"

        # Delete selected region shortcut
        self.delete_shortcut = QShortcut(QKeySequence("Delete"), self)
        self.delete_shortcut.activated.connect(self.delete_selected_region)
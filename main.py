# main.py
import sys
from PyQt5.QtWidgets import QApplication
from LineEditWindow import LineEditWindow
# from utils import add_toolbar
# from utils import export_plot

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = LineEditWindow()
    window.show()
    # add_toolbar(window, window.canvas)
    # Force an initial resize event to trigger layout adjustment
    window.resize(window.size().width() + 1, window.size().height())
    window.resize(window.size().width() - 1, window.size().height())
    sys.exit(app.exec_())

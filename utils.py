# utils.py

import os
import numpy as np
from PyQt5.QtWidgets import QFileDialog
from matplotlib.backends.backend_qt5agg import NavigationToolbar2QT as NavigationToolbar

def export_plot(figure):
    options = QFileDialog.Options()
    file_name, _ = QFileDialog.getSaveFileName(None, "Save Plot", "", "PDF Files (*.pdf);;PNG Files (*.png);;SVG Files (*.svg);;JPEG Files (*.jpg);;EPS Files (*.eps);;PS Files (*.ps)", options=options)
    if file_name:
        figure.savefig(file_name, bbox_inches='tight')



def add_toolbar(window, canvas):
    # Add Matplotlib navigation toolbar
    toolbar = NavigationToolbar(canvas, window)
    window.layout.addWidget(toolbar)

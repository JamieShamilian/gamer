#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#    Nov 23, 2020 01:34:58 PM EST  platform: Windows NT

import sys

try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

def set_Tk_var():
    global usertype
    usertype = tk.StringVar()
    global spendingrange
    spendingrange = tk.StringVar()
    global platformtype
    platformtype = tk.StringVar()

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top

import query

def open_query():
    print('profile_support.open_query')
    sys.stdout.flush()
    query.create_query(root)

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import profile
    profile.vp_start_gui()





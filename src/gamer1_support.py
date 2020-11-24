#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#    Nov 23, 2020 02:21:24 PM EST  platform: Windows NT
#    Nov 23, 2020 02:54:09 PM EST  platform: Windows NT

import sys

guestrec = {  "username" : "guest", "usertype" : "casual", "spendingrange" : "20", "platformtype" : "*" }

johnrec = {  "username" : "john", "usertype" : "casual", "spendingrange" : "20", "platformtype" : "Xbox" }
                
maryrec = {  "username" : "mary", "usertype" : "hardcore", "spendingrange" : "50", "platformtype" : "Sony" }
         

users = [ ]   
users.append(guestrec)            
users.append(johnrec)
users.append(maryrec)  

currentuser = "guest"
currentusertype = "casual"
currentspendingrange = "50"
currentplatformtype = "*"

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
    global username
    username = tk.StringVar()

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top

import profile

def open_profile():
    print('gamer1_support.open_profile')
    sys.stdout.flush()
    profile.create_profile(root)
    
import query

def open_query():
    global currentusertype, currentpsendingrange, currentplatformtype, currentuser
    print('gamer1_support.open_query')
    sys.stdout.flush()
    currentuser = username.get()
    for i in users :
        if ( i.get("username") == currentuser ):
            currentRec = i
            break
    print(currentuser)
    currentusertype = i.get("usertype")
    currentspendingrange = i.get("spendingrange")
    currentplatformtype = i.get("platformtype")

    print(currentuser + " " + currentplatformtype)
    sys.stdout.flush()
    query.create_query(root)

def open_query_guest():
    print('gamer1_support.open_query_guest')
    sys.stdout.flush()
    currentuser = "guest"
    for i in users:
        if (i.get("username") == currentuser):
            currentRec = i
            break
    print(currentuser)
    currentusertype = i.get("usertype")
    currentspendingrange = i.get("spendingrange")
    currentplatformtype = i.get("platformtype")
    sys.stdout.flush()
    query.create_query(root)
    

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import gamer1
    gamer1.vp_start_gui()






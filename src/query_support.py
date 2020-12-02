#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# Support module generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#    Nov 23, 2020 02:12:29 PM EST  platform: Windows NT
#    Nov 25, 2020 10:24:02 AM EST  platform: Windows NT
#    Nov 27, 2020 10:59:36 AM EST  platform: Windows NT

import sys

import requests
import json
import csv

import gamer1_support

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
    global gamelist
    gamelist = tk.StringVar()
    global daterange
    daterange = tk.StringVar()
    global costrange
    costrange = tk.StringVar()
    global gameplatform
    gameplatform = tk.StringVar()
    global gametype
    gametype = tk.StringVar()

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top
    daterange.set("*")
    spend = gamer1_support.currentspendingrange
    costrange.set(spend)
    #print(costrange);
    platform = gamer1_support.currentplatformtype
    gameplatform.set(platform)
    print('query_support init ')
    print(platform+spend)
    gametype.set("*")

# use postman access token good for 60 days
#https://id.twitch.tv/oauth2/token?client_id=abcdefg12345&client_secret=hijklmn67890&grant_type=client_credentials

game1list = "game1\ngame2\ngame3\ngame1\ngame2\ngame3\ngame1\ngame2\ngame3\ngame1\ngame2\ngame3\n"

from igdb.wrapper import IGDBWrapper
from igdb.igdbapi_pb2 import GameResult

def start_query():
    print('query_support.start_query')
    gamelist.set(game1list)
    sys.stdout.flush()
    platform = gameplatform.get()
    if platform == 'Xbox':
        platformnum = 49
    if platform == 'Sony':
        platformnum = 48
    if platform == 'Switch':
        platformnum = 130
    if platform == 'Phone':
        platformnum = 34
    if platform == 'PC':
        platformnum = 6   
        
    if platform == "*":
        query = "fields name; limit 30; "
    else:
        query = "fields name; where platforms = " + str(platformnum) + "; limit 30; "
    
    
    #
    # 48 - PS4, 49 - Xbox one, 130 - switch, 34 - android , 39 - ios , windows - 6
    #
    # token good for 60 days.
    wrapper = IGDBWrapper("ab149we1sss225z73u22uknald6tkx","oeliv17vvkt778iesj0n7m3kvo807t")
    byte_array = wrapper.api_request(
            'games',
            query
            )
    print(byte_array);
    #games_message = GameResult()
    #
    #   bug in google protobuf code/config
    #  
    #games_message.ParseFromString(byte_array) # Fills the protobuf message object with the response

    

def stop_query():
    print('query_support.stop_query')
    sys.stdout.flush()

def hide_window():
    # Function which closes the window.
    global top_level
    top_level.withdraw()

import gamer1_support

def exitall():
    print('query_support.exitall')
    sys.stdout.flush()
    gamer1_support.destroy_window()

def destroy_window():
    # Function which closes the window.
    global top_level
    gamer1_support.destroy_window()
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import query
    query.vp_start_gui()






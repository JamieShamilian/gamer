#############################################################################
# Generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#  Nov 27, 2020 12:58:27 PM EST  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m53" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 829x565+1614+159
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 2564 1415
    wm minsize $top 148 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Query Toplevel"
    vTcl:DefineAlias "$top" "query" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    label $top.lab45 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 24 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Query Criteria} 
    vTcl:DefineAlias "$top.lab45" "Label1" vTcl:WidgetProc "query" 1
    bind $top.lab45 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Querey Criteria}
    }
    label $top.lab46 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Date range} 
    vTcl:DefineAlias "$top.lab46" "Label2" vTcl:WidgetProc "query" 1
    label $top.lab47 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Cost Range} 
    vTcl:DefineAlias "$top.lab47" "Label3" vTcl:WidgetProc "query" 1
    label $top.lab48 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Game Platform} 
    vTcl:DefineAlias "$top.lab48" "Label4" vTcl:WidgetProc "query" 1
    label $top.lab49 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Game Type} 
    vTcl:DefineAlias "$top.lab49" "Label5" vTcl:WidgetProc "query" 1
    menu $top.m53 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    button $top.but57 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command stop_query \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Cancel 
    vTcl:DefineAlias "$top.but57" "Button1" vTcl:WidgetProc "query" 1
    button $top.but58 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command start_query \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Search 
    vTcl:DefineAlias "$top.but58" "Button2" vTcl:WidgetProc "query" 1
    ttk::combobox $top.tCo44 \
        -values {* 30 90 180 365} -font TkTextFont -textvariable daterange \
        -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo44" "TCombobox1" vTcl:WidgetProc "query" 1
    ttk::combobox $top.tCo45 \
        -values {* 10 20 50 100 {}} -font TkTextFont -textvariable costrange \
        -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo45" "TCombobox2" vTcl:WidgetProc "query" 1
    ttk::combobox $top.tCo46 \
        -values {* PC Sony Xbox Switch Phone {}} -font TkTextFont \
        -textvariable gameplatform -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo46" "TCombobox3" vTcl:WidgetProc "query" 1
    ttk::combobox $top.tCo47 \
        \
        -values {Action Adventure RPG Simulation Strategy Sports Puzzle Idle {} {}} \
        -font TkTextFont -textvariable gametype -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo47" "TCombobox4" vTcl:WidgetProc "query" 1
    label $top.lab44 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Select Combo Box Criteria / press Search} 
    vTcl:DefineAlias "$top.lab44" "Label6" vTcl:WidgetProc "query" 1
    button $top.but44 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command exitall \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Exit 
    vTcl:DefineAlias "$top.but44" "Button3" vTcl:WidgetProc "query" 1
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd $top.scr46 \
        -background $vTcl(actual_gui_bg) -height 477 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 253 
    vTcl:DefineAlias "$top.scr46" "Scrolledlistbox1" vTcl:WidgetProc "query" 1

    $top.scr46.01 configure -background white \
        -cursor xterm \
        -disabledforeground #a3a3a3 \
        -font TkFixedFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor #d9d9d9 \
        -selectbackground blue \
        -selectforeground white \
        -width 10 \
        -listvariable gamelist
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab45 \
        -in $top -x 0 -relx 0.121 -y 0 -rely 0.071 -width 0 -relwidth 0.316 \
        -height 0 -relheight 0.103 -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 0 -relx 0.117 -y 0 -rely 0.333 -width 0 -relwidth 0.137 \
        -height 0 -relheight 0.08 -anchor nw -bordermode ignore 
    place $top.lab47 \
        -in $top -x 0 -relx 0.117 -y 0 -rely 0.444 -width 0 -relwidth 0.153 \
        -height 0 -relheight 0.058 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 0 -relx 0.121 -y 0 -rely 0.531 -width 0 -relwidth 0.17 \
        -height 0 -relheight 0.08 -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 0 -relx 0.1 -y 0 -rely 0.644 -width 0 -relwidth 0.187 \
        -height 0 -relheight 0.058 -anchor nw -bordermode ignore 
    place $top.but57 \
        -in $top -x 0 -relx 0.253 -y 0 -rely 0.85 -width 96 -relwidth 0 \
        -height 43 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but58 \
        -in $top -x 0 -relx 0.084 -y 0 -rely 0.85 -width 86 -relwidth 0 \
        -height 43 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tCo44 \
        -in $top -x 0 -relx 0.338 -y 0 -rely 0.354 -width 0 -relwidth 0.226 \
        -height 0 -relheight 0.046 -anchor nw -bordermode ignore 
    place $top.tCo45 \
        -in $top -x 0 -relx 0.338 -y 0 -rely 0.46 -width 0 -relwidth 0.226 \
        -height 0 -relheight 0.046 -anchor nw -bordermode ignore 
    place $top.tCo46 \
        -in $top -x 0 -relx 0.338 -y 0 -rely 0.549 -width 0 -relwidth 0.226 \
        -height 0 -relheight 0.046 -anchor nw -bordermode ignore 
    place $top.tCo47 \
        -in $top -x 0 -relx 0.338 -y 0 -rely 0.637 -width 0 -relwidth 0.226 \
        -height 0 -relheight 0.046 -anchor nw -bordermode ignore 
    place $top.lab44 \
        -in $top -x 0 -relx 0.109 -y 0 -rely 0.212 -width 0 -relwidth 0.39 \
        -height 0 -relheight 0.081 -anchor nw -bordermode ignore 
    place $top.but44 \
        -in $top -x 0 -relx 0.434 -y 0 -rely 0.85 -width 76 -relwidth 0 \
        -height 43 -relheight 0 -anchor nw -bordermode ignore 
    place $top.scr46 \
        -in $top -x 0 -relx 0.627 -y 0 -rely 0.088 -width 0 -relwidth 0.305 \
        -height 0 -relheight 0.844 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}


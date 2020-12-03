#############################################################################
# Generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#  Dec 02, 2020 08:16:17 PM EST  platform: Windows NT
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
        -menu "$top.m47" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x450+863+161
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
    wm title $top "Profile Toplevel"
    vTcl:DefineAlias "$top" "profile" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label $top.lab45 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 24 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Profile Screen} 
    vTcl:DefineAlias "$top.lab45" "Label1" vTcl:WidgetProc "profile" 1
    label $top.lab46 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Username 
    vTcl:DefineAlias "$top.lab46" "Label2" vTcl:WidgetProc "profile" 1
    menu $top.m47 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    label $top.lab48 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text UserType 
    vTcl:DefineAlias "$top.lab48" "Label3" vTcl:WidgetProc "profile" 1
    label $top.lab49 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Spending Range} 
    vTcl:DefineAlias "$top.lab49" "Label4" vTcl:WidgetProc "profile" 1
    label $top.lab50 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Platform Type} 
    vTcl:DefineAlias "$top.lab50" "Label5" vTcl:WidgetProc "profile" 1
    entry $top.ent51 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -textvariable username -width 10 
    vTcl:DefineAlias "$top.ent51" "Entry1" vTcl:WidgetProc "profile" 1
    button $top.but56 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command open_query \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Apply 
    vTcl:DefineAlias "$top.but56" "Button1" vTcl:WidgetProc "profile" 1
    ttk::combobox $top.tCo44 \
        -values {Hardcore Casual Mobile Online Observer Armchair {} {}} \
        -font TkTextFont -textvariable usertype -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo44" "TCombobox1" vTcl:WidgetProc "profile" 1
    ttk::combobox $top.tCo45 \
        -values {* 10 20 50 100 {} {}} -font TkTextFont \
        -textvariable spendingrange -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo45" "TCombobox2" vTcl:WidgetProc "profile" 1
    ttk::combobox $top.tCo46 \
        -values {PC Sony Xbox Switch Phone {} {}} -font TkTextFont \
        -textvariable platformtype -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo46" "TCombobox3" vTcl:WidgetProc "profile" 1
    label $top.lab47 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Type username and combo box} 
    vTcl:DefineAlias "$top.lab47" "Label6" vTcl:WidgetProc "profile" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab45 \
        -in $top -x 0 -relx 0.133 -y 0 -rely 0.089 -width 0 -relwidth 0.453 \
        -height 0 -relheight 0.147 -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 0 -relx 0.133 -y 0 -rely 0.333 -width 0 -relwidth 0.17 \
        -height 0 -relheight 0.124 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 0 -relx 0.133 -y 0 -rely 0.467 -width 0 -relwidth 0.17 \
        -height 0 -relheight 0.08 -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 0 -relx 0.15 -y 0 -rely 0.578 -width 0 -relwidth 0.203 \
        -height 0 -relheight 0.102 -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 0 -relx 0.15 -y 0 -rely 0.711 -width 0 -relwidth 0.187 \
        -height 0 -relheight 0.102 -anchor nw -bordermode ignore 
    place $top.ent51 \
        -in $top -x 0 -relx 0.483 -y 0 -rely 0.378 -width 104 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but56 \
        -in $top -x 0 -relx 0.167 -y 0 -rely 0.844 -width 56 -relwidth 0 \
        -height 33 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tCo44 \
        -in $top -x 0 -relx 0.483 -y 0 -rely 0.489 -width 0 -relwidth 0.312 \
        -height 0 -relheight 0.058 -anchor nw -bordermode ignore 
    place $top.tCo45 \
        -in $top -x 0 -relx 0.483 -y 0 -rely 0.622 -width 0 -relwidth 0.312 \
        -height 0 -relheight 0.058 -anchor nw -bordermode ignore 
    place $top.tCo46 \
        -in $top -x 0 -relx 0.483 -y 0 -rely 0.756 -width 0 -relwidth 0.312 \
        -height 0 -relheight 0.058 -anchor nw -bordermode ignore 
    place $top.lab47 \
        -in $top -x 0 -relx 0.15 -y 0 -rely 0.222 -width 0 -relwidth 0.387 \
        -height 0 -relheight 0.124 -anchor nw -bordermode ignore 
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


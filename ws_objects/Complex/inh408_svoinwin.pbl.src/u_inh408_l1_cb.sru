$PBExportHeader$u_inh408_l1_cb.sru
forward
global type u_inh408_l1_cb from commandbutton
end type
end forward

global type u_inh408_l1_cb from commandbutton
integer width = 361
integer height = 76
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "SL1"
end type
global u_inh408_l1_cb u_inh408_l1_cb

type variables
String 	is_String = "SL1"
end variables

on u_inh408_l1_cb.create
end on

on u_inh408_l1_cb.destroy
end on

event clicked;W_INH408W01_L1_SVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute u_inh408_l1_cb Script.", False)
end event


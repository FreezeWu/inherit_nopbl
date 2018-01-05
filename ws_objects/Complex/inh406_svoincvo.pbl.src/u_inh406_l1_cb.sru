$PBExportHeader$u_inh406_l1_cb.sru
forward
global type u_inh406_l1_cb from commandbutton
end type
end forward

global type u_inh406_l1_cb from commandbutton
integer width = 457
integer height = 84
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "SL1"
end type
global u_inh406_l1_cb u_inh406_l1_cb

type variables
String	is_String = "SL1"
end variables

on u_inh406_l1_cb.create
end on

on u_inh406_l1_cb.destroy
end on

event clicked;If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_inh406_L1_cb Script.", False)
End If
end event


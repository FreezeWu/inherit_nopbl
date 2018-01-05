$PBExportHeader$u_inh407_l1_cb.sru
forward
global type u_inh407_l1_cb from commandbutton
end type
end forward

global type u_inh407_l1_cb from commandbutton
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
global u_inh407_l1_cb u_inh407_l1_cb

type variables

end variables

on u_inh407_l1_cb.create
end on

on u_inh407_l1_cb.destroy
end on

event clicked;If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_inh407_L1_cb", False)
End If
end event


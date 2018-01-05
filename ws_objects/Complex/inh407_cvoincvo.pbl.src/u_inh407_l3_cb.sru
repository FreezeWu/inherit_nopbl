$PBExportHeader$u_inh407_l3_cb.sru
forward
global type u_inh407_l3_cb from u_inh407_l2_cb
end type
end forward

global type u_inh407_l3_cb from u_inh407_l2_cb
string text = "SL3"
end type
global u_inh407_l3_cb u_inh407_l3_cb

on u_inh407_l3_cb.create
call super::create
end on

on u_inh407_l3_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_inh407_L3_cb", False)
End If
end event


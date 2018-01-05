$PBExportHeader$u_inh407_l2_cb.sru
forward
global type u_inh407_l2_cb from u_inh407_l1_cb
end type
end forward

global type u_inh407_l2_cb from u_inh407_l1_cb
string text = "SL2"
end type
global u_inh407_l2_cb u_inh407_l2_cb

on u_inh407_l2_cb.create
call super::create
end on

on u_inh407_l2_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_inh407_L2_cb", False)
End If
end event


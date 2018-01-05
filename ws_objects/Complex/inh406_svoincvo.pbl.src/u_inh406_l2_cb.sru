$PBExportHeader$u_inh406_l2_cb.sru
forward
global type u_inh406_l2_cb from u_inh406_l1_cb
end type
end forward

global type u_inh406_l2_cb from u_inh406_l1_cb
string text = "SL2"
string is_string = "SL2"
end type
global u_inh406_l2_cb u_inh406_l2_cb

on u_inh406_l2_cb.create
call super::create
end on

on u_inh406_l2_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_inh406_L2_cb Script.", False)
End If
end event


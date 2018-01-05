$PBExportHeader$u_inh406_l3_cb.sru
forward
global type u_inh406_l3_cb from u_inh406_l2_cb
end type
end forward

global type u_inh406_l3_cb from u_inh406_l2_cb
string text = "SL3"
string is_string = "SL3"
end type
global u_inh406_l3_cb u_inh406_l3_cb

on u_inh406_l3_cb.create
call super::create
end on

on u_inh406_l3_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_inh406_L3_cb Script.", False)
End If
end event


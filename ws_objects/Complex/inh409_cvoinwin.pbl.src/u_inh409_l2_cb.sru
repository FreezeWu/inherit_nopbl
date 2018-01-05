$PBExportHeader$u_inh409_l2_cb.sru
forward
global type u_inh409_l2_cb from u_inh409_l1_cb
end type
end forward

global type u_inh409_l2_cb from u_inh409_l1_cb
string text = "SL2"
string is_string = "SL2"
end type
global u_inh409_l2_cb u_inh409_l2_cb

on u_inh409_l2_cb.create
call super::create
end on

on u_inh409_l2_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;W_INH409W01_L1_CVOINWIN  lwin

lwin = w_mdi.GetActiveSheet ( )

lwin.wf_Output("INF:EXEC u_inh409_l2_cb", False)
end event


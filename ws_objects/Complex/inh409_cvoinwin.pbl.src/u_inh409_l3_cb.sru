$PBExportHeader$u_inh409_l3_cb.sru
forward
global type u_inh409_l3_cb from u_inh409_l2_cb
end type
end forward

global type u_inh409_l3_cb from u_inh409_l2_cb
string text = "SL3"
string is_string = "SL3"
end type
global u_inh409_l3_cb u_inh409_l3_cb

on u_inh409_l3_cb.create
call super::create
end on

on u_inh409_l3_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;W_INH409W01_L1_CVOINWIN  lwin

lwin = w_mdi.GetActiveSheet ( )

lwin.wf_Output("INF:EXEC u_inh409_l3_cb", False)
end event


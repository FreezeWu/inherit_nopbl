$PBExportHeader$u_inh408_l3_cb.sru
forward
global type u_inh408_l3_cb from u_inh408_l2_cb
end type
end forward

global type u_inh408_l3_cb from u_inh408_l2_cb
string text = "SL3"
string is_string = "SL3"
end type
global u_inh408_l3_cb u_inh408_l3_cb

on u_inh408_l3_cb.create
call super::create
end on

on u_inh408_l3_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;W_INH408W01_L1_SVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute u_inh408_l3_cb Script.", False)
end event


$PBExportHeader$u_inh408_l2_cb.sru
forward
global type u_inh408_l2_cb from u_inh408_l1_cb
end type
end forward

global type u_inh408_l2_cb from u_inh408_l1_cb
string text = "SL2"
string is_string = "SL2"
end type
global u_inh408_l2_cb u_inh408_l2_cb

on u_inh408_l2_cb.create
call super::create
end on

on u_inh408_l2_cb.destroy
call super::destroy
end on

event clicked;call super::clicked;W_INH408W01_L1_SVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute u_inh408_l2_cb Script.", False)
end event


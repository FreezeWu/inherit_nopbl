$PBExportHeader$u_inh405_l2_cb.sru
forward
global type u_inh405_l2_cb from u_inh405_l1_cb
end type
end forward

global type u_inh405_l2_cb from u_inh405_l1_cb
string text = "u_inh405_l2_cb"
end type
global u_inh405_l2_cb u_inh405_l2_cb

type variables
//Declare Nvo
n_cst_inh405_L1_auto		invo_U02_autoL1
n_cst_inh405_L2_auto		invo_U02_autoL2
n_cst_inh405_L3_auto		invo_U02_autoL3

n_cst_inh405_L1_unauto		invo_U02_unautoL1
n_cst_inh405_L2_unauto		invo_U02_unautoL2
n_cst_inh405_L3_unauto		invo_U02_unautoL3
end variables

on u_inh405_l2_cb.create
call super::create
end on

on u_inh405_l2_cb.destroy
call super::destroy
end on

event constructor;call super::constructor;invo_U02_unautoL1 = Create n_cst_inh405_L1_unauto
invo_U02_unautoL2 = Create n_cst_inh405_L2_unauto
invo_U02_unautoL3 = Create n_cst_inh405_L3_unauto
end event

event destructor;call super::destructor;If IsValid(invo_U02_unautoL1) Then Destroy invo_U02_unautoL1
If IsValid(invo_U02_unautoL2) Then Destroy invo_U02_unautoL2
If IsValid(invo_U02_unautoL3) Then Destroy invo_U02_unautoL3
end event


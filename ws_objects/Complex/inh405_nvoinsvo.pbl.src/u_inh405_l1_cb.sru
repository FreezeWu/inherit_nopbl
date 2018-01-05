$PBExportHeader$u_inh405_l1_cb.sru
forward
global type u_inh405_l1_cb from commandbutton
end type
end forward

global type u_inh405_l1_cb from commandbutton
integer width = 457
integer height = 128
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "u_inh405_l1_cb"
end type
global u_inh405_l1_cb u_inh405_l1_cb

type variables
//Declare Nvo
n_cst_inh405_L1_auto		invo_U01_autoL1
n_cst_inh405_L2_auto		invo_U01_autoL2
n_cst_inh405_L3_auto		invo_U01_autoL3

n_cst_inh405_L1_unauto		invo_U01_unautoL1
n_cst_inh405_L2_unauto		invo_U01_unautoL2
n_cst_inh405_L3_unauto		invo_U01_unautoL3
end variables

on u_inh405_l1_cb.create
end on

on u_inh405_l1_cb.destroy
end on

event constructor;invo_U01_unautoL1 = Create n_cst_inh405_L1_unauto
invo_U01_unautoL2 = Create n_cst_inh405_L2_unauto
invo_U01_unautoL3 = Create n_cst_inh405_L3_unauto
end event

event destructor;If IsValid(invo_U01_unautoL1) Then Destroy invo_U01_unautoL1
If IsValid(invo_U01_unautoL2) Then Destroy invo_U01_unautoL2
If IsValid(invo_U01_unautoL3) Then Destroy invo_U01_unautoL3
end event


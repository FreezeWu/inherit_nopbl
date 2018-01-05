$PBExportHeader$u_cst_inh404_l2.sru
forward
global type u_cst_inh404_l2 from u_cst_inh404_l1
end type
end forward

global type u_cst_inh404_l2 from u_cst_inh404_l1
end type
global u_cst_inh404_l2 u_cst_inh404_l2

type variables
//Declare Nvo
n_cst_inh404_L1_auto		invo_U02_autoL1
n_cst_inh404_L2_auto		invo_U02_autoL2
n_cst_inh404_L3_auto		invo_U02_autoL3

n_cst_inh404_L1_unauto		invo_U02_unautoL1
n_cst_inh404_L2_unauto		invo_U02_unautoL2
n_cst_inh404_L3_unauto		invo_U02_unautoL3
end variables

on u_cst_inh404_l2.create
call super::create
end on

on u_cst_inh404_l2.destroy
call super::destroy
end on

event constructor;call super::constructor;invo_U02_unautoL1 = Create n_cst_inh404_L1_unauto
invo_U02_unautoL2 = Create n_cst_inh404_L2_unauto
invo_U02_unautoL3 = Create n_cst_inh404_L3_unauto
end event

event destructor;call super::destructor;If IsValid(invo_U02_unautoL1) Then Destroy invo_U02_unautoL1
If IsValid(invo_U02_unautoL2) Then Destroy invo_U02_unautoL2
If IsValid(invo_U02_unautoL3) Then Destroy invo_U02_unautoL3
end event

type st_1 from u_cst_inh404_l1`st_1 within u_cst_inh404_l2
string text = "This is Customer Visual Object(Level 2)"
end type


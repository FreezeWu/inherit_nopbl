$PBExportHeader$u_cst_inh404_l3.sru
forward
global type u_cst_inh404_l3 from u_cst_inh404_l2
end type
end forward

global type u_cst_inh404_l3 from u_cst_inh404_l2
end type
global u_cst_inh404_l3 u_cst_inh404_l3

type variables
//Declare Nvo
n_cst_inh404_L1_auto		invo_U03_autoL1
n_cst_inh404_L2_auto		invo_U03_autoL2
n_cst_inh404_L3_auto		invo_U03_autoL3

n_cst_inh404_L1_unauto		invo_U03_unautoL1
n_cst_inh404_L2_unauto		invo_U03_unautoL2
n_cst_inh404_L3_unauto		invo_U03_unautoL3
end variables

on u_cst_inh404_l3.create
call super::create
end on

on u_cst_inh404_l3.destroy
call super::destroy
end on

event constructor;call super::constructor;invo_U03_unautoL1 = Create n_cst_inh404_L1_unauto
invo_U03_unautoL2 = Create n_cst_inh404_L2_unauto
invo_U03_unautoL3 = Create n_cst_inh404_L3_unauto
end event

event destructor;call super::destructor;If IsValid(invo_U03_unautoL1) Then Destroy invo_U03_unautoL1
If IsValid(invo_U03_unautoL2) Then Destroy invo_U03_unautoL2
If IsValid(invo_U03_unautoL3) Then Destroy invo_U03_unautoL3
end event

type st_1 from u_cst_inh404_l2`st_1 within u_cst_inh404_l3
string text = "This is Customer Visual Object(Level 3)"
end type


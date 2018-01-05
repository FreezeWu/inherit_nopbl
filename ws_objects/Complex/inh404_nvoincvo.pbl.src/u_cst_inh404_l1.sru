$PBExportHeader$u_cst_inh404_l1.sru
forward
global type u_cst_inh404_l1 from userobject
end type
type st_1 from statictext within u_cst_inh404_l1
end type
end forward

global type u_cst_inh404_l1 from userobject
integer width = 1093
integer height = 104
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_1 st_1
end type
global u_cst_inh404_l1 u_cst_inh404_l1

type variables
//Declare Nvo
n_cst_inh404_L1_auto		invo_U01_autoL1
n_cst_inh404_L2_auto		invo_U01_autoL2
n_cst_inh404_L3_auto		invo_U01_autoL3

n_cst_inh404_L1_unauto		invo_U01_unautoL1
n_cst_inh404_L2_unauto		invo_U01_unautoL2
n_cst_inh404_L3_unauto		invo_U01_unautoL3
end variables

on u_cst_inh404_l1.create
this.st_1=create st_1
this.Control[]={this.st_1}
end on

on u_cst_inh404_l1.destroy
destroy(this.st_1)
end on

event constructor;invo_U01_unautoL1 = Create n_cst_inh404_L1_unauto
invo_U01_unautoL2 = Create n_cst_inh404_L2_unauto
invo_U01_unautoL3 = Create n_cst_inh404_L3_unauto
end event

event destructor;If IsValid(invo_U01_unautoL1) Then Destroy invo_U01_unautoL1
If IsValid(invo_U01_unautoL2) Then Destroy invo_U01_unautoL2
If IsValid(invo_U01_unautoL3) Then Destroy invo_U01_unautoL3
end event

type st_1 from statictext within u_cst_inh404_l1
integer x = 14
integer y = 12
integer width = 1056
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "This is Customer Visual Object(Level 1)"
alignment alignment = center!
boolean focusrectangle = false
end type


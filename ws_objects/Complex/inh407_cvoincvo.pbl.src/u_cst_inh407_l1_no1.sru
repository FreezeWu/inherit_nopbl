$PBExportHeader$u_cst_inh407_l1_no1.sru
forward
global type u_cst_inh407_l1_no1 from userobject
end type
type st_1 from statictext within u_cst_inh407_l1_no1
end type
type cb_2 from u_inh407_l3_cb within u_cst_inh407_l1_no1
end type
type cb_1 from u_inh407_l3_cb within u_cst_inh407_l1_no1
end type
end forward

global type u_cst_inh407_l1_no1 from userobject
string tag = "No1 L1"
integer width = 786
integer height = 168
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_1 st_1
cb_2 cb_2
cb_1 cb_1
end type
global u_cst_inh407_l1_no1 u_cst_inh407_l1_no1

type variables
String	is_String = "No1 L1"
end variables

on u_cst_inh407_l1_no1.create
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.st_1,&
this.cb_2,&
this.cb_1}
end on

on u_cst_inh407_l1_no1.destroy
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type st_1 from statictext within u_cst_inh407_l1_no1
integer x = 123
integer y = 96
integer width = 535
integer height = 56
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "u_cst_inh407_l1_no1"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_2 from u_inh407_l3_cb within u_cst_inh407_l1_no1
integer x = 398
integer y = 16
integer width = 366
integer taborder = 20
string text = "SL3, CN1L1_2"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l1_no1", False)
End If
end event

type cb_1 from u_inh407_l3_cb within u_cst_inh407_l1_no1
integer x = 14
integer y = 16
integer width = 366
integer taborder = 10
string text = "SL3, CN1L1_1"
end type


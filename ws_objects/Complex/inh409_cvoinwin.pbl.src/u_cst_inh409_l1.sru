$PBExportHeader$u_cst_inh409_l1.sru
forward
global type u_cst_inh409_l1 from userobject
end type
type st_1 from statictext within u_cst_inh409_l1
end type
type cb_2 from u_inh409_l3_cb within u_cst_inh409_l1
end type
type cb_1 from u_inh409_l3_cb within u_cst_inh409_l1
end type
end forward

global type u_cst_inh409_l1 from userobject
string tag = "CVO L1"
integer width = 846
integer height = 152
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_1 st_1
cb_2 cb_2
cb_1 cb_1
end type
global u_cst_inh409_l1 u_cst_inh409_l1

type variables
String	is_CVO = "CVO L1"
end variables

on u_cst_inh409_l1.create
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.st_1,&
this.cb_2,&
this.cb_1}
end on

on u_cst_inh409_l1.destroy
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type st_1 from statictext within u_cst_inh409_l1
integer x = 210
integer y = 88
integer width = 439
integer height = 56
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "u_cst_inh409_l1"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_2 from u_inh409_l3_cb within u_cst_inh409_l1
integer x = 430
integer width = 398
integer taborder = 10
string text = "SL3,CL1_2"
string is_string = "SL3,CL1_2"
end type

event clicked;call super::clicked;//Extend
W_INH409W01_L1_CVOINWIN  lwin

lwin = w_mdi.GetActiveSheet ( )

lwin.wf_Output("INF:EXEC u_cst_inh409_l1.cb_2", False)
end event

type cb_1 from u_inh409_l3_cb within u_cst_inh409_l1
integer x = 14
integer width = 398
integer taborder = 10
string text = "SL3,CL1_1"
string is_string = "SL3,CL1_1"
end type

event clicked;//Override
W_INH409W01_L1_CVOINWIN  lwin

lwin = w_mdi.GetActiveSheet ( )

lwin.wf_Output("INF:EXEC u_cst_inh409_l1.cb_1", False)
end event


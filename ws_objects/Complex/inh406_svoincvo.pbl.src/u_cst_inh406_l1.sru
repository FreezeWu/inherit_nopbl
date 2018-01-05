$PBExportHeader$u_cst_inh406_l1.sru
forward
global type u_cst_inh406_l1 from userobject
end type
type cb_6 from u_inh406_l3_cb within u_cst_inh406_l1
end type
type cb_5 from u_inh406_l3_cb within u_cst_inh406_l1
end type
type cb_4 from u_inh406_l2_cb within u_cst_inh406_l1
end type
type cb_3 from u_inh406_l2_cb within u_cst_inh406_l1
end type
type cb_2 from u_inh406_l1_cb within u_cst_inh406_l1
end type
type cb_1 from u_inh406_l1_cb within u_cst_inh406_l1
end type
end forward

global type u_cst_inh406_l1 from userobject
integer width = 2062
integer height = 132
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global u_cst_inh406_l1 u_cst_inh406_l1

on u_cst_inh406_l1.create
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on u_cst_inh406_l1.destroy
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_6 from u_inh406_l3_cb within u_cst_inh406_l1
integer x = 1719
integer y = 24
integer width = 334
integer taborder = 40
string text = "SL3, CL1_2"
string is_string = "SL3, CL1_2"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L1.u_inh406_L3_cb(cb_6) Script.", False)
End If
end event

type cb_5 from u_inh406_l3_cb within u_cst_inh406_l1
integer x = 1376
integer y = 24
integer width = 334
integer taborder = 30
string text = "SL3, CL1_1"
string is_string = "SL3, CL1_1"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L1.u_inh406_L3_cb(cb_5) Script.", False)
End If
end event

type cb_4 from u_inh406_l2_cb within u_cst_inh406_l1
integer x = 1033
integer y = 24
integer width = 334
integer taborder = 30
string text = "SL2, CL1_2"
string is_string = "SL2, CL1_2"
end type

event clicked;//override
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L1.u_inh406_L2_cb(cb_4) Script.", False)
End If
end event

type cb_3 from u_inh406_l2_cb within u_cst_inh406_l1
integer x = 690
integer y = 24
integer width = 334
integer taborder = 20
string text = "SL2, CL1_1"
string is_string = "SL2, CL1_1"
end type

event clicked;//override
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L1.u_inh406_L2_cb(cb_3) Script.", False)
End If
end event

type cb_2 from u_inh406_l1_cb within u_cst_inh406_l1
integer x = 347
integer y = 24
integer width = 334
integer taborder = 20
string text = "SL1, CL1_2"
string is_string = "SL1, CL1_2"
end type

type cb_1 from u_inh406_l1_cb within u_cst_inh406_l1
integer x = 5
integer y = 24
integer width = 334
integer taborder = 10
string text = "SL1, CL1_1"
string is_string = "SL1, CL1_1"
end type


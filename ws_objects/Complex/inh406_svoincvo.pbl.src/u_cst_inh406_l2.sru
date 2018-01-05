$PBExportHeader$u_cst_inh406_l2.sru
forward
global type u_cst_inh406_l2 from u_cst_inh406_l1
end type
type cb_7 from u_inh406_l1_cb within u_cst_inh406_l2
end type
type cb_8 from u_inh406_l1_cb within u_cst_inh406_l2
end type
type cb_9 from u_inh406_l2_cb within u_cst_inh406_l2
end type
type cb_10 from u_inh406_l2_cb within u_cst_inh406_l2
end type
type cb_11 from u_inh406_l3_cb within u_cst_inh406_l2
end type
type cb_12 from u_inh406_l3_cb within u_cst_inh406_l2
end type
end forward

global type u_cst_inh406_l2 from u_cst_inh406_l1
integer height = 228
cb_7 cb_7
cb_8 cb_8
cb_9 cb_9
cb_10 cb_10
cb_11 cb_11
cb_12 cb_12
end type
global u_cst_inh406_l2 u_cst_inh406_l2

on u_cst_inh406_l2.create
int iCurrent
call super::create
this.cb_7=create cb_7
this.cb_8=create cb_8
this.cb_9=create cb_9
this.cb_10=create cb_10
this.cb_11=create cb_11
this.cb_12=create cb_12
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_7
this.Control[iCurrent+2]=this.cb_8
this.Control[iCurrent+3]=this.cb_9
this.Control[iCurrent+4]=this.cb_10
this.Control[iCurrent+5]=this.cb_11
this.Control[iCurrent+6]=this.cb_12
end on

on u_cst_inh406_l2.destroy
call super::destroy
destroy(this.cb_7)
destroy(this.cb_8)
destroy(this.cb_9)
destroy(this.cb_10)
destroy(this.cb_11)
destroy(this.cb_12)
end on

type cb_6 from u_cst_inh406_l1`cb_6 within u_cst_inh406_l2
end type

type cb_5 from u_cst_inh406_l1`cb_5 within u_cst_inh406_l2
end type

type cb_4 from u_cst_inh406_l1`cb_4 within u_cst_inh406_l2
end type

type cb_3 from u_cst_inh406_l1`cb_3 within u_cst_inh406_l2
end type

type cb_2 from u_cst_inh406_l1`cb_2 within u_cst_inh406_l2
end type

type cb_1 from u_cst_inh406_l1`cb_1 within u_cst_inh406_l2
end type

type cb_7 from u_inh406_l1_cb within u_cst_inh406_l2
integer x = 5
integer y = 124
integer width = 334
integer taborder = 50
boolean bringtotop = true
string text = "SL1, CL2_1"
string is_string = "SL1, CL2_1"
end type

event clicked;//override
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L2.u_inh406_L1_cb(cb_7) Script.", False)
End If
end event

type cb_8 from u_inh406_l1_cb within u_cst_inh406_l2
integer x = 347
integer y = 124
integer width = 334
integer taborder = 60
boolean bringtotop = true
string text = "SL1, CL2_2"
string is_string = "SL1, CL2_2"
end type

event clicked;//override
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L2.u_inh406_L1_cb(cb_8) Script.", False)
End If
end event

type cb_9 from u_inh406_l2_cb within u_cst_inh406_l2
integer x = 690
integer y = 124
integer width = 334
integer taborder = 70
boolean bringtotop = true
string text = "SL2, CL2_1"
string is_string = "SL2, CL2_1"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L2.u_inh406_L2_cb(cb_9) Script.", False)
End If
end event

type cb_10 from u_inh406_l2_cb within u_cst_inh406_l2
integer x = 1033
integer y = 124
integer width = 334
integer taborder = 70
boolean bringtotop = true
string text = "SL2, CL2_2"
string is_string = "SL2, CL2_2"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L2.u_inh406_L2_cb(cb_10) Script.", False)
End If
end event

type cb_11 from u_inh406_l3_cb within u_cst_inh406_l2
integer x = 1376
integer y = 124
integer width = 334
integer taborder = 80
boolean bringtotop = true
string text = "SL3, CL2_1"
string is_string = "SL3, CL2_1"
end type

type cb_12 from u_inh406_l3_cb within u_cst_inh406_l2
integer x = 1719
integer y = 124
integer width = 334
integer taborder = 90
boolean bringtotop = true
string text = "SL3, CL2_2"
string is_string = "SL3, CL2_2"
end type


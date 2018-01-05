$PBExportHeader$u_cst_inh406_l3.sru
forward
global type u_cst_inh406_l3 from u_cst_inh406_l2
end type
type cb_13 from u_inh406_l1_cb within u_cst_inh406_l3
end type
type cb_14 from u_inh406_l1_cb within u_cst_inh406_l3
end type
type cb_15 from u_inh406_l2_cb within u_cst_inh406_l3
end type
type cb_16 from u_inh406_l2_cb within u_cst_inh406_l3
end type
type cb_17 from u_inh406_l3_cb within u_cst_inh406_l3
end type
type cb_18 from u_inh406_l3_cb within u_cst_inh406_l3
end type
end forward

global type u_cst_inh406_l3 from u_cst_inh406_l2
integer height = 336
cb_13 cb_13
cb_14 cb_14
cb_15 cb_15
cb_16 cb_16
cb_17 cb_17
cb_18 cb_18
end type
global u_cst_inh406_l3 u_cst_inh406_l3

on u_cst_inh406_l3.create
int iCurrent
call super::create
this.cb_13=create cb_13
this.cb_14=create cb_14
this.cb_15=create cb_15
this.cb_16=create cb_16
this.cb_17=create cb_17
this.cb_18=create cb_18
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_13
this.Control[iCurrent+2]=this.cb_14
this.Control[iCurrent+3]=this.cb_15
this.Control[iCurrent+4]=this.cb_16
this.Control[iCurrent+5]=this.cb_17
this.Control[iCurrent+6]=this.cb_18
end on

on u_cst_inh406_l3.destroy
call super::destroy
destroy(this.cb_13)
destroy(this.cb_14)
destroy(this.cb_15)
destroy(this.cb_16)
destroy(this.cb_17)
destroy(this.cb_18)
end on

type cb_6 from u_cst_inh406_l2`cb_6 within u_cst_inh406_l3
end type

type cb_5 from u_cst_inh406_l2`cb_5 within u_cst_inh406_l3
end type

type cb_4 from u_cst_inh406_l2`cb_4 within u_cst_inh406_l3
end type

type cb_3 from u_cst_inh406_l2`cb_3 within u_cst_inh406_l3
end type

type cb_2 from u_cst_inh406_l2`cb_2 within u_cst_inh406_l3
end type

type cb_1 from u_cst_inh406_l2`cb_1 within u_cst_inh406_l3
end type

type cb_7 from u_cst_inh406_l2`cb_7 within u_cst_inh406_l3
end type

type cb_8 from u_cst_inh406_l2`cb_8 within u_cst_inh406_l3
end type

type cb_9 from u_cst_inh406_l2`cb_9 within u_cst_inh406_l3
end type

type cb_10 from u_cst_inh406_l2`cb_10 within u_cst_inh406_l3
end type

type cb_11 from u_cst_inh406_l2`cb_11 within u_cst_inh406_l3
end type

type cb_12 from u_cst_inh406_l2`cb_12 within u_cst_inh406_l3
end type

type cb_13 from u_inh406_l1_cb within u_cst_inh406_l3
integer x = 5
integer y = 224
integer width = 334
integer taborder = 60
boolean bringtotop = true
string text = "SL1, CL3_1"
string is_string = "SL1, CL3_1"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L3.u_inh406_L1_cb(cb_13) Script.", False)
End If
end event

type cb_14 from u_inh406_l1_cb within u_cst_inh406_l3
integer x = 347
integer y = 224
integer width = 334
integer taborder = 70
boolean bringtotop = true
string text = "SL1, CL3_2"
string is_string = "SL1, CL3_2"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L3.u_inh406_L1_cb(cb_14) Script.", False)
End If
end event

type cb_15 from u_inh406_l2_cb within u_cst_inh406_l3
integer x = 690
integer y = 224
integer width = 334
integer taborder = 80
boolean bringtotop = true
string text = "SL2, CL3_1"
string is_string = "SL2, CL3_1"
end type

type cb_16 from u_inh406_l2_cb within u_cst_inh406_l3
integer x = 1033
integer y = 224
integer width = 334
integer taborder = 90
boolean bringtotop = true
string text = "SL2, CL3_2"
string is_string = "SL2, CL3_2"
end type

type cb_17 from u_inh406_l3_cb within u_cst_inh406_l3
integer x = 1376
integer y = 224
integer width = 334
integer taborder = 100
boolean bringtotop = true
string text = "SL3, CL3_1"
string is_string = "SL3, CL3_1"
end type

event clicked;//override
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L3.u_inh406_L3_cb(cb_17) Script.", False)
End If
end event

type cb_18 from u_inh406_l3_cb within u_cst_inh406_l3
integer x = 1719
integer y = 224
integer width = 334
integer taborder = 90
boolean bringtotop = true
string text = "SL3, CL3_2"
string is_string = "SL3, CL3_2"
end type

event clicked;//override
If IsValid(w_inh406w03_event) Then
	w_inh406w03_event.wf_Output("Information : Execute u_cst_inh406_L3.u_inh406_L3_cb(cb_18) Script.", False)
End If
end event


$PBExportHeader$u_cst_inh407_l3_no2.sru
forward
global type u_cst_inh407_l3_no2 from u_cst_inh407_l2_no2
end type
type uo_7 from u_cst_inh407_l1_no1 within u_cst_inh407_l3_no2
end type
type uo_8 from u_cst_inh407_l2_no1 within u_cst_inh407_l3_no2
end type
type uo_9 from u_cst_inh407_l3_no1 within u_cst_inh407_l3_no2
end type
type cb_5 from u_inh407_l3_cb within u_cst_inh407_l3_no2
end type
type cb_6 from u_inh407_l3_cb within u_cst_inh407_l3_no2
end type
end forward

global type u_cst_inh407_l3_no2 from u_cst_inh407_l2_no2
integer height = 492
uo_7 uo_7
uo_8 uo_8
uo_9 uo_9
cb_5 cb_5
cb_6 cb_6
end type
global u_cst_inh407_l3_no2 u_cst_inh407_l3_no2

on u_cst_inh407_l3_no2.create
int iCurrent
call super::create
this.uo_7=create uo_7
this.uo_8=create uo_8
this.uo_9=create uo_9
this.cb_5=create cb_5
this.cb_6=create cb_6
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_7
this.Control[iCurrent+2]=this.uo_8
this.Control[iCurrent+3]=this.uo_9
this.Control[iCurrent+4]=this.cb_5
this.Control[iCurrent+5]=this.cb_6
end on

on u_cst_inh407_l3_no2.destroy
call super::destroy
destroy(this.uo_7)
destroy(this.uo_8)
destroy(this.uo_9)
destroy(this.cb_5)
destroy(this.cb_6)
end on

type cb_2 from u_cst_inh407_l2_no2`cb_2 within u_cst_inh407_l3_no2
end type

event cb_2::clicked;call super::clicked;//Extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l3_no2(cb_2)", False)
End If
end event

type cb_1 from u_cst_inh407_l2_no2`cb_1 within u_cst_inh407_l3_no2
end type

event cb_1::clicked;call super::clicked;//Extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF: Exec u_cst_inh407_l3_no2(cb_1)", False)
End If
end event

type uo_3 from u_cst_inh407_l2_no2`uo_3 within u_cst_inh407_l3_no2
end type

type uo_2 from u_cst_inh407_l2_no2`uo_2 within u_cst_inh407_l3_no2
end type

type uo_1 from u_cst_inh407_l2_no2`uo_1 within u_cst_inh407_l3_no2
end type

type uo_4 from u_cst_inh407_l2_no2`uo_4 within u_cst_inh407_l3_no2
end type

type uo_5 from u_cst_inh407_l2_no2`uo_5 within u_cst_inh407_l3_no2
end type

type uo_6 from u_cst_inh407_l2_no2`uo_6 within u_cst_inh407_l3_no2
end type

type cb_3 from u_cst_inh407_l2_no2`cb_3 within u_cst_inh407_l3_no2
end type

event cb_3::clicked;call super::clicked;//Extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l3_no2(cb_3)", False)
End If
end event

type cb_4 from u_cst_inh407_l2_no2`cb_4 within u_cst_inh407_l3_no2
end type

event cb_4::clicked;//override
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l3_no2(cb_4)", False)
End If
end event

type uo_7 from u_cst_inh407_l1_no1 within u_cst_inh407_l3_no2
integer x = 14
integer y = 328
integer taborder = 80
boolean bringtotop = true
string is_string = "No1 L1, No2 L3"
end type

on uo_7.destroy
call u_cst_inh407_l1_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_7"
end event

type uo_8 from u_cst_inh407_l2_no1 within u_cst_inh407_l3_no2
integer x = 809
integer y = 328
integer taborder = 90
boolean bringtotop = true
string is_string = "No1 L2, No2 L3"
end type

on uo_8.destroy
call u_cst_inh407_l2_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_8"
end event

type uo_9 from u_cst_inh407_l3_no1 within u_cst_inh407_l3_no2
integer x = 1605
integer y = 328
integer taborder = 100
boolean bringtotop = true
string is_string = "No1 L3, No2 L3"
end type

on uo_9.destroy
call u_cst_inh407_l3_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_9"
end event

type cb_5 from u_inh407_l3_cb within u_cst_inh407_l3_no2
integer x = 2395
integer y = 344
integer width = 370
integer taborder = 110
boolean bringtotop = true
string text = "SL3, No2 L3_1"
end type

event clicked;//override
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l3_no2(cb_5)", False)
End If
end event

type cb_6 from u_inh407_l3_cb within u_cst_inh407_l3_no2
integer x = 2779
integer y = 344
integer width = 370
integer taborder = 120
boolean bringtotop = true
string text = "SL3, No2 L3_2"
end type

event clicked;call super::clicked;//extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l3_no2(cb_6)", False)
End If
end event


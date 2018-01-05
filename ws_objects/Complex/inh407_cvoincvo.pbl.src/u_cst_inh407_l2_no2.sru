$PBExportHeader$u_cst_inh407_l2_no2.sru
forward
global type u_cst_inh407_l2_no2 from u_cst_inh407_l1_no2
end type
type uo_4 from u_cst_inh407_l1_no1 within u_cst_inh407_l2_no2
end type
type uo_5 from u_cst_inh407_l2_no1 within u_cst_inh407_l2_no2
end type
type uo_6 from u_cst_inh407_l3_no1 within u_cst_inh407_l2_no2
end type
type cb_3 from u_inh407_l3_cb within u_cst_inh407_l2_no2
end type
type cb_4 from u_inh407_l3_cb within u_cst_inh407_l2_no2
end type
end forward

global type u_cst_inh407_l2_no2 from u_cst_inh407_l1_no2
integer height = 332
uo_4 uo_4
uo_5 uo_5
uo_6 uo_6
cb_3 cb_3
cb_4 cb_4
end type
global u_cst_inh407_l2_no2 u_cst_inh407_l2_no2

on u_cst_inh407_l2_no2.create
int iCurrent
call super::create
this.uo_4=create uo_4
this.uo_5=create uo_5
this.uo_6=create uo_6
this.cb_3=create cb_3
this.cb_4=create cb_4
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_4
this.Control[iCurrent+2]=this.uo_5
this.Control[iCurrent+3]=this.uo_6
this.Control[iCurrent+4]=this.cb_3
this.Control[iCurrent+5]=this.cb_4
end on

on u_cst_inh407_l2_no2.destroy
call super::destroy
destroy(this.uo_4)
destroy(this.uo_5)
destroy(this.uo_6)
destroy(this.cb_3)
destroy(this.cb_4)
end on

type cb_2 from u_cst_inh407_l1_no2`cb_2 within u_cst_inh407_l2_no2
end type

event cb_2::clicked;call super::clicked;//Extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l2_no2(cb_1)", False)
End If
end event

type cb_1 from u_cst_inh407_l1_no2`cb_1 within u_cst_inh407_l2_no2
end type

type uo_3 from u_cst_inh407_l1_no2`uo_3 within u_cst_inh407_l2_no2
end type

type uo_2 from u_cst_inh407_l1_no2`uo_2 within u_cst_inh407_l2_no2
end type

type uo_1 from u_cst_inh407_l1_no2`uo_1 within u_cst_inh407_l2_no2
end type

type uo_4 from u_cst_inh407_l1_no1 within u_cst_inh407_l2_no2
integer x = 18
integer y = 164
integer taborder = 50
boolean bringtotop = true
string is_string = "No1 L1, No2 L2"
end type

on uo_4.destroy
call u_cst_inh407_l1_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_4"
end event

type uo_5 from u_cst_inh407_l2_no1 within u_cst_inh407_l2_no2
integer x = 809
integer y = 164
integer taborder = 60
boolean bringtotop = true
string is_string = "No1 L2, No2 L2"
end type

on uo_5.destroy
call u_cst_inh407_l2_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_5"
end event

type uo_6 from u_cst_inh407_l3_no1 within u_cst_inh407_l2_no2
integer x = 1600
integer y = 164
integer taborder = 60
boolean bringtotop = true
string is_string = "No1 L3, No2 L2"
end type

on uo_6.destroy
call u_cst_inh407_l3_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_6"
end event

type cb_3 from u_inh407_l3_cb within u_cst_inh407_l2_no2
integer x = 2395
integer y = 180
integer width = 370
integer taborder = 70
boolean bringtotop = true
string text = "SL3, No2 L2_1"
end type

event clicked;//override
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l2_no2(cb_3)", False)
End If
end event

type cb_4 from u_inh407_l3_cb within u_cst_inh407_l2_no2
integer x = 2779
integer y = 180
integer width = 370
integer taborder = 80
boolean bringtotop = true
string text = "SL3, No2 L2_2"
end type


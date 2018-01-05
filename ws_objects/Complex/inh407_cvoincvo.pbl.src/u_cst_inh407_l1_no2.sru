$PBExportHeader$u_cst_inh407_l1_no2.sru
forward
global type u_cst_inh407_l1_no2 from userobject
end type
type cb_2 from u_inh407_l3_cb within u_cst_inh407_l1_no2
end type
type cb_1 from u_inh407_l3_cb within u_cst_inh407_l1_no2
end type
type uo_3 from u_cst_inh407_l3_no1 within u_cst_inh407_l1_no2
end type
type uo_2 from u_cst_inh407_l2_no1 within u_cst_inh407_l1_no2
end type
type uo_1 from u_cst_inh407_l1_no1 within u_cst_inh407_l1_no2
end type
end forward

global type u_cst_inh407_l1_no2 from userobject
integer width = 3209
integer height = 172
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_2 cb_2
cb_1 cb_1
uo_3 uo_3
uo_2 uo_2
uo_1 uo_1
end type
global u_cst_inh407_l1_no2 u_cst_inh407_l1_no2

on u_cst_inh407_l1_no2.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.uo_3=create uo_3
this.uo_2=create uo_2
this.uo_1=create uo_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.uo_3,&
this.uo_2,&
this.uo_1}
end on

on u_cst_inh407_l1_no2.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.uo_3)
destroy(this.uo_2)
destroy(this.uo_1)
end on

type cb_2 from u_inh407_l3_cb within u_cst_inh407_l1_no2
integer x = 2779
integer y = 16
integer width = 370
integer taborder = 40
string text = "SL3, No2 L1_2"
end type

event clicked;call super::clicked;//Extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l1_no2(cb_2)", False)
End If
end event

type cb_1 from u_inh407_l3_cb within u_cst_inh407_l1_no2
integer x = 2395
integer y = 16
integer width = 370
integer taborder = 40
string text = "SL3, No2 L1_1"
end type

type uo_3 from u_cst_inh407_l3_no1 within u_cst_inh407_l1_no2
integer x = 1600
integer taborder = 30
string is_string = "No1 L3, No2 L1"
end type

on uo_3.destroy
call u_cst_inh407_l3_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_3"
end event

type uo_2 from u_cst_inh407_l2_no1 within u_cst_inh407_l1_no2
integer x = 809
integer taborder = 30
string is_string = "No1 L2, No2 L1"
end type

on uo_2.destroy
call u_cst_inh407_l2_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_2"
end event

type uo_1 from u_cst_inh407_l1_no1 within u_cst_inh407_l1_no2
integer x = 18
integer taborder = 30
string is_string = "No1 L1, No2 L1"
end type

on uo_1.destroy
call u_cst_inh407_l1_no1::destroy
end on

event constructor;call super::constructor;st_1.text = "uo_1"
end event


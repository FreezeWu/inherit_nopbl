$PBExportHeader$u_cst_inh407_l3_no1.sru
forward
global type u_cst_inh407_l3_no1 from u_cst_inh407_l2_no1
end type
end forward

global type u_cst_inh407_l3_no1 from u_cst_inh407_l2_no1
string tag = "No1 L3"
string is_string = "No1 L3"
end type
global u_cst_inh407_l3_no1 u_cst_inh407_l3_no1

on u_cst_inh407_l3_no1.create
call super::create
end on

on u_cst_inh407_l3_no1.destroy
call super::destroy
end on

type st_1 from u_cst_inh407_l2_no1`st_1 within u_cst_inh407_l3_no1
string text = "u_cst_inh407_l3_no1"
end type

type cb_2 from u_cst_inh407_l2_no1`cb_2 within u_cst_inh407_l3_no1
string text = "SL3, CN1L3_2"
end type

type cb_1 from u_cst_inh407_l2_no1`cb_1 within u_cst_inh407_l3_no1
string text = "SL3, CN1L3_1"
end type

event cb_1::clicked;call super::clicked;//extend
If IsValid(w_inh407w03_event) Then
	w_inh407w03_event.wf_Output("INF:Exec u_cst_inh407_l3_no1", False)
End If
end event


$PBExportHeader$u_cst_inh409_l3.sru
forward
global type u_cst_inh409_l3 from u_cst_inh409_l2
end type
end forward

global type u_cst_inh409_l3 from u_cst_inh409_l2
string tag = "CVO L3"
string is_cvo = "CVO L3"
end type
global u_cst_inh409_l3 u_cst_inh409_l3

on u_cst_inh409_l3.create
call super::create
end on

on u_cst_inh409_l3.destroy
call super::destroy
end on

type st_1 from u_cst_inh409_l2`st_1 within u_cst_inh409_l3
string text = "u_cst_inh409_l3"
end type

type cb_2 from u_cst_inh409_l2`cb_2 within u_cst_inh409_l3
string text = "SL3,CL3_2"
string is_string = "SL3,CL3_2"
end type

type cb_1 from u_cst_inh409_l2`cb_1 within u_cst_inh409_l3
string text = "SL3,CL3_1"
string is_string = "SL3,CL3_1"
end type

event cb_1::clicked;call super::clicked;//Extend
W_INH409W01_L1_CVOINWIN  lwin

lwin = w_mdi.GetActiveSheet ( )

lwin.wf_Output("INF:EXEC u_cst_inh409_l3.cb_1", False)
end event


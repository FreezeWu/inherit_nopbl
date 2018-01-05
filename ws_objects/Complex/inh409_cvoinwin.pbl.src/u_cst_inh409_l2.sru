$PBExportHeader$u_cst_inh409_l2.sru
forward
global type u_cst_inh409_l2 from u_cst_inh409_l1
end type
end forward

global type u_cst_inh409_l2 from u_cst_inh409_l1
string tag = "CVO L2"
string is_cvo = "CVO L2"
end type
global u_cst_inh409_l2 u_cst_inh409_l2

on u_cst_inh409_l2.create
call super::create
end on

on u_cst_inh409_l2.destroy
call super::destroy
end on

type st_1 from u_cst_inh409_l1`st_1 within u_cst_inh409_l2
string text = "u_cst_inh409_l2"
end type

type cb_2 from u_cst_inh409_l1`cb_2 within u_cst_inh409_l2
string text = "SL3,CL2_2"
string is_string = "SL3,CL2_2"
end type

event cb_2::clicked;//Override
W_INH409W01_L1_CVOINWIN  lwin

lwin = w_mdi.GetActiveSheet ( )

lwin.wf_Output("INF:EXEC u_cst_inh409_l2.cb_2", False)
end event

type cb_1 from u_cst_inh409_l1`cb_1 within u_cst_inh409_l2
string text = "SL3,CL2_1"
string is_string = "SL3,CL2_1"
end type


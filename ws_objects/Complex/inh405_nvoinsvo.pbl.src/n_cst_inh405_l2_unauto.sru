$PBExportHeader$n_cst_inh405_l2_unauto.sru
forward
global type n_cst_inh405_l2_unauto from n_cst_inh405_l1_unauto
end type
end forward

global type n_cst_inh405_l2_unauto from n_cst_inh405_l1_unauto
string is_string = "unauto L2"
end type
global n_cst_inh405_l2_unauto n_cst_inh405_l2_unauto

on n_cst_inh405_l2_unauto.create
call super::create
end on

on n_cst_inh405_l2_unauto.destroy
call super::destroy
end on


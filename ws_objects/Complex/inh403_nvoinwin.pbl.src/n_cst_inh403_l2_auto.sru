$PBExportHeader$n_cst_inh403_l2_auto.sru
forward
global type n_cst_inh403_l2_auto from n_cst_inh403_l1_auto
end type
end forward

global type n_cst_inh403_l2_auto from n_cst_inh403_l1_auto
string is_string = "auto L2"
end type

on n_cst_inh403_l2_auto.create
call super::create
end on

on n_cst_inh403_l2_auto.destroy
call super::destroy
end on


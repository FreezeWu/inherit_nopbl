$PBExportHeader$n_cst_inh404_l3_unauto.sru
forward
global type n_cst_inh404_l3_unauto from n_cst_inh404_l2_unauto
end type
end forward

global type n_cst_inh404_l3_unauto from n_cst_inh404_l2_unauto
string is_string = "unauto L3"
end type
global n_cst_inh404_l3_unauto n_cst_inh404_l3_unauto

on n_cst_inh404_l3_unauto.create
call super::create
end on

on n_cst_inh404_l3_unauto.destroy
call super::destroy
end on


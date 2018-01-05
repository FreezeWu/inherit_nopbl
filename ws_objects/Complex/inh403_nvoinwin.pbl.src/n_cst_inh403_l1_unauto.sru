$PBExportHeader$n_cst_inh403_l1_unauto.sru
forward
global type n_cst_inh403_l1_unauto from nonvisualobject
end type
end forward

global type n_cst_inh403_l1_unauto from nonvisualobject
end type
global n_cst_inh403_l1_unauto n_cst_inh403_l1_unauto

type variables
String	is_String = "unauto L1"
end variables

on n_cst_inh403_l1_unauto.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_inh403_l1_unauto.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on


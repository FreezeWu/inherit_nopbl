$PBExportHeader$n_cst_inh405_l1_auto.sru
forward
global type n_cst_inh405_l1_auto from nonvisualobject
end type
end forward

global type n_cst_inh405_l1_auto from nonvisualobject autoinstantiate
end type

type variables
String	is_String = "auto L1"
end variables

on n_cst_inh405_l1_auto.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_inh405_l1_auto.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on


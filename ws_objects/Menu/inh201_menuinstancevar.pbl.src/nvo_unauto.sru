$PBExportHeader$nvo_unauto.sru
forward
global type nvo_unauto from nonvisualobject
end type
end forward

global type nvo_unauto from nonvisualobject
end type
global nvo_unauto nvo_unauto

type variables
String	is_String
end variables

on nvo_unauto.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_unauto.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on


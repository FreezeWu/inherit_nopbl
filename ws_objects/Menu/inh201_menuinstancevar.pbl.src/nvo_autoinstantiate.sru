$PBExportHeader$nvo_autoinstantiate.sru
forward
global type nvo_autoinstantiate from nonvisualobject
end type
end forward

global type nvo_autoinstantiate from nonvisualobject autoinstantiate
end type

type variables
String	is_String
end variables

on nvo_autoinstantiate.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_autoinstantiate.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on


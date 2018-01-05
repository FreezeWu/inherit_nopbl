$PBExportHeader$n_cst_inh401_l1_auto.sru
forward
global type n_cst_inh401_l1_auto from nonvisualobject
end type
end forward

global type n_cst_inh401_l1_auto from nonvisualobject autoinstantiate
event ue_instantiation ( )
event ue_destroy ( )
end type

type variables
String	is_String = "L1"

//menu
m_inh401_l1		im_L1_ML1
m_inh401_l2		im_L1_ML2
m_inh401_l3		im_L1_ML3
end variables

event ue_instantiation();//instantiation L1
If NOT IsValid(im_L1_ML1) Then
	im_L1_ML1 = Create m_inh401_l1
	im_L1_ML1.Event ue_instantiation()
End if

If NOT IsValid(im_L1_ML2) Then
	im_L1_ML2 = Create m_inh401_l2
	im_L1_ML2.Event ue_instantiation()
End If

If NOT IsValid(im_L1_ML3) Then
	im_L1_ML3 = Create m_inh401_l3
	im_L1_ML3.Event ue_instantiation()
End If
end event

event ue_destroy();//Destroy L1
If IsValid(im_L1_ML1) Then
	im_L1_ML1.Event ue_Destroy()
	Destroy im_L1_ML1
End if

If IsValid(im_L1_ML2) Then
	im_L1_ML2.Event ue_Destroy()
	Destroy im_L1_ML2
End If

If IsValid(im_L1_ML3) Then
	im_L1_ML3.Event ue_Destroy()
	Destroy im_L1_ML3
End If
end event

on n_cst_inh401_l1_auto.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_inh401_l1_auto.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on


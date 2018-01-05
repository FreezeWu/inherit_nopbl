$PBExportHeader$n_cst_inh401_l2_unauto.sru
forward
global type n_cst_inh401_l2_unauto from n_cst_inh401_l1_unauto
end type
end forward

global type n_cst_inh401_l2_unauto from n_cst_inh401_l1_unauto
string is_string = "L2"
end type
global n_cst_inh401_l2_unauto n_cst_inh401_l2_unauto

type variables
//menu
m_inh401_l1		im_L2_ML1
m_inh401_l2		im_L2_ML2
m_inh401_l3		im_L2_ML3
end variables

on n_cst_inh401_l2_unauto.create
call super::create
end on

on n_cst_inh401_l2_unauto.destroy
call super::destroy
end on

event ue_destroy;call super::ue_destroy;//Destroy L2
If IsValid(im_L2_ML1) Then
	im_L2_ML1.Event ue_Destroy()
	Destroy im_L2_ML1
End if

If IsValid(im_L2_ML2) Then
	im_L2_ML2.Event ue_Destroy()
	Destroy im_L2_ML2
End If

If IsValid(im_L2_ML3) Then
	im_L2_ML3.Event ue_Destroy()
	Destroy im_L2_ML3
End If
end event

event ue_instantiation;call super::ue_instantiation;//instantiation L2
If NOT IsValid(im_L2_ML1) Then
	im_L2_ML1 = Create m_inh401_l1
	im_L2_ML1.Event ue_instantiation()
End if

If NOT IsValid(im_L2_ML2) Then
	im_L2_ML2 = Create m_inh401_l2
	im_L2_ML2.Event ue_instantiation()
End If

If NOT IsValid(im_L2_ML3) Then
	im_L2_ML3 = Create m_inh401_l3
	im_L2_ML3.Event ue_instantiation()
End If
end event


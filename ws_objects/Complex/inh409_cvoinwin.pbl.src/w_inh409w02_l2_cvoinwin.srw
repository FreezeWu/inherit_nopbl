$PBExportHeader$w_inh409w02_l2_cvoinwin.srw
forward
global type w_inh409w02_l2_cvoinwin from w_inh409w01_l1_cvoinwin
end type
type uo_4 from u_cst_inh409_l1 within w_inh409w02_l2_cvoinwin
end type
type uo_5 from u_cst_inh409_l2 within w_inh409w02_l2_cvoinwin
end type
type uo_6 from u_cst_inh409_l3 within w_inh409w02_l2_cvoinwin
end type
type cb_3 from u_inh409_l3_cb within w_inh409w02_l2_cvoinwin
end type
type cb_4 from u_inh409_l3_cb within w_inh409w02_l2_cvoinwin
end type
end forward

global type w_inh409w02_l2_cvoinwin from w_inh409w01_l1_cvoinwin
string title = "Call CVO for Window(Level 2)"
uo_4 uo_4
uo_5 uo_5
uo_6 uo_6
cb_3 cb_3
cb_4 cb_4
end type
global w_inh409w02_l2_cvoinwin w_inh409w02_l2_cvoinwin

forward prototypes
public subroutine wf_init_items ()
public subroutine wf_describe ()
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
public function integer wf_createresultset ()
public function integer wf_savetempresult (long al_row)
end prototypes

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : wf_init_items ; Initialization ListBox Items
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

lb_items.Reset()
//script below  use to add test item into listbox control

lb_items.additem("INH409W02P001: Calling CVO Instance Variables(Level 2)")
lb_items.additem("INH409W02P002: Calling CVO Property(Level 2)")
lb_items.additem("INH409W02P003: Calling SVO Event(Level 2)")
end subroutine

public subroutine wf_describe ();//You must Define this Function for call
////////////////////////////////////////////////////////////////
//Function : wf_describe ; Output Describe
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

mle_describe.text  = "1.Appeon Window : "
mle_describe.text +=  Classname() + "~r~n" //This Must be the First output
mle_describe.text += "2.Testing Purpose : Calling CVO for Window(Level 2)" // This must include
mle_describe.text += "~r~n"
mle_describe.text += "3.Operation Step : ~r~n" // Optional
mle_describe.text += ""
mle_describe.text += "4.Object Declare : ~r~n" // Optional
Return
end subroutine

public subroutine wf_scriptexe (integer ai_item, boolean ab_execute);//You must Define this Function for view and Execute Script

//////////////////////////////////////////////////////////////////////
//Function: wf_scriptexe  View and Execute Script
//Argument: Int ai_item: SelectedItem;
//          Boolean ab_execute: Execute or View Flag
//Output:   none
//Designer:	
//Date:		2003-06-09
/////////////////////////////////////////////////////////////////////
long			ll_pos
String 		ls_item,ls_descript

If ai_item < 1 Then Return

ll_pos = Pos(lb_items.text(ai_item),':')
ls_item = Mid(lb_items.text(ai_item),1,ll_pos - 1)
ls_descript = Mid(lb_items.text(ai_item),ll_pos + 1,Len(lb_items.text(ai_item)))
String ls_original[22]
Choose Case ls_item
	Case 'INH409W02P001'
		If ab_execute Then
			//Calling SVO Instance Variables
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut("//Level 1", False)
			
			Wf_OutPut('CVO Object : //uo_1, Inherit from w_inh409w01_l1_svoinwin`uo_1', False)
			ls_original[1]= uo_1.is_CVO 
			Wf_Output('First Get  : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)
			uo_1.is_CVO = 'Set ' + uo_1.is_CVO
			Wf_Output('Second Get : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_1', False)
			ls_original[2]= uo_1.cb_1.is_String 
			Wf_Output('First Get  : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)
			uo_1.cb_1.is_String = 'Set ' + uo_1.cb_1.is_String
			Wf_Output('Second Get : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_2', False)
			ls_original[3]= uo_1.cb_2.is_String 
			Wf_Output('First Get  : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)
			uo_1.cb_2.is_String = 'Set ' + uo_1.cb_2.is_String
			Wf_Output('Second Get : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)	

			Wf_OutPut('CVO Object : //uo_2, Inherit from w_inh409w01_l1_svoinwin`uo_2', False)
			ls_original[4]= uo_2.is_CVO 
			Wf_Output('First Get  : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)
			uo_2.is_CVO = 'Set ' + uo_2.is_CVO
			Wf_Output('Second Get : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_1', False)
			ls_original[5]= uo_2.cb_1.is_String 
			Wf_Output('First Get  : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)
			uo_2.cb_1.is_String = 'Set ' + uo_2.cb_1.is_String
			Wf_Output('Second Get : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_2', False)
			ls_original[6]= uo_2.cb_2.is_String 
			Wf_Output('First Get  : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)
			uo_2.cb_2.is_String = 'Set ' + uo_2.cb_2.is_String
			Wf_Output('Second Get : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)
			
			Wf_OutPut('CVO Object : //uo_3, Inherit from w_inh409w01_l1_svoinwin`uo_3', False)
			ls_original[7]= uo_3.is_CVO 
			Wf_Output('First Get  : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)
			uo_3.is_CVO = 'Set ' + uo_3.is_CVO
			Wf_Output('Second Get : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_1', False)
			ls_original[8]= uo_3.cb_1.is_String 
			Wf_Output('First Get  : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)
			uo_3.cb_1.is_String = 'Set ' + uo_3.cb_1.is_String
			Wf_Output('Second Get : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_2', False)
			ls_original[9]= uo_3.cb_2.is_String 
			Wf_Output('First Get  : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)
			uo_3.cb_2.is_String = 'Set ' + uo_3.cb_2.is_String
			Wf_Output('Second Get : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)	
			
			Wf_OutPut('SVO Object : //cb_1, Inherit from w_inh409w01_l1_svoinwin`cb_1', False)
			ls_original[10]= cb_1.is_String 
			Wf_Output('First Get  : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)
			cb_1.is_String = 'Set ' + cb_1.is_String
			Wf_Output('Second Get : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_2, Inherit from w_inh409w01_l1_svoinwin`cb_2', False)
			ls_original[11]= cb_2.is_String 
			Wf_Output('First Get  : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)
			cb_2.is_String = 'Set ' + cb_2.is_String
			Wf_Output('Second Get : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)
			
			Wf_OutPut("//Level 2", False)
			
			Wf_OutPut('CVO Object : //uo_4, Inherit from u_cst_inh409_l1', False)
			ls_original[12]= uo_4.is_CVO 
			Wf_Output('First Get  : uo_4.is_CVO = ~"' + uo_4.is_CVO + '~"', False)
			uo_4.is_CVO = 'Set ' + uo_4.is_CVO
			Wf_Output('Second Get : uo_4.is_CVO = ~"' + uo_4.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_4.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)
			ls_original[13]= uo_4.cb_1.is_String 
			Wf_Output('First Get  : uo_4.cb_1.is_String = ~"' + uo_4.cb_1.is_String + '~"', False)
			uo_4.cb_1.is_String = 'Set ' + uo_4.cb_1.is_String
			Wf_Output('Second Get : uo_4.cb_1.is_String = ~"' + uo_4.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_4.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)
			ls_original[14]= uo_4.cb_2.is_String 
			Wf_Output('First Get  : uo_4.cb_2.is_String = ~"' + uo_4.cb_2.is_String + '~"', False)
			uo_4.cb_2.is_String = 'Set ' + uo_4.cb_2.is_String
			Wf_Output('Second Get : uo_4.cb_2.is_String = ~"' + uo_4.cb_2.is_String + '~"', False)	

			Wf_OutPut('CVO Object : //uo_5, Inherit from u_cst_inh409_l2', False)
			ls_original[15]= uo_5.is_CVO 
			Wf_Output('First Get  : uo_5.is_CVO = ~"' + uo_5.is_CVO + '~"', False)
			uo_5.is_CVO = 'Set ' + uo_5.is_CVO
			Wf_Output('Second Get : uo_5.is_CVO = ~"' + uo_5.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_5.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)
			ls_original[16]= uo_5.cb_1.is_String 
			Wf_Output('First Get  : uo_5.cb_1.is_String = ~"' + uo_5.cb_1.is_String + '~"', False)
			uo_5.cb_1.is_String = 'Set ' + uo_5.cb_1.is_String
			Wf_Output('Second Get : uo_5.cb_1.is_String = ~"' + uo_5.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_5.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)
			ls_original[17]= uo_5.cb_2.is_String 
			Wf_Output('First Get  : uo_5.cb_2.is_String = ~"' + uo_5.cb_2.is_String + '~"', False)
			uo_5.cb_2.is_String = 'Set ' + uo_5.cb_2.is_String
			Wf_Output('Second Get : uo_5.cb_2.is_String = ~"' + uo_5.cb_2.is_String + '~"', False)
			
			Wf_OutPut('CVO Object : //uo_6, Inherit from u_cst_inh409_l3', False)
			ls_original[18]= uo_6.is_CVO 
			Wf_Output('First Get  : uo_6.is_CVO = ~"' + uo_6.is_CVO + '~"', False)
			uo_6.is_CVO = 'Set ' + uo_6.is_CVO
			Wf_Output('Second Get : uo_6.is_CVO = ~"' + uo_6.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_6.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)
			ls_original[19]= uo_6.cb_1.is_String 
			Wf_Output('First Get  : uo_6.cb_1.is_String = ~"' + uo_6.cb_1.is_String + '~"', False)
			uo_6.cb_1.is_String = 'Set ' + uo_6.cb_1.is_String
			Wf_Output('Second Get : uo_6.cb_1.is_String = ~"' + uo_6.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_6.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)
			ls_original[20]= uo_6.cb_2.is_String 
			Wf_Output('First Get  : uo_6.cb_2.is_String = ~"' + uo_6.cb_2.is_String + '~"', False)
			uo_6.cb_2.is_String = 'Set ' + uo_6.cb_2.is_String
			Wf_Output('Second Get : uo_6.cb_2.is_String = ~"' + uo_6.cb_2.is_String + '~"', False)	
			
			Wf_OutPut('SVO Object : //cb_3, Inherit from u_inh409_l3_cb', False)
			ls_original[21]= cb_3.is_String 
			Wf_Output('First Get  : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)
			cb_3.is_String = 'Set ' + cb_3.is_String
			Wf_Output('Second Get : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_4, Inherit from u_inh409_l3_cb', False)
			ls_original[22]= cb_4.is_String 
			Wf_Output('First Get  : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)
			cb_4.is_String = 'Set ' + cb_4.is_String
			Wf_Output('Second Get : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)

			/////////////////////////////////////////////////////////////////////////
			//author:lujianhua
			//Add Code: Restore the original value
			///////////////
			 uo_1.is_CVO =ls_original[1]
			 uo_1.cb_1.is_String =ls_original[2]
			 uo_1.cb_2.is_String =ls_original[3]
			 uo_2.is_CVO =ls_original[4]
			 uo_2.cb_1.is_String =ls_original[5]
			 uo_2.cb_2.is_String =ls_original[6]
			 uo_3.is_CVO =ls_original[7]
			 uo_3.cb_1.is_String =ls_original[8]
			 uo_3.cb_2.is_String =ls_original[9]
			 cb_1.is_String =ls_original[10]
			 cb_2.is_String =ls_original[11]
			 uo_4.is_CVO =ls_original[12]
			 uo_4.cb_1.is_String =ls_original[13]
			 uo_4.cb_2.is_String =ls_original[14]
			 uo_5.is_CVO =ls_original[15]
			 uo_5.cb_1.is_String =ls_original[16]
			 uo_5.cb_2.is_String =ls_original[17]
			 uo_6.is_CVO =ls_original[18]
			 uo_6.cb_1.is_String =ls_original[19]
			 uo_6.cb_2.is_String =ls_original[20]
			 cb_3.is_String =ls_original[21]
			 cb_4.is_String =ls_original[22]
			///Array Length=22
			//////////////////////////////////////////////////////////////////////////

		Else
			wf_scriptview("//Calling SVO Instance Variables                                                            ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                  ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                             ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 1', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_1, Inherit from w_inh409w01_l1_svoinwin`uo_1', False)          ")
			wf_scriptview("Wf_Output('First Get  : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)                      ")
			wf_scriptview("uo_1.is_CVO = 'Set ' + uo_1.is_CVO                                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)                      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_1', False)")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)      ")
			wf_scriptview("uo_1.cb_1.is_String = 'Set ' + uo_1.cb_1.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_2', False)")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)      ")
			wf_scriptview("uo_1.cb_2.is_String = 'Set ' + uo_1.cb_2.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_2, Inherit from w_inh409w01_l1_svoinwin`uo_2', False)          ")
			wf_scriptview("Wf_Output('First Get  : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)                      ")
			wf_scriptview("uo_2.is_CVO = 'Set ' + uo_2.is_CVO                                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)                      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_1', False)")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)      ")
			wf_scriptview("uo_2.cb_1.is_String = 'Set ' + uo_2.cb_1.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_2', False)")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)      ")
			wf_scriptview("uo_2.cb_2.is_String = 'Set ' + uo_2.cb_2.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_3, Inherit from w_inh409w01_l1_svoinwin`uo_3', False)          ")
			wf_scriptview("Wf_Output('First Get  : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)                      ")
			wf_scriptview("uo_3.is_CVO = 'Set ' + uo_3.is_CVO                                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)                      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_1', False)")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)      ")
			wf_scriptview("uo_3.cb_1.is_String = 'Set ' + uo_3.cb_1.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_2', False)")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)      ")
			wf_scriptview("uo_3.cb_2.is_String = 'Set ' + uo_3.cb_2.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_1, Inherit from w_inh409w01_l1_svoinwin`cb_1', False)          ")
			wf_scriptview("Wf_Output('First Get  : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)                ")
			wf_scriptview("cb_1.is_String = 'Set ' + cb_1.is_String                                                    ")
			wf_scriptview("Wf_Output('Second Get : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_2, Inherit from w_inh409w01_l1_svoinwin`cb_2', False)          ")
			wf_scriptview("Wf_Output('First Get  : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)                ")
			wf_scriptview("cb_2.is_String = 'Set ' + cb_2.is_String                                                    ")
			wf_scriptview("Wf_Output('Second Get : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 2', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_4, Inherit from u_cst_inh409_l1', False)                       ")
			wf_scriptview("Wf_Output('First Get  : uo_4.is_CVO = ~"' + uo_4.is_CVO + '~"', False)                      ")
			wf_scriptview("uo_4.is_CVO = 'Set ' + uo_4.is_CVO                                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_4.is_CVO = ~"' + uo_4.is_CVO + '~"', False)                      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_4.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_4.cb_1.is_String = ~"' + uo_4.cb_1.is_String + '~"', False)      ")
			wf_scriptview("uo_4.cb_1.is_String = 'Set ' + uo_4.cb_1.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_4.cb_1.is_String = ~"' + uo_4.cb_1.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_4.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_4.cb_2.is_String = ~"' + uo_4.cb_2.is_String + '~"', False)      ")
			wf_scriptview("uo_4.cb_2.is_String = 'Set ' + uo_4.cb_2.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_4.cb_2.is_String = ~"' + uo_4.cb_2.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_5, Inherit from u_cst_inh409_l2', False)                       ")
			wf_scriptview("Wf_Output('First Get  : uo_5.is_CVO = ~"' + uo_5.is_CVO + '~"', False)                      ")
			wf_scriptview("uo_5.is_CVO = 'Set ' + uo_5.is_CVO                                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_5.is_CVO = ~"' + uo_5.is_CVO + '~"', False)                      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_5.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_5.cb_1.is_String = ~"' + uo_5.cb_1.is_String + '~"', False)      ")
			wf_scriptview("uo_5.cb_1.is_String = 'Set ' + uo_5.cb_1.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_5.cb_1.is_String = ~"' + uo_5.cb_1.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_5.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_5.cb_2.is_String = ~"' + uo_5.cb_2.is_String + '~"', False)      ")
			wf_scriptview("uo_5.cb_2.is_String = 'Set ' + uo_5.cb_2.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_5.cb_2.is_String = ~"' + uo_5.cb_2.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_6, Inherit from u_cst_inh409_l3', False)                       ")
			wf_scriptview("Wf_Output('First Get  : uo_6.is_CVO = ~"' + uo_6.is_CVO + '~"', False)                      ")
			wf_scriptview("uo_6.is_CVO = 'Set ' + uo_6.is_CVO                                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_6.is_CVO = ~"' + uo_6.is_CVO + '~"', False)                      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_6.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_6.cb_1.is_String = ~"' + uo_6.cb_1.is_String + '~"', False)      ")
			wf_scriptview("uo_6.cb_1.is_String = 'Set ' + uo_6.cb_1.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_6.cb_1.is_String = ~"' + uo_6.cb_1.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_6.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_6.cb_2.is_String = ~"' + uo_6.cb_2.is_String + '~"', False)      ")
			wf_scriptview("uo_6.cb_2.is_String = 'Set ' + uo_6.cb_2.is_String                                          ")
			wf_scriptview("Wf_Output('Second Get : uo_6.cb_2.is_String = ~"' + uo_6.cb_2.is_String + '~"', False)      ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_3, Inherit from u_inh409_l3_cb', False)                        ")
			wf_scriptview("Wf_Output('First Get  : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)                ")
			wf_scriptview("cb_3.is_String = 'Set ' + cb_3.is_String                                                    ")
			wf_scriptview("Wf_Output('Second Get : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_4, Inherit from u_inh409_l3_cb', False)                        ")
			wf_scriptview("Wf_Output('First Get  : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)                ")
			wf_scriptview("cb_4.is_String = 'Set ' + cb_4.is_String                                                    ")
			wf_scriptview("Wf_Output('Second Get : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)                ")
			
		End If
		
	CASE 'INH409W02P002'
		If ab_execute Then
			//Calling SVO Instance Variables
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('//Level 1', False)
			
			Wf_OutPut('CVO Object : //uo_1, Inherit from w_inh409w01_l1_svoinwin`uo_1', False)
			ls_original[1]= uo_1.Tag 
			Wf_Output('First Get  : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)
			uo_1.Tag = 'Set ' + uo_1.Tag
			Wf_Output('Second Get : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_1', False)
			ls_original[2]= uo_1.cb_1.Text 
			Wf_Output('First Get  : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)
			uo_1.cb_1.Text = 'Set ' + uo_1.cb_1.Text
			Wf_Output('Second Get : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_2', False)
			ls_original[3]= uo_1.cb_2.Text 
			Wf_Output('First Get  : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)
			uo_1.cb_2.Text = 'Set ' + uo_1.cb_2.Text
			Wf_Output('Second Get : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)	

			Wf_OutPut('CVO Object : //uo_2, Inherit from w_inh409w01_l1_svoinwin`uo_2', False)
			ls_original[4]= uo_2.Tag 
			Wf_Output('First Get  : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)
			uo_2.Tag = 'Set ' + uo_2.Tag
			Wf_Output('Second Get : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_1', False)
			ls_original[5]= uo_2.cb_1.Text 
			Wf_Output('First Get  : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)
			uo_2.cb_1.Text = 'Set ' + uo_2.cb_1.Text
			Wf_Output('Second Get : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_2', False)
			ls_original[6]= uo_2.cb_2.Text 
			Wf_Output('First Get  : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)
			uo_2.cb_2.Text = 'Set ' + uo_2.cb_2.Text
			Wf_Output('Second Get : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)
			
			Wf_OutPut('CVO Object : //uo_3, Inherit from w_inh409w01_l1_svoinwin`uo_3', False)
			ls_original[7]= uo_3.Tag 
			Wf_Output('First Get  : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)
			uo_3.Tag = 'Set ' + uo_3.Tag
			Wf_Output('Second Get : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_1', False)
			ls_original[8]= uo_3.cb_1.Text 
			Wf_Output('First Get  : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)
			uo_3.cb_1.Text = 'Set ' + uo_3.cb_1.Text
			Wf_Output('Second Get : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_2', False)
			ls_original[9]= uo_3.cb_2.Text 
			Wf_Output('First Get  : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)
			uo_3.cb_2.Text = 'Set ' + uo_3.cb_2.Text
			Wf_Output('Second Get : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_1, Inherit from w_inh409w01_l1_svoinwin`cb_1', False)
			ls_original[10]= cb_1.Text 
			Wf_Output('First Get  : cb_1.Text = ~"' + cb_1.Text + '~"', False)
			cb_1.Text = 'Set ' + cb_1.Text
			Wf_Output('Second Get : cb_1.Text = ~"' + cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_2, Inherit from w_inh409w01_l1_svoinwin`cb_2', False)
			ls_original[11]= cb_2.Text 
			Wf_Output('First Get  : cb_2.Text = ~"' + cb_2.Text + '~"', False)
			cb_2.Text = 'Set ' + cb_2.Text
			Wf_Output('Second Get : cb_2.Text = ~"' + cb_2.Text + '~"', False)
			
			Wf_OutPut('//Level 2', False)
		
			Wf_OutPut('CVO Object : //uo_4, Inherit from u_cst_inh409_l1', False)
			ls_original[12]= uo_4.Tag 
			Wf_Output('First Get  : uo_4.Tag = ~"' + uo_4.Tag + '~"', False)
			uo_4.Tag = 'Set ' + uo_4.Tag
			Wf_Output('Second Get : uo_4.Tag = ~"' + uo_4.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_4.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)
			ls_original[13]= uo_4.cb_1.Text 
			Wf_Output('First Get  : uo_4.cb_1.Text = ~"' + uo_4.cb_1.Text + '~"', False)
			uo_4.cb_1.Text = 'Set ' + uo_4.cb_1.Text
			Wf_Output('Second Get : uo_4.cb_1.Text = ~"' + uo_4.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_4.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)
			ls_original[14]= uo_4.cb_2.Text 
			Wf_Output('First Get  : uo_4.cb_2.Text = ~"' + uo_4.cb_2.Text + '~"', False)
			uo_4.cb_2.Text = 'Set ' + uo_4.cb_2.Text
			Wf_Output('Second Get : uo_4.cb_2.Text = ~"' + uo_4.cb_2.Text + '~"', False)	

			Wf_OutPut('CVO Object : //uo_5, Inherit from u_cst_inh409_l2', False)
			ls_original[15]= uo_5.Tag 
			Wf_Output('First Get  : uo_5.Tag = ~"' + uo_5.Tag + '~"', False)
			uo_5.Tag = 'Set ' + uo_5.Tag
			Wf_Output('Second Get : uo_5.Tag = ~"' + uo_5.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_5.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)
			ls_original[16]= uo_5.cb_1.Text 
			Wf_Output('First Get  : uo_5.cb_1.Text = ~"' + uo_5.cb_1.Text + '~"', False)
			uo_5.cb_1.Text = 'Set ' + uo_5.cb_1.Text
			Wf_Output('Second Get : uo_5.cb_1.Text = ~"' + uo_5.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_5.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)
			ls_original[17]= uo_5.cb_2.Text 
			Wf_Output('First Get  : uo_5.cb_2.Text = ~"' + uo_5.cb_2.Text + '~"', False)
			uo_5.cb_2.Text = 'Set ' + uo_5.cb_2.Text
			Wf_Output('Second Get : uo_5.cb_2.Text = ~"' + uo_5.cb_2.Text + '~"', False)
			
			Wf_OutPut('CVO Object : //uo_6, Inherit from u_cst_inh409_l3', False)
			ls_original[18]= uo_6.Tag 
			Wf_Output('First Get  : uo_6.Tag = ~"' + uo_6.Tag + '~"', False)
			uo_6.Tag = 'Set ' + uo_6.Tag
			Wf_Output('Second Get : uo_6.Tag = ~"' + uo_6.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_6.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)
			ls_original[19]= uo_6.cb_1.Text 
			Wf_Output('First Get  : uo_6.cb_1.Text = ~"' + uo_6.cb_1.Text + '~"', False)
			uo_6.cb_1.Text = 'Set ' + uo_6.cb_1.Text
			Wf_Output('Second Get : uo_6.cb_1.Text = ~"' + uo_6.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_6.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)
			ls_original[20]= uo_6.cb_2.Text 
			Wf_Output('First Get  : uo_6.cb_2.Text = ~"' + uo_6.cb_2.Text + '~"', False)
			uo_6.cb_2.Text = 'Set ' + uo_6.cb_2.Text
			Wf_Output('Second Get : uo_6.cb_2.Text = ~"' + uo_6.cb_2.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_3, Inherit from u_inh409_l3_cb', False)
			ls_original[21]= cb_3.Text 
			Wf_Output('First Get  : cb_3.Text = ~"' + cb_3.Text + '~"', False)
			cb_3.Text = 'Set ' + cb_3.Text
			Wf_Output('Second Get : cb_3.Text = ~"' + cb_3.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_4, Inherit from u_inh409_l3_cb', False)
			ls_original[22]= cb_4.Text 
			Wf_Output('First Get  : cb_4.Text = ~"' + cb_4.Text + '~"', False)
			cb_4.Text = 'Set ' + cb_4.Text
			Wf_Output('Second Get : cb_4.Text = ~"' + cb_4.Text + '~"', False)
		
			/////////////////////////////////////////////////////////////////////////
			//author:lujianhua
			//Add Code: Restore the original value
			///////////////
			 uo_1.Tag =ls_original[1]
			 uo_1.cb_1.Text =ls_original[2]
			 uo_1.cb_2.Text =ls_original[3]
			 uo_2.Tag =ls_original[4]
			 uo_2.cb_1.Text =ls_original[5]
			 uo_2.cb_2.Text =ls_original[6]
			 uo_3.Tag =ls_original[7]
			 uo_3.cb_1.Text =ls_original[8]
			 uo_3.cb_2.Text =ls_original[9]
			 cb_1.Text =ls_original[10]
			 cb_2.Text =ls_original[11]
			 uo_4.Tag =ls_original[12]
			 uo_4.cb_1.Text =ls_original[13]
			 uo_4.cb_2.Text =ls_original[14]
			 uo_5.Tag =ls_original[15]
			 uo_5.cb_1.Text =ls_original[16]
			 uo_5.cb_2.Text =ls_original[17]
			 uo_6.Tag =ls_original[18]
			 uo_6.cb_1.Text =ls_original[19]
			 uo_6.cb_2.Text =ls_original[20]
			 cb_3.Text =ls_original[21]
			 cb_4.Text =ls_original[22]
			///Array Length=22
			//////////////////////////////////////////////////////////////////////////
Else
			wf_scriptview("//Calling SVO Instance Variables                                                            ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                  ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                             ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 1', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_1, Inherit from w_inh409w01_l1_svoinwin`uo_1', False)          ")
			wf_scriptview("Wf_Output('First Get  : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)                            ")
			wf_scriptview("uo_1.Tag = 'Set ' + uo_1.Tag                                                                ")
			wf_scriptview("Wf_Output('Second Get : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)                            ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_1', False)")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)                ")
			wf_scriptview("uo_1.cb_1.Text = 'Set ' + uo_1.cb_1.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_1`cb_2', False)")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)                ")
			wf_scriptview("uo_1.cb_2.Text = 'Set ' + uo_1.cb_2.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_2, Inherit from w_inh409w01_l1_svoinwin`uo_2', False)          ")
			wf_scriptview("Wf_Output('First Get  : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)                            ")
			wf_scriptview("uo_2.Tag = 'Set ' + uo_2.Tag                                                                ")
			wf_scriptview("Wf_Output('Second Get : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)                            ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_1', False)")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)                ")
			wf_scriptview("uo_2.cb_1.Text = 'Set ' + uo_2.cb_1.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_2`cb_2', False)")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)                ")
			wf_scriptview("uo_2.cb_2.Text = 'Set ' + uo_2.cb_2.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_3, Inherit from w_inh409w01_l1_svoinwin`uo_3', False)          ")
			wf_scriptview("Wf_Output('First Get  : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)                            ")
			wf_scriptview("uo_3.Tag = 'Set ' + uo_3.Tag                                                                ")
			wf_scriptview("Wf_Output('Second Get : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)                            ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_1', False)")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)                ")
			wf_scriptview("uo_3.cb_1.Text = 'Set ' + uo_3.cb_1.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from w_inh409w01_l1_svoinwin`uo_3`cb_2', False)")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)                ")
			wf_scriptview("uo_3.cb_2.Text = 'Set ' + uo_3.cb_2.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_1, Inherit from w_inh409w01_l1_svoinwin`cb_1', False)          ")
			wf_scriptview("Wf_Output('First Get  : cb_1.Text = ~"' + cb_1.Text + '~"', False)                          ")
			wf_scriptview("cb_1.Text = 'Set ' + cb_1.Text                                                              ")
			wf_scriptview("Wf_Output('Second Get : cb_1.Text = ~"' + cb_1.Text + '~"', False)                          ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_2, Inherit from w_inh409w01_l1_svoinwin`cb_2', False)          ")
			wf_scriptview("Wf_Output('First Get  : cb_2.Text = ~"' + cb_2.Text + '~"', False)                          ")
			wf_scriptview("cb_2.Text = 'Set ' + cb_2.Text                                                              ")
			wf_scriptview("Wf_Output('Second Get : cb_2.Text = ~"' + cb_2.Text + '~"', False)                          ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 2', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_4, Inherit from u_cst_inh409_l1', False)                       ")
			wf_scriptview("Wf_Output('First Get  : uo_4.Tag = ~"' + uo_4.Tag + '~"', False)                            ")
			wf_scriptview("uo_4.Tag = 'Set ' + uo_4.Tag                                                                ")
			wf_scriptview("Wf_Output('Second Get : uo_4.Tag = ~"' + uo_4.Tag + '~"', False)                            ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_4.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_4.cb_1.Text = ~"' + uo_4.cb_1.Text + '~"', False)                ")
			wf_scriptview("uo_4.cb_1.Text = 'Set ' + uo_4.cb_1.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_4.cb_1.Text = ~"' + uo_4.cb_1.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_4.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_4.cb_2.Text = ~"' + uo_4.cb_2.Text + '~"', False)                ")
			wf_scriptview("uo_4.cb_2.Text = 'Set ' + uo_4.cb_2.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_4.cb_2.Text = ~"' + uo_4.cb_2.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_5, Inherit from u_cst_inh409_l2', False)                       ")
			wf_scriptview("Wf_Output('First Get  : uo_5.Tag = ~"' + uo_5.Tag + '~"', False)                            ")
			wf_scriptview("uo_5.Tag = 'Set ' + uo_5.Tag                                                                ")
			wf_scriptview("Wf_Output('Second Get : uo_5.Tag = ~"' + uo_5.Tag + '~"', False)                            ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_5.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_5.cb_1.Text = ~"' + uo_5.cb_1.Text + '~"', False)                ")
			wf_scriptview("uo_5.cb_1.Text = 'Set ' + uo_5.cb_1.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_5.cb_1.Text = ~"' + uo_5.cb_1.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_5.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_5.cb_2.Text = ~"' + uo_5.cb_2.Text + '~"', False)                ")
			wf_scriptview("uo_5.cb_2.Text = 'Set ' + uo_5.cb_2.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_5.cb_2.Text = ~"' + uo_5.cb_2.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_6, Inherit from u_cst_inh409_l3', False)                       ")
			wf_scriptview("Wf_Output('First Get  : uo_6.Tag = ~"' + uo_6.Tag + '~"', False)                            ")
			wf_scriptview("uo_6.Tag = 'Set ' + uo_6.Tag                                                                ")
			wf_scriptview("Wf_Output('Second Get : uo_6.Tag = ~"' + uo_6.Tag + '~"', False)                            ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_6.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_6.cb_1.Text = ~"' + uo_6.cb_1.Text + '~"', False)                ")
			wf_scriptview("uo_6.cb_1.Text = 'Set ' + uo_6.cb_1.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_6.cb_1.Text = ~"' + uo_6.cb_1.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_6.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)             ")
			wf_scriptview("Wf_Output('First Get  : uo_6.cb_2.Text = ~"' + uo_6.cb_2.Text + '~"', False)                ")
			wf_scriptview("uo_6.cb_2.Text = 'Set ' + uo_6.cb_2.Text                                                    ")
			wf_scriptview("Wf_Output('Second Get : uo_6.cb_2.Text = ~"' + uo_6.cb_2.Text + '~"', False)                ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_3, Inherit from u_inh409_l3_cb', False)                        ")
			wf_scriptview("Wf_Output('First Get  : cb_3.Text = ~"' + cb_3.Text + '~"', False)                          ")
			wf_scriptview("cb_3.Text = 'Set ' + cb_3.Text                                                              ")
			wf_scriptview("Wf_Output('Second Get : cb_3.Text = ~"' + cb_3.Text + '~"', False)                          ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_4, Inherit from u_inh409_l3_cb', False)                        ")
			wf_scriptview("Wf_Output('First Get  : cb_4.Text = ~"' + cb_4.Text + '~"', False)                          ")
			wf_scriptview("cb_4.Text = 'Set ' + cb_4.Text                                                              ")
			wf_scriptview("Wf_Output('Second Get : cb_4.Text = ~"' + cb_4.Text + '~"', False)                          ")
			
		End if
	CASE 'INH409W02P003'
		If ab_execute Then
			//Calling SVO Event
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('//Level 1', False)
			
			Wf_OutPut('CVO Object : uo_1; Inherit from w_inh409w01_l1_cvoinwin`uo_1', False)
			Wf_OutPut('SVO Object : uo_1.cb_1; Inherit from w_inh409w01_l1_cvoinwin`uo_1`cb_1', False)
			uo_1.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_1.cb_2; Inherit from w_inh409w01_l1_cvoinwin`uo_1`cb_2', False)
			uo_1.cb_2.Event Clicked()
			
			Wf_OutPut('CVO Object : uo_2; Inherit from w_inh409w01_l1_cvoinwin`uo_2', False)
			Wf_OutPut('SVO Object : uo_2.cb_1; Inherit from w_inh409w01_l1_cvoinwin`uo_2`cb_1', False)
			uo_2.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_2.cb_2; Inherit from w_inh409w01_l1_cvoinwin`uo_2`cb_2', False)
			uo_2.cb_2.Event Clicked()
			
			Wf_OutPut('CVO Object : uo_3; Inherit from w_inh409w01_l1_cvoinwin`uo_3', False)
			Wf_OutPut('SVO Object : uo_3.cb_1; Inherit from w_inh409w01_l1_cvoinwin`uo_3`cb_1', False)
			uo_3.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_3.cb_2; Inherit from w_inh409w01_l1_cvoinwin`uo_3`cb_2', False)
			uo_3.cb_2.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_1; Inherit from w_inh409w01_l1_cvoinwin`cb_1, Extend', False)
			cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_2; Inherit from w_inh409w01_l1_cvoinwin`cb_2, No Code', False)
			cb_2.Event Clicked()

			Wf_OutPut('//Level 2', False)
						
			Wf_OutPut('CVO Object : uo_4; Inherit from u_cst_inh409_l1', False)
			Wf_OutPut('SVO Object : uo_4.cb_1; Inherit from u_cst_inh409_l1`cb_1(Override Ancestor)', False)
			uo_4.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_4.cb_2; Inherit from u_cst_inh409_l1`cb_2(Extend Ancestor)', False)
			uo_4.cb_2.Event Clicked()
			
			Wf_OutPut('CVO Object : uo_5; Inherit from u_cst_inh409_l2', False)
			Wf_OutPut('SVO Object : uo_5.cb_1; Inherit from u_cst_inh409_l2`cb_1(No Code)', False)
			uo_5.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_5.cb_2; Inherit from u_cst_inh409_l2`cb_2(Override Ancestor)', False)
			uo_5.cb_2.Event Clicked()
			
			Wf_OutPut('CVO Object : uo_6; Inherit from u_cst_inh409_l3', False)
			Wf_OutPut('SVO Object : uo_6.cb_1; Inherit from u_cst_inh409_l3`cb_1(Extend Ancestor)', False)
			uo_6.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_6.cb_2; Inherit from u_cst_inh409_l3`cb_2(No Code)', False)
			uo_6.cb_2.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_3; Inherit from u_inh409_l3_cb, No Code', False)
			cb_3.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_4; Inherit from u_inh409_l3_cb, Override', False)
			cb_4.Event Clicked()
		Else
			wf_scriptview("//Calling SVO Event                                                                             ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                      ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                 ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('//Level 1', False)                                                                   ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_1; Inherit from w_inh409w01_l1_cvoinwin`uo_1', False)                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_1.cb_1; Inherit from w_inh409w01_l1_cvoinwin`uo_1`cb_1', False)      ")
			wf_scriptview("uo_1.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_1.cb_2; Inherit from w_inh409w01_l1_cvoinwin`uo_1`cb_2', False)      ")
			wf_scriptview("uo_1.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_2; Inherit from w_inh409w01_l1_cvoinwin`uo_2', False)                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_2.cb_1; Inherit from w_inh409w01_l1_cvoinwin`uo_2`cb_1', False)      ")
			wf_scriptview("uo_2.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_2.cb_2; Inherit from w_inh409w01_l1_cvoinwin`uo_2`cb_2', False)      ")
			wf_scriptview("uo_2.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_3; Inherit from w_inh409w01_l1_cvoinwin`uo_3', False)                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_3.cb_1; Inherit from w_inh409w01_l1_cvoinwin`uo_3`cb_1', False)      ")
			wf_scriptview("uo_3.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_3.cb_2; Inherit from w_inh409w01_l1_cvoinwin`uo_3`cb_2', False)      ")
			wf_scriptview("uo_3.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_1; Inherit from w_inh409w01_l1_cvoinwin`cb_1, Extend', False)        ")
			wf_scriptview("cb_1.Event Clicked()                                                                            ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_2; Inherit from w_inh409w01_l1_cvoinwin`cb_2, No Code', False)       ")
			wf_scriptview("cb_2.Event Clicked()                                                                            ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('//Level 2', False)                                                                   ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_4; Inherit from u_cst_inh409_l1', False)                             ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_4.cb_1; Inherit from u_cst_inh409_l1`cb_1(Override Ancestor)', False)")
			wf_scriptview("uo_4.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_4.cb_2; Inherit from u_cst_inh409_l1`cb_2(Extend Ancestor)', False)  ")
			wf_scriptview("uo_4.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_5; Inherit from u_cst_inh409_l2', False)                             ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_5.cb_1; Inherit from u_cst_inh409_l2`cb_1(No Code)', False)          ")
			wf_scriptview("uo_5.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_5.cb_2; Inherit from u_cst_inh409_l2`cb_2(Override Ancestor)', False)")
			wf_scriptview("uo_5.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_6; Inherit from u_cst_inh409_l3', False)                             ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_6.cb_1; Inherit from u_cst_inh409_l3`cb_1(Extend Ancestor)', False)  ")
			wf_scriptview("uo_6.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_6.cb_2; Inherit from u_cst_inh409_l3`cb_2(No Code)', False)          ")
			wf_scriptview("uo_6.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_3; Inherit from u_inh409_l3_cb, No Code', False)                     ")
			wf_scriptview("cb_3.Event Clicked()                                                                            ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_4; Inherit from u_inh409_l3_cb, Override', False)                    ")
			wf_scriptview("cb_4.Event Clicked()                                                                            ")

		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose
//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE

end subroutine

public function integer wf_createresultset ();//start:public function integer wf_createresultset ()
string ls_Syntax
string ls_ErrorMesg
string ls_SQLSelect
string ls_WinName

// Not connected TQMS DB
if not gb_COTDBConnected then Return -1

// Refresh data
if IsValid(ids_TestPoint) then
	ids_TestPoint.Retrieve()
	ids_ResultDetailTemp.Retrieve()
	Return 1
end if

// Get WindowID
if il_WindowID=-1 then
	ls_WinName = Lower(this.ClassName())
	SELECT WindowId INTO :il_WindowID FROM TestWindow WHERE SwName = :ls_WinName using gtr_COTDB;
	if gtr_COTDB.SQLCode<>0 or gtr_COTDB.SQLNRows<>1 then Return -1
end if

// TestPoint
ls_WinName = Lower(this.ClassName())
ls_SQLSelect =	"SELECT TestPointId = TestPoint.TestPointId, TPNO = TestPoint.TPNO, ExpectValue = TestPoint.ExpectValue " + &
					"FROM   TestPoint, TestWindow " + &
					"WHERE  ( TestPoint.WindowId = TestWindow.WindowId ) AND ( TestPoint.is_valid = '1' ) AND " + &
				 			 "( Lower(TestWindow.SwName) = '" + ls_WinName + "')"
ls_Syntax = gtr_COTDB.SyntaxFromSQL(ls_SQLSelect, "", ls_ErrorMesg)
if Len(ls_ErrorMesg)>0 then Return -1
ids_TestPoint = Create DataStore
ids_TestPoint.Create(ls_Syntax)
ids_TestPoint.SetTransObject(gtr_COTDB)
ids_TestPoint.Retrieve()
ids_TestPoint.SetSort("TPNO A")
ids_TestPoint.Sort()

// ResultDetailTemp
ls_SQLSelect = "SELECT * FROM ResultDetailTemp WHERE " + &
					"version = " + String(gi_COTVersion) + " AND " + &
					"Envi = '" + gs_COTEnvironment + "' AND " + &
					"WindowID = " + String(il_WindowID)
ls_Syntax = gtr_COTDB.SyntaxFromSQL(ls_SQLSelect, "", ls_ErrorMesg)
if Len(ls_ErrorMesg)>0 then
	Destroy ids_TestPoint
	Return -1
end if
ids_ResultDetailTemp = Create DataStore
ids_ResultDetailTemp.Create(ls_Syntax)
ids_ResultDetailTemp.SetTransObject(gtr_COTDB)
ids_ResultDetailTemp.Retrieve()

Return 1
//end:public function integer wf_createresultset ()
end function

public function integer wf_savetempresult (long al_row);//start:public function integer wf_savetempresult (long al_row)
long   ll_FindRow
long   ll_InsertRow
long   ll_TestpointId
string ls_ExpectValue
string ls_TrueValue
string ls_WinName
DateTime ldt_SaveTime

// Not connected TQMS DB
if not gb_COTDBConnected then Return -1

// Check WindowID
if il_WindowID=-1 then Return -1

// Save temp result
SELECT GetDate() INTO :ldt_SaveTime FROM sysdual using gtr_COTDB;
ll_TestpointId = ids_TestPoint.GetItemNumber(al_Row, "TestpointId")
ls_ExpectValue = ids_TestPoint.GetItemString(al_Row, "ExpectValue")
if IsNull(ls_ExpectValue) then ls_ExpectValue = ""

ll_FindRow = ids_ResultDetailTemp.Find("TestpointId=" + String(ll_TestpointId),1,ids_ResultDetailTemp.RowCount())
if ll_FindRow<=0 then
	ll_InsertRow = ids_ResultDetailTemp.InsertRow(0)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "TestpointId", ll_TestpointId)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "Envi", gs_COTEnvironment)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "version", gi_COTVersion)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "WindowID", il_WindowID)	
	ll_FindRow = ll_InsertRow
end if

ls_TrueValue = mle_output.Text
ids_ResultDetailTemp.SetItem(ll_FindRow, "TrueValue", ls_TrueValue)
ids_ResultDetailTemp.SetItem(ll_FindRow, "ExpectValue", ls_ExpectValue)
ids_ResultDetailTemp.SetItem(ll_FindRow, "SaveTime", ldt_SaveTime)
if ls_TrueValue=ls_ExpectValue then	
	ids_ResultDetailTemp.SetItem(ll_FindRow, "status", "1")
else
	ids_ResultDetailTemp.SetItem(ll_FindRow, "status", "0")
end if

if ids_ResultDetailTemp.Update()=1 then
	Commit using gtr_COTDB;
	if not gb_COTAutoRun and IsValid(w_pbvsjs) then
		w_pbvsjs.wf_Retrieve(this.ClassName())
		w_pbvsjs.dw_result.ScrollToRow(al_Row)
		w_pbvsjs.dw_result.SelectRow(0, false)
		w_pbvsjs.dw_result.SelectRow(al_Row, true)
	end if	
	Return 1
else
	Rollback using gtr_COTDB;
	ids_ResultDetailTemp.ResetUpdate()
	Return -1
end if
//end:public function integer wf_savetempresult (long al_row)
end function

on w_inh409w02_l2_cvoinwin.create
int iCurrent
call super::create
this.uo_4=create uo_4
this.uo_5=create uo_5
this.uo_6=create uo_6
this.cb_3=create cb_3
this.cb_4=create cb_4
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_4
this.Control[iCurrent+2]=this.uo_5
this.Control[iCurrent+3]=this.uo_6
this.Control[iCurrent+4]=this.cb_3
this.Control[iCurrent+5]=this.cb_4
end on

on w_inh409w02_l2_cvoinwin.destroy
call super::destroy
destroy(this.uo_4)
destroy(this.uo_5)
destroy(this.uo_6)
destroy(this.cb_3)
destroy(this.cb_4)
end on

type cb_2 from w_inh409w01_l1_cvoinwin`cb_2 within w_inh409w02_l2_cvoinwin
string text = "SL3, WL12_2"
string is_string = "SL3, WL12_2"
end type

type cb_1 from w_inh409w01_l1_cvoinwin`cb_1 within w_inh409w02_l2_cvoinwin
string text = "SL3, WL12_1"
string is_string = "SL3, WL12_1"
end type

event cb_1::clicked;call super::clicked;//Extend
W_INH409W01_L1_CVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute w_inh409w02_l2_cvoinwin.cb_1 Script.", False)
end event

type uo_3 from w_inh409w01_l1_cvoinwin`uo_3 within w_inh409w02_l2_cvoinwin
string tag = "CVO L3, WL12"
string is_cvo = "CVO L3, WL12"
end type

type uo_2 from w_inh409w01_l1_cvoinwin`uo_2 within w_inh409w02_l2_cvoinwin
string tag = "CVO L2, WL12"
string is_cvo = "CVO L2, WL12"
end type

type uo_1 from w_inh409w01_l1_cvoinwin`uo_1 within w_inh409w02_l2_cvoinwin
string tag = "CVO L1, WL12"
string is_cvo = "CVO L1, WL12"
end type

type cb_execute from w_inh409w01_l1_cvoinwin`cb_execute within w_inh409w02_l2_cvoinwin
end type

type lb_items from w_inh409w01_l1_cvoinwin`lb_items within w_inh409w02_l2_cvoinwin
end type

type cb_clear from w_inh409w01_l1_cvoinwin`cb_clear within w_inh409w02_l2_cvoinwin
end type

type cb_close from w_inh409w01_l1_cvoinwin`cb_close within w_inh409w02_l2_cvoinwin
end type

type mle_output from w_inh409w01_l1_cvoinwin`mle_output within w_inh409w02_l2_cvoinwin
end type

type mle_view from w_inh409w01_l1_cvoinwin`mle_view within w_inh409w02_l2_cvoinwin
end type

type gb_5 from w_inh409w01_l1_cvoinwin`gb_5 within w_inh409w02_l2_cvoinwin
end type

type mle_describe from w_inh409w01_l1_cvoinwin`mle_describe within w_inh409w02_l2_cvoinwin
end type

type gb_4 from w_inh409w01_l1_cvoinwin`gb_4 within w_inh409w02_l2_cvoinwin
end type

type gb_1 from w_inh409w01_l1_cvoinwin`gb_1 within w_inh409w02_l2_cvoinwin
end type

type cb_cotviewresult from w_inh409w01_l1_cvoinwin`cb_cotviewresult within w_inh409w02_l2_cvoinwin
end type

type cb_cotautorun from w_inh409w01_l1_cvoinwin`cb_cotautorun within w_inh409w02_l2_cvoinwin
end type

type uo_4 from u_cst_inh409_l1 within w_inh409w02_l2_cvoinwin
string tag = "CVO L1, WL2"
integer x = 361
integer y = 944
integer taborder = 100
boolean bringtotop = true
string is_cvo = "CVO L1, WL2"
end type

event constructor;call super::constructor;st_1.Text = 'uo_4'
end event

on uo_4.destroy
call u_cst_inh409_l1::destroy
end on

type uo_5 from u_cst_inh409_l2 within w_inh409w02_l2_cvoinwin
string tag = "CVO L2, WL2"
integer x = 1225
integer y = 944
integer taborder = 100
boolean bringtotop = true
string is_cvo = "CVO L2, WL2"
end type

event constructor;call super::constructor;st_1.Text = 'uo_5'
end event

on uo_5.destroy
call u_cst_inh409_l2::destroy
end on

type uo_6 from u_cst_inh409_l3 within w_inh409w02_l2_cvoinwin
string tag = "CVO L3, WL2"
integer x = 2089
integer y = 944
integer taborder = 100
boolean bringtotop = true
string is_cvo = "CVO L3, WL2"
end type

on uo_6.destroy
call u_cst_inh409_l3::destroy
end on

event constructor;call super::constructor;st_1.Text = 'uo_6'
end event

type cb_3 from u_inh409_l3_cb within w_inh409w02_l2_cvoinwin
integer x = 2981
integer y = 944
integer width = 393
integer taborder = 100
boolean bringtotop = true
string text = "SL3, WL2_1"
string is_string = "SL3, WL2_1"
end type

type cb_4 from u_inh409_l3_cb within w_inh409w02_l2_cvoinwin
integer x = 3397
integer y = 944
integer width = 393
integer taborder = 100
boolean bringtotop = true
string text = "SL3, WL2_2"
string is_string = "SL3, WL2_2"
end type

event clicked;//Override
W_INH409W01_L1_CVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute w_inh409w02_l2_cvoinwin.cb_4 Script.", False)
end event


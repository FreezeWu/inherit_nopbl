$PBExportHeader$w_inh408w03_l3_svoinwin.srw
forward
global type w_inh408w03_l3_svoinwin from w_inh408w02_l2_svoinwin
end type
type cb_13 from u_inh408_l1_cb within w_inh408w03_l3_svoinwin
end type
type cb_14 from u_inh408_l1_cb within w_inh408w03_l3_svoinwin
end type
type cb_15 from u_inh408_l2_cb within w_inh408w03_l3_svoinwin
end type
type cb_16 from u_inh408_l2_cb within w_inh408w03_l3_svoinwin
end type
type cb_17 from u_inh408_l3_cb within w_inh408w03_l3_svoinwin
end type
type cb_18 from u_inh408_l3_cb within w_inh408w03_l3_svoinwin
end type
end forward

global type w_inh408w03_l3_svoinwin from w_inh408w02_l2_svoinwin
integer height = 2432
string title = "Call SVO for Window(Level 3)"
cb_13 cb_13
cb_14 cb_14
cb_15 cb_15
cb_16 cb_16
cb_17 cb_17
cb_18 cb_18
end type
global w_inh408w03_l3_svoinwin w_inh408w03_l3_svoinwin

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

lb_items.additem("INH408W03P001: Call SVO Instance Variables for Window(Level 3)")
lb_items.additem("INH408W03P002: Call SVO Property for Window(Level 3)")
lb_items.additem("INH408W03P003: Call SVO Event Variables for Window(Level 3)")
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
mle_describe.text += "2.Testing Purpose : Calling SVO for Window(Level 3)" // This must include
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
String ls_original[18]
Choose Case ls_item
	Case 'INH408W03P001'
		If ab_execute Then
			//Calling SVO Instance Variables
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('//Level 1', False)
			
			Wf_OutPut('User Object : //cb_1, Inherit from w_inh408w01_l2_svoinwin`cb_1', False)
			ls_original[1]= cb_1.is_String 
			Wf_Output('First Get  : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)
			cb_1.is_String = 'Set ' + cb_1.is_String
			Wf_Output('Second Get : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_2, Inherit from w_inh408w01_l2_svoinwin`cb_2', False)
			ls_original[2]= cb_2.is_String 
			Wf_Output('First Get  : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)
			cb_2.is_String = 'Set ' + cb_2.is_String
			Wf_Output('Second Get : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)	

			Wf_OutPut('User Object : //cb_3, Inherit from w_inh408w01_l2_svoinwin`cb_3', False)
			ls_original[3]= cb_3.is_String 
			Wf_Output('First Get  : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)
			cb_3.is_String = 'Set ' + cb_3.is_String
			Wf_Output('Second Get : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_4, Inherit from w_inh408w01_l2_svoinwin`cb_4', False)
			ls_original[4]= cb_4.is_String 
			Wf_Output('First Get  : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)
			cb_4.is_String = 'Set ' + cb_4.is_String
			Wf_Output('Second Get : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)	
	
			Wf_OutPut('User Object : //cb_5, Inherit from w_inh408w01_l2_svoinwin`cb_5', False)
			ls_original[5]= cb_5.is_String 
			Wf_Output('First Get  : cb_5.is_String = ~"' + cb_5.is_String + '~"', False)
			cb_5.is_String = 'Set ' + cb_5.is_String
			Wf_Output('Second Get : cb_5.is_String = ~"' + cb_5.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_6, Inherit from w_inh408w01_l2_svoinwin`cb_6', False)
			ls_original[6]= cb_6.is_String 
			Wf_Output('First Get  : cb_6.is_String = ~"' + cb_6.is_String + '~"', False)
			cb_6.is_String = 'Set ' + cb_6.is_String
			Wf_Output('Second Get : cb_6.is_String = ~"' + cb_6.is_String + '~"', False)	
			
			Wf_OutPut('//Level 2', False)	
			
			Wf_OutPut('User Object : //cb_7, Inherit from w_inh408w01_l2_svoinwin`cb_7', False)
			ls_original[7]= cb_7.is_String 
			Wf_Output('First Get  : cb_7.is_String = ~"' + cb_7.is_String + '~"', False)
			cb_7.is_String = 'Set ' + cb_7.is_String
			Wf_Output('Second Get : cb_7.is_String = ~"' + cb_7.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_8, Inherit from w_inh408w01_l2_svoinwin`cb_8', False)
			ls_original[8]= cb_8.is_String 
			Wf_Output('First Get  : cb_8.is_String = ~"' + cb_8.is_String + '~"', False)
			cb_8.is_String = 'Set ' + cb_8.is_String
			Wf_Output('Second Get : cb_8.is_String = ~"' + cb_8.is_String + '~"', False)	

			Wf_OutPut('User Object : //cb_9, Inherit from w_inh408w01_l2_svoinwin`cb_9', False)
			ls_original[9]= cb_9.is_String 
			Wf_Output('First Get  : cb_9.is_String = ~"' + cb_9.is_String + '~"', False)
			cb_9.is_String = 'Set ' + cb_9.is_String
			Wf_Output('Second Get : cb_9.is_String = ~"' + cb_9.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_10, Inherit from w_inh408w01_l2_svoinwin`cb_10', False)
			ls_original[10]= cb_10.is_String 
			Wf_Output('First Get  : cb_10.is_String = ~"' + cb_10.is_String + '~"', False)
			cb_10.is_String = 'Set ' + cb_10.is_String
			Wf_Output('Second Get : cb_10.is_String = ~"' + cb_10.is_String + '~"', False)	
	
			Wf_OutPut('User Object : //cb_11, Inherit from w_inh408w01_l2_svoinwin`cb_11', False)
			ls_original[11]= cb_11.is_String 
			Wf_Output('First Get  : cb_11.is_String = ~"' + cb_11.is_String + '~"', False)
			cb_11.is_String = 'Set ' + cb_11.is_String
			Wf_Output('Second Get : cb_11.is_String = ~"' + cb_11.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_12, Inherit from w_inh408w01_l2_svoinwin`cb_12', False)
			ls_original[12]= cb_12.is_String 
			Wf_Output('First Get  : cb_12.is_String = ~"' + cb_12.is_String + '~"', False)
			cb_12.is_String = 'Set ' + cb_12.is_String
			Wf_Output('Second Get : cb_12.is_String = ~"' + cb_12.is_String + '~"', False)	

			Wf_OutPut('//Level 3', False)	
			
			Wf_OutPut('User Object : //cb_13, Inherit from u_inh408_l1_cb', False)
			ls_original[13]= cb_13.is_String 
			Wf_Output('First Get  : cb_13.is_String = ~"' + cb_13.is_String + '~"', False)
			cb_13.is_String = 'Set ' + cb_13.is_String
			Wf_Output('Second Get : cb_13.is_String = ~"' + cb_13.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_14, Inherit from u_inh408_l1_cb', False)
			ls_original[14]= cb_14.is_String 
			Wf_Output('First Get  : cb_14.is_String = ~"' + cb_14.is_String + '~"', False)
			cb_14.is_String = 'Set ' + cb_14.is_String
			Wf_Output('Second Get : cb_14.is_String = ~"' + cb_14.is_String + '~"', False)	

			Wf_OutPut('User Object : //cb_15, Inherit from u_inh408_l2_cb', False)
			ls_original[15]= cb_15.is_String 
			Wf_Output('First Get  : cb_15.is_String = ~"' + cb_15.is_String + '~"', False)
			cb_15.is_String = 'Set ' + cb_15.is_String
			Wf_Output('Second Get : cb_15.is_String = ~"' + cb_15.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_16, Inherit from u_inh408_l2_cb', False)
			ls_original[16]= cb_16.is_String 
			Wf_Output('First Get  : cb_16.is_String = ~"' + cb_16.is_String + '~"', False)
			cb_16.is_String = 'Set ' + cb_16.is_String
			Wf_Output('Second Get : cb_16.is_String = ~"' + cb_16.is_String + '~"', False)	
	
			Wf_OutPut('User Object : //cb_17, Inherit from u_inh408_l3_cb', False)
			ls_original[17]= cb_17.is_String 
			Wf_Output('First Get  : cb_17.is_String = ~"' + cb_17.is_String + '~"', False)
			cb_17.is_String = 'Set ' + cb_17.is_String
			Wf_Output('Second Get : cb_17.is_String = ~"' + cb_17.is_String + '~"', False)	
			
			Wf_OutPut('User Object : //cb_18, Inherit from u_inh408_l3_cb', False)
			ls_original[18]= cb_18.is_String 
			Wf_Output('First Get  : cb_18.is_String = ~"' + cb_18.is_String + '~"', False)
			cb_18.is_String = 'Set ' + cb_18.is_String
			Wf_Output('Second Get : cb_18.is_String = ~"' + cb_18.is_String + '~"', False)	
		
			/////////////////////////////////////////////////////////////////////////
			//author:lujianhua
			//Add Code: Restore the original value
			///////////////
			 cb_1.is_String =ls_original[1]
			 cb_2.is_String =ls_original[2]
			 cb_3.is_String =ls_original[3]
			 cb_4.is_String =ls_original[4]
			 cb_5.is_String =ls_original[5]
			 cb_6.is_String =ls_original[6]
			 cb_7.is_String =ls_original[7]
			 cb_8.is_String =ls_original[8]
			 cb_9.is_String =ls_original[9]
			 cb_10.is_String =ls_original[10]
			 cb_11.is_String =ls_original[11]
			 cb_12.is_String =ls_original[12]
			 cb_13.is_String =ls_original[13]
			 cb_14.is_String =ls_original[14]
			 cb_15.is_String =ls_original[15]
			 cb_16.is_String =ls_original[16]
			 cb_17.is_String =ls_original[17]
			 cb_18.is_String =ls_original[18]
			///Array Length=18
			//////////////////////////////////////////////////////////////////////////
Else
			wf_scriptview("//Calling SVO Instance Variables                                                     ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                           ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                      ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('//Level 1', False)                                                        ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_1, Inherit from w_inh408w01_l2_svoinwin`cb_1', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)         ")
			wf_scriptview("cb_1.is_String = 'Set ' + cb_1.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_2, Inherit from w_inh408w01_l2_svoinwin`cb_2', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)         ")
			wf_scriptview("cb_2.is_String = 'Set ' + cb_2.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_3, Inherit from w_inh408w01_l2_svoinwin`cb_3', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)         ")
			wf_scriptview("cb_3.is_String = 'Set ' + cb_3.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_3.is_String = ~"' + cb_3.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_4, Inherit from w_inh408w01_l2_svoinwin`cb_4', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)         ")
			wf_scriptview("cb_4.is_String = 'Set ' + cb_4.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_4.is_String = ~"' + cb_4.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_5, Inherit from w_inh408w01_l2_svoinwin`cb_5', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_5.is_String = ~"' + cb_5.is_String + '~"', False)         ")
			wf_scriptview("cb_5.is_String = 'Set ' + cb_5.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_5.is_String = ~"' + cb_5.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_6, Inherit from w_inh408w01_l2_svoinwin`cb_6', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_6.is_String = ~"' + cb_6.is_String + '~"', False)         ")
			wf_scriptview("cb_6.is_String = 'Set ' + cb_6.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_6.is_String = ~"' + cb_6.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('//Level 2', False)                                                        ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_7, Inherit from w_inh408w01_l2_svoinwin`cb_7', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_7.is_String = ~"' + cb_7.is_String + '~"', False)         ")
			wf_scriptview("cb_7.is_String = 'Set ' + cb_7.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_7.is_String = ~"' + cb_7.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_8, Inherit from w_inh408w01_l2_svoinwin`cb_8', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_8.is_String = ~"' + cb_8.is_String + '~"', False)         ")
			wf_scriptview("cb_8.is_String = 'Set ' + cb_8.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_8.is_String = ~"' + cb_8.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_9, Inherit from w_inh408w01_l2_svoinwin`cb_9', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_9.is_String = ~"' + cb_9.is_String + '~"', False)         ")
			wf_scriptview("cb_9.is_String = 'Set ' + cb_9.is_String                                             ")
			wf_scriptview("Wf_Output('Second Get : cb_9.is_String = ~"' + cb_9.is_String + '~"', False)         ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_10, Inherit from w_inh408w01_l2_svoinwin`cb_10', False)")
			wf_scriptview("Wf_Output('First Get  : cb_10.is_String = ~"' + cb_10.is_String + '~"', False)       ")
			wf_scriptview("cb_10.is_String = 'Set ' + cb_10.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_10.is_String = ~"' + cb_10.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_11, Inherit from w_inh408w01_l2_svoinwin`cb_11', False)")
			wf_scriptview("Wf_Output('First Get  : cb_11.is_String = ~"' + cb_11.is_String + '~"', False)       ")
			wf_scriptview("cb_11.is_String = 'Set ' + cb_11.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_11.is_String = ~"' + cb_11.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_12, Inherit from w_inh408w01_l2_svoinwin`cb_12', False)")
			wf_scriptview("Wf_Output('First Get  : cb_12.is_String = ~"' + cb_12.is_String + '~"', False)       ")
			wf_scriptview("cb_12.is_String = 'Set ' + cb_12.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_12.is_String = ~"' + cb_12.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('//Level 3', False)                                                        ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_13, Inherit from u_inh408_l1_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_13.is_String = ~"' + cb_13.is_String + '~"', False)       ")
			wf_scriptview("cb_13.is_String = 'Set ' + cb_13.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_13.is_String = ~"' + cb_13.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_14, Inherit from u_inh408_l1_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_14.is_String = ~"' + cb_14.is_String + '~"', False)       ")
			wf_scriptview("cb_14.is_String = 'Set ' + cb_14.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_14.is_String = ~"' + cb_14.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_15, Inherit from u_inh408_l2_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_15.is_String = ~"' + cb_15.is_String + '~"', False)       ")
			wf_scriptview("cb_15.is_String = 'Set ' + cb_15.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_15.is_String = ~"' + cb_15.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_16, Inherit from u_inh408_l2_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_16.is_String = ~"' + cb_16.is_String + '~"', False)       ")
			wf_scriptview("cb_16.is_String = 'Set ' + cb_16.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_16.is_String = ~"' + cb_16.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_17, Inherit from u_inh408_l3_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_17.is_String = ~"' + cb_17.is_String + '~"', False)       ")
			wf_scriptview("cb_17.is_String = 'Set ' + cb_17.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_17.is_String = ~"' + cb_17.is_String + '~"', False)       ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_18, Inherit from u_inh408_l3_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_18.is_String = ~"' + cb_18.is_String + '~"', False)       ")
			wf_scriptview("cb_18.is_String = 'Set ' + cb_18.is_String                                           ")
			wf_scriptview("Wf_Output('Second Get : cb_18.is_String = ~"' + cb_18.is_String + '~"', False)       ")

		End If
	Case 'INH408W03P002'
		If ab_execute Then
			//Calling SVO Property
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('//Level 1', False)
			
			Wf_OutPut('User Object : //cb_1, Inherit from w_inh408w01_l2_svoinwin`cb_1', False)
			ls_original[1]= cb_1.Text 
			Wf_Output('First Get  : cb_1.Text = ~"' + cb_1.Text + '~"', False)
			cb_1.Text = 'Set ' + cb_1.Text
			Wf_Output('Second Get : cb_1.Text = ~"' + cb_1.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_2, Inherit from w_inh408w01_l2_svoinwin`cb_2', False)
			ls_original[2]= cb_2.Text 
			Wf_Output('First Get  : cb_2.Text = ~"' + cb_2.Text + '~"', False)
			cb_2.Text = 'Set ' + cb_2.Text
			Wf_Output('Second Get : cb_2.Text = ~"' + cb_2.Text + '~"', False)	

			Wf_OutPut('User Object : //cb_3, Inherit from w_inh408w01_l2_svoinwin`cb_3', False)
			ls_original[3]= cb_3.Text 
			Wf_Output('First Get  : cb_3.Text = ~"' + cb_3.Text + '~"', False)
			cb_3.Text = 'Set ' + cb_3.Text
			Wf_Output('Second Get : cb_3.Text = ~"' + cb_3.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_4, Inherit from w_inh408w01_l2_svoinwin`cb_4', False)
			ls_original[4]= cb_4.Text 
			Wf_Output('First Get  : cb_4.Text = ~"' + cb_4.Text + '~"', False)
			cb_4.Text = 'Set ' + cb_4.Text
			Wf_Output('Second Get : cb_4.Text = ~"' + cb_4.Text + '~"', False)	
	
			Wf_OutPut('User Object : //cb_5, Inherit from w_inh408w01_l2_svoinwin`cb_5', False)
			ls_original[5]= cb_5.Text 
			Wf_Output('First Get  : cb_5.Text = ~"' + cb_5.Text + '~"', False)
			cb_5.Text = 'Set ' + cb_5.Text
			Wf_Output('Second Get : cb_5.Text = ~"' + cb_5.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_6, Inherit from w_inh408w01_l2_svoinwin`cb_6', False)
			ls_original[6]= cb_6.Text 
			Wf_Output('First Get  : cb_6.Text = ~"' + cb_6.Text + '~"', False)
			cb_6.Text = 'Set ' + cb_6.Text
			Wf_Output('Second Get : cb_6.Text = ~"' + cb_6.Text + '~"', False)	
			
			Wf_OutPut('//Level 2', False)	
			
			Wf_OutPut('User Object : //cb_7, Inherit from w_inh408w01_l2_svoinwin`cb_7', False)
			ls_original[7]= cb_7.Text 
			Wf_Output('First Get  : cb_7.Text = ~"' + cb_7.Text + '~"', False)
			cb_7.Text = 'Set ' + cb_7.Text
			Wf_Output('Second Get : cb_7.Text = ~"' + cb_7.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_8, Inherit from w_inh408w01_l2_svoinwin`cb_8', False)
			ls_original[8]= cb_8.Text 
			Wf_Output('First Get  : cb_8.Text = ~"' + cb_8.Text + '~"', False)
			cb_8.Text = 'Set ' + cb_8.Text
			Wf_Output('Second Get : cb_8.Text = ~"' + cb_8.Text + '~"', False)	

			Wf_OutPut('User Object : //cb_9, Inherit from w_inh408w01_l2_svoinwin`cb_9', False)
			ls_original[9]= cb_9.Text 
			Wf_Output('First Get  : cb_9.Text = ~"' + cb_9.Text + '~"', False)
			cb_9.Text = 'Set ' + cb_9.Text
			Wf_Output('Second Get : cb_9.Text = ~"' + cb_9.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_10, Inherit from w_inh408w01_l2_svoinwin`cb_10', False)
			ls_original[10]= cb_10.Text 
			Wf_Output('First Get  : cb_10.Text = ~"' + cb_10.Text + '~"', False)
			cb_10.Text = 'Set ' + cb_10.Text
			Wf_Output('Second Get : cb_10.Text = ~"' + cb_10.Text + '~"', False)	
	
			Wf_OutPut('User Object : //cb_11, Inherit from w_inh408w01_l2_svoinwin`cb_11', False)
			ls_original[11]= cb_11.Text 
			Wf_Output('First Get  : cb_11.Text = ~"' + cb_11.Text + '~"', False)
			cb_11.Text = 'Set ' + cb_11.Text
			Wf_Output('Second Get : cb_11.Text = ~"' + cb_11.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_12, Inherit from w_inh408w01_l2_svoinwin`cb_12', False)
			ls_original[12]= cb_12.Text 
			Wf_Output('First Get  : cb_12.Text = ~"' + cb_12.Text + '~"', False)
			cb_12.Text = 'Set ' + cb_12.Text
			Wf_Output('Second Get : cb_12.Text = ~"' + cb_12.Text + '~"', False)	
			
			Wf_OutPut('//Level 3', False)	

			Wf_OutPut('User Object : //cb_13, Inherit from u_inh408_l1_cb', False)
			ls_original[13]= cb_13.Text 
			Wf_Output('First Get  : cb_13.Text = ~"' + cb_13.Text + '~"', False)
			cb_13.Text = 'Set ' + cb_13.Text
			Wf_Output('Second Get : cb_13.Text = ~"' + cb_13.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_14, Inherit from u_inh408_l1_cb', False)
			ls_original[14]= cb_14.Text 
			Wf_Output('First Get  : cb_14.Text = ~"' + cb_14.Text + '~"', False)
			cb_14.Text = 'Set ' + cb_14.Text
			Wf_Output('Second Get : cb_14.Text = ~"' + cb_14.Text + '~"', False)	

			Wf_OutPut('User Object : //cb_15, Inherit from u_inh408_l2_cb', False)
			ls_original[15]= cb_15.Text 
			Wf_Output('First Get  : cb_15.Text = ~"' + cb_15.Text + '~"', False)
			cb_15.Text = 'Set ' + cb_15.Text
			Wf_Output('Second Get : cb_15.Text = ~"' + cb_15.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_16, Inherit from u_inh408_l2_cb', False)
			ls_original[16]= cb_16.Text 
			Wf_Output('First Get  : cb_16.Text = ~"' + cb_16.Text + '~"', False)
			cb_16.Text = 'Set ' + cb_16.Text
			Wf_Output('Second Get : cb_16.Text = ~"' + cb_16.Text + '~"', False)	
	
			Wf_OutPut('User Object : //cb_17, Inherit from u_inh408_l3_cb', False)
			ls_original[17]= cb_17.Text 
			Wf_Output('First Get  : cb_17.Text = ~"' + cb_17.Text + '~"', False)
			cb_17.Text = 'Set ' + cb_17.Text
			Wf_Output('Second Get : cb_17.Text = ~"' + cb_17.Text + '~"', False)	
			
			Wf_OutPut('User Object : //cb_18, Inherit from u_inh408_l3_cb', False)
			ls_original[18]= cb_18.Text 
			Wf_Output('First Get  : cb_18.Text = ~"' + cb_18.Text + '~"', False)
			cb_18.Text = 'Set ' + cb_18.Text
			Wf_Output('Second Get : cb_18.Text = ~"' + cb_18.Text + '~"', False)	
		
			/////////////////////////////////////////////////////////////////////////
			//author:lujianhua
			//Add Code: Restore the original value
			///////////////
			 cb_1.Text =ls_original[1]
			 cb_2.Text =ls_original[2]
			 cb_3.Text =ls_original[3]
			 cb_4.Text =ls_original[4]
			 cb_5.Text =ls_original[5]
			 cb_6.Text =ls_original[6]
			 cb_7.Text =ls_original[7]
			 cb_8.Text =ls_original[8]
			 cb_9.Text =ls_original[9]
			 cb_10.Text =ls_original[10]
			 cb_11.Text =ls_original[11]
			 cb_12.Text =ls_original[12]
			 cb_13.Text =ls_original[13]
			 cb_14.Text =ls_original[14]
			 cb_15.Text =ls_original[15]
			 cb_16.Text =ls_original[16]
			 cb_17.Text =ls_original[17]
			 cb_18.Text =ls_original[18]
			///Array Length=18
			//////////////////////////////////////////////////////////////////////////
	
		Else
			wf_scriptview("//Calling SVO Property                                                               ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                           ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                      ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('//Level 1', False)                                                        ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_1, Inherit from w_inh408w01_l2_svoinwin`cb_1', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_1.Text = ~"' + cb_1.Text + '~"', False)                   ")
			wf_scriptview("cb_1.Text = 'Set ' + cb_1.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_1.Text = ~"' + cb_1.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_2, Inherit from w_inh408w01_l2_svoinwin`cb_2', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_2.Text = ~"' + cb_2.Text + '~"', False)                   ")
			wf_scriptview("cb_2.Text = 'Set ' + cb_2.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_2.Text = ~"' + cb_2.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_3, Inherit from w_inh408w01_l2_svoinwin`cb_3', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_3.Text = ~"' + cb_3.Text + '~"', False)                   ")
			wf_scriptview("cb_3.Text = 'Set ' + cb_3.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_3.Text = ~"' + cb_3.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_4, Inherit from w_inh408w01_l2_svoinwin`cb_4', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_4.Text = ~"' + cb_4.Text + '~"', False)                   ")
			wf_scriptview("cb_4.Text = 'Set ' + cb_4.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_4.Text = ~"' + cb_4.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_5, Inherit from w_inh408w01_l2_svoinwin`cb_5', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_5.Text = ~"' + cb_5.Text + '~"', False)                   ")
			wf_scriptview("cb_5.Text = 'Set ' + cb_5.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_5.Text = ~"' + cb_5.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_6, Inherit from w_inh408w01_l2_svoinwin`cb_6', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_6.Text = ~"' + cb_6.Text + '~"', False)                   ")
			wf_scriptview("cb_6.Text = 'Set ' + cb_6.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_6.Text = ~"' + cb_6.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('//Level 2', False)                                                        ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_7, Inherit from w_inh408w01_l2_svoinwin`cb_7', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_7.Text = ~"' + cb_7.Text + '~"', False)                   ")
			wf_scriptview("cb_7.Text = 'Set ' + cb_7.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_7.Text = ~"' + cb_7.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_8, Inherit from w_inh408w01_l2_svoinwin`cb_8', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_8.Text = ~"' + cb_8.Text + '~"', False)                   ")
			wf_scriptview("cb_8.Text = 'Set ' + cb_8.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_8.Text = ~"' + cb_8.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_9, Inherit from w_inh408w01_l2_svoinwin`cb_9', False)  ")
			wf_scriptview("Wf_Output('First Get  : cb_9.Text = ~"' + cb_9.Text + '~"', False)                   ")
			wf_scriptview("cb_9.Text = 'Set ' + cb_9.Text                                                       ")
			wf_scriptview("Wf_Output('Second Get : cb_9.Text = ~"' + cb_9.Text + '~"', False)                   ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_10, Inherit from w_inh408w01_l2_svoinwin`cb_10', False)")
			wf_scriptview("Wf_Output('First Get  : cb_10.Text = ~"' + cb_10.Text + '~"', False)                 ")
			wf_scriptview("cb_10.Text = 'Set ' + cb_10.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_10.Text = ~"' + cb_10.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_11, Inherit from w_inh408w01_l2_svoinwin`cb_11', False)")
			wf_scriptview("Wf_Output('First Get  : cb_11.Text = ~"' + cb_11.Text + '~"', False)                 ")
			wf_scriptview("cb_11.Text = 'Set ' + cb_11.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_11.Text = ~"' + cb_11.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_12, Inherit from w_inh408w01_l2_svoinwin`cb_12', False)")
			wf_scriptview("Wf_Output('First Get  : cb_12.Text = ~"' + cb_12.Text + '~"', False)                 ")
			wf_scriptview("cb_12.Text = 'Set ' + cb_12.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_12.Text = ~"' + cb_12.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('//Level 3', False)                                                        ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_13, Inherit from u_inh408_l1_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_13.Text = ~"' + cb_13.Text + '~"', False)                 ")
			wf_scriptview("cb_13.Text = 'Set ' + cb_13.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_13.Text = ~"' + cb_13.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_14, Inherit from u_inh408_l1_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_14.Text = ~"' + cb_14.Text + '~"', False)                 ")
			wf_scriptview("cb_14.Text = 'Set ' + cb_14.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_14.Text = ~"' + cb_14.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_15, Inherit from u_inh408_l2_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_15.Text = ~"' + cb_15.Text + '~"', False)                 ")
			wf_scriptview("cb_15.Text = 'Set ' + cb_15.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_15.Text = ~"' + cb_15.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_16, Inherit from u_inh408_l2_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_16.Text = ~"' + cb_16.Text + '~"', False)                 ")
			wf_scriptview("cb_16.Text = 'Set ' + cb_16.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_16.Text = ~"' + cb_16.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_17, Inherit from u_inh408_l3_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_17.Text = ~"' + cb_17.Text + '~"', False)                 ")
			wf_scriptview("cb_17.Text = 'Set ' + cb_17.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_17.Text = ~"' + cb_17.Text + '~"', False)                 ")
			wf_scriptview("                                                                                     ")
			wf_scriptview("Wf_OutPut('User Object : //cb_18, Inherit from u_inh408_l3_cb', False)               ")
			wf_scriptview("Wf_Output('First Get  : cb_18.Text = ~"' + cb_18.Text + '~"', False)                 ")
			wf_scriptview("cb_18.Text = 'Set ' + cb_18.Text                                                     ")
			wf_scriptview("Wf_Output('Second Get : cb_18.Text = ~"' + cb_18.Text + '~"', False)                 ")

		End If
	Case 'INH408W03P003'
		If ab_execute Then
			//Calling SVO Event
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('//Level 1', False)
			
			Wf_OutPut('SVO Object : cb_1; Inherit from w_inh408w01_l2_svoinwin`cb_1, Extend', False)
			cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_2; Inherit from w_inh408w01_l2_svoinwin`cb_2, Override', False)
			cb_2.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_3; Inherit from w_inh408w01_l2_svoinwin`cb_3, NO Code', False)
			cb_3.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_4; Inherit from w_inh408w01_l2_svoinwin`cb_4, Extend', False)
			cb_4.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_5; Inherit from w_inh408w01_l2_svoinwin`cb_5, Override', False)
			cb_5.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_6; Inherit from w_inh408w01_l2_svoinwin`cb_6, NO Code', False)
			cb_6.Event Clicked()
						
			Wf_OutPut('//Level 2', False)
			
			Wf_OutPut('SVO Object : cb_7; Inherit from w_inh408w01_l2_svoinwin`cb_7, Extend', False)
			cb_7.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_8; Inherit from w_inh408w01_l2_svoinwin`cb_8, Override', False)
			cb_8.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_9; Inherit from w_inh408w01_l2_svoinwin`cb_9, NO Code', False)
			cb_9.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_10; Inherit from w_inh408w01_l2_svoinwin`cb_10, Extend', False)
			cb_10.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_11; Inherit from w_inh408w01_l2_svoinwin`cb_11, Override', False)
			cb_11.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_12; Inherit from w_inh408w01_l2_svoinwin`cb_12, NO Code', False)
			cb_12.Event Clicked()
			
			Wf_OutPut('//Level 3', False)
			
			Wf_OutPut('SVO Object : cb_13; Inherit from u_inh408_l1_cb, Extend', False)
			cb_13.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_14; Inherit from u_inh408_l1_cb, Override', False)
			cb_14.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_15; Inherit from u_inh408_l2_cb, NO Code', False)
			cb_15.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_16; Inherit from u_inh408_l2_cb, Extend', False)
			cb_16.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_17; Inherit from u_inh408_l3_cb, Override', False)
			cb_17.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_18; Inherit from u_inh408_l3_cb, NO Code', False)
			cb_18.Event Clicked()
			
		Else
			wf_scriptview("//Calling SVO Event                                                                         ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                  ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                             ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 1', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_1; Inherit from w_inh408w01_l2_svoinwin`cb_1, Extend', False)    ")
			wf_scriptview("cb_1.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_2; Inherit from w_inh408w01_l2_svoinwin`cb_2, Override', False)  ")
			wf_scriptview("cb_2.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_3; Inherit from w_inh408w01_l2_svoinwin`cb_3, NO Code', False)   ")
			wf_scriptview("cb_3.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_4; Inherit from w_inh408w01_l2_svoinwin`cb_4, Extend', False)    ")
			wf_scriptview("cb_4.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_5; Inherit from w_inh408w01_l2_svoinwin`cb_5, Override', False)  ")
			wf_scriptview("cb_5.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_6; Inherit from w_inh408w01_l2_svoinwin`cb_6, NO Code', False)   ")
			wf_scriptview("cb_6.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 2', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_7; Inherit from w_inh408w01_l2_svoinwin`cb_7, Extend', False)    ")
			wf_scriptview("cb_7.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_8; Inherit from w_inh408w01_l2_svoinwin`cb_8, Override', False)  ")
			wf_scriptview("cb_8.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_9; Inherit from w_inh408w01_l2_svoinwin`cb_9, NO Code', False)   ")
			wf_scriptview("cb_9.Event Clicked()                                                                        ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_10; Inherit from w_inh408w01_l2_svoinwin`cb_10, Extend', False)  ")
			wf_scriptview("cb_10.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_11; Inherit from w_inh408w01_l2_svoinwin`cb_11, Override', False)")
			wf_scriptview("cb_11.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_12; Inherit from w_inh408w01_l2_svoinwin`cb_12, NO Code', False) ")
			wf_scriptview("cb_12.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('//Level 3', False)                                                               ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_13; Inherit from u_inh408_l1_cb, Extend', False)                 ")
			wf_scriptview("cb_13.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_14; Inherit from u_inh408_l1_cb, Override', False)               ")
			wf_scriptview("cb_14.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_15; Inherit from u_inh408_l2_cb, NO Code', False)                ")
			wf_scriptview("cb_15.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_16; Inherit from u_inh408_l2_cb, Extend', False)                 ")
			wf_scriptview("cb_16.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_17; Inherit from u_inh408_l3_cb, Override', False)               ")
			wf_scriptview("cb_17.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                            ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_18; Inherit from u_inh408_l3_cb, NO Code', False)                ")
			wf_scriptview("cb_18.Event Clicked()                                                                       ")

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

on w_inh408w03_l3_svoinwin.create
int iCurrent
call super::create
this.cb_13=create cb_13
this.cb_14=create cb_14
this.cb_15=create cb_15
this.cb_16=create cb_16
this.cb_17=create cb_17
this.cb_18=create cb_18
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_13
this.Control[iCurrent+2]=this.cb_14
this.Control[iCurrent+3]=this.cb_15
this.Control[iCurrent+4]=this.cb_16
this.Control[iCurrent+5]=this.cb_17
this.Control[iCurrent+6]=this.cb_18
end on

on w_inh408w03_l3_svoinwin.destroy
call super::destroy
destroy(this.cb_13)
destroy(this.cb_14)
destroy(this.cb_15)
destroy(this.cb_16)
destroy(this.cb_17)
destroy(this.cb_18)
end on

type cb_6 from w_inh408w02_l2_svoinwin`cb_6 within w_inh408w03_l3_svoinwin
string text = "SL3, WL123_2"
string is_string = "SL3, WL123_2"
end type

type cb_5 from w_inh408w02_l2_svoinwin`cb_5 within w_inh408w03_l3_svoinwin
string text = "SL3, WL123_1"
string is_string = "SL3, WL123_1"
end type

event cb_5::clicked;//Override
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_5 Script.", False)
end event

type cb_4 from w_inh408w02_l2_svoinwin`cb_4 within w_inh408w03_l3_svoinwin
string text = "SL2, WL123_2"
string is_string = "SL2, WL123_2"
end type

event cb_4::clicked;call super::clicked;//Extend
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_4 Script.", False)
end event

type cb_3 from w_inh408w02_l2_svoinwin`cb_3 within w_inh408w03_l3_svoinwin
string text = "SL2, WL123_1"
string is_string = "SL2, WL123_1"
end type

type cb_2 from w_inh408w02_l2_svoinwin`cb_2 within w_inh408w03_l3_svoinwin
string text = "SL1, WL123_2"
string is_string = "SL1, WL123_2"
end type

event cb_2::clicked;//Override
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_2 Script.", False)
end event

type cb_1 from w_inh408w02_l2_svoinwin`cb_1 within w_inh408w03_l3_svoinwin
string text = "SL1, WL123_1"
string is_string = "SL1, WL123_1"
end type

event cb_1::clicked;call super::clicked;//Extend
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_1 Script.", False)
end event

type cb_execute from w_inh408w02_l2_svoinwin`cb_execute within w_inh408w03_l3_svoinwin
end type

type lb_items from w_inh408w02_l2_svoinwin`lb_items within w_inh408w03_l3_svoinwin
end type

type cb_clear from w_inh408w02_l2_svoinwin`cb_clear within w_inh408w03_l3_svoinwin
end type

type cb_close from w_inh408w02_l2_svoinwin`cb_close within w_inh408w03_l3_svoinwin
end type

type mle_output from w_inh408w02_l2_svoinwin`mle_output within w_inh408w03_l3_svoinwin
end type

type mle_view from w_inh408w02_l2_svoinwin`mle_view within w_inh408w03_l3_svoinwin
end type

type gb_3 from w_inh408w02_l2_svoinwin`gb_3 within w_inh408w03_l3_svoinwin
end type

type gb_4 from w_inh408w02_l2_svoinwin`gb_4 within w_inh408w03_l3_svoinwin
end type

type gb_5 from w_inh408w02_l2_svoinwin`gb_5 within w_inh408w03_l3_svoinwin
end type

type mle_describe from w_inh408w02_l2_svoinwin`mle_describe within w_inh408w03_l3_svoinwin
end type

type gb_1 from w_inh408w02_l2_svoinwin`gb_1 within w_inh408w03_l3_svoinwin
end type

type gb_2 from w_inh408w02_l2_svoinwin`gb_2 within w_inh408w03_l3_svoinwin
end type

type cb_cotviewresult from w_inh408w02_l2_svoinwin`cb_cotviewresult within w_inh408w03_l3_svoinwin
end type

type cb_cotautorun from w_inh408w02_l2_svoinwin`cb_cotautorun within w_inh408w03_l3_svoinwin
end type

type cb_7 from w_inh408w02_l2_svoinwin`cb_7 within w_inh408w03_l3_svoinwin
string text = "SL1, WL23_1"
string is_string = "SL1, WL23_1"
end type

event cb_7::clicked;call super::clicked;//Extend
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_7 Script.", False)
end event

type cb_8 from w_inh408w02_l2_svoinwin`cb_8 within w_inh408w03_l3_svoinwin
string text = "SL1, WL23_2"
string is_string = "SL1, WL23_2"
end type

event cb_8::clicked;//Override
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_8 Script.", False)
end event

type cb_9 from w_inh408w02_l2_svoinwin`cb_9 within w_inh408w03_l3_svoinwin
string text = "SL2, WL23_1"
string is_string = "SL2, WL23_1"
end type

type cb_10 from w_inh408w02_l2_svoinwin`cb_10 within w_inh408w03_l3_svoinwin
string text = "SL2, WL23_2"
string is_string = "SL2, WL23_2"
end type

event cb_10::clicked;call super::clicked;//Extend
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_10 Script.", False)
end event

type cb_11 from w_inh408w02_l2_svoinwin`cb_11 within w_inh408w03_l3_svoinwin
string text = "SL3, WL23_1"
string is_string = "SL3, WL23_1"
end type

event cb_11::clicked;//Override
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_11 Script.", False)
end event

type cb_12 from w_inh408w02_l2_svoinwin`cb_12 within w_inh408w03_l3_svoinwin
string text = "SL3, WL23_2"
string is_string = "SL3, WL23_2"
end type

type cb_13 from u_inh408_l1_cb within w_inh408w03_l3_svoinwin
integer x = 2066
integer y = 504
integer width = 379
integer taborder = 80
boolean bringtotop = true
string text = "SL1, WL3_1"
string is_string = "SL1, WL3_1"
end type

event clicked;call super::clicked;//Extend
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_13 Script.", False)
end event

type cb_14 from u_inh408_l1_cb within w_inh408w03_l3_svoinwin
integer x = 2066
integer y = 596
integer width = 379
integer taborder = 90
boolean bringtotop = true
string text = "SL1, WL3_2"
string is_string = "SL1, WL3_2"
end type

event clicked;//Override
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_14 Script.", False)
end event

type cb_15 from u_inh408_l2_cb within w_inh408w03_l3_svoinwin
integer x = 2702
integer y = 504
integer width = 379
integer taborder = 90
boolean bringtotop = true
string text = "SL2, WL3_1"
string is_string = "SL2, WL3_1"
end type

type cb_16 from u_inh408_l2_cb within w_inh408w03_l3_svoinwin
integer x = 2702
integer y = 596
integer width = 379
integer taborder = 100
boolean bringtotop = true
string text = "SL2, WL3_2"
string is_string = "SL2, WL3_2"
end type

event clicked;call super::clicked;//Extend
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_16 Script.", False)
end event

type cb_17 from u_inh408_l3_cb within w_inh408w03_l3_svoinwin
integer x = 3337
integer y = 504
integer width = 379
integer taborder = 90
boolean bringtotop = true
string text = "SL3, WL3_1"
string is_string = "SL3, WL3_1"
end type

event clicked;//Override
Wf_Output("Information : Execute w_inh408_L3_svoinwin.cb_17 Script.", False)
end event

type cb_18 from u_inh408_l3_cb within w_inh408w03_l3_svoinwin
integer x = 3337
integer y = 596
integer width = 379
integer taborder = 100
boolean bringtotop = true
string text = "SL3, WL3_2"
string is_string = "SL3, WL3_2"
end type


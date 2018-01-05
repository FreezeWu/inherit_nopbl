$PBExportHeader$w_inh409w01_l1_cvoinwin.srw
forward
global type w_inh409w01_l1_cvoinwin from window
end type
type cb_2 from u_inh409_l3_cb within w_inh409w01_l1_cvoinwin
end type
type cb_1 from u_inh409_l3_cb within w_inh409w01_l1_cvoinwin
end type
type uo_3 from u_cst_inh409_l3 within w_inh409w01_l1_cvoinwin
end type
type uo_2 from u_cst_inh409_l2 within w_inh409w01_l1_cvoinwin
end type
type uo_1 from u_cst_inh409_l1 within w_inh409w01_l1_cvoinwin
end type
type cb_execute from commandbutton within w_inh409w01_l1_cvoinwin
end type
type lb_items from listbox within w_inh409w01_l1_cvoinwin
end type
type cb_clear from commandbutton within w_inh409w01_l1_cvoinwin
end type
type cb_close from commandbutton within w_inh409w01_l1_cvoinwin
end type
type mle_output from multilineedit within w_inh409w01_l1_cvoinwin
end type
type mle_view from multilineedit within w_inh409w01_l1_cvoinwin
end type
type gb_5 from groupbox within w_inh409w01_l1_cvoinwin
end type
type mle_describe from multilineedit within w_inh409w01_l1_cvoinwin
end type
type gb_4 from groupbox within w_inh409w01_l1_cvoinwin
end type
type gb_1 from groupbox within w_inh409w01_l1_cvoinwin
end type
type cb_cotviewresult from commandbutton within w_inh409w01_l1_cvoinwin
end type
type cb_cotautorun from commandbutton within w_inh409w01_l1_cvoinwin
end type
end forward

global type w_inh409w01_l1_cvoinwin from window
integer width = 3991
integer height = 2488
boolean titlebar = true
string title = "Call CVO for Window(Level 1)"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_runall ( )
cb_2 cb_2
cb_1 cb_1
uo_3 uo_3
uo_2 uo_2
uo_1 uo_1
cb_execute cb_execute
lb_items lb_items
cb_clear cb_clear
cb_close cb_close
mle_output mle_output
mle_view mle_view
gb_5 gb_5
mle_describe mle_describe
gb_4 gb_4
gb_1 gb_1
cb_cotviewresult cb_cotviewresult
cb_cotautorun cb_cotautorun
end type
global w_inh409w01_l1_cvoinwin w_inh409w01_l1_cvoinwin

type variables
//OutPut Index 
Integer ii_index = 0

//BEGIN_WININSVAR
long il_WindowID = -1
DataStore ids_TestPoint
DataStore ids_ResultDetailTemp
//END_WININSVAR
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_scriptview (string as_script)
public subroutine wf_output (string as_mess, boolean ab_clear)
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
public subroutine wf_init_items ()
public function integer wf_createresultset ()
public function integer wf_savetempresult (long al_row)
end prototypes

event ue_runall ( );//start:event ue_runall ( )
integer i

for i = 1 to lb_items.TotalItems()
	 wf_scriptExe(i,false)
	 wf_ScriptExe(i, true)	
next
//end:event ue_runall ( )
end event

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
mle_describe.text += "2.Testing Purpose : Calling CVO for Window(Level 1)" // This must include
mle_describe.text += "~r~n"
mle_describe.text += "3.Operation Step : ~r~n" // Optional
mle_describe.text += ""
mle_describe.text += "4.Object Declare : ~r~n" // Optional
Return
end subroutine

public subroutine wf_scriptview (string as_script);//You must Define this Function for view and Execute Script

//////////////////////////////////////////////////////////////////////
//Function: wf_scriptview  View a line Script
//Argument: String  as_mess a line Script
//Output:   none
//Designer:
//Date:
/////////////////////////////////////////////////////////////////////

mle_view.Text += as_script + "~r~n"

Return
end subroutine

public subroutine wf_output (string as_mess, boolean ab_clear);////////////////////////////////////////////////////////////////
//Function : Wf_OutPut
//Argument : String   as_mess;   The Message you will output 
//				 Boolean  ab_clear;  Clear Flag
//Output   : None
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

If ab_clear Then
	mle_output.Text = ""
	ii_index = 0
End IF	

ii_index ++
mle_output.Text += String(ii_index,'00') + "." + as_mess + "~r~n"
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
String ls_original[11]
Choose Case ls_item
	Case 'INH409W01P001'
		If ab_execute Then
			//Calling SVO Instance Variables
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('CVO Object : //uo_1, Inherit from u_cst_inh409_l1', False)
			ls_original[1]= uo_1.is_CVO 
			Wf_Output('First Get  : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)
			uo_1.is_CVO = 'Set ' + uo_1.is_CVO
			Wf_Output('Second Get : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)
			ls_original[2]= uo_1.cb_1.is_String 
			Wf_Output('First Get  : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)
			uo_1.cb_1.is_String = 'Set ' + uo_1.cb_1.is_String
			Wf_Output('Second Get : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)
			ls_original[3]= uo_1.cb_2.is_String 
			Wf_Output('First Get  : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)
			uo_1.cb_2.is_String = 'Set ' + uo_1.cb_2.is_String
			Wf_Output('Second Get : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)	

			Wf_OutPut('CVO Object : //uo_2, Inherit from u_cst_inh409_l2', False)
			ls_original[4]= uo_2.is_CVO 
			Wf_Output('First Get  : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)
			uo_2.is_CVO = 'Set ' + uo_2.is_CVO
			Wf_Output('Second Get : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)
			ls_original[5]= uo_2.cb_1.is_String 
			Wf_Output('First Get  : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)
			uo_2.cb_1.is_String = 'Set ' + uo_2.cb_1.is_String
			Wf_Output('Second Get : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)
			ls_original[6]= uo_2.cb_2.is_String 
			Wf_Output('First Get  : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)
			uo_2.cb_2.is_String = 'Set ' + uo_2.cb_2.is_String
			Wf_Output('Second Get : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)
			
			Wf_OutPut('CVO Object : //uo_3, Inherit from u_cst_inh409_l3', False)
			ls_original[7]= uo_3.is_CVO 
			Wf_Output('First Get  : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)
			uo_3.is_CVO = 'Set ' + uo_3.is_CVO
			Wf_Output('Second Get : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)
			ls_original[8]= uo_3.cb_1.is_String 
			Wf_Output('First Get  : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)
			uo_3.cb_1.is_String = 'Set ' + uo_3.cb_1.is_String
			Wf_Output('Second Get : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)
			ls_original[9]= uo_3.cb_2.is_String 
			Wf_Output('First Get  : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)
			uo_3.cb_2.is_String = 'Set ' + uo_3.cb_2.is_String
			Wf_Output('Second Get : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)	
			
			Wf_OutPut('SVO Object : //cb_1, Inherit from u_inh409_l3_cb', False)
			ls_original[10]= cb_1.is_String 
			Wf_Output('First Get  : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)
			cb_1.is_String = 'Set ' + cb_1.is_String
			Wf_Output('Second Get : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_2, Inherit from u_inh409_l3_cb', False)
			ls_original[11]= cb_2.is_String 
			Wf_Output('First Get  : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)
			cb_2.is_String = 'Set ' + cb_2.is_String
			Wf_Output('Second Get : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)
		
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
			///Array Length=11
			//////////////////////////////////////////////////////////////////////////
Else
			wf_scriptview("//Calling SVO Instance Variables                                                           ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                 ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                            ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_1, Inherit from u_cst_inh409_l1', False)                      ")
			wf_scriptview("Wf_Output('First Get  : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)                     ")
			wf_scriptview("uo_1.is_CVO = 'Set ' + uo_1.is_CVO                                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_1.is_CVO = ~"' + uo_1.is_CVO + '~"', False)                     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)     ")
			wf_scriptview("uo_1.cb_1.is_String = 'Set ' + uo_1.cb_1.is_String                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_1.is_String = ~"' + uo_1.cb_1.is_String + '~"', False)     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)     ")
			wf_scriptview("uo_1.cb_2.is_String = 'Set ' + uo_1.cb_2.is_String                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_2.is_String = ~"' + uo_1.cb_2.is_String + '~"', False)     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_2, Inherit from u_cst_inh409_l2', False)                      ")
			wf_scriptview("Wf_Output('First Get  : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)                     ")
			wf_scriptview("uo_2.is_CVO = 'Set ' + uo_2.is_CVO                                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_2.is_CVO = ~"' + uo_2.is_CVO + '~"', False)                     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)     ")
			wf_scriptview("uo_2.cb_1.is_String = 'Set ' + uo_2.cb_1.is_String                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_1.is_String = ~"' + uo_2.cb_1.is_String + '~"', False)     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)     ")
			wf_scriptview("uo_2.cb_2.is_String = 'Set ' + uo_2.cb_2.is_String                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_2.is_String = ~"' + uo_2.cb_2.is_String + '~"', False)     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_3, Inherit from u_cst_inh409_l3', False)                      ")
			wf_scriptview("Wf_Output('First Get  : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)                     ")
			wf_scriptview("uo_3.is_CVO = 'Set ' + uo_3.is_CVO                                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_3.is_CVO = ~"' + uo_3.is_CVO + '~"', False)                     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)     ")
			wf_scriptview("uo_3.cb_1.is_String = 'Set ' + uo_3.cb_1.is_String                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_1.is_String = ~"' + uo_3.cb_1.is_String + '~"', False)     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)     ")
			wf_scriptview("uo_3.cb_2.is_String = 'Set ' + uo_3.cb_2.is_String                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_2.is_String = ~"' + uo_3.cb_2.is_String + '~"', False)     ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_1, Inherit from u_inh409_l3_cb', False)                       ")
			wf_scriptview("Wf_Output('First Get  : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)               ")
			wf_scriptview("cb_1.is_String = 'Set ' + cb_1.is_String                                                   ")
			wf_scriptview("Wf_Output('Second Get : cb_1.is_String = ~"' + cb_1.is_String + '~"', False)               ")
			wf_scriptview("                                                                                           ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_2, Inherit from u_inh409_l3_cb', False)                       ")
			wf_scriptview("Wf_Output('First Get  : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)               ")
			wf_scriptview("cb_2.is_String = 'Set ' + cb_2.is_String                                                   ")
			wf_scriptview("Wf_Output('Second Get : cb_2.is_String = ~"' + cb_2.is_String + '~"', False)               ")
			
		End If
		
	CASE 'INH409W01P002'
		If ab_execute Then
			//Calling SVO Instance Variables
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('CVO Object : //uo_1, Inherit from u_cst_inh409_l1', False)
			ls_original[1]= uo_1.Tag 
			Wf_Output('First Get  : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)
			uo_1.Tag = 'Set ' + uo_1.Tag
			Wf_Output('Second Get : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)
			ls_original[2]= uo_1.cb_1.Text 
			Wf_Output('First Get  : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)
			uo_1.cb_1.Text = 'Set ' + uo_1.cb_1.Text
			Wf_Output('Second Get : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)
			ls_original[3]= uo_1.cb_2.Text 
			Wf_Output('First Get  : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)
			uo_1.cb_2.Text = 'Set ' + uo_1.cb_2.Text
			Wf_Output('Second Get : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)	

			Wf_OutPut('CVO Object : //uo_2, Inherit from u_cst_inh409_l2', False)
			ls_original[4]= uo_2.Tag 
			Wf_Output('First Get  : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)
			uo_2.Tag = 'Set ' + uo_2.Tag
			Wf_Output('Second Get : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)
			ls_original[5]= uo_2.cb_1.Text 
			Wf_Output('First Get  : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)
			uo_2.cb_1.Text = 'Set ' + uo_2.cb_1.Text
			Wf_Output('Second Get : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)
			ls_original[6]= uo_2.cb_2.Text 
			Wf_Output('First Get  : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)
			uo_2.cb_2.Text = 'Set ' + uo_2.cb_2.Text
			Wf_Output('Second Get : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)
			
			Wf_OutPut('CVO Object : //uo_3, Inherit from u_cst_inh409_l3', False)
			ls_original[7]= uo_3.Tag 
			Wf_Output('First Get  : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)
			uo_3.Tag = 'Set ' + uo_3.Tag
			Wf_Output('Second Get : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)
			ls_original[8]= uo_3.cb_1.Text 
			Wf_Output('First Get  : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)
			uo_3.cb_1.Text = 'Set ' + uo_3.cb_1.Text
			Wf_Output('Second Get : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)
			ls_original[9]= uo_3.cb_2.Text 
			Wf_Output('First Get  : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)
			uo_3.cb_2.Text = 'Set ' + uo_3.cb_2.Text
			Wf_Output('Second Get : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_1, Inherit from u_inh409_l3_cb', False)
			ls_original[10]= cb_1.Text 
			Wf_Output('First Get  : cb_1.Text = ~"' + cb_1.Text + '~"', False)
			cb_1.Text = 'Set ' + cb_1.Text
			Wf_Output('Second Get : cb_1.Text = ~"' + cb_1.Text + '~"', False)
			
			Wf_OutPut('SVO Object : //cb_2, Inherit from u_inh409_l3_cb', False)
			ls_original[11]= cb_2.Text 
			Wf_Output('First Get  : cb_2.Text = ~"' + cb_2.Text + '~"', False)
			cb_2.Text = 'Set ' + cb_2.Text
			Wf_Output('Second Get : cb_2.Text = ~"' + cb_2.Text + '~"', False)	
		
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
			///Array Length=11
			//////////////////////////////////////////////////////////////////////////
Else
			wf_scriptview("//Calling SVO Instance Variables                                                 ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                       ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                  ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_1, Inherit from u_cst_inh409_l1', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)                 ")
			wf_scriptview("uo_1.Tag = 'Set ' + uo_1.Tag                                                     ")
			wf_scriptview("Wf_Output('Second Get : uo_1.Tag = ~"' + uo_1.Tag + '~"', False)                 ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_1, Inherit from u_cst_inh409_l1`cb_1', False)  ")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)     ")
			wf_scriptview("uo_1.cb_1.Text = 'Set ' + uo_1.cb_1.Text                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_1.Text = ~"' + uo_1.cb_1.Text + '~"', False)     ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_1.cb_2, Inherit from u_cst_inh409_l1`cb_2', False)  ")
			wf_scriptview("Wf_Output('First Get  : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)     ")
			wf_scriptview("uo_1.cb_2.Text = 'Set ' + uo_1.cb_2.Text                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_1.cb_2.Text = ~"' + uo_1.cb_2.Text + '~"', False)     ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_2, Inherit from u_cst_inh409_l2', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)                 ")
			wf_scriptview("uo_2.Tag = 'Set ' + uo_2.Tag                                                     ")
			wf_scriptview("Wf_Output('Second Get : uo_2.Tag = ~"' + uo_2.Tag + '~"', False)                 ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_1, Inherit from u_cst_inh409_l2`cb_1', False)  ")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)     ")
			wf_scriptview("uo_2.cb_1.Text = 'Set ' + uo_2.cb_1.Text                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_1.Text = ~"' + uo_2.cb_1.Text + '~"', False)     ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_2.cb_2, Inherit from u_cst_inh409_l2`cb_2', False)  ")
			wf_scriptview("Wf_Output('First Get  : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)     ")
			wf_scriptview("uo_2.cb_2.Text = 'Set ' + uo_2.cb_2.Text                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_2.cb_2.Text = ~"' + uo_2.cb_2.Text + '~"', False)     ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('CVO Object : //uo_3, Inherit from u_cst_inh409_l3', False)            ")
			wf_scriptview("Wf_Output('First Get  : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)                 ")
			wf_scriptview("uo_3.Tag = 'Set ' + uo_3.Tag                                                     ")
			wf_scriptview("Wf_Output('Second Get : uo_3.Tag = ~"' + uo_3.Tag + '~"', False)                 ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_1, Inherit from u_cst_inh409_l3`cb_1', False)  ")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)     ")
			wf_scriptview("uo_3.cb_1.Text = 'Set ' + uo_3.cb_1.Text                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_1.Text = ~"' + uo_3.cb_1.Text + '~"', False)     ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //uo_3.cb_2, Inherit from u_cst_inh409_l3`cb_2', False)  ")
			wf_scriptview("Wf_Output('First Get  : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)     ")
			wf_scriptview("uo_3.cb_2.Text = 'Set ' + uo_3.cb_2.Text                                         ")
			wf_scriptview("Wf_Output('Second Get : uo_3.cb_2.Text = ~"' + uo_3.cb_2.Text + '~"', False)     ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_1, Inherit from u_inh409_l3_cb', False)             ")
			wf_scriptview("Wf_Output('First Get  : cb_1.Text = ~"' + cb_1.Text + '~"', False)               ")
			wf_scriptview("cb_1.Text = 'Set ' + cb_1.Text                                                   ")
			wf_scriptview("Wf_Output('Second Get : cb_1.Text = ~"' + cb_1.Text + '~"', False)               ")
			wf_scriptview("                                                                                 ")
			wf_scriptview("Wf_OutPut('SVO Object : //cb_2, Inherit from u_inh409_l3_cb', False)             ")
			wf_scriptview("Wf_Output('First Get  : cb_2.Text = ~"' + cb_2.Text + '~"', False)               ")
			wf_scriptview("cb_2.Text = 'Set ' + cb_2.Text                                                   ")
			wf_scriptview("Wf_Output('Second Get : cb_2.Text = ~"' + cb_2.Text + '~"', False)               ")
			
		End if
	CASE 'INH409W01P003'
		If ab_execute Then
			//Calling SVO Event
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_OutPut('', False)
			
			Wf_OutPut('CVO Object : uo_1; Inherit from u_cst_inh409_l1', False)
			Wf_OutPut('SVO Object : uo_1.cb_1; Inherit from u_cst_inh409_l1`cb_1(Override Ancestor)', False)
			uo_1.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_1.cb_2; Inherit from u_cst_inh409_l1`cb_2(Extend Ancestor)', False)
			uo_1.cb_2.Event Clicked()
			
			Wf_OutPut('CVO Object : uo_2; Inherit from u_cst_inh409_l2', False)
			Wf_OutPut('SVO Object : uo_2.cb_1; Inherit from u_cst_inh409_l2`cb_1(No Code)', False)
			uo_2.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_2.cb_2; Inherit from u_cst_inh409_l2`cb_2(Override Ancestor)', False)
			uo_2.cb_2.Event Clicked()
			
			Wf_OutPut('CVO Object : uo_3; Inherit from u_cst_inh409_l3', False)
			Wf_OutPut('SVO Object : uo_3.cb_1; Inherit from u_cst_inh409_l3`cb_1(Extend Ancestor)', False)
			uo_3.cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : uo_3.cb_2; Inherit from u_cst_inh409_l3`cb_2(No Code)', False)
			uo_3.cb_2.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_1; Inherit from u_inh409_l3_cb, Override', False)
			cb_1.Event Clicked()
			
			Wf_OutPut('SVO Object : cb_2; Inherit from u_inh409_l3_cb, Extend', False)
			cb_2.Event Clicked()
		Else
			wf_scriptview("//Calling SVO Event                                                                             ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                      ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                 ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('', False)                                                                            ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_1; Inherit from u_cst_inh409_l1', False)                             ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_1.cb_1; Inherit from u_cst_inh409_l1`cb_1(Override Ancestor)', False)")
			wf_scriptview("uo_1.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_1.cb_2; Inherit from u_cst_inh409_l1`cb_2(Extend Ancestor)', False)  ")
			wf_scriptview("uo_1.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_2; Inherit from u_cst_inh409_l2', False)                             ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_2.cb_1; Inherit from u_cst_inh409_l2`cb_1(No Code)', False)          ")
			wf_scriptview("uo_2.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_2.cb_2; Inherit from u_cst_inh409_l2`cb_2(Override Ancestor)', False)")
			wf_scriptview("uo_2.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('CVO Object : uo_3; Inherit from u_cst_inh409_l3', False)                             ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_3.cb_1; Inherit from u_cst_inh409_l3`cb_1(Extend Ancestor)', False)  ")
			wf_scriptview("uo_3.cb_1.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : uo_3.cb_2; Inherit from u_cst_inh409_l3`cb_2(No Code)', False)          ")
			wf_scriptview("uo_3.cb_2.Event Clicked()                                                                       ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_1; Inherit from u_inh409_l3_cb, Override', False)                    ")
			wf_scriptview("cb_1.Event Clicked()                                                                            ")
			wf_scriptview("                                                                                                ")
			wf_scriptview("Wf_OutPut('SVO Object : cb_2; Inherit from u_inh409_l3_cb, Extend', False)                      ")
			wf_scriptview("cb_2.Event Clicked()                                                                            ")

		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose

//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE
end subroutine

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : wf_init_items ; Initialization ListBox Items
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

lb_items.Reset()
//script below  use to add test item into listbox control

lb_items.additem("INH409W01P001: Calling CVO Instance Variables(Level 1)")
lb_items.additem("INH409W01P002: Calling CVO Property(Level 1)")
lb_items.additem("INH409W01P003: Calling SVO Event(Level 1)")
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

on w_inh409w01_l1_cvoinwin.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.uo_3=create uo_3
this.uo_2=create uo_2
this.uo_1=create uo_1
this.cb_execute=create cb_execute
this.lb_items=create lb_items
this.cb_clear=create cb_clear
this.cb_close=create cb_close
this.mle_output=create mle_output
this.mle_view=create mle_view
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_4=create gb_4
this.gb_1=create gb_1
this.cb_cotviewresult=create cb_cotviewresult
this.cb_cotautorun=create cb_cotautorun
this.Control[]={this.cb_2,&
this.cb_1,&
this.uo_3,&
this.uo_2,&
this.uo_1,&
this.cb_execute,&
this.lb_items,&
this.cb_clear,&
this.cb_close,&
this.mle_output,&
this.mle_view,&
this.gb_5,&
this.mle_describe,&
this.gb_4,&
this.gb_1,&
this.cb_cotviewresult,&
this.cb_cotautorun}
end on

on w_inh409w01_l1_cvoinwin.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.uo_3)
destroy(this.uo_2)
destroy(this.uo_1)
destroy(this.cb_execute)
destroy(this.lb_items)
destroy(this.cb_clear)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.mle_view)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_4)
destroy(this.gb_1)
destroy(this.cb_cotviewresult)
destroy(this.cb_cotautorun)
end on

event close;
//start:event close
if IsValid(ids_TestPoint) then Destroy ids_TestPoint
if IsValid(ids_ResultDetailTemp) then Destroy ids_ResultDetailTemp
//end:event close
end event

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

cb_clear.Event post Clicked()

//start:event open
wf_CreateResultSet()
//end:event open
end event

type cb_2 from u_inh409_l3_cb within w_inh409w01_l1_cvoinwin
integer x = 3397
integer y = 696
integer width = 393
integer taborder = 90
string text = "SL3, WL1_2"
string is_string = "SL3, WL1_2"
end type

event clicked;call super::clicked;//Extend
W_INH409W01_L1_CVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute w_inh409w01_l1_cvoinwin.cb_2 Script.", False)
end event

type cb_1 from u_inh409_l3_cb within w_inh409w01_l1_cvoinwin
integer x = 2981
integer y = 696
integer width = 393
integer taborder = 80
string text = "SL3, WL1_1"
string is_string = "SL3, WL1_1"
end type

event clicked;//Override
W_INH409W01_L1_CVOINWIN  lwin

lwin = getParent()

lwin.wf_Output("Information : Execute w_inh409w01_l1_cvoinwin.cb_1 Script.", False)
end event

type uo_3 from u_cst_inh409_l3 within w_inh409w01_l1_cvoinwin
string tag = "CVO L3, WL1"
integer x = 2089
integer y = 696
integer taborder = 70
string is_cvo = "CVO L3, WL1"
end type

on uo_3.destroy
call u_cst_inh409_l3::destroy
end on

event constructor;call super::constructor;st_1.Text = "uo_3"
end event

type uo_2 from u_cst_inh409_l2 within w_inh409w01_l1_cvoinwin
string tag = "CVO L2, WL1"
integer x = 1225
integer y = 696
integer taborder = 70
string is_cvo = "CVO L2, WL1"
end type

on uo_2.destroy
call u_cst_inh409_l2::destroy
end on

event constructor;call super::constructor;st_1.Text = "uo_2"
end event

type uo_1 from u_cst_inh409_l1 within w_inh409w01_l1_cvoinwin
string tag = "CVO L1, WL1"
integer x = 361
integer y = 696
integer taborder = 60
string is_cvo = "CVO L1, WL1"
end type

on uo_1.destroy
call u_cst_inh409_l1::destroy
end on

event constructor;call super::constructor;st_1.Text = "uo_1"
end event

type cb_execute from commandbutton within w_inh409w01_l1_cvoinwin
integer x = 2459
integer y = 2208
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Execute"
end type

event clicked;lb_items.Event DoublecLicked(lb_items.SelectedIndex())
end event

type lb_items from listbox within w_inh409w01_l1_cvoinwin
integer x = 1989
integer y = 28
integer width = 1838
integer height = 584
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;//Execute Script
IF index > 0 THEN
	wf_Scriptexe(lb_items.selectedindex(),True)
END IF
end event

event selectionchanged;//View Script
IF index > 0 THEN
	mle_view.text = ''
	wf_Scriptexe(lb_items.selectedindex(),False)
END IF
end event

type cb_clear from commandbutton within w_inh409w01_l1_cvoinwin
integer x = 2926
integer y = 2208
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Clear"
end type

event clicked;ii_index = 0
mle_output.text=''
mle_view.text = ""
end event

type cb_close from commandbutton within w_inh409w01_l1_cvoinwin
integer x = 3392
integer y = 2208
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;close(parent)
end event

type mle_output from multilineedit within w_inh409w01_l1_cvoinwin
integer x = 2007
integer y = 1488
integer width = 1865
integer height = 664
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type mle_view from multilineedit within w_inh409w01_l1_cvoinwin
integer x = 59
integer y = 1488
integer width = 1865
integer height = 664
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_5 from groupbox within w_inh409w01_l1_cvoinwin
integer x = 1975
integer y = 1424
integer width = 1929
integer height = 748
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "OutPut"
end type

type mle_describe from multilineedit within w_inh409w01_l1_cvoinwin
integer x = 23
integer y = 28
integer width = 1934
integer height = 584
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_4 from groupbox within w_inh409w01_l1_cvoinwin
integer x = 27
integer y = 1428
integer width = 1929
integer height = 748
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Script View"
end type

type gb_1 from groupbox within w_inh409w01_l1_cvoinwin
integer x = 27
integer y = 624
integer width = 3881
integer height = 804
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "User Object"
end type

type cb_cotviewresult from commandbutton within w_inh409w01_l1_cvoinwin
integer x = 475
integer y = 2208
integer width = 448
integer height = 128
integer taborder = 10
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "View Result"
end type

event clicked;if gb_COTDBConnected then
	gw_COTCurrentWin = Parent
	if not IsValid(w_pbvsjs) then Open(w_pbvsjs)
	w_pbvsjs.wf_Retrieve(Parent.ClassName())
else
	this.Enabled = false
end if
end event

type cb_cotautorun from commandbutton within w_inh409w01_l1_cvoinwin
integer x = 37
integer y = 2208
integer width = 448
integer height = 128
integer taborder = 10
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Auto Run"
end type

event clicked;Parent.TriggerEvent("ue_RunAll")
end event


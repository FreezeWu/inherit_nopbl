$PBExportHeader$w_inh406w03_event.srw
forward
global type w_inh406w03_event from window
end type
type st_3 from statictext within w_inh406w03_event
end type
type st_2 from statictext within w_inh406w03_event
end type
type st_1 from statictext within w_inh406w03_event
end type
type uo_3 from u_cst_inh406_l3 within w_inh406w03_event
end type
type uo_2 from u_cst_inh406_l2 within w_inh406w03_event
end type
type uo_1 from u_cst_inh406_l1 within w_inh406w03_event
end type
type cb_execute from commandbutton within w_inh406w03_event
end type
type lb_items from listbox within w_inh406w03_event
end type
type cb_clear from commandbutton within w_inh406w03_event
end type
type cb_close from commandbutton within w_inh406w03_event
end type
type mle_output from multilineedit within w_inh406w03_event
end type
type mle_view from multilineedit within w_inh406w03_event
end type
type gb_3 from groupbox within w_inh406w03_event
end type
type gb_5 from groupbox within w_inh406w03_event
end type
type mle_describe from multilineedit within w_inh406w03_event
end type
type gb_1 from groupbox within w_inh406w03_event
end type
type gb_2 from groupbox within w_inh406w03_event
end type
type gb_4 from groupbox within w_inh406w03_event
end type
type cb_cotviewresult from commandbutton within w_inh406w03_event
end type
type cb_cotautorun from commandbutton within w_inh406w03_event
end type
end forward

global type w_inh406w03_event from window
integer width = 3954
integer height = 2480
boolean titlebar = true
string title = "Call SVO Event for CVO"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_runall ( )
st_3 st_3
st_2 st_2
st_1 st_1
uo_3 uo_3
uo_2 uo_2
uo_1 uo_1
cb_execute cb_execute
lb_items lb_items
cb_clear cb_clear
cb_close cb_close
mle_output mle_output
mle_view mle_view
gb_3 gb_3
gb_5 gb_5
mle_describe mle_describe
gb_1 gb_1
gb_2 gb_2
gb_4 gb_4
cb_cotviewresult cb_cotviewresult
cb_cotautorun cb_cotautorun
end type
global w_inh406w03_event w_inh406w03_event

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
mle_describe.text += "2.Testing Purpose : Calling SVO Event for CVO" // This must include
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
String 		ls_item, ls_descript


If ai_item < 1 Then Return

ll_pos = Pos(lb_items.text(ai_item),':')
ls_item = Mid(lb_items.text(ai_item),1,ll_pos - 1)
ls_descript = Mid(lb_items.text(ai_item),ll_pos + 1,Len(lb_items.text(ai_item)))

Choose Case ls_item
	Case 'INH406W03P001'
		If ab_execute Then
			//Calling SVO Event for uo_1(u_cst_inh406_l1)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_Output('//Object   : uo_1.cb_1; Only u_inh406_l1_cb have Code', False)
			uo_1.cb_1.Event Clicked()
			
			Wf_Output('//Object   : uo_1.cb_2; Only u_inh406_l1_cb have Code', False)
			uo_1.cb_2.Event Clicked()
			
			Wf_Output('//Object   : uo_1.cb_3; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)
			uo_1.cb_3.Event Clicked()
			
			Wf_Output('//Object   : uo_1.cb_4; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)
			uo_1.cb_4.Event Clicked()
			
			Wf_Output('//Object   : uo_1.cb_5; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)
			uo_1.cb_5.Event Clicked()
			
			Wf_Output('//Object   : uo_1.cb_6; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)
			uo_1.cb_6.Event Clicked()
		Else
			wf_scriptview("//Calling SVO Event for uo_1(u_cst_inh406_l1)                                                                                 ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                                                    ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                                               ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_1.cb_1; Only u_inh406_l1_cb have Code', False)                                                     ")
			wf_scriptview("uo_1.cb_1.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_1.cb_2; Only u_inh406_l1_cb have Code', False)                                                     ")
			wf_scriptview("uo_1.cb_2.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_1.cb_3; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)               ")
			wf_scriptview("uo_1.cb_3.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_1.cb_4; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)               ")
			wf_scriptview("uo_1.cb_4.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_1.cb_5; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)")
			wf_scriptview("uo_1.cb_5.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_1.cb_6; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)")
			wf_scriptview("uo_1.cb_6.Event Clicked()                                                                                                     ")

		End If
	Case 'INH406W03P002'
		If ab_execute Then
			//Calling SVO Event for uo_2(u_cst_inh406_l2)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_Output('//Object   : uo_2.cb_1; Only u_inh406_l1_cb have Code', False)
			uo_2.cb_1.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_2; Only u_inh406_l1_cb have Code', False)
			uo_2.cb_2.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_3; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)
			uo_2.cb_3.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_4; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)
			uo_2.cb_4.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_5; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)
			uo_2.cb_5.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_6; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)
			uo_2.cb_6.Event Clicked()		
	
			Wf_Output('//Object   : uo_2.cb_7; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)
			uo_2.cb_7.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_8; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)
			uo_2.cb_8.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_9; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)
			uo_2.cb_9.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_10; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)
			uo_2.cb_10.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_11; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)
			uo_2.cb_11.Event Clicked()
			
			Wf_Output('//Object   : uo_2.cb_12; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)
			uo_2.cb_12.Event Clicked()
		Else
			wf_scriptview("//Calling SVO Event for uo_2(u_cst_inh406_l2)                                                                                 ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                                                    ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                                               ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_1; Only u_inh406_l1_cb have Code', False)                                                     ")
			wf_scriptview("uo_2.cb_1.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_2; Only u_inh406_l1_cb have Code', False)                                                     ")
			wf_scriptview("uo_2.cb_2.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_3; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)               ")
			wf_scriptview("uo_2.cb_3.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_4; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)               ")
			wf_scriptview("uo_2.cb_4.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_5; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)")
			wf_scriptview("uo_2.cb_5.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_6; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)")
			wf_scriptview("uo_2.cb_6.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_7; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)                                ")
			wf_scriptview("uo_2.cb_7.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_8; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)                                ")
			wf_scriptview("uo_2.cb_8.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_9; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)                 ")
			wf_scriptview("uo_2.cb_9.Event Clicked()                                                                                                     ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_10; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)                ")
			wf_scriptview("uo_2.cb_10.Event Clicked()                                                                                                    ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_11; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)                       ")
			wf_scriptview("uo_2.cb_11.Event Clicked()                                                                                                    ")
			wf_scriptview("                                                                                                                              ")
			wf_scriptview("Wf_Output('//Object   : uo_2.cb_12; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)                       ")
			wf_scriptview("uo_2.cb_12.Event Clicked()                                                                                                    ")

		End If
	Case 'INH406W03P003'
		If ab_execute Then
			//Calling SVO Event for uo_3(u_cst_inh406_l3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			
			Wf_Output('//Object   : uo_3.cb_1; Only u_inh406_l1_cb have Code', False)
			uo_3.cb_1.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_2; Only u_inh406_l1_cb have Code', False)
			uo_3.cb_2.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_3; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)
			uo_3.cb_3.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_4; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)
			uo_3.cb_4.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_5; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)
			uo_3.cb_5.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_6; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)
			uo_3.cb_6.Event Clicked()			
			
			Wf_Output('//Object   : uo_3.cb_7; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)
			uo_3.cb_7.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_8; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)
			uo_3.cb_8.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_9; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)
			uo_3.cb_9.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_10; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)
			uo_3.cb_10.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_11; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)
			uo_3.cb_11.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_12; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)
			uo_3.cb_12.Event Clicked()

			Wf_Output('//Object   : uo_3.cb_13; u_inh406_l1_cb have Code, u_cst_inh406_l3 Extend', False)
			uo_3.cb_13.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_14; u_inh406_l1_cb have Code, u_cst_inh406_l3 Extend', False)
			uo_3.cb_14.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_15; u_inh406_l1_cb & u_inh406_l2_cb have Code', False)
			uo_3.cb_15.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_16; u_inh406_l1_cb & u_inh406_l2_cb have Code', False)
			uo_3.cb_16.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_17; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l3 Override', False)
			uo_3.cb_17.Event Clicked()
			
			Wf_Output('//Object   : uo_3.cb_18; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l3 Override', False)
			uo_3.cb_18.Event Clicked()
		Else
			wf_scriptview("//Calling SVO Event for uo_3(u_cst_inh406_l3)                                                                                    ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                                                       ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                                                  ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_1; Only u_inh406_l1_cb have Code', False)                                                        ")
			wf_scriptview("uo_3.cb_1.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_2; Only u_inh406_l1_cb have Code', False)                                                        ")
			wf_scriptview("uo_3.cb_2.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_3; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)                  ")
			wf_scriptview("uo_3.cb_3.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_4; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l1 Override', False)                  ")
			wf_scriptview("uo_3.cb_4.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_5; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)   ")
			wf_scriptview("uo_3.cb_5.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_6; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l1 Extend', False)   ")
			wf_scriptview("uo_3.cb_6.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_7; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)                                   ")
			wf_scriptview("uo_3.cb_7.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_8; u_inh406_l1_cb have Code, u_cst_inh406_l2 Override', False)                                   ")
			wf_scriptview("uo_3.cb_8.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_9; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)                    ")
			wf_scriptview("uo_3.cb_9.Event Clicked()                                                                                                        ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_10; u_inh406_l1_cb & u_inh406_l2_cb have Code, u_cst_inh406_l2 Extend', False)                   ")
			wf_scriptview("uo_3.cb_10.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_11; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)                          ")
			wf_scriptview("uo_3.cb_11.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_12; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code', False)                          ")
			wf_scriptview("uo_3.cb_12.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_13; u_inh406_l1_cb have Code, u_cst_inh406_l3 Extend', False)                                    ")
			wf_scriptview("uo_3.cb_13.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_14; u_inh406_l1_cb have Code, u_cst_inh406_l3 Extend', False)                                    ")
			wf_scriptview("uo_3.cb_14.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_15; u_inh406_l1_cb & u_inh406_l2_cb have Code', False)                                           ")
			wf_scriptview("uo_3.cb_15.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_16; u_inh406_l1_cb & u_inh406_l2_cb have Code', False)                                           ")
			wf_scriptview("uo_3.cb_16.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_17; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l3 Override', False)")
			wf_scriptview("uo_3.cb_17.Event Clicked()                                                                                                       ")
			wf_scriptview("                                                                                                                                 ")
			wf_scriptview("Wf_Output('//Object   : uo_3.cb_18; u_inh406_l1_cb & u_inh406_l2_cb & u_inh406_l3_cb have Code, u_cst_inh406_l3 Override', False)")
			wf_scriptview("uo_3.cb_18.Event Clicked()                                                                                                       ")

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

lb_items.additem("INH406W03P001: Calling SVO Event for uo_1(u_cst_inh406_l1)")
lb_items.additem("INH406W03P002: Calling SVO Event for uo_2(u_cst_inh406_l2)")
lb_items.additem("INH406W03P003: Calling SVO Event for uo_3(u_cst_inh406_l3)")
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

on w_inh406w03_event.create
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.uo_3=create uo_3
this.uo_2=create uo_2
this.uo_1=create uo_1
this.cb_execute=create cb_execute
this.lb_items=create lb_items
this.cb_clear=create cb_clear
this.cb_close=create cb_close
this.mle_output=create mle_output
this.mle_view=create mle_view
this.gb_3=create gb_3
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_4=create gb_4
this.cb_cotviewresult=create cb_cotviewresult
this.cb_cotautorun=create cb_cotautorun
this.Control[]={this.st_3,&
this.st_2,&
this.st_1,&
this.uo_3,&
this.uo_2,&
this.uo_1,&
this.cb_execute,&
this.lb_items,&
this.cb_clear,&
this.cb_close,&
this.mle_output,&
this.mle_view,&
this.gb_3,&
this.gb_5,&
this.mle_describe,&
this.gb_1,&
this.gb_2,&
this.gb_4,&
this.cb_cotviewresult,&
this.cb_cotautorun}
end on

on w_inh406w03_event.destroy
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.uo_3)
destroy(this.uo_2)
destroy(this.uo_1)
destroy(this.cb_execute)
destroy(this.lb_items)
destroy(this.cb_clear)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.mle_view)
destroy(this.gb_3)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_4)
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

type st_3 from statictext within w_inh406w03_event
integer x = 1573
integer y = 496
integer width = 165
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "uo_3:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_2 from statictext within w_inh406w03_event
integer x = 1573
integer y = 260
integer width = 165
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "uo_2:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_inh406w03_event
integer x = 1573
integer y = 108
integer width = 165
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "uo_1:"
alignment alignment = right!
boolean focusrectangle = false
end type

type uo_3 from u_cst_inh406_l3 within w_inh406w03_event
integer x = 1755
integer y = 460
integer taborder = 60
boolean border = true
end type

on uo_3.destroy
call u_cst_inh406_l3::destroy
end on

type uo_2 from u_cst_inh406_l2 within w_inh406w03_event
integer x = 1755
integer y = 220
integer taborder = 50
boolean border = true
end type

on uo_2.destroy
call u_cst_inh406_l2::destroy
end on

type uo_1 from u_cst_inh406_l1 within w_inh406w03_event
integer x = 1755
integer y = 76
integer taborder = 50
boolean border = true
end type

on uo_1.destroy
call u_cst_inh406_l1::destroy
end on

type cb_execute from commandbutton within w_inh406w03_event
integer x = 2437
integer y = 2204
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

type lb_items from listbox within w_inh406w03_event
integer x = 59
integer y = 840
integer width = 1435
integer height = 664
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

type cb_clear from commandbutton within w_inh406w03_event
integer x = 2903
integer y = 2204
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

type cb_close from commandbutton within w_inh406w03_event
integer x = 3369
integer y = 2204
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

type mle_output from multilineedit within w_inh406w03_event
integer x = 69
integer y = 1592
integer width = 3771
integer height = 532
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

type mle_view from multilineedit within w_inh406w03_event
integer x = 1582
integer y = 840
integer width = 2258
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

type gb_3 from groupbox within w_inh406w03_event
integer x = 27
integer y = 780
integer width = 1499
integer height = 744
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type

type gb_5 from groupbox within w_inh406w03_event
integer x = 27
integer y = 1528
integer width = 3854
integer height = 624
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

type mle_describe from multilineedit within w_inh406w03_event
integer x = 59
integer y = 80
integer width = 1435
integer height = 680
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

type gb_1 from groupbox within w_inh406w03_event
integer x = 27
integer y = 8
integer width = 1499
integer height = 776
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Description"
end type

type gb_2 from groupbox within w_inh406w03_event
integer x = 1550
integer y = 8
integer width = 2313
integer height = 776
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "User Object"
end type

type gb_4 from groupbox within w_inh406w03_event
integer x = 1550
integer y = 780
integer width = 2331
integer height = 744
integer taborder = 40
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

type cb_cotviewresult from commandbutton within w_inh406w03_event
integer x = 475
integer y = 2176
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

type cb_cotautorun from commandbutton within w_inh406w03_event
integer x = 37
integer y = 2176
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


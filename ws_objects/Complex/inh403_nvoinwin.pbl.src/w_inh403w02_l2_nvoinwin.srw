$PBExportHeader$w_inh403w02_l2_nvoinwin.srw
forward
global type w_inh403w02_l2_nvoinwin from w_inh403w01_l1_nvoinwin
end type
end forward

global type w_inh403w02_l2_nvoinwin from w_inh403w01_l1_nvoinwin
end type
global w_inh403w02_l2_nvoinwin w_inh403w02_l2_nvoinwin

type variables
//Declare Nvo L2
n_cst_inh403_L1_auto		invo_W02_autoL1
n_cst_inh403_L2_auto		invo_W02_autoL2
n_cst_inh403_L3_auto		invo_W02_autoL3

n_cst_inh403_L1_unauto		invo_W02_unautoL1
n_cst_inh403_L2_unauto		invo_W02_unautoL2
n_cst_inh403_L3_unauto		invo_W02_unautoL3
end variables

forward prototypes
public subroutine wf_init_items ()
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

lb_items.additem("INH403W02P001: Calling Nvo Instance Variables(Level 1)")
lb_items.additem("INH403W02P002: Calling Nvo Instance Variables(Level 2)")
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

String 		ls_item,ls_descript
long			ll_pos
String 	ls_Original[6]

If ai_item < 1 Then Return

ll_pos = Pos(lb_items.text(ai_item),':')
ls_item = Mid(lb_items.text(ai_item),1,ll_pos - 1)
ls_descript = Mid(lb_items.text(ai_item),ll_pos + 1,Len(lb_items.text(ai_item)))

Choose Case ls_item
	Case 'INH403W02P001'
		If ab_execute Then
			//Output Instance Variables of Level 1
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			//auto instantiation
			ls_Original[1]=invo_W01_autoL1.is_String
			Wf_Output('First Get  : invo_W01_autoL1.is_String = ~"' + invo_W01_autoL1.is_String + '~"', False)
			invo_W01_autoL1.is_String = 'Set ' + invo_W01_autoL1.is_String
			Wf_Output('Second Get : invo_W01_autoL1.is_String = ~"' + invo_W01_autoL1.is_String + '~"', False)
			
			ls_Original[2]=invo_W01_autoL2.is_String
			Wf_Output('First Get  : invo_W01_autoL2.is_String = ~"' + invo_W01_autoL2.is_String + '~"', False)
			invo_W01_autoL2.is_String = 'Set ' + invo_W01_autoL2.is_String
			Wf_Output('Second Get : invo_W01_autoL2.is_String = ~"' + invo_W01_autoL2.is_String + '~"', False)
			
			ls_Original[3]=invo_W01_autoL3.is_String
			Wf_Output('First Get  : invo_W01_autoL3.is_String = ~"' + invo_W01_autoL3.is_String + '~"', False)
			invo_W01_autoL3.is_String = 'Set ' + invo_W01_autoL3.is_String
			Wf_Output('Second Get : invo_W01_autoL3.is_String = ~"' + invo_W01_autoL3.is_String + '~"', False)
			//unauto instantiation
			ls_Original[4]=invo_W01_unautoL1.is_String
			Wf_Output('First Get  : invo_W01_unautoL1.is_String = ~"' + invo_W01_unautoL1.is_String + '~"', False)
			invo_W01_unautoL1.is_String = 'Set ' + invo_W01_unautoL1.is_String
			Wf_Output('Second Get : invo_W01_unautoL1.is_String = ~"' + invo_W01_unautoL1.is_String + '~"', False)
			
			ls_Original[5]=invo_W01_unautoL2.is_String
			Wf_Output('First Get  : invo_W01_unautoL2.is_String = ~"' + invo_W01_unautoL2.is_String + '~"', False)
			invo_W01_unautoL2.is_String = 'Set ' + invo_W01_unautoL2.is_String
			Wf_Output('Second Get : invo_W01_unautoL2.is_String = ~"' + invo_W01_unautoL2.is_String + '~"', False)
			
			ls_Original[6]=invo_W01_unautoL3.is_String
			Wf_Output('First Get  : invo_W01_unautoL3.is_String = ~"' + invo_W01_unautoL3.is_String + '~"', False)
			invo_W01_unautoL3.is_String = 'Set ' + invo_W01_unautoL3.is_String
			Wf_Output('Second Get : invo_W01_unautoL3.is_String = ~"' + invo_W01_unautoL3.is_String + '~"', False)
		//=======================================================================
		//author:lujianhua
		//Add Code: Restore the original value
		invo_W01_autoL1.is_String = ls_Original[1]
		invo_W01_autoL2.is_String = ls_Original[2]
		invo_W01_autoL3.is_String = ls_Original[3]
		invo_W01_unautoL1.is_String = ls_Original[4]
		invo_W01_unautoL2.is_String = ls_Original[5]
		invo_W01_unautoL3.is_String = ls_Original[6]
		//=======================================================================
		Else
			wf_scriptview("//Output Instance Variables of Level 1                                                                ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                            ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                       ")
			wf_scriptview("//auto instantiation                                                                                  ")
			wf_scriptview("Wf_Output('First Get  : invo_W01_autoL1.is_String = ~"' + invo_W01_autoL1.is_String + '~"', False)    ")
			wf_scriptview("invo_W01_autoL1.is_String = 'Set ' + invo_W01_autoL1.is_String                                        ")
			wf_scriptview("Wf_Output('Second Get : invo_W01_autoL1.is_String = ~"' + invo_W01_autoL1.is_String + '~"', False)    ")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W01_autoL2.is_String = ~"' + invo_W01_autoL2.is_String + '~"', False)    ")
			wf_scriptview("invo_W01_autoL2.is_String = 'Set ' + invo_W01_autoL2.is_String                                        ")
			wf_scriptview("Wf_Output('Second Get : invo_W01_autoL2.is_String = ~"' + invo_W01_autoL2.is_String + '~"', False)    ")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W01_autoL3.is_String = ~"' + invo_W01_autoL3.is_String + '~"', False)    ")
			wf_scriptview("invo_W01_autoL3.is_String = 'Set ' + invo_W01_autoL3.is_String                                        ")
			wf_scriptview("Wf_Output('Second Get : invo_W01_autoL3.is_String = ~"' + invo_W01_autoL3.is_String + '~"', False)    ")
			wf_scriptview("//unauto instantiation                                                                                ")
			wf_scriptview("Wf_Output('First Get  : invo_W01_unautoL1.is_String = ~"' + invo_W01_unautoL1.is_String + '~"', False)")
			wf_scriptview("invo_W01_unautoL1.is_String = 'Set ' + invo_W01_unautoL1.is_String                                    ")
			wf_scriptview("Wf_Output('Second Get : invo_W01_unautoL1.is_String = ~"' + invo_W01_unautoL1.is_String + '~"', False)")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W01_unautoL2.is_String = ~"' + invo_W01_unautoL2.is_String + '~"', False)")
			wf_scriptview("invo_W01_unautoL2.is_String = 'Set ' + invo_W01_unautoL2.is_String                                    ")
			wf_scriptview("Wf_Output('Second Get : invo_W01_unautoL2.is_String = ~"' + invo_W01_unautoL2.is_String + '~"', False)")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W01_unautoL3.is_String = ~"' + invo_W01_unautoL3.is_String + '~"', False)")
			wf_scriptview("invo_W01_unautoL3.is_String = 'Set ' + invo_W01_unautoL3.is_String                                    ")
			wf_scriptview("Wf_Output('Second Get : invo_W01_unautoL3.is_String = ~"' + invo_W01_unautoL3.is_String + '~"', False)")

		End If
	Case 'INH403W02P002'
		If ab_execute Then
			//Output Instance Variables of Level 2
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)
			//auto instantiation
			ls_Original[1]=invo_W02_autoL1.is_String
			Wf_Output('First Get  : invo_W02_autoL1.is_String = ~"' + invo_W02_autoL1.is_String + '~"', False)
			invo_W02_autoL1.is_String = 'Set ' + invo_W02_autoL1.is_String
			Wf_Output('Second Get : invo_W02_autoL1.is_String = ~"' + invo_W02_autoL1.is_String + '~"', False)
			
			ls_Original[2]=invo_W02_autoL2.is_String
			Wf_Output('First Get  : invo_W02_autoL2.is_String = ~"' + invo_W02_autoL2.is_String + '~"', False)
			invo_W02_autoL2.is_String = 'Set ' + invo_W02_autoL2.is_String
			Wf_Output('Second Get : invo_W02_autoL2.is_String = ~"' + invo_W02_autoL2.is_String + '~"', False)
			
			ls_Original[3]=invo_W02_autoL3.is_String
			Wf_Output('First Get  : invo_W02_autoL3.is_String = ~"' + invo_W02_autoL3.is_String + '~"', False)
			invo_W02_autoL3.is_String = 'Set ' + invo_W02_autoL3.is_String
			Wf_Output('Second Get : invo_W02_autoL3.is_String = ~"' + invo_W02_autoL3.is_String + '~"', False)
			//unauto instantiation
			ls_Original[4]=invo_W02_unautoL1.is_String
			Wf_Output('First Get  : invo_W02_unautoL1.is_String = ~"' + invo_W02_unautoL1.is_String + '~"', False)
			invo_W02_unautoL1.is_String = 'Set ' + invo_W02_unautoL1.is_String
			Wf_Output('Second Get : invo_W02_unautoL1.is_String = ~"' + invo_W02_unautoL1.is_String + '~"', False)
			
			ls_Original[5]=invo_W02_unautoL2.is_String
			Wf_Output('First Get  : invo_W02_unautoL2.is_String = ~"' + invo_W02_unautoL2.is_String + '~"', False)
			invo_W02_unautoL2.is_String = 'Set ' + invo_W02_unautoL2.is_String
			Wf_Output('Second Get : invo_W02_unautoL2.is_String = ~"' + invo_W02_unautoL2.is_String + '~"', False)
			
			ls_Original[6]=invo_W02_unautoL3.is_String
			Wf_Output('First Get  : invo_W02_unautoL3.is_String = ~"' + invo_W02_unautoL3.is_String + '~"', False)
			invo_W02_unautoL3.is_String = 'Set ' + invo_W02_unautoL3.is_String
			Wf_Output('Second Get : invo_W02_unautoL3.is_String = ~"' + invo_W02_unautoL3.is_String + '~"', False)
		//=======================================================================
		//author:lujianhua
		//Add Code: Restore the original value
		invo_W02_autoL1.is_String = ls_Original[1]
		invo_W02_autoL2.is_String = ls_Original[2]
		invo_W02_autoL3.is_String = ls_Original[3]
		invo_W02_unautoL1.is_String = ls_Original[4]
		invo_W02_unautoL2.is_String = ls_Original[5]
		invo_W02_unautoL3.is_String = ls_Original[6]
		//=======================================================================
		Else
			wf_scriptview("//Output Instance Variables of Level 2                                                                ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                                            ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                                       ")
			wf_scriptview("//auto instantiation                                                                                  ")
			wf_scriptview("Wf_Output('First Get  : invo_W02_autoL1.is_String = ~"' + invo_W02_autoL1.is_String + '~"', False)    ")
			wf_scriptview("invo_W02_autoL1.is_String = 'Set ' + invo_W02_autoL1.is_String                                        ")
			wf_scriptview("Wf_Output('Second Get : invo_W02_autoL1.is_String = ~"' + invo_W02_autoL1.is_String + '~"', False)    ")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W02_autoL2.is_String = ~"' + invo_W02_autoL2.is_String + '~"', False)    ")
			wf_scriptview("invo_W02_autoL2.is_String = 'Set ' + invo_W02_autoL2.is_String                                        ")
			wf_scriptview("Wf_Output('Second Get : invo_W02_autoL2.is_String = ~"' + invo_W02_autoL2.is_String + '~"', False)    ")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W02_autoL3.is_String = ~"' + invo_W02_autoL3.is_String + '~"', False)    ")
			wf_scriptview("invo_W02_autoL3.is_String = 'Set ' + invo_W02_autoL3.is_String                                        ")
			wf_scriptview("Wf_Output('Second Get : invo_W02_autoL3.is_String = ~"' + invo_W02_autoL3.is_String + '~"', False)    ")
			wf_scriptview("//unauto instantiation                                                                                ")
			wf_scriptview("Wf_Output('First Get  : invo_W02_unautoL1.is_String = ~"' + invo_W02_unautoL1.is_String + '~"', False)")
			wf_scriptview("invo_W02_unautoL1.is_String = 'Set ' + invo_W02_unautoL1.is_String                                    ")
			wf_scriptview("Wf_Output('Second Get : invo_W02_unautoL1.is_String = ~"' + invo_W02_unautoL1.is_String + '~"', False)")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W02_unautoL2.is_String = ~"' + invo_W02_unautoL2.is_String + '~"', False)")
			wf_scriptview("invo_W02_unautoL2.is_String = 'Set ' + invo_W02_unautoL2.is_String                                    ")
			wf_scriptview("Wf_Output('Second Get : invo_W02_unautoL2.is_String = ~"' + invo_W02_unautoL2.is_String + '~"', False)")
			wf_scriptview("                                                                                                      ")
			wf_scriptview("Wf_Output('First Get  : invo_W02_unautoL3.is_String = ~"' + invo_W02_unautoL3.is_String + '~"', False)")
			wf_scriptview("invo_W02_unautoL3.is_String = 'Set ' + invo_W02_unautoL3.is_String                                    ")
			wf_scriptview("Wf_Output('Second Get : invo_W02_unautoL3.is_String = ~"' + invo_W02_unautoL3.is_String + '~"', False)")

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

on w_inh403w02_l2_nvoinwin.create
call super::create
end on

on w_inh403w02_l2_nvoinwin.destroy
call super::destroy
end on

event ue_instantiation;call super::ue_instantiation;If NOT IsValid(invo_W02_unautoL1) Then invo_W02_unautoL1 = Create n_cst_inh403_L1_unauto
If NOT IsValid(invo_W02_unautoL2) Then invo_W02_unautoL2 = Create n_cst_inh403_L2_unauto
If NOT IsValid(invo_W02_unautoL3) Then invo_W02_unautoL3 = Create n_cst_inh403_L3_unauto
end event

event ue_destroy;call super::ue_destroy;If IsValid(invo_W02_unautoL1) Then Destroy invo_W02_unautoL1
If IsValid(invo_W02_unautoL2) Then Destroy invo_W02_unautoL2
If IsValid(invo_W02_unautoL3) Then Destroy invo_W02_unautoL3
end event

type cb_2 from w_inh403w01_l1_nvoinwin`cb_2 within w_inh403w02_l2_nvoinwin
end type

type cb_1 from w_inh403w01_l1_nvoinwin`cb_1 within w_inh403w02_l2_nvoinwin
end type

type cb_execute from w_inh403w01_l1_nvoinwin`cb_execute within w_inh403w02_l2_nvoinwin
end type

type lb_items from w_inh403w01_l1_nvoinwin`lb_items within w_inh403w02_l2_nvoinwin
end type

type cb_clear from w_inh403w01_l1_nvoinwin`cb_clear within w_inh403w02_l2_nvoinwin
end type

type cb_close from w_inh403w01_l1_nvoinwin`cb_close within w_inh403w02_l2_nvoinwin
end type

type mle_output from w_inh403w01_l1_nvoinwin`mle_output within w_inh403w02_l2_nvoinwin
end type

type mle_view from w_inh403w01_l1_nvoinwin`mle_view within w_inh403w02_l2_nvoinwin
end type

type gb_3 from w_inh403w01_l1_nvoinwin`gb_3 within w_inh403w02_l2_nvoinwin
end type

type gb_5 from w_inh403w01_l1_nvoinwin`gb_5 within w_inh403w02_l2_nvoinwin
end type

type mle_describe from w_inh403w01_l1_nvoinwin`mle_describe within w_inh403w02_l2_nvoinwin
end type

type gb_1 from w_inh403w01_l1_nvoinwin`gb_1 within w_inh403w02_l2_nvoinwin
end type

type gb_2 from w_inh403w01_l1_nvoinwin`gb_2 within w_inh403w02_l2_nvoinwin
end type


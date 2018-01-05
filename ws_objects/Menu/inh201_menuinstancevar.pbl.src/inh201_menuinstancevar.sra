$PBExportHeader$inh201_menuinstancevar.sra
$PBExportComments$Generated Application Object
forward
global type inh201_menuinstancevar from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
String gs_pb, gs_js
//BEGIN_GLOBALVAR
string  gs_COTEnvironment
integer gi_COTVersion = 0
boolean gb_COTAutoRun = false
boolean gb_COTDBConnected = true
boolean gb_COTSaveResult = false
boolean gb_COTUpdateExpValue = false
window  gw_COTCurrentWin
Transaction gtr_COTDB
string  gs_WinName[] = {"w_inh201w01_menuinstancevar"}
//END_GLOBALVAR
end variables

global type inh201_menuinstancevar from application
string appname = "inh201_menuinstancevar"
event ue_cotopen ( string as_commandline )
end type
global inh201_menuinstancevar inh201_menuinstancevar

event ue_cotopen ( string as_commandline );//start:event ue_cotopen ( string as_commandline )
string  ls_Null
string  ls_Field[]
window  lw_Window[]
string  ls_WinName[]
integer li_Posistion
integer li_FieldCount
integer i, j, li_WinCount
n_cst_config lnv_Config

// Get reference information
SetNull(ls_Null)
if ls_Null=ls_Null then
	gs_COTEnvironment = "W"
	do
		li_Posistion = Pos(as_CommandLine, "$")
		if li_Posistion>0 then
			i ++
			ls_Field[i] = Left(as_CommandLine, li_Posistion - 1)
			as_CommandLine = Right(as_CommandLine, Len(as_CommandLine) - li_Posistion)
		else
			if Len(as_CommandLine)>0 then ls_Field[i+1] = as_CommandLine
			Exit
		end if
	loop until false
	li_FieldCount = UpperBound(ls_Field)
	if li_FieldCount=1 then
		if Upper(ls_Field[1])="A" then
			gb_COTAutoRun = true
			ls_WinName = gs_WinName
		else
			gi_COTVersion = Integer(ls_Field[1])
		end if
	elseif li_FieldCount>1 then
		if Upper(ls_Field[1])="A" then
			gb_COTAutoRun = true
			for i=2 to li_FieldCount
				 j ++
				 ls_WinName[j] = ls_Field[i] 
			next
		else
			gi_COTVersion = Integer(ls_Field[1])
			if Upper(ls_Field[2])="A" then
				gb_COTAutoRun = true
				for i=3 to li_FieldCount
					 j ++
					 ls_WinName[j] = ls_Field[i]
				next
				if j=0 then ls_WinName = gs_WinName
			end if
		end if
	end if
else
	gs_COTEnvironment = "P"
	if lnv_Config.of_IsCOTPBAutoRun() then 
		gb_COTAutoRun = true
		ls_WinName = gs_WinName
	end if
end if

// Connect COT database
if lnv_Config.of_Connect(gtr_COTDB, "GTR_FRAME")<>0 then
	gtr_COTDB.DBMS = "MSS Microsoft SQL Server 6.x"
	gtr_COTDB.Database = "apbtestcase"
	gtr_COTDB.LogPass = "tddba"
	gtr_COTDB.ServerName = "172.17.1.25"
	gtr_COTDB.LogId = "sa"
	gtr_COTDB.AutoCommit = False
	gtr_COTDB.DBParm = "CacheName='en_sql2000'"
	Connect using gtr_COTDB;
	if gtr_COTDB.SQLCode<>0 then gb_COTDBConnected = false
end if

// Run window
if not gb_COTDBConnected and gb_COTAutoRun then
	Halt Close
elseif not gb_COTDBConnected and not gb_COTAutoRun then		
	MessageBox("Information", "The test result of this time will not save and generate report, because of connect TQMS DB failed.")
elseif gb_COTDBConnected and not gb_COTAutoRun then
	lnv_Config.of_GetCOTValidate(gtr_COTDB, gb_COTSaveResult, gb_COTUpdateExpValue)
elseif gb_COTDBConnected and gb_COTAutoRun then
	li_WinCount = UpperBound(ls_WinName)
	for i=1 to li_WinCount
		 OpenSheet(lw_Window[i], ls_WinName[i], w_mdi, 1, Original!)
		 lw_Window[i].TriggerEvent("ue_RunAll")
		 Close(lw_Window[i])
	next
	Halt Close
end if
//end:event ue_cotopen ( string as_commandline )
end event

on inh201_menuinstancevar.create
appname="inh201_menuinstancevar"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on inh201_menuinstancevar.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_mdi)

//BEGIN_APPOPEN
this.Event ue_cotopen(CommandLine)
//END_APPOPEN
end event


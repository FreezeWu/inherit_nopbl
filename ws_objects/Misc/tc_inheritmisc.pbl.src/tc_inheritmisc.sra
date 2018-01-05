$PBExportHeader$tc_inheritmisc.sra
$PBExportComments$Generated Application Object
forward
global type tc_inheritmisc from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
//@@ Global Parameter @@

transaction Gtr_Frame        // frame work  transaction
transaction Gtr_Sqlserver    //sqlserver test db transaction
nvo_transaction Gtr_Oracle       //Oracle test db transaction
nvo_transaction Gtr_Asa          //Asa test db transaction
nvo_transaction Gtr_Ase          //Ase test db transaction
nvo_transaction Gtr_Btms         //Btms db transaction
string Gs_ApplicationPath

end variables

global type tc_inheritmisc from application
string appname = "tc_inheritmisc"
end type
global tc_inheritmisc tc_inheritmisc

on tc_inheritmisc.create
appname="tc_inheritmisc"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on tc_inheritmisc.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;n_cst_config lnv_AppeonDB

if lnv_AppeonDB.of_Connect(Gtr_Frame,'GTR_FRAME')=0 then
	if lnv_AppeonDB.of_Connect(Gtr_sqlserver,lnv_AppeonDB.EN_SQL2000)=0 then
		open(w_simplecasemain)
	else
		MessageBox("Connection DB Failed", Gtr_sqlserver.SQLErrText, StopSign!)
		Halt Close
	end if
else
	MessageBox("Connection DB Failed", Gtr_Frame.SQLErrText, StopSign!)
	Halt Close
end if

end event


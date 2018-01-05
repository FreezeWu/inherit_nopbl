$PBExportHeader$w_inhmiscw01.srw
forward
global type w_inhmiscw01 from w_templet
end type
end forward

global type w_inhmiscw01 from w_templet
integer width = 4690
integer height = 3024
string title = "01- Misc Case"
end type
global w_inhmiscw01 w_inhmiscw01

type variables

end variables

on w_inhmiscw01.create
call super::create
end on

on w_inhmiscw01.destroy
call super::destroy
end on

event ue_runscript;call super::ue_runscript;/*********************** 
Category Describe: 

***********************/

/***********************
Window   Describe: 
Path:         $/01-APBTestCase/APBFunctionCase/FunctionCase/Inherit/Misc/01-Misc 
Pbl Name:     
Designer:     zhouchaoqun
Coder:        
DocReviewer:  
CoderReviewer:
¡¾¹¦ÄÜÃèÊö¡¿

¡¾±àÂë×¢ÒâÊÂÏî¡¿

¡¾´°¿Ú¶ÔÏó¡¿

¡¾²âÊÔ×¢ÒâÊÂÏî¡¿
 
***********************/
string  ls_result
w_c  lw_win
lw_win = create w_c

if isnull(as_testpoint) or as_testpoint = "" then return
if isnull(al_row) or al_row < 1 then return 
if isnull(ab_exe) then return 

if ab_exe then
	wf_output('TestPoint '+as_testpoint+" has been executed.",true)
else
	wf_output('TestPoint '+as_testpoint+".",true)
end if

Choose Case as_testpoint
	Case 'INHMISCW01P01'
	/*
	   ¡¾¹¦ÄÜÃèÊö¡¿
	    ²âÊÔ¶àÖØ¼Ì³Ð(A->B->C)£¬Ò»¸öº¯ÊýAÓÐ´úÂë£¬BÎÞ´úÂë£¬CÓÐ´úÂëµÄÇé¿ö

		¡¾±àÂëÃèÊö¡¿
		1.Ê¹ÓÃÈý²ã¼Ì³Ð(A->B->C)
		2.ÉèÖÃÒ»¸öº¯ÊýÔÚA´°¿ÚÓÐ´úÂë£¬B´°¿ÚÎÞ´úÂë£¬C´°¿ÚÓÐ´úÂë
		3.Ö´ÐÐ²¢Êä³öÖµ

		¡¾ÆÚÍûÃèÊö¡¿
		
	*/		
		if ab_exe then	
			ls_result = lw_win.wf_othmiscw01p09('Start: ')
			wf_output("VarResult: Inherit Window Function = " + trim(ls_result),False)
			ls_result = 'BEIJING '
			lw_win.wf_othmiscw01p09_ref(ls_result)
			wf_output("VarResult: Inherit Window Function = " + trim(ls_result),False)			
		else
		end if
	Case 'INHMISCW01P02'
	/*
	   ¡¾¹¦ÄÜÃèÊö¡¿
	    ²âÊÔ¶àÖØ¼Ì³Ð(A->B->C)£¬Ò»¸öÊÂ¼þAÓÐ´úÂë£¬BÓÐ´úÂë£¬CÎÞ´úÂëµÄÇé¿ö

		¡¾±àÂëÃèÊö¡¿
		1.Ê¹ÓÃÈý²ã¼Ì³Ð(A->B->C)
		2.ÉèÖÃÒ»¸öÊÂ¼þÔÚA´°¿ÚÓÐ´úÂë£¬B´°¿ÚÓÐ´úÂë£¬C´°¿ÚÎÞ´úÂë
		3.Ö´ÐÐ²¢Êä³öÖµ

		¡¾ÆÚÍûÃèÊö¡¿
		
	*/
		if ab_exe then
			ls_result = lw_win.event ue_othmiscw01p10('Start: ')
			wf_output("VarResult: Inherit Window Event = " + trim(ls_result),False)
			ls_result = 'BEIJING '
			lw_win.event ue_othmiscw01p10_ref(ls_result)
			wf_output("VarResult: Inherit Window Event = " + trim(ls_result),False)	
		else
		end if
	Case 'INHMISCW01P03'
	/*
	   ¡¾¹¦ÄÜÃèÊö¡¿
	    ²âÊÔ¶àÖØ¼Ì³Ð(A->B->C)£¬Ò»¸öÊµÀý±äÁ¿AÎÞ´úÂë£¬BÓÐ´úÂë£¬CÓÐ´úÂëµÄÇé¿ö

		¡¾±àÂëÃèÊö¡¿
		1.Ê¹ÓÃÈý²ã¼Ì³Ð(A->B->C)
		2.ÉèÖÃÒ»¸ö±äÁ¿ÔÚA´°¿ÚÎÞ´úÂë£¬B´°¿ÚÓÐ´úÂë£¬C´°¿ÚÓÐ´úÂë
		3.Ö´ÐÐ²¢Êä³öÖµ

		¡¾ÆÚÍûÃèÊö¡¿
		
	*/		
		if ab_exe then
			wf_output("VarResult: is_b_result = " + string(lw_win.is_b_result),False)
			wf_output("VarResult: is_b_cons = " + string(lw_win.is_b_cons),False)
			wf_output("VarResult: is_c_result = " + string(lw_win.is_c_result),False)
			wf_output("VarResult: is_c_cons = " + string(lw_win.is_c_cons),False)			
		else
		end if
	Case 'INHMISCW01P04'
	/*
	   ¡¾¹¦ÄÜÃèÊö¡¿
	    ²âÊÔ¶àÖØ¼Ì³Ð(A->B->C)£¬Ò»¸öÊÂ¼þAÓÐ´úÂë£¬BÓÐ´úÂë²¢ÆÁ±Î¸¸´°¿Ú´úÂëÖ´ÐÐ£¬CÓÐ´úÂëµÄÇé¿ö

		¡¾±àÂëÃèÊö¡¿
		1.Ê¹ÓÃÈý²ã¼Ì³Ð(A->B->C)
		2.ÉèÖÃÒ»¸öÊÂ¼þÔÚA´°¿ÚÓÐ´úÂë£¬B´°¿ÚÓÐ´úÂëµ«ÆÁ±ÎµôÁË¸¸´°¿Ú´úÂëµÄÖ´ÐÐ£¬C´°¿ÚÓÐ´úÂë
		3.Ö´ÐÐ²¢Êä³öÖµ

		¡¾ÆÚÍûÃèÊö¡¿
		
	*/
		if ab_exe then
			ls_result = lw_win.event ue_othmiscw01p12('Start: ')
			wf_output("VarResult: Inherit Window Event = " + trim(ls_result),False)
			ls_result = 'BEIJING '
			lw_win.event ue_othmiscw01p12_ref(ls_result)
			wf_output("VarResult: Inherit Window Event = " + trim(ls_result),False)	
		else
		end if
	Case 'INHMISCW01P05'
	/*
	   ¡¾¹¦ÄÜÃèÊö¡¿
	    ²âÊÔ¶àÖØ¼Ì³Ð(A->B->C)£¬Ò»¸öÊÂ¼þA,B¶¼ÓÐ´úÂë£¬CÓÐ´úÂëÖ´ÐÐÍêÖ®ºóÔÙÖ´ÐÐ¸¸´°¿Ú´úÂëµÄÇé¿ö

		¡¾±àÂëÃèÊö¡¿
		1.Ê¹ÓÃÈý²ã¼Ì³Ð(A->B->C)
		2.ÉèÖÃÒ»¸öÊÂ¼þÔÚA´°¿ÚÓÐ´úÂë£¬B´°¿ÚÓÐ´úÂë£¬C´°¿ÚÓÐ´úÂëµ«ÆÁ±ÎµôÁË¸¸´°¿Ú´úÂëµÄÖ´ÐÐ£¬²¢ÇÒµÈC´°¿ÚÖÐµÄ´úÂëÖ´ÐÐÖÐ¼äµ÷ÓÃCallSupperÖ´ÐÐ¸¸´°¿Ú´úÂë,ÔÙÖ´ÐÐÍê±¾´°¿Ú´úÂë
		3.Ö´ÐÐ²¢Êä³öÖµ

		¡¾ÆÚÍûÃèÊö¡¿
		
	*/

		if ab_exe then			
			ls_result = lw_win.event ue_othmiscw01p13('Start: ')
			wf_output("VarResult: Inherit Window Event = " + trim(ls_result),False)
			ls_result = 'BEIJING '
			lw_win.event ue_othmiscw01p13_ref(ls_result)
			wf_output("VarResult: Inherit Window Event = " + trim(ls_result),False)	
		else
		end if
End Choose

destroy lw_win
if ab_exe then
	wf_postrun(al_row)
end if







end event

type mle_phenomena from w_templet`mle_phenomena within w_inhmiscw01
end type

type cb_autoparse from w_templet`cb_autoparse within w_inhmiscw01
end type

type cb_wrrun from w_templet`cb_wrrun within w_inhmiscw01
end type

type cb_genconfigfile from w_templet`cb_genconfigfile within w_inhmiscw01
end type

type dw_info from w_templet`dw_info within w_inhmiscw01
end type

type pb_saveexpect from w_templet`pb_saveexpect within w_inhmiscw01
boolean visible = true
end type

type pb_runnext from w_templet`pb_runnext within w_inhmiscw01
end type

type pb_runall from w_templet`pb_runall within w_inhmiscw01
end type

type pb_run from w_templet`pb_run within w_inhmiscw01
end type

type pb_end from w_templet`pb_end within w_inhmiscw01
end type

type mle_expectdesc from w_templet`mle_expectdesc within w_inhmiscw01
end type

type mle_describe from w_templet`mle_describe within w_inhmiscw01
end type

type mle_factual from w_templet`mle_factual within w_inhmiscw01
end type

type mle_expect from w_templet`mle_expect within w_inhmiscw01
end type

type dw_testpoint from w_templet`dw_testpoint within w_inhmiscw01
end type

type gb_1 from w_templet`gb_1 within w_inhmiscw01
end type

type gb_2 from w_templet`gb_2 within w_inhmiscw01
end type

type gb_3 from w_templet`gb_3 within w_inhmiscw01
end type

type gb_4 from w_templet`gb_4 within w_inhmiscw01
end type

type gb_5 from w_templet`gb_5 within w_inhmiscw01
end type

type gb_phenomena from w_templet`gb_phenomena within w_inhmiscw01
end type


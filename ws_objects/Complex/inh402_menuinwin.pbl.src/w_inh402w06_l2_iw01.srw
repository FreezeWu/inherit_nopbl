$PBExportHeader$w_inh402w06_l2_iw01.srw
forward
global type w_inh402w06_l2_iw01 from w_inh402w01_l1_winandmenu
end type
end forward

global type w_inh402w06_l2_iw01 from w_inh402w01_l1_winandmenu
string menuname = "m_inh402_l1_no2"
end type
global w_inh402w06_l2_iw01 w_inh402w06_l2_iw01

on w_inh402w06_l2_iw01.create
call super::create
if IsValid(this.MenuID) then destroy(this.MenuID)
if this.MenuName = "m_inh402_l1_no2" then this.MenuID = create m_inh402_l1_no2
end on

on w_inh402w06_l2_iw01.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

type cb_execute from w_inh402w01_l1_winandmenu`cb_execute within w_inh402w06_l2_iw01
end type

type lb_items from w_inh402w01_l1_winandmenu`lb_items within w_inh402w06_l2_iw01
end type

type cb_clear from w_inh402w01_l1_winandmenu`cb_clear within w_inh402w06_l2_iw01
end type

type cb_close from w_inh402w01_l1_winandmenu`cb_close within w_inh402w06_l2_iw01
end type

type mle_output from w_inh402w01_l1_winandmenu`mle_output within w_inh402w06_l2_iw01
end type

type mle_view from w_inh402w01_l1_winandmenu`mle_view within w_inh402w06_l2_iw01
end type

type gb_3 from w_inh402w01_l1_winandmenu`gb_3 within w_inh402w06_l2_iw01
end type

type gb_5 from w_inh402w01_l1_winandmenu`gb_5 within w_inh402w06_l2_iw01
end type

type mle_describe from w_inh402w01_l1_winandmenu`mle_describe within w_inh402w06_l2_iw01
end type

type gb_1 from w_inh402w01_l1_winandmenu`gb_1 within w_inh402w06_l2_iw01
end type

type gb_2 from w_inh402w01_l1_winandmenu`gb_2 within w_inh402w06_l2_iw01
end type


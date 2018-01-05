$PBExportHeader$w_b.srw
forward
global type w_b from w_a
end type
end forward

global type w_b from w_a
end type
global w_b w_b

type variables
PROTECTED  integer  ii_b_num = 6
PRIVATE    long     il_b_row = 7

public string is_b_result = 'w_b window public variables'
constant string  is_b_cons = 'w_b window constant variables'

PROTECTED:
boolean ib_b_boolean = True
string  is_b_test = 'TEST'

constant long  il_b_num1 = 234
end variables

forward prototypes
public function string wf_othmiscw01p12 (string as_values)
end prototypes

public function string wf_othmiscw01p12 (string as_values);as_values += 'For '

return as_values
end function

on w_b.create
call super::create
end on

on w_b.destroy
call super::destroy
end on

event ue_othmiscw01p10;call super::ue_othmiscw01p10;as_return += 'For PowerBuilder '
return as_return
end event

event ue_othmiscw01p10_ref;call super::ue_othmiscw01p10_ref;as_return = 'CHINA '
end event

event ue_othmiscw01p12;as_parm += 'PowerBuilder '

return as_parm
end event

event ue_othmiscw01p12_ref;as_parm += 'SHENZHEN '
end event

event ue_othmiscw01p13;call super::ue_othmiscw01p13;as_parm += 'PowerBuilder '

return as_parm
end event

event ue_othmiscw01p13_ref;call super::ue_othmiscw01p13_ref;as_parm += 'FOR '
end event


$PBExportHeader$w_c.srw
forward
global type w_c from w_b
end type
end forward

global type w_c from w_b
integer width = 2642
integer height = 1696
end type
global w_c w_c

type variables
PROTECTED  integer  ii_c_num = 6
PRIVATE    long     il_c_row = 7

public string is_c_result = 'w_c window public variables'
constant string  is_c_cons = 'w_c window constant variables'

PROTECTED:
boolean ib_c_boolean = True
string  is_c_test = 'TEST'

constant long  il_c_num1 = 234


end variables

forward prototypes
public function string wf_othmiscw01p09 (string as_parm)
public subroutine wf_othmiscw01p09_ref (ref string as_parm)
end prototypes

public function string wf_othmiscw01p09 (string as_parm);string ls_return

ls_return = as_parm + ' FOR POWERBUILDER'

return ls_return
end function

public subroutine wf_othmiscw01p09_ref (ref string as_parm);as_parm += ' Shenzhen '
end subroutine

on w_c.create
call super::create
end on

on w_c.destroy
call super::destroy
end on

event ue_othmiscw01p12;call super::ue_othmiscw01p12;as_parm += ' Appeon '

return as_parm
end event

event ue_othmiscw01p12_ref;call super::ue_othmiscw01p12_ref;as_parm += 'GUANGZHOU '
end event

event ue_othmiscw01p13;as_parm += ' SYBASE '

CALL SUPER ::ue_othmiscw01p13;
return as_parm
end event

event ue_othmiscw01p13_ref;as_parm += 'POWERBUILDER '
CALL SUPER ::ue_othmiscw01p13_REF;
end event


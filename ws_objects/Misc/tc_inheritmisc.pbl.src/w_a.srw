$PBExportHeader$w_a.srw
forward
global type w_a from window
end type
end forward

global type w_a from window
integer width = 2533
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event type string ue_othmiscw01p10 ( string as_return )
event ue_othmiscw01p10_ref ( ref string as_return )
event type string ue_othmiscw01p12 ( string as_parm )
event ue_othmiscw01p12_ref ( ref string as_parm )
event type string ue_othmiscw01p13 ( string as_parm )
event ue_othmiscw01p13_ref ( ref string as_parm )
end type
global w_a w_a

forward prototypes
public function string wf_othmiscw01p09 (string as_parm)
public subroutine wf_othmiscw01p09_ref (ref string as_parm)
public function string wf_othmiscw01p12 (string as_values)
end prototypes

event type string ue_othmiscw01p10(string as_return);as_return += 'Appeon '
return as_return	
end event

event ue_othmiscw01p10_ref(ref string as_return);as_return = 'SHENZHEN '
end event

event type string ue_othmiscw01p12(string as_parm);as_parm += 'For '

return as_parm
end event

event ue_othmiscw01p12_ref(ref string as_parm);as_parm = 'CHINA '
end event

event ue_OTHMISCW01P13;as_parm += 'Appeon '

return as_parm
end event

event ue_othmiscw01p13_ref(ref string as_parm);as_parm += 'APPEON '


end event

public function string wf_othmiscw01p09 (string as_parm);string ls_return

ls_return = as_parm + 'Appeon'

return ls_return


end function

public subroutine wf_othmiscw01p09_ref (ref string as_parm);as_parm += ' China '
end subroutine

public function string wf_othmiscw01p12 (string as_values);as_values += 'Appeon '

return as_values
end function

on w_a.create
end on

on w_a.destroy
end on


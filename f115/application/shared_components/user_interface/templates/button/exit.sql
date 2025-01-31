prompt --application/shared_components/user_interface/templates/button/exit
begin
--   Manifest
--     BUTTON TEMPLATE: EXIT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(385423406715493294)
,p_template_name=>'Exit'
,p_internal_name=>'EXIT'
,p_template=>'<button class="t-Button t-Button--icon t-Button--hot t-Button--danger " #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-window-close-o " aria-hidden="true"></span><span class="t-Button-'
||'label">Exit</span><span class="t-Icon t-Icon--right " aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon t-Button--hot t-Button--danger " #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-window-close-o " aria-hidden="true"></span><span class="t-Button-'
||'label">Exit</span><span class="t-Icon t-Icon--right " aria-hidden="true"></span></button>'
,p_reference_id=>241988005958567797
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--danger'
,p_theme_id=>101
);
wwv_flow_imp.component_end;
end;
/

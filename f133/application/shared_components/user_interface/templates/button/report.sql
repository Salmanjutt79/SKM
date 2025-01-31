prompt --application/shared_components/user_interface/templates/button/report
begin
--   Manifest
--     BUTTON TEMPLATE: REPORT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(225752792563730732)
,p_template_name=>'Delete'
,p_internal_name=>'REPORT'
,p_template=>'<button class="t-Button t-Button--icon   " #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-trash #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">Delete</span>'
||'<span class="t-Icon t-Icon--right " aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon  " #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-trash #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">Delete</span><'
||'span class="t-Icon t-Icon--right " aria-hidden="true"></span></button>'
,p_reference_id=>241979172384497065
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--primary:t-Button--iconLeft'
,p_theme_id=>101
);
wwv_flow_imp.component_end;
end;
/

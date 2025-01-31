prompt --application/shared_components/user_interface/templates/button/btnadd
begin
--   Manifest
--     BUTTON TEMPLATE: BTNADD
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
 p_id=>wwv_flow_imp.id(225759392563730735)
,p_template_name=>'Add'
,p_internal_name=>'BTNADD'
,p_template=>'<button class="t-Button t-Button--icon u-hot" style="border-radius: 5px; width:100px" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-plus" aria-hidden="true"></span><span class="t-Butt'
||'on-label"> Add</span><span class="t-Icon t-Icon--right" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>254873168904983993
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconLeft'
,p_theme_id=>101
);
wwv_flow_imp.component_end;
end;
/

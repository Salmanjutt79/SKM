prompt --application/shared_components/user_interface/templates/button/btncancel
begin
--   Manifest
--     BUTTON TEMPLATE: BTNCANCEL
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
 p_id=>wwv_flow_imp.id(225764786714730737)
,p_template_name=>'Cancel'
,p_internal_name=>'BTNCANCEL'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" style="border-radius: 5px;" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">Cancel</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>254876061919983998
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>101
);
wwv_flow_imp.component_end;
end;
/

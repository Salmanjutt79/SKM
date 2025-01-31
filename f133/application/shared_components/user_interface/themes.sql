prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(224642769375711279)
,p_theme_id=>101
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>72147449636198067
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(224409330812711088)
,p_default_dialog_template=>wwv_flow_imp.id(224400786639711085)
,p_error_template=>wwv_flow_imp.id(224398152921711083)
,p_printer_friendly_template=>wwv_flow_imp.id(224409330812711088)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(224398152921711083)
,p_default_button_template=>wwv_flow_imp.id(224557729654711191)
,p_default_region_template=>wwv_flow_imp.id(224479134835711131)
,p_default_chart_template=>wwv_flow_imp.id(224479134835711131)
,p_default_form_template=>wwv_flow_imp.id(224479134835711131)
,p_default_reportr_template=>wwv_flow_imp.id(224479134835711131)
,p_default_tabform_template=>wwv_flow_imp.id(224479134835711131)
,p_default_wizard_template=>wwv_flow_imp.id(224479134835711131)
,p_default_menur_template=>wwv_flow_imp.id(224491510530711138)
,p_default_listr_template=>wwv_flow_imp.id(224479134835711131)
,p_default_irr_template=>wwv_flow_imp.id(224469384760711125)
,p_default_report_template=>wwv_flow_imp.id(224514136203711166)
,p_default_label_template=>wwv_flow_imp.id(224555229740711188)
,p_default_menu_template=>wwv_flow_imp.id(224559348106711192)
,p_default_calendar_template=>wwv_flow_imp.id(224559454498711200)
,p_default_list_template=>wwv_flow_imp.id(224539101625711178)
,p_default_nav_list_template=>wwv_flow_imp.id(224548710623711185)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(224548710623711185)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(224549727577711185)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(224420790750711104)
,p_default_dialogr_template=>wwv_flow_imp.id(224417960058711103)
,p_default_option_label=>wwv_flow_imp.id(224555229740711188)
,p_default_required_label=>wwv_flow_imp.id(224556574907711190)
,p_default_navbar_list_template=>wwv_flow_imp.id(224548377108711183)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(101),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>197
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

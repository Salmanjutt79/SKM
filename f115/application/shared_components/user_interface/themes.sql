prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 115
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(14617838885908290)
,p_theme_id=>101
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>72147449636198067
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(14479247264908220)
,p_default_dialog_template=>wwv_flow_imp.id(14459111770908210)
,p_error_template=>wwv_flow_imp.id(14460643165908211)
,p_printer_friendly_template=>wwv_flow_imp.id(14479247264908220)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(14460643165908211)
,p_default_button_template=>wwv_flow_imp.id(14614821261908288)
,p_default_region_template=>wwv_flow_imp.id(14542292946908251)
,p_default_chart_template=>wwv_flow_imp.id(14542292946908251)
,p_default_form_template=>wwv_flow_imp.id(14542292946908251)
,p_default_reportr_template=>wwv_flow_imp.id(14542292946908251)
,p_default_tabform_template=>wwv_flow_imp.id(14542292946908251)
,p_default_wizard_template=>wwv_flow_imp.id(14542292946908251)
,p_default_menur_template=>wwv_flow_imp.id(14554375113908257)
,p_default_listr_template=>wwv_flow_imp.id(14542292946908251)
,p_default_irr_template=>wwv_flow_imp.id(14537985437908249)
,p_default_report_template=>wwv_flow_imp.id(14577287341908269)
,p_default_label_template=>wwv_flow_imp.id(14612352542908287)
,p_default_menu_template=>wwv_flow_imp.id(14616451605908289)
,p_default_calendar_template=>wwv_flow_imp.id(14616571853908289)
,p_default_list_template=>wwv_flow_imp.id(14610401816908286)
,p_default_nav_list_template=>wwv_flow_imp.id(14601472134908281)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(14601472134908281)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(14599686320908280)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(14490621534908226)
,p_default_dialogr_template=>wwv_flow_imp.id(14487809253908224)
,p_default_option_label=>wwv_flow_imp.id(14612352542908287)
,p_default_required_label=>wwv_flow_imp.id(14613643169908287)
,p_default_navbar_list_template=>wwv_flow_imp.id(14602412299908282)
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

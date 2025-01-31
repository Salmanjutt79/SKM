prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 115
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(115)
,p_theme_id=>101
,p_home_url=>'f?p=100:1:&SESSION.'
,p_login_url=>'f?p=100.:8:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(53762053183385741)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(14599686320908280)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#app-icon.css?version=#APP_VERSION#',
'#WORKSPACE_FILES#UserProfile.css',
'#WORKSPACE_FILES#apps/css/global#MIN#.css',
'#APP_FILES#hidePasswordEye.css'))
,p_javascript_file_urls=>'#WORKSPACE_FILES#apps/js/global.v1.0.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(14639202674908300)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(14602412299908282)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/

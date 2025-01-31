prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(133)
,p_theme_id=>101
,p_home_url=>'f?p=100:1:&SESSION.'
,p_login_url=>'f?p=100.:8:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(224688431417754073)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(224549727577711185)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#app-icon.css?version=#APP_VERSION#',
'#WORKSPACE_FILES#CSS/UserProfile#MIN#.css'))
,p_javascript_file_urls=>'#WORKSPACE_FILES#apps/js/global.v1.0.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(224665531400711291)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(224548377108711183)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/

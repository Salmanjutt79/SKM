prompt --application/create_application
begin
--   Manifest
--     FLOW: 115
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HMIS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Radiation')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'RADIATION')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'2EE91FE3213182088DC8BBCE4FC84A388EF9CB710678C7E2BC1144B7CCC4ABA1'
,p_bookmark_checksum_function=>'SH512'
,p_max_session_idle_sec=>3600
,p_compatibility_mode=>'21.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(14451198344908206)
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'#WORKSPACE_FILES#nav_bar_logo.JPG'
,p_app_builder_icon_name=>'radiationLogo.png'
,p_favicons=>'<link rel="shortcut icon" href="#APP_FILES#skm.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('\00A9 Shaukat Khanum Memorial Trust (2000-2022). All rights reserved. Release 1.0')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_vpd=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' security.pkg_login_apex.set_context_for_apex;',
'end;'))
,p_vpd_teardown_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  V_CLIENT_ID VARCHAR2(100); ',
'BEGIN ',
'  V_CLIENT_ID := NVL(SYS_CONTEXT(''USERENV'', ''CLIENT_IDENTIFIER''), ',
'                     HIS.GET_CONTEXT_CLIENT()); ',
'/* ',
'  IF V_CLIENT_ID IS NOT NULL THEN ',
'      HIS.SET_CONTEXT(''CLEAR'', V_CLIENT_ID); ',
'  END IF; ',
'  */ ',
'   ',
'END;'))
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(27037315221527646)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'RADIATION.ERROR_HANDLING'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Radiation'
,p_last_updated_by=>'FAHADWAQAR'
,p_last_upd_yyyymmddhh24miss=>'20250121200855'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>23
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_copyright_banner=>unistr('\00A9 Shaukat Khanum Memorial Trust (2000-2022). All rights reserved.')
);
wwv_flow_imp.component_end;
end;
/

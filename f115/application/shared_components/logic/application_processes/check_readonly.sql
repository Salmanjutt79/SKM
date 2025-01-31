prompt --application/shared_components/logic/application_processes/check_readonly
begin
--   Manifest
--     APPLICATION PROCESS: CHECK_READONLY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(273696506457380739)
,p_process_sequence=>-1
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_READONLY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_error.add_error (',
'    p_message          => ''This page is in read-only mode, cannot proceed.'',',
'    p_display_location => apex_error.c_inline_in_notification );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APEX_PAGE.IS_READ_ONLY'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

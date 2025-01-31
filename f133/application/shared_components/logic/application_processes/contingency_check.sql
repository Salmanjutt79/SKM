prompt --application/shared_components/logic/application_processes/contingency_check
begin
--   Manifest
--     APPLICATION PROCESS: Contingency_Check
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(308236774247906572)
,p_process_sequence=>1
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Contingency_Check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_javascript.add_onload_code (',
'    p_code => ''$(document).ready(()=>addContigencyInfo());'' );'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>':GV_READ_ONLY = ''Y'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

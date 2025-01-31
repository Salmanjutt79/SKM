prompt --application/shared_components/logic/application_processes/get_previous_page_id
begin
--   Manifest
--     APPLICATION PROCESS: GET_PREVIOUS_PAGE_ID
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
 p_id=>wwv_flow_imp.id(415850408725103386)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PREVIOUS_PAGE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_PAGE_ID VARCHAR2(150) := ''#'' || :APP_ID || ''@'' || :APP_PAGE_ID;',
'BEGIN',
'',
'  IF INSTR(:GV_PAGE_HISTORY, L_PAGE_ID) > 0 THEN',
'    :GV_PAGE_HISTORY := SUBSTR(:GV_PAGE_HISTORY,',
'                               0,',
'                               INSTR(:GV_PAGE_HISTORY, L_PAGE_ID) - 1);',
'  END IF;',
'',
'  IF APEX_PAGE.GET_PAGE_MODE(:APP_ID, :APP_PAGE_ID) = ''NORMAL'' AND',
'     NOT (:APP_ID = ''209'' AND :APP_PAGE_ID = ''2'') AND',
'     :APP_PAGE_ID <> ''1000'' THEN',
'    :GV_PAGE_HISTORY := :GV_PAGE_HISTORY || L_PAGE_ID;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

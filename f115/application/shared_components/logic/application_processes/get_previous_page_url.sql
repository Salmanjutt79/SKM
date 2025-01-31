prompt --application/shared_components/logic/application_processes/get_previous_page_url
begin
--   Manifest
--     APPLICATION PROCESS: GET_PREVIOUS_PAGE_URL
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
 p_id=>wwv_flow_imp.id(415981196509544583)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PREVIOUS_PAGE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_URL       VARCHAR2(4000);',
'  l_tot_pages number := REGEXP_COUNT(:GV_PAGE_HISTORY, ''#'');',
'  l_prev_page VARCHAR2(150);',
'  L_START     NUMBER;',
'  L_END       NUMBER;',
'BEGIN',
'  L_START     := INSTR(:GV_PAGE_HISTORY, ''#'', 1, l_tot_pages - 1);',
'  L_END       := INSTR(:GV_PAGE_HISTORY, ''#'', 1, l_tot_pages);',
'  l_prev_page := SUBSTR(:GV_PAGE_HISTORY, L_START, L_END - L_START);',
'  L_URL       := APEX_PAGE.GET_URL(p_application => SUBSTR(l_prev_page,',
'                                                           2,',
'                                                           INSTR(l_prev_page,',
'                                                                 ''@'') - 2),',
'                                   p_page        => SUBSTR(l_prev_page,',
'                                                           INSTR(l_prev_page,',
'                                                                 ''@'') + 1) /*,',
'                                                                                                                                                                                                            p_items       => APEX_APPLICATION.G_x03,',
'                                                                                                                                                                                                            p_values      => APEX_APPLICATION.G_x04*/);',
'  L_URL       := APEX_UTIL.PREPARE_URL(L_URL);',
'  HIS.PKG_JSON_UTIL.RETURN_JSON(json_object_t(''{"url":"'' || L_URL || ''"}''));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

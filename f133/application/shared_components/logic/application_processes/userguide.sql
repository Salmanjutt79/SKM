prompt --application/shared_components/logic/application_processes/userguide
begin
--   Manifest
--     APPLICATION PROCESS: UserGuide
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
 p_id=>wwv_flow_imp.id(226827985016210250)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UserGuide'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	V_COUNT NUMBER := 0;',
'    V_URL VARCHAR2(4000);',
'BEGIN',
'	APEX_JSON.OPEN_OBJECT;',
'		BEGIN',
'			-- SELECT 1 into V_COUNT FROM DUAL;',
'        V_URL := apex_page.get_url (',
'        p_application => 207,',
'        p_page        => 2,',
'        p_clear_cache => ''CIR'',',
'        p_items       => ''P2_USER_NAME,P2_APP_ID,P2_PAGE_ID'',',
'        p_values      => :GV_USER_MRNO || '','' || :APP_ID || '','' || :APP_PAGE_ID );',
'',
'		EXCEPTION',
'			WHEN OTHERS THEN',
'			HIS.MESSAGE_ENTRY_CATEGORY(:APP_ID||''--''||:APP_PAGE_ID||''--''||SQLERRM, ''USERGUIDES'');',
'		END;',
'    ',
'    APEX_JSON.WRITE(''user_mrno'',:GV_USER_MRNO);',
'    APEX_JSON.WRITE(''app_id'',:APP_ID);',
'	APEX_JSON.WRITE(''app_page_id'',:APP_PAGE_ID);',
'    APEX_JSON.WRITE(''page_url'',V_URL);',
'	',
' -- Close the Object instance',
'    APEX_JSON.CLOSE_OBJECT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

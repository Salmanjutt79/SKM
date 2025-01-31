prompt --application/shared_components/logic/application_processes/addtofavorite
begin
--   Manifest
--     APPLICATION PROCESS: AddToFavorite
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
 p_id=>wwv_flow_imp.id(226824112935200165)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AddToFavorite'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_OBJECT_CODE DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE := NULL;',
'  V_OBJECT_NAME DEFINITIONS.OBJECTS.NAME%TYPE;',
'  V_COUNT       NUMBER := 0;',
'BEGIN',
'  APEX_JSON.OPEN_OBJECT;',
'  IF :APP_ID = 100 AND :APP_PAGE_ID = 1 THEN',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  END IF;',
'',
'  BEGIN',
'    SELECT O.OBJECT_CODE, O.DISPLAY_NAME',
'      INTO V_OBJECT_CODE, V_OBJECT_NAME',
'      FROM DEFINITIONS.OBJECTS O, DEFINITIONS.SCHEMAS S',
'     WHERE O.SCHEMA_ID = S.SCHEMA_ID',
'       AND S.APP_ID = :APP_ID',
'       AND O.PAGE_ID = :APP_PAGE_ID;',
'  ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      V_OBJECT_CODE := null;',
'      HIS.MESSAGE_ENTRY_CATEGORY(:APP_ID || ''--'' || :APP_PAGE_ID || ''--'' || SQLERRM, ''ADDTOFAV'');',
'  END;',
'  IF V_OBJECT_CODE IS NOT NULL THEN',
'    SELECT COUNT(1)',
'      INTO V_COUNT',
'      FROM security.tree_user_favorities T',
'     WHERE T.MRNO = :GV_USER_MRNO',
'       AND T.OBJECT_KEY = V_OBJECT_CODE;',
'    IF V_COUNT = 0 THEN',
'      INSERT INTO security.tree_user_favorities',
'        (mrno, object_key, node_name)',
'      VALUES',
'        (:GV_USER_MRNO, V_OBJECT_CODE, V_OBJECT_NAME);',
'      COMMIT;',
'        APEX_JSON.WRITE(''message'', ''Object added to favorite successfully.'');',
'    else',
'        APEX_JSON.WRITE(''message'', ''Object already exist.'');',
'    END IF;',
'  END IF;',
'  --APEX_JSON.WRITE( p_name  => ''FROM_SERVER'' , p_value => L_GET_REPORT_FROM  ) ;',
'  -- Close the Object instance',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    HIS.MESSAGE_ENTRY_CATEGORY(:APP_ID || ''--'' || :APP_PAGE_ID || ''--'' || SQLERRM, ''ADDTOFAV'');',
'    ROLLBACK;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

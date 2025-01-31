prompt --application/shared_components/logic/application_processes/skmnavigatebackend
begin
--   Manifest
--     APPLICATION PROCESS: skmNavigateBackend
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
 p_id=>wwv_flow_imp.id(71234117338250899)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'skmNavigateBackend'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF APEX_APPLICATION.G_x01 = ''GET_DEF'' THEN',
'    DECLARE',
'      L_OBJECT_CODE         DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE := APEX_APPLICATION.G_x02;',
'      L_CALLING_OBJECT_CODE DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE := APEX_APPLICATION.G_x03;',
'      L_APP_ID              VARCHAR2(250);',
'      L_PAGE_ID             VARCHAR2(250);',
'      L_CALL_APP_ID         VARCHAR2(250);',
'      L_CALL_PAGE_ID        VARCHAR2(250);',
'      PROCEDURE GET_CODE_FRM(P_OBJECT_CODE IN VARCHAR2,',
'                             P_APP_ID      OUT VARCHAR2,',
'                             P_PAGE_ID     OUT VARCHAR2) IS',
'      BEGIN',
'        SELECT (SELECT APP_ID',
'                  FROM DEFINITIONS.SCHEMAS S',
'                 WHERE S.SCHEMA_ID = T.SCHEMA_ID),',
'               T.PAGE_ID',
'          INTO P_APP_ID, P_PAGE_ID',
'          FROM DEFINITIONS.OBJECTS T',
'         WHERE T.OBJECT_TYPE_ID = ''APX''',
'           AND T.NAME = (SELECT S.NAME',
'                           FROM DEFINITIONS.OBJECTS S',
'                          WHERE S.OBJECT_CODE = P_OBJECT_CODE);',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'      PROCEDURE GET_CODE_APX(P_OBJECT_CODE IN VARCHAR2,',
'                             P_APP_ID      OUT VARCHAR2,',
'                             P_PAGE_ID     OUT VARCHAR2) IS',
'      BEGIN',
'        SELECT (SELECT APP_ID',
'                  FROM DEFINITIONS.SCHEMAS S',
'                 WHERE S.SCHEMA_ID = O.SCHEMA_ID) APP_ID,',
'               O.PAGE_ID',
'          INTO P_APP_ID, P_PAGE_ID',
'          FROM DEFINITIONS.OBJECTS O',
'         WHERE O.OBJECT_CODE = P_OBJECT_CODE;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'    BEGIN',
'      IF L_OBJECT_CODE IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001,',
'                                ''ObjectCode is null, cannot proceed.'');',
'      ELSIF L_CALLING_OBJECT_CODE IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001,',
'                                ''Calling ObjectCode is null, cannot proceed.'');',
'      END IF;',
'      --',
'      IF L_OBJECT_CODE LIKE ''%FRM%'' THEN',
'        GET_CODE_FRM(L_OBJECT_CODE, L_APP_ID, L_PAGE_ID);',
'      ELSIF INSTR(L_OBJECT_CODE, ''#'') > 0 AND INSTR(L_OBJECT_CODE, ''@'') > 0 THEN',
'        L_APP_ID  := SUBSTR(L_OBJECT_CODE, 2, INSTR(L_OBJECT_CODE, ''@'') - 2);',
'        L_PAGE_ID := SUBSTR(L_OBJECT_CODE, INSTR(L_OBJECT_CODE, ''@'') + 1);',
'      ELSIF L_OBJECT_CODE LIKE ''%APX%'' THEN',
'        GET_CODE_APX(L_OBJECT_CODE, L_APP_ID, L_PAGE_ID);',
'      ELSE',
'        RAISE_APPLICATION_ERROR(-20001,',
'                                ''Invalid ObjectCode: '' || L_OBJECT_CODE);',
'      END IF;',
'      --',
'      IF L_CALLING_OBJECT_CODE LIKE ''%FRM%'' THEN',
'        GET_CODE_FRM(L_CALLING_OBJECT_CODE, L_CALL_APP_ID, L_CALL_PAGE_ID);',
'      ELSIF INSTR(L_CALLING_OBJECT_CODE, ''#'') > 0 AND',
'            INSTR(L_CALLING_OBJECT_CODE, ''@'') > 0 THEN',
'        L_CALL_APP_ID  := SUBSTR(L_CALLING_OBJECT_CODE,',
'                                 2,',
'                                 INSTR(L_CALLING_OBJECT_CODE, ''@'') - 2);',
'        L_CALL_PAGE_ID := SUBSTR(L_CALLING_OBJECT_CODE,',
'                                 INSTR(L_CALLING_OBJECT_CODE, ''@'') + 1);',
'      ELSIF L_CALLING_OBJECT_CODE LIKE ''%APX%'' THEN',
'        GET_CODE_APX(L_CALLING_OBJECT_CODE, L_CALL_APP_ID, L_CALL_PAGE_ID);',
'      ELSE',
'        RAISE_APPLICATION_ERROR(-20001,',
'                                ''Invalid Calling ObjectCode: '' ||',
'                                L_CALLING_OBJECT_CODE);',
'      END IF;',
'      IF L_APP_ID IS NOT NULL AND L_PAGE_ID IS NOT NULL AND',
'         L_CALL_APP_ID IS NOT NULL AND L_CALL_PAGE_ID IS NOT NULL THEN',
'        HIS.PKG_JSON_UTIL.RETURN_JSON(HIS.PKG_JSON_UTIL.GET_APX_OBJECT(P_APP_ID          => L_APP_ID,',
'                                                                       P_PAGE_ID         => L_PAGE_ID,',
'                                                                       P_CALLING_APP_ID  => L_CALL_APP_ID,',
'                                                                       P_CALLING_PAGE_ID => L_CALL_PAGE_ID));',
'      ELSE',
'        RAISE_APPLICATION_ERROR(-20001,',
'                                ''Unable to find App ID:('' || L_APP_ID ||',
'                                '')/Page Id:('' || L_PAGE_ID ||',
'                                '')/Call App ID:('' || L_CALL_APP_ID ||',
'                                '')/Call Page Id:('' || L_CALL_PAGE_ID || '')'');',
'      END IF;',
'    END;',
'  ELSIF APEX_APPLICATION.G_x01 = ''GET_OBJCODE'' THEN',
'  --',
'  -- TO GET OBJECT CODE BASED ON NOTE ID',
'  --',
'    DECLARE',
'      L_NODE_ID     SECURITY.TREE_MENU_DETAIL.NODE_ID%TYPE := APEX_APPLICATION.G_x02;',
'      L_ADM_TYPE    SECURITY.TREE_MENU_DETAIL.IPD_OPD%TYPE := APEX_APPLICATION.G_x03;',
'      L_OBJECT_CODE SECURITY.TREE_MENU_DETAIL.OBJECT_CODE%TYPE;',
'      L_JSON    VARCHAR2(200);',
'    BEGIN',
'        BEGIN',
'          SELECT OBJECT_CODE',
'            INTO L_OBJECT_CODE',
'            FROM SECURITY.TREE_MENU_DETAIL T',
'           WHERE T.NODE_ID = L_NODE_ID',
'             AND T.IPD_OPD = L_ADM_TYPE;',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'           BEGIN',
'                SELECT T.OBJECT_SCHEMA_ID || T.OBJECT_TYPE_ID|| T.OBJECT_ID',
'                INTO L_OBJECT_CODE',
'                  FROM SECURITY.TREE_MENU T',
'                 WHERE T.NODE_ID = L_NODE_ID;',
'           EXCEPTION',
'           WHEN OTHERS THEN',
'           NULL;',
'           END;',
'        END;',
'        L_JSON := ''{"OBJECT_CODE": "''||L_OBJECT_CODE||''"}'';',
'        HIS.PKG_JSON_UTIL.RETURN_JSON(L_JSON);',
'    END;',
'  ELSE',
'    DECLARE',
'      L_URL VARCHAR2(4000);',
'    BEGIN',
'      L_URL := APEX_PAGE.GET_URL(p_application => APEX_APPLICATION.G_x02,',
'                                 p_page        => APEX_APPLICATION.G_x03,',
'                                 p_items       => APEX_APPLICATION.G_x04,',
'                                 p_values      => APEX_APPLICATION.G_x05);',
'      HIS.PKG_JSON_UTIL.RETURN_JSON(json_object_t(''{"url":"'' || L_URL || ''"}''));',
'    END;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

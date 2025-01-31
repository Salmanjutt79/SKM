prompt --application/shared_components/navigation/lists/treemenu
begin
--   Manifest
--     LIST: TreeMenu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(224688431417754073)
,p_name=>'TreeMenu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH HIERARCHY AS',
' (SELECT SYS_CONNECT_BY_PATH(DECODE(TM.DISPLAY_ORDER,',
'                                    0,',
'                                    TM.NODE_NAME,',
'                                    LPAD(TO_CHAR(TM.DISPLAY_ORDER), 4, ''0'') ||',
'                                    TM.NODE_NAME),',
'                             ''|'') AS PATH,',
'         TM.DEPTH AS INIT_STATE,',
'         LEVEL AS LVL,',
'         TM.NODE_NAME AS SCREEN_NAME,',
'         NULL AS ICON,',
'         TM.NODE_ID,',
'         CASE',
'           WHEN S.APP_ID IS NOT NULL THEN',
'            ''f?p='' || S.APP_ID || '':'' || O.PAGE_ID || '':&APP_SESSION.''',
'           ELSE',
'            NULL',
'         END AS TARGET,',
'         T.DISPLAY_ORDER,',
'         S.APP_ID||''.''||O.PAGE_ID OBJECT_LINK',
'    FROM SECURITY.EMP_TREE_MENU TM,',
'         DEFINITIONS.OBJECTS    O,',
'         DEFINITIONS.SCHEMAS    S,',
'        SECURITY.TREE_MENU T',
'   WHERE TM.OBJECT_SCHEMA_ID = O.SCHEMA_ID(+)',
'     AND TM.OBJECT_TYPE_ID = O.OBJECT_TYPE_ID(+)',
'     AND TM.OBJECT_ID = O.OBJECT_ID(+)',
'     AND O.SCHEMA_ID = S.SCHEMA_ID(+)',
'     AND (O.OBJECT_TYPE_ID = ''APX'' OR O.OBJECT_TYPE_ID IS NULL)',
'     AND TM.NODE_ID = T.NODE_ID',
'     AND (NVL(T.PLATFORM, ''W'') = CASE',
'           WHEN NVL(:IS_MOBILE, ''N'') = ''N'' THEN',
'            ''W''',
'           ELSE',
'            ''M''',
'         END OR NVL(T.PLATFORM, ''W'') = ''B'')',
'   START WITH TM.PARENT_NODE_ID IS NULL',
'          AND TM.MRNO = :APP_USER',
'          AND TM.LOCATION_ID = :GV_LOCATION_ID',
'          AND (NVL(T.PLATFORM, ''W'') = CASE',
'                WHEN NVL(:IS_MOBILE, ''N'') = ''N'' THEN',
'                 ''W''',
'                ELSE',
'                 ''M''',
'              END OR NVL(T.PLATFORM, ''W'') = ''B'')',
'  CONNECT BY PRIOR TM.NODE_ID = TM.PARENT_NODE_ID',
'         AND TM.MRNO = :APP_USER',
'         AND TM.LOCATION_ID = :GV_LOCATION_ID',
'   ORDER SIBLINGS BY DISPLAY_ORDER)',
'SELECT LVL AS "level",',
'       SCREEN_NAME AS LABEL,',
'       TARGET,',
'       CASE WHEN V(''APP_ID'')||''.''||V(''APP_PAGE_ID'') = OBJECT_LINK THEN ''YES'' ELSE ''NO'' END AS IS_CURRENT,',
'       ICON AS IMAGE,',
'       NODE_ID,',
'       DISPLAY_ORDER',
'  FROM (SELECT NULL AS PATH,',
'               0 AS INIT_STATE,',
'               0 AS LVL,',
'               ''Home'' AS SCREEN_NAME,',
'               NULL AS ICON,',
'               0 AS NODE_ID,',
'               ''f?p=100:1:&APP_SESSION.'' AS TARGET,',
'               NULL AS DISPLAY_ORDER,',
'               ''100.1'' OBJECT_LINK',
'          FROM DUAL',
'        UNION ALL',
'        SELECT PATH,',
'               INIT_STATE,',
'               LVL,',
'               SCREEN_NAME,',
'               ICON,',
'               NODE_ID,',
'               TARGET,',
'               DISPLAY_ORDER,',
'               OBJECT_LINK',
'          FROM HIERARCHY) ;',
'',
'',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(90303726389973464)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'TestCM'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp.component_end;
end;
/

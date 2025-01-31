prompt --application/shared_components/navigation/lists/radiation_menu
begin
--   Manifest
--     LIST: RADIATION_MENU
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79704029778921212)
,p_name=>'RADIATION_MENU'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH RADIATION_TREE_MENU AS',
' (SELECT SYS_CONNECT_BY_PATH(DECODE(TM.DISPLAY_ORDER,',
'                                    0,',
'                                    TM.NODE_NAME,',
'                                    LPAD(TO_CHAR(TM.DISPLAY_ORDER), 4, ''0'') ||',
'                                    TM.NODE_NAME),',
'                             ''|'') AS PATH,',
'         1 AS INIT_STATE,',
'         LEVEL - 1 AS LVL,',
'         TM.NODE_NAME AS SCREEN_NAME,',
'         TM.OBJECT_CONSTANT AS ICON,',
'         TM.NODE_ID,',
'         TM.PARENT_NODE_ID,',
'         TM.DISPLAY_ORDER,',
'         ''#action$skm-navigate?objectCode=#'' || S.APP_ID || ''@'' || O.PAGE_ID AS TARGET,',
'         T.DISPLAY_ORDER AS TREE_DISP_ORDER,',
'         TM.DISPLAY_ORDER AS EMP_TREE_ORDER',
'    FROM SECURITY.EMP_TREE_MENU TM,',
'         DEFINITIONS.OBJECTS    O,',
'         DEFINITIONS.SCHEMAS    S,',
'         SECURITY.TREE_MENU     T',
'   WHERE TM.OBJECT_SCHEMA_ID = O.SCHEMA_ID(+)',
'     AND TM.OBJECT_TYPE_ID = O.OBJECT_TYPE_ID(+)',
'     AND TM.OBJECT_ID = O.OBJECT_ID(+)',
'     AND O.SCHEMA_ID = S.SCHEMA_ID(+)',
'     AND TM.NODE_ID = T.NODE_ID',
'     AND O.OBJECT_TYPE_ID = ''APX''',
'   START WITH TM.PARENT_NODE_ID IS NOT NULL',
'          AND T.PARENT_NODE_ID = 2732',
'          AND TM.MRNO = :GV_USER_MRNO',
'          AND TM.LOCATION_ID = :GV_LOCATION_ID',
'  CONNECT BY PRIOR TM.NODE_ID = TM.PARENT_NODE_ID',
'         AND TM.MRNO = :GV_USER_MRNO',
'         AND TM.LOCATION_ID = :GV_LOCATION_ID',
'   ORDER SIBLINGS BY T.DISPLAY_ORDER)',
'SELECT LVL AS "level",',
'       SCREEN_NAME AS LABEL,',
'       TARGET,',
'       ''YES'' AS IS_CURRENT,',
'       ''#APP_IMAGES#del.gif'' AS IMAGE,',
'       CASE',
'         WHEN SCREEN_NAME = ''Home'' THEN',
'          1',
'         ELSE',
'          TREE_DISP_ORDER',
'       END AS TREE_DISP_ORDER,',
'       CASE',
'         WHEN SCREEN_NAME = ''Home'' THEN',
'          1',
'         ELSE',
'          EMP_TREE_ORDER',
'       END AS EMP_TREE_ORDER',
'  FROM (SELECT NULL AS PATH,',
'               1 AS INIT_STATE,',
'               -1 AS LVL,',
'               ''Home'' AS SCREEN_NAME,',
'               NULL AS ICON,',
'               0 AS NODE_ID,',
'               0 AS PARENT_NODE_ID,',
'               0 AS DISPLAY_ORDER,',
'               ''f?p=100:1:&APP_SESSION.'' AS TARGET,',
'               NULL AS TREE_DISP_ORDER,',
'               NULL AS EMP_TREE_ORDER',
'          FROM DUAL',
'        UNION ALL',
'        SELECT PATH,',
'               INIT_STATE,',
'               DECODE(LVL, 0, 1, 1, 2, 2, 3),',
'               SCREEN_NAME,',
'               ICON,',
'               NODE_ID,',
'               PARENT_NODE_ID,',
'               DISPLAY_ORDER,',
'               TARGET,',
'               TREE_DISP_ORDER,',
'               EMP_TREE_ORDER',
'          FROM RADIATION_TREE_MENU);',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(91191684943989330)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'RAD_REQUEST'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp.component_end;
end;
/

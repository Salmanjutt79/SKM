prompt --application/shared_components/navigation/lists/radiation_menu_n
begin
--   Manifest
--     LIST: RADIATION_MENU_N
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
 p_id=>wwv_flow_imp.id(18461431621897107)
,p_name=>'RADIATION_MENU_N'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT lvl as "level",',
'       SCREEN_NAME Label,',
'       target,',
'       ''YES'' is_current,',
'       icon image',
'  FROM (SELECT NULL PATH,',
'               1 INIT_STATE,',
'               -1 LVL,',
'               ''Home'' SCREEN_NAME,',
'               NULL AS ICON,',
'               0 AS NODE_ID,',
'               0 AS PARENT_NODE_ID,',
'               0 AS DISPLAY_ORDER ,',
'         ''f?p=100:1:&APP_SESSION.''  AS TARGET',
'          FROM DUAL',
'        UNION ALL',
'        SELECT SYS_CONNECT_BY_PATH(DECODE(TM.DISPLAY_ORDER,',
'                                          0,',
'                                          TM.NODE_NAME,',
'                                          LPAD(TO_CHAR(TM.DISPLAY_ORDER),',
'                                               4,',
'                                               ''0'') || TM.NODE_NAME),',
'                                   ''|'') PATH,',
'               1 INIT_STATE,',
'               LEVEL - 1 LVL,',
'               INITCAP(TM.NODE_NAME) SCREEN_NAME,',
'               TM.OBJECT_CONSTANT ICON,',
'               TM.NODE_ID,',
'               TM.PARENT_NODE_ID,',
'               TM.DISPLAY_ORDER ,',
'          ''f?p='' || S.APP_ID || '':'' || O.PAGE_ID || '':&APP_SESSION.'' AS TARGET',
'          FROM SECURITY.EMP_TREE_MENU_OBJECT TM,',
'               DEFINITIONS.OBJECTS           O,',
'               DEFINITIONS.SCHEMAS           S,',
'               SECURITY.TREE_MENU            T',
'         WHERE TM.OBJECT_SCHEMA_ID = O.SCHEMA_ID(+)',
'           AND TM.OBJECT_TYPE_ID = O.OBJECT_TYPE_ID(+)',
'           AND TM.OBJECT_ID = O.OBJECT_ID(+)',
'           AND O.SCHEMA_ID = S.SCHEMA_ID(+)',
'           AND TM.NODE_ID = T.NODE_ID',
'        -- AND (O.OBJECT_TYPE_ID = ''APX'' OR O.OBJECT_TYPE_ID IS NULL)',
'         START WITH TM.PARENT_NODE_ID IS NULL',
'                AND T.NODE_ID = 2732',
'                AND TM.MRNO = :GV_USER_MRNO',
'                AND TM.LOCATION_ID = :GV_LOCATION_ID',
'        CONNECT BY PRIOR TM.NODE_ID = TM.PARENT_NODE_ID',
'               AND TM.MRNO = :GV_USER_MRNO',
'               AND TM.LOCATION_ID = :GV_LOCATION_ID',
'        )',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/

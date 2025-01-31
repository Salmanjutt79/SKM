prompt --application/shared_components/navigation/lists/tree_menu
begin
--   Manifest
--     LIST: Tree Menu
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
 p_id=>wwv_flow_imp.id(53762053183385741)
,p_name=>'Tree Menu'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT lvl as "level", SCREEN_NAME Label, target, ''YES'' is_current, icon image',
'  FROM (SELECT NULL PATH,',
'               0 INIT_STATE,',
'               0 LVL,',
'               ''Home'' SCREEN_NAME,',
'               null AS ICON,',
'               0 as node_id,',
'               ''f?p=100:1:&APP_SESSION.'' AS TARGET',
'          FROM DUAL',
'        UNION ALL',
'        SELECT SYS_CONNECT_BY_PATH(DECODE(TM.DISPLAY_ORDER,',
'                                          0,',
'                                          TM.NODE_NAME,',
'                                          LPAD(TO_CHAR(TM.DISPLAY_ORDER), 4, ''0'') || TM.NODE_NAME),',
'                                   ''|'') PATH,',
'               TM.DEPTH INIT_STATE,',
'               LEVEL LVL,',
'               TM.NODE_NAME SCREEN_NAME,',
'               NULL AS ICON,',
'               TM.NODE_ID,',
'               CASE WHEN S.APP_ID IS NOT NULL THEN ''f?p=''||S.APP_ID||'':''||O.PAGE_ID||'':&APP_SESSION.'' ELSE NULL END as  TARGET',
'          FROM SECURITY.EMP_TREE_MENU TM, definitions.objects o, definitions.schemas s, SECURITY.TREE_MENU T',
'          WHERE TM.OBJECT_SCHEMA_ID = O.SCHEMA_ID(+)',
'          AND TM.OBJECT_TYPE_ID = O.OBJECT_TYPE_ID(+)',
'          AND TM.OBJECT_ID = O.OBJECT_ID(+)',
'          and o.schema_id = s.schema_id(+)',
'          AND (O.OBJECT_TYPE_ID = ''APX'' OR O.OBJECT_TYPE_ID IS NULL)',
'          ',
'          AND TM.NODE_ID = T.NODE_ID',
'          AND (NVL(T.platform, ''W'') = CASE WHEN NVL(:IS_MOBILE, ''N'') = ''N'' THEN ''W'' ELSE ''M'' END OR NVL(T.platform, ''W'') = ''B'')',
'          --and CONNECT_BY_ISLEAF  = 0 -- Comented by Gohar',
'         START WITH TM.PARENT_NODE_ID IS NULL',
'                AND TM.MRNO = :APP_USER',
'                AND TM.LOCATION_ID = :GV_LOCATION_ID',
'                AND (NVL(T.platform, ''W'') = CASE WHEN NVL(:IS_MOBILE, ''N'') = ''N'' THEN ''W'' ELSE ''M'' END OR NVL(T.platform, ''W'') = ''B'')',
'        CONNECT BY PRIOR TM.NODE_ID = TM.PARENT_NODE_ID',
'               AND TM.MRNO = :APP_USER',
'               AND TM.LOCATION_ID = :GV_LOCATION_ID',
'                       --       AND TM.OBJECT_TYPE_ID = ''APX''',
'          --      AND TM.OBJECT_ID IS NOT NULL',
'               )',
''))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(51496228383237754)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'NON_CA_TREATMENT'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53910060397527946)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'RAD_CALLER_PAGE'
,p_list_item_link_target=>'f?p=&APP_ID.:9996:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9996'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(55335164498012124)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'RADIATION_MACHINE_SCHEDULE'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77276317446879658)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'test'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp.component_end;
end;
/

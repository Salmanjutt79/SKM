prompt --application/shared_components/navigation/lists/list_rad_app_queue_machines
begin
--   Manifest
--     LIST: LIST_RAD_APP_QUEUE_MACHINES
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
 p_id=>wwv_flow_imp.id(291527034116181913)
,p_name=>'LIST_RAD_APP_QUEUE_MACHINES'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.DESCRIPTION MACHINE_NAME, MC.MACHINE_ID',
'  FROM RADIATION.MACHINES MC',
' WHERE ACTIVE = ''Y''',
'   /*AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'   AND MC.PERFORMANCE_TYPE_ID IN',
'       (SELECT QP.PERFORMANCE_TYPE_ID',
'          FROM RADIATION.DEF_QUEUE_PERFORMANCE QP',
'         WHERE QP.QUEUE_ID = :P0_GROUP_ID',
'           AND QP.ACTIVE = ''Y'')*/',
' ORDER BY MC.MACHINE_TYPE, MC.DESCRIPTION'))
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/lov_def_rad_queue_evensts
begin
--   Manifest
--     LOV_DEF_RAD_QUEUE_EVENSTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(46886517712485930)
,p_lov_name=>'LOV_DEF_RAD_QUEUE_EVENSTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT E.DESCRIPTION, E.EVENT_ID',
'  FROM DEFINITIONS.PR_TYPE_FLOW_EVENT PTFE, DEFINITIONS.EVENT E',
' WHERE PTFE.EVENT_ID = E.EVENT_ID',
'   AND E.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'EVENT_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(46887671919491276)
,p_query_column_name=>'EVENT_ID'
,p_heading=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(46888016915491276)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

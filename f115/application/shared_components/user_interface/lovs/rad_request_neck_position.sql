prompt --application/shared_components/user_interface/lovs/rad_request_neck_position
begin
--   Manifest
--     RAD_REQUEST_NECK_POSITION
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
 p_id=>wwv_flow_imp.id(97311712027163862)
,p_lov_name=>'RAD_REQUEST_NECK_POSITION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION, P.POSITION_ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''N''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'POSITION_PREFIX'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(97350169668284472)
,p_query_column_name=>'POSITION_PREFIX'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(97350519836284472)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

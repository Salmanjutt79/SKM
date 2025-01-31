prompt --application/shared_components/user_interface/lovs/lov_rad_checklist_performance_type
begin
--   Manifest
--     LOV_RAD_CHECKLIST_PERFORMANCE_TYPE
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
 p_id=>wwv_flow_imp.id(44867914284911874)
,p_lov_name=>'LOV_RAD_CHECKLIST_PERFORMANCE_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCIPTION DESCRIPTION,PERFORMANCE_TYPE_ID',
'FROM RADIATION.DEF_PERFORMANCE_TYPE',
'WHERE ACTIVE = ''Y''',
'ORDER BY 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'PERFORMANCE_TYPE_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(44870171789915769)
,p_query_column_name=>'PERFORMANCE_TYPE_ID'
,p_heading=>'Performance Type Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(44870565396915769)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

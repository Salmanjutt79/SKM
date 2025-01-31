prompt --application/shared_components/user_interface/lovs/lov_rad_performance_type_objects
begin
--   Manifest
--     LOV_RAD_PERFORMANCE_TYPE_OBJECTS
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
 p_id=>wwv_flow_imp.id(49125397077431417)
,p_lov_name=>'LOV_RAD_PERFORMANCE_TYPE_OBJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.OBJECT_CODE, O.NAME',
'  FROM DEFINITIONS.OBJECTS O',
' WHERE O.OBJECT_TYPE_ID = ''FRM''',
'   AND O.OBSOLETED_OBJECT = ''N''',
' ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'OBJECT_CODE'
,p_display_column_name=>'OBJECT_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(49127039617434587)
,p_query_column_name=>'OBJECT_CODE'
,p_heading=>'Object Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(49127425320434596)
,p_query_column_name=>'NAME'
,p_heading=>'Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

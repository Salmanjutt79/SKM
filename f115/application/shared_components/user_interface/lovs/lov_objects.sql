prompt --application/shared_components/user_interface/lovs/lov_objects
begin
--   Manifest
--     LOV_OBJECTS 
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
 p_id=>wwv_flow_imp.id(33226713867505545)
,p_lov_name=>'LOV_OBJECTS '
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.NAME DESCRIPTION, O.OBJECT_CODE ID',
'  FROM DEFINITIONS.OBJECTS O',
' WHERE O.OBSOLETED_OBJECT = ''N''',
'   AND O.SCHEMA_ID = ''S18''',
'   AND O.OBJECT_TYPE_ID = ''FRM''',
'   ORDER BY O.OBJECT_CODE ASC;',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(33229649884531402)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Object Name'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(33230062333531402)
,p_query_column_name=>'ID'
,p_heading=>'Object Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

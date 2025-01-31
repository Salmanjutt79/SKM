prompt --application/shared_components/user_interface/lovs/rad_performance_type_location
begin
--   Manifest
--     RAD_PERFORMANCE_TYPE_LOCATION
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
 p_id=>wwv_flow_imp.id(49136863671464074)
,p_lov_name=>'RAD_PERFORMANCE_TYPE_LOCATION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.LOCATION_ID, T.DESCRIPTION',
'  FROM DEFINITIONS.LOCATION T',
' WHERE T.ACTIVE = ''Y''',
'   AND T.CC_TYPE = ''N''',
' ORDER BY T.LOCATION_ID',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'LOCATION_ID'
,p_display_column_name=>'DESCRIPTION'
);
wwv_flow_imp.component_end;
end;
/

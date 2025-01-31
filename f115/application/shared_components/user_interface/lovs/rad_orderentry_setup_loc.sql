prompt --application/shared_components/user_interface/lovs/rad_orderentry_setup_loc
begin
--   Manifest
--     RAD_ORDERENTRY_SETUP_LOC
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
 p_id=>wwv_flow_imp.id(35585701128735353)
,p_lov_name=>'RAD_ORDERENTRY_SETUP_LOC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LOCATION_ID, DESCRIPTION',
'  FROM DEFINITIONS.LOCATION ',
' WHERE ACTIVE = ''Y''',
'   AND CC_TYPE = ''N'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'LOCATION_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPTION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(35586157593739209)
,p_query_column_name=>'LOCATION_ID'
,p_heading=>'Location Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(35586588713739209)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Location'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

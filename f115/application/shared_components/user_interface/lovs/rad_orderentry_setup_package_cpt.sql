prompt --application/shared_components/user_interface/lovs/rad_orderentry_setup_package_cpt
begin
--   Manifest
--     RAD_ORDERENTRY_SETUP_PACKAGE_CPT
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
 p_id=>wwv_flow_imp.id(38455633685026301)
,p_lov_name=>'RAD_ORDERENTRY_SETUP_PACKAGE_CPT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT T.CPT_ID, T.DESCRIPTION',
'  FROM DEFINITIONS.CPT T, DEFINITIONS.CPT_PACKAGE P',
' WHERE T.CPT_ID = P.CPT_ID',
'   AND P.PACKAGE_ID IN',
'       (SELECT PACKAGE_ID FROM DEFINITIONS.PACKAGES WHERE PACKAGE_TYPE = ''R'')',
'   AND T.ACTIVE = ''Y''',
'   AND P.ACTIVE = ''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'CPT_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPTION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(38457830723040494)
,p_query_column_name=>'CPT_ID'
,p_heading=>'CPT ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(38458255595040497)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

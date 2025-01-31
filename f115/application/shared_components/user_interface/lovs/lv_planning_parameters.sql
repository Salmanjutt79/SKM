prompt --application/shared_components/user_interface/lovs/lv_planning_parameters
begin
--   Manifest
--     LV_PLANNING_PARAMETERS
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
 p_id=>wwv_flow_imp.id(11085006120824897)
,p_lov_name=>'LV_PLANNING_PARAMETERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PCP.DESCRIPTION     PARAM_DESCRIPTION,',
'                PCS.PARAMETER_ID    PARAMETER_ID,',
'                PCS.REFERENCE_VALUE REFERENCE_VALUE,',
'                PCS.SORT_BY',
'  FROM RADIATION.PLAN_APPROVAL_CHECK_SETUP PCS,',
'       RADIATION.PLAN_CHECK_PARAMETERS     PCP',
' WHERE PCS.ORGANIZATION_ID = NVL(:GV_ORGANIZATION_ID, ''SKM'')',
'       --SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'   AND PCS.LOCATION_ID = NVL(:GV_LOCATION_ID,''001'')--SYS_CONTEXT(''GLOBAL_CONTEXT'', ''LOCATION_ID'')',
'   AND PCS.ACTIVE = ''Y''',
'   AND PCP.PARAMETER_ID = PCS.PARAMETER_ID',
'   AND PCP.ACTIVE = ''Y''',
'   AND PCS.SITE_ID = :P56_DOSE_CONSTRAINT_SITE_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'PARAMETER_ID'
,p_display_column_name=>'PARAM_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SORT_BY'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(11092430451882514)
,p_query_column_name=>'PARAMETER_ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(11092835076882514)
,p_query_column_name=>'PARAM_DESCRIPTION'
,p_heading=>'Param Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(11093261822882514)
,p_query_column_name=>'REFERENCE_VALUE'
,p_heading=>'Reference Value'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(11093659808882515)
,p_query_column_name=>'SORT_BY'
,p_heading=>'Sort By'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

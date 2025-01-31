prompt --application/shared_components/user_interface/lovs/lov_def_planning_parameters
begin
--   Manifest
--     LOV_DEF_PLANNING_PARAMETERS
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
 p_id=>wwv_flow_imp.id(46429867212597916)
,p_lov_name=>'LOV_DEF_PLANNING_PARAMETERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION, P.PARAMETER_ID',
'  FROM RADIATION.PLAN_CHECK_PARAMETERS P',
' WHERE P.ACTIVE = ''Y''',
'  /* AND NOT EXISTS (SELECT 1',
'          FROM RADIATION.PLAN_CHECK_SETUP s',
'         WHERE S.ORGANIZATION_ID = :P26_ORGANIZATION_ID',
'           AND S.LOCATION_ID = :P26_LOCATION_ID',
'           AND S.PLANNING_ID = :P26_PLANNING_ID',
'           AND S.PARAMETER_ID = P.PARAMETER_ID)*/',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'PARAMETER_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPTION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(46432969314603554)
,p_query_column_name=>'PARAMETER_ID'
,p_heading=>'Parameter Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(46433274640603554)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

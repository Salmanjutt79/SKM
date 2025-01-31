prompt --application/shared_components/user_interface/lovs/lov_def_workflow_setup_workflow_id
begin
--   Manifest
--     LOV_DEF_WORKFLOW_SETUP_WORKFLOW_ID
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
 p_id=>wwv_flow_imp.id(49571107505467007)
,p_lov_name=>'LOV_DEF_WORKFLOW_SETUP_WORKFLOW_ID'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WF.WORK_FLOW_ID,',
'       WF.DESCRIPTION,',
'       PTF.PURCHASE_TYPE_ID WORKFLOW_TYPE_ID,',
'       PTF.SCHEMA_ID',
'  FROM DEFINITIONS.WORK_FLOW WF, DEFINITIONS.PR_TYPE_FLOW PTF',
' WHERE WF.WORK_FLOW_ID = PTF.WORK_FLOW_ID',
'   AND PTF.SCHEMA_ID = CASE',
'         WHEN :P28_QUERY_PERFORMANCE_TYPE = ''R'' THEN',
'          ''S18''',
'         ELSE',
'          PTF.SCHEMA_ID',
'       END',
' ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'WORK_FLOW_ID'
,p_display_column_name=>'WORK_FLOW_ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(49580818049501603)
,p_query_column_name=>'WORK_FLOW_ID'
,p_heading=>'Workflow Id'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(49581256315501608)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(49581662055501608)
,p_query_column_name=>'WORKFLOW_TYPE_ID'
,p_heading=>'Workflow Type Id'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(49582042933501609)
,p_query_column_name=>'SCHEMA_ID'
,p_heading=>'Schema Id'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

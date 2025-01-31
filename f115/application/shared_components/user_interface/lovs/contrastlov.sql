prompt --application/shared_components/user_interface/lovs/contrastlov
begin
--   Manifest
--     CONTRASTLOV
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
 p_id=>wwv_flow_imp.id(9978506067023983)
,p_lov_name=>'CONTRASTLOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RC.CONTRAST_DESC,RC.CONTRAST_ML, RC.CONTRAST_ID',
'FROM RADIOLOGY.RADIOLOGY_CONTRAST RC',
'WHERE RC.ACTIVE = ''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'CONTRAST_ID'
,p_display_column_name=>'CONTRAST_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CONTRAST_ID'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9979103348026100)
,p_query_column_name=>'CONTRAST_DESC'
,p_heading=>'Contrast Type'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9979570909026100)
,p_query_column_name=>'CONTRAST_ID'
,p_heading=>'Contrast Id'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9979930441026100)
,p_query_column_name=>'CONTRAST_ML'
,p_heading=>'Contrast Ml'
,p_display_sequence=>30
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/

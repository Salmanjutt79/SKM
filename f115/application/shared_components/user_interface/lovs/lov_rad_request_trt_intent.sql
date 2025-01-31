prompt --application/shared_components/user_interface/lovs/lov_rad_request_trt_intent
begin
--   Manifest
--     LOV_RAD_REQUEST_TRT_INTENT
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
 p_id=>wwv_flow_imp.id(92964214611389814)
,p_lov_name=>'LOV_RAD_REQUEST_TRT_INTENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TI.TREATMENT_INTENT_ID, TI.DESCRIPTION',
'  FROM RADIATION.TREATMENT_INTENT TI',
' WHERE TI.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'TREATMENT_INTENT_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(92972818079422307)
,p_query_column_name=>'TREATMENT_INTENT_ID'
,p_heading=>'Treatment Intent Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(92973209382422314)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

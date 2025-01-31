prompt --application/shared_components/user_interface/lovs/lov_toxicity
begin
--   Manifest
--     LOV_TOXICITY
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
 p_id=>wwv_flow_imp.id(43539697855028610)
,p_lov_name=>'LOV_TOXICITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION,T.TOXICITY_ID ',
'FROM  RADIATION.TOXICITY T',
'WHERE T.ACTIVE=''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'TOXICITY_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(43542199736031005)
,p_query_column_name=>'TOXICITY_ID'
,p_heading=>'Toxicity Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(43542566717031009)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

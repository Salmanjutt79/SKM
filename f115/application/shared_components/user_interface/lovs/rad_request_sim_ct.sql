prompt --application/shared_components/user_interface/lovs/rad_request_sim_ct
begin
--   Manifest
--     RAD_REQUEST_SIM_CT
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
 p_id=>wwv_flow_imp.id(96311834010559441)
,p_lov_name=>'RAD_REQUEST_SIM_CT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SC.SIM_CT_ID,',
'       SC.DESCRIPTION,',
'       DECODE(SC.CREATININE_REQUIRED, ''Y'', ''Yes'', ''No'') CREATININE_REQUIRED',
'  FROM RADIATION.SIMULATION_CT SC',
' WHERE SC.ACTIVE = ''Y''',
' ORDER BY SC.DESCRIPTION',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'SIM_CT_ID'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(96312928672567121)
,p_query_column_name=>'SIM_CT_ID'
,p_heading=>'Sim CT ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(96313315802567122)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(96313723308567123)
,p_query_column_name=>'CREATININE_REQUIRED'
,p_heading=>'Creatinine Required'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

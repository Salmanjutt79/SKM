prompt --application/shared_components/user_interface/lovs/radiation_events_employee_lov
begin
--   Manifest
--     RADIATION_EVENTS_EMPLOYEE_LOV
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
 p_id=>wwv_flow_imp.id(33851817936215498)
,p_lov_name=>'RADIATION_EVENTS_EMPLOYEE_LOV'
,p_lov_query=>'SELECT I.MRNO MRNO, I.NAME DISP_NAME, I.DEPARTMENT DEPARTMENT FROM HRD.VU_INFORMATION I '
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'MRNO'
,p_display_column_name=>'MRNO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'MRNO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(34175929435096311)
,p_query_column_name=>'MRNO'
,p_heading=>'Employee Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(34176259976096311)
,p_query_column_name=>'DISP_NAME'
,p_heading=>'Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(34176664018096311)
,p_query_column_name=>'DEPARTMENT'
,p_heading=>'Department'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

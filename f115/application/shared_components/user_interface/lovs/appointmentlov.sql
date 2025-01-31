prompt --application/shared_components/user_interface/lovs/appointmentlov
begin
--   Manifest
--     APPOINTMENTLOV
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
 p_id=>wwv_flow_imp.id(10019335340198372)
,p_lov_name=>'APPOINTMENTLOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(RS.VISIT_DATE,''DD-MM-RR HH24:MI'') VISIT_DATE,TO_CHAR(RS.VISIT_DATE,''DD-MM-RR HH24:MI'') APP_TIME, RS.SR_NO',
'  FROM RADIATION.SCHEDULE RS, RADIATION.MACHINES M',
' WHERE RS.MACHINE_ID = M.MACHINE_ID',
'   AND RS.RADIATION_NO = :P55_RADIATION_NO_2',
'   AND M.PERFORMANCE_TYPE_ID = :P55_PERFORMANCE_TYPE_ID',
' ORDER BY RS.VISIT_DATE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'APP_TIME'
,p_display_column_name=>'VISIT_DATE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10019715652201544)
,p_query_column_name=>'APP_TIME'
,p_display_sequence=>10
,p_data_type=>'DATE'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10020180213201544)
,p_query_column_name=>'VISIT_DATE'
,p_heading=>'Visit Date'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10020568229201544)
,p_query_column_name=>'SR_NO'
,p_heading=>'Sr No'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp.component_end;
end;
/

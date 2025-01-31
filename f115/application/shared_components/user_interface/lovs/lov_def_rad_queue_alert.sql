prompt --application/shared_components/user_interface/lovs/lov_def_rad_queue_alert
begin
--   Manifest
--     LOV_DEF_RAD_QUEUE_ALERT
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
 p_id=>wwv_flow_imp.id(47642776148630359)
,p_lov_name=>'LOV_DEF_RAD_QUEUE_ALERT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.DESCRIPTION, A.ALERT_ID',
'  FROM RADIATION.DEF_ALERTS A',
'  WHERE A.ACTIVE = ''Y''',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'ALERT_ID'
,p_display_column_name=>'ALERT_ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(47655699208633347)
,p_query_column_name=>'ALERT_ID'
,p_heading=>'ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(47656081625633347)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

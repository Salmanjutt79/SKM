prompt --application/shared_components/user_interface/lovs/lov_rad_machine_schedule_slot_name
begin
--   Manifest
--     LOV_RAD_MACHINE_SCHEDULE_SLOT_NAME
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
 p_id=>wwv_flow_imp.id(118804381776791618)
,p_lov_name=>'LOV_RAD_MACHINE_SCHEDULE_SLOT_NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  T.SLOT_TYPE_ID,  T.DESCRIPTION AS SLOT_NAME',
'  FROM RADIOLOGY.SLOT_COLOR T, DEFINITIONS.DEPARTMENT D',
' WHERE T.DEPARTMENT_ID = D.DEPARTMENT_ID',
'   AND D.DEPARTMENT_NATURE_ID = ''020''',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'SLOT_TYPE_ID'
,p_display_column_name=>'SLOT_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(118806241012796090)
,p_query_column_name=>'SLOT_TYPE_ID'
,p_heading=>'ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(118806616252796094)
,p_query_column_name=>'SLOT_NAME'
,p_heading=>'Slot Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

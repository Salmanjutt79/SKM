prompt --application/shared_components/user_interface/lovs/lv_rad_request_doctor
begin
--   Manifest
--     LV_RAD_REQUEST_DOCTOR
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
 p_id=>wwv_flow_imp.id(93003274211480081)
,p_lov_name=>'LV_RAD_REQUEST_DOCTOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.DOCTOR_ID, DD.NAME FULL_NAME',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'           AND L.LOCATION_ID = :GV_LOCATION_ID)',
' ORDER BY DOCTOR_ID',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'DOCTOR_ID'
,p_display_column_name=>'FULL_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(93006738044495298)
,p_query_column_name=>'DOCTOR_ID'
,p_heading=>'Doctor Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(93007158245495298)
,p_query_column_name=>'FULL_NAME'
,p_heading=>'Doctor Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/contrastgivenby
begin
--   Manifest
--     CONTRASTGIVENBY
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
 p_id=>wwv_flow_imp.id(9985079729053563)
,p_lov_name=>'CONTRASTGIVENBY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT I.NAME, I.DESIGNATION, I.DEPARTMENT, I.MRNO',
'  FROM DEFINITIONS.OBJECTS          O,',
'       SECURITY.GROUPS_OBJECT_RIGHT GR,',
'       SECURITY.MEMBER              M,',
'       SECURITY.USERS               U,',
'       HRD.VU_INFORMATION           I',
' WHERE GR.GROUPID = M.GROUPID',
'   AND O.OBJECT_CODE = ''S18FRM00130''',
'   AND GR.SCHEMA_ID = O.SCHEMA_ID',
'   AND GR.OBJECT_TYPE_ID = O.OBJECT_TYPE_ID',
'   AND GR.OBJECT_ID = O.OBJECT_ID',
'   AND U.USERID = M.USERID',
'   AND U.MRNO = I.MRNO',
'   AND GR.UPDATE_ALLOWED_YN = ''Y''',
'   AND I.DUTY_LOCATION_ID = :GV_LOCATION_ID',
'   AND EXISTS (SELECT 1',
'          FROM DEFINITIONS.DEPARTMENT D',
'         WHERE D.DEPARTMENT_NATURE_ID IN (''122'', ''020'')',
'           AND D.DEPARTMENT_ID = I.DEPARTMENT_ID)',
'   AND I.ACTIVE = ''Y''',
' ORDER BY 1, 2, 3',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'MRNO'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9988322010059555)
,p_query_column_name=>'NAME'
,p_heading=>'Name'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9988767005059556)
,p_query_column_name=>'DESIGNATION'
,p_heading=>'Designation'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9989126604059556)
,p_query_column_name=>'DEPARTMENT'
,p_heading=>'Department'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(9987992429059555)
,p_query_column_name=>'MRNO'
,p_heading=>'Employee Code'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

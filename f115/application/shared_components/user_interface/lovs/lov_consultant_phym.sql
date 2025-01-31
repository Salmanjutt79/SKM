prompt --application/shared_components/user_interface/lovs/lov_consultant_phym
begin
--   Manifest
--     LOV_CONSULTANT_PHYM
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
 p_id=>wwv_flow_imp.id(39275002238065056)
,p_lov_name=>'LOV_CONSULTANT_PHYM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT 1 AS SORTING,',
'                V.NAME,',
'                V.DOCTOR_ID,',
'                V.HIS_USERID,',
'                V.DOCTOR_MRNO',
'  FROM DEFINITIONS.VU_DR_CONSULTANT V, HRD.VU_INFORMATION U',
' WHERE V.DOCTOR_MRNO = U.MRNO',
'   AND U.DUTY_LOCATION_ID =NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID''))',
'   AND V.DEPARTMENT_ID = (SELECT DEPARTMENT_ID',
'                            FROM HRD.VU_INFORMATION',
'                           WHERE MRNO = NVL(:GV_USER_MRNO,SYS_CONTEXT(''GLOBAL_CONTEXT'',''USER_MRNO''))',
'                             AND ACTIVE = ''Y'')',
'                            ',
'UNION',
'SELECT DISTINCT 0 AS SORTING,',
'                ',
'                NULL NAME,',
'                NULL DOCTOR_ID,',
'                NULL HIS_USERID,',
'                NULL DOCTOR_MRNO',
'  FROM DUAL',
'UNION',
'SELECT DISTINCT 2 AS SORTING,',
'                V.NAME,',
'                V.DOCTOR_ID,',
'                V.HIS_USERID,',
'                V.DOCTOR_MRNO',
'  FROM DEFINITIONS.VU_DR_CONSULTANT V, HRD.VU_INFORMATION U',
' WHERE V.DOCTOR_MRNO = U.MRNO',
'   AND U.DUTY_LOCATION_ID = NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID''))',
'   AND V.DEPARTMENT_ID <> (SELECT DEPARTMENT_ID',
'                             FROM HRD.VU_INFORMATION',
'                            WHERE MRNO =  NVL(:GV_USER_MRNO,SYS_CONTEXT(''GLOBAL_CONTEXT'',''USER_MRNO''))',
'                              AND ACTIVE = ''Y'')',
' UNION',
' SELECT DISTINCT 3 AS SORTING,',
'                D.NAME,',
'                D.DOCTOR_ID,',
'                D.HIS_USERID,',
'                D.DOCTOR_MRNO',
'  FROM DEFINITIONS.DOCTOR D,HRD.VU_INFORMATION U',
' WHERE D.DOCTOR_MRNO=U.MRNO',
'AND D.CONSULTANT=''Y''',
'AND D.ACTIVE IN (''Y'',''Z'')',
'AND U.DUTY_LOCATION_ID <> NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID''))',
'AND D.ORGANIZATION_ID =  NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID''))',
'AND D.DOCTOR_MRNO =  NVL(:GV_USER_MRNO,SYS_CONTEXT(''GLOBAL_CONTEXT'',''USER_MRNO''))',
'ORDER BY SORTING, NAME',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'DOCTOR_MRNO'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(39275438992065061)
,p_query_column_name=>'NAME'
,p_heading=>'Name'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(39275877462065063)
,p_query_column_name=>'DOCTOR_MRNO'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(39276286298065063)
,p_query_column_name=>'DOCTOR_ID'
,p_heading=>'Doctor Id'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(39276677682065063)
,p_query_column_name=>'HIS_USERID'
,p_heading=>'His Userid'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/library_members_list_p14
begin
--   Manifest
--     LIBRARY_MEMBERS_LIST_P14
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(313205633465901516)
,p_lov_name=>'LIBRARY_MEMBERS_LIST_P14'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.FIRST_NAME||'' ''||P.MIDDLE_NAME||'' ''||P.LAST_NAME AS CONCERNED_EMPLOYEE_DESC, P.MRNO CONCERNED_EMPLOYEE_CODE, SUBSTR(P.MRNO, -11) CONCERNED_EMPLOYEE_SHORT_CODE',
'  FROM REGISTRATION.PATIENT P, HRD.INFORMATION I, DEFINITIONS.DEPARTMENT D, DEFINITIONS.DESIGNATION G',
' WHERE P.MRNO = I.MRNO',
'   AND I.MRNO IN (SELECT DISTINCT ISSUED_TO ',
'                    FROM SKM_LIBRARY.LIBRARY_HISTORY)',
'   AND I.DEPARTMENT_ID = D.DEPARTMENT_ID (+)',
'   AND I.DESIGNATION_ID = G.DESIGNATION_ID (+)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CONCERNED_EMPLOYEE_CODE'
,p_display_column_name=>'CONCERNED_EMPLOYEE_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CONCERNED_EMPLOYEE_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(313231394572914242)
,p_query_column_name=>'CONCERNED_EMPLOYEE_SHORT_CODE'
,p_heading=>'Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(313231707559914246)
,p_query_column_name=>'CONCERNED_EMPLOYEE_CODE'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(313232119267914246)
,p_query_column_name=>'CONCERNED_EMPLOYEE_DESC'
,p_heading=>'Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/lov_employee
begin
--   Manifest
--     LOV_EMPLOYEE
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
 p_id=>wwv_flow_imp.id(237887628686121389)
,p_lov_name=>'LOV_EMPLOYEE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.MRNO, ',
'       P.MRNO MR_NO,',
'       P.FIRST_NAME,',
'       P.MIDDLE_NAME,',
'       P.LAST_NAME,',
'       D.DESCRIPTION DEPT,',
'       G.DESCRIPTION DESIGNATION',
'FROM REGISTRATION.PATIENT P, HRD.INFORMATION I, DEFINITIONS.DEPARTMENT D,',
'DEFINITIONS.DESIGNATION G',
'WHERE P.MRNO = I.MRNO',
'AND I.DEPARTMENT_ID = D.DEPARTMENT_ID (+)',
'AND I.DESIGNATION_ID = G.DESIGNATION_ID (+)',
'AND I.ACTIVE = ''Y''',
'AND I.joining_date IS NOT NULL',
'AND P.MRNO NOT LIKE''%DUM%''',
'AND P.MRNO NOT LIKE''%EXT%''',
'UNION',
'SELECT P.MRNO,',
'       P.MRNO MR_NO,',
'       P.FIRST_NAME,',
'       P.MIDDLE_NAME,',
'       P.LAST_NAME,',
'       NULL DEPT,',
'       HRD.F_GET_DESIGNATION_ID(P.MRNO, SYSDATE) DESIGNATION',
'',
'  FROM REGISTRATION.PATIENT P',
' WHERE P.MRNO IN',
'       (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'')',
'   AND P.PATIENT_TYPE_ID IN (SELECT SP.FIXED_VALUE',
'                               FROM ICU.SCORE_PARAMETERS SP',
'                              WHERE SP.SCORE_CATEGORY_ID = ''STD''',
'                                AND SP.ACTIVE = ''Y'')',
'   AND P.CLIENT_ID IN (SELECT SP.FIXED_VALUE',
'                         FROM ICU.SCORE_PARAMETERS SP',
'                        WHERE SP.SCORE_CATEGORY_ID = ''CLN''',
'                          AND SP.ACTIVE = ''Y'')',
'',
' ORDER BY 1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'MRNO'
,p_display_column_name=>'MRNO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237892098192136694)
,p_query_column_name=>'MRNO'
,p_heading=>'Emp Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237892468846136699)
,p_query_column_name=>'MR_NO'
,p_heading=>'Mr No'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237892883115136700)
,p_query_column_name=>'FIRST_NAME'
,p_heading=>'First Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237893273494136700)
,p_query_column_name=>'MIDDLE_NAME'
,p_heading=>'Middle Name'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237893684225136700)
,p_query_column_name=>'LAST_NAME'
,p_heading=>'Last Name'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237894055023136700)
,p_query_column_name=>'DEPT'
,p_heading=>'Department'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(237894476568136701)
,p_query_column_name=>'DESIGNATION'
,p_heading=>'Designation'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

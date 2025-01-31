prompt --application/shared_components/user_interface/lovs/lov_mrno
begin
--   Manifest
--     LOV_MRNO
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
 p_id=>wwv_flow_imp.id(15407799228956560)
,p_lov_name=>'LOV_MRNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM.RADIATION_NO,',
'       RM.MRNO DISP_MRNO,',
'       RADIATION.PKG_RADIATION.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'       RM.RADIATION_DATE,',
'       RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DOCTOR_NAME',
'  FROM RADIATION.RADIATION_MASTER RM',
' ORDER BY RM.RADIATION_DATE DESC',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'DISP_MRNO'
,p_display_column_name=>'DISP_MRNO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(15408618588958193)
,p_query_column_name=>'DISP_MRNO'
,p_heading=>'MRNO'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(15409098115958194)
,p_query_column_name=>'RADIATION_NO'
,p_heading=>'Radiation No'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(15409444872958194)
,p_query_column_name=>'PATIENT_NAME'
,p_heading=>'Patient Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(15409829559958194)
,p_query_column_name=>'RADIATION_DATE'
,p_heading=>'Radiation Date'
,p_display_sequence=>40
,p_data_type=>'DATE'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(15410227005958194)
,p_query_column_name=>'DOCTOR_NAME'
,p_heading=>'Doctor Name'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp.component_end;
end;
/

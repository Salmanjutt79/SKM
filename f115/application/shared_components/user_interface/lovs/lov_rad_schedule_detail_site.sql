prompt --application/shared_components/user_interface/lovs/lov_rad_schedule_detail_site
begin
--   Manifest
--     LOV_RAD_SCHEDULE_DETAIL_SITE
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
 p_id=>wwv_flow_imp.id(55853088384178506)
,p_lov_name=>'LOV_RAD_SCHEDULE_DETAIL_SITE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => D.SITE_ID) ||',
'                 '' --- '' ||',
'                 HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => M.DOCTOR_ID,',
'                                                P_DOCTOR_MRNO => NULL) ||',
'                 '' --- '' || D.RADIATION_NO || '' --- '' ||CASE',
'                  WHEN M.RADIOTHERAPY_TYPE = ''T'' THEN',
'                   ''External beam radiation therapy''',
'                  ELSE',
'                   ''Brachytherapy''',
'                END DISP_COLUMN,',
'                D.RADIATION_NO,',
'                D.SITE_ID',
'  FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
' WHERE M.MRNO = :P63_MRNO',
'   AND M.RADIATION_NO = D.RADIATION_NO',
'   AND RADIATION.Pkg_Request.IS_ACTIVE_SITE(P_RADIATION_NO => D.RADIATION_NO,',
'                                            P_SITE_ID      => D.SITE_ID) = ''Y''',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'DISP_COLUMN'
,p_display_column_name=>'DISP_COLUMN'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56201091620147909)
,p_query_column_name=>'DISP_COLUMN'
,p_heading=>'Site ---------- Doctor ---------- Request # ---------- Radiation Type'
,p_display_sequence=>1
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56200698778147909)
,p_query_column_name=>'RADIATION_NO'
,p_heading=>'Radiation No'
,p_display_sequence=>2
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(56201428132147909)
,p_query_column_name=>'SITE_ID'
,p_heading=>'Site Id'
,p_display_sequence=>3
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

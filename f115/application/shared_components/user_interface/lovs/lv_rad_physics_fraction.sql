prompt --application/shared_components/user_interface/lovs/lv_rad_physics_fraction
begin
--   Manifest
--     LV_RAD_PHYSICS_FRACTION
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
 p_id=>wwv_flow_imp.id(16285345565394766)
,p_lov_name=>'LV_RAD_PHYSICS_FRACTION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT FRACTION, B.PHASE_NO',
'  FROM RADIATION.RADIATION_BOOST_PLAN B,',
'       (SELECT LEVEL FRACTION FROM DUAL CONNECT BY LEVEL < 100) F',
' WHERE B.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'   AND B.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'   AND F.FRACTION <= B.NO_OF_FRACTION',
'   AND B.PHASE_NO = :P64_RAD_PHASE_PHASE_NO',
'   AND NOT EXISTS (SELECT 1',
'   FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS SI',
'   WHERE SI.RADIATION_NO = B.RADIATION_NO',
'   AND SI.SITE_ID = B.SITE_ID',
'   AND SI.PHASE_NO = B.PHASE_NO',
'   AND SI.FRACTION_NO = F.FRACTION)',
'   AND NOT EXISTS (SELECT 1',
'          FROM RADIATION.RADIATION_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = B.RADIATION_NO',
'           AND RP.SITE_ID = B.SITE_ID',
'           AND RP.PHASE_NO = B.PHASE_NO',
'           AND RP.FRACTION_NO = B.NO_OF_FRACTION)',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'FRACTION'
,p_display_column_name=>'FRACTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(16330650447449650)
,p_query_column_name=>'FRACTION'
,p_heading=>'Fraction'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(16331029996449650)
,p_query_column_name=>'PHASE_NO'
,p_heading=>'Phase No'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_imp.component_end;
end;
/

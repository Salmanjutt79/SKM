prompt --application/shared_components/user_interface/lovs/lov_rad_hdr_phy_machine
begin
--   Manifest
--     LOV_RAD_HDR_PHY_MACHINE
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
 p_id=>wwv_flow_imp.id(22706114335665368)
,p_lov_name=>'LOV_RAD_HDR_PHY_MACHINE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.DESCRIPTION MACHINE_NAME,',
'       MC.MACHINE_ID,',
'       ROUND((SELECT 100 - COUNT(CASE',
'                                  WHEN S.RADIATION_NO IS NOT NULL THEN',
'                                   1',
'                                  ELSE',
'                                   NULL',
'                                END) / CASE',
'                      WHEN COUNT(1) > 0 THEN',
'                       COUNT(1)',
'                      ELSE',
'                       1',
'                    END * 100',
'               FROM RADIATION.SCHEDULE S',
'              WHERE S.MACHINE_ID = MC.MACHINE_ID',
'                AND S.VISIT_DATE BETWEEN SYSDATE AND ADD_MONTHS(SYSDATE, 2))) AVAILABILITY,',
'       (SELECT LISTAGG(E.DESCRIPTION, '', '') WITHIN GROUP(ORDER BY E.DESCRIPTION)',
'          FROM RADIATION.MACHINES_ENERGY ME, RADIATION.ENERGY E',
'         WHERE ME.ACTIVE = ''Y''',
'           AND ME.MACHINE_ID = MC.MACHINE_ID',
'           AND ME.ENERGY_ID = E.ENERGY_ID) ENERGIES',
'  FROM RADIATION.MACHINES MC',
' WHERE MC.MACHINE_TYPE = ''T''',
'   AND MC.PERFORMANCE_TYPE_ID = ''005''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
' ORDER BY MC.DESCRIPTION',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'MACHINE_ID'
,p_display_column_name=>'MACHINE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'MACHINE_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22724619665713885)
,p_query_column_name=>'MACHINE_NAME'
,p_heading=>'Machine'
,p_display_sequence=>1
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22770100006860812)
,p_query_column_name=>'AVAILABILITY'
,p_heading=>'Availability'
,p_display_sequence=>2
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22770539490860813)
,p_query_column_name=>'ENERGIES'
,p_heading=>'Energies'
,p_display_sequence=>3
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(22724217743713885)
,p_query_column_name=>'MACHINE_ID'
,p_display_sequence=>4
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

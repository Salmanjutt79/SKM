prompt --application/shared_components/user_interface/lovs/accessorylov
begin
--   Manifest
--     ACCESSORYLOV
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
 p_id=>wwv_flow_imp.id(10064756635375828)
,p_lov_name=>'ACCESSORYLOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.ACCESSORY_ID,',
'       AC.DESCRIPTION DISP_ACCESSORY,',
'       CASE',
'         WHEN AC.OBJECT_CODE IS NOT NULL THEN',
'          ''020''',
'         ELSE',
'          ''015''',
'       END STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(CASE',
'                                                        WHEN AC.OBJECT_CODE IS NOT NULL THEN',
'                                                         ''020''',
'                                                        ELSE',
'                                                         ''015''',
'                                                      END) STATUS_DESC',
'  FROM RADIATION.ACCESSORIES AC',
' WHERE AC.ACTIVE = ''Y''',
'  AND AC.accessory_type = ''P''',
' ORDER BY AC.DESCRIPTION'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'ACCESSORY_ID'
,p_display_column_name=>'DISP_ACCESSORY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10065544499377407)
,p_query_column_name=>'DISP_ACCESSORY'
,p_heading=>'Disp Accessory'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10065906236377407)
,p_query_column_name=>'STATUS_ID'
,p_heading=>'Status Id'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10066339218377407)
,p_query_column_name=>'STATUS_DESC'
,p_heading=>'Status Desc'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(10065112842377407)
,p_query_column_name=>'ACCESSORY_ID'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

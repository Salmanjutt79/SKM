prompt --application/shared_components/user_interface/lovs/currency_p8
begin
--   Manifest
--     CURRENCY_P8
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
 p_id=>wwv_flow_imp.id(279188116004839719)
,p_lov_name=>'CURRENCY_P8'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION AS CURRENCY_DESC, T.SHORT_DESCRIPTION AS CYRREBCT_SHORT_DESC, T.SYMBOL AS CURRENCY_SYMBOL, T.CURRENCY_ID ',
'  FROM DEFINITIONS.CURRENCY T',
' WHERE T.ACTIVE = ''Y''',
'ORDER BY T.DESCRIPTION'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'CURRENCY_ID'
,p_display_column_name=>'CYRREBCT_SHORT_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(279190764188859699)
,p_query_column_name=>'CURRENCY_DESC'
,p_heading=>'Currency Desc'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(279191023269859703)
,p_query_column_name=>'CYRREBCT_SHORT_DESC'
,p_heading=>'Short Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(279191403918859704)
,p_query_column_name=>'CURRENCY_SYMBOL'
,p_heading=>'Currency Symbol'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(279191889698859704)
,p_query_column_name=>'CURRENCY_ID'
,p_heading=>'Currency Id'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/lov_rad_implant_discharge_order
begin
--   Manifest
--     LOV_RAD_IMPLANT_DISCHARGE_ORDER
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
 p_id=>wwv_flow_imp.id(27283234400310293)
,p_lov_name=>'LOV_RAD_IMPLANT_DISCHARGE_ORDER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OM.ORDER_NO AS ORDER_NO,',
'       OM.ORDER_NO AS ORDER_NO_RETURN,',
'       OM.ORDER_TYPE_ID,',
'       OM.LOCATION_ID,',
'       OM.ORDER_LOCATION_ID,',
'       OM.ORDER_DATE',
'  FROM ORDERENTRY.ORDER_MASTER OM, ORDERENTRY.ORDER_OUTPATIENT_MEDICINE OOM',
' WHERE OM.ORDER_TYPE_ID = OOM.ORDER_TYPE_ID',
'   AND OM.ORDER_NO = OOM.ORDER_NO',
'   AND OM.LOCATION_ID = OOM.LOCATION_ID',
'   AND OM.ORDER_LOCATION_ID = OOM.ORDER_LOCATION_ID',
'   AND OM.MRNO = :P79_MRNO',
' ORDER BY OM.ORDER_DATE DESC',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'ORDER_NO_RETURN'
,p_display_column_name=>'ORDER_NO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27283518106310294)
,p_query_column_name=>'ORDER_NO_RETURN'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27283941695310294)
,p_query_column_name=>'ORDER_TYPE_ID'
,p_heading=>'Order Type Id'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27284337269310294)
,p_query_column_name=>'ORDER_NO'
,p_heading=>'Order No'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27284785479310294)
,p_query_column_name=>'LOCATION_ID'
,p_heading=>'Location Id'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27285110871310294)
,p_query_column_name=>'ORDER_LOCATION_ID'
,p_heading=>'Order Location Id'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(27285573055310295)
,p_query_column_name=>'ORDER_DATE'
,p_heading=>'Order Date'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_imp.component_end;
end;
/

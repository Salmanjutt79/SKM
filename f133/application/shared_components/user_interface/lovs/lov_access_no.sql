prompt --application/shared_components/user_interface/lovs/lov_access_no
begin
--   Manifest
--     LOV_ACCESS_NO
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
 p_id=>wwv_flow_imp.id(303944007535820572)
,p_lov_name=>'LOV_ACCESS_NO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.TITLE, T.ACCESS_NO',
'FROM SKM_LIBRARY.ACCESSION_INFORMATION T, SKM_LIBRARY.BOOK_INFORMATION B',
'WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'AND T.ISSUED = ''N''',
'AND UPPER(B.ISSUANCE_REFERENCE) != ''R''',
'AND B.BOOK_INFORMATION_ID IN (SELECT BOOK_INFORMATION_ID FROM SKM_LIBRARY.BOOK_VOLUME_INFORMATION',
'                             WHERE ACTIVE = ''Y'')',
'AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'AND T.LOCATION_ID = :GV_LOCATION_ID',
'AND T.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'ORDER BY TO_NUMBER(T.ACCESS_NO) ASC;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'ACCESS_NO'
,p_display_column_name=>'ACCESS_NO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(303944568894822865)
,p_query_column_name=>'ACCESS_NO'
,p_heading=>'Access No.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(303944942168822866)
,p_query_column_name=>'TITLE'
,p_heading=>'Title'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

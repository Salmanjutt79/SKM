prompt --application/shared_components/user_interface/lovs/book_title_p5
begin
--   Manifest
--     BOOK_TITLE_P5
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
 p_id=>wwv_flow_imp.id(264225542905001409)
,p_lov_name=>'BOOK_TITLE_P5'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BI.TITLE, ',
'       BI.SUB_TITLE, ',
'       T.BOOK_INFORMATION_ID, ',
'       T.VOLUME_ID',
'FROM SKM_LIBRARY.BOOK_VOLUME_INFORMATION T,',
'     SKM_LIBRARY.BOOK_INFORMATION BI',
'WHERE BI.BOOK_INFORMATION_ID = T.BOOK_INFORMATION_ID',
'  AND BI.ORGANIZATION_ID = T.ORGANIZATION_ID',
'  AND T.ORGANIZATION_ID =  :GV_ORGANIZATION_ID',
'ORDER BY BI.TITLE, BI.SUB_TITLE, T.VOLUME_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'BOOK_INFORMATION_ID'
,p_display_column_name=>'TITLE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264232243739022350)
,p_query_column_name=>'TITLE'
,p_heading=>'Title'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264232505232022353)
,p_query_column_name=>'SUB_TITLE'
,p_heading=>'Sub Title'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264232900558022354)
,p_query_column_name=>'BOOK_INFORMATION_ID'
,p_heading=>'Book Info. ID'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(264233351164022354)
,p_query_column_name=>'VOLUME_ID'
,p_heading=>'Vol. Id'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

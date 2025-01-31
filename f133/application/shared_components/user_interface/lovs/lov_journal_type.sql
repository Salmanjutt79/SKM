prompt --application/shared_components/user_interface/lovs/lov_journal_type
begin
--   Manifest
--     LOV_JOURNAL_TYPE
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
 p_id=>wwv_flow_imp.id(253790943435679277)
,p_lov_name=>'LOV_JOURNAL_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SP.DESCRIPTION JOURNAL_TYPE,',
'       T.JOURNAL_ID,',
'       T.DESCRIPTION JOURNAL,',
'       T.SHORT_DESC,',
'       T.COMPANY',
'  FROM SKM_LIBRARY.JOURNAL T,',
'       ICU.SCORE_PARAMETERS SP',
' WHERE SP.SCORE_PARAMETER_ID = T.JOURNAL_TYPE_ID',
' AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY T.DESCRIPTION',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'JOURNAL_TYPE'
,p_display_column_name=>'JOURNAL_TYPE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(253800623927728881)
,p_query_column_name=>'JOURNAL_TYPE'
,p_heading=>'Journal Type'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(253801486551728889)
,p_query_column_name=>'JOURNAL'
,p_heading=>'Journal'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(253801828744728889)
,p_query_column_name=>'SHORT_DESC'
,p_heading=>'Description'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(253802245912728889)
,p_query_column_name=>'COMPANY'
,p_heading=>'Company'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(253801013881728889)
,p_query_column_name=>'JOURNAL_ID'
,p_heading=>'Journal ID'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

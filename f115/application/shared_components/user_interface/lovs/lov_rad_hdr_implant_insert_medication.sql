prompt --application/shared_components/user_interface/lovs/lov_rad_hdr_implant_insert_medication
begin
--   Manifest
--     LOV_RAD_HDR_IMPLANT_INSERT_MEDICATION
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
 p_id=>wwv_flow_imp.id(161479916128352803)
,p_lov_name=>'LOV_RAD_HDR_IMPLANT_INSERT_MEDICATION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DRUG_ID, M.SHORT_DESC, U.DESCRIPTION UNIT, U.UNIT_ID UNITID',
'  FROM ENDOSCOPY.MEDICATIONS M, DEFINITIONS.UNIT U',
' WHERE M.UNIT_ID = U.UNIT_ID',
'   AND M.ACTIVE = ''Y''',
'   AND NATURE_ID = ''020''',
'   AND NATURE_DETAIL_ID = ''001''',
' ORDER BY M.SHORT_DESC',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'DRUG_ID'
,p_display_column_name=>'SHORT_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161482049567362714)
,p_query_column_name=>'SHORT_DESC'
,p_heading=>'Short Desc'
,p_display_sequence=>1
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(26143870911102649)
,p_query_column_name=>'UNIT'
,p_heading=>'Unit'
,p_display_sequence=>2
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(26304620201574034)
,p_query_column_name=>'UNITID'
,p_heading=>'Unitid'
,p_display_sequence=>3
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161481643860362714)
,p_query_column_name=>'DRUG_ID'
,p_display_sequence=>4
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/

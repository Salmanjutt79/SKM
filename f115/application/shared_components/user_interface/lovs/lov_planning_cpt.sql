prompt --application/shared_components/user_interface/lovs/lov_planning_cpt
begin
--   Manifest
--     LOV_PLANNING_CPT
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
 p_id=>wwv_flow_imp.id(34604176404779359)
,p_lov_name=>'LOV_PLANNING_CPT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DS.DESCRIPTION CPT_DESC, DS.CPT_ID',
'  FROM DEFINITIONS.CPT DS',
' WHERE DS.ACTIVE = ''Y''',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_210200'
,p_return_column_name=>'CPT_ID'
,p_display_column_name=>'CPT_ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CPT_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(34605253002789444)
,p_query_column_name=>'CPT_ID'
,p_heading=>'CPT ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(34605657748789444)
,p_query_column_name=>'CPT_DESC'
,p_heading=>'CPT Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/

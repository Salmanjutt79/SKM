prompt --application/shared_components/user_interface/lovs/lov_organization1
begin
--   Manifest
--     LOV_ORGANIZATION1
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
 p_id=>wwv_flow_imp.id(31597627857101073)
,p_lov_name=>'LOV_ORGANIZATION1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_owner=>'DEFINITIONS'
,p_query_table=>'ORGANIZATION'
,p_return_column_name=>'ORGANIZATION_ID'
,p_display_column_name=>'DESCRIPTION'
,p_default_sort_column_name=>'DESCRIPTION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/

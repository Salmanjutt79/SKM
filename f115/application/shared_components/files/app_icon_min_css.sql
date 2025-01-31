prompt --application/shared_components/files/app_icon_min_css
begin
--   Manifest
--     APP STATIC FILES: 115
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E6170702D69636F6E7B6261636B67726F756E642D696D6167653A75726C28736B6D2E6A7067293B6261636B67726F756E642D7265706561743A6E6F2D7265706561743B6261636B67726F756E642D73697A653A636F7665723B6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(2) := '2D706F736974696F6E3A3530253B6261636B67726F756E642D636F6C6F723A236564383133657D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(35872208185481782)
,p_file_name=>'app-icon.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/

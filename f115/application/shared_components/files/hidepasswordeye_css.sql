prompt --application/shared_components/files/hidepasswordeye_css
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
wwv_flow_imp.g_varchar2_table(1) := '696E7075743A3A2D6D732D72657665616C2C0D0A202020202020696E7075743A3A2D6D732D636C656172207B0D0A2020202020202020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(40182983852699312)
,p_file_name=>'hidePasswordEye.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/

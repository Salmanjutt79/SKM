prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(224669497306711309)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/

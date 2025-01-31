prompt --application/shared_components/logic/application_items/p_page_id
begin
--   Manifest
--     APPLICATION ITEM: P_PAGE_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(224695948368778906)
,p_name=>'P_PAGE_ID'
,p_protection_level=>'N'
);
wwv_flow_imp.component_end;
end;
/

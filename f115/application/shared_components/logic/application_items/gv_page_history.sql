prompt --application/shared_components/logic/application_items/gv_page_history
begin
--   Manifest
--     APPLICATION ITEM: GV_PAGE_HISTORY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(415884566121081558)
,p_name=>'GV_PAGE_HISTORY'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/

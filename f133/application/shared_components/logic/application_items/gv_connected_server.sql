prompt --application/shared_components/logic/application_items/gv_connected_server
begin
--   Manifest
--     APPLICATION ITEM: GV_CONNECTED_SERVER
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
 p_id=>wwv_flow_imp.id(224691878589778903)
,p_name=>'GV_CONNECTED_SERVER'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/

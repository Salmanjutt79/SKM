prompt --application/shared_components/logic/application_items/lv_sr_no
begin
--   Manifest
--     APPLICATION ITEM: LV_SR_NO
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
 p_id=>wwv_flow_imp.id(39254905731949070)
,p_name=>'LV_SR_NO'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/

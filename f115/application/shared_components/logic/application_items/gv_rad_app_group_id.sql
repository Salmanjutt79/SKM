prompt --application/shared_components/logic/application_items/gv_rad_app_group_id
begin
--   Manifest
--     APPLICATION ITEM: GV_RAD_APP_GROUP_ID
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
 p_id=>wwv_flow_imp.id(291522574642157503)
,p_name=>'GV_RAD_APP_GROUP_ID'
,p_protection_level=>'I'
,p_item_comment=>'This GV is used to retain value of group id as selected by the user in Radiation Appointment Queue  '
);
wwv_flow_imp.component_end;
end;
/

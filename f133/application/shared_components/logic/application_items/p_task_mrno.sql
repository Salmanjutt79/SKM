prompt --application/shared_components/logic/application_items/p_task_mrno
begin
--   Manifest
--     APPLICATION ITEM: P_TASK_MRNO
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
 p_id=>wwv_flow_imp.id(224696184355778906)
,p_name=>'P_TASK_MRNO'
,p_scope=>'GLOBAL'
,p_protection_level=>'N'
);
wwv_flow_imp.component_end;
end;
/

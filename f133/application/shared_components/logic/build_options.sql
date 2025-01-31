prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(224380771878711043)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/shortcuts/ig_tooltip_json
begin
--   Manifest
--     SHORTCUT: IG_TOOLTIP_JSON
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(66524684610376554)
,p_shortcut_name=>'IG_TOOLTIP_JSON'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut_language=>'PLSQL'
,p_shortcut=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_json varchar2(32700);',
'begin',
'  select json_arrayagg(',
'    json_object(',
'      ''staticId'' value static_id || ''_HDR'',',
'      ''columnId'' value ''C'' || column_id || ''_HDR'',',
'      ''helpText'' value help_text',
'    )',
'  ) as d',
'  into l_json',
'  from apex_appl_page_ig_columns',
'  where application_id = :APP_ID',
'    and page_id = :APP_PAGE_ID',
'    and help_text is not null',
'  ;',
'  return l_json;',
'end;'))
);
wwv_flow_imp.component_end;
end;
/

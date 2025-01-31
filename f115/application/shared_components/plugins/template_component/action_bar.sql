prompt --application/shared_components/plugins/template_component/action_bar
begin
--   Manifest
--     PLUGIN: ACTION_BAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(17742464265564633)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'ACTION_BAR'
,p_display_name=>'ACTION_BAR'
,p_supported_component_types=>'REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','ACTION_BAR'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li #APEX$ROW_IDENTIFICATION# class="t-NavTabs-item  is-active" aria-current="page" id="#ID#">',
'    <a href="#LINK#" class="t-NavTabs-link  " title="Menu Item 2">',
'        <span class="t-Icon fa fa-user" aria-hidden="true"></span>',
'        <span class="t-NavTabs-label">#LABEL#</span>',
'        <span class="t-NavTabs-badge "></span>',
'    </a>',
'</li>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Header-nav">',
'    <ul class="t-NavTabs t-NavTabs--inlineLabels-lg t-NavTabs--displayLabels-sm" id="#STATIC_ID#">#APEX$ROWS#</ul>',
'</div>'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <li #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li> -->',
'<li #APEX$ROW_IDENTIFICATION# class="t-NavTabs-item  is-active" aria-current="page" id="#ID#">',
'    <a href="#LINK#" class="t-NavTabs-link  " title="Menu Item 2">',
'        <span class="t-Icon fa fa-user" aria-hidden="true"></span>',
'        <span class="t-NavTabs-label">#LABEL#</span>',
'        <span class="t-NavTabs-badge "></span>',
'    </a>',
'</li>'))
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17757207098625348)
,p_plugin_id=>wwv_flow_imp.id(17742464265564633)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'ID'
,p_prompt=>'Id'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17750842325595360)
,p_plugin_id=>wwv_flow_imp.id(17742464265564633)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'LINK'
,p_prompt=>'Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17752567083601494)
,p_plugin_id=>wwv_flow_imp.id(17742464265564633)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp.component_end;
end;
/

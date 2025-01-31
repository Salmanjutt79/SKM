prompt --application/shared_components/plugins/dynamic_action/skm_call_report
begin
--   Manifest
--     PLUGIN: SKM.CALL.REPORT
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
 p_id=>wwv_flow_imp.id(101983846999475869)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'SKM.CALL.REPORT'
,p_display_name=>'Report Calling'
,p_category=>'EXECUTE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','SKM.CALL.REPORT'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function F_RENDER(p_dynamic_action in apex_plugin.t_dynamic_action,',
'                        p_plugin         in apex_plugin.t_plugin)',
'  return apex_plugin.t_dynamic_action_render_result as',
'  --- declare local variables',
'  V_RESULT APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'  ',
'',
'BEGIN',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'  END IF;',
'  ',
' APEX_JAVASCRIPT.ADD_LIBRARY(P_NAME      => ''call_report'',',
'                            P_DIRECTORY => P_PLUGIN.FILE_PREFIX,',
'                            P_VERSION   => NULL );',
'',
'  V_RESULT.JAVASCRIPT_FUNCTION := '' function () {callReport('' ||',
'                                   APEX_JAVASCRIPT.ADD_VALUE(APEX_PLUGIN.GET_AJAX_IDENTIFIER, TRUE) || -- ATT-01, pl/sql code',
'                                   APEX_JAVASCRIPT.ADD_VALUE(P_DYNAMIC_ACTION.ATTRIBUTE_02, TRUE) ||   -- Object code',
'                                   APEX_JAVASCRIPT.ADD_VALUE(P_DYNAMIC_ACTION.ATTRIBUTE_03, FALSE) ||   -- Object code',
'                                  ''); }'';',
'  RETURN V_RESULT;',
'',
'END;',
'',
'FUNCTION F_AJAX(P_DYNAMIC_ACTION IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'                           P_PLUGIN         IN APEX_PLUGIN.T_PLUGIN)',
'  RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_AJAX_RESULT IS',
'  V_RESULT APEX_PLUGIN.T_DYNAMIC_ACTION_AJAX_RESULT;',
'',
'  l_plsql_code P_DYNAMIC_ACTION.attribute_01%TYPE := P_DYNAMIC_ACTION.attribute_01;',
'',
'BEGIN',
'  apex_plugin_util.execute_plsql_code(p_plsql_code => l_plsql_code);',
'  RETURN null;',
'',
'END;',
''))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'BUTTON'
,p_substitute_attributes=>true
,p_reference_id=>302175822823215632
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>45
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101984127455475869)
,p_plugin_id=>wwv_flow_imp.id(101983846999475869)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'PLSQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_object_code VARCHAR2(100) := APEX_APPLICATION.g_x01;',
'  -- get_report_from means get it from Oracle report server or from local path',
'  l_get_report_from VARCHAR2(2000) := APEX_APPLICATION.g_x02;',
'  -- l_ws_url means url of the serve on which web service is deployed',
'  l_comm_mode   VARCHAR2(1000);',
'  l_params_list VARCHAR2(4000);',
'  l_print_type  VARCHAR2(100);',
'  l_auto_action VARCHAR2(100);',
'  l_report_url  VARCHAR2(4000);',
'  l_stop        char(1);',
'  l_alert_text  VARCHAR2(1000);',
'  l_result      VARCHAR2(4000);',
'',
'BEGIN',
'',
'  -- Show report from the oracle report server',
'  if l_get_report_from = ''Y'' then',
'  ',
'    l_params_list := ''P_MRNO=00100000000081&P_LOCATION_ID=001&P_ENCOUNTER_ID=001210002089'';',
'    HIS.SET_CONTEXT(''USER_MRNO'', ''00160000003821'');',
'    HIS.SET_CONTEXT(''TERMINAL'', ''WLSD'');',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', ''001'');',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', ''001'');',
'    -- dont edit below code',
'    his.pkg_report_calling.run_product(p_objectcode  => l_object_code,',
'                                       p_commmode    => l_comm_mode,',
'                                       p_paramlist   => l_params_list,',
'                                       p_printertype => l_print_type,',
'                                       p_autoaction  => l_auto_action,',
'                                       p_url         => l_report_url, -- url form which pdf will be generated',
'                                       p_stop        => l_stop,',
'                                       p_alerttext   => l_alert_text);',
'    :REPORT_URL := l_report_url;',
'  else',
'    -- Set your shared path here',
'    :REPORT_URL := ''//SKM-1960/SharedWars/QC_REPORT.pdf'';',
'  ',
'  end if;',
'  -- WS_URL -> Application level item',
'  :GET_REPORT_FROM_SERVER := l_get_report_from;',
'END;',
''))
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101984537256475869)
,p_plugin_id=>wwv_flow_imp.id(101983846999475869)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Object Code'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'S02REP00006'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101984982956475869)
,p_plugin_id=>wwv_flow_imp.id(101983846999475869)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Show Report From Report Server'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2066756E6374696F6E2063616C6C5265706F727428705F616A61785F6D6574686F642C705F6F626A6563745F636F64652C6765745F7265706F72745F66726F6D29207B0D0A0D0A202020202020202020202020202020617065782E7365727665722E706C';
wwv_flow_imp.g_varchar2_table(2) := '7567696E28705F616A61785F6D6574686F642C207B0D0A090909090920207830313A705F6F626A6563745F636F64652C0D0A090909090920207830323A6765745F7265706F72745F66726F6D0D0A0909090909207D2C207B202064617461547970653A20';
wwv_flow_imp.g_varchar2_table(3) := '2768746D6C27202020202020202020202020202009090909092C0D0A2020202020202020202020202020202020202020202020202F2F205355434553532066756E6374696F6E0D0A20202020202020202020202020202020202020202020202073756363';
wwv_flow_imp.g_varchar2_table(4) := '6573733A2066756E6374696F6E2829207B0D0A0909090909092F2F2F617065782E7375626D697428293B0D0A09090909090977696E646F772E6F70656E2827663F703D272B617065782E6974656D282770466C6F77496427292E67657456616C75652829';
wwv_flow_imp.g_varchar2_table(5) := '2B273A313030303A272B617065782E6974656D282770496E7374616E636527292E67657456616C756528292B273A3A3A31272C275F626C616E6B27293B0D0A2020202020202020202020202020202020202020202020202020202009090909090909090D';
wwv_flow_imp.g_varchar2_table(6) := '0A2020202020202020202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020207D293B0D0A20202020202020207D0D0A2020202020202020202020202020200D0A0909092020200D0A0909092020200D0A0D0A202020';
wwv_flow_imp.g_varchar2_table(7) := '20202020200D0A0D0A';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(101985383890475870)
,p_plugin_id=>wwv_flow_imp.id(101983846999475869)
,p_file_name=>'call_report.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2063616C6C5265706F727428652C612C6E297B617065782E7365727665722E706C7567696E28652C7B7830313A612C7830323A6E7D2C7B64617461547970653A2268746D6C222C737563636573733A66756E6374696F6E28297B7769';
wwv_flow_imp.g_varchar2_table(2) := '6E646F772E6F70656E2822663F703D222B617065782E6974656D282270466C6F77496422292E67657456616C756528292B223A313030303A222B617065782E6974656D282270496E7374616E636522292E67657456616C756528292B223A3A3A31222C22';
wwv_flow_imp.g_varchar2_table(3) := '5F626C616E6B22297D7D297D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(101985795639475871)
,p_plugin_id=>wwv_flow_imp.id(101983846999475869)
,p_file_name=>'call_report.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/

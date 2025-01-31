prompt --application/pages/page_01000
begin
--   Manifest
--     PAGE: 01000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>1000
,p_name=>'Report'
,p_alias=>'REPORT'
,p_step_title=>'Report'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_upd_yyyymmddhh24miss=>'20221208130413'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100704756314779733)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<iframe id="ifram" title="PDF Report" style="width:100%;" height=850></iframe>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72514443476863293)
,p_name=>'P1000_WS_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(100704756314779733)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72514765993863294)
,p_name=>'report_setup'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72515784641863295)
,p_event_id=>wwv_flow_imp.id(72514765993863294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'P_AlertText varchar2(1000);',
'begin',
'select report_ws_url into :P1000_WS_URL from definitions.report_server  where as_name = :GV_CONNECTED_SERVER',
'and active = ''Y'';',
' EXCEPTION',
'    WHEN OTHERS THEN',
'      P_AlertText := ''Error in execution '' ||',
'                     $$PLSQL_LINE$$ || SQLERRM;',
'                     :P1000_WS_URL :='''';',
'end;',
''))
,p_attribute_02=>'P1000_WS_URL'
,p_attribute_03=>'P1000_WS_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72515246348863294)
,p_event_id=>wwv_flow_imp.id(72514765993863294)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ws_url =$v(''P1000_WS_URL'');',
'',
'// !$v(''P1000_WS_URL'') CHECK ws_url is not null',
'if(ws_url === '''' || ws_url === null){',
'   apex.message.alert(''Report Server is not defined'');',
'    return;',
'}',
'',
'if(''&GET_REPORT_FROM_SERVER.'' === ''Y''){',
'    ws_url += ''from_server'';  ',
'}',
'else {',
' ws_url +=''from_local_path'';',
'}',
'',
'$.ajax({',
'  url: ws_url,',
'  type: "get", //send it through get method',
'  data: { ',
'    reportPath:''&REPORT_URL.''',
'   },',
'  success: function(response) {',
'      document.getElementById("ifram").src = "data:application/pdf;base64, " + response.data+''#toolbar=0'';',
'    },',
'  error: function(response) {',
'   apex.message.alert(''Error Occured while calling Report service ''+response.responseJSON.message);',
'    ',
'  }',
'});',
'',
''))
);
wwv_flow_imp.component_end;
end;
/

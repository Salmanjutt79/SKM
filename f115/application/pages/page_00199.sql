prompt --application/pages/page_00199
begin
--   Manifest
--     PAGE: 00199
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
 p_id=>199
,p_name=>'View Document'
,p_alias=>'VIEW-DOCUMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'View Document'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var videoContainer = document.getElementById(''video'');',
' var pdfViewer = document.getElementById(''pdfViewer'');'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'100%'
,p_dialog_chained=>'N'
,p_page_component_map=>'09'
,p_last_updated_by=>'MUHAMMADSHARIF'
,p_last_upd_yyyymmddhh24miss=>'20250116212911'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1098685686511066979)
,p_plug_name=>'Play Video'
,p_region_name=>'view_rg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_URL'
,p_attribute_01=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Load_files:NO'
,p_attribute_02=>'IFRAME'
,p_attribute_03=>'style="width:100%; height:850px"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429363612744224283)
,p_name=>'P199_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1098685686511066979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429364049208224284)
,p_name=>'P199_MIME_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1098685686511066979)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429364419107224284)
,p_name=>'P199_GUIDED_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1098685686511066979)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(527545609945926326)
,p_name=>'P199_FILE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1098685686511066979)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297162349374478833)
,p_name=>'show_video_or_documents'
,p_event_sequence=>10
,p_condition_element=>'P199_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297162885544478837)
,p_event_id=>wwv_flow_imp.id(297162349374478833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var mime_type=$v("P199_MIME_TYPE").toUpperCase();',
'{',
'   ',
'    apex.server.process(''get_video'',',
'    {},',
'	{',
'    success: function(data) {',
'        //pdfViewer.src = ''data:application/pdf;base64,'' + data.base64Clob;',
'        pdfViewer.src = ''data:''||mime_type||'';base64,'' + data.base64Clob;',
'         video.style.display="none";',
'         pdfViewer.style.display = "inline";',
'         ',
'        }',
'  }',
');',
'}',
'/*var mime_type=$v("P199_MIME_TYPE").toUpperCase();',
'',
'if(mime_type === "PDF" || mime_type === "DOCS" || mime_type === "PPT" ||mime_type === "PNG")',
'{',
'   ',
'    apex.server.process(''get_video'',',
'    {},',
'	{',
'    success: function(data) {',
'        //pdfViewer.src = ''data:application/pdf;base64,'' + data.base64Clob;',
'        pdfViewer.src = ''data:''||mime_type||'';base64,'' + data.base64Clob;',
'         video.style.display="none";',
'         pdfViewer.style.display = "inline";',
'         ',
'        }',
'  }',
');',
'}',
'else if (mime_type === "WEBM" || mime_type === "MP4")',
'{',
'   ',
'apex.server.process(''get_video'',',
'    {},',
'	{',
'    success: function(data) {',
'            ',
'         videoContainer.src = ''data:video/webm;base64,'' + data.base64Clob;',
'          pdfViewer.style.display = "none";',
'         videoContainer.style.display = "inline";',
'        ',
'        }',
'  }',
');',
'}',
'else',
'{',
'alert(''Wrong mime type.'');',
'}',
'',
'*/',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(297163235876478837)
,p_name=>'close dialog'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297163766742478838)
,p_event_id=>wwv_flow_imp.id(297163235876478837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>'(:P199_FILE_NAME=''DOCX'' OR :P199_FILE_NAME=''PPTX'' OR :P199_FILE_NAME=''TIF'' OR :P199_FILE_NAME=''MP3'')'
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(297161980058478827)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_video'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_clob clob;',
'  v_blob blob;',
'begin',
' select db_fiLE into v_blob from MIS.EGUIDE_DETAIL  where EGUIDEM_id=:P199_SEQ_ID AND EGUIDED_ID=:P199_GUIDED_ID;',
'',
' v_clob := apex_web_service.blob2clobbase64( p_blob => v_blob );',
'   ',
'  apex_json.open_object;',
'  apex_json.write(''base64Clob'', v_clob);',
'  apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>297161980058478827
);
wwv_flow_imp.component_end;
end;
/

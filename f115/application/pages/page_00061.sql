prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_name=>'VIEW_FILE'
,p_alias=>'VIEW-FILE'
,p_page_mode=>'MODAL'
,p_step_title=>'VIEW_FILE'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var videoContainer = document.getElementById(''video'');',
' var pdfViewer = document.getElementById(''pdfViewer'');'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'SUPPORT'
,p_last_upd_yyyymmddhh24miss=>'20231117180530'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34194580891979377)
,p_plug_name=>'IMAGE'
,p_region_name=>'IMAGE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(986567347127806564)
,p_plug_name=>'Play Video'
,p_region_name=>'VIDEO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div align="center">',
'',
'<video id="video" autoplay controls style="display:none"></video> ',
'<div width="100%" height="100%">',
'',
'<iframe scr="" id="pdfViewer"  style="border:none;display:none;" type ="application/pdf" width="100%" height="1000"></iframe>',
'</div>',
'</div>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34988748757368630)
,p_name=>'P61_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34194580891979377)
,p_prompt=>'Image'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>'select db_field from lob.documents_store  where document_id=:P61_SEQ_ID;'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(502718826839825061)
,p_name=>'P61_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(986567347127806564)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(502719244426825068)
,p_name=>'P61_MIME_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(986567347127806564)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11390004248947829)
,p_name=>'show_video_or_documents'
,p_event_sequence=>10
,p_condition_element=>'P61_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11390532647947830)
,p_event_id=>wwv_flow_imp.id(11390004248947829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'select s.document_type into :P61_MIME_TYPE from lob.documents_store s  where s.document_id =:P61_SEQ_ID;',
'',
'end;'))
,p_attribute_02=>'P61_SEQ_ID'
,p_attribute_03=>'P61_MIME_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11391071557947830)
,p_event_id=>wwv_flow_imp.id(11390004248947829)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var mime_type=$v("P61_MIME_TYPE").toUpperCase();',
'',
'if(mime_type === "PDF" || mime_type === "DOCS" || mime_type === "MP4")',
'{  ',
'     $("#IMAGE").hide();',
'      $("#VIDEO").show();',
'    }else   {',
' $("#IMAGE").show();',
'       $("#VIDEO").hide();',
'    }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11391530745947830)
,p_event_id=>wwv_flow_imp.id(11390004248947829)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var mime_type=$v("P61_MIME_TYPE").toUpperCase();',
'',
'if(mime_type === "PDF" || mime_type === "DOCS" || mime_type === "PNG")',
'{',
'   ',
'    apex.server.process(''get_video'',',
'    {},',
'	{',
'    success: function(data) {',
'        pdfViewer.src = ''data:application/pdf;base64,'' + data.base64Clob;',
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
'    ',
'//alert(''Wrong mime type.'');',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11389688143947829)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_video'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_clob clob;',
'  v_blob blob;',
'begin',
' select db_field into v_blob from lob.documents_store  where document_id=:P61_SEQ_ID;',
'',
' v_clob := apex_web_service.blob2clobbase64( p_blob => v_blob );',
'   ',
'  apex_json.open_object;',
'  apex_json.write(''base64Clob'', v_clob);',
'  apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11389688143947829
);
wwv_flow_imp.component_end;
end;
/

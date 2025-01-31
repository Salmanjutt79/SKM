prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Document Store'
,p_alias=>'DOCUMENT-STORE'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Store'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MOHTASHAMBILAL'
,p_last_upd_yyyymmddhh24miss=>'20250110112307'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(575672765910987281)
,p_plug_name=>'NON_DB_ITEMS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1300372925490372796)
,p_plug_name=>'DOCUMENTS_STORE'
,p_region_name=>'DS'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT rowid,S.DOCUMENT_ID,',
'       S.DOCUMENT_NAME,',
'       S.STORAGE_TYPE,',
'       S.DB_FIELD,',
'       S.OBJECT_CODE,',
'       S.LOCATION_ID,',
'       S.ORGANIZATION_ID,',
'       S.DOCUMENT_TYPE',
'  FROM LOB.DOCUMENTS_STORE S'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290507895187480002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(225756078443730734)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290508291083480004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Close'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-close'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290508659280480005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK'
,p_button_position=>'CREATE'
,p_button_condition=>'P100_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(459649046734320160)
,p_name=>'P100_NON_DB_LOT_NO_ID_LDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(575672765910987281)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This Non Db Item brings reference from Page 24 in Application 157. '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460135761489957823)
,p_name=>'P100_NON_DB_DOCUMENT_ID_LDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(575672765910987281)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This Non Db Item brings reference from Page 24 in Application 157. '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460135831393957824)
,p_name=>'P100_NON_DB_SR_NO_LDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(575672765910987281)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This Non Db Item brings reference from Page 24 in Application 157. '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(575682428120987306)
,p_name=>'P100_NON_DB_DEVICE_ID_DDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(575672765910987281)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This Non Db Item brings reference from Page 24 in Application 157. '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(575682592927987307)
,p_name=>'P100_NON_DB_SR_NO_DDA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(575672765910987281)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This Non Db Item brings reference from Page 24 in Application 157. '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(575682883963987310)
,p_name=>'P100_NON_DB_DOCUMENT_ID_DDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(575672765910987281)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This Non Db Item brings reference from Page 24 in Application 157. '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112730899533737716)
,p_name=>'P100_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112731295465737715)
,p_name=>'P100_DOCUMENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_source=>'DOCUMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112731645706737715)
,p_name=>'P100_DOCUMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_source=>'DOCUMENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112732026831737714)
,p_name=>'P100_STORAGE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_default=>'DB'
,p_source=>'STORAGE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112732424451737714)
,p_name=>'P100_DB_FIELD'
,p_source_data_type=>'BLOB'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_prompt=>'Attatch File'
,p_source=>'DB_FIELD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>2
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112732847589737714)
,p_name=>'P100_OBJECT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_default=>'S07FRM00366'
,p_source=>'OBJECT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112733216707737714)
,p_name=>'P100_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_default=>':GV_LOCATION_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112733611294737714)
,p_name=>'P100_ORGANIZATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_default=>':GV_ORGNIZATION_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'ORGANIZATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112734018562737712)
,p_name=>'P100_DOCUMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_item_source_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_source=>'DOCUMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112734456120737712)
,p_name=>'P100_REQUEST_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1112734891214737712)
,p_name=>'P100_SR_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1300372925490372796)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290519054508480027)
,p_name=>'CloseDialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(290508291083480004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290520013903480027)
,p_event_id=>wwv_flow_imp.id(290519054508480027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.top.postMessage(''reply'', ''*'')'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290519541987480027)
,p_event_id=>wwv_flow_imp.id(290519054508480027)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290520437381480027)
,p_name=>'hide_close_button'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290520977728480027)
,p_event_id=>wwv_flow_imp.id(290520437381480027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var button = parent.$(''.ui-dialog-titlebar-close''); ',
'button.hide(); ',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290521468904480028)
,p_event_id=>wwv_flow_imp.id(290520437381480027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_REQUEST'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'V(''REQUEST'')'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290518256456480024)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to get Document ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_ERROR VARCHAR2(4000);',
' V_DOCUMENT_ID  VARCHAR2(500);',
' V_DOCUMENT_TYPE VARCHAR2(500);',
'BEGIN',
'--HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE => ''APEX'', P_CATEGORY => ''HIRING_APEX'');',
'  V_DOCUMENT_ID := LOB.F_NEXT_COUNTER(P_COUNTER_TYPE   => ''LOB.DOCUMENTS_STORE.DOCUMENT_ID'',',
'                                      P_WHERE_CLAUSE   => NULL,',
'                                      P_LOCATION_ID    => :GV_LOCATION_ID,',
'                                      P_CALLING_OBJECT => ''S07FRM00366'',',
'                                      P_CALLING_USER   => :GV_USER_MRNO,',
'                                      P_CALLING_EVENT  => NULL,',
'                                      P_ERROR          => V_ERROR);',
':P100_DOCUMENT_ID := V_DOCUMENT_ID ;',
'V_DOCUMENT_TYPE := TRIM(UPPER(SUBSTR(:P100_DB_FIELD,(INSTR(:P100_DB_FIELD,''.'')+1))));	 ',
':P100_DOCUMENT_TYPE := V_DOCUMENT_TYPE;',
':P100_DOCUMENT_NAME := :P100_DOCUMENT_ID || ''-'' || TRIM(UPPER(SUBSTR(:P100_DB_FIELD,(INSTR(:P100_DB_FIELD,''/'')+1))));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>290518256456480024
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290515513639480016)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1300372925490372796)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form DOCUMENTS_STORE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Document attached successfully!'
,p_internal_uid=>290515513639480016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290518635565480025)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Document ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P100_NON_DB_DOCUMENT_ID_DDA IS NOT NULL   --Attachement for Page 06 - Device Documnet Attachement',
'THEN',
'UPDATE NURSING.POCT_DEVICE_DOC_ATTACHMENT D',
'    SET D.DOCUMENT_ID     = :P100_DOCUMENT_ID,',
'        D.DOCUMENT_NAME   = :P100_DOCUMENT_NAME,',
'        D.ATTACHMENT_DATE = SYSDATE,',
'        D.ATTACHED_BY     = :GV_USER_MRNO',
'    WHERE D.DEVICE_ID = :P100_NON_DB_DEVICE_ID_DDA',
'     AND D.DOCUMENT_ID = :P100_NON_DB_DOCUMENT_ID_DDA',
'     AND D.SR_NO = :P100_NON_DB_SR_NO_DDA;',
'ELSE',
'    NULL;',
'END IF;',
'',
'',
'IF :P100_NON_DB_DOCUMENT_ID_LDA IS NOT NULL   --Attachement for Page 06 - LOT NO. Documnet Attachement',
'THEN',
'UPDATE NURSING.POCT_DOCUMENT_ATTACHMENT D ',
'    SET D.DOCUMENT_ID     = :P100_DOCUMENT_ID,',
'        D.DOCUMENT_NAME   = :P100_DOCUMENT_NAME,',
'        D.ATTACHMENT_DATE = SYSDATE,',
'        D.ATTACHED_BY     = :GV_USER_MRNO',
'    WHERE D.LOT_NO_ID     = :P100_NON_DB_LOT_NO_ID_LDA --Lot number setup_id',
'     AND D.DOCUMENT_ID    = :P100_NON_DB_DOCUMENT_ID_LDA',
'     AND D.SR_NO          = :P100_NON_DB_SR_NO_LDA;',
'ELSE',
'    NULL;',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>290518635565480025
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290515100582480016)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1300372925490372796)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DOCUMENTS_STORE'
,p_internal_uid=>290515100582480016
);
wwv_flow_imp.component_end;
end;
/

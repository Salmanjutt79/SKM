prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'Signing Window'
,p_alias=>'SIGNING-WINDOW'
,p_page_mode=>'MODAL'
,p_step_title=>'Signing Window'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P43_PASSWORD").setFocus();',
'',
'',
'document.getElementById("P43_PASSWORD").addEventListener("keydown", function (event) {',
'    if ((event.key === "Enter") || (event.key === ''enter'')) {',
'        document.getElementById("sign").click();',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.font-maroon { color:maroon}',
'.font-red { color:red}',
'.margin-top-20 {margin-top: -20}',
'.t-Region-header { line-height: 4px}',
'.t-Region-body {padding-top:0px;padding-right:10px;',
'padding-bottom:0px;',
'padding-left:10px;}',
'/*---------------------------------*/',
'#P43_PATIENT_MRNO{',
'        margin-top: 8px;',
'',
'}',
'/*---------------------------------*/',
'#P43_NAME.v{',
'    color: "MAROON";',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OWAIS'
,p_last_upd_yyyymmddhh24miss=>'20240515150608'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(281124555164906823)
,p_plug_name=>'Sign'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37730328125803932)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Custom submit'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37730701386803937)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_button_name=>'SIGN'
,p_button_static_id=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_button_cattributes=>'accesskey=''s'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37731158231803937)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_button_cattributes=>'accesskey=''x'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6139687964293406)
,p_name=>'P43_FOLLOWUP_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6139719139293407)
,p_name=>'P43_SCHEDULE_SRNO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6139850949293408)
,p_name=>'P43_SCHEDULE_EVENT_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7073210119126519)
,p_name=>'P43_SUCCESS_MSG'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37651633526270634)
,p_name=>'P43_SIGN_STATUS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37651722551270635)
,p_name=>'P43_RADIATION_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37651840618270636)
,p_name=>'P43_SITE_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37651944238270637)
,p_name=>'P43_RAD_MASTER_MRNO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232243425024082544)
,p_name=>'P43_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232243825761082572)
,p_name=>'P43_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_item_default=>'GV_USER_NAME'
,p_item_default_type=>'ITEM'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232244196653082572)
,p_name=>'P43_MRNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232244599975082572)
,p_name=>'P43_PASSWORD'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>15
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232245043483082572)
,p_name=>'P43_LOCATION_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232245413870082573)
,p_name=>'P43_LOGIN_MESSAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232245778710082575)
,p_name=>'P43_VALIDATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232246243375082576)
,p_name=>'P43_LOGIN_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295462672575126645)
,p_name=>'P43_TXT_ALERT_TEXT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(343500441037360342)
,p_name=>'P43_PATIENT_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_colspan=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(343500472600360343)
,p_name=>'P43_PATIENT_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(343501198027360350)
,p_name=>'P43_ERROR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(281124555164906823)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37737302758803951)
,p_name=>'Cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37731158231803937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37737852771803952)
,p_event_id=>wwv_flow_imp.id(37737302758803951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37741135019803953)
,p_name=>'Sign'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37730701386803937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37742173495803954)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'ValidateMRNO&Password'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P43_TXT_ALERT_TEXT := null;',
'  :P43_SUCCESS_MSG := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P43_DISP_MRNO,',
'                                          :P43_PASSWORD,',
'                                          V_RETURN_ITEM,',
'                                          V_ALERT_TEXT,',
'                                          P_STOP);',
'  Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                              ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'  IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'    :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'    :P43_TXT_ALERT_TEXT := NULL;',
'  END IF;',
'END;'))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140015243293410)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140113383293411)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'RadiationRequestSign'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''S'' THEN',
'    RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                                 P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                                 P_RADIATION_NO    => :P43_RADIATION_NO,',
'                                                 P_SITE_ID         => :P43_SITE_ID,',
'                                                 P_USER_MRNO       => :P43_DISP_MRNO,',
'                                                 P_OBJECT_CODE     => ''S18FRM00128'',',
'                                                 P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                                 P_ALERT_TEXT      => V_ALERT_TEXT,',
'                                                 P_STOP            => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Record SIGNED Properly ...'';',
'    END IF;',
'  END IF;',
'END;'))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT,P43_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140204900293412)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140302717293413)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'RadiationRequestApproval'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''A'' THEN',
'    RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                     ''ORGANIZATION_ID''),',
'                                                    P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                     ''LOCATION_ID''),',
'                                                    P_RADIATION_NO    => :P43_RADIATION_NO,',
'                                                    P_SITE_ID         => :P43_SITE_ID,',
'                                                    P_USER_MRNO       => :P43_DISP_MRNO,',
'                                                    P_OBJECT_CODE     => ''S18FRM00128'',',
'                                                    P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                     ''TERMINAL''),',
'                                                    P_ALERT_TEXT      => V_ALERT_TEXT,',
'                                                    P_STOP            => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Request Approved Properly ...'';',
'    END IF;',
'  END IF;',
'END;'))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT,P43_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140454799293414)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140551781293415)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'RadiationRequestCancel'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''C'' THEN',
'    RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P43_RADIATION_NO,',
'                                                   P_MRNO              => :P43_RAD_MASTER_MRNO,',
'                                                   P_SITE_ID           => :P43_SITE_ID,',
'                                                   P_USER_MRNO         => :P43_DISP_MRNO,',
'                                                   P_AUTHORIZED_USER   => ''N'',',
'                                                   P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_ORDER_LOCATION_ID => NVL(SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                          ''ORDER_LOCATION_ID''),',
'                                                                              ''001''),',
'                                                   P_OBJECT_CODE       => ''S18FRM00128'',',
'                                                   P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''TERMINAL''),',
'                                                   P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                                   P_STOP              => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Request CANCELLED Properly ...'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT,P43_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140701286293417)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140643856293416)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'SignRadiationFollowUp'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''F'' THEN',
'    RADIATION.PKG_S18FRM00131.SIGN_RAD_FOLOWUP(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P43_RADIATION_NO,',
'                                               P_SITE_ID           => :P43_SITE_ID,',
'                                               P_FOLLOWUP_ID       => :P43_FOLLOWUP_ID,',
'                                               P_SIGN_BY           => :P43_DISP_MRNO,',
'                                               P_SCHEDULE_SRNO     => :P43_SCHEDULE_SRNO,',
'                                               P_SCHEDULE_EVENT_ID => :P43_SCHEDULE_EVENT_ID,',
'                                               P_USER_MRNO         => :P43_DISP_MRNO,',
'                                               P_OBJECT_CODE       => ''S18APX00044'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                               P_STOP              => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Follow Up Signed Properly ...'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6140878101293418)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7073356638126520)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_SUCCESS_MSG'') !== '''') {',
'    apex.message.alert($v(''P43_SUCCESS_MSG''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37742687959803954)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P43_TXT_ALERT_TEXT.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_attribute_06=>'Ok'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P43_TXT_ALERT_TEXT'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37741613156803953)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P43_TXT_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37743144975803954)
,p_event_id=>wwv_flow_imp.id(37741135019803953)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P43_DISP_MRNO,P43_MRNO,P43_LOGIN_MESSAGE,P43_VALIDATE,P43_LOGIN_DATE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P43_TXT_ALERT_TEXT'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37738238917803952)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4342383889671808)
,p_event_id=>wwv_flow_imp.id(37738238917803952)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37738795473803952)
,p_event_id=>wwv_flow_imp.id(37738238917803952)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P43_PATIENT_TYPE IS NOT NULL AND :P43_PATIENT_MRNO IS NOT NULL THEN',
':P43_DISP_MRNO := :P43_PATIENT_TYPE ||LPAD(:P43_PATIENT_MRNO, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P43_DISP_MRNO,P43_PATIENT_TYPE,P43_PATIENT_MRNO'
,p_attribute_03=>'P43_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37739293596803953)
,p_event_id=>wwv_flow_imp.id(37738238917803952)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P43_ERROR := NULL;',
'  IF :P43_PATIENT_MRNO IS NOT NULL THEN',
'    :P43_DISP_MRNO := :P43_PATIENT_TYPE || LPAD(:P43_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P43_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P43_ERROR        := ''This is not an active employee.'';',
'      :P43_PATIENT_MRNO := NULL;',
'      :P43_DISP_MRNO    := NULL;',
'      :P43_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P43_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P43_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P43_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P43_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P43_ERROR,P43_PATIENT_MRNO,P43_PATIENT_TYPE,P43_DISP_MRNO,P43_NAME'
,p_attribute_03=>'P43_ERROR,P43_PATIENT_MRNO,P43_PATIENT_TYPE,P43_DISP_MRNO,P43_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37739788111803953)
,p_event_id=>wwv_flow_imp.id(37738238917803952)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P43_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P43_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37740269651803953)
,p_event_id=>wwv_flow_imp.id(37738238917803952)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P43_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P43_DISP_MRNO);'
,p_attribute_02=>'P43_DISP_MRNO'
,p_attribute_03=>'P43_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P43_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37740740522803953)
,p_event_id=>wwv_flow_imp.id(37738238917803952)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_NAME'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P43_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54337943027519527)
,p_name=>'EnterKeySign'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P43_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338118393519529)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'ValidateMRNO&Password'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P43_TXT_ALERT_TEXT := null;',
'  :P43_SUCCESS_MSG := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P43_DISP_MRNO,',
'                                          :P43_PASSWORD,',
'                                          V_RETURN_ITEM,',
'                                          V_ALERT_TEXT,',
'                                          P_STOP);',
'  Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                              ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'  IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'    :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'    :P43_TXT_ALERT_TEXT := NULL;',
'  END IF;',
'END;'))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338271722519530)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338339266519531)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'RadiationRequestSign'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''S'' THEN',
'    RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                                 P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                                 P_RADIATION_NO    => :P43_RADIATION_NO,',
'                                                 P_SITE_ID         => :P43_SITE_ID,',
'                                                 P_USER_MRNO       => :P43_DISP_MRNO,',
'                                                 P_OBJECT_CODE     => ''S18FRM00128'',',
'                                                 P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                                 P_ALERT_TEXT      => V_ALERT_TEXT,',
'                                                 P_STOP            => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Record SIGNED Properly ...'';',
'    END IF;',
'  END IF;',
'END;'))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT,P43_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338403981519532)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338575149519533)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'RadiationRequestApproval'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''A'' THEN',
'    RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                     ''ORGANIZATION_ID''),',
'                                                    P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                     ''LOCATION_ID''),',
'                                                    P_RADIATION_NO    => :P43_RADIATION_NO,',
'                                                    P_SITE_ID         => :P43_SITE_ID,',
'                                                    P_USER_MRNO       => :P43_DISP_MRNO,',
'                                                    P_OBJECT_CODE     => ''S18FRM00128'',',
'                                                    P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                     ''TERMINAL''),',
'                                                    P_ALERT_TEXT      => V_ALERT_TEXT,',
'                                                    P_STOP            => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Request Approved Properly ...'';',
'    END IF;',
'  END IF;',
'END;'))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT,P43_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338622231519534)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338761046519535)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'RadiationRequestCancel'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''C'' THEN',
'    RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P43_RADIATION_NO,',
'                                                   P_MRNO              => :P43_RAD_MASTER_MRNO,',
'                                                   P_SITE_ID           => :P43_SITE_ID,',
'                                                   P_USER_MRNO         => :P43_DISP_MRNO,',
'                                                   P_AUTHORIZED_USER   => ''N'',',
'                                                   P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_ORDER_LOCATION_ID => NVL(SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                          ''ORDER_LOCATION_ID''),',
'                                                                              ''001''),',
'                                                   P_OBJECT_CODE       => ''S18FRM00128'',',
'                                                   P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''TERMINAL''),',
'                                                   P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                                   P_STOP              => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Request CANCELLED Properly ...'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT,P43_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338804270519536)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54338904241519537)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'SignRadiationFollowUp'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF NVL(:P43_SIGN_STATUS, ''~'') = ''F'' THEN',
'    RADIATION.PKG_S18FRM00131.SIGN_RAD_FOLOWUP(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P43_RADIATION_NO,',
'                                               P_SITE_ID           => :P43_SITE_ID,',
'                                               P_FOLLOWUP_ID       => :P43_FOLLOWUP_ID,',
'                                               P_SIGN_BY           => :P43_DISP_MRNO,',
'                                               P_SCHEDULE_SRNO     => :P43_SCHEDULE_SRNO,',
'                                               P_SCHEDULE_EVENT_ID => :P43_SCHEDULE_EVENT_ID,',
'                                               P_USER_MRNO         => :P43_DISP_MRNO,',
'                                               P_OBJECT_CODE       => ''S18APX00044'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                               P_STOP              => P_STOP);',
'    Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'    IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'      :P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
'      :P43_TXT_ALERT_TEXT := NULL;',
'      :P43_SUCCESS_MSG := ''Follow Up Signed Properly ...'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P43_MRNO,P43_PASSWORD,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID,P43_SCHEDULE_SRNO,P43_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P43_TXT_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54339010376519538)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_TXT_ALERT_TEXT'') !== '''') {',
'    apex.message.alert($v(''P43_TXT_ALERT_TEXT''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54339139304519539)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'AlertMessage'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P43_SUCCESS_MSG'') !== '''') {',
'    apex.message.alert($v(''P43_SUCCESS_MSG''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54339225764519540)
,p_event_id=>wwv_flow_imp.id(54337943027519527)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P43_TXT_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37735717592803947)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ALERT_TEXT VARCHAR2(4000);',
'P_STOP VARCHAR2(1);',
'V_RETURN_ITEM  VARCHAR2(100);',
'EX_EXCEPTION EXCEPTION;',
'BEGIN',
':P43_TXT_ALERT_TEXT := null;',
'HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                :GV_USER_MRNO,',
'                                :GV_TERMINAL,',
'                                :GV_LOCATION_ID,',
'                                ''PU_LOGIN'',',
'                                :P43_DISP_MRNO,',
'                                :P43_PASSWORD,',
'                                V_RETURN_ITEM,',
'                                V_ALERT_TEXT,',
'                                P_STOP);',
'Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                    ''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'ELSE',
'Apex_Util.Set_Session_State(''P43_VALIDATE'',''Y'');',
':P43_TXT_ALERT_TEXT := NULL;',
'',
'IF NVL(:P43_SIGN_STATUS, ''~'') = ''S'' THEN',
'RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                      ''ORGANIZATION_ID''),',
'     P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                      ''LOCATION_ID''),',
'     P_RADIATION_NO    => :P43_RADIATION_NO,',
'     P_SITE_ID         => :P43_SITE_ID,',
'     P_USER_MRNO       => :GV_USER_MRNO,',
'     P_OBJECT_CODE     => ''S18FRM00128'',',
'     P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                      ''TERMINAL''),',
'     P_ALERT_TEXT      => V_ALERT_TEXT,',
'     P_STOP            => P_STOP);',
'Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'ELSE',
'Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
':P43_TXT_ALERT_TEXT := NULL;',
'END IF;',
'ELSIF NVL(:P43_SIGN_STATUS, ''~'') = ''A'' THEN',
'RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                         ''ORGANIZATION_ID''),',
'        P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                         ''LOCATION_ID''),',
'        P_RADIATION_NO    => :P43_RADIATION_NO,',
'        P_SITE_ID         => :P43_SITE_ID,',
'        P_USER_MRNO       => :GV_USER_MRNO,',
'        P_OBJECT_CODE     => ''S18FRM00128'',',
'        P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                         ''TERMINAL''),',
'        P_ALERT_TEXT      => V_ALERT_TEXT,',
'        P_STOP            => P_STOP);',
'Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'ELSE',
'Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
':P43_TXT_ALERT_TEXT := NULL;',
'END IF;',
'ELSIF NVL(:P43_SIGN_STATUS, ''~'') = ''C'' THEN',
'RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P43_RADIATION_NO,',
'       P_MRNO              => :P43_RAD_MASTER_MRNO,',
'       P_SITE_ID           => :P43_SITE_ID,',
'       P_USER_MRNO         => :GV_USER_MRNO,',
'       P_AUTHORIZED_USER   => ''N'',',
'       P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                          ''ORGANIZATION_ID''),',
'       P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                          ''LOCATION_ID''),',
'       P_ORDER_LOCATION_ID => NVL(SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                          ''ORDER_LOCATION_ID''),''001''),',
'       P_OBJECT_CODE       => ''S18FRM00128'',',
'       P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                          ''TERMINAL''),',
'       P_ALERT_TEXT        => V_ALERT_TEXT,',
'       P_STOP              => P_STOP);',
'Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P43_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'ELSE',
'Apex_Util.Set_Session_State(''P43_VALIDATE'', ''Y'');',
':P43_TXT_ALERT_TEXT := NULL;',
'END IF;',
'END IF;',
'END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P43_LOGIN_MESSAGE.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37730701386803937)
,p_process_success_message=>'&P43_LOGIN_MESSAGE.'
,p_internal_uid=>37735717592803947
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37735340290803947)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P43_VALIDATE,P43_MRNO,P43_DISP_MRNO,P43_LOGIN_DATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P43_LOGIN_MESSAGE.'
,p_internal_uid=>37735340290803947
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37736905727803951)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'When-New-Form-Instance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P43_DISP_MRNO IS NOT NULL THEN',
'    :P43_PATIENT_TYPE := substr(:P43_DISP_MRNO, 1, 6);',
'    :P43_PATIENT_MRNO := LTRIM(SUBSTR(:P43_DISP_MRNO, 7), ''0'');',
'    :P43_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P43_DISP_MRNO);',
'  END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37736905727803951
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37736504132803950)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_PATIENT_TYPE_ID DEFINITIONS.PATIENT_TYPE.PATIENT_TYPE_ID%TYPE;',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP CHAR(1) := ''N'';',
'V_MRNO_LENGTH NUMBER(1);',
'BEGIN',
'',
'  if :P43_DISP_MRNO IS NOT NULL then ',
'    V_MRNO_LENGTH:=LENGTH(:P43_DISP_MRNO);',
'  IF V_MRNO_LENGTH <> ''14'' THEN',
'        HIS.PKG_S30FRM00003_LOGIN.VALIDATE_MRNO(P_USER_MRNO            => NULL,',
'                                                P_LOCATION_ID          => NULL,',
'                                                P_PHYSICAL_LOCATION_ID => NULL,',
'                                                P_TERMINAL             => NULL,',
'                                                P_DISP_MRNO            => :P43_DISP_MRNO,',
'                                                P_PREFIX               => ''600'',',
'                                                P_PREFIX_LOCATION_ID   => ''001'',',
'                                                P_MRNO                 => :P43_MRNO,',
'                                                P_NAME                 => :P43_NAME,',
'                                                P_PATIENT_TYPE_ID      => V_PATIENT_TYPE_ID,',
'                                                P_ALERT_TEXT           => V_ALERT_TEXT,',
'                                                P_STOP                 => V_STOP);',
'      ',
'--:LOGIN_MRNO:=:P43_MRNO;',
':P43_DISP_MRNO := :P43_MRNO;',
':P43_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P43_MRNO);',
'ELSE',
'--:LOGIN_MRNO:=:P43_DISP_MRNO ;',
':P43_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P43_DISP_MRNO);',
'END IF;',
'end if;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37736504132803950
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37736176260803948)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT TO_CHAR(SYSDATE, ''DD-MON-YYYY HH:MI:SS PM'') INTO :P43_LOGIN_DATE FROM DUAL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37736176260803948
);
wwv_flow_imp.component_end;
end;
/

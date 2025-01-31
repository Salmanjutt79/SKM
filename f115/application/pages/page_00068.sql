prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_name=>'CANCEL_MACHINE_SCHEDULE'
,p_alias=>'CANCEL-MACHINE-SCHEDULE'
,p_step_title=>'Cancellation'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'#P68_MACHINE_input{',
'     background-color: #FFFFCC !important;',
'}',
'',
'.u-radio {',
'    color: #d11b30;',
'    font-weight: 800;',
'}',
'.u-checkbox {',
'    color: #d11b30;',
'     font-weight: 400;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'SUPPORT'
,p_last_upd_yyyymmddhh24miss=>'20231227173932'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18675415041588034)
,p_plug_name=>'Radiation Machine Cancellation'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18675689280588036)
,p_plug_name=>'Cancellation Type in a Range'
,p_parent_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18675849277588038)
,p_plug_name=>'Parameters'
,p_parent_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18676454978588044)
,p_plug_name=>'Remarks'
,p_parent_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18676676261588046)
,p_plug_name=>'Button Container '
,p_parent_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>4
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18676736711588047)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(18676676261588046)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Cancel</b>'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19121055288502706)
,p_button_sequence=>11
,p_button_plug_id=>wwv_flow_imp.id(18676676261588046)
,p_button_name=>'Exit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18675121490588031)
,p_name=>'P68_MACHINE_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Machine Type:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18675703381588037)
,p_name=>'P68_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18675689280588036)
,p_item_default=>'1'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Complete;1,Specific Day;2,Specific Time;3,Specific Day Time;4'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18675908336588039)
,p_name=>'P68_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18675849277588038)
,p_prompt=>'<b>From Date:</b>'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676023939588040)
,p_name=>'P68_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18675849277588038)
,p_prompt=>'<b>To Date:</b>'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676121461588041)
,p_name=>'P68_DAY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18675849277588038)
,p_prompt=>'<b>Day:</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, DAY_ID',
'  FROM DEFINITIONS.DAY',
' WHERE STATUS = ''N''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676255997588042)
,p_name=>'P68_FROM_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18675849277588038)
,p_prompt=>'<b>From Time:</b>'
,p_post_element_text=>'<b><FONT COLOR="#ff0000">&nbsp;HH24:MI</FONT></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676373809588043)
,p_name=>'P68_TO_TIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18675849277588038)
,p_prompt=>'<b>To Time:</b>'
,p_post_element_text=>'<b><FONT COLOR="#ff0000">&nbsp;HH24:MI</FONT></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676515354588045)
,p_name=>'P68_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18676454978588044)
,p_prompt=>'<b>Remarks:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676861127588048)
,p_name=>'P68_ERROR_MESSAGE'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(18676676261588046)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18676998071588049)
,p_name=>'P68_SUCCESS_MESSAGE'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_imp.id(18676676261588046)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19120966193502705)
,p_name=>'P68_SEND_SMS_ALERT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18676454978588044)
,p_prompt=>'<b>Send SMS Alert</b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82577094120169923)
,p_name=>'P68_WORKFLOW_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_item_default=>'N'
,p_prompt=>'<b>New / Legacy</b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:New;N,Legecy;O'
,p_colspan=>2
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82577174094169924)
,p_name=>'P68_MACHINE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18675415041588034)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Machine:</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPTION, M.MACHINE_ID FROM RADIATION.MACHINES M',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_grid_column=>2
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18675236692588032)
,p_name=>'DAMachine'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_MACHINE'
,p_condition_element=>'P68_MACHINE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18675387688588033)
,p_event_id=>wwv_flow_imp.id(18675236692588032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DECODE(MACHINE_TYPE,',
'                ''B'',',
'                ''Brachytherapy'',',
'                ''C'',',
'                ''CT Scanner'',',
'                ''F'',',
'                ''F/U'',',
'                ''S'',',
'                ''Simulation'',',
'                ''P'',',
'                ''Planning'',',
'                ''T'',',
'                ''Treatment'',',
'                ''V'',',
'                ''Virtual'',',
'                ''Not Defined'') AS MACHINE_TYPE',
'    INTO :P68_MACHINE_TYPE',
'    FROM RADIATION.MACHINES',
'   WHERE MACHINE_ID = :P68_MACHINE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P68_MACHINE'
,p_attribute_03=>'P68_MACHINE_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19120593784502701)
,p_name=>'DACancel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18676736711588047)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19120837800502704)
,p_event_id=>wwv_flow_imp.id(19120593784502701)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm you want to cancel this clinic?'
,p_attribute_02=>'System Message'
,p_attribute_03=>'information'
,p_attribute_06=>'Yes '
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19120674790502702)
,p_event_id=>wwv_flow_imp.id(19120593784502701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :GV_ORDER_LOCATION_ID := NVL(:GV_ORDER_LOCATION_ID, ''001'');',
'  HIS.SET_CONTEXT(''CONNECTED_SERVER'', :GV_CONNECTED_SERVER);',
'  HIS.SET_CONTEXT(''USER_MRNO'', :GV_USER_MRNO);',
'  HIS.SET_CONTEXT(''TERMINAL'', :GV_TERMINAL);',
'  HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'  HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', :GV_ORDER_LOCATION_ID);',
'END;',
''))
,p_attribute_02=>'GV_ORDER_LOCATION_ID,GV_CONNECTED_SERVER,GV_USER_MRNO,GV_TERMINAL,GV_PHYSICAL_LOCATION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19120783220502703)
,p_event_id=>wwv_flow_imp.id(19120593784502701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "CLINICID": $v("P68_MACHINE"),',
'    "P_STATUS": 1,',
'    "F_DATE": $v("P68_FROM_DATE"),',
'    "T_DATE": $v("P68_TO_DATE"),',
'    "P_DAY": $v("P68_DAY"),',
'    "P_FROM_TIME": $v("GV_PHYSICAL_LOCATION_ID"),',
'    "P_TO_TIME": $v("P68_FROM_TIME"),',
'    "P_DAY": $v("P68_TO_TIME"),',
'    "P_REMARKS": $v("P68_REMARKS"),',
'    "P_NEW_OLD": $v("P68_WORKFLOW_TYPE")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00075'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19122633075502722)
,p_event_id=>wwv_flow_imp.id(19120593784502701)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  IF :P68_WORKFLOW_TYPE = ''O'' THEN',
'    RADIATION.PKG_S18FRM00124.CANCEL_RAD_APPOINTMENT(P_MACHINE_ID     => :P68_MACHINE,',
'                                                     P_FROM_DATE      => :P68_FROM_DATE,',
'                                                     P_TO_DATE        => :P68_TO_DATE,',
'                                                     P_DAY            => :P68_DAY,',
'                                                     P_FROM_TIME      => :P68_FROM_TIME,',
'                                                     P_TO_TIME        => :P68_TO_TIME,',
'                                                     P_SEND_SMS_ALERT => :P68_SEND_SMS_ALERT,',
'                                                     P_ALERT_TEXT     => L_ALERT_TEXT,',
'                                                     P_STOP           => L_STOP);',
'  ELSE',
'    RADIATION.PKG_SCHEDULE.CANCEL_RAD_APPOINTMENT(P_MACHINE_ID     => :P68_MACHINE,',
'                                                  P_FROM_DATE      => :P68_FROM_DATE,',
'                                                  P_TO_DATE        => :P68_TO_DATE,',
'                                                  P_DAY            => :P68_DAY,',
'                                                  P_FROM_TIME      => :P68_FROM_TIME,',
'                                                  P_TO_TIME        => :P68_TO_TIME,',
'                                                  P_SEND_SMS_ALERT => :P68_SEND_SMS_ALERT,',
'                                                  P_ALERT_TEXT     => L_ALERT_TEXT,',
'                                                  P_STOP           => L_STOP);',
'  END IF;',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P68_ERROR_MESSAGE := L_ALERT_TEXT;',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  :P68_SUCCESS_MESSAGE := ''Clinic cancelled properly'';',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'                    SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                    $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                    '' ERROR MESSAGE: '' || SQLERRM;',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'END;',
''))
,p_attribute_02=>'P68_WORKFLOW_TYPE,P68_MACHINE,P68_FROM_DATE,P68_TO_DATE,P68_DAY,P68_FROM_TIME,P68_TO_TIME,P68_SEND_SMS_ALERT'
,p_attribute_03=>'P68_ERROR_MESSAGE,P68_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19121906149502715)
,p_name=>'DAErrorMessage'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_ERROR_MESSAGE'
,p_condition_element=>'P68_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19122045208502716)
,p_event_id=>wwv_flow_imp.id(19121906149502715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P68_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19122460831502720)
,p_name=>'DASuccessMessage'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_SUCCESS_MESSAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19122515401502721)
,p_event_id=>wwv_flow_imp.id(19122460831502720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P68_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp.component_end;
end;
/

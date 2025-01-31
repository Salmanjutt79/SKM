prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_name=>'CREATE_SLOT'
,p_alias=>'CREATE-SLOT1'
,p_page_mode=>'MODAL'
,p_step_title=>'CREATE_SLOT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).keydown(function (e) {',
'    // Set self as the current item in focus',
'    var self = $('':focus''),',
'        // Set the form by the current item in focus',
'        form = self.parents(''form:eq(0)''),',
'        focusable;',
'',
'    // Array of Indexable/Tab-able items',
'    focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'').filter('':visible'').filter(''[tabindex!=-1]'');',
'',
'    function enterKey() {',
'        if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) { // [Enter] key',
'            // If not a regular hyperlink/button/textarea',
'            // console.log(focusable);',
'            // console.log(self);',
'            if ($.inArray(self, focusable) && (!self.is(''a,button''))) {',
'                // Then prevent the default [Enter] key behaviour from submitting the form',
'                e.preventDefault();',
'            }',
'            var a = 0;',
'            if ($("#" + self.attr(''id'') + "_lov_btn").hasClass("a-Button--popupLOV")) {',
'                a = a + 1;',
'            } else {',
'                a = a + 1;',
'            }',
'            focusable.eq(focusable.index(self) + (e.shiftKey ? -1 : a)).focus();',
'',
'            // Otherwise follow the link/button as by design, or put new line in textarea',
'            // Focus on the next item (either previous or next depending on shift)',
'',
'            return false;',
'        }',
'    }',
'    // We need to capture the [Shift] key and check the [Enter] key either way.',
'    if (e.shiftKey) { enterKey() } else {',
'',
'        enterKey();',
'',
'    }',
'});'))
,p_step_template=>wwv_flow_imp.id(14459111770908210)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'700'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OWAIS'
,p_last_upd_yyyymmddhh24miss=>'20240402162239'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29498756730373627)
,p_plug_name=>'Create Single Slot'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29498867440373628)
,p_plug_name=>'Create Single Slot'
,p_parent_plug_id=>wwv_flow_imp.id(29498756730373627)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29499149106373631)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29498867440373628)
,p_button_name=>'CreateSingleSlot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Single Slot'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29499220687373632)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29498867440373628)
,p_button_name=>'ExitSingleSlot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_button_cattributes=>'accesskey=''X'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29498955843373629)
,p_name=>'P81_SINGLE_SLOT_MACHINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29498867440373628)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPTION, M.MACHINE_ID',
'  FROM RADIATION.MACHINES M',
' WHERE M.ACTIVE = ''Y''',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29499060871373630)
,p_name=>'P81_SINGLE_SLOT_VISIT_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29498867440373628)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TO_CHAR(SYSDATE, ''DD-MON-YYYY HH24:MI'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b><p style="color:#00008B">Date and Time:</p></b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'INLINE'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29499525436373635)
,p_name=>'P81_SUCCESS_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29498756730373627)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29499388468373633)
,p_name=>'createSingleSlotDA1'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29499149106373631)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29499486876373634)
,p_event_id=>wwv_flow_imp.id(29499388468373633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_SCHEDULE.GEN_SINGLE_SLOT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                         P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                         P_MACHINE_ID        => :P81_SINGLE_SLOT_MACHINE,',
'                                         P_VISIT_DATE        => TO_DATE(:P81_SINGLE_SLOT_VISIT_DATE,''DD-MON-YYYY HH24:MI''),',
'                                         P_OBJECT_CODE       => ''S18APX00071'',',
'                                         P_USER_MRNO         => :GV_USER_MRNO,',
'                                         P_TERMINAL          => :GV_TERMINAL,',
'                                         P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                         P_STOP              => L_STOP);',
'',
'  :P81_SUCCESS_MESSAGE := ''Single Slot Created successfully, please refresh the page'';',
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
,p_attribute_02=>'GV_ORGANIZATION_ID,GV_LOCATION_ID,P81_SINGLE_SLOT_MACHINE,P81_SINGLE_SLOT_VISIT_DATE,GV_USER_MRNO,GV_TERMINAL'
,p_attribute_03=>'P81_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29499615085373636)
,p_name=>'DASuccessMessage'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P81_SUCCESS_MESSAGE'
,p_condition_element=>'P81_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29499761837373637)
,p_event_id=>wwv_flow_imp.id(29499615085373636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P81_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29499882206373638)
,p_name=>'DAExit'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29499220687373632)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29499954076373639)
,p_event_id=>wwv_flow_imp.id(29499882206373638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

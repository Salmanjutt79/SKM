prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_name=>'RAD_CALLER_FORM'
,p_alias=>'RAD-CALLER-FORM'
,p_step_title=>'RAD_CALLER_FORM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function init() {',
'    $(document).ready(() => {',
'        $(''.js-node-click'').click((e) => {',
'            fNodeClick();',
'        });',
'    })',
'}',
'function fNodeClick() {',
'    setTimeout(() => $(".ui-dialog-content").each((i, o) => {',
'        if (!$(o).attr(''data-pageid'')) {',
'            let m = $(''.t-Body-main'');',
'            $(o).dialog("instance")._destroyOverlay();',
'            let w = ''left+'' + Math.round(m.offset().left + (m.width()) / 2) + '' top+'' + Math.round($(''.t-Body-fullContent'').height() + $(''#t_Header'').height() + ($(''#main'').height() - $(''.t-Body-fullContent'').height()) / 2);',
'',
'            $(o).dialog({ width: m.width() }).dialog("option", "height", $(''#main'').height() - $(''.t-Body-fullContent'').height());',
'            $(o).dialog({ position: { at: w, of: window } })',
'            $(o).dialog("option", "resizable", true);',
'            $(o).attr(''data-pageid'', ''farhan'');',
'        }',
'    }), 10);',
'}',
'init();',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog.modal-dialog--pullout{',
'   top: 0!important;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(14479247264908220)
,p_page_css_classes=>'js-phyMenu'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20231027093619'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414369093116237143)
,p_plug_name=>'RAD_CALLER_FORM'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>12
,p_query_type=>'SQL'
,p_plug_source=>'SELECT ''TEST'' FROM DUAL'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(412791383877029216)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_ENERGY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Energy'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(455237815023145515)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_SITE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiotherapy Treatment Site '
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(455239673171145533)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_INTENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiotherapy Treatment Intent'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53912772450531818)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_NON_CA_TREATMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiotherapy Non CA Treatment'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(105830985891821331)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_REQUEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiotherapy Request'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78396090375151331)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_REQUEST_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Energey test'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118906284549279724)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_GENERIC_PENDING_QUEUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generic Pending Queue'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47677234019927808)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_button_name=>'BTN_RAD_FOLOWUP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Follow Up'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(415630572130489812)
,p_branch_name=>'GoToPageNumber3'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(412791383877029216)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(455237922059145516)
,p_branch_name=>'GoToPageNumber4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(455237815023145515)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(455239795501145534)
,p_branch_name=>'GoToPageNumber5'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(455239673171145533)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(53912801470531819)
,p_branch_name=>'GoToPageNumber30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_P_RADIATION_NO,P30_RADIATION_NO:&P9998_RADIATION_NO.,&P9998_RADIATION_NO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(53912772450531818)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(105831034309821332)
,p_branch_name=>'GoToPageNumber34'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_RADIATION_NO,P34_MRNO:&P9998_RADIATION_NO.,&P9998_MRNO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(105830985891821331)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(118906383144279725)
,p_branch_name=>'GoToPageNumber36'
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_ASSIGNMENT_ID,P36_TASK_MRNO:&P9998_ASSIGNMENT_ID.,&P9998_TASK_MRNO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(118906284549279724)
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(47677321926927809)
,p_branch_name=>'GoToPageNumber51'
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::P51_MRNO,P51_RADIATION_NO:&P9998_MRNO.,&P9998_RADIATION_NO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(47677234019927808)
,p_branch_sequence=>70
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3474987826296042)
,p_name=>'P9998_MRNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26635558314341618)
,p_name=>'P9998_ASSIGNMENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_prompt=>'Assignment Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26635608915341619)
,p_name=>'P9998_TASK_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_prompt=>'TASK_MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78395458959151325)
,p_name=>'P9998_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(414369457579237142)
,p_name=>'P9998_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_item_source_plug_id=>wwv_flow_imp.id(414369093116237143)
,p_prompt=>'Radiation No'
,p_source=>'''TEST'''
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78396156536151332)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78396090375151331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78396334980151334)
,p_event_id=>wwv_flow_imp.id(78396156536151332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => $(".ui-dialog-content").filter((i, e) => {',
'    return $(e).children(''iframe'').attr(''src'') && (!$(e).attr(''data-pageid'')) ? true : false;',
'}).each((i, o) => {',
'    let m = $(''.t-Body-main'');',
'    $(o).dialog("instance")._destroyOverlay();',
'    let w = ''left+'' + Math.round(m.offset().left + (m.width()) / 2) + '' top+'' + Math.round($(''.t-Body-fullContent'').height() + $(''#t_Header'').height() + ($(''#main'').height() - $(''.t-Body-fullContent'').height()) / 2);',
'',
'    $(o).dialog({ width: m.width() }).dialog("option", "height", $(''#main'').height() - $(''.t-Body-fullContent'').height());',
'    $(o).dialog({ position: { at: w, of: window } })',
'    $(o).dialog("option", "resizable", true);',
'    $(o).attr(''data-pageid'', extractPageIdfromSrc($(o).children(''iframe'').attr(''src'')));',
'    console.log(o);',
'}), 10);',
'',
'function extractPageIdfromSrc(s){',
'    return ''#''+a.split(''='').at(1).split('':'').at(0)+''@''+a.split(''='').at(1).split('':'').at(1);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78396602473151337)
,p_name=>'New_2'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78396741211151338)
,p_event_id=>wwv_flow_imp.id(78396602473151337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function resolveAfter2Seconds() {',
'    return new Promise(resolve => {',
'        apex.message.confirm(''Are you sure?'', function (okPressed) {',
'            resolve(okPressed ? true : false);',
'        });',
'    });',
'}',
'',
'async function asyncCall() {',
'    let result;',
'    do {',
'        result = await resolveAfter2Seconds();',
'        console.log(result);',
'    }',
'    while (result);',
'};',
'',
'',
'async function callProcess() {',
'    await asyncCall();',
'    console.log(apex.message.alert(''Process Complete''));',
'};',
'',
'callProcess();',
'',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(414372342783237136)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(414369093116237143)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form RAD_CALLER_FORM'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>414372342783237136
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(414371945934237136)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(414369093116237143)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form RAD_CALLER_FORM'
,p_internal_uid=>414371945934237136
);
wwv_flow_imp.component_end;
end;
/

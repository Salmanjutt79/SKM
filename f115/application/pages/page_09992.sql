prompt --application/pages/page_09992
begin
--   Manifest
--     PAGE: 09992
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
 p_id=>9992
,p_name=>'model2'
,p_alias=>'MODEL2'
,p_page_mode=>'MODAL'
,p_step_title=>'model2'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'FARHANAKRAM'
,p_last_upd_yyyymmddhh24miss=>'20230922174152'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211184831469694213)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14554375113908257)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14451446309908206)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14616451605908289)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217832155281260204)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(211184831469694213)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OpenForm'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey="o"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18884634804583304)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(211184831469694213)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey="p"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217832239953260205)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(217832155281260204)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217832347826260206)
,p_event_id=>wwv_flow_imp.id(217832239953260205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {};',
'let object = {',
'    "OBJECTCODE": ''#115@9994'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18884729637583305)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18884634804583304)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18884884769583306)
,p_event_id=>wwv_flow_imp.id(18884729637583305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

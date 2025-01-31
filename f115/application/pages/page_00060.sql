prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_name=>'RAD_REPORTS'
,p_alias=>'RAD-REPORTS'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_REPORTS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'.selectlist',
'{',
'    background-color:#FFFFCC !important;',
'}',
'.apex-item-text',
'{',
'    background-color:#FFFFCC !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_height=>'1000'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250107170641'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14348619466668206)
,p_plug_name=>'Radiotherapy Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13631439008964636)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(14348619466668206)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13631506170964637)
,p_plug_name=>'BUTTONS'
,p_parent_plug_id=>wwv_flow_imp.id(14348619466668206)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13631775139964639)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(14348619466668206)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14348226423668202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13631506170964637)
,p_button_name=>'report'
,p_button_static_id=>'btn_rep'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14348456775668204)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13631506170964637)
,p_button_name=>'Clear'
,p_button_static_id=>'btn_clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14348530943668205)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13631506170964637)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14350144603668221)
,p_branch_name=>'GoTOHomePage'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13631676976964638)
,p_name=>'P60_RAD_REPORTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13631439008964636)
,p_item_default=>'1'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Radiation Request;1,Machine Wise Statistic Report;6,Simulation Appointment;2,Machine Wise Statistic Report (BOG);11,Radiation Patient List ;3,Date Wise Discharge Summary;7,Patient Appointment(s);4,No Show Patients ;8,List of Acknowledged Pati'
||'ent;5,Patient List Wise Diagnosis;9,Other;13,Radiation Protocol Schedule;10'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13631883409964640)
,p_name=>'P60_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_item_default=>'TRUNC(SYSDATE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b><p style="color:#00008B">From Date:</p></b>'
,p_format_mask=>'DD-MON-RR'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13631976298964641)
,p_name=>'P60_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_item_default=>'TRUNC(SYSDATE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b><p style="color:#00008B">To Date:</p></b>'
,p_format_mask=>'DD-MON-RR'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632035916964642)
,p_name=>'P60_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632246158964644)
,p_name=>'P60_MACHINE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.DESCRIPTION MACHINE_NAME,MC.MACHINE_ID',
'  FROM RADIATION.MACHINES MC',
' WHERE MC.ACTIVE = ''Y''',
'   AND MC.LOCATION_ID = NVL(:P60_LOCATIONS, MC.LOCATION_ID)',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P60_LOCATIONS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632316662964645)
,p_name=>'P60_CLINIC_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_prompt=>'<b><p style="color:#00008B">Clinic:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  MC.DESCRIPTION,MC.MACHINE_ID',
'  FROM RADIATION.MACHINES MC',
' WHERE MC.LOCATION_ID = NVL(:P60_LOCATIONS, MC.LOCATION_ID)',
' ORDER BY MC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P60_LOCATIONS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632415336964646)
,p_name=>'P60_DOCTOR_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_prompt=>'<b><p style="color:#00008B">Doctor:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.NAME,DD.DOCTOR_ID',
'  FROM DEFINITIONS.DOCTOR DD, RADIATION.RADIATION_MASTER RM',
' WHERE DD.DOCTOR_ID = RM.DOCTOR_ID',
'   AND DD.LOCATION_ID = NVL(:P60_LOCATIONS, DD.LOCATION_ID)',
' ORDER BY DD.NAME',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632501709964647)
,p_name=>'P60_CLINIC_GROUP_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632693915964648)
,p_name=>'P60_LBX_OUTPUT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13631506170964637)
,p_prompt=>'<b><p style="color:#00008B">Report Output:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Screen;S0,Printer;P0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632709814964649)
,p_name=>'P60_LOCATIONS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_item_default=>'001'
,p_prompt=>'<b><p style="color:#00008B">Locations:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FL.LOCATION_DESC,FL.LOCATION_ID',
'                FROM FINANCE.V_LOCATION FL',
'               WHERE FL.SHOW_IN_REPORTS = ''YES''',
'               ORDER BY FL.ORDER_BY'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:245px"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13632843529964650)
,p_name=>'P60_EVENT_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_prompt=>'<b><p style="color:#00008B">Event:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT E.DESCRIPTION||'' - ''|| SW.EVENT_ID D, SW.EVENT_ID R',
'  FROM RADIATION.SCHEDULE_WORKFLOW SW, DEFINITIONS.EVENT E',
' WHERE SW.EVENT_ID = E.EVENT_ID',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14348132238668201)
,p_name=>'P60_RADIATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Request No:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RADIATION_NO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM.RADIATION_NO,',
'       RM.MRNO MRNO,',
'       RADIATION.PKG_RADIATION.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'       RM.RADIATION_DATE,',
'       RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DOCTOR_NAME',
'  FROM RADIATION.RADIATION_MASTER RM',
' ORDER BY RM.RADIATION_DATE DESC',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'700'
,p_attribute_09=>'400'
,p_attribute_10=>'MRNO:P60_MRNO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14349109705668211)
,p_name=>'P60_OBJECT_CODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14351374960668233)
,p_name=>'P60_PRESS_CLEAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(13631775139964639)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34868223776221012)
,p_name=>'P60_ERROR'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14348794758668207)
,p_name=>'RadioChange'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_RAD_REPORTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14348855278668208)
,p_event_id=>wwv_flow_imp.id(14348794758668207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P60_RAD_REPORTS").getValue()==1)',
'{',
'apex.item("P60_FROM_DATE").hide();',
'apex.item("P60_TO_DATE").hide();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").show();',
'apex.item("P60_MRNO").show();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==2)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").show();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").show();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==3)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").show();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").show();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==4)',
'{',
'apex.item("P60_FROM_DATE").hide();',
'apex.item("P60_TO_DATE").hide();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").show();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==5)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").show();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==6)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==8)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").show();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==9)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==10)',
'{',
'apex.item("P60_FROM_DATE").hide();',
'apex.item("P60_TO_DATE").hide();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").show();',
'apex.item("P60_MRNO").show();',
'}',
'else if(apex.item("P60_RAD_REPORTS").getValue()==11)',
'{',
'apex.item("P60_FROM_DATE").show();',
'apex.item("P60_TO_DATE").show();',
'apex.item("P60_MACHINE_ID").hide();',
'apex.item("P60_CLINIC_ID").hide();',
'apex.item("P60_CLINIC_GROUP_ID").hide();',
'apex.item("P60_EVENT_ID").hide();',
'apex.item("P60_DOCTOR_ID").hide();',
'apex.item("P60_RADIATION_NO").hide();',
'apex.item("P60_MRNO").hide();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14350654051668226)
,p_event_id=>wwv_flow_imp.id(14348794758668207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(apex.item("P60_RAD_REPORTS").getValue()==13)',
'{',
'apex.item("P60_FROM_DATE").disable();',
'apex.item("P60_TO_DATE").disable();',
'apex.item("P60_MACHINE_ID").disable();',
'apex.item("P60_CLINIC_ID").disable();',
'apex.item("P60_CLINIC_GROUP_ID").disable();',
'apex.item("P60_EVENT_ID").disable();',
'apex.item("P60_DOCTOR_ID").disable();',
'apex.item("P60_RADIATION_NO").disable();',
'apex.item("P60_MRNO").disable();',
'apex.item("btn_rep").disable();',
'apex.item("btn_clear").disable();',
'apex.item("P60_LBX_OUTPUT").disable();',
'apex.item("P60_LOCATIONS").disable();',
'}',
'else',
'{',
'apex.item("P60_FROM_DATE").enable();',
'apex.item("P60_TO_DATE").enable();',
'apex.item("P60_MACHINE_ID").enable();',
'apex.item("P60_CLINIC_ID").enable();',
'apex.item("P60_CLINIC_GROUP_ID").enable();',
'apex.item("P60_EVENT_ID").enable();',
'apex.item("P60_DOCTOR_ID").enable();',
'apex.item("P60_RADIATION_NO").enable();',
'apex.item("P60_MRNO").enable();',
'apex.item("btn_rep").enable();',
'apex.item("btn_clear").enable();',
'apex.item("P60_LBX_OUTPUT").enable();',
'apex.item("P60_LOCATIONS").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14348962973668209)
,p_name=>'CallReports'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14348226423668202)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33408490384607823)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
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
,p_attribute_03=>'GV_ORDER_LOCATION_ID,GV_CONNECTED_SERVER,GV_USER_MRNO,GV_TERMINAL,GV_PHYSICAL_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349275634668212)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN ',
'if RADIATION.PKG_RADIATION.GET_RADIOTHERAPY_TYPE(:P60_RADIATION_NO)=''B'' then :P60_OBJECT_CODE:=''S18REP00066''; ',
'else :P60_OBJECT_CODE:=''S18REP00001'';',
'end if;',
'END;'))
,p_attribute_02=>'P60_RADIATION_NO'
,p_attribute_03=>'P60_OBJECT_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349091014668210)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_TERMINAL": $v("GV_TERMINAL"),"P_LOCATION_ID": $v("P60_LOCATIONS"),"P_RADIATION_NO": $v("P60_RADIATION_NO"),"P_MRNO": $v("P60_MRNO")};',
'let object = {',
'    "OBJECTCODE": $v("P60_OBJECT_CODE"),',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48185434205833239)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_TERMINAL": $v("GV_TERMINAL"),"P_LOCATION_ID": $v("P60_LOCATIONS"),"P_CLINIC_ID": $v("P60_CLINIC_ID"),"P_FDATE": $v("P60_FROM_DATE").replace(/ /g,''%20''),"P_TDATE": $v("P60_TO_DATE").replace(/ /g,''%20''),"P_DOCTOR_ID": $v("P60_DOCTOR'
||'_ID")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00026'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48185571597833240)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_TERMINAL": $v("GV_TERMINAL"),"P_LOCATION_ID": $v("P60_LOCATIONS"),"P_MACHINE_ID": $v("P60_MACHINE_ID"),"P_FDATE": $v("P60_FROM_DATE"),"P_TDATE": $v("P60_TO_DATE"),"P_DOCTOR_ID": $v("P60_DOCTOR_ID")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00021'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349396396668213)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_MRNO": $v("P60_MRNO"),"P_LOCATION_ID": $v("P60_LOCATIONS")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00024'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349494448668214)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_TERMINAL": $v("GV_TERMINAL")',
',"P_LOCATION_ID": $v("P60_LOCATIONS")',
',"P_EVENT": $v("P60_EVENT_ID")',
',"P_FDATE": $v("P60_FROM_DATE")',
',"P_TDATE": $v("P60_TO_DATE")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00027'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349567730668215)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function formatDateToDDMMRR(date) {',
'    if (!date) return null;',
'    const d = new Date(date);',
'    const day = String(d.getDate()).padStart(2, ''0'');',
'    const month = String(d.getMonth() + 1).padStart(2, ''0'');',
'    const year = String(d.getFullYear()).slice(-2);',
'    return `${day}-${month}-${year}`;',
'}',
'',
'const fromDate = $v("P60_FROM_DATE");',
'const toDate = $v("P60_TO_DATE");',
'const formattedFromDate = fromDate ? formatDateToDDMMRR(fromDate) : null;',
'const formattedToDate = toDate ? formatDateToDDMMRR(toDate) : null;',
'',
'',
'const paramList = {',
'    "P_TERMINAL": $v("GV_TERMINAL"),',
'    "P_LOCATION_ID": $v("P60_LOCATIONS"),',
'    "P_FDATE": formattedFromDate,',
'    "P_TDATE": formattedToDate',
'};',
'',
'const object = {',
'    "OBJECTCODE": ''S18REP00028'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),',
'    "PARAMLIST": paramList',
'};',
'',
'',
'return [object];',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'6'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349613380668216)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_TERMINAL": $v("GV_TERMINAL")',
',"P_LOCATION_ID": $v("P60_LOCATIONS")',
',"P_FDATE": $v("P60_FROM_DATE")',
',"P_TDATE": $v("P60_TO_DATE")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00043'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'7'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349756735668217)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_MACHINE_ID": $v("P60_MACHINE_ID")',
',"P_LOCATION_ID": $v("P60_LOCATIONS")',
',"P_FDATE": $v("P60_FROM_DATE")',
',"P_TDATE": $v("P60_TO_DATE")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00062'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'8'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349895749668218)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_LOCATION_ID": $v("P60_LOCATIONS"),"P_FDATE": $v("P60_FROM_DATE"),"P_TDATE": $v("P60_TO_DATE")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00073'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'9'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14349960808668219)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_TERMINAL": $v("GV_TERMINAL"),"P_LOCATION_ID": $v("P60_LOCATIONS"),"P_FDATE": $v("P60_FROM_DATE"),"P_TDATE": $v("P60_TO_DATE")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00081'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'11'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14350021150668220)
,p_event_id=>wwv_flow_imp.id(14348962973668209)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_ORGANIZATION_ID": $v("GV_ORGANIZATION_ID"),"P_PHYSICAL_LOCATION_ID": $v("GV_PHYSICAL_LOCATION_ID"),"P_RADIATION_NO": $v("P60_RADIATION_NO")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00045'',',
'    "METHOD": $v("P60_LBX_OUTPUT"),//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P60_RAD_REPORTS'
,p_client_condition_expression=>'10'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14350269146668222)
,p_name=>'clear_DA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14348456775668204)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14350393169668223)
,p_event_id=>wwv_flow_imp.id(14350269146668222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P60_RAD_REPORTS:=null;',
':P60_FROM_DATE:=null;',
':P60_TO_DATE:=null;',
':P60_MRNO:=null;',
':P60_MACHINE_ID:=null;',
':P60_DOCTOR_ID:=null;',
':P60_CLINIC_ID:=null;',
':P60_EVENT_ID:=null;',
':P60_LOCATIONS:=null;',
':P60_RADIATION_NO:=NULL;',
':P60_PRESS_CLEAR:=1;'))
,p_attribute_02=>'P60_RAD_REPORTS,P60_FROM_DATE,P60_TO_DATE,P60_RADIATION_NO,P60_MRNO,P60_MACHINE_ID,P60_DOCTOR_ID,P60_CLINIC_ID,P60_EVENT_ID,P60_LOCATIONS'
,p_attribute_03=>'P60_RAD_REPORTS,P60_FROM_DATE,P60_TO_DATE,P60_RADIATION_NO,P60_MRNO,P60_MACHINE_ID,P60_DOCTOR_ID,P60_CLINIC_ID,P60_EVENT_ID,P60_LOCATIONS,P60_PRESS_CLEAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14351518633668235)
,p_event_id=>wwv_flow_imp.id(14350269146668222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P60_PRESS_CLEAR:=0;'
,p_attribute_02=>'P60_PRESS_CLEAR'
,p_attribute_03=>'P60_PRESS_CLEAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14350472549668224)
,p_name=>'Clinic_DA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_CLINIC_ID'
,p_condition_element=>'P60_PRESS_CLEAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14350531446668225)
,p_event_id=>wwv_flow_imp.id(14350472549668224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P60_LOCATIONS")==null || $v("P60_LOCATIONS").length==0){',
'    apex.message.alert(''Please select location to choose clinic'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14350755485668227)
,p_name=>'RAD_DA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_RADIATION_NO'
,p_condition_element=>'P60_PRESS_CLEAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14350801213668228)
,p_event_id=>wwv_flow_imp.id(14350755485668227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P60_LOCATIONS")==null || $v("P60_LOCATIONS").length==0)',
'{',
'    apex.message.alert(''Kindly select location to choose radiation no...'')',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14350926964668229)
,p_name=>'DOC_DA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_DOCTOR_ID'
,p_condition_element=>'P60_PRESS_CLEAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14351095008668230)
,p_event_id=>wwv_flow_imp.id(14350926964668229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P60_LOCATIONS")==null || $v("P60_LOCATIONS").length==0){',
'    apex.message.alert(''Kindly select location to choose doctor...'')',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14351191552668231)
,p_name=>'DOC_DA_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_MACHINE_ID'
,p_condition_element=>'P60_PRESS_CLEAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14351288425668232)
,p_event_id=>wwv_flow_imp.id(14351191552668231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P60_LOCATIONS")==null || $v("P60_LOCATIONS").length==0){',
'    apex.message.alert(''Kindly select location to choose machine...'')',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28167732260971602)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14348530943668205)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28167872186971603)
,p_event_id=>wwv_flow_imp.id(28167732260971602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34868074226221010)
,p_name=>'SetMRNO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_MRNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34868170127221011)
,p_event_id=>wwv_flow_imp.id(34868074226221010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'               P_DISP_MRNO  => :P60_MRNO,',
'               P_MRNO       => :P60_MRNO,',
'               P_ALERT_TEXT => L_ALERT_TEXT,',
'               P_STOP       => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P60_ERROR := L_ALERT_TEXT;',
'    RETURN;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P60_MRNO'
,p_attribute_03=>'P60_MRNO,P60_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34868595291221015)
,p_event_id=>wwv_flow_imp.id(34868074226221010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT M.RADIATION_NO',
'    INTO :P60_RADIATION_NO',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE M.MRNO = :P60_MRNO',
'     AND M.STATUS_REQUEST = ''015''',
'   ORDER BY M.RADIATION_DATE DESC FETCH FIRST 1 ROW ONLY;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P60_MRNO'
,p_attribute_03=>'P60_RADIATION_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34868364305221013)
,p_name=>'Alert'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_ERROR'
,p_condition_element=>'P60_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34868468854221014)
,p_event_id=>wwv_flow_imp.id(34868364305221013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P60_ERROR.'
);
wwv_flow_imp.component_end;
end;
/

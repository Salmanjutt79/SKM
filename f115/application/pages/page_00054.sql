prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_name=>'RAD_ACC_SIGN-S18FRM00134'
,p_alias=>'RAD-ACC-SIGN-S18FRM00134'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_ACC_SIGN-S18FRM00134'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P40_UNIT").hide();',
'apex.item("P40_SERVICE_NO").hide();',
'apex.item("P40_SERVICE_STATUS").hide();',
'apex.item("P40_RANK").hide();',
'apex.item("P40_FORMATION").hide();',
'apex.item("P53_NAME1").disable();',
'apex.item("P54_SIGN_BY_NAME_1").disable();',
'apex.item("P54_SIGN_DATE").disable();',
'apex.item("P54_STATUS_DESC").disable();',
'',
'',
'// let title = document.querySelector(''#P53_TXT_OBJECTIVE_VALUE_LABEL'');',
'// title.innerHTML = $v(''P53_TXT_OBJECTIVE_DESC'')',
'// console.log(title)'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#report_image_report img{',
'	height: 100px;',
'    width:  100px;',
'',
'}',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
' #OBJECTIVE_DESC{',
'    width: 300px;',
'}',
'',
'#OBJECTIVE_VALUE{',
'    width: 10px;',
'}',
'',
'.t-fht-thead {',
'    display: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'SUPPORT'
,p_last_upd_yyyymmddhh24miss=>'20231117120922'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16764493672511907)
,p_plug_name=>'RADIATION_CHECKLIST'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>80
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16766797285511931)
,p_plug_name=>'RAD_CHKLST_TXT'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67685764819119166)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>90
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70879519250340788)
,p_plug_name=>'Radiation Accessory Sign'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196113113215845258)
,p_plug_name=>'Sign'
,p_region_name=>'sign_rg'
,p_region_css_classes=>'js-dialog-size600x450'
,p_region_template_options=>'js-dialog-autoheight:t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(196114684767845273)
,p_plug_name=>'First Technician'
,p_parent_plug_id=>wwv_flow_imp.id(196113113215845258)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8956106314285114)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_button_name=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-sign-in'
,p_grid_new_row=>'Y'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8959032355285115)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_button_name=>'back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8946632586285109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(67685764819119166)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8946260931285109)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(67685764819119166)
,p_button_name=>'Fetch'
,p_button_static_id=>'fetch_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Are you sure, you want to Fetch Record...'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8947038572285109)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(67685764819119166)
,p_button_name=>'Save'
,p_button_static_id=>'save_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Are you sure?'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8947458783285109)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(67685764819119166)
,p_button_name=>'clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_button_cattributes=>'style="display:none"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8947802705285109)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(67685764819119166)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16768741100511919)
,p_name=>'P54_STATUS_ID'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16768926719511920)
,p_name=>'P54_STATUS_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16764493672511907)
,p_prompt=>'Status:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16768992930511921)
,p_name=>'P54_SIGN_BY_NAME_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16764493672511907)
,p_prompt=>'Sign By:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16769211950511923)
,p_name=>'P54_SIGN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16764493672511907)
,p_prompt=>'Sign Date:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16775600623511940)
,p_name=>'P54_TXT_OBJECTIVE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16775648610511941)
,p_name=>'P54_TXT_OBJECTIVE_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16775815803511942)
,p_name=>'P54_TXT_RADIATION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16775938115511943)
,p_name=>'P54_TXT_SITE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16775975555511944)
,p_name=>'P54_TXT_SRNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776070472511945)
,p_name=>'P54_TXT_CHECKLIST_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776168817511946)
,p_name=>'P54_REMARKS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16766797285511931)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16777900621511913)
,p_name=>'P54_P_ACC_SRNO'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16777991465511914)
,p_name=>'P54_DISP_DIAGNOSIS'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16778125838511915)
,p_name=>'P54_ENTRY_DATE_1'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48182894102833213)
,p_name=>'P54_ACCESSORY_DESC'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48183298273833217)
,p_name=>'P54_SIGN_BY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16764493672511907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66840979194789949)
,p_name=>'P54_DOCTOR_ID'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66860129220533978)
,p_name=>'P54_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67759327262119260)
,p_name=>'P54_DISP_MRNO1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94852141750644668)
,p_name=>'P54_MRNO'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'MRNO:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94852218694644669)
,p_name=>'P54_PATIENT_NAME_1'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'Patient Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94852369648644670)
,p_name=>'P54_SEX'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'Gender:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94852443494644671)
,p_name=>'P54_AGE'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'Age:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94853015150644677)
,p_name=>'P54_RADIATION_NO_2'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'Radiation No:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94853112340644678)
,p_name=>'P54_RADIATION_DATE_1'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94853283832644679)
,p_name=>'P54_CONSULTANT'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'Consultant:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94853409292644681)
,p_name=>'P54_SITE_DISP'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_prompt=>'Site:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94853511205644682)
,p_name=>'P54_ACCESSORY_ID'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94853686903644683)
,p_name=>'P54_SITE_ID'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(70879519250340788)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196195060015845395)
,p_name=>'P54_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196195188235845396)
,p_name=>'P54_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_prompt=>'Employee Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196195262740845397)
,p_name=>'P54_PATIENT_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'null'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196195408679845398)
,p_name=>'P54_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_prompt=>'Name1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:red"'
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196195469772845399)
,p_name=>'P54_PASSWORD1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196195641009845400)
,p_name=>'P54_MESSAGE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(196114684767845273)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(377558127765421974)
,p_name=>'P54_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(196113113215845258)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8966524935285119)
,p_name=>'ReturnToDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8959032355285115)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8967096606285119)
,p_event_id=>wwv_flow_imp.id(8966524935285119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(196113113215845258)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8967473999285120)
,p_name=>'sign_btn'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8956106314285114)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8967996858285120)
,p_event_id=>wwv_flow_imp.id(8967473999285120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- --DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD  VARCHAR2(25) := :P54_PASSWORD1;',
'--  USERPASSWORD2  VARCHAR2(25) := :P54_PASSWORD2;',
'  CURRENTCHAR   NUMBER(4);',
'  NEWPASSWORD   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG     SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN         NUMBER;',
'',
'BEGIN  ',
':P54_MESSAGE1 := NULL;',
'--:P54_MESSAGE2 := NULL;',
'  IF :P54_PATIENT_MRNO1 IS NULL THEN',
'    :P54_MESSAGE1:=''Please enter Employee Code'';',
'    RETURN;',
'    -- ELSIF :P54_PATIENT_MRNO2 IS NULL THEN',
'    -- :P54_MESSAGE2:=''Please enter Employee Code'';',
'    -- RETURN;',
'  ELSIF :P54_PASSWORD1 IS NULL THEN',
'    :P54_MESSAGE1:=''Please enter Password'';',
'    RETURN;',
'    -- ELSIF :P54_PASSWORD2 IS NULL THEN',
'    -- :P54_MESSAGE2:=''Please enter Password'';',
'    -- RETURN;  ',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P54_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'    ',
'    -- SELECT PASSWORD, NEW_PASSWORD_FLAG',
'    --   INTO SAVEDPASSWORD2, V_PW_FLAG',
'    --   FROM SECURITY.USERS',
'    --  WHERE MRNO = :P54_DISP_MRNO2',
'    --    AND ACTIVE = ''Y'';',
'  ',
'    IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'      FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'',
'    --   FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'    --     CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'    --     CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'    --     NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'    --   END LOOP;',
'      NewPassword := RTRIM(LTRIM(NEWPASSWORD));',
'     -- NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'',
'    ELSE',
'      NewPassword := his.get_enc_pass(UserPassword);',
'    --  NewPassword2 := his.get_enc_pass(USERPASSWORD2);',
'    END IF;',
'  ',
'    IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/ THEN',
'    :P54_MESSAGE1:=''Incorrect Password'';',
'     RETURN;',
'    -- ELSIF NEWPASSWORD2<>SAVEDPASSWORD2 THEN',
'    -- :P54_MESSAGE2:=''Incorrect Password'';',
'    --  RETURN; ',
'    ELSE',
'    ',
'DECLARE',
'    V_ALERT_TEXT VARCHAR2(4000);',
'    V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00134.SIGN_RAD_ACCESSORIES(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                 P_RADIATION_NO => :P54_RADIATION_NO_2,',
'                                                 P_SITE_ID => :P54_SITE_ID,',
'                                                 P_ACC_SRNO => :P54_P_ACC_SRNO,',
'                                                 P_USER_MRNO => :GV_USER_MRNO,',
'                                                 P_OBJECT_CODE  => ''S18APX00046'',',
'                                                 P_TERMINAL     => :GV_TERMINAL,',
'                                                 P_ALERT_TEXT   => V_ALERT_TEXT,',
'                                                 P_STOP         => V_STOP);',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P54_MESSAGE1:= V_alert_text;',
'          RETURN;',
'        ELSE',
'        :P54_MESSAGE1:= ''Record SIGNED Properly ...'';',
'        END IF;',
'      END;',
'    END IF;',
'    END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P54_MESSAGE1,P54_PASSWORD1,P54_PATIENT_MRNO1,P54_DISP_MRNO1'
,p_attribute_03=>'P54_MESSAGE1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506694328654308)
,p_event_id=>wwv_flow_imp.id(8967473999285120)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT RA.RADIATION_NO,',
'           --  RA.SITE_ID,',
'          --   RA.SRNO,',
'             ',
'             RM.MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'             HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => RM.DOCTOR_ID,',
'                                            P_DOCTOR_MRNO => NULL) CONSULTANT,',
'             RA.ACCESSORY_ID,',
'             A.DESCRIPTION,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RA.SITE_ID) SITE_DESC,',
'             RA.REMARKS,',
'             RA.STATUS_ID,',
'             RA.SIGN_BY,',
'             TO_CHAR(RA.SIGN_DATE,''DD-MM-RRRR HH24:MI:SS'') SIGN_DATE,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RA.SIGN_BY) SIGN_BY_NAME,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID) STATUS_DESC',
'   INTO :P54_RADIATION_NO_2,:P54_MRNO,:P54_PATIENT_NAME_1,:P54_AGE,:P54_SEX,:P54_CONSULTANT,:P54_ACCESSORY_ID,:P54_ACCESSORY_DESC,:P54_SITE_DISP,:P54_REMARKS,:P54_STATUS_ID,:P54_SIGN_BY,:P54_SIGN_DATE,:P54_SIGN_BY_NAME_1,:P54_STATUS_DESC',
'FROM RADIATION.RAD_ACCESSORIES  RA,',
' RADIATION.ACCESSORIES      A,',
' RADIATION.RADIATION_MASTER RM',
'WHERE RA.RADIATION_NO = :P54_RADIATION_NO_2',
'AND RA.SITE_ID =:P54_SITE_ID',
'AND RA.SRNO = :P54_P_ACC_SRNO',
'AND RA.ACCESSORY_ID = A.ACCESSORY_ID',
'AND RA.TRANS_TYPE = ''CT''',
'AND RA.RADIATION_NO = RM.RADIATION_NO;',
'',
'',
'/*     SELECT RM.RADIATION_NO,',
'             RADIATION_DATE,',
'             RM.MRNO MRNO,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'             --RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'             ICDNO,',
'             RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'             RM.ORIGINAL_TRN_DATE ENTRY_DATE,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'             ANAESTHESIA',
'             INTO :P54_RADIATION_NO_2,:P54_RADIATION_DATE_1,:P54_MRNO,:P54_PATIENT_NAME_1,:P54_AGE,:P54_SEX,:P54_CONSULTANT,:P54_ICDNO,:P54_DISP_DIAGNOSIS,:P54_ENTRY_DATE_1,:P54_SITE_ID,:P54_SITE_DISP,:P54_ANESTHESIA',
'        FROM RADIATION.RADIATION_MASTER RM, RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P54_RADIATION_NO_2',
'         AND RD.SITE_ID = :P54_SITE_ID',
'         AND RM.RADIATION_NO = RD.RADIATION_NO;',
'*/         ',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'',
''))
,p_attribute_02=>'P54_RADIATION_NO_2,P54_SITE_ID,P54_P_ACC_SRNO'
,p_attribute_03=>'P54_RADIATION_NO_2,P54_MRNO,P54_PATIENT_NAME_1,P54_AGE,P54_SEX,P54_CONSULTANT,P54_ACCESSORY_ID,P54_ACCESSORY_DESC,P54_SITE_DISP,P54_REMARKS,P54_STATUS_ID,P54_SIGN_BY,P54_SIGN_DATE,P54_SIGN_BY_NAME_1,P54_STATUS_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8968456484285120)
,p_event_id=>wwv_flow_imp.id(8967473999285120)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P54_MESSAGE1.'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P54_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8968848493285120)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_PATIENT_MRNO1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8969387176285120)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'test'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8969841363285120)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--IF :P54_PATIENT_TYPE1 IS NOT NULL AND :P54_PATIENT_MRNO1 IS NOT NULL THEN',
':P54_DISP_MRNO1 := :P54_PATIENT_TYPE1 ||LPAD(:P54_PATIENT_MRNO1, 8, ''0'');',
':P54_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P54_DISP_MRNO1);',
'--END IF;',
'END;'))
,p_attribute_02=>'P54_DISP_MRNO1,P54_PATIENT_TYPE1,P54_PATIENT_MRNO1'
,p_attribute_03=>'P54_DISP_MRNO1,P54_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8970322203285121)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P54_DISP_MRNO1 IS NOT NULL THEN',
'--    :P54_PATIENT_TYPE1 := substr(:P54_DISP_MRNO1, 1, 6);',
'--    :P54_PATIENT_MRNO1 := LTRIM(SUBSTR(:P54_DISP_MRNO1, 7), ''0'');',
'    :P54_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P54_DISP_MRNO1);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P54_DISP_MRNO1'
,p_attribute_03=>'P54_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8970887137285121)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_PASSWORD1'
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
 p_id=>wwv_flow_imp.id(8971325060285121)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P54_ERROR := NULL;',
'  IF :P54_PATIENT_MRNO1 IS NOT NULL THEN',
'    :P54_DISP_MRNO1 := :P54_PATIENT_TYPE1 || LPAD(:P54_PATIENT_MRNO1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P54_DISP_MRNO1), ''N'') = ''N'' THEN',
'      :P54_ERROR        := ''This is not an active employee.'';',
'      :P54_PATIENT_MRNO1 := NULL;',
'      :P54_DISP_MRNO1    := NULL;',
'      :P54_NAME1        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P54_NAME1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P54_DISP_MRNO1',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P54_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P54_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P54_ERROR,P54_PATIENT_MRNO1,P54_PATIENT_TYPE1,P54_DISP_MRNO1,P54_NAME1'
,p_attribute_03=>'P54_ERROR,P54_PATIENT_MRNO1,P54_PATIENT_TYPE1,P54_DISP_MRNO1,P54_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8971800541285121)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P54_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P54_ERROR'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8972308238285121)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P54_NAME1:= his.pkg_patient.GET_PATIENT_NAME(:P54_DISP_MRNO1);'
,p_attribute_02=>'P54_DISP_MRNO1'
,p_attribute_03=>'P54_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P54_ERROR'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8972836242285122)
,p_event_id=>wwv_flow_imp.id(8968848493285120)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_NAME1'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P54_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8973246216285122)
,p_name=>'Get-Patient-Code_2'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_PATIENT_MRNO2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8973742212285122)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P54_ERROR := NULL;',
'  IF :P54_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P54_DISP_MRNO2 := (:P54_PATIENT_TYPE2 || LPAD(:P54_PATIENT_MRNO2, 8, ''0''));',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P54_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P54_ERROR        := ''This is not an active employee.'';',
'      :P54_PATIENT_MRNO2 := NULL;',
'      :P54_DISP_MRNO2    := NULL;',
'      :P54_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P54_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P54_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P54_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P54_ERROR,P54_PATIENT_MRNO2,P54_PATIENT_TYPE2,P54_DISP_MRNO2,P54_NAME2'
,p_attribute_03=>'P54_ERROR,P54_PATIENT_MRNO2,P54_PATIENT_TYPE2,P54_DISP_MRNO2,P54_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8974255538285122)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P54_DISP_MRNO2 IS NOT NULL THEN',
'    :P54_PATIENT_TYPE2 := substr(:P54_DISP_MRNO2, 1, 6);',
'    :P54_PATIENT_MRNO2 := LTRIM(SUBSTR(:P54_DISP_MRNO2, 7), ''0'');',
'    :P54_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P54_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P54_DISP_MRNO2'
,p_attribute_03=>'P54_PATIENT_TYPE2,P54_PATIENT_MRNO2,P54_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8974754825285122)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8975289115285122)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P54_PATIENT_TYPE2 IS NOT NULL AND :P54_PATIENT_MRNO2 IS NOT NULL THEN',
':P54_DISP_MRNO2 := :P54_PATIENT_TYPE2 ||LPAD(:P54_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P54_DISP_MRNO1,P54_PATIENT_TYPE1,P54_PATIENT_MRNO1'
,p_attribute_03=>'P54_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8975762003285123)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P54_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P54_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8976290271285123)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P54_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P54_DISP_MRNO2);'
,p_attribute_02=>'P54_DISP_MRNO2'
,p_attribute_03=>'P54_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P54_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8976745454285123)
,p_event_id=>wwv_flow_imp.id(8973246216285122)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P54_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8977174242285123)
,p_name=>'ClearItems'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8977651618285123)
,p_event_id=>wwv_flow_imp.id(8977174242285123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8979980487285124)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8980483283285124)
,p_event_id=>wwv_flow_imp.id(8979980487285124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P54_STATUS_ID")==''020'') ',
'{',
'apex.item("sign_btn").enable();',
'apex.item("dis_btn").enable();',
'apex.item("create_btn").disable();',
'apex.item("fetch_btn").disable();',
'apex.item("save_btn").enable();',
'}',
'else if ($v("P54_STATUS_ID")==''015'')',
'{',
'apex.item("fetch_btn").enable();',
'apex.item("save_btn").enable();',
'apex.item("sign_btn").disable();',
'apex.item("dis_btn").disable();',
'apex.item("create_btn").disable();',
'',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8980805559285124)
,p_name=>'SaveBtnDA'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8947038572285109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8981301472285124)
,p_event_id=>wwv_flow_imp.id(8980805559285124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var f01_array = [];',
'// var f02_array = [];',
'',
'// $(''.boxes:checked'').each(function() {',
'//     f01_array.push($(this).val());',
'// });',
'',
'// $(''.boxes:checkbox:not(:checked)'').each(function() {',
'//     f02_array.push($(this).val());',
'// });',
'',
'//  console.log(f01_array+''chk'')',
'// console.log(f02_array+''not chk'')',
'// // return',
'apex.server.process("saveProcess", ',
'{ ',
'      pageItems: ',
'[',
'"P54_RADIATION_NO_2",',
'"P54_SITE_ID",',
'"P54_P_ACC_SRNO",',
'"P54_MRNO",',
'"P54_PATIENT_NAME_1",',
'"P54_AGE",',
'"P54_SEX",',
'"P54_CONSULTANT",',
'"P54_ACCESSORY_ID",',
'"P54_ACCESSORY_DESC",',
'"P54_SITE_DISP",',
'"P54_REMARKS",',
'"P54_STATUS_ID",',
'"P54_SIGN_BY",',
'"P54_SIGN_DATE",',
'"P54_SIGN_BY_NAME_1",',
'"P54_STATUS_DESC"',
']//,f01 : f01_array,    f02:  f02_array',
'',
'},',
'{ ',
'   dataType: ''text'',',
'    success: function(data)  {',
'//alert(data);',
'        var obj = JSON.parse(data);',
'',
'        if(obj.status == "success"){',
'        apex.message.showPageSuccess(obj.message);',
'        // apex.item("P2_LAST_UPDATE_TIME").setValue(obj.upd);',
'        // window.parent.document.getElementById(''updatedTimebtnId'').click();',
'        // apex.region("OPD_DASH").refresh();',
'         setTimeout(function() {',
'         $(''#t_Alert_Success'').fadeOut(''fast'');',
'         }, 2000);',
'',
'      }',
'      else{',
'          apex.message.alert(obj.message);',
'          }',
'    }',
'}',
');',
'',
'//////////////////////////////////////////////',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8981727915285125)
,p_name=>'Sign_btn_OpenRG'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8946632586285109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8982275630285125)
,p_event_id=>wwv_flow_imp.id(8981727915285125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P54_MRNO1         := :GV_USER_MRNO;',
'    :P54_PATIENT_TYPE1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'   -- :P54_PATIENT_TYPE2:= SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P54_PATIENT_MRNO1    := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'   -- :P54_PATIENT_MRNO1    := LPAD(:P54_PATIENT_MRNO1, 8, ''0'');',
'    :P54_DISP_MRNO1 := (:P54_PATIENT_TYPE1 ||LPAD(:P54_PATIENT_MRNO1, 8, ''0''));',
'    :P54_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P54_DISP_MRNO1);',
'   -- :P54_DISP_MRNO2:=null;',
'  END;',
'',
''))
,p_attribute_02=>'P54_MRNO1,P54_DISP_MRNO1,P54_NAME1'
,p_attribute_03=>'P54_MRNO1,P54_PATIENT_TYPE1,P54_DISP_MRNO1,P54_PATIENT_MRNO1,P54_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8982727902285125)
,p_event_id=>wwv_flow_imp.id(8981727915285125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign_rg");',
'apex.item("P54_PASSWORD1").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48183076363833215)
,p_name=>'FetchBtnDA'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8946260931285109)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48183131655833216)
,p_event_id=>wwv_flow_imp.id(48183076363833215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("fetch_record_process", ',
'{ ',
'      pageItems: [',
'    "P54_RADIATION_NO_2",',
'    "P54_SITE_ID",',
'    "P54_P_ACC_SRNO"',
'                 ]',
'},',
'{ ',
'   dataType: ''text'',',
'    success: function(data)  {',
'//alert(data);',
'        var obj = JSON.parse(data);',
'',
'        if(obj.status == "success"){',
'        apex.message.showPageSuccess(obj.message);',
'        apex.item("sign_btn").enable();',
'        apex.item("fetch_btn").disable();',
'        ',
'        // apex.item("P2_LAST_UPDATE_TIME").setValue(obj.upd);',
'        // window.parent.document.getElementById(''updatedTimebtnId'').click();',
'        // apex.region("OPD_DASH").refresh();',
'         setTimeout(function() {',
'         $(''#t_Alert_Success'').fadeOut(''fast'');',
'         }, 2000);',
'',
'      }',
'      else{',
'          apex.message.alert(obj.message);',
'          }',
'    }',
'}',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506796680654309)
,p_event_id=>wwv_flow_imp.id(48183076363833215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT RA.RADIATION_NO,',
'           --  RA.SITE_ID,',
'          --   RA.SRNO,',
'             ',
'             RM.MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'             HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => RM.DOCTOR_ID,',
'                                            P_DOCTOR_MRNO => NULL) CONSULTANT,',
'             RA.ACCESSORY_ID,',
'             A.DESCRIPTION,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RA.SITE_ID) SITE_DESC,',
'             RA.REMARKS,',
'             RA.STATUS_ID,',
'             RA.SIGN_BY,',
'             TO_CHAR(RA.SIGN_DATE,''DD-MM-RRRR HH24:MI:SS'') SIGN_DATE,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RA.SIGN_BY) SIGN_BY_NAME,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID) STATUS_DESC',
'   INTO :P54_RADIATION_NO_2,:P54_MRNO,:P54_PATIENT_NAME_1,:P54_AGE,:P54_SEX,:P54_CONSULTANT,:P54_ACCESSORY_ID,:P54_ACCESSORY_DESC,:P54_SITE_DISP,:P54_REMARKS,:P54_STATUS_ID,:P54_SIGN_BY,:P54_SIGN_DATE,:P54_SIGN_BY_NAME_1,:P54_STATUS_DESC',
'FROM RADIATION.RAD_ACCESSORIES  RA,',
' RADIATION.ACCESSORIES      A,',
' RADIATION.RADIATION_MASTER RM',
'WHERE RA.RADIATION_NO = :P54_RADIATION_NO_2',
'AND RA.SITE_ID =:P54_SITE_ID',
'AND RA.SRNO = :P54_P_ACC_SRNO',
'AND RA.ACCESSORY_ID = A.ACCESSORY_ID',
'AND RA.TRANS_TYPE = ''CT''',
'AND RA.RADIATION_NO = RM.RADIATION_NO;',
'',
'',
'/*     SELECT RM.RADIATION_NO,',
'             RADIATION_DATE,',
'             RM.MRNO MRNO,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'             --RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'             ICDNO,',
'             RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'             RM.ORIGINAL_TRN_DATE ENTRY_DATE,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'             ANAESTHESIA',
'             INTO :P54_RADIATION_NO_2,:P54_RADIATION_DATE_1,:P54_MRNO,:P54_PATIENT_NAME_1,:P54_AGE,:P54_SEX,:P54_CONSULTANT,:P54_ICDNO,:P54_DISP_DIAGNOSIS,:P54_ENTRY_DATE_1,:P54_SITE_ID,:P54_SITE_DISP,:P54_ANESTHESIA',
'        FROM RADIATION.RADIATION_MASTER RM, RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P54_RADIATION_NO_2',
'         AND RD.SITE_ID = :P54_SITE_ID',
'         AND RM.RADIATION_NO = RD.RADIATION_NO;',
'*/         ',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'',
''))
,p_attribute_02=>'P54_RADIATION_NO_2,P54_SITE_ID,P54_P_ACC_SRNO'
,p_attribute_03=>'P54_RADIATION_NO_2,P54_MRNO,P54_PATIENT_NAME_1,P54_AGE,P54_SEX,P54_CONSULTANT,P54_ACCESSORY_ID,P54_ACCESSORY_DESC,P54_SITE_DISP,P54_REMARKS,P54_STATUS_ID,P54_SIGN_BY,P54_SIGN_DATE,P54_SIGN_BY_NAME_1,P54_STATUS_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8963700157285118)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_MrnoPage46'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P54_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>8963700157285118
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8963352472285118)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT RA.RADIATION_NO,',
'           --  RA.SITE_ID,',
'          --   RA.SRNO,',
'             ',
'             RM.MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'             HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => RM.DOCTOR_ID,',
'                                            P_DOCTOR_MRNO => NULL) CONSULTANT,',
'             RA.ACCESSORY_ID,',
'             A.DESCRIPTION,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RA.SITE_ID) SITE_DESC,',
'             RA.REMARKS,',
'             RA.STATUS_ID,',
'             RA.SIGN_BY,',
'             TO_CHAR(RA.SIGN_DATE,''DD-MM-RRRR HH24:MI:SS'') SIGN_DATE,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RA.SIGN_BY) SIGN_BY_NAME,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID) STATUS_DESC',
'   INTO :P54_RADIATION_NO_2,:P54_MRNO,:P54_PATIENT_NAME_1,:P54_AGE,:P54_SEX,:P54_CONSULTANT,:P54_ACCESSORY_ID,:P54_ACCESSORY_DESC,:P54_SITE_DISP,:P54_REMARKS,:P54_STATUS_ID,:P54_SIGN_BY,:P54_SIGN_DATE,:P54_SIGN_BY_NAME_1,:P54_STATUS_DESC',
'FROM RADIATION.RAD_ACCESSORIES  RA,',
' RADIATION.ACCESSORIES      A,',
' RADIATION.RADIATION_MASTER RM',
'WHERE RA.RADIATION_NO = :P54_RADIATION_NO_2',
'AND RA.SITE_ID =:P54_SITE_ID',
'AND RA.SRNO = :P54_P_ACC_SRNO',
'AND RA.ACCESSORY_ID = A.ACCESSORY_ID',
'AND RA.TRANS_TYPE = ''CT''',
'AND RA.RADIATION_NO = RM.RADIATION_NO;',
'',
'',
'/*     SELECT RM.RADIATION_NO,',
'             RADIATION_DATE,',
'             RM.MRNO MRNO,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'             --RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'             ICDNO,',
'             RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'             RM.ORIGINAL_TRN_DATE ENTRY_DATE,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'             ANAESTHESIA',
'             INTO :P54_RADIATION_NO_2,:P54_RADIATION_DATE_1,:P54_MRNO,:P54_PATIENT_NAME_1,:P54_AGE,:P54_SEX,:P54_CONSULTANT,:P54_ICDNO,:P54_DISP_DIAGNOSIS,:P54_ENTRY_DATE_1,:P54_SITE_ID,:P54_SITE_DISP,:P54_ANESTHESIA',
'        FROM RADIATION.RADIATION_MASTER RM, RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P54_RADIATION_NO_2',
'         AND RD.SITE_ID = :P54_SITE_ID',
'         AND RM.RADIATION_NO = RD.RADIATION_NO;',
'*/         ',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8963352472285118
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8961759490285117)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeRadiaitonCheckDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT C.RADIATION_NO,',
'             C.SITE_ID,',
'             C.SRNO,',
'             DC.PERFORMANCE_TYPE_ID,',
'             C.CHECKLIST_ID,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(C.SIGN_BY_1) SIGN_BY_NAME_1,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(C.SIGN_BY_2) SIGN_BY_NAME_2,',
'             C.SIGN_DATE SIGN_DATE,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(C.STATUS_ID) STATUS_DESC,',
'             C.STATUS_ID',
'             --,DC.CHECKLIST_TYPE,DC.PERFORMANCE_TYPE_ID',
'            INTO :P54_RADIATION_NO,:P54_SITE_ID_1,:P54_SRNO,:P54_PERFORMANCE_TYPE_ID,:P54_CHECKLIST_ID,:P54_SIGN_BY_NAME_1,:P54_SIGN_BY_NAME_2,:P54_SIGN_DATE,:P54_STATUS_DESC,:P54_STATUS_ID',
'        FROM RADIATION.RAD_CHECKLIST C, RADIATION.DEF_CHECKLIST DC',
'       WHERE C.SCHEDULE_SRNO = NVL(:P54_PARAM_SCHEDULE_SRNO, C.SCHEDULE_SRNO)',
'         AND C.CHECKLIST_ID = DC.CHECKLIST_ID',
'         AND C.RADIATION_NO = :P54_RADIATION_NO_2',
'         AND C.SITE_ID = :P54_SITE_ID',
'         AND DC.CHECKLIST_TYPE =:P54_PARAM_CHECKLIST_TYPE',
'       AND DC.PERFORMANCE_TYPE_ID =:P54_PARAM_PERFORMANCE_TYPE_ID',
'       ORDER BY C.SRNO DESC;',
'EXCEPTION WHEN OTHERS THEN NULL;       ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>8961759490285117
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8962558542285117)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeChecklistTxt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      BEGIN',
'      SELECT C.RADIATION_NO,',
'             C.SITE_ID,',
'             C.SRNO,',
'             C.CHECKLIST_ID,',
'             CD.OBJECTIVE_ID,',
'             CD.OBJECTIVE_VALUE,',
'             CD.OBJECTIVE_DESC',
'             INTO :P54_TXT_RADIATION_NO,:P54_TXT_SITE_ID,:P54_TXT_SRNO,:P54_TXT_CHECKLIST_ID,',
'             :P54_TXT_OBJECTIVE_ID,:P54_TXT_OBJECTIVE_VALUE,:P54_TXT_OBJECTIVE_DESC',
'        FROM RADIATION.RAD_CHECKLIST            C,',
'             RADIATION.RAD_CHECKLIST_DTL        CD,',
'             RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
'       WHERE C.RADIATION_NO = :P54_RADIATION_NO_2',
'         AND C.SITE_ID = :P54_SITE_ID',
'         AND C.SRNO = :P54_SRNO',
'         AND CD.RADIATION_NO = C.RADIATION_NO',
'         AND CD.SITE_ID = C.SITE_ID',
'         AND CD.SRNO = C.SRNO',
'         and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'         AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'         AND CO.OBJECTIVE_TYPE = ''T''',
'       ORDER BY CHECKLIST_ID, OBJECTIVE_ID;',
'       EXCEPTION WHEN NO_DATA_FOUND THEN NULL;',
'       END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>8962558542285117
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8962987556285118)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'saveProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'bk_data RADIATION.PKG_S18FRM00134.ACC_MASTER_TAB;',
'V_STOP VARCHAR2(1);',
'EX EXCEPTION;',
'V_ERROR VARCHAR2(200);',
'begin',
'    SELECT ',
':P54_RADIATION_NO_2,',
':P54_SITE_ID,',
':P54_P_ACC_SRNO,',
':P54_MRNO,',
':P54_PATIENT_NAME_1,',
':P54_AGE,',
':P54_SEX,',
':P54_CONSULTANT,',
':P54_ACCESSORY_ID,',
':P54_ACCESSORY_DESC,',
':P54_SITE_DISP,',
':P54_REMARKS,',
':P54_STATUS_ID,',
':P54_SIGN_BY,',
':P54_SIGN_DATE,',
':P54_SIGN_BY_NAME_1,',
':P54_STATUS_DESC',
'BULK COLLECT INTO bk_data',
'from dual;',
'    --RADIATION.PKG_S18FRM00135.UPDATE_CHKLIST_DETAIL(bk_data);',
'    RADIATION.PKG_S18FRM00134.UPDATE_RAD_ACC_MASTER(bk_data);',
'    apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''success'');',
'    apex_json.write( p_name => ''message'', p_value => ''Record Saved Properly...'');',
'    apex_json.close_object;',
'    -- --ELSE',
'    -- apex_json.open_object;',
'    -- apex_json.write( p_name => ''status'', p_value => ''failed'');',
'    -- apex_json.write( p_name => ''message'', p_value => ''Please Fill the Required Fields.'');',
'    -- apex_json.close_object;',
'    -- --END IF;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''failed'');',
'    apex_json.write( p_name => ''message'', p_value => SQLERRM);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8962987556285118
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48182931713833214)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'fetch_record_process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'bk_data RADIATION.PKG_S18FRM00135.TAB_CHKLIST_DETAIL;',
'V_STOP VARCHAR2(1);',
'	V_ALERT_TEXT VARCHAR2(4000);',
'EX EXCEPTION;',
'V_ERROR VARCHAR2(200);',
'begin',
'-- CALL THE PROCEDURE',
'RADIATION.PKG_S18FRM00134.FETCH_RAD_ACCESSORIES(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                  P_RADIATION_NO => :P54_RADIATION_NO_2,',
'                                                  P_SITE_ID => :P54_SITE_ID,',
'                                                  P_ACC_SRNO => :P54_P_ACC_SRNO,',
'                                                  P_REASON	=> NULL,',
'                                                  P_USER_MRNO => :GV_USER_MRNO,',
'                                                  P_OBJECT_CODE  => ''S18APX00046'',',
'                                                  P_TERMINAL     => :GV_TERMINAL,',
'                                                  P_ALERT_TEXT   => V_ALERT_TEXT,',
'                                                  P_STOP         => V_STOP);	',
'',
'IF NVL(V_STOP,''N'') =''Y'' THEN',
'	--DISPLAY_ALERT(''MESSAGE'', V_ALERT_TEXT);',
'	',
'    -- apex_json.open_object;',
'    -- apex_json.write( p_name => ''status'', p_value => ''failed'');',
'    -- apex_json.write( p_name => ''message'', p_value => V_ALERT_TEXT);',
'    -- apex_json.close_object;',
'    RAISE EX;',
'ELSE',
'	COMMIT;',
'      apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''success'');',
'    apex_json.write( p_name => ''message'', p_value => ''Record Fetched Properly...'');',
'    apex_json.close_object;',
'END IF;',
'',
'',
'    EXCEPTION',
'    WHEN EX THEN',
'    apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''failed'');',
'    apex_json.write( p_name => ''message'', p_value => V_ALERT_TEXT);',
'    apex_json.close_object;',
'    WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''failed'');',
'    apex_json.write( p_name => ''message'', p_value => SQLERRM);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>48182931713833214
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_name=>'RAD_SCHEDULE_DETAIL'
,p_alias=>'RAD-SCHEDULE-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiotherapy Patient Schedule '
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250122112922'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28168827598971613)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>290
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12106008640445312)
,p_button_sequence=>60
,p_button_name=>'View'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'View'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12107635586445328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28168827598971613)
,p_button_name=>'Protocol'
,p_button_static_id=>'protocol'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Protocol'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''P'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12107705847445329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28168827598971613)
,p_button_name=>'Single'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Single'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12107958383445331)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(28168827598971613)
,p_button_name=>'GenerateOrder'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Order'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''G'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28169014536971615)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(28168827598971613)
,p_button_name=>'Reports'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reports'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''R'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12107823300445330)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(28168827598971613)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-ban'
,p_button_cattributes=>'accesskey=''X'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105021792445302)
,p_name=>'P63_VISIT_DATE'
,p_item_sequence=>30
,p_prompt=>'<b><p style="color:#00008B">Visit Date:</p></b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105513063445307)
,p_name=>'P63_SRNO'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105670122445308)
,p_name=>'P63_MACHINE_DESC'
,p_item_sequence=>10
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12106587270445317)
,p_name=>'P63_DOCTOR_ID'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12106878899445320)
,p_name=>'P63_FREQUENCY_ID'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12106957429445321)
,p_name=>'P63_FREQUENCY'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12108870570445340)
,p_name=>'P63_FRACTION'
,p_item_sequence=>150
,p_prompt=>'<b><p style="color:#00008B">Fraction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13148825514075813)
,p_name=>'P63_SUCCESS_MESSAGE'
,p_item_sequence=>280
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28169313368971618)
,p_name=>'P63_TXT_URL'
,p_item_sequence=>300
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35558423098840529)
,p_name=>'P63_MACHINE_TYPE'
,p_item_sequence=>310
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35558630623840531)
,p_name=>'P63_ALERT_TEXT'
,p_item_sequence=>320
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55371327330424818)
,p_name=>'P63_SELECT_REQUEST'
,p_item_sequence=>100
,p_prompt=>'<b><p style="color:#00008B">Select Request:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_SCHEDULE_DETAIL_SITE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => D.SITE_ID) ||',
'                 '' --- '' ||',
'                 HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => M.DOCTOR_ID,',
'                                                P_DOCTOR_MRNO => NULL) ||',
'                 '' --- '' || D.RADIATION_NO || '' --- '' ||CASE',
'                  WHEN M.RADIOTHERAPY_TYPE = ''T'' THEN',
'                   ''External beam radiation therapy''',
'                  ELSE',
'                   ''Brachytherapy''',
'                END DISP_COLUMN,',
'                D.RADIATION_NO,',
'                D.SITE_ID',
'  FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
' WHERE M.MRNO = :P63_MRNO',
'   AND M.RADIATION_NO = D.RADIATION_NO',
'   AND RADIATION.Pkg_Request.IS_ACTIVE_SITE(P_RADIATION_NO => D.RADIATION_NO,',
'                                            P_SITE_ID      => D.SITE_ID) = ''Y''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Patient Radiotherapy Request(s)'
,p_attribute_08=>'1000'
,p_attribute_09=>'300'
,p_attribute_10=>'RADIATION_NO:P63_RADIATION_NO,SITE_ID:P63_SITE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60084041833639036)
,p_name=>'P63_SELECT_REQUEST_DETAIL'
,p_item_sequence=>110
,p_prompt=>'<b><p style="color:#00008B">Request Detail:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62507779481892610)
,p_name=>'P63_MACHINE_ID'
,p_item_sequence=>270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62507935236892612)
,p_name=>'P63_NAME'
,p_item_sequence=>70
,p_prompt=>'<b><p style="color:#00008B">Name:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508007310892613)
,p_name=>'P63_AGE'
,p_item_sequence=>80
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508182817892614)
,p_name=>'P63_GENDER'
,p_item_sequence=>90
,p_prompt=>'<b><p style="color:#00008B">Gender:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508245399892615)
,p_name=>'P63_SITE'
,p_item_sequence=>130
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DESCRIPTION, SITE_ID FROM RADIATION.SITE'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P63_MRNO'
,p_ajax_items_to_submit=>'P63_MRNO'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508391978892616)
,p_name=>'P63_RADIATION_NO'
,p_item_sequence=>120
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508488666892617)
,p_name=>'P63_PHASE_NO'
,p_item_sequence=>140
,p_prompt=>'<b><p style="color:#00008B">Phase No:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.PHASE_NO',
'  FROM RADIATION.RADIATION_BOOST_PLAN B',
' WHERE B.RADIATION_NO = :P63_RADIATION_NO',
'   AND B.SITE_ID = :P63_SITE',
'   AND RADIATION.PKG_SCHEDULE.GET_UNBOOKED_FRACTIONS(P_RADIATION_NO => B.RADIATION_NO,',
'                                                     P_SITE_ID      => B.SITE_ID,',
'                                                     P_PHASE_NO     => B.PHASE_NO) > 0'))
,p_lov_cascade_parent_items=>'P63_RADIATION_NO,P63_SITE'
,p_ajax_items_to_submit=>'P63_RADIATION_NO,P63_SITE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508541954892618)
,p_name=>'P63_SEDATION'
,p_item_sequence=>170
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Sedation</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508655995892619)
,p_name=>'P63_DOCTOR'
,p_item_sequence=>160
,p_prompt=>'<b><p style="color:#00008B">Doctor:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508702234892620)
,p_name=>'P63_PHYSIST'
,p_item_sequence=>180
,p_prompt=>'<b><p style="color:#00008B">Physicist:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME, P.PHYSICIST_MRNO',
'  FROM RADIATION.PHYSICISTS P, HRD.VU_INFORMATION I',
' WHERE P.PHYSICIST_MRNO = I.MRNO',
'   AND I.ACTIVE = ''Y''',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508863934892621)
,p_name=>'P63_TREATMENT_FREQUENCY'
,p_item_sequence=>190
,p_prompt=>'<b><p style="color:#00008B">Treatment Frequency:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62508988410892622)
,p_name=>'P63_TREATMENT_TYPE'
,p_item_sequence=>200
,p_prompt=>'<b><p style="color:#00008B">Treatment Type:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62509054072892623)
,p_name=>'P63_REMARKS'
,p_item_sequence=>210
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62509159826892624)
,p_name=>'P63_BOOK_ON_WEEKEND'
,p_item_sequence=>220
,p_prompt=>'<b><p style="color:#00008B">Book on Weekend</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62509397222892626)
,p_name=>'P63_MRNO'
,p_item_sequence=>50
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62509444422892627)
,p_name=>'DAMRNO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_MRNO'
,p_condition_element=>'P63_MRNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62509586501892628)
,p_event_id=>wwv_flow_imp.id(62509444422892627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT      VARCHAR2(2000);',
'  L_STOP            VARCHAR(1);',
'  L_EMP_TO_PAT_MRNO VARCHAR2(14);',
'  L_DISPLAY_MRNO    VARCHAR2(14);',
'  EX_CUSTOM EXCEPTION;',
'  L_DEAD_PAT_COUNT NUMBER := 0;',
'BEGIN',
'  IF :P63_MRNO IS NOT NULL THEN',
'  ',
'    BEGIN',
'      HRD.SET_MRNO(''PAT'', :P63_MRNO, L_DISPLAY_MRNO, L_ALERT_TEXT, L_STOP);',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        L_ALERT_TEXT := ''Problem in execution of HRD.SET_MRNO for '' ||',
'                        :P63_MRNO || CHR(10) || SQLERRM;',
'        RAISE EX_CUSTOM;',
'    END;',
'     ',
'     :P63_MRNO := L_DISPLAY_MRNO;',
'    -- Check Converted EMR# in case of Employee/Dependent  ',
'  ',
'    IF NVL(HRD.CHECK_EMPLOYEE(P_MRNO => :P63_MRNO), ''~'') IN (''E'', ''D'') THEN',
'      BEGIN',
'        BEGIN',
'          HRD.PKG_MRNO.GET_PATIENT_AGAINST_EMP(P_EMP_CODE     => :P63_MRNO,',
'                                               P_PATIENT_MRNO => L_EMP_TO_PAT_MRNO,',
'                                               P_STOP         => L_STOP,',
'                                               P_ALERT_TEXT   => L_ALERT_TEXT);',
'        ',
'          IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'            RAISE EX_CUSTOM;',
'          END IF;',
'          IF :P63_MRNO <> L_EMP_TO_PAT_MRNO THEN',
'            L_ALERT_TEXT := ''This Employee / Dependent code '' || :P63_MRNO ||',
'                            '' is converted to another MRNO '' ||',
'                            L_EMP_TO_PAT_MRNO || '', kindly use this MRNO '' ||',
'                            L_EMP_TO_PAT_MRNO || '' to access EMR.'';',
'            RAISE EX_CUSTOM;',
'          END IF;',
'        END;',
'      ',
'        :P63_MRNO := L_EMP_TO_PAT_MRNO;',
'      END;',
'    END IF;',
'  ',
'  BEGIN',
'',
'   SELECT COUNT (*)',
'      INTO L_DEAD_PAT_COUNT',
'      FROM REGISTRATION.PATIENT',
'    WHERE MRNO = :P63_MRNO',
'      AND NVL(DEAD , ''~'') = ''Y'';',
'',
'   IF L_DEAD_PAT_COUNT > 0 THEN',
'     :P63_ALERT_TEXT := ''Booking for deceased patient is not permitted'';',
'     RETURN;',
'   END IF;',
'',
'  EXCEPTION ',
'     WHEN OTHERS THEN ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  END;',
'',
'',
'',
'    :P63_NAME   := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P63_MRNO);',
'    :P63_AGE    := HIS.PKG_PATIENT.GET_AGE(:P63_MRNO);',
'    :P63_GENDER := HIS.PKG_PATIENT.GET_GENDER(:P63_MRNO);',
'  ELSE',
'    :P63_NAME   := NULL;',
'    :P63_AGE    := NULL;',
'    :P63_GENDER := NULL;',
'  END IF;',
'EXCEPTION ',
'  WHEN EX_CUSTOM THEN ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'WHEN OTHERS THEN ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_02=>'P63_MRNO'
,p_attribute_03=>'P63_NAME,P63_AGE,P63_GENDER,P63_MRNO,P63_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35558561381840530)
,p_event_id=>wwv_flow_imp.id(62509444422892627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT MACHINE_TYPE',
'    INTO :P63_MACHINE_TYPE',
'    FROM RADIATION.MACHINES M',
'   WHERE M.MACHINE_ID = :P63_MACHINE_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P63_MACHINE_ID'
,p_attribute_03=>'P63_MACHINE_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17790005959818145)
,p_event_id=>wwv_flow_imp.id(62509444422892627)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_SELECT_REQUEST'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12106112402445313)
,p_name=>'DAView1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12106008640445312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12106299591445314)
,p_event_id=>wwv_flow_imp.id(12106112402445313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'This page haven''t been developed in New Application. Please use Previous Application (HIS) to check schedule view '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12106351040445315)
,p_name=>'SingleDA1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_SITE'
,p_condition_element=>'P63_SITE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'THROTTLE'
,p_execution_time=>100
,p_execution_immediate=>true
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12106473504445316)
,p_event_id=>wwv_flow_imp.id(12106351040445315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => M.DOCTOR_ID,',
'                                        P_DOCTOR_MRNO => NULL) DOCTOR,',
'         M.DOCTOR_ID,',
'         M.ANAESTHESIA,',
'         D.PHYSICIST PHYSICIST_MRNO,',
'         F.FREQUENCY_ID,',
'         F.DESCRIPTION',
'    INTO :P63_DOCTOR,',
'         :P63_DOCTOR_ID,',
'         :P63_SEDATION,',
'         :P63_PHYSIST,',
'         :P63_FREQUENCY_ID,',
'         :P63_TREATMENT_FREQUENCY',
'    FROM RADIATION.RADIATION_MASTER        M,',
'         RADIATION.RADIATION_DETAIL        D,',
'         RADIATION.DEF_TREATMENT_FREQUENCY F',
'   WHERE M.MRNO = :P63_MRNO',
'     AND M.RADIATION_NO = D.RADIATION_NO',
'     AND RADIATION.Pkg_Request.IS_ACTIVE_SITE(P_RADIATION_NO => D.RADIATION_NO,',
'                                              P_SITE_ID      => D.SITE_ID) = ''Y''',
'     AND NVL(D.FREQUENCY_ID, ''001'') = F.FREQUENCY_ID',
'     AND D.RADIATION_NO = :P63_RADIATION_NO',
'     AND D.SITE_ID = :P63_SITE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P63_MRNO,P63_SITE,P63_RADIATION_NO'
,p_attribute_03=>'P63_DOCTOR,P63_PHYSIST,P63_DOCTOR_ID,P63_FREQUENCY_ID,P63_FREQUENCY,P63_SEDATION,P63_TREATMENT_FREQUENCY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60084350596639039)
,p_event_id=>wwv_flow_imp.id(12106351040445315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) ||',
'         '' --- '' ||',
'         RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(D.SIM_CT_ID) ||',
'         '' --- '' || RADIATION.PKG_RADIATION.GET_DISP_PLANNING(D.PLANNING) ||',
'         '' --- '' || ''P1 Fraction(s): '' || '' '' || D.P1_NO_OF_FRACTION ||',
'         '' --- '' || ''P2 Fraction(s):'' || '' '' || D.P2_NO_OF_FRACTION',
'    INTO :P63_SELECT_REQUEST_DETAIL',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = :P63_RADIATION_NO',
'     AND D.RADIATION_NO = M.RADIATION_NO',
'     AND D.SITE_ID = :P63_SITE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P63_RADIATION_NO,P63_SITE'
,p_attribute_03=>'P63_SELECT_REQUEST_DETAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189050978318356910)
,p_event_id=>wwv_flow_imp.id(12106351040445315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_TREATMENT_TYPE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN RADIATION.PKG_RADIATION.GET_SITE_TREATMENT_TYPES(P_RADIATION_NO => :P63_RADIATION_NO,',
'                                                          P_SITE_ID      => :P63_SITE);',
'',
'END;',
''))
,p_attribute_07=>'P63_RADIATION_NO,P63_SITE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17790176752818146)
,p_event_id=>wwv_flow_imp.id(12106351040445315)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_PHASE_NO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_SITE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12108043554445332)
,p_name=>'DAEXit'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12107823300445330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28170115779971626)
,p_event_id=>wwv_flow_imp.id(12108043554445332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12108661828445338)
,p_name=>'ClearDA2'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12108721688445339)
,p_event_id=>wwv_flow_imp.id(12108661828445338)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P63_MRNO                := NULL;',
'  :P63_NAME                := NULL;',
'  :P63_AGE                 := NULL;',
'  :P63_GENDER              := NULL;',
'  :P63_RADIATION_NO        := NULL;',
'  :P63_DOCTOR              := NULL;',
'  :P63_PHYSIST             := NULL;',
'  :P63_DOCTOR_ID           := NULL;',
'  :P63_SEDATION            := NULL;',
'  :P63_VISIT_DATE          := NULL;',
'  :P63_FREQUENCY_ID        := NULL;',
'  :P63_FREQUENCY           := NULL;',
'  :P63_TREATMENT_FREQUENCY := NULL;',
'  :P63_TREATMENT_TYPE      := NULL;',
'  :P63_REMARKS             := NULL;',
'  :P63_BOOK_ON_WEEKEND     := NULL;',
'  :P63_FRACTION            := NULL;',
'  :P63_SELECT_REQUEST_DETAIL:= NULL;',
'END;',
''))
,p_attribute_02=>'P63_MRNO,P63_NAME,P63_AGE,P63_GENDER,P63_RADIATION_NO,P63_DOCTOR,P63_PHYSIST,P63_DOCTOR_ID,P63_SEDATION,P63_FREQUENCY_ID,P63_TREATMENT_FREQUENCY,P63_TREATMENT_TYPE,P63_REMARKS,P63_BOOK_ON_WEEKEND,P63_FRACTION,P63_VISIT_DATE,P63_SELECT_REQUEST_DETAIL'
,p_attribute_03=>'P63_MRNO,P63_NAME,P63_AGE,P63_GENDER,P63_RADIATION_NO,P63_DOCTOR,P63_PHYSIST,P63_DOCTOR_ID,P63_SEDATION,P63_FREQUENCY_ID,P63_TREATMENT_FREQUENCY,P63_TREATMENT_TYPE,P63_REMARKS,P63_BOOK_ON_WEEKEND,P63_FRACTION,P63_VISIT_DATE,P63_SELECT_REQUEST_DETAIL'
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
 p_id=>wwv_flow_imp.id(35555915874840504)
,p_event_id=>wwv_flow_imp.id(12108661828445338)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT TO_CHAR(S.VISIT_DATE, ''DD-MON-YYYY HH24:MI'')',
'    INTO :P63_VISIT_DATE',
'    FROM RADIATION.SCHEDULE S',
'   WHERE S.SR_NO = :P63_SRNO;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P63_SRNO'
,p_attribute_03=>'P63_VISIT_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28170882608971633)
,p_event_id=>wwv_flow_imp.id(12108661828445338)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31855876751964945)
,p_event_id=>wwv_flow_imp.id(12108661828445338)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_VISIT_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12108990319445341)
,p_name=>'PhaseDA1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_PHASE_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12109033821445342)
,p_event_id=>wwv_flow_imp.id(12108990319445341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_SCHEDULE.GET_UNBOOKED_FRACTIONS(P_RADIATION_NO => B.RADIATION_NO,',
'                                                       P_SITE_ID      => B.SITE_ID,',
'                                                       P_PHASE_NO     => B.PHASE_NO) NO_OF_FRACTION',
'    INTO :P63_FRACTION',
'    FROM RADIATION.RADIATION_BOOST_PLAN B',
'   WHERE B.RADIATION_NO = :P63_RADIATION_NO',
'     AND B.SITE_ID = :P63_SITE',
'     AND RADIATION.PKG_SCHEDULE.GET_UNBOOKED_FRACTIONS(P_RADIATION_NO => B.RADIATION_NO,',
'                                                       P_SITE_ID      => B.SITE_ID,',
'                                                       P_PHASE_NO     => B.PHASE_NO) > 0',
'     AND B.PHASE_NO = :P63_PHASE_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P63_RADIATION_NO,P63_SITE,P63_PHASE_NO'
,p_attribute_03=>'P63_FRACTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13148998949075814)
,p_name=>'ProtocolDA'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12107635586445328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35558768386840532)
,p_event_id=>wwv_flow_imp.id(13148998949075814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P63_MACHINE_TYPE, ''~'') = ''T'' AND :P63_PHASE_NO IS NULL THEN',
'    :P63_ALERT_TEXT := ''Please select phase to proceed'';',
'  ',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P63_MACHINE_TYPE,P63_PHASE_NO'
,p_attribute_03=>'P63_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35558965478840534)
,p_event_id=>wwv_flow_imp.id(13148998949075814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P63_ALERT_TEXT.'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13149057971075815)
,p_event_id=>wwv_flow_imp.id(13148998949075814)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_PERFORMANCE_TYPE.PERFORMANCE_TYPE_ID%TYPE;',
'BEGIN',
'',
'  BEGIN',
'    SELECT PERFORMANCE_TYPE_ID',
'      INTO L_PERFORMANCE_TYPE_ID',
'      FROM RADIATION.MACHINES',
'     WHERE MACHINE_ID = :P63_MACHINE_ID;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  RADIATION.PKG_SCHEDULE.PROTOCOL_SCHEDULE(P_ORGANIZATION_ID     => :GV_ORGANIZATION_ID,',
'                                           P_LOGIN_LOCATION_ID   => NVL(:GV_PHYSICAL_LOCATION_ID,',
'                                                                        ''001''),',
'                                           P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                           P_MACHINE_ID          => :P63_MACHINE_ID,',
'                                           P_SR_NO               => :P63_SRNO,',
'                                           P_MRNO                => :P63_MRNO,',
'                                           P_RADIATION_NO        => :P63_RADIATION_NO,',
'                                           P_SITE_ID             => :P63_SITE,',
'                                           P_PHASE_NO            => :P63_PHASE_NO,',
'                                           P_PHYSIST_MRNO        => :P63_PHYSIST,',
'                                           P_REMARKS             => :P63_REMARKS,',
'                                           P_PROTOCOL_SINGLE     => ''P'',',
'                                           P_INCLUDE_WEEKEND     => :P63_BOOK_ON_WEEKEND,',
'                                           P_ANESTHESIA_REQ      => :P63_SEDATION,',
'                                           P_OBJECT_CODE         => ''S18APX00049'',',
'                                           P_USER_MRNO           => :GV_USER_MRNO,',
'                                           P_TERMINAL            => :GV_TERMINAL,',
'                                           P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                           P_STOP                => L_STOP);',
'',
'  IF NVL(L_STOP, ''~'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  :P63_SUCCESS_MESSAGE := ''Patient scheduled successfully'';',
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
,p_attribute_02=>'P63_MACHINE_ID,P63_SRNO,P63_MRNO,P63_RADIATION_NO,P63_SITE,P63_PHASE_NO,P63_PHYSIST,P63_REMARKS,P63_BOOK_ON_WEEKEND,P63_SEDATION'
,p_attribute_03=>'P63_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P63_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13149140413075816)
,p_event_id=>wwv_flow_imp.id(13148998949075814)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P63_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_SUCCESS_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13149214411075817)
,p_name=>'SingleDA'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12107705847445329)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35558841300840533)
,p_event_id=>wwv_flow_imp.id(13149214411075817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P63_MACHINE_TYPE, ''~'') = ''T'' AND :P63_PHASE_NO IS NULL THEN',
'    :P63_ALERT_TEXT := ''Please select phase to proceed'';',
'  ',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P63_MACHINE_TYPE,P63_PHASE_NO'
,p_attribute_03=>'P63_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35559067895840535)
,p_event_id=>wwv_flow_imp.id(13149214411075817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P63_ALERT_TEXT.'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13149300673075818)
,p_event_id=>wwv_flow_imp.id(13149214411075817)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_PERFORMANCE_TYPE.PERFORMANCE_TYPE_ID%TYPE;',
'BEGIN',
'',
'  BEGIN',
'    SELECT PERFORMANCE_TYPE_ID',
'      INTO L_PERFORMANCE_TYPE_ID',
'      FROM RADIATION.MACHINES',
'     WHERE MACHINE_ID = :P63_MACHINE_ID;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  RADIATION.PKG_SCHEDULE.PROTOCOL_SCHEDULE(P_ORGANIZATION_ID     => :GV_ORGANIZATION_ID,',
'                                           P_LOGIN_LOCATION_ID   => NVL(:GV_PHYSICAL_LOCATION_ID,',
'                                                                        ''001''),',
'                                           P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                           P_MACHINE_ID          => :P63_MACHINE_ID,',
'                                           P_SR_NO               => :P63_SRNO,',
'                                           P_MRNO                => :P63_MRNO,',
'                                           P_RADIATION_NO        => :P63_RADIATION_NO,',
'                                           P_SITE_ID             => :P63_SITE,',
'                                           P_PHASE_NO            => :P63_PHASE_NO,',
'                                           P_PHYSIST_MRNO        => :P63_PHYSIST,',
'                                           P_REMARKS             => :P63_REMARKS,',
'                                           P_PROTOCOL_SINGLE     => ''S'',',
'                                           P_INCLUDE_WEEKEND     => :P63_BOOK_ON_WEEKEND,',
'                                           P_ANESTHESIA_REQ      => :P63_SEDATION,',
'                                           P_OBJECT_CODE         => ''S18APX00049'',',
'                                           P_USER_MRNO           => :GV_USER_MRNO,',
'                                           P_TERMINAL            => :GV_TERMINAL,',
'                                           P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                           P_STOP                => L_STOP);',
'',
'  IF NVL(L_STOP, ''~'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  :P63_SUCCESS_MESSAGE := ''Patient scheduled successfully'';',
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
,p_attribute_02=>'P63_MACHINE_ID,P63_SRNO,P63_MRNO,P63_RADIATION_NO,P63_SITE,P63_PHASE_NO,P63_REMARKS,P63_BOOK_ON_WEEKEND,P63_SEDATION,P63_PHYSIST'
,p_attribute_03=>'P63_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P63_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13149415126075819)
,p_event_id=>wwv_flow_imp.id(13149214411075817)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P63_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Success Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_SUCCESS_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13149585848075820)
,p_name=>'GeneretaeOrder'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12107958383445331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28169523073971620)
,p_event_id=>wwv_flow_imp.id(13149585848075820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you want to generate an order?'
,p_attribute_02=>'System Message'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13149677563075821)
,p_event_id=>wwv_flow_imp.id(13149585848075820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_RADIOTHERAPY_ORDERENTRY.GENERATE_RADIATION_ORDER(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                                                 P_LOGIN_LOCATION_ID => NVL(:GV_LOCATION_ID,',
'                                                                                            ''001''),',
'                                                                 P_ORDER_LOCATION_ID => NVL(:GV_ORDER_LOCATION_ID, ''001''),',
'                                                                 P_RADIATION_NO      => :P63_RADIATION_NO,',
'                                                                 P_SITE_ID           => :P63_SITE,',
'                                                                 P_USER_MRNO         => :GV_USER_MRNO,',
'                                                                 P_OBJECT_CODE       => ''S18APX00049'',',
'                                                                 P_TERMINAL          => :GV_TERMINAL,',
'                                                                 P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                                 P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''~'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  :P63_SUCCESS_MESSAGE := ''Order generated successfully'';',
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
,p_attribute_02=>'P63_RADIATION_NO,P63_SITE'
,p_attribute_03=>'P63_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13149735869075822)
,p_event_id=>wwv_flow_imp.id(13149585848075820)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P63_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28169136947971616)
,p_name=>'DAReports'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28169014536971615)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28169249270971617)
,p_event_id=>wwv_flow_imp.id(28169136947971616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_app     number := v(''APP_ID'');',
'  l_session number := v(''APP_SESSION'');',
'BEGIN',
' ',
'  :P63_TXT_URL     := APEX_UTIL.PREPARE_URL(p_url           => ''f?p='' ||',
'                                                               l_app ||',
'                                                               '':60:'' ||',
'                                                               l_session ||',
'                                                               ''::NO::P60_MRNO,P60_RADIATION_NO:'' ||',
'                                                               :P63_MRNO || '','' ||',
'                                                               :P63_RADIATION_NO,',
'                                            p_checksum_type => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P63_MRNO,P63_RADIATION_NO'
,p_attribute_03=>'P63_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28169422395971619)
,p_event_id=>wwv_flow_imp.id(28169136947971616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//console.log(''url is''+$v(''P63_TXT_URL''));',
'apex.navigation.redirect($v(''P63_TXT_URL''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28170981176971634)
,p_name=>'PhaseDA2'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_PHASE_NO'
,p_condition_element=>'P63_PHASE_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28171103385971636)
,p_event_id=>wwv_flow_imp.id(28170981176971634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(12107635586445328)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55371640272424821)
,p_name=>'DisableSite'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55371777812424822)
,p_event_id=>wwv_flow_imp.id(55371640272424821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P63_SITE").disable();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118028794708392529)
,p_name=>'P63AlertTextDA1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118028840135392530)
,p_event_id=>wwv_flow_imp.id(118028794708392529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P63_ALERT_TEXT.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110025404376468543)
,p_event_id=>wwv_flow_imp.id(118028794708392529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_MRNO,P63_NAME,P63_AGE,P63_GENDER'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P63_ALERT_TEXT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294523424767558243)
,p_name=>'DASelectRequest'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_SELECT_REQUEST'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294523603631558245)
,p_event_id=>wwv_flow_imp.id(294523424767558243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294523595382558244)
,p_event_id=>wwv_flow_imp.id(294523424767558243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_SITE'
);
wwv_flow_imp.component_end;
end;
/

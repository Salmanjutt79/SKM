prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_name=>'RADIATION_MENU1'
,p_alias=>'RADIATION-MENU1'
,p_step_title=>'RADIATION_MENU1'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.BRDR {',
'    border: 1px solid red;',
'    min-width: max-content(10rem,20vw);',
'}',
'',
'.t-Body-fullContent {',
'    margin-bottom: 5rem;',
'    border-bottom: 1px solid blue;',
'',
'}',
'',
'#phyMenu label{',
'    font-weight: bold;',
'    ',
'}'))
,p_page_css_classes=>'js-phyMenu'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'FARHANAKRAM'
,p_last_upd_yyyymmddhh24miss=>'20230720162547'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467817199311522901)
,p_plug_name=>'Patient Info'
,p_region_name=>'phyMenu'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(469216265253799805)
,p_plug_name=>'Patient Status'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,36'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    #patient-status>div.t-Region-bodyWrap>div.t-Region-body {',
'        padding: 0.5em 0.5em;',
'    }',
'',
'    #P0_DX_STATUS,',
'    #P0_ISOLATION_STATUS {',
'        font-size: 0.65rem;',
'        font-weight: bold;',
'    }',
'',
'    #P0_CODE_STATUS {',
'        color: red;',
'        font-size: 0.65rem;',
'        font-weight: bold;',
'    }',
'</style>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(469216941986799812)
,p_name=>'Image'
,p_region_name=>'image'
,p_template=>wwv_flow_imp.id(14542292946908251)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:margin-bottom-none:margin-left-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_display_point=>'REGION_POSITION_08'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.MRNO, SYS.DBMS_LOB.GETLENGTH(T.IMAGE) AS file_blob',
'  FROM PICTURES.HR_PICTURES T',
' WHERE MRNO = :P37_PATIENT_MRNO;',
''))
,p_display_when_condition=>'2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,36'
,p_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /* #image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } */',
'',
'    /* #image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'',
'    #image img {',
'        display: inline-block;',
'        width: 100%;',
'        height: 100%;',
'        object-fit: cover;',
'        /*border: 2px solid #D8D4D4; */',
'        border-radius: 50%;',
'        box-shadow: 7px 5px 30px 0px #fff;',
'        margin-top: 3px;',
'        margin-left: 3px;',
'        max-height: 5rem;',
'    }',
'',
'    #image img:hover {',
'        box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5)',
'    }',
'',
'',
'    #report_table_image {',
'        border: none;',
'    }',
'',
'    #FILE_BLOB {',
'        border: none;',
'        padding: 1em 0.5em;',
'',
'    }',
'',
'',
'',
'    #report_table_image>tbody>tr>td {',
'        border: none;',
'        background: #fff;',
'        padding: 1em 2em 0 0.5em;',
'',
'    }',
'</style>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P37_PATIENT_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(194236181748425997)
,p_query_column_id=>1
,p_column_alias=>'MRNO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(194236552086425997)
,p_query_column_id=>2
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:MRNO::MIMETYPE:MRNO:::::PICTURES'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78397098253151341)
,p_button_sequence=>10
,p_button_name=>'New_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'New 1'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194212198643425973)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close All Dialog'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194244351557426004)
,p_button_sequence=>10
,p_button_name=>'BTN_GLOBAL_VARIABLES'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Global Variables'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=100:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194244770583426004)
,p_button_sequence=>10
,p_button_name=>'BTN_LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Logout'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194245174189426004)
,p_button_sequence=>10
,p_button_name=>'BTN_CHANGE_PASSWORD'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Change Password'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=100:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-key'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78397625727151347)
,p_name=>'P37_NEW'
,p_item_sequence=>20
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194212557541425974)
,p_name=>'P37_PATIENT_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(194375633366747997)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194212958040425974)
,p_name=>'P37_PATIENT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194213390133425974)
,p_name=>'P37_AGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194213716483425974)
,p_name=>'P37_ADMISSION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194214198185425974)
,p_name=>'P37_CANCER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194214563022425974)
,p_name=>'P37_CONSULTANT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194214931708425974)
,p_name=>'P37_ORDERABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194215351031425975)
,p_name=>'P37_IPD_OPD_EAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194215778657425975)
,p_name=>'P37_GENDER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194216189285425975)
,p_name=>'P37_CONSULTANT_MRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194216558275425975)
,p_name=>'P37_INHOUSE_DOCTOR_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194216907991425975)
,p_name=>'P37_ALLERGIES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Allergies '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194217358070425975)
,p_name=>'P37_HIS_USERID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194217736452425975)
,p_name=>'P37_FLAGS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Flags'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194218156162425976)
,p_name=>'P37_BED_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194218521307425976)
,p_name=>'P37_PRIMARY_CONSULTANT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Primary Consultant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194218913143425976)
,p_name=>'P37_PATIENT_VULNERABILITIES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194219326771425976)
,p_name=>'P37_CLINICAL_PATHWAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'BRDR'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194219735727425976)
,p_name=>'P37_LTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194220137010425982)
,p_name=>'P37_PATIENT_LOU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194220514979425982)
,p_name=>'P37_UNIT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194220901028425982)
,p_name=>'P37_SERVICE_NO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Service No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194221390449425982)
,p_name=>'P37_SERVICE_STATUS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Service Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194221785877425982)
,p_name=>'P37_RANK_ABBREVIATION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Rank'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194222198300425983)
,p_name=>'P37_FORMATION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_prompt=>'Formation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194222547549425983)
,p_name=>'P37_CLINIC_ID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194222918918425983)
,p_name=>'P37_CONSULTANT_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(467817199311522901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194234649139425993)
,p_name=>'P37_DX_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(469216265253799805)
,p_prompt=>'Dx Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194235093812425994)
,p_name=>'P37_CODE_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(469216265253799805)
,p_prompt=>'Code Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194274353432426019)
,p_name=>'PAGE_LOADS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194274861872426020)
,p_event_id=>wwv_flow_imp.id(194274353432426019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#exitpopup_bg").dialog({',
'',
'    autoOpen: false,',
'',
'    modal: false,',
'    dialogClass: ''PROF_DID''',
'',
'});',
'',
'/* Close when click Outside the Dialog*/',
'$(''html'')',
'    .bind(',
'        ''click'',',
'        function (e) {',
'            if ($(''#exitpopup_bg'').dialog(''isOpen'') && !$(e.target).is(''.ui-dialog, a'') && !$(e.target).closest(''.ui-dialog'').length && !$(e.target).is(''.image_icon'') && !$(e.target).is(''.ui-dialog-titlebar-close'')) {',
'                $(''#exitpopup_bg'').dialog(''close'');',
'',
'',
'                $(''.image_icon'').removeClass(''et'');',
'                $(''.image_icon'').addClass(''st'');',
'            }',
'        }',
'    );',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194275247906426020)
,p_name=>'OPEN_PROFILE'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.st'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194275778825426020)
,p_event_id=>wwv_flow_imp.id(194275247906426020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'openModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''st'');',
'$(''.image_icon'').addClass(''et'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194276153510426020)
,p_name=>'CLOSE_PROFILE'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.et'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194276624160426020)
,p_event_id=>wwv_flow_imp.id(194276153510426020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''et'');',
'$(''.image_icon'').addClass(''st'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194277031158426020)
,p_name=>'USER_GUIDES'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.guide-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194277594561426021)
,p_event_id=>wwv_flow_imp.id(194277031158426020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UserGuide",',
'    {}, {',
'    success: function (res) {',
'        //apex.message.alert(res.user_mrno+"  "+res.app_id +"      "+res.app_page_id+" "+res.page_url);',
'        //javascript:window.open(''f?p=207:2:''+apex.item(''pInstance'').getValue()+'':::1:P2_USER_NAME,P2_APP_ID,P2_PAGE_ID:''+res.user_mrno +'',''+ res.app_id+'',''+ res.app_page_id ,''_blank'');                ',
'        // javascript:window.open( res.page_url ,''_blank'');',
'        console.log(res.page_url);',
'        apex.navigation.redirect(res.page_url);',
'    },',
'    dataType: ''json''',
'}',
'',
')',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194277920126426021)
,p_name=>'ADD_TO_FAVORITES'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fav-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194278498019426021)
,p_event_id=>wwv_flow_imp.id(194277920126426021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("AddToFavorite",',
'        {}, {',
'        success: function (res) {',
'                apex.message.alert(res.message);',
'        },',
'        dataType: ''json''',
'}',
')'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194278875749426024)
,p_name=>'SetMRNO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194279203175426024)
,p_name=>'New'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(194212198643425973)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194279767640426024)
,p_event_id=>wwv_flow_imp.id(194279203175426024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'closeAllDialog();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194280244567426024)
,p_event_id=>wwv_flow_imp.id(194279203175426024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT VARCHAR2(4000);',
'  V_STOP       VARCHAR2(1);',
'  V_MRNO        VARCHAR2(4000);',
'BEGIN',
'  :P37_STOP:=''N'';',
'   HRD.SET_MRNO(P_TYPE        => ''PATIENT'',',
'                P_DISP_MRNO  => :P37_PATIENT_MRNO,',
'                P_MRNO       => V_MRNO,',
'                P_ALERT_TEXT => V_ALERT_TEXT,',
'                P_STOP       => V_STOP);',
'    IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'      :P37_STOP:=''Y'';',
'      :P37_ERROR_MSG := V_ALERT_TEXT;',
'      RETURN;',
'    END IF;',
'    IF V_MRNO <> :P37_PATIENT_MRNO THEN',
'        :P37_PATIENT_MRNO := V_MRNO;',
'    END IF;',
'    :GV_SELECTED_MRNO := :P37_PATIENT_MRNO;',
'   ',
'    IF HIS.PKG_PATIENT.IS_PATIENT_EXPIRED(P_MRNO => :P37_PATIENT_MRNO) = ''Y'' THEN',
'      :P37_PATIENT_VULNERABE := ''N'';',
'    ELSIF ORDERENTRY.PKG_S34FRM00140.IS_PATIENT_VULNERABLE(P_MRNO => :P37_PATIENT_MRNO) = ''Y'' THEN',
'      :P37_PATIENT_VULNERABE := ''Y'';',
'    ELSE',
'      :P37_PATIENT_VULNERABE := ''N'';',
'    END IF;',
'',
'    --:P37_PATIENT_MRNO := ''12345'';',
'',
'END;',
''))
,p_attribute_02=>'P37_PATIENT_MRNO'
,p_attribute_03=>'GV_SELECTED_MRNO,P37_PATIENT_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P37_PATIENT_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194280795844426024)
,p_event_id=>wwv_flow_imp.id(194279203175426024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_INFO       ORDERENTRY.PKG_S34FRM00021.PATIENT_TAB_APEX;',
'  V_CLINIC_GROUP_ID    REGISTRATION.CLINIC.CLINIC_GROUP_ID%TYPE;',
'  V_PRIMARY_CONSULTANT REGISTRATION.PATIENT_CURRENT_STATUS.PRIMARY_CONSULTANT%TYPE;',
'BEGIN',
'  IF :P37_ERROR_MSG IS NULL THEN',
'     BEGIN',
'      SELECT *',
'        BULK COLLECT',
'        INTO V_PATIENT_INFO',
'        FROM ORDERENTRY.PKG_S34FRM00021.GET_PATIENT_DATA(P_MRNO        => :P37_PATIENT_MRNO,',
'                                                         P_USER_MRNO   => :GV_USER_MRNO,',
'                                                         P_OBJECT_CODE => ''APEX'',',
'                                                         P_TERMINAL    => USERENV(''TERMINAL''));',
'    ',
'      FOR X IN 1 .. V_PATIENT_INFO.COUNT LOOP',
'        :P37_PATIENT_NAME        := V_PATIENT_INFO(X).PATIENT_NAME;',
'        :P37_AGE                 := V_PATIENT_INFO(X).DISP_AGE;',
'        :P37_GENDER              := V_PATIENT_INFO(X).GENDER;',
'        :P37_PRIMARY_CONSULTANT  := V_PATIENT_INFO(X).PRIMARY_CONSULTANT;',
'        :P37_ADMISSION_NO        := V_PATIENT_INFO(X).ADMISSION_NO;',
'        :P37_IPD_OPD_EAR         := V_PATIENT_INFO(X).IPD_OPD_EAR;',
'',
'      ',
'        IF V_PATIENT_INFO(X).IPD_OPD_EAR = ''I'' THEN',
'          :P37_BED_NO := ORDERENTRY.PKG_IPD_COMMON.GET_BED_DESC(P_BED_ID => V_PATIENT_INFO(X).BED_ID);',
'        ELSE',
'          :P37_BED_NO := NULL;',
'        END IF;',
'        ',
'        :P37_DX_STATUS          := V_PATIENT_INFO(X).CANCER_STATUS_DESC;',
'        :P37_CODE_STATUS        := V_PATIENT_INFO(X).DNR_STATUS;',
'        :P37_ISOLATION_STATUS   := V_PATIENT_INFO(X).ISOLATION_STATUS;',
'        :P37_CANCER             := V_PATIENT_INFO(X).CANCER;',
'        :P37_ORDERABLE          := V_PATIENT_INFO(X).ORDERABLE;',
'        :P37_CONSULTANT         := V_PATIENT_INFO(X).CONSULTANT;',
'        :P37_ALLERGIES          := V_PATIENT_INFO(X).ALLERGY_DESC;',
'        :P37_FLAGS              := V_PATIENT_INFO(X).PATIENT_FLAGS;',
'        :P37_UNIT               := V_PATIENT_INFO(X).UNIT;',
'        :P37_SERVICE_NO         := V_PATIENT_INFO(X).SERVICE_NO;',
'        :P37_SERVICE_STATUS     := V_PATIENT_INFO(X).SERVICE_STATUS;',
'        :P37_RANK_ABBREVIATION  := V_PATIENT_INFO(X).RANK_ABBREVIATION;',
'        :P37_FORMATION          := V_PATIENT_INFO(X).FORMATION;',
'        :P37_LTE                := V_PATIENT_INFO(X).LTE_PROMPT;',
'      ',
'        IF :P37_CONSULTANT_CLINIC_ID IS NOT NULL THEN',
'          SELECT INHOUSE_DOCTOR_ID, HIS_USERID, CONSULTANT_MRNO',
'            INTO :P37_INHOUSE_DOCTOR_ID, :P37_HIS_USERID, :P37_CONSULTANT_MRNO',
'            FROM TABLE(ORDERENTRY.PKG_S34FRM00021.GET_CLINIC_CONSULTANT(P_MRNO      => :P37_PATIENT_MRNO,',
'                                                                        P_CLINIC_ID => :P37_CONSULTANT_CLINIC_ID,',
'                                                                        P_USER_MRNO => NVL(:GV_USER_MRNO,SYS_CONTEXT(''GLOBAL_CONTEXT'',''USER_MRNO''))));',
'          :P37_CLINIC_ID            := :P37_CONSULTANT_CLINIC_ID;',
'          :P37_CONSULTANT_CLINIC_ID := NULL;',
'        ELSE',
'          IF V_PATIENT_INFO(X).INHOUSE_DOCTOR_ID IS NOT NULL THEN',
'            :P37_INHOUSE_DOCTOR_ID := V_PATIENT_INFO(X).INHOUSE_DOCTOR_ID;',
'            :P37_CONSULTANT_MRNO   := HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(V_PATIENT_INFO(X)',
'                                                                    .INHOUSE_DOCTOR_ID);',
'          END IF;',
'        END IF;',
'      END LOOP;',
'    ',
'    END;',
' ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P37_PATIENT_MRNO,GV_USER_MRNO'
,p_attribute_03=>'P37_AGE,P37_GENDER,P37_BED_NO,P37_PRIMARY_CONSULTANT,P37_DX_STATUS,P37_ADMISSION_NO,P37_CANCER,P37_CONSULTANT,P37_ORDERABLE,P37_FLAGS,P37_ALLERGIES,P37_INHOUSE_DOCTOR_ID,P37_HIS_USERID,P37_LTE,P37_PATIENT_LOU,P37_CLINICAL_PATHWAY,P37_UNIT,P37_SERVICE'
||'_NO,P37_SERVICE_STATUS,P37_RANK_ABBREVIATION,P37_FORMATION,P37_IPD_OPD_EAR,P37_CONSULTANT_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194281268871426025)
,p_event_id=>wwv_flow_imp.id(194279203175426024)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P37_P_MRNO'',$v(''P37_PATIENT_MRNO''));'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194281793741426025)
,p_event_id=>wwv_flow_imp.id(194279203175426024)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''image'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78397482534151345)
,p_name=>'New_1'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78397098253151341)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(78397731042151348)
,p_event_id=>wwv_flow_imp.id(78397482534151345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'      :P37_NEW := APEX_UTIL.PREPARE_URL(P_URL       => APEX_PAGE.GET_URL(p_application => 115,',
'                                      p_page        => 3,',
'                                      p_plain_url   => FALSE),',
'                                          p_plain_url => FALSE);'))
,p_attribute_03=>'P37_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78397558832151346)
,p_event_id=>wwv_flow_imp.id(78397482534151345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {};',
'let object = {',
'    "OBJECTCODE": ''#115@3'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78397804160151349)
,p_name=>'New_2'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P37_NEW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78397951050151350)
,p_event_id=>wwv_flow_imp.id(78397804160151349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.navigation.redirect($v(''P37_NEW''));'))
);
wwv_flow_imp.component_end;
end;
/

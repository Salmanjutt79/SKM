prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_name=>'RAD_TIME_SIGN_OUT'
,p_alias=>'RAD-TIME-SIGN-OUT'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_TIME_SIGN_OUT'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'td[headers="OBJECTIVE_DESC"]{',
' font-weight:bold;',
' font-size: 18px;',
'}',
'td[headers="OBJECTIVE_DESC"]{',
' font-weight:bold;',
' font-size: 18px;',
'}',
'</style>'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P40_UNIT").hide();',
'apex.item("P40_SERVICE_NO").hide();',
'apex.item("P40_SERVICE_STATUS").hide();',
'apex.item("P40_RANK").hide();',
'apex.item("P40_FORMATION").hide();',
'apex.item("P53_NAME2").disable();',
'apex.item("P53_NAME1").disable();',
'//apex.item("P53_TXT_OBJECTIVE_DESC").setValue('''');',
'',
'let title = document.querySelector(''#P53_TXT_OBJECTIVE_VALUE_LABEL'');',
'title.innerHTML = $v(''P53_TXT_OBJECTIVE_DESC'')',
'//alert(title)',
'//console.log(title)',
'',
'// alert(''rad ''+$v("P53_RADIATION_NO_2"))',
'// alert(''site ''+$v("P53_SITE_ID"))',
'// alert($v("P53_PARAM_CHECKLIST_TYPE"))',
'// alert($v("P53_PARAM_PERFORMANCE_TYPE_ID"))',
'//  alert(''EVENT ID ''+$v("P53_PARAM_EVENT_ID"))',
'//  alert(''NEXT EVENT ID ''+$v("P53_PARAM_NEXT_EVENT_ID"))'))
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
'}',
'',
'#P53_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P53_PATIENT_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P53_SEX {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_RADIATION_NO_2 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_RADIATION_DATE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_CONSULTANT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_ICDNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_DISP_DIAGNOSIS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_SITE_DISP {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_ANESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_SIGN_BY_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_SIGN_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_SIGN_BY_NAME_2 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_SRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_STATUS_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_TXT_OBJECTIVE_VALUE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_TXT_OBJECTIVE_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_TXT_OBJECTIVE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_TXT_CHECKLIST_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'label[for="P53_TXT_OBJECTIVE_VALUE"], #P53_TXT_OBJECTIVE_VALUE {',
'',
'',
'  font-size: 16px !important;',
'',
'',
'  font-weight: bold !important;',
'',
'',
'  color: rgb(8, 8, 8)! important;',
'',
'}',
'',
'',
'#P53_PATIENT_TYPE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_PATIENT_MRNO1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_NAME1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_PASSWORD1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_MESSAGE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_PATIENT_TYPE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_PATIENT_MRNO2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_NAME2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_PASSWORD2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P53_MESSAGE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#chk_dtl tr{',
'    user-select: none;',
'    cursor: pointer;',
'}',
'',
'#chk_dtl tr:hover .boxes{',
'    box-shadow: rgb(114, 204, 253) 0px 0px 10px 0px;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1450'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250114162016'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7829398179226808)
,p_plug_name=>'RADIATION_CHECKLIST'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7831701792226832)
,p_plug_name=>'RAD_CHKLST_TXT'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8145857569519536)
,p_plug_name=>'Static Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7829131084226806)
,p_plug_name=>'RAD_CHKLST_CHK'
,p_region_name=>'chk_dtl'
,p_parent_plug_id=>wwv_flow_imp.id(8145857569519536)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>50
,p_plug_display_column=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.RADIATION_NO,',
'       C.SITE_ID,',
'       C.SRNO,',
'       C.CHECKLIST_ID,',
'       CD.OBJECTIVE_ID,',
'       --CD.OBJECTIVE_VALUE,',
'       CASE CD.OBJECTIVE_VALUE',
'         WHEN ''Y'' then',
'          APEX_ITEM.CHECKBOX2(p_idx        => 1,',
'                              p_value      => CD.OBJECTIVE_ID,',
'                              p_attributes => ''class="boxes" checked'')',
'         ELSE',
'          APEX_ITEM.CHECKBOX2(p_idx        => 1,',
'                              p_value      => CD.OBJECTIVE_ID,',
'                              p_attributes => ''class="boxes"'')',
'       END AS OBJECTIVE_VALUE,',
'       CD.OBJECTIVE_DESC',
'  FROM RADIATION.RAD_CHECKLIST            C,',
'       RADIATION.RAD_CHECKLIST_DTL        CD,',
'       RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
' WHERE C.RADIATION_NO = :P53_RADIATION_NO_2',
'   AND C.SITE_ID = :P53_SITE_ID',
'   AND C.SRNO =',
'       NVL(:P53_SRNO,',
'           (SELECT MAX(RC.SRNO)',
'              FROM RADIATION.RAD_CHECKLIST RC, RADIATION.DEF_CHECKLIST DC',
'             WHERE RC.RADIATION_NO = :P53_RADIATION_NO_2',
'               AND RC.SITE_ID = :P53_SITE_ID',
'               AND RC.CHECKLIST_ID = DC.CHECKLIST_ID',
'               AND DC.CHECKLIST_TYPE = :P53_PARAM_CHECKLIST_TYPE',
'               AND (TRUNC(RC.SIGN_DATE) = TRUNC(SYSDATE) OR',
'             TRUNC(RC.ORIGINAL_TRN_DATE) = TRUNC(SYSDATE))))',
'   AND CD.RADIATION_NO = C.RADIATION_NO',
'   AND CD.SITE_ID = C.SITE_ID',
'   AND CD.SRNO = C.SRNO',
'   and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'   AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'   AND CO.OBJECTIVE_TYPE = ''C''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P53_RADIATION_NO_2,P53_SITE_ID,P53_SRNO,P53_PARAM_SCHEDULE_SRNO,P53_PARAM_NEXT_EVENT_ID,P53_PARAM_PERFORMANCE_TYPE_ID,P53_PARAM_CHECKLIST_TYPE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RAD_CHKLST_CHK'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8145009029519528)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>8145009029519528
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145198361519529)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145218070519530)
,p_db_column_name=>'SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145315956519531)
,p_db_column_name=>'SRNO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Srno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145403916519532)
,p_db_column_name=>'CHECKLIST_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Checklist Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145550518519533)
,p_db_column_name=>'OBJECTIVE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objective Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145790869519535)
,p_db_column_name=>'OBJECTIVE_DESC'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Objective Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'OBJECTIVE_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8145662912519534)
,p_db_column_name=>'OBJECTIVE_VALUE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'&nbsp;'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'OBJECTIVE_VALUE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8865169024990754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'88652'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OBJECTIVE_DESC:OBJECTIVE_VALUE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58750669325834067)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>100
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61944423757055689)
,p_plug_name=>'Radiation &P53_TITLE.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(88371398983575025)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'FROM PICTURES.HR_PICTURES',
'WHERE MRNO = :P53_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    #image img {',
'        display: inline-block;',
'        width: 100px;',
'        height: 100px;',
'        object-fit: cover;',
'        border: 1px solid #D8D4D4;',
'    }',
'',
'    #image img:hover {',
'        box-shadow: 0 0 1px 1px rgba(0, 140, 186, 0.5);',
'    }',
'',
'    #FILE_BLOB {',
'        padding: 0;',
'    }',
'',
'    #report_table_image>tbody>tr>td {',
'        padding: 0;',
'    }',
'</style>'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(54554342444351630)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54554772010351631)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(54555140415351631)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:ROWID::::::::PICTURES'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187178017722560159)
,p_plug_name=>'Sign'
,p_region_name=>'sign_rg'
,p_region_css_classes=>'js-dialog-size1200x450'
,p_region_template_options=>'js-dialog-autoheight:t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187179589274560174)
,p_plug_name=>'First Technician'
,p_parent_plug_id=>wwv_flow_imp.id(187178017722560159)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187179696366560175)
,p_plug_name=>'Second Technician'
,p_parent_plug_id=>wwv_flow_imp.id(187178017722560159)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293076131047923238)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>90
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54556633511351632)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_button_name=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-sign-in'
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54559599894351636)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_button_name=>'back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'B<u>a</u>ck'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
,p_button_cattributes=>'accesskey=''A'''
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54540339136351618)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(58750669325834067)
,p_button_name=>'Fetch'
,p_button_static_id=>'fetch_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-file-signature'
,p_button_cattributes=>'style="display:none"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54540757257351618)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(58750669325834067)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'S<u>i</u>gn'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_button_cattributes=>'accesskey=''I'' Access Key = ''I'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54541135789351618)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(58750669325834067)
,p_button_name=>'Save'
,p_button_static_id=>'save_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>S</u>ave'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'accesskey=''S'' Access Key = S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7832643073226841)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(58750669325834067)
,p_button_name=>'clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54541532914351618)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(58750669325834067)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E<u>x</u>it'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
,p_button_cattributes=>'accesskey=''X'' Access Key=''X'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54541924582351619)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58750669325834067)
,p_button_name=>'NewForm'
,p_button_static_id=>'create_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>N</u>ew Form'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_button_cattributes=>'accesskey=''N'' Access Key= ''N'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7828822812226803)
,p_name=>'P53_ICDNO'
,p_item_sequence=>1139
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Diagnosis:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(7828913656226804)
,p_name=>'P53_DISP_DIAGNOSIS'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829048029226805)
,p_name=>'P53_ENTRY_DATE_1'
,p_item_sequence=>1199
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829461314226809)
,p_name=>'P53_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829518307226810)
,p_name=>'P53_SITE_ID_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829602408226811)
,p_name=>'P53_CHECKLIST_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829758020226812)
,p_name=>'P53_SRNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_prompt=>'<b><p style="color:#00008B">SRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829835047226813)
,p_name=>'P53_PERFORMANCE_TYPE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7829908287226814)
,p_name=>'P53_STATUS_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7830093906226815)
,p_name=>'P53_STATUS_DESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
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
 p_id=>wwv_flow_imp.id(7830160117226816)
,p_name=>'P53_SIGN_BY_NAME_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_prompt=>'<b><p style="color:#00008B">First Sign:</p></b>'
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
 p_id=>wwv_flow_imp.id(7830212465226817)
,p_name=>'P53_SIGN_BY_NAME_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_prompt=>'<b><p style="color:#00008B">Second Sign:</p></b>'
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
 p_id=>wwv_flow_imp.id(7830379137226818)
,p_name=>'P53_SIGN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b>'
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
 p_id=>wwv_flow_imp.id(7830462819226819)
,p_name=>'P53_PARAM_CHECKLIST_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7830502636226820)
,p_name=>'P53_PARAM_SCHEDULE_SRNO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7830602693226821)
,p_name=>'P53_PARAM_PERFORMANCE_TYPE_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7830922216226824)
,p_name=>'P53_OBJECT_CODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_item_default=>'S18APX00045'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7831857019226833)
,p_name=>'P53_TXT_OBJECTIVE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7831905006226834)
,p_name=>'P53_TXT_OBJECTIVE_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7832072199226835)
,p_name=>'P53_TXT_RADIATION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7832194511226836)
,p_name=>'P53_TXT_SITE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7832231951226837)
,p_name=>'P53_TXT_SRNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7832326868226838)
,p_name=>'P53_TXT_CHECKLIST_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7832425213226839)
,p_name=>'P53_TXT_OBJECTIVE_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7831701792226832)
,p_prompt=>'<b>dsd</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'null'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8142374763519501)
,p_name=>'P53_PARAM_NEXT_EVENT_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8146577512519543)
,p_name=>'P53_MACHINE_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8146640909519544)
,p_name=>'P53_PARAM_EVENT_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48183546944833220)
,p_name=>'P53_TITLE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(7829398179226808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53434040697072636)
,p_name=>'P53_SIGN_SUCCESS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57891901385504839)
,p_name=>'P53_DOCTOR_ID'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57911051411248868)
,p_name=>'P53_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58802787923834146)
,p_name=>'P53_DISP_MRNO1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58805563887834148)
,p_name=>'P53_DISP_MRNO2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85903063941359558)
,p_name=>'P53_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85903140885359559)
,p_name=>'P53_PATIENT_NAME_1'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
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
 p_id=>wwv_flow_imp.id(85903291839359560)
,p_name=>'P53_SEX'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Sex:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(85903365685359561)
,p_name=>'P53_AGE'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
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
 p_id=>wwv_flow_imp.id(85903937341359567)
,p_name=>'P53_RADIATION_NO_2'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
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
 p_id=>wwv_flow_imp.id(85904034531359568)
,p_name=>'P53_RADIATION_DATE_1'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
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
 p_id=>wwv_flow_imp.id(85904206023359569)
,p_name=>'P53_CONSULTANT'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85904331483359571)
,p_name=>'P53_SITE_DISP'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
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
 p_id=>wwv_flow_imp.id(85904433396359572)
,p_name=>'P53_ANESTHESIA'
,p_item_sequence=>1189
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_prompt=>'<b><p style="color:#00008B">Anesthesia</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85904609094359573)
,p_name=>'P53_SITE_ID'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(61944423757055689)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187238520677560281)
,p_name=>'P53_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187238648897560282)
,p_name=>'P53_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
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
 p_id=>wwv_flow_imp.id(187238723402560283)
,p_name=>'P53_PATIENT_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187238869341560284)
,p_name=>'P53_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_prompt=>'Name1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:red"'
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187238930434560285)
,p_name=>'P53_PASSWORD1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187239101671560286)
,p_name=>'P53_MESSAGE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(187179589274560174)
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
 p_id=>wwv_flow_imp.id(187247122448560298)
,p_name=>'P53_MRNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187247215398560299)
,p_name=>'P53_PATIENT_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187247281712560300)
,p_name=>'P53_PATIENT_MRNO2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187247361436560301)
,p_name=>'P53_NAME2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="readonly,color:red"'
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'null'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187247518478560302)
,p_name=>'P53_PASSWORD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187247659188560303)
,p_name=>'P53_MESSAGE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(187179696366560175)
,p_prompt=>'Message1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(368602710680136861)
,p_name=>'P53_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(187178017722560159)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54575736238351652)
,p_name=>'ReturnToDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54559599894351636)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54576274020351652)
,p_event_id=>wwv_flow_imp.id(54575736238351652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(187178017722560159)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54576659121351652)
,p_name=>'sign_btn'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54556633511351632)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54577107000351653)
,p_event_id=>wwv_flow_imp.id(54576659121351652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- --DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD   VARCHAR2(25) := :P53_PASSWORD1;',
'  USERPASSWORD2  VARCHAR2(25) := :P53_PASSWORD2;',
'  CURRENTCHAR    NUMBER(4);',
'  NEWPASSWORD    SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD  SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG      SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN          NUMBER;',
'',
'BEGIN',
'  :P53_SIGN_SUCCESS := ''N'';',
'  :P53_MESSAGE1 := NULL;',
'  :P53_MESSAGE2 := NULL;',
'  IF :P53_PATIENT_MRNO1 IS NULL THEN',
'    :P53_MESSAGE1 := ''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P53_PATIENT_MRNO2 IS NULL THEN',
'    :P53_MESSAGE2 := ''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P53_PASSWORD1 IS NULL THEN',
'    :P53_MESSAGE1 := ''Please enter Password'';',
'    RETURN;',
'  ELSIF :P53_PASSWORD2 IS NULL THEN',
'    :P53_MESSAGE2 := ''Please enter Password'';',
'    RETURN;',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P53_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'  ',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD2, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P53_DISP_MRNO2',
'       AND ACTIVE = ''Y'';',
'  ',
'    IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'      FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'    ',
'      FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'        CURRENTCHAR  := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'        CURRENTCHAR  := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'      NewPassword  := RTRIM(LTRIM(NEWPASSWORD));',
'      NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'    ',
'    ELSE',
'      NewPassword  := his.get_enc_pass(UserPassword);',
'      NewPassword2 := his.get_enc_pass(USERPASSWORD2);',
'    END IF;',
'  ',
'    IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/',
'     THEN',
'      :P53_MESSAGE1 := ''Incorrect Password'';',
'      RETURN;',
'    ELSIF NEWPASSWORD2 <> SAVEDPASSWORD2 THEN',
'      :P53_MESSAGE2 := ''Incorrect Password'';',
'      RETURN;',
'    ELSE',
'    ',
'      DECLARE',
'        V_ALERT_TEXT VARCHAR2(4000);',
'        V_STOP       CHAR(1) := ''N'';',
'      BEGIN',
'        RADIATION.PKG_S18FRM00135.SIGN_RAD_PLAN(P_RADIATION_NO      => :P53_RADIATION_NO_2,',
'                                                P_SITE_ID           => :P53_SITE_ID,',
'                                                P_CHECKLIST_SRNO    => :P53_SRNO,',
'                                                P_SIGN_BY_1         => :P53_DISP_MRNO1,',
'                                                P_SIGN_BY_2         => :P53_DISP_MRNO2,',
'                                                P_SCHEDULE_SRNO     => :P53_PARAM_SCHEDULE_SRNO,',
'                                                P_SCHEDULE_EVENT_ID => :P53_PARAM_NEXT_EVENT_ID,',
'                                                P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                                P_STOP              => V_STOP);',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P53_MESSAGE1 := V_alert_text;',
'          RETURN;',
'        ELSE',
'          :P53_MESSAGE1     := ''Record SIGNED Properly ...'';',
'          :P53_SIGN_SUCCESS := ''Y'';',
'        END IF;',
'      END;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P53_MESSAGE1,P53_MESSAGE2,P53_PASSWORD1,P53_PASSWORD2,P53_PATIENT_MRNO1,P53_PATIENT_MRNO2,P53_DISP_MRNO1,P53_DISP_MRNO2,P53_PARAM_NEXT_EVENT_ID,P53_PARAM_SCHEDULE_SRNO,P53_SIGN_SUCCESS'
,p_attribute_03=>'P53_MESSAGE1,P53_MESSAGE2,P53_SIGN_SUCCESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506808814654310)
,p_event_id=>wwv_flow_imp.id(54576659121351652)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'            INTO :P53_RADIATION_NO,:P53_SITE_ID_1,:P53_SRNO,:P53_PERFORMANCE_TYPE_ID,:P53_CHECKLIST_ID,:P53_SIGN_BY_NAME_1,:P53_SIGN_BY_NAME_2,:P53_SIGN_DATE,:P53_STATUS_DESC,:P53_STATUS_ID',
'        FROM RADIATION.RAD_CHECKLIST C, RADIATION.DEF_CHECKLIST DC',
'       WHERE C.SCHEDULE_SRNO = NVL(:P53_PARAM_SCHEDULE_SRNO, C.SCHEDULE_SRNO)',
'         AND C.CHECKLIST_ID = DC.CHECKLIST_ID',
'         AND C.RADIATION_NO = :P53_RADIATION_NO_2',
'         AND C.SITE_ID = :P53_SITE_ID',
'         AND DC.CHECKLIST_TYPE =:P53_PARAM_CHECKLIST_TYPE',
'       AND DC.PERFORMANCE_TYPE_ID =:P53_PARAM_PERFORMANCE_TYPE_ID',
'       and rownum=1',
'       ORDER BY C.SRNO DESC;',
'EXCEPTION WHEN OTHERS THEN NULL;       ',
'END;'))
,p_attribute_02=>'P53_RADIATION_NO_2,P53_SITE_ID,P53_PARAM_CHECKLIST_TYPE,P53_PARAM_PERFORMANCE_TYPE_ID'
,p_attribute_03=>'P53_RADIATION_NO,P53_SITE_ID_1,P53_SRNO,P53_PERFORMANCE_TYPE_ID,P53_CHECKLIST_ID,P53_SIGN_BY_NAME_1,P53_SIGN_BY_NAME_2,P53_SIGN_DATE,P53_STATUS_DESC,P53_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54577611025351654)
,p_event_id=>wwv_flow_imp.id(54576659121351652)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P53_MESSAGE1.',
'&P53_MESSAGE2.'))
,p_attribute_02=>'System Message'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55372640441424831)
,p_event_id=>wwv_flow_imp.id(54576659121351652)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PASSWORD1").setFocus();'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55372798262424832)
,p_event_id=>wwv_flow_imp.id(54576659121351652)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PASSWORD2").setFocus();'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53434268774072638)
,p_event_id=>wwv_flow_imp.id(54576659121351652)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P53_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54578074555351654)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_PATIENT_MRNO1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54581518297351655)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--IF :P53_PATIENT_TYPE1 IS NOT NULL AND :P53_PATIENT_MRNO1 IS NOT NULL THEN',
':P53_DISP_MRNO1 := :P53_PATIENT_TYPE1 ||LPAD(:P53_PATIENT_MRNO1, 8, ''0'');',
':P53_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P53_DISP_MRNO1);',
'--END IF;',
'END;'))
,p_attribute_02=>'P53_DISP_MRNO1,P53_PATIENT_TYPE1,P53_PATIENT_MRNO1'
,p_attribute_03=>'P53_DISP_MRNO1,P53_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54580585704351655)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P53_DISP_MRNO1 IS NOT NULL THEN',
'--    :P53_PATIENT_TYPE1 := substr(:P53_DISP_MRNO1, 1, 6);',
'--    :P53_PATIENT_MRNO1 := LTRIM(SUBSTR(:P53_DISP_MRNO1, 7), ''0'');',
'    :P53_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P53_DISP_MRNO1);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P53_DISP_MRNO1'
,p_attribute_03=>'P53_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54581068732351655)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_PASSWORD1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54578506804351654)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P53_ERROR := NULL;',
'  IF :P53_PATIENT_MRNO1 IS NOT NULL THEN',
'    :P53_DISP_MRNO1 := :P53_PATIENT_TYPE1 || LPAD(:P53_PATIENT_MRNO1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P53_DISP_MRNO1), ''N'') = ''N'' THEN',
'      :P53_ERROR        := ''This is not an active employee.'';',
'      :P53_PATIENT_MRNO1 := NULL;',
'      :P53_DISP_MRNO1    := NULL;',
'      :P53_NAME1        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P53_NAME1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P53_DISP_MRNO1',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P53_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P53_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P53_ERROR,P53_PATIENT_MRNO1,P53_PATIENT_TYPE1,P53_DISP_MRNO1,P53_NAME1'
,p_attribute_03=>'P53_ERROR,P53_PATIENT_MRNO1,P53_PATIENT_TYPE1,P53_DISP_MRNO1,P53_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54579083507351654)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P53_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_ERROR'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54579577287351655)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P53_NAME1:= his.pkg_patient.GET_PATIENT_NAME(:P53_DISP_MRNO1);'
,p_attribute_02=>'P53_DISP_MRNO1'
,p_attribute_03=>'P53_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P53_ERROR'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54580051081351655)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_NAME1'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P53_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55372570785424830)
,p_event_id=>wwv_flow_imp.id(54578074555351654)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PASSWORD1").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54339851456519546)
,p_name=>'Get-Patient-Code_2_1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_PATIENT_MRNO2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54339919761519547)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P53_ERROR := NULL;',
'  IF :P53_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P53_DISP_MRNO2 := (:P53_PATIENT_TYPE2 || LPAD(:P53_PATIENT_MRNO2, 8, ''0''));',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P53_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P53_ERROR        := ''This is not an active employee.'';',
'      :P53_PATIENT_MRNO2 := NULL;',
'      :P53_DISP_MRNO2    := NULL;',
'      :P53_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P53_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P53_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P53_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P53_ERROR,P53_PATIENT_MRNO2,P53_PATIENT_TYPE2,P53_DISP_MRNO2,P53_NAME2'
,p_attribute_03=>'P53_ERROR,P53_PATIENT_MRNO2,P53_PATIENT_TYPE2,P53_DISP_MRNO2,P53_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54340082568519548)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P53_DISP_MRNO2 IS NOT NULL THEN',
'    :P53_PATIENT_TYPE2 := substr(:P53_DISP_MRNO2, 1, 6);',
'    :P53_PATIENT_MRNO2 := LTRIM(SUBSTR(:P53_DISP_MRNO2, 7), ''0'');',
'    :P53_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P53_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P53_DISP_MRNO2'
,p_attribute_03=>'P53_PATIENT_TYPE2,P53_PATIENT_MRNO2,P53_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54340148293519549)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54340233867519550)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P53_PATIENT_TYPE2 IS NOT NULL AND :P53_PATIENT_MRNO2 IS NOT NULL THEN',
':P53_DISP_MRNO2 := :P53_PATIENT_TYPE2 ||LPAD(:P53_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P53_DISP_MRNO1,P53_PATIENT_TYPE1,P53_PATIENT_MRNO1'
,p_attribute_03=>'P53_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54530959707908201)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P53_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54531008321908202)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P53_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P53_DISP_MRNO2);'
,p_attribute_02=>'P53_DISP_MRNO2'
,p_attribute_03=>'P53_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P53_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54531119060908203)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P53_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54532834323908220)
,p_event_id=>wwv_flow_imp.id(54339851456519546)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PASSWORD2").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54585810665351657)
,p_name=>'ClearItems'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54586378123351657)
,p_event_id=>wwv_flow_imp.id(54585810665351657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_MESSAGE1,P53_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54586823027351657)
,p_event_id=>wwv_flow_imp.id(54585810665351657)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P53_DISP_MRNO2:=:GV_USER_MRNO;',
':P53_DISP_MRNO1:=:GV_USER_MRNO;',
'',
'',
'',
'-- FOR I IN(select ITEM_NAME',
'-- from apex_application_page_items a',
'-- where application_id = 142',
'-- and page_id = 9',
'-- and item_name not in(''P9_EXCHANGE_RATE'',''P9_RECEIVED_BY'',''P9_CURRENCY_DESC'',''P9_RECEIPT_DATE'',''P9_LOCATION_DESC'',''P9_HOPE_THANKS_LETTER'',''P9_ACTIVE'',''P9_OFFICE_DESC'',''P9_OFFICE_ID'',''P9_ND_OFFICE_DESC'',''P9_ND_LOCATION_DESC'',''P9_RECEIPT_PRINTED'')',
'-- ) LOOP',
'-- apex_util.set_session_state(i.item_name,'''');',
'-- end loop;',
'-- end;',
'',
'apex_util.set_session_state(''P53_SIGN_BY_NAME_1'','''');',
'apex_util.set_session_state(''P53_SIGN_BY_NAME_2'','''');',
'apex_util.set_session_state(''P53_SIGN_DATE'','''');',
'apex_util.set_session_state(''P53_SRNO'','''');',
'apex_util.set_session_state(''P53_STATUS_DESC'','''');',
''))
,p_attribute_03=>'P53_DISP_MRNO2,P53_DISP_MRNO1'
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
 p_id=>wwv_flow_imp.id(7831091539226825)
,p_event_id=>wwv_flow_imp.id(54585810665351657)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P53_SIGN_BY_NAME_1").disable();',
'apex.item("P53_SIGN_BY_NAME_2").disable();',
'apex.item("P53_SRNO").disable();',
'apex.item("P53_SIGN_DATE").disable();',
'apex.item("P53_STATUS_DESC").disable();',
'apex.item("P53_ICDNO").disable();',
'apex.item("P53_DISP_DIAGNOSIS").disable();',
'apex.item("P53_ANESTHESIA").disable();',
'',
'',
'apex.item("P53_SIGN_BY_NAME_1").setValue('''');',
'apex.item("P53_SIGN_BY_NAME_2").setValue('''');',
'apex.item("P53_SRNO").setValue('''');',
'apex.item("P53_SIGN_DATE").setValue('''');',
'apex.item("P53_STATUS_DESC").setValue('''');',
'',
'if ($v("P53_STATUS_ID")==''015'')',
'{',
'apex.item("save_btn").disable();',
'apex.item("sign_btn").disable();',
'apex.item("P53_TXT_OBJECTIVE_VALUE").disable();',
'}',
'else',
'{',
'apex.item("sign_btn").enable();',
'apex.item("save_btn").enable();',
'apex.item("P53_TXT_OBJECTIVE_VALUE").enable();',
'',
'}',
'// else if ($v("P53_STATUS_ID")==''248'')',
'// {',
'// apex.item("save_btn").enable();',
'// apex.item("sign_btn").disable();',
'// apex.item("dis_btn").disable();',
'// apex.item("create_btn").disable();',
'// apex.item("fetch_btn").disable();',
'',
'// }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54587265465351657)
,p_name=>'close_dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54541532914351618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54587742073351658)
,p_event_id=>wwv_flow_imp.id(54587265465351657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54588157223351658)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54588610977351658)
,p_event_id=>wwv_flow_imp.id(54588157223351658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if ($v("P53_STATUS_ID")==''015'')',
'{',
'apex.item("save_btn").disable();',
'apex.item("sign_btn").disable();',
'apex.item("P53_TXT_OBJECTIVE_VALUE").disable();',
'}',
'else',
'{',
'apex.item("sign_btn").enable();',
'apex.item("save_btn").enable();',
'apex.item("P53_TXT_OBJECTIVE_VALUE").enable();',
'',
'}',
'// else if ($v("P53_STATUS_ID")==''248'')',
'// {',
'// apex.item("save_btn").enable();',
'// apex.item("sign_btn").disable();',
'// apex.item("dis_btn").disable();',
'// apex.item("create_btn").disable();',
'// apex.item("fetch_btn").disable();',
'',
'// }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7832919808226844)
,p_name=>'SaveBtnDA'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54541135789351618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7833031258226845)
,p_event_id=>wwv_flow_imp.id(7832919808226844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var f01_array = [];',
'var f02_array = [];',
'',
'$(''.boxes:checked'').each(function() {',
'    f01_array.push($(this).val());',
'});',
'',
'$(''.boxes:checkbox:not(:checked)'').each(function() {',
'    f02_array.push($(this).val());',
'});',
'',
' console.log(f01_array+''chk'')',
' console.log(f02_array+''not chk'')',
'// return',
'apex.server.process("process_chklist_detail", ',
'{ ',
'      pageItems: ',
'    [',
'    "P53_RADIATION_NO_2",',
'    "P53_SITE_ID",',
'    "P53_SRNO",',
'    "P53_CHECKLIST_ID",',
'    "P53_TXT_OBJECTIVE_ID"              ',
'    ],',
'    f01 : f01_array,',
'    f02:  f02_array',
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
'apex.server.process("process_chklist_txt", ',
'{ ',
'      pageItems: [',
'    "P53_TXT_RADIATION_NO",',
'    "P53_TXT_SITE_ID",',
'    "P53_TXT_SRNO",',
'    "P53_TXT_CHECKLIST_ID",',
'    "P53_TXT_OBJECTIVE_ID",',
'    "P53_TXT_OBJECTIVE_VALUE",',
'    "P53_TXT_OBJECTIVE_DESC"                   ',
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
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7833388475226848)
,p_name=>'Sign_btn_OpenRG'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54540757257351618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7833496320226849)
,p_event_id=>wwv_flow_imp.id(7833388475226848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P53_MRNO1         := :GV_USER_MRNO;',
'    :P53_PATIENT_TYPE1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P53_PATIENT_TYPE2:= SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P53_PATIENT_MRNO1    := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    --:P53_PATIENT_MRNO1    := LPAD(:P53_PATIENT_MRNO1, 8, ''0'');',
'    :P53_DISP_MRNO1 := (:P53_PATIENT_TYPE1 ||LPAD(:P53_PATIENT_MRNO1, 8, ''0''));',
'    :P53_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P53_DISP_MRNO1);',
'    :P53_DISP_MRNO2:=null;',
'  END;',
'',
''))
,p_attribute_02=>'P53_MRNO1,P53_DISP_MRNO1,P53_NAME1,P53_PATIENT_MRNO1'
,p_attribute_03=>'P53_MRNO1,P53_PATIENT_TYPE1,P53_PATIENT_TYPE2,P53_DISP_MRNO1,P53_DISP_MRNO2,P53_PATIENT_MRNO1,P53_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7833569091226850)
,p_event_id=>wwv_flow_imp.id(7833388475226848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign_rg");',
'apex.item("P53_PASSWORD1").setFocus();',
'apex.item("P53_PASSWORD1").setValue('''');',
'apex.item("P53_PASSWORD2").setValue('''');',
'apex.item("P53_PATIENT_MRNO2").setValue('''');',
'apex.item("P53_MESSAGE1").setValue('''');',
'apex.item("P53_NAME2").setValue('''');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8142648470519504)
,p_name=>'NewFormBtnDA'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(54541924582351619)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8142781528519505)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	L_ALERT_TEXT VARCHAR2(4000);',
'	L_STOP			 CHAR(1);',
'BEGIN',
':P53_ERROR:=NULL;',
'	RADIATION.PKG_S18FRM00135.GEN_CHECKLIST(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                          P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                          P_RADIATION_NO      => :P53_RADIATION_NO_2,',
'                                          P_SITE_ID           => :P53_SITE_ID,',
'                                          P_PERFORMANCE_TYPE_ID => :P53_PARAM_PERFORMANCE_TYPE_ID,',
'                                          P_CHECKLIST_TYPE => :P53_PARAM_CHECKLIST_TYPE,',
'                                          P_SCHEDULE_SRNO => :P53_PARAM_SCHEDULE_SRNO,',
'                                          P_USER_MRNO => :GV_USER_MRNO,',
'                                          P_OBJECT_CODE => :P53_OBJECT_CODE,',
'                                          P_TERMINAL => :GV_TERMINAL,',
'                                          P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                          P_STOP              => L_STOP);',
'  -------------',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'  	:P53_ERROR:= L_ALERT_TEXT;',
'  	RETURN;',
'  ELSE',
'  	COMMIT;',
'  	--GO_BLOCK(''RADIATION_CHECKLIST'');',
'  	--EXECUTE_QUERY;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P53_RADIATION_NO_2,P53_SITE_ID,P53_PARAM_PERFORMANCE_TYPE_ID,P53_PARAM_CHECKLIST_TYPE,P53_PARAM_SCHEDULE_SRNO,P53_OBJECT_CODE'
,p_attribute_03=>'P53_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8142817810519506)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P53_ERROR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8142969975519507)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'            INTO :P53_RADIATION_NO,:P53_SITE_ID_1,:P53_SRNO,:P53_PERFORMANCE_TYPE_ID,:P53_CHECKLIST_ID,:P53_SIGN_BY_NAME_1,:P53_SIGN_BY_NAME_2,:P53_SIGN_DATE,:P53_STATUS_DESC,:P53_STATUS_ID',
'        FROM RADIATION.RAD_CHECKLIST C, RADIATION.DEF_CHECKLIST DC',
'       WHERE C.SCHEDULE_SRNO = NVL(:P53_PARAM_SCHEDULE_SRNO, C.SCHEDULE_SRNO)',
'         AND C.CHECKLIST_ID = DC.CHECKLIST_ID',
'         AND C.RADIATION_NO = :P53_RADIATION_NO_2',
'         AND C.SITE_ID = :P53_SITE_ID',
'         AND DC.CHECKLIST_TYPE =:P53_PARAM_CHECKLIST_TYPE',
'       AND DC.PERFORMANCE_TYPE_ID =:P53_PARAM_PERFORMANCE_TYPE_ID',
'       and rownum=1',
'       ORDER BY C.SRNO DESC;',
'EXCEPTION WHEN OTHERS THEN NULL;       ',
'END;'))
,p_attribute_02=>'P53_PARAM_SCHEDULE_SRNO,P53_RADIATION_NO_2,P53_SITE_ID,P53_PARAM_CHECKLIST_TYPE,P53_PARAM_PERFORMANCE_TYPE_ID'
,p_attribute_03=>'P53_RADIATION_NO,P53_SITE_ID_1,P53_SRNO,P53_PERFORMANCE_TYPE_ID,P53_CHECKLIST_ID,P53_SIGN_BY_NAME_1,P53_SIGN_BY_NAME_2,P53_SIGN_DATE,P53_STATUS_DESC,P53_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8145994497519537)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7829131084226806)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8146055172519538)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      BEGIN',
'      SELECT C.RADIATION_NO,',
'             C.SITE_ID,',
'             C.SRNO,',
'             C.CHECKLIST_ID,',
'             CD.OBJECTIVE_ID,',
'             CD.OBJECTIVE_VALUE,',
'             CD.OBJECTIVE_DESC',
'             INTO :P53_RADIATION_NO_CHK,:P53_SITE_ID_CHK,:P53_SRNO_CHK,:P53_CHECKLIST_ID_CHK,',
'             :P53_OBJECTIVE_ID_CHK,:P53_OBJECTIVE_VALUE_CHK,:P53_OBJECTIVE_DESC_CHK',
'        FROM RADIATION.RAD_CHECKLIST            C,',
'             RADIATION.RAD_CHECKLIST_DTL        CD,',
'             RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
'       WHERE C.RADIATION_NO = :P53_RADIATION_NO_2',
'         AND C.SITE_ID = :P53_SITE_ID',
'         AND C.SRNO = :P53_SRNO',
'         AND CD.RADIATION_NO = C.RADIATION_NO',
'         AND CD.SITE_ID = C.SITE_ID',
'         AND CD.SRNO = C.SRNO',
'         and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'         AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'         AND CO.OBJECTIVE_TYPE = ''C''',
'       ORDER BY CHECKLIST_ID, OBJECTIVE_ID;',
'       EXCEPTION WHEN NO_DATA_FOUND THEN NULL;',
'       END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8143866201519516)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      BEGIN',
'      SELECT C.RADIATION_NO,',
'             C.SITE_ID,',
'             C.SRNO,',
'             C.CHECKLIST_ID,',
'             CD.OBJECTIVE_ID,',
'             CD.OBJECTIVE_VALUE,',
'             CD.OBJECTIVE_DESC',
'             INTO :P53_TXT_RADIATION_NO,:P53_TXT_SITE_ID,:P53_TXT_SRNO,:P53_TXT_CHECKLIST_ID,',
'             :P53_TXT_OBJECTIVE_ID,:P53_TXT_OBJECTIVE_VALUE,:P53_TXT_OBJECTIVE_DESC',
'        FROM RADIATION.RAD_CHECKLIST            C,',
'             RADIATION.RAD_CHECKLIST_DTL        CD,',
'             RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
'       WHERE C.RADIATION_NO = :P53_RADIATION_NO_2',
'         AND C.SITE_ID = :P53_SITE_ID',
'         AND C.SRNO = :P53_SRNO',
'         AND CD.RADIATION_NO = C.RADIATION_NO',
'         AND CD.SITE_ID = C.SITE_ID',
'         AND CD.SRNO = C.SRNO',
'         and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'         AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'         AND CO.OBJECTIVE_TYPE = ''T''',
'       ORDER BY CHECKLIST_ID, OBJECTIVE_ID;',
'       EXCEPTION WHEN NO_DATA_FOUND THEN NULL;',
'       END;'))
,p_attribute_02=>'P53_TXT_RADIATION_NO,P53_TXT_SITE_ID,P53_TXT_SRNO,P53_TXT_CHECKLIST_ID,P53_TXT_OBJECTIVE_ID,P53_TXT_OBJECTIVE_VALUE,P53_TXT_OBJECTIVE_DESC'
,p_attribute_03=>'P53_TXT_RADIATION_NO,P53_TXT_SITE_ID,P53_TXT_SRNO,P53_TXT_CHECKLIST_ID,P53_TXT_OBJECTIVE_ID,P53_TXT_OBJECTIVE_VALUE,P53_TXT_OBJECTIVE_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8146739760519545)
,p_event_id=>wwv_flow_imp.id(8142648470519504)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let title = document.querySelector(''#P53_TXT_OBJECTIVE_VALUE_LABEL'');',
'title.innerHTML = $v(''P53_TXT_OBJECTIVE_DESC'')',
'//alert($v(''P53_TXT_OBJECTIVE_DESC''))',
'//console.log(title)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8146116089519539)
,p_name=>'ClearBtnDA'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7832643073226841)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8146226023519540)
,p_event_id=>wwv_flow_imp.id(8146116089519539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P53_ERROR").setValue('''');',
'apex.item("P53_RADIATION_NO").setValue('''');',
'apex.item("P53_MRNO1").setValue('''');',
'apex.item("P53_MRNO2").setValue('''');',
'apex.item("P53_SITE_ID_1").setValue('''');',
'apex.item("P53_TXT_OBJECTIVE_DESC").setValue('''');',
'apex.item("P53_CHECKLIST_ID").setValue('''');',
'apex.item("P53_TXT_OBJECTIVE_VALUE").setValue('''');',
'apex.item("P53_PATIENT_TYPE1").setValue('''');',
'apex.item("P53_PATIENT_TYPE2").setValue('''');',
'apex.item("P53_TXT_OBJECTIVE_ID").setValue('''');',
'apex.item("P53_PERFORMANCE_TYPE_ID").setValue('''');',
'apex.item("P53_TXT_RADIATION_NO").setValue('''');',
'apex.item("P53_PATIENT_MRNO1").setValue('''');',
'apex.item("P53_PATIENT_MRNO2").setValue('''');',
'apex.item("P53_SIGN_BY_NAME_1").setValue('''');',
'apex.item("P53_TXT_SITE_ID").setValue('''');',
'apex.item("P53_DISP_MRNO1").setValue('''');',
'apex.item("P53_SIGN_DATE").setValue('''');',
'apex.item("P53_TXT_SRNO").setValue('''');',
'apex.item("P53_DISP_MRNO2").setValue('''');',
'apex.item("P53_NAME1").setValue('''');',
'apex.item("P53_PASSWORD1").setValue('''');',
'apex.item("P53_NAME2").setValue('''');',
'apex.item("P53_SIGN_BY_NAME_2").setValue('''');',
'apex.item("P53_TXT_CHECKLIST_ID").setValue('''');',
'apex.item("P53_MESSAGE1").setValue('''');',
'apex.item("P53_PASSWORD2").setValue('''');',
'apex.item("P53_SRNO").setValue('''');',
'apex.item("P53_MESSAGE2").setValue('''');',
'apex.item("P53_STATUS_ID").setValue('''');',
'apex.item("P53_STATUS_DESC").setValue('''');',
'apex.item("P53_PARAM_CHECKLIST_TYPE").setValue('''');',
'apex.item("P53_PARAM_SCHEDULE_SRNO").setValue('''');',
'apex.item("P53_PARAM_PERFORMANCE_TYPE_ID").setValue('''');',
'apex.item("P53_PARAM_EVENT_ID").setValue('''');',
'apex.item("P53_OBJECT_CODE").setValue('''');',
'apex.item("P53_HISTORY_RADIATION_NO").setValue('''');',
'apex.item("P53_MRNO").setValue('''');',
'apex.item("P53_PATIENT_NAME_1").setValue('''');',
'apex.item("P53_SEX").setValue('''');',
'apex.item("P53_AGE").setValue('''');',
'apex.item("P53_RADIATION_NO_2").setValue('''');',
'apex.item("P53_RADIATION_DATE_1").setValue('''');',
'apex.item("P53_CONSULTANT").setValue('''');',
'apex.item("P53_ICDNO").setValue('''');',
'apex.item("P53_DISP_DIAGNOSIS").setValue('''');',
'apex.item("P53_SITE_DISP").setValue('''');',
'apex.item("P53_DOCTOR_ID").setValue('''');',
'apex.item("P53_SITE_ID").setValue('''');',
'apex.item("P53_ANESTHESIA").setValue('''');',
'apex.item("P53_ENTRY_DATE_1").setValue('''');',
'apex.region("chk_dtl").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53433141499072627)
,p_name=>'EnterKeyPassword'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_PASSWORD2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53433455914072630)
,p_event_id=>wwv_flow_imp.id(53433141499072627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- --DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD  VARCHAR2(25) := :P53_PASSWORD1;',
'  USERPASSWORD2  VARCHAR2(25) := :P53_PASSWORD2;',
'  CURRENTCHAR   NUMBER(4);',
'  NEWPASSWORD   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG     SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN         NUMBER;',
'',
'BEGIN  ',
':P53_SIGN_SUCCESS := ''N'';',
':P53_MESSAGE1 := NULL;',
':P53_MESSAGE2 := NULL;',
'  IF :P53_PATIENT_MRNO1 IS NULL THEN',
'    :P53_MESSAGE1:=''Please enter Employee Code'';',
'    RETURN;',
'    ELSIF :P53_PATIENT_MRNO2 IS NULL THEN',
'    :P53_MESSAGE2:=''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P53_PASSWORD1 IS NULL THEN',
'    :P53_MESSAGE1:=''Please enter Password'';',
'    RETURN;',
'    ELSIF :P53_PASSWORD2 IS NULL THEN',
'    :P53_MESSAGE2:=''Please enter Password'';',
'    RETURN;  ',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P53_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'    ',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD2, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P53_DISP_MRNO2',
'       AND ACTIVE = ''Y'';',
'  ',
'    IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'      FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'',
'      FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'      NewPassword := RTRIM(LTRIM(NEWPASSWORD));',
'      NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'',
'    ELSE',
'      NewPassword := his.get_enc_pass(UserPassword);',
'      NewPassword2 := his.get_enc_pass(USERPASSWORD2);',
'    END IF;',
'  ',
'    IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/ THEN',
'    :P53_MESSAGE1:=''Incorrect Password'';',
'     RETURN;',
'    ELSIF NEWPASSWORD2<>SAVEDPASSWORD2 THEN',
'    :P53_MESSAGE2:=''Incorrect Password'';',
'     RETURN; ',
'    ELSE',
'    ',
'DECLARE',
'    V_ALERT_TEXT VARCHAR2(4000);',
'    V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00135.SIGN_RAD_PLAN(P_RADIATION_NO      =>   :P53_RADIATION_NO_2,',
'                                          P_SITE_ID           => :P53_SITE_ID,',
'                                          P_CHECKLIST_SRNO 	  => :P53_SRNO,',
'                                          P_SIGN_BY_1         => :P53_DISP_MRNO1,',
'                                          P_SIGN_BY_2         => :P53_DISP_MRNO2,',
'                                          P_SCHEDULE_SRNO     => :P53_PARAM_SCHEDULE_SRNO,',
'                                          P_SCHEDULE_EVENT_ID => :P53_PARAM_NEXT_EVENT_ID,',
'                                          P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                          P_STOP              => V_STOP',
'                                          );',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P53_MESSAGE1:= V_alert_text;',
'          RETURN;',
'        ELSE',
'        :P53_MESSAGE1:= ''Record SIGNED Properly ...'';',
'        :P53_SIGN_SUCCESS := ''Y'';',
'        END IF;',
'      END;',
'    END IF;',
'    END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P53_MESSAGE1,P53_MESSAGE2,P53_PASSWORD1,P53_PASSWORD2,P53_PATIENT_MRNO1,P53_PATIENT_MRNO2,P53_DISP_MRNO1,P53_DISP_MRNO2,P53_PARAM_NEXT_EVENT_ID,P53_PARAM_SCHEDULE_SRNO,P53_SIGN_SUCCESS'
,p_attribute_03=>'P53_MESSAGE1,P53_MESSAGE2,P53_SIGN_SUCCESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53433513800072631)
,p_event_id=>wwv_flow_imp.id(53433141499072627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'            INTO :P53_RADIATION_NO,:P53_SITE_ID_1,:P53_SRNO,:P53_PERFORMANCE_TYPE_ID,:P53_CHECKLIST_ID,:P53_SIGN_BY_NAME_1,:P53_SIGN_BY_NAME_2,:P53_SIGN_DATE,:P53_STATUS_DESC,:P53_STATUS_ID',
'        FROM RADIATION.RAD_CHECKLIST C, RADIATION.DEF_CHECKLIST DC',
'       WHERE C.SCHEDULE_SRNO = NVL(:P53_PARAM_SCHEDULE_SRNO, C.SCHEDULE_SRNO)',
'         AND C.CHECKLIST_ID = DC.CHECKLIST_ID',
'         AND C.RADIATION_NO = :P53_RADIATION_NO_2',
'         AND C.SITE_ID = :P53_SITE_ID',
'         AND DC.CHECKLIST_TYPE =:P53_PARAM_CHECKLIST_TYPE',
'       AND DC.PERFORMANCE_TYPE_ID =:P53_PARAM_PERFORMANCE_TYPE_ID',
'       and rownum=1',
'       ORDER BY C.SRNO DESC;',
'EXCEPTION WHEN OTHERS THEN NULL;       ',
'END;'))
,p_attribute_02=>'P53_RADIATION_NO_2,P53_SITE_ID,P53_PARAM_CHECKLIST_TYPE,P53_PARAM_PERFORMANCE_TYPE_ID'
,p_attribute_03=>'P53_RADIATION_NO,P53_SITE_ID_1,P53_SRNO,P53_PERFORMANCE_TYPE_ID,P53_CHECKLIST_ID,P53_SIGN_BY_NAME_1,P53_SIGN_BY_NAME_2,P53_SIGN_DATE,P53_STATUS_DESC,P53_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55372976149424834)
,p_event_id=>wwv_flow_imp.id(53433141499072627)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PASSWORD1").setFocus();'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55373017377424835)
,p_event_id=>wwv_flow_imp.id(53433141499072627)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PASSWORD2").setFocus();'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53433642739072632)
,p_event_id=>wwv_flow_imp.id(53433141499072627)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P53_MESSAGE1.',
'&P53_MESSAGE2.'))
,p_attribute_02=>'System Message'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P53_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53434308856072639)
,p_event_id=>wwv_flow_imp.id(53433141499072627)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P53_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53433744812072633)
,p_name=>'PasswordSetFocus'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_PASSWORD1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53434450477072640)
,p_event_id=>wwv_flow_imp.id(53433744812072633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P53_PATIENT_MRNO2").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54339610096519544)
,p_name=>'PasswordSetFocus_1'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_PASSWORD1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54339797035519545)
,p_event_id=>wwv_flow_imp.id(54339610096519544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P53_PATIENT_MRNO2") !== null && $v("P53_PATIENT_MRNO2") !== "") {',
'    apex.item("sign").setFocus();',
'} else {',
'    apex.item("P53_PATIENT_MRNO2").setFocus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60083685368639032)
,p_name=>'SelectCheckBox@Click'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'tr'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60083766403639033)
,p_event_id=>wwv_flow_imp.id(60083685368639032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if (!$(this.browserEvent.target).is(''.boxes'')) {',
'    this.browserEvent.stopPropagation();',
'    let chk = $(this.triggeringElement).find(''.boxes'');',
'    chk.prop("checked", !chk.prop("checked"));',
'}',
'//$(this.browserEvent.target).parents(''tr'').find(''.boxes'').trigger(''click'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147334441389371519)
,p_name=>'SetFocusToEnableShortKeys'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147334519203371520)
,p_event_id=>wwv_flow_imp.id(147334441389371519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(54541924582351619)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54566137095351645)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_MrnoPage46'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P53_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>54566137095351645
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54565307663351644)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RM.RADIATION_NO,',
'         TO_CHAR(RADIATION_DATE, ''DD-MM-RR HH24:MI'') RADIATION_DATE,',
'         RM.MRNO MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         RM.ORIGINAL_TRN_DATE ENTRY_DATE,',
'         ANAESTHESIA',
'    INTO :P53_RADIATION_NO_2,',
'         :P53_RADIATION_DATE_1,',
'         :P53_MRNO,',
'         :P53_PATIENT_NAME_1,',
'         :P53_AGE,',
'         :P53_SEX,',
'         :P53_CONSULTANT,',
'         :P53_ICDNO,',
'         :P53_DISP_DIAGNOSIS,',
'         :P53_ENTRY_DATE_1,',
'         :P53_ANESTHESIA',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         (SELECT S.RADIATION_NO',
'            FROM RADIATION.SCHEDULE S',
'           WHERE SR_NO = :P53_PARAM_SCHEDULE_SRNO);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>54565307663351644
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8146460208519542)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitalizePerfomanceTypeId'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_DECISION_ID DEFINITIONS.VW_EVENT_DECISION.DECISION_ID%TYPE;',
'BEGIN',
'  BEGIN',
'    SELECT PERFORMANCE_TYPE_ID',
'      INTO :P53_PARAM_PERFORMANCE_TYPE_ID',
'      FROM RADIATION.MACHINES',
'     WHERE MACHINE_ID = :P53_MACHINE_ID;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      NULL;',
'  END;',
'',
'  BEGIN',
'    SELECT SW.EVENT_ID,',
'           RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                    P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                    P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                    P_EVENT_ID         => SW.EVENT_ID),',
'           ',
'           S.RADIATION_NO,',
'           S.SITE_ID,',
'           RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(S.SITE_ID)',
'      INTO :P53_PARAM_EVENT_ID,',
'           :P53_PARAM_NEXT_EVENT_ID,',
'           :P53_RADIATION_NO_2,',
'           :P53_SITE_ID,',
'           :P53_SITE_DISP',
'      FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'     WHERE SW.SR_NO = S.SR_NO',
'       AND S.SR_NO = :P53_PARAM_SCHEDULE_SRNO',
'       AND S.WFE_NO = SW.WFE_NO;',
'  ',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      NULL;',
'  END;',
'',
'  BEGIN',
'    :P53_SRNO                 := NULL;',
'    :P53_PARAM_CHECKLIST_TYPE := NULL;',
'    :P53_TITLE                := NULL;',
'    IF :P53_PARAM_NEXT_EVENT_ID = 351 THEN',
'      :P53_PARAM_CHECKLIST_TYPE := ''TO'';',
'      :P53_TITLE                := '' Time Out'';',
'    ELSIF :P53_PARAM_NEXT_EVENT_ID = 352 THEN',
'      :P53_PARAM_CHECKLIST_TYPE := ''SO'';',
'      :P53_TITLE                := '' Sign Out'';',
'    END IF;',
'  ',
'    IF :P53_PARAM_CHECKLIST_TYPE IS NULL THEN',
'      BEGIN',
'        SELECT DECISION_ID',
'          INTO L_DECISION_ID',
'          FROM DEFINITIONS.VW_EVENT_DECISION',
'         WHERE EXISTS (SELECT 1',
'                  FROM RADIATION.SCHEDULE S',
'                  JOIN RADIATION.SCHEDULE_WORKFLOW SW',
'                    ON SW.SR_NO = S.SR_NO',
'                 WHERE S.SR_NO = :P53_PARAM_SCHEDULE_SRNO',
'                   AND S.WFE_NO = SW.WFE_NO',
'                   AND SW.SCHEMA_ID = SCHEMA_ID',
'                   AND SW.WORKFLOW_TYPE_ID = PURCHASE_TYPE_ID',
'                   AND SW.WORK_FLOW_ID = WORK_FLOW_ID',
'                   AND SW.EVENT_ID = EVENT_ID);',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'    ',
'      IF L_DECISION_ID = 351 THEN',
'        :P53_PARAM_CHECKLIST_TYPE := ''TO'';',
'        :P53_TITLE                := '' Time Out'';',
'      ELSIF L_DECISION_ID = 352 THEN',
'        :P53_PARAM_CHECKLIST_TYPE := ''SO'';',
'        :P53_TITLE                := '' Sign Out'';',
'      END IF;',
'    ',
'    END IF;',
'  END;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8146460208519542
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7831117778226826)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeRadiaitonCheckDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C.RADIATION_NO,',
'         C.SITE_ID,',
'         C.SRNO,',
'         DC.PERFORMANCE_TYPE_ID,',
'         C.CHECKLIST_ID,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(C.SIGN_BY_1) SIGN_BY_NAME_1,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(C.SIGN_BY_2) SIGN_BY_NAME_2,',
'         C.SIGN_DATE SIGN_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(C.STATUS_ID) STATUS_DESC,',
'         C.STATUS_ID',
'    INTO :P53_RADIATION_NO,',
'         :P53_SITE_ID_1,',
'         :P53_SRNO,',
'         :P53_PERFORMANCE_TYPE_ID,',
'         :P53_CHECKLIST_ID,',
'         :P53_SIGN_BY_NAME_1,',
'         :P53_SIGN_BY_NAME_2,',
'         :P53_SIGN_DATE,',
'         :P53_STATUS_DESC,',
'         :P53_STATUS_ID',
'    FROM RADIATION.RAD_CHECKLIST C, RADIATION.DEF_CHECKLIST DC',
'   WHERE C.SCHEDULE_SRNO = NVL(:P53_PARAM_SCHEDULE_SRNO, C.SCHEDULE_SRNO)',
'     AND C.CHECKLIST_ID = DC.CHECKLIST_ID',
'     AND C.RADIATION_NO = :P53_RADIATION_NO_2',
'     AND C.SITE_ID = :P53_SITE_ID',
'     AND C.SRNO =',
'         NVL(:P53_SRNO,',
'             (SELECT MAX(RC.SRNO)',
'                FROM RADIATION.RAD_CHECKLIST RC, RADIATION.DEF_CHECKLIST DC',
'               WHERE RC.RADIATION_NO = :P53_RADIATION_NO_2',
'                 AND RC.SITE_ID = :P53_SITE_ID',
'                 AND RC.CHECKLIST_ID = DC.CHECKLIST_ID',
'                 AND DC.CHECKLIST_TYPE = :P53_PARAM_CHECKLIST_TYPE',
'                 AND RC.SCHEDULE_SRNO = :P53_PARAM_SCHEDULE_SRNO))',
'     AND DC.CHECKLIST_TYPE = :P53_PARAM_CHECKLIST_TYPE',
'     AND DC.PERFORMANCE_TYPE_ID = :P53_PARAM_PERFORMANCE_TYPE_ID',
'   ORDER BY C.SRNO DESC;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7831117778226826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7832570501226840)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeChecklistTxt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C.RADIATION_NO,',
'         C.SITE_ID,',
'         C.SRNO,',
'         C.CHECKLIST_ID,',
'         CD.OBJECTIVE_ID,',
'         CD.OBJECTIVE_VALUE,',
'         CD.OBJECTIVE_DESC',
'    INTO :P53_TXT_RADIATION_NO,',
'         :P53_TXT_SITE_ID,',
'         :P53_TXT_SRNO,',
'         :P53_TXT_CHECKLIST_ID,',
'         :P53_TXT_OBJECTIVE_ID,',
'         :P53_TXT_OBJECTIVE_VALUE,',
'         :P53_TXT_OBJECTIVE_DESC',
'    FROM RADIATION.RAD_CHECKLIST            C,',
'         RADIATION.RAD_CHECKLIST_DTL        CD,',
'         RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
'   WHERE C.RADIATION_NO = :P53_RADIATION_NO_2',
'     AND C.SITE_ID = :P53_SITE_ID',
'     AND C.SRNO =',
'         NVL(:P53_SRNO,',
'             (SELECT MAX(RC.SRNO)',
'                FROM RADIATION.RAD_CHECKLIST RC, RADIATION.DEF_CHECKLIST DC',
'               WHERE RC.RADIATION_NO = :P53_RADIATION_NO_2',
'                 AND RC.SITE_ID = :P53_SITE_ID',
'                 AND RC.CHECKLIST_ID = DC.CHECKLIST_ID',
'                 AND DC.CHECKLIST_TYPE = :P53_PARAM_CHECKLIST_TYPE',
'         AND (TRUNC(RC.SIGN_DATE) = TRUNC(SYSDATE) OR',
'             TRUNC(RC.ORIGINAL_TRN_DATE) = TRUNC(SYSDATE))))',
'     AND CD.RADIATION_NO = C.RADIATION_NO',
'     AND CD.SITE_ID = C.SITE_ID',
'     AND CD.SRNO = C.SRNO',
'     and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'     AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'     AND CO.OBJECTIVE_TYPE = ''T''',
'   ORDER BY CHECKLIST_ID, OBJECTIVE_ID;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    :P53_TXT_OBJECTIVE_VALUE := NULL;',
'    :P53_TXT_OBJECTIVE_DESC  := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7832570501226840
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7831293851226827)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_chklist_detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  bk_data RADIATION.PKG_S18FRM00135.TAB_CHKLIST_DETAIL;',
'  V_STOP  VARCHAR2(1);',
'  EX EXCEPTION;',
'  V_ERROR VARCHAR2(200);',
'begin',
'  -- SELECT ',
'  -- :P53_RADIATION_NO_2,',
'  -- :P53_SITE_ID   ,',
'  -- :P53_SRNO        ,',
'  -- :P53_CHECKLIST_ID,',
'  -- :P53_TXT_OBJECTIVE_ID ',
'  -- BULK COLLECT INTO bk_data',
'  -- from dual;',
'  -- RADIATION.PKG_S18FRM00135.UPDATE_CHKLIST_DETAIL(bk_data);',
'',
'  BEGIN',
'    FOR i in 1 .. APEX_APPLICATION.G_F01.COUNT LOOP',
'      UPDATE RADIATION.RAD_CHECKLIST_DTL',
'         SET OBJECTIVE_VALUE = ''Y''',
'       WHERE RADIATION_NO = :P53_RADIATION_NO_2',
'         AND SITE_ID = :P53_SITE_ID',
'         AND SRNO = NVL(:P53_SRNO,',
'                        (SELECT MAX(RC.SRNO)',
'                           FROM RADIATION.RAD_CHECKLIST RC',
'                          WHERE RC.RADIATION_NO = :P53_RADIATION_NO_2',
'                            AND RC.SITE_ID = :P53_SITE_ID',
'                            AND RC.STATUS_ID = ''020''))',
'         AND OBJECTIVE_ID = APEX_APPLICATION.G_F01(i);',
'    ',
'    END LOOP;',
'    FOR i in 1 .. APEX_APPLICATION.G_F02.COUNT LOOP',
'      UPDATE RADIATION.RAD_CHECKLIST_DTL',
'         SET OBJECTIVE_VALUE = ''N''',
'       WHERE RADIATION_NO = :P53_RADIATION_NO_2',
'         AND SITE_ID = :P53_SITE_ID',
'         AND SRNO = NVL(:P53_SRNO,',
'                        (SELECT MAX(RC.SRNO)',
'                           FROM RADIATION.RAD_CHECKLIST RC',
'                          WHERE RC.RADIATION_NO = :P53_RADIATION_NO_2',
'                            AND RC.SITE_ID = :P53_SITE_ID',
'                            AND RC.STATUS_ID = ''020''))',
'         AND OBJECTIVE_ID = APEX_APPLICATION.G_F02(i);',
'    END LOOP;',
'  ',
'    apex_json.open_object;',
'    apex_json.write(p_name => ''status'', p_value => ''success'');',
'    apex_json.write(p_name  => ''message'',',
'                    p_value => ''Record Saved Successfully.'');',
'    apex_json.close_object;',
'  END;',
'  -- --ELSE',
'  -- apex_json.open_object;',
'  -- apex_json.write( p_name => ''status'', p_value => ''failed'');',
'  -- apex_json.write( p_name => ''message'', p_value => ''Please Fill the Required Fields.'');',
'  -- apex_json.close_object;',
'  -- --END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(p_name => ''status'', p_value => ''failed'');',
'    apex_json.write(p_name => ''message'', p_value => SQLERRM);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7831293851226827
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7832850218226843)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_chklist_txt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'bk_data RADIATION.PKG_S18FRM00135.TAB_CHKLIST_DETAIL;',
'V_STOP VARCHAR2(1);',
'EX EXCEPTION;',
'V_ERROR VARCHAR2(200);',
'begin',
'    SELECT ',
'    :P53_TXT_RADIATION_NO,',
'    :P53_TXT_SITE_ID   ,',
'    :P53_TXT_SRNO        ,',
'    :P53_TXT_CHECKLIST_ID,',
'    :P53_TXT_OBJECTIVE_ID,',
'    :P53_TXT_OBJECTIVE_VALUE ,',
'    :P53_TXT_OBJECTIVE_DESC ',
'    BULK COLLECT INTO bk_data',
'    from dual;',
'    RADIATION.PKG_S18FRM00135.UPDATE_CHKLIST_DETAIL(bk_data);',
'    apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''success'');',
'    apex_json.write( p_name => ''message'', p_value => ''Record Saved Successfully.'');',
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
,p_internal_uid=>7832850218226843
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_name=>'RAD_MANAGER_UTL'
,p_alias=>'RAD-MANAGER-UTL'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiotherapy Administrator'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_UNIT").hide();',
'apex.item("P70_SERVICE_NO").hide();',
'apex.item("P70_SERVICE_STATUS").hide();',
'apex.item("P70_RANK").hide();',
'apex.item("P70_FORMATION").hide();',
'',
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
'.fixheader {',
'    line-height: 25px;',
'}',
'',
' .bluearrow {color:#056AC8;}',
'',
'  .redarrow {color:#CB1100;}',
'',
'',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.apex-item-datepicker--popup{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.apex-item-text apex-item-datepicker{',
'    background-color: #FFFFCC !important;',
'}',
'',
'#P34_SIMULATION_DATE_input{',
'     background-color: #FFFFCC !important;',
'}',
'',
'#P34_RAD_DETAIL_P1_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P1_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P2_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P2_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P3_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P3_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#report_image_report img{',
'	height: 150px;',
'    width:  100px;',
'',
'}',
'',
'#RAD_DETAIL .a-GV-status {',
'',
'    display: none;',
'',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'SUPPORT'
,p_last_upd_yyyymmddhh24miss=>'20240108173049'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96674995289358393)
,p_plug_name=>'Radiation Master'
,p_region_name=>'rad_master'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM.RADIATION_NO,',
'       RADIATION_DATE,',
'       MRNO,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'       RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'       HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'       PRIORITY,',
'       REMARKS,',
'       DOCTOR_ID,',
'       RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'       TREATMENT_INTENT_ID,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'       ICDNO,',
'       RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'       STATUS_REQUEST,',
'       SIGN_BY_REQUEST,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'       REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'       REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'       ANAESTHESIA,',
'       CHEMOTHERAPY,',
'       CHEMOTHERAPY_REMARKS,',
'       RM.SIMULATION_DATE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'       RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO) ACTIVE_REQUEST,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'       SIGN_BY_REQUEST || '')'' SIGN_BY,',
'       ROWID',
'  FROM RADIATION.RADIATION_MASTER RM',
' /*WHERE RM.RADIATION_NO = ''SKM001230000002''--RM.RADIATION_NO',
'   AND RM.MRNO LIKE CASE',
'         WHEN :P70_MRNO IS NOT NULL THEN',
'          ''%'' || :P70_MRNO',
'         ELSE',
'          RM.MRNO',
'       END',
'   AND RM.RADIOTHERAPY_TYPE = ''T''',
' ORDER BY RM.RADIATION_DATE DESC;*/',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P70_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(123149419756230395)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P70_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /*#image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } ',
'',
'     #image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
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
,p_ajax_items_to_submit=>'P70_MRNO'
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
 p_id=>wwv_flow_imp.id(93237990665062474)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93238354752062476)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93238711237062476)
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
 p_id=>wwv_flow_imp.id(123154061899230442)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) STATUS_DESC',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P70_MRNO',
'   --AND M.RADIATION_NO <> NVL(:P70_RADIATION_NO, ''$'')',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P70_MRNO,P70_RADIATION_NO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'History'
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
 p_id=>wwv_flow_imp.id(123883021945778832)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>123883021945778832
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123883150201778833)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123883304129778835)
,p_db_column_name=>'STATUS_DESC'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123883248730778834)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124973627173794682)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317695'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:STATUS_DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141541826406220327)
,p_plug_name=>'CT Details'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(174069467224745934)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>90
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(174312032408306014)
,p_plug_name=>'Radiotherapy Detail'
,p_region_name=>'RAD_DETAIL'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'       SIM_CT_ID,',
'       RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID),',
'       TREATMENT_TECHNIQUE_ID,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_TECHNIQUE_DESC(RD.TREATMENT_TECHNIQUE_ID),',
'       PLANNING,',
'       PLANNING_ID,',
'       RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING),',
'       NECK_POSITION,',
'       SETUP_POSITION,',
'       ARM_POSITION,',
'       P1_DOSE_FRACTION,',
'       P1_NO_OF_FRACTION,',
'       P2_DOSE_FRACTION,',
'       P2_NO_OF_FRACTION,',
'       P3_DOSE_FRACTION,',
'       P3_NO_OF_FRACTION,',
'       TREATMENT_LATER,',
'       ACTIVE,',
'       POSITION_INSTRUCTION,',
'       WFE_NO,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                       P_SITE_ID      => SITE_ID,',
'                                                       P_WFE_NO       => WFE_NO) EVENT_DESC,',
'       CT_INSTRUCTIONS,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                       P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                       P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                       P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RD.STATUS_ID) STATUS, ',
'       CONCURRENT_BRACHYTHERAPHY,',
'       PATH_REVIEWED,',
'       RAD_REVIEWED,',
'       TREATMENT_TYPE,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_TYPE(P_TREATMENT_TYPE => TREATMENT_TYPE) TREATMENT_TYPE_DESC,',
'       (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'       NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'       NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOTAL_DOSE,',
'       ROWID',
'',
'  FROM RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P70_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P70_PARAM_SITE_ID, RD.SITE_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P70_RADIATION_NO,P70_PARAM_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Detail'
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
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(188770533790249001)
,p_heading=>'Phase 1'
,p_label=>'Phase 1'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(188770694021249003)
,p_heading=>'Phase 2'
,p_label=>'Phase 2'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(188770752788249004)
,p_heading=>'Phase 3'
,p_label=>'Phase 3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131069036710608699)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>141
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312233581306016)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312267478306017)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Radiotherapy Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>10
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RS.DESCRIPTION, RS.SITE_ID ID',
'  FROM RADIATION.SITE RS',
' WHERE RS.ACTIVE = ''Y''',
' ORDER BY RS.DESCRIPTION',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SITEID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312419534306018)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312550513306019)
,p_name=>'SIM_CT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIM_CT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312623349306020)
,p_name=>'RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312751438306021)
,p_name=>'TREATMENT_TECHNIQUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TECHNIQUE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312808923306022)
,p_name=>'RADIATION.PKG_RADIATION.GET_TREATMENT_TECHNIQUE_DESC(RD.TREATMENT_TECHNIQUE_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_TREATMENT_TECHNIQUE_DESC(RD.TREATMENT_TECHNIQUE_ID)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174312857981306023)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313022442306024)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Planning Technique'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>2
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(35570505911688075)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313089250306025)
,p_name=>'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313247638306026)
,p_name=>'NECK_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313302895306027)
,p_name=>'SETUP_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313362412306028)
,p_name=>'ARM_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313459051306029)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(188770533790249001)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313634114306030)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(188770533790249001)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313659779306031)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(188770694021249003)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313809427306032)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(188770694021249003)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174313899105306033)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(188770752788249004)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314010146306034)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(188770752788249004)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314117398306035)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Treatment  Later'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314155193306036)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314345791306037)
,p_name=>'POSITION_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314370271306038)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314500486306039)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>141
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314602837306040)
,p_name=>'CT_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314694513306041)
,p_name=>'SETUP_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(174314772719306042)
,p_name=>'ARM_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188769698790248993)
,p_name=>'NECK_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188769761200248994)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'STATUS_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188769957555248996)
,p_name=>'CONCURRENT_BRACHYTHERAPHY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONCURRENT_BRACHYTHERAPHY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188770143157248997)
,p_name=>'PATH_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATH_REVIEWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188770155400248998)
,p_name=>'RAD_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_REVIEWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188770312878248999)
,p_name=>'TREATMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188770430297249000)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Treatment Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188771448789249010)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total  Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly="readonly;"'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'TOTAL_DOSE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P70_TOTAL_DOSE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(188772967937249026)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(174312090575306015)
,p_internal_uid=>174312090575306015
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>350
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(188775529420249739)
,p_interactive_grid_id=>wwv_flow_imp.id(174312090575306015)
,p_static_id=>'955714'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(188775730723249739)
,p_report_id=>wwv_flow_imp.id(188775529420249739)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93225158626069230)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(188772967937249026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131099835713905182)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(131069036710608699)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188776130316249744)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(174312233581306016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188777041181249748)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(174312267478306017)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>225
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188777853796249750)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(174312419534306018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188778779041249754)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(174312550513306019)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>218
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188779662304249766)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(174312623349306020)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188780620856249772)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(174312751438306021)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153.031
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188781551376249774)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(174312808923306022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188782451072249783)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(174312857981306023)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188783284760249785)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(174313022442306024)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188784176411249787)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(174313089250306025)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188785079301249789)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(174313247638306026)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188786026797249792)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(174313302895306027)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188786930787249798)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(174313362412306028)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188787778427249800)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(174313459051306029)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188788684215249805)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(174313634114306030)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188789554495249809)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(174313659779306031)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188790469685249811)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(174313809427306032)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188791357550249817)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(174313899105306033)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188792320033249819)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(174314010146306034)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188793155289249821)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(174314117398306035)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188794081379249824)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(174314155193306036)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188795011413249828)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(174314345791306037)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>228
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188795890406249831)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(174314370271306038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188796789177249833)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(174314500486306039)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188797686848249835)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(174314602837306040)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188798618700249838)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(174314694513306041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188799415148249840)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(174314772719306042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188800330356249843)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(188769698790248993)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188801165533249847)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(188769761200248994)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188803035436249852)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(188769957555248996)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188803947798249856)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(188770143157248997)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188804801098249859)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(188770155400248998)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188805675414249861)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(188770312878248999)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188806612488249864)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(188770430297249000)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189491951607568136)
,p_view_id=>wwv_flow_imp.id(188775730723249739)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(188771448789249010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188774033805249036)
,p_plug_name=>'Control'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93214920989062448)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_imp.id(188774033805249036)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93215765932062448)
,p_button_sequence=>51
,p_button_plug_id=>wwv_flow_imp.id(188774033805249036)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93216157740062449)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_imp.id(188774033805249036)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20645016945195716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93216982909062449)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(188774033805249036)
,p_button_name=>'CancelRequest'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Request'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-ban'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19790224708047839)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_imp.id(188774033805249036)
,p_button_name=>'TreatmentAbort'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Treatment Abort'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-ban'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19790383238047840)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_imp.id(188774033805249036)
,p_button_name=>'RefundPlanning'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refund Planning'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-money'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20645410220195716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_button_name=>'SignRadManager'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19790812455047845)
,p_name=>'P70_SUCCESS_MESSAGE'
,p_item_sequence=>250
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19790981789047846)
,p_name=>'P70_ERROR'
,p_item_sequence=>260
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96689619678358456)
,p_name=>'P70_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Radiation No:'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(96689718977358457)
,p_name=>'P70_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Radiation Date:'
,p_format_mask=>'DD-MON-RR HH24:MI'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(96689794481358458)
,p_name=>'P70_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'MRNO:'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(96689911989358459)
,p_name=>'P70_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Patient Name:'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(96689970175358460)
,p_name=>'P70_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Age:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(96690116195358461)
,p_name=>'P70_DISP_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Sex:'
,p_source=>'DISP_SEX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(96690173938358462)
,p_name=>'P70_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690249915358463)
,p_name=>'P70_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>204
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690384245358464)
,p_name=>'P70_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Consultant:'
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.NAME FULL_NAME,  DD.DOCTOR_ID',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID =',
'               SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'           AND L.LOCATION_ID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''LOCATION_ID''))',
' ORDER BY DOCTOR_ID',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>7
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690530040358465)
,p_name=>'P70_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>214
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690628376358466)
,p_name=>'P70_TREATMENT_INTENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Treatment Intent:'
,p_source=>'TREATMENT_INTENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TI.DESCRIPTION, TI.TREATMENT_INTENT_ID',
'  FROM RADIATION.TREATMENT_INTENT TI',
' WHERE TI.ACTIVE = ''Y''',
' ORDER BY TI.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>3
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(96690699879358467)
,p_name=>'P70_DISP_TREATMENT_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>224
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'DISP_TREATMENT_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690749741358468)
,p_name=>'P70_ICDNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Diagnosis:'
,p_source=>'ICDNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.ICDNO || '' - '' || I.LONG_DESC, I.ICDNO',
'  FROM DEFINITIONS.ICD I',
' WHERE I.ICDNO BETWEEN ''C00'' AND ''D49.99''',
'   AND I.ICD_CHAPTER_ID = ''002''',
'   AND I.ACTIVE = ''Y''',
'   AND I.LONG_DESC IS NOT NULL',
' ORDER BY I.LONG_DESC',
''))
,p_lov_display_null=>'YES'
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690878882358469)
,p_name=>'P70_DISP_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>284
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'DISP_DIAGNOSIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96690977112358470)
,p_name=>'P70_STATUS_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>234
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'STATUS_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691139918358471)
,p_name=>'P70_SIGN_BY_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>254
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'SIGN_BY_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691226885358472)
,p_name=>'P70_REQUEST_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Entered By:'
,p_source=>'REQUEST_ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691300087358473)
,p_name=>'P70_ENTERED_BY_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>244
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'ENTERED_BY_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691417834358474)
,p_name=>'P70_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>123
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_default=>'N'
,p_prompt=>'Anesthesia'
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691513646358475)
,p_name=>'P70_CHEMOTHERAPY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_default=>'N'
,p_prompt=>'Concurrent Chemotherapy'
,p_source=>'CHEMOTHERAPY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691601511358476)
,p_name=>'P70_CHEMOTHERAPY_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Chemotherapy Remarks:'
,p_source=>'CHEMOTHERAPY_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(96691728166358477)
,p_name=>'P70_SIMULATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Radiation Start Date:'
,p_source=>'SIMULATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691837390358478)
,p_name=>'P70_STATUS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Status:'
,p_source=>'STATUS_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96691955566358480)
,p_name=>'P70_SIGN_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>174
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Sign By:-'
,p_source=>'SIGN_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96692054760358481)
,p_name=>'P70_ACTIVE_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>264
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'ACTIVE_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96692149072358482)
,p_name=>'P70_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>274
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97049759358094593)
,p_name=>'P70_TXT_URL'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97050147008094597)
,p_name=>'P70_SIGN_STATUS'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100823949531951227)
,p_name=>'P70_RAD_DETAIL_SITE_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Site Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123948379473778984)
,p_name=>'P70_HISTORY_RADIATION_NO'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123951685342779017)
,p_name=>'P70_PARAM_SITE_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125824263085525284)
,p_name=>'P70_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125824331820525285)
,p_name=>'P70_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125827612099525317)
,p_name=>'P70_PARAM_RADIATION_NO'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130920849205333175)
,p_name=>'P70_PARAM_MRNO'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131085386106608780)
,p_name=>'P70_UNIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Unit:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(131085507284608781)
,p_name=>'P70_SERVICE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Service No:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(131085567435608782)
,p_name=>'P70_SERVICE_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Service Status:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(131085665486608783)
,p_name=>'P70_RANK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Rank:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(131085768871608784)
,p_name=>'P70_FORMATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_item_source_plug_id=>wwv_flow_imp.id(96674995289358393)
,p_prompt=>'Formation:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(131136371274608871)
,p_name=>'P70_USER_ROLE'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131137096092608878)
,p_name=>'P70_RADIATION_DETAIL_STATUS_ID'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131139214481608899)
,p_name=>'P70_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141578902275220453)
,p_name=>'P70_RAD_DETAIL_SIM_CT_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Simulation/CT'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_SIM_CT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SC.SIM_CT_ID,',
'       SC.DESCRIPTION,',
'       DECODE(SC.CREATININE_REQUIRED, ''Y'', ''Yes'', ''No'') CREATININE_REQUIRED',
'  FROM RADIATION.SIMULATION_CT SC',
' WHERE SC.ACTIVE = ''Y''',
' ORDER BY SC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141578976625220454)
,p_name=>'P70_RAD_DETAIL_SETUP_POSITION_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Setup Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_SETUP_POSITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''S''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141579078535220455)
,p_name=>'P70_RAD_DETAIL_ARM_POSITION_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Arm Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION DESCRIPTION, P.POSITION_PREFIX ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''P''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141579256476220456)
,p_name=>'P70_RAD_DETAIL_NECK_POSITION_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Neck Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_NECK_POSITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION, P.POSITION_ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''N''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141579417954220458)
,p_name=>'P70_RAD_DETAIL_POSITION_INSTRUCTION_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Positioning  Instructions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141579487229220459)
,p_name=>'P70_RAD_DETAIL_PATH_REVIEWED_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pathology Reviewed'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141579666409220460)
,p_name=>'P70_RAD_DETAIL_RAD_REVIEWED_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Radiology Reviewed'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141579794917220462)
,p_name=>'P70_RAD_DETAIL_CT_INSTRUCTIONS_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141541826406220327)
,p_prompt=>'Patient Preparation Instructions '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073224420745954)
,p_name=>'P70_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073252631745955)
,p_name=>'P70_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(174073345337745956)
,p_name=>'P70_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073502026745957)
,p_name=>'P70_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073625425745958)
,p_name=>'P70_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073708842745959)
,p_name=>'P70_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073748755745960)
,p_name=>'P70_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174073842953745961)
,p_name=>'P70_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174074012523745962)
,p_name=>'P70_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174074105696745963)
,p_name=>'P70_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174074586478745968)
,p_name=>'P70_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177798088127550334)
,p_name=>'P70_ERROR_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(174069467224745934)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188841266985249207)
,p_name=>'P70_TOTAL_DOSE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(196454030745996081)
,p_name=>'P70_MSG'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199100672998883877)
,p_name=>'P70_SIGN_CANCEL'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199103175161883902)
,p_name=>'P70_ALERT_TEXT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93278440208062575)
,p_name=>'PopulateRequestMaster'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93278911120062576)
,p_event_id=>wwv_flow_imp.id(93278440208062575)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT RM.RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         PRIORITY,',
'         REMARKS,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         TREATMENT_INTENT_ID,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'         REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'         REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'         ANAESTHESIA,',
'         CHEMOTHERAPY,',
'         CHEMOTHERAPY_REMARKS,',
'         RM.SIMULATION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO) ACTIVE_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY,',
'         ROWID',
'    INTO :P70_RADIATION_NO,',
'         :P70_RADIATION_DATE,',
'         :P70_MRNO,',
'         :P70_PATIENT_NAME,',
'         :P70_DISP_AGE,',
'         :P70_DISP_SEX,',
'         :P70_PRIORITY,',
'         :P70_REMARKS,',
'         :P70_DOCTOR_ID,',
'         :P70_DISP_DOCTOR,',
'         :P70_TREATMENT_INTENT_ID,',
'         :P70_DISP_TREATMENT_INTENT,',
'         :P70_ICDNO,',
'         :P70_DISP_DIAGNOSIS,',
'         :P70_STATUS_REQUEST,',
'         :P70_SIGN_BY_REQUEST,',
'         :P70_REQUEST_ENTERED_BY,',
'         :P70_ENTERED_BY_MRNO,',
'         :P70_ANAESTHESIA,',
'         :P70_CHEMOTHERAPY,',
'         :P70_CHEMOTHERAPY_REMARKS,',
'         :P70_SIMULATION_DATE,',
'         :P70_STATUS_DESC,',
'         :P70_ACTIVE_REQUEST,',
'         :P70_SIGN_BY,',
'         :P70_ROWID',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P70_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P70_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P70_MRNO IS NOT NULL THEN',
'            ''%'' || :P70_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''T''',
'   ORDER BY RM.RADIATION_DATE;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P70_PARAM_RADIATION_NO,P70_MRNO'
,p_attribute_03=>'P70_RADIATION_NO,P70_RADIATION_DATE,P70_MRNO,P70_PATIENT_NAME,P70_DISP_AGE,P70_DISP_SEX,P70_PRIORITY,P70_REMARKS,P70_DOCTOR_ID,P70_DISP_DOCTOR,P70_TREATMENT_INTENT_ID,P70_DISP_TREATMENT_INTENT,P70_ICDNO,P70_DISP_DIAGNOSIS,P70_STATUS_REQUEST,P70_SIGN_'
||'BY_REQUEST,P70_REQUEST_ENTERED_BY,P70_ENTERED_BY_MRNO,P70_ANAESTHESIA,P70_CHEMOTHERAPY,P70_CHEMOTHERAPY_REMARKS,P70_SIMULATION_DATE,P70_STATUS_DESC,P70_ACTIVE_REQUEST,P70_SIGN_BY,P70_ROWID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93279417259062576)
,p_event_id=>wwv_flow_imp.id(93278440208062575)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123149419756230395)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93279971360062577)
,p_event_id=>wwv_flow_imp.id(93278440208062575)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174312032408306014)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93280376253062577)
,p_name=>'ClearValues'
,p_event_sequence=>2
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93280887697062578)
,p_event_id=>wwv_flow_imp.id(93280376253062577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_TXT_URL'
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
 p_id=>wwv_flow_imp.id(93282627985062578)
,p_name=>'CloseDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93216157740062449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93283184274062578)
,p_event_id=>wwv_flow_imp.id(93282627985062578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93285364094062579)
,p_name=>'SetHistoryRadiationNo'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setradno'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93285872727062581)
,p_event_id=>wwv_flow_imp.id(93285364094062579)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_HISTORY_RADIATION_NO'
,p_attribute_01=>'this.triggeringElement.dataset[''radno'']'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93286294643062582)
,p_name=>'SetMRNORADMaster'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93286769920062582)
,p_event_id=>wwv_flow_imp.id(93286294643062582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'  L_MRNO       VARCHAR2(14);',
'BEGIN',
'  IF :P70_MRNO IS NOT NULL THEN',
'    BEGIN',
'      -- CALL THE PROCEDURE',
'      HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                   P_DISP_MRNO  => :P70_MRNO,',
'                   P_MRNO       => :P70_MRNO,',
'                   P_ALERT_TEXT => L_ALERT_TEXT,',
'                   P_STOP       => L_STOP);',
'    ',
'      IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      END IF;',
'    END;',
'  END IF;',
'',
'  IF :P70_MRNO IS NOT NULL AND :P70_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION',
'        INTO :P70_PATIENT_NAME, :P70_DISP_AGE, :P70_DISP_SEX',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P70_MRNO',
'         AND RP.SEX_ID = DS.SEX_ID;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Patient is not registered'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    END;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P70_MRNO'
,p_attribute_03=>'P70_MRNO,P70_PATIENT_NAME,P70_DISP_AGE,P70_DISP_SEX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19662252848361550)
,p_event_id=>wwv_flow_imp.id(93286294643062582)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123149419756230395)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93287107134062582)
,p_name=>'SetHistoryRadiationNo1'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(123154061899230442)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93291153039062584)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93287670726062582)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P70_HISTORY_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93288156553062582)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RADIATION_DATE,P70_MRNO,P70_PATIENT_NAME,P70_DISP_AGE,P70_DISP_SEX,P70_PRIORITY,P70_DOCTOR_ID,P70_DISP_DOCTOR,P70_TREATMENT_INTENT_ID,P70_DISP_TREATMENT_INTENT,P70_ICDNO,P70_DISP_DIAGNOSIS,P70_SIGN_BY_REQUEST,P70_REQUEST_ENTERED_BY,P70_ENTERED_BY'
||'_MRNO,P70_ANAESTHESIA,P70_CHEMOTHERAPY,P70_CHEMOTHERAPY_REMARKS,P70_SIMULATION_DATE,P70_STATUS_DESC,P70_ACTIVE_REQUEST,P70_SIGN_BY,P70_STATUS_REQUEST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93288686285062583)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RM.RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         PRIORITY,',
'         REMARKS,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         TREATMENT_INTENT_ID,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'         REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'         REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'         ANAESTHESIA,',
'         CHEMOTHERAPY,',
'         CHEMOTHERAPY_REMARKS,',
'         RM.SIMULATION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY',
'    INTO :P70_RADIATION_NO,',
'         :P70_RADIATION_DATE,',
'         :P70_MRNO,',
'         :P70_PATIENT_NAME,',
'         :P70_DISP_AGE,',
'         :P70_DISP_SEX,',
'         :P70_PRIORITY,',
'         :P70_REMARKS,',
'         :P70_DOCTOR_ID,',
'         :P70_DISP_DOCTOR,',
'         :P70_TREATMENT_INTENT_ID,',
'         :P70_DISP_TREATMENT_INTENT,',
'         :P70_ICDNO,',
'         :P70_DISP_DIAGNOSIS,',
'         :P70_STATUS_REQUEST,',
'         :P70_SIGN_BY_REQUEST,',
'         :P70_REQUEST_ENTERED_BY,',
'         :P70_ENTERED_BY_MRNO,',
'         :P70_ANAESTHESIA,',
'         :P70_CHEMOTHERAPY,',
'         :P70_CHEMOTHERAPY_REMARKS,',
'         :P70_SIMULATION_DATE,',
'         :P70_STATUS_DESC,',
'         :P70_ACTIVE_REQUEST,',
'         :P70_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P70_HISTORY_RADIATION_NO;',
'     /*AND RM.MRNO LIKE CASE',
'           WHEN :P70_MRNO IS NOT NULL THEN',
'            ''%'' || :P70_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''T'';*/',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P70_HISTORY_RADIATION_NO,P70_MRNO'
,p_attribute_03=>'P70_RADIATION_DATE,P70_MRNO,P70_PATIENT_NAME,P70_DISP_AGE,P70_DISP_SEX,P70_PRIORITY,P70_DOCTOR_ID,P70_DISP_DOCTOR,P70_TREATMENT_INTENT_ID,P70_DISP_TREATMENT_INTENT,P70_ICDNO,P70_DISP_DIAGNOSIS,P70_SIGN_BY_REQUEST,P70_REQUEST_ENTERED_BY,P70_ENTERED_BY'
||'_MRNO,P70_ANAESTHESIA,P70_CHEMOTHERAPY,P70_CHEMOTHERAPY_REMARKS,P70_SIMULATION_DATE,P70_STATUS_DESC,P70_ACTIVE_REQUEST,P70_SIGN_BY,P70_RADIATION_NO,P70_STATUS_REQUEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93289173834062583)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123149419756230395)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93289670336062583)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("refreshImage");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93290139014062583)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174312032408306014)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93290646304062584)
,p_event_id=>wwv_flow_imp.id(93287107134062582)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_DOCTOR_ID").disable();',
'apex.item("P70_TREATMENT_INTENT_ID").disable();',
'apex.item("P70_ICDNO").disable();',
'apex.item("P70_CHEMOTHERAPY").disable();',
'apex.item("P70_CHEMOTHERAPY_REMARKS").disable();',
'apex.item("P70_ANAESTHESIA").disable();',
'apex.item("P70_SIMULATION_DATE").disable();',
'',
'',
'apex.item("P70_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P70_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P70_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P70_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P70_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P70_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93291550453062584)
,p_name=>'RefreshImage'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'refreshImage'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93292088579062584)
,p_event_id=>wwv_flow_imp.id(93291550453062584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//////////////////////////////////////////////////////',
'',
'',
'var canvas = document.getElementById(''canvas'');',
'var context = canvas.getContext(''2d'');',
'',
'canvas.style.display = ''inline-block'';',
'',
'apex.server.process (''GetImage''',
'    ,{',
'          x01: apex.item("P70_MRNO").getValue()',
'    }',
'    ,{ dataType : ''json''',
'    //, async : false',
'    , success : function(pData)',
'        {',
'            const context = canvas.getContext(''2d'');',
'            context.clearRect(0, 0, canvas.width, canvas.height);',
'',
'            var image = new Image();',
'            image.onload = function() {',
'                context.fillStyle = "#000";',
'                context.fillRect(0,0,canvas.width,canvas.height);  ',
'                 context.drawImage(image,   0, 0, image.width,    image.height,     // source rectangle',
'                                            0, 0, canvas.width, canvas.height); // destination rectangle',
'               };',
'',
'               image.src = ''data:image/png;base64,'' +pData.photobase64;',
'         }',
'',
'    }',
'',
'    ).done( function(pData)',
'        {            ',
'            //alert(''Employee No ''+ pData.photobase64);            ',
'        }',
'    );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93293340678062588)
,p_name=>'insertRadiationDetail'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'insertRadiationDetail'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93293846800062588)
,p_event_id=>wwv_flow_imp.id(93293340678062588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P70_RAD_DETAIL_RADIATION_NO",',
'            "P70_RAD_DETAIL_ROW_ID",',
'            "P70_RAD_DETAIL_SITE_ID",',
'            "P70_RAD_DETAIL_PLANNING_ID",',
'            "P70_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'            "P70_RAD_DETAIL_P1_DOSE",',
'            "P70_RAD_DETAIL_P1_FRACTION",',
'            "P70_RAD_DETAIL_P2_DOSE",',
'            "P70_RAD_DETAIL_P2_FRACTION",',
'            "P70_RAD_DETAIL_P3_DOSE",',
'            "P70_RAD_DETAIL_P3_FRACTION",',
'            "P70_RAD_DETAIL_TOT_DOSE",',
'            "P70_RAD_TREATMENT_LATER",',
'            "P70_RAD_ACTIVE",',
'            "P70_RAD_DETAIL_EVENT_DESC",',
'            "P70_RAD_DETAIL_SIM_CT_ID",',
'            "P70_RAD_DETAIL_SETUP_POSITION",',
'            "P70_RAD_DETAIL_ARM_POSITION",',
'            "P70_RAD_DETAIL_NECK_POSITION",',
'            "P70_RAD_DETAIL_POSITION_INSTRUCTION",',
'            "P70_RAD_DETAIL_ANAESTHESIA",',
'            "P70_RAD_DETAIL_PATH_REVIEWED",',
'            "P70_RAD_DETAIL_RAD_REVIEWED",',
'            "P70_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'            "P70_RAD_DETAIL_CT_INSTRUCTIONS"',
'        ],',
'        x01: ''CREATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''RAD_DETAIL'').refresh();',
'                apex.theme.closeRegion(''radiationsite'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93294267096062588)
,p_name=>'insertRadiationAccessory'
,p_event_sequence=>190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'insertRadiationAccessory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93294742132062589)
,p_event_id=>wwv_flow_imp.id(93294267096062588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P70_RAD_ACC_ACCESSORY_ID",',
'            "P70_RAD_ACC_REMARKS",',
'            "P70_RAD_ACC_RADIATION_NO",',
'            "P70_RAD_DETAIL_PLANNING_ID",',
'            "P70_RAD_ACC_SITE_ID",',
'            "P70_RAD_ACC_SRNO",',
'            "P70_RAD_ACC_PHASE_NO",',
'            "P70_RAD_ACC_STATUS_ID"',
'        ],',
'        x01: ''CREATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''radiationAccessory'').refresh();',
'                apex.theme.closeRegion(''radiationAccessorySub'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93295171141062591)
,p_name=>'updateRadiationAccessory'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateRadiationAccessory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93295605588062591)
,p_event_id=>wwv_flow_imp.id(93295171141062591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P70_RAD_ACC_ACCESSORY_ID",',
'            "P70_RAD_ACC_REMARKS",',
'            "P70_RAD_ACC_RADIATION_NO",',
'            "P70_RAD_DETAIL_PLANNING_ID",',
'            "P70_RAD_ACC_SITE_ID",',
'            "P70_RAD_ACC_SRNO",',
'            "P70_RAD_ACC_PHASE_NO",',
'            "P70_RAD_ACC_STATUS_ID"',
'        ],',
'        x01: ''UPDATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''radiationAccessory'').refresh();',
'                apex.theme.closeRegion(''radiationAccessorySub'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93296062966062591)
,p_name=>'updateRadiationDetail'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateRadiationDetail'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93296597479062592)
,p_event_id=>wwv_flow_imp.id(93296062966062591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P70_RAD_DETAIL_RADIATION_NO",',
'            "P70_RAD_DETAIL_ROW_ID",',
'            "P70_RAD_DETAIL_SITE_ID",',
'            "P70_RAD_DETAIL_PLANNING_ID",',
'            "P70_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'            "P70_RAD_DETAIL_P1_DOSE",',
'            "P70_RAD_DETAIL_P1_FRACTION",',
'            "P70_RAD_DETAIL_P2_DOSE",',
'            "P70_RAD_DETAIL_P2_FRACTION",',
'            "P70_RAD_DETAIL_P3_DOSE",',
'            "P70_RAD_DETAIL_P3_FRACTION",',
'            "P70_RAD_DETAIL_TOT_DOSE",',
'            "P70_RAD_TREATMENT_LATER",',
'            "P70_RAD_ACTIVE",',
'            "P70_RAD_DETAIL_EVENT_DESC",',
'            "P70_RAD_DETAIL_SIM_CT_ID",',
'            "P70_RAD_DETAIL_SETUP_POSITION",',
'            "P70_RAD_DETAIL_ARM_POSITION",',
'            "P70_RAD_DETAIL_NECK_POSITION",',
'            "P70_RAD_DETAIL_POSITION_INSTRUCTION",',
'            "P70_RAD_DETAIL_ANAESTHESIA",',
'            "P70_RAD_DETAIL_PATH_REVIEWED",',
'            "P70_RAD_DETAIL_RAD_REVIEWED",',
'            "P70_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'            "P70_RAD_DETAIL_CT_INSTRUCTIONS"',
'        ],',
'        x01: ''UPDATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''RAD_DETAIL'').refresh();',
'                apex.theme.closeRegion(''radiationsite'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93296955762062592)
,p_name=>'SetRadiationDetailPK'
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(174312032408306014)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93297431847062592)
,p_event_id=>wwv_flow_imp.id(93296955762062592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P70_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P70_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
'$s(''P70_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93297806114062592)
,p_name=>'EnableDisableRADDetail'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(174312032408306014)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93298360409062593)
,p_event_id=>wwv_flow_imp.id(93297806114062592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_DOCTOR_ID").disable();',
'apex.item("P70_TREATMENT_INTENT_ID").disable();',
'apex.item("P70_ICDNO").disable();',
'apex.item("P70_CHEMOTHERAPY").disable();',
'apex.item("P70_CHEMOTHERAPY_REMARKS").disable();',
'apex.item("P70_ANAESTHESIA").disable();',
'apex.item("P70_SIMULATION_DATE").disable();',
'',
'',
'apex.item("P70_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P70_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P70_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P70_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P70_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P70_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93298726504062594)
,p_name=>'EnableDisableRADDetailClick'
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(174312032408306014)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93299296852062594)
,p_event_id=>wwv_flow_imp.id(93298726504062594)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_DOCTOR_ID").disable();',
'apex.item("P70_TREATMENT_INTENT_ID").disable();',
'apex.item("P70_ICDNO").disable();',
'apex.item("P70_CHEMOTHERAPY").disable();',
'apex.item("P70_CHEMOTHERAPY_REMARKS").disable();',
'apex.item("P70_ANAESTHESIA").disable();',
'apex.item("P70_SIMULATION_DATE").disable();',
'',
'',
'apex.item("P70_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P70_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P70_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P70_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P70_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P70_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93299632927062594)
,p_name=>'RefreshAccessoryRegion'
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(174312032408306014)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93325930619062609)
,p_name=>'Cancel'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93216982909062449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20634417921111515)
,p_event_id=>wwv_flow_imp.id(93325930619062609)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm you want to cancel request?'
,p_attribute_02=>'System Message'
,p_attribute_06=>'Yes'
,p_attribute_07=>'Cancel'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20634197360111512)
,p_event_id=>wwv_flow_imp.id(93325930619062609)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93326410168062609)
,p_event_id=>wwv_flow_imp.id(93325930619062609)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P70_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P70_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20634263677111513)
,p_event_id=>wwv_flow_imp.id(93325930619062609)
,p_event_result=>'TRUE'
,p_action_sequence=>12
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P70_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P70_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P70_DISP_MRNO    := (:P70_PATIENT_TYPE ||',
'                         LPAD(:P70_PATIENT_MRNO, 8, ''0''));',
'    :P70_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P70_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P70_PATIENT_MRNO,P70_PATIENT_TYPE,P70_DISP_MRNO,P70_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20634362786111514)
,p_event_id=>wwv_flow_imp.id(93325930619062609)
,p_event_result=>'TRUE'
,p_action_sequence=>22
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P70_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93305262274062598)
,p_name=>'Clear'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93215765932062448)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93305735918062598)
,p_event_id=>wwv_flow_imp.id(93305262274062598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174312032408306014)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93306278492062599)
,p_event_id=>wwv_flow_imp.id(93305262274062598)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141541826406220327)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93307283436062599)
,p_event_id=>wwv_flow_imp.id(93305262274062598)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RADIATION_NO,P70_RADIATION_DATE,P70_ICDNO,P70_TREATMENT_INTENT_ID,P70_SIMULATION_DATE,P70_DOCTOR_ID,P70_CHEMOTHERAPY,P70_CHEMOTHERAPY_REMARKS,P70_REQUEST_ENTERED_BY,P70_SIGN_BY_REQUEST,P70_STATUS_DESC,P70_PRIORITY,P70_REMARKS,P70_DISP_DOCTOR,P70_'
||'DISP_TREATMENT_INTENT,P70_STATUS_REQUEST,P70_ENTERED_BY_MRNO,P70_ANAESTHESIA,P70_SIGN_BY,P70_ACTIVE_REQUEST,P70_DISP_DIAGNOSIS,P70_HISTORY_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(93307737714062600)
,p_event_id=>wwv_flow_imp.id(93305262274062598)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123154061899230442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93308221017062600)
,p_event_id=>wwv_flow_imp.id(93305262274062598)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_DOCTOR_ID").disable();',
'apex.item("P70_TREATMENT_INTENT_ID").disable();',
'apex.item("P70_ICDNO").disable();',
'apex.item("P70_CHEMOTHERAPY").disable();',
'apex.item("P70_CHEMOTHERAPY_REMARKS").disable();',
'apex.item("P70_ANAESTHESIA").disable();',
'apex.item("P70_SIMULATION_DATE").disable();',
'',
'',
'apex.item("P70_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P70_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P70_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P70_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P70_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P70_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93309536410062601)
,p_name=>'SetTOTDose1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_P1_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93310007413062601)
,p_event_id=>wwv_flow_imp.id(93309536410062601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P70_RAD_DETAIL_P1_DOSE, 0) * NVL(:P70_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P2_DOSE, 0) * NVL(:P70_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P3_DOSE, 0) * NVL(:P70_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P70_RAD_DETAIL_P1_DOSE,P70_RAD_DETAIL_P1_FRACTION,P70_RAD_DETAIL_P2_DOSE,P70_RAD_DETAIL_P2_FRACTION,P70_RAD_DETAIL_P3_DOSE,P70_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93310480969062601)
,p_name=>'SetTOTDose2'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_P1_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93310936930062601)
,p_event_id=>wwv_flow_imp.id(93310480969062601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P70_RAD_DETAIL_P1_DOSE, 0) * NVL(:P70_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P2_DOSE, 0) * NVL(:P70_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P3_DOSE, 0) * NVL(:P70_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P70_RAD_DETAIL_P1_DOSE,P70_RAD_DETAIL_P1_FRACTION,P70_RAD_DETAIL_P2_DOSE,P70_RAD_DETAIL_P2_FRACTION,P70_RAD_DETAIL_P3_DOSE,P70_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93311332844062601)
,p_name=>'SetTOTDose3'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_P2_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93311873137062602)
,p_event_id=>wwv_flow_imp.id(93311332844062601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P70_RAD_DETAIL_P1_DOSE, 0) * NVL(:P70_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P2_DOSE, 0) * NVL(:P70_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P3_DOSE, 0) * NVL(:P70_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P70_RAD_DETAIL_P1_DOSE,P70_RAD_DETAIL_P1_FRACTION,P70_RAD_DETAIL_P2_DOSE,P70_RAD_DETAIL_P2_FRACTION,P70_RAD_DETAIL_P3_DOSE,P70_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93312240189062602)
,p_name=>'SetTOTDose4'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_P2_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93312704809062602)
,p_event_id=>wwv_flow_imp.id(93312240189062602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P70_RAD_DETAIL_P1_DOSE, 0) * NVL(:P70_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P2_DOSE, 0) * NVL(:P70_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P3_DOSE, 0) * NVL(:P70_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P70_RAD_DETAIL_P1_DOSE,P70_RAD_DETAIL_P1_FRACTION,P70_RAD_DETAIL_P2_DOSE,P70_RAD_DETAIL_P2_FRACTION,P70_RAD_DETAIL_P3_DOSE,P70_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93313164362062602)
,p_name=>'SetTOTDose5'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_P3_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93313677272062603)
,p_event_id=>wwv_flow_imp.id(93313164362062602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P70_RAD_DETAIL_P1_DOSE, 0) * NVL(:P70_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P2_DOSE, 0) * NVL(:P70_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P3_DOSE, 0) * NVL(:P70_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P70_RAD_DETAIL_P1_DOSE,P70_RAD_DETAIL_P1_FRACTION,P70_RAD_DETAIL_P2_DOSE,P70_RAD_DETAIL_P2_FRACTION,P70_RAD_DETAIL_P3_DOSE,P70_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93314087963062603)
,p_name=>'SetTOTDose6'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_P3_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93314556236062603)
,p_event_id=>wwv_flow_imp.id(93314087963062603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P70_RAD_DETAIL_P1_DOSE, 0) * NVL(:P70_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P2_DOSE, 0) * NVL(:P70_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P70_RAD_DETAIL_P3_DOSE, 0) * NVL(:P70_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P70_RAD_DETAIL_P1_DOSE,P70_RAD_DETAIL_P1_FRACTION,P70_RAD_DETAIL_P2_DOSE,P70_RAD_DETAIL_P2_FRACTION,P70_RAD_DETAIL_P3_DOSE,P70_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93314906110062603)
,p_name=>'SerumCreatinineRequired'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_RAD_DETAIL_SIM_CT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93315473071062603)
,p_event_id=>wwv_flow_imp.id(93314906110062603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93315986001062603)
,p_event_id=>wwv_flow_imp.id(93314906110062603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(100);',
'BEGIN',
'  L_ALERT_TEXT := NULL;',
'  L_STOP       := NULL;',
'  RADIATION.PKG_RADIATION.ORDER_SERUM_CRETININE(:P70_RAD_DETAIL_SIM_CT_ID,',
'                                                :GV_USER_MRNO,',
'                                                L_ALERT_TEXT,',
'                                                L_STOP);',
'',
'  IF L_STOP IS NOT NULL AND :P70_RAD_DETAIL_DML_STATUS = ''CREATE'' THEN',
'    :P70_SEURM_CREATININE_ALERT := L_ALERT_TEXT;',
'  ELSE',
'    :P70_SEURM_CREATININE_ALERT := NULL;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'  ',
'END;',
''))
,p_attribute_02=>'P70_RAD_DETAIL_SIM_CT_ID,P70_RAD_DETAIL_DML_STATUS'
,p_attribute_03=>'P70_SEURM_CREATININE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93316484943062604)
,p_event_id=>wwv_flow_imp.id(93314906110062603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P70_SEURM_CREATININE_ALERT.'
,p_attribute_06=>'Ok'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P70_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93316894167062604)
,p_name=>'SetRadiationDetails'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93317334019062605)
,p_event_id=>wwv_flow_imp.id(93316894167062604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P70_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P70_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
'$s(''P70_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
' $("#RAD_DETAIL .a-GV-table tbody .a-GV-row").css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93317746749062605)
,p_name=>'SetUserRole'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93318221753062605)
,p_event_id=>wwv_flow_imp.id(93317746749062605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_USER_ROLE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO);'
,p_attribute_07=>'GV_USER_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93318669809062605)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93319157343062605)
,p_event_id=>wwv_flow_imp.id(93318669809062605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P70_MRNO IS NOT NULL THEN',
'  ',
'    :P70_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P70_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P70_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P70_MRNO);',
'      :P70_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P70_MRNO);',
'      :P70_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P70_MRNO);',
'      :P70_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P70_MRNO);',
'      :P70_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P70_MRNO);',
'    ',
'    END IF;',
'  ',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P70_MRNO'
,p_attribute_03=>'P70_SYSTEM_CONSTANT_ID_428,P70_SERVICE_NO,P70_SERVICE_STATUS,P70_RANK,P70_FORMATION,P70_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93319683886062606)
,p_event_id=>wwv_flow_imp.id(93318669809062605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P70_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P70_SERVICE_NO").show();',
'    apex.item("P70_SERVICE_STATUS").show();',
'    apex.item("P70_RANK").show();',
'    apex.item("P70_FORMATION").show();',
'    apex.item("P70_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P70_SERVICE_NO").hide();',
'    apex.item("P70_SERVICE_STATUS").hide();',
'    apex.item("P70_RANK").hide();',
'    apex.item("P70_FORMATION").hide();',
'    apex.item("P70_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93320079117062606)
,p_name=>'RefreshRegion'
,p_event_sequence=>420
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93320562943062606)
,p_event_id=>wwv_flow_imp.id(93320079117062606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(123154061899230442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93321089847062606)
,p_event_id=>wwv_flow_imp.id(93320079117062606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174312032408306014)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93322313508062607)
,p_name=>'SetSingleRecordFields'
,p_event_sequence=>440
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(174312032408306014)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93322851275062608)
,p_event_id=>wwv_flow_imp.id(93322313508062607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P70_RAD_DETAIL_SIM_CT_ID_1'', _.RAD_DETAIL.SIM_CT_ID);',
'$s(''P70_RAD_DETAIL_SETUP_POSITION_1'', _.RAD_DETAIL.SETUP_POSITION);',
'$s(''P70_RAD_DETAIL_ARM_POSITION_1'', _.RAD_DETAIL.ARM_POSITION);',
'$s(''P70_RAD_DETAIL_NECK_POSITION_1'', _.RAD_DETAIL.NECK_POSITION);',
'$s(''P70_RAD_DETAIL_POSITION_INSTRUCTION_1'', _.RAD_DETAIL.POSITION_INSTRUCTION);',
'$s(''P70_RAD_DETAIL_PATH_REVIEWED_1'', _.RAD_DETAIL.PATH_REVIEWED);',
'$s(''P70_RAD_DETAIL_RAD_REVIEWED_1'', _.RAD_DETAIL.RAD_REVIEWED);',
'$s(''P70_RAD_DETAIL_CT_INSTRUCTIONS_1'', _.RAD_DETAIL.CT_INSTRUCTIONS);',
'$s(''P70_RAD_DETAIL_SITE_STATUS'', _.RAD_DETAIL.STATUS);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93323257921062608)
,p_name=>'PopulateDemographicsData'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93323703652062608)
,p_event_id=>wwv_flow_imp.id(93323257921062608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P70_MRNO IS NOT NULL OR :P70_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION, TO_CHAR(SYSDATE, ''DD-MON-RR HH24:MI'')',
'        INTO :P70_PATIENT_NAME, :P70_DISP_AGE, :P70_DISP_SEX, :P70_RADIATION_DATE',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P70_MRNO',
'         AND RP.SEX_ID = DS.SEX_ID;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Patient is not registered'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    END;',
'  END IF;'))
,p_attribute_02=>'P70_MRNO'
,p_attribute_03=>'P70_PATIENT_NAME,P70_DISP_AGE,P70_DISP_SEX,P70_RADIATION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93324101795062608)
,p_name=>'DisableFieldsButtonsRadMaster'
,p_event_sequence=>460
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93324669359062609)
,p_event_id=>wwv_flow_imp.id(93324101795062608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_DOCTOR_ID").disable();',
'apex.item("P70_TREATMENT_INTENT_ID").disable();',
'apex.item("P70_ICDNO").disable();',
'apex.item("P70_CHEMOTHERAPY").disable();',
'apex.item("P70_CHEMOTHERAPY_REMARKS").disable();',
'apex.item("P70_ANAESTHESIA").disable();',
'apex.item("P70_SIMULATION_DATE").disable();',
'',
'',
'apex.item("P70_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P70_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P70_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P70_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P70_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'apex.item("P70_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93325028668062609)
,p_name=>'Save'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93214920989062448)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93325563325062609)
,p_event_id=>wwv_flow_imp.id(93325028668062609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P70_RAD_DETAIL_PATH_REVIEWED_1").enable();',
'apex.item("P70_RAD_DETAIL_RAD_REVIEWED_1").enable();',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19790489713047841)
,p_name=>'ProcessTreatmentAbort'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19790224708047839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19790558349047842)
,p_event_id=>wwv_flow_imp.id(19790489713047841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Please confirm you want to abort treatment?',
''))
,p_attribute_02=>'System Message '
,p_attribute_06=>'Ok'
,p_attribute_07=>'Cancel'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19790671239047843)
,p_event_id=>wwv_flow_imp.id(19790489713047841)
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
'  RADIATION.PKG_REQUEST.RAD_TREATMENT_ABORT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_SIGN_BY           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_RADIATION_NO      => :P70_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P70_RAD_DETAIL_ND_SITE_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00060'',',
'                                            P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''TERMINAL''),',
'                                            P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P70_SUCCESS_MESSAGE := ''Treatment abort successfully'';',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'  ',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'                    SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                    $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                    '' ERROR MESSAGE: '' || SQLERRM;',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'END;',
''))
,p_attribute_02=>'P70_RAD_DETAIL_ND_RADIATION_NO,P70_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P70_ERROR,P70_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19791030799047847)
,p_name=>'SuccessAlertMessage'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_SUCCESS_MESSAGE'
,p_condition_element=>'P70_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19791166794047848)
,p_event_id=>wwv_flow_imp.id(19791030799047847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P70_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19791248723047849)
,p_name=>'Error'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_ERROR'
,p_condition_element=>'P70_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19791377089047850)
,p_event_id=>wwv_flow_imp.id(19791248723047849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P70_ERROR.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20633021548111501)
,p_name=>'ProcessRefundPlanning'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19790383238047840)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633163405111502)
,p_event_id=>wwv_flow_imp.id(20633021548111501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm you want to refund planning?'
,p_attribute_02=>'System Message'
,p_attribute_06=>'Ok'
,p_attribute_07=>'Cancel'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633269286111503)
,p_event_id=>wwv_flow_imp.id(20633021548111501)
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
'  RADIATION.PKG_REQUEST.REFUND_PLANNING(P_RADIATION_NO      => :P70_RAD_DETAIL_ND_RADIATION_NO,',
'                                        P_SITE_ID           => :P70_RAD_DETAIL_ND_SITE_ID,',
'                                        P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                           ''USER_MRNO''),',
'                                        P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                           ''ORGANIZATION_ID''),',
'                                        P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                           ''LOCATION_ID''),',
'                                        P_ORDER_LOCATION_ID => NVL(NVL(SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''ORDER_LOCATION_ID''),',
'                                                                       ''001''),',
'                                                                   :GV_ORDER_LOCATION_ID),',
'                                        P_OBJECT_CODE       => ''S18APX00060'',',
'                                        P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                           ''TERMINAL''),',
'                                        P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                        P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P70_SUCCESS_MESSAGE := ''Planning Refunded successfully'';',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'  ',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'                    SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                    $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                    '' ERROR MESSAGE: '' || SQLERRM;',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'END;',
''))
,p_attribute_02=>'P70_RAD_DETAIL_ND_RADIATION_NO,P70_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P70_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20633399836111504)
,p_name=>'SetMRNOLogin'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633464354111505)
,p_event_id=>wwv_flow_imp.id(20633399836111504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_NAME,P70_PASSWORD,P70_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633504867111506)
,p_event_id=>wwv_flow_imp.id(20633399836111504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P70_PATIENT_TYPE IS NOT NULL AND :P70_PATIENT_MRNO IS NOT NULL THEN',
'    :P70_DISP_MRNO := :P70_PATIENT_TYPE || LPAD(:P70_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P70_PATIENT_TYPE,P70_PATIENT_MRNO'
,p_attribute_03=>'P70_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633620494111507)
,p_event_id=>wwv_flow_imp.id(20633399836111504)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P70_ERROR := NULL;',
'  IF :P70_PATIENT_MRNO IS NOT NULL THEN',
'    :P70_DISP_MRNO := :P70_PATIENT_TYPE || LPAD(:P70_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P70_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P70_ERROR        := ''This is not an active employee.'';',
'      :P70_PATIENT_MRNO := NULL;',
'      :P70_DISP_MRNO    := NULL;',
'      :P70_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P70_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P70_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P70_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P70_PATIENT_MRNO,P70_PATIENT_TYPE'
,p_attribute_03=>'P70_DISP_MRNO,P70_ERROR,P70_NAME'
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
 p_id=>wwv_flow_imp.id(20633734820111508)
,p_event_id=>wwv_flow_imp.id(20633399836111504)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P70_NAME:= HIS.PKG_PATIENT.GET_PATIENT_NAME(:P70_DISP_MRNO);'
,p_attribute_02=>'P70_DISP_MRNO'
,p_attribute_03=>'P70_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20633889937111509)
,p_name=>'DASignRadiationManager '
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20645410220195716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20633971060111510)
,p_event_id=>wwv_flow_imp.id(20633889937111509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P70_TXT_ALERT_TEXT  := null;',
'  :P70_SUCCESS_MESSAGE := null;',
'  :P70_ERROR           := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P70_DISP_MRNO,',
'                                          :P70_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P70_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P70_VALIDATE'', ''Y'');',
'    :P70_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P70_DISP_MRNO,P70_PASSWORD'
,p_attribute_03=>'P70_ERROR,P70_SUCCESS_MESSAGE,P70_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20634077492111511)
,p_event_id=>wwv_flow_imp.id(20633889937111509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P70_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P70_RAD_DETAIL_ND_RADIATION_NO,',
'                                                     P_MRNO              => :P70_MRNO,',
'                                                     P_SITE_ID           => :P70_RAD_DETAIL_ND_SITE_ID,',
'                                                     P_USER_MRNO         => :P70_DISP_MRNO,',
'                                                     P_AUTHORIZED_USER   => ''N'',',
'                                                     P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''ORGANIZATION_ID''),',
'                                                     P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''LOCATION_ID''),',
'                                                     P_ORDER_LOCATION_ID => NVL(NVL(SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                ''ORDER_LOCATION_ID''),',
'                                                                                    :GV_ORDER_LOCATION_ID),',
'                                                                                ''001''),',
'                                                     P_OBJECT_CODE       => ''S18APX00060'',',
'                                                     P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''TERMINAL''),',
'                                                     P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                     P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P70_VALIDATE := ''N'';',
'      :P70_ERROR    := L_ALERT_TEXT;',
'    ELSE',
'      :P70_SUCCESS_MESSAGE := ''Request Cancelled successfully'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P70_RAD_DETAIL_ND_RADIATION_NO,P70_RAD_DETAIL_ND_SITE_ID,P70_DISP_MRNO,P70_VALIDATE,P70_MRNO'
,p_attribute_03=>'P70_ERROR,P70_SUCCESS_MESSAGE,P70_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P70_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20634530702111516)
,p_name=>'CloseDA'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20645016945195716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20634651469111517)
,p_event_id=>wwv_flow_imp.id(20634530702111516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(174069467224745934)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19786601344047803)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(174312032408306014)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiotherapy Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19786601344047803
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93278093034062574)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P70_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>93278093034062574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93276432223062572)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationMaster'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RM.RADIATION_NO,',
'         TO_CHAR(RADIATION_DATE,''DD-MON-RR HH24:MI''),',
'         MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         PRIORITY,',
'         REMARKS,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         TREATMENT_INTENT_ID,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'         REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'         REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'         ANAESTHESIA,',
'         CHEMOTHERAPY,',
'         CHEMOTHERAPY_REMARKS,',
'         RM.SIMULATION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY',
'    INTO :P70_RADIATION_NO,',
'         :P70_RADIATION_DATE,',
'         :P70_MRNO,',
'         :P70_PATIENT_NAME,',
'         :P70_DISP_AGE,',
'         :P70_DISP_SEX,',
'         :P70_PRIORITY,',
'         :P70_REMARKS,',
'         :P70_DOCTOR_ID,',
'         :P70_DISP_DOCTOR,',
'         :P70_TREATMENT_INTENT_ID,',
'         :P70_DISP_TREATMENT_INTENT,',
'         :P70_ICDNO,',
'         :P70_DISP_DIAGNOSIS,',
'         :P70_STATUS_REQUEST,',
'         :P70_SIGN_BY_REQUEST,',
'         :P70_REQUEST_ENTERED_BY,',
'         :P70_ENTERED_BY_MRNO,',
'         :P70_ANAESTHESIA,',
'         :P70_CHEMOTHERAPY,',
'         :P70_CHEMOTHERAPY_REMARKS,',
'         :P70_SIMULATION_DATE,',
'         :P70_STATUS_DESC,',
'         :P70_ACTIVE_REQUEST,',
'         :P70_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P70_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P70_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P70_MRNO IS NOT NULL THEN',
'            ''%'' || :P70_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''T''',
'   ORDER BY RM.RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>93276432223062572
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93277643166062574)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  P_BLOCK_DATA RADIATION.PKG_S18FRM00128.RAD_MASTER_DETAIL;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  BEGIN',
'    SELECT :P70_RAD_DETAIL_RADIATION_NO RADIATION_NO,',
'           :P70_RAD_DETAIL_SITE_ID SITE_ID,',
'           NULL DISP_SITE,',
'           :P70_RAD_DETAIL_SIM_CT_ID SIM_CT_ID,',
'           NULL DIPS_SIM_CT,',
'           :P70_RAD_DETAIL_TREATMENT_TECHNIQUE_ID TREATMENT_TECHNIQUE_ID,',
'           NULL DISP_TREATMENT_TECHNIQUE,',
'           (SELECT PLANNING_PREFIX',
'              FROM RADIATION.PLANNING',
'             WHERE PLANNING_ID = :P70_RAD_DETAIL_PLANNING_ID) PLANNING,',
'           :P70_RAD_DETAIL_PLANNING_ID PLANNING_ID,',
'           NULL DISP_PLANNING,',
'           :P70_RAD_DETAIL_NECK_POSITION NECK_POSITION,',
'           :P70_RAD_DETAIL_SETUP_POSITION SETUP_POSITION,',
'           :P70_RAD_DETAIL_ARM_POSITION ARM_POSITION,',
'           :P70_RAD_DETAIL_P1_DOSE P1_DOSE_FRACTION,',
'           :P70_RAD_DETAIL_P1_FRACTION P1_NO_OF_FRACTION,',
'           :P70_RAD_DETAIL_P2_DOSE P2_DOSE_FRACTION,',
'           :P70_RAD_DETAIL_P2_FRACTION P2_NO_OF_FRACTION,',
'           :P70_RAD_DETAIL_P3_DOSE P3_DOSE_FRACTION,',
'           :P70_RAD_DETAIL_P3_FRACTION P3_NO_OF_FRACTION,',
'           :P70_RAD_TREATMENT_LATER TREATMENT_LATER,',
'           :P70_RAD_ACTIVE ACTIVE,',
'           :P70_RAD_DETAIL_POSITION_INSTRUCTION POSITION_INSTRUCTION,',
'           NULL WFE_NO,',
'           NULL EVENT_DESC,',
'           :P70_RAD_DETAIL_CT_INSTRUCTIONS CT_INSTRUCTIONS,',
'           NULL SETUP_POSITION_DESC,',
'           NULL ARM_POSITION_DESC,',
'           NULL NECK_POSITION_DESC,',
'           :P70_RAD_DETAIL_STATUS_ID STATUS_ID,',
'           NULL STATUS_DESC,',
'           :P70_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY CONCURRENT_BRACHYTHERAPHY,',
'           :P70_RAD_DETAIL_PATH_REVIEWED PATH_REVIEWED,',
'           :P70_RAD_DETAIL_RAD_REVIEWED RAD_REVIEWED,',
'           NULL TREATMENT_TYPE,',
'           NULL TREATMENT_TYPE_DESC',
'      BULK COLLECT',
'      INTO P_BLOCK_DATA',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00128.INSERT_RADIATION_DETAIL(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'  ',
'    -- Update',
'    RADIATION.PKG_S18FRM00128.UPDATE_RADIATION_DETAIL(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00128.DELETE_RADIATION_DETAIL(P_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'', ''Radiotheraphy Site added successfully.'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>93277643166062574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93277297745062574)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationAccessory'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  P_BLOCK_DATA RADIATION.PKG_S18FRM00128.RAD_ACCESSORIES_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'  BEGIN',
'    SELECT :P70_RAD_ACC_RADIATION_NO,',
'           :P70_RAD_ACC_SITE_ID,',
'           :P70_RAD_ACC_SRNO,',
'           :P70_RAD_ACC_PHASE_NO,',
'           :P70_RAD_ACC_ACCESSORY_ID,',
'           NULL                      DISP_ACCESSORY,',
'           :P70_RAD_ACC_REMARKS,',
'           :P70_RAD_ACC_STATUS_ID,',
'           NULL                      STATUS_DESC',
'      BULK COLLECT',
'      INTO P_BLOCK_DATA',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00128.INSERT_RAD_ACCESSORIES(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'  ',
'    -- Update',
'    RADIATION.PKG_S18FRM00128.UPDATE_RAD_ACCESSORIES(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00128.DELETE_RAD_ACCESSORIES(P_BLOCK_DATA);',
'  END IF;',
'',
'  IF L_STATUS IN (''UPDATE'', ''CREATE'') THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', ''Accessory added/updated successfully.'');',
'    APEX_JSON.WRITE(''status'', ''success'');',
'    APEX_JSON.CLOSE_OBJECT;',
'  ELSE',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', ''Accessory deleted successfully.'');',
'    APEX_JSON.WRITE(''status'', ''success'');',
'    APEX_JSON.CLOSE_OBJECT;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>93277297745062574
);
wwv_flow_imp.component_end;
end;
/

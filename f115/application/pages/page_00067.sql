prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_name=>'RAD_QA_CHECKLIST'
,p_alias=>'RAD-QA-CHECKLIST'
,p_page_mode=>'MODAL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function checkGridAndRefresh() {',
'    var gridData = $("#radqachecklistdtl").find("tbody tr");',
'',
'    if (gridData.length === 0) {',
'        console.log(''Grid is empty. Refreshing...'');',
'        apex.region("radqachecklistdtl").refresh();',
'',
'        setTimeout(checkGridAndRefresh, 100);',
'    } else {',
'        console.log(''Grid contains data. No refresh needed.'');',
'    }',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P67_UNIT").hide();',
'apex.item("P67_SERVICE_NO").hide();',
'apex.item("P67_SERVICE_STATUS").hide();',
'apex.item("P67_RANK").hide();',
'apex.item("P67_FORMATION").hide();',
'',
'    /*function setFocusOnColumn() {',
'        var grid = apex.region("radchecklistdtl").widget().interactiveGrid("getViews", "grid");',
'        var model = grid.model;',
'',
'',
'        var selectedRow = model.getSelectedRecords()[0];',
'',
'        if (selectedRow) {',
'',
'            var rowIndex = model.getRowIndex(selectedRow);',
'',
'            grid.focusCell(rowIndex, "PARAMETER_VALUE");',
'        }',
'    }*/',
'',
'    // Call the function',
'    //setFocusOnColumn();',
'',
'',
'/*function setFocusOnColumn() {',
'    var grid = apex.region("radchecklistdtl").widget().interactiveGrid("getViews", "grid");',
'    var model = grid.model;',
'',
'',
'    var selectedRow = model.getSelectedRecords()[0];',
'',
'    if (selectedRow) {',
'',
'        var rowIndex = model.getRowIndex(selectedRow);',
'',
'        grid.focusCell(rowIndex, "PARAMETER_VALUE");',
'    }',
'}',
'',
'// Call the function',
'setFocusOnColumn();*/',
'',
'',
'',
'',
'$(document).keydown(function (e) {',
'',
'    var self = $('':focus''),',
'',
'        form = self.parents(''form:eq(0)''),',
'        focusable;',
'',
'',
'    focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'').filter('':visible'').filter(''[tabindex!=-1]'');',
'',
'    function enterKey() {',
'        if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) { // [Enter] key',
'',
'            // console.log(focusable);',
'            // console.log(self);',
'            if ($.inArray(self, focusable) && (!self.is(''a,button''))) {',
'',
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
'',
'',
'            return false;',
'        }',
'    }',
'',
'    if (e.shiftKey) { enterKey() } else {',
'',
'        enterKey();',
'',
'    }',
'});',
'',
'',
'setTimeout(function () {',
'    jsFormsBlock_pageReady();',
'',
'',
'}, 600);',
'',
'',
'//  jsFormsBlock_pageReady();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.a-GV-pageRange{',
'    display:none;',
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
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#radqachecklist .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#radqachecklistdtl .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#report_image_report img{',
'	height: 200px;',
'    width:  200px;',
'',
'}',
'',
'#P67_AGEGEDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P67_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'#P67_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'#P67_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'#P67_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'',
'',
'',
'#P67_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P67_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P67_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P67_QA_CHECKLIST_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P67_QA_CHECKLIST_REMARKS_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250115113132'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23726636642852554)
,p_plug_name=>'Control1'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25483591464655164)
,p_plug_name=>'padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56276268016074963)
,p_plug_name=>'Radiotherapy Weekly QA'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT RADIATION_NO,',
'          RADIATION_DATE,',
'          MRNO,',
'          RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'          RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'          HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'          DOCTOR_ID,',
'          RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'          RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'          ROWID',
'     FROM RADIATION.RADIATION_MASTER M',
'/*WHERE RADIATION_NO = NVL(:P67_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P67_MRNO IS NOT NULL THEN',
'             ''%'' || :P67_MRNO',
'            ELSE',
'             MRNO',
'          END',
'      AND RADIOTHERAPY_TYPE = ''T''',
'      AND M.STATUS_REQUEST = ''015''',
'      AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'    ORDER BY RADIATION_DATE DESC*/',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P67_MRNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30451456502896021)
,p_plug_name=>'Radiation QA Checklist '
,p_region_name=>'radqachecklist'
,p_parent_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       QA_CHECKLIST_ID,',
'       LAST_FRACTION_ID,',
'       WEEK_NO,',
'       WEEK_NO WEEK_DESCRIPTION,',
'       REMARKS,',
'       SIGN_BY,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY) SIGN_BY_NAME,',
'       SIGN_DATE,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RQ.STATUS_ID) STATUS_DESC,',
'       ROWID',
'  FROM RADIATION.RAD_QA_CHECKLIST RQ',
' WHERE RADIATION_NO = :P67_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P67_RAD_DETAIL_ND_SITE_ID',
'   AND STATUS_ID <> ''248''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(66085830640456436)
,p_ajax_items_to_submit=>'P67_RAD_DETAIL_ND_RADIATION_NO,P67_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation QA Checklist '
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18170276606317239)
,p_name=>'QA_CHECKLIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_CHECKLIST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18170373317317240)
,p_name=>'LAST_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18170492446317241)
,p_name=>'WEEK_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(18170585393317242)
,p_name=>'WEEK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DESCRIPTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Week </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30452174345896028)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>5
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30452295884896029)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>6
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30452320630896030)
,p_name=>'SIGN_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Sign By</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>7
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30452768730896034)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30452909758896035)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(66086206404456439)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30452975074896036)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(66086277924456440)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30453346336896040)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30453430749896041)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30454294192896049)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(30451517870896022)
,p_internal_uid=>30451517870896022
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(30889421065409979)
,p_interactive_grid_id=>wwv_flow_imp.id(30451517870896022)
,p_static_id=>'124821'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(30889658704409979)
,p_report_id=>wwv_flow_imp.id(30889421065409979)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18596941016679156)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18170276606317239)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18597816944679158)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18170373317317240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18598715533679161)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(18170492446317241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18599650028679163)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18170585393317242)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30894708567409990)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(30452174345896028)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30895607557409992)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(30452295884896029)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30896431094409994)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(30452320630896030)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30900080533410001)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30452768730896034)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30900928042410003)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(30452909758896035)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30901889654410005)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(30452975074896036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30905447154410012)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(30453346336896040)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30906377617410014)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(30453430749896041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30913582209410028)
,p_view_id=>wwv_flow_imp.id(30889658704409979)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(30454294192896049)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30454933077896056)
,p_plug_name=>'Radiation QA Checklist '
,p_parent_plug_id=>wwv_flow_imp.id(30451456502896021)
,p_region_css_classes=>'js-dialog-size900x600'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68442987147439627)
,p_plug_name=>'QA Checklist Remarks'
,p_region_name=>'radfollowup1'
,p_parent_plug_id=>wwv_flow_imp.id(30451456502896021)
,p_region_css_classes=>'js-dialog-size900x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66085830640456436)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_parent_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'       PLANNING,',
'       RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'       P1_DOSE_FRACTION,',
'       P1_NO_OF_FRACTION,',
'       P2_DOSE_FRACTION,',
'       P2_NO_OF_FRACTION,',
'       P3_DOSE_FRACTION,',
'       P3_NO_OF_FRACTION,',
'       TREATMENT_LATER,',
'       ACTIVE,',
'       WFE_NO,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                       P_SITE_ID      => SITE_ID,',
'                                                       P_WFE_NO       => WFE_NO) EVENT_DESC,',
'       PLANNING_ID,',
'       RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                   P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'       RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                  P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'       RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                 P_SITE_ID      => RD.SITE_ID) -',
'       RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                       P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'       ROWID',
'  FROM RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P67_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P67_PARAM_SITE_ID, RD.SITE_ID)',
'   AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                             P_SITE_ID             => RD.SITE_ID,',
'                                             P_PERFORMANCE_TYPE_ID => ''018'') = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P67_PARAM_SITE_ID,P67_RADIATION_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Site(s)'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(33409796471607836)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66086206404456439)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66086277924456440)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66086320310456441)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Radiotherapy <br>Site</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66086492180456442)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66086551025456443)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Planning<br>Technique</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
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
 p_id=>wwv_flow_imp.id(66086685948456444)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66086774421456445)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(66086857286456446)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(66086954115456447)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(66087025477456448)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(66087184740456449)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(66087221440456450)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br>Later </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66087383156456451)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Active</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66087496498456452)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(66087521941456453)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Status </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66087645708456454)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
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
 p_id=>wwv_flow_imp.id(66087799404456455)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose <br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66087864638456456)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66087992643456457)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(66085960278456437)
,p_internal_uid=>66085960278456437
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(66690561766614787)
,p_interactive_grid_id=>wwv_flow_imp.id(66085960278456437)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(66690746948614789)
,p_report_id=>wwv_flow_imp.id(66690561766614787)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33778539956971370)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(33409796471607836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66691131623614790)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(66086206404456439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66692096080614793)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(66086277924456440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66693004738614796)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(66086320310456441)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>230
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66693892763614798)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(66086492180456442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66694720336614801)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(66086551025456443)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66695697312614806)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(66086685948456444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66696577778614809)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(66086774421456445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66697488829614816)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(66086857286456446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66698362307614818)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(66086954115456447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66699260736614821)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(66087025477456448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66700196391614824)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(66087184740456449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66701055381614826)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(66087221440456450)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66701970545614830)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(66087383156456451)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66702839251614834)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(66087496498456452)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66703784546614837)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(66087521941456453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66704624044614840)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(66087645708456454)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66705514435614843)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(66087799404456455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66706495251614850)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(66087864638456456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66707344312614852)
,p_view_id=>wwv_flow_imp.id(66690746948614789)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(66087992643456457)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(66085430880456432)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14537985437908249)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P67_MRNO;',
''))
,p_display_condition_type=>'NEVER'
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
,p_ajax_items_to_submit=>'P67_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(181340859045776604)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(181340912528776605)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>20
,p_column_heading=>'Mrno'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(181341061530776606)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>30
,p_column_heading=>'File Blob'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66088035284456458)
,p_plug_name=>'QA Parameter Value'
,p_region_name=>'radqachecklistdtl'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RQC.RADIATION_NO,',
'       RQC.SITE_ID,',
'       RQC.QA_CHECKLIST_ID,',
'       RQC.PARAMETER_ID,',
'       QA.DESCRIPTION PARAMETER_DESC,',
'       RQC.PARAMETER_VALUE,',
'       QA.VALUE_TYPE,',
'       RQC.REMARKS,',
'       RQC.ROWID',
'  FROM RADIATION.RAD_QA_CHECKLIST_DTL RQC, RADIATION.QA_PARAMETERS QA',
' WHERE RADIATION_NO = :P67_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P67_RAD_DETAIL_ND_SITE_ID',
'   AND QA_CHECKLIST_ID = :P67_RAD_ND_QA_CHECKLIST_ID',
'   AND QA.PARAMETER_ID = RQC.PARAMETER_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(30451456502896021)
,p_ajax_items_to_submit=>'P67_RAD_DETAIL_ND_RADIATION_NO,P67_RAD_DETAIL_ND_SITE_ID,P67_RAD_ND_QA_CHECKLIST_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'QA Parameter Value'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18171200070317249)
,p_name=>'QA_CHECKLIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_CHECKLIST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(18170276606317239)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18171372142317250)
,p_name=>'PARAMETER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18672127674588001)
,p_name=>'PARAMETER_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<span style="color: darkblue;"><b>Parameter</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18672270478588002)
,p_name=>'PARAMETER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Parameter <br>Value</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>60
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Yes,No;No,N/A;N/A'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18672330028588003)
,p_name=>'VALUE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE_TYPE'
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
 p_id=>wwv_flow_imp.id(66088216548456460)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(30452909758896035)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66088323054456461)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(30452975074896036)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66741640217686517)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Remarks</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold disable-keyboard-focus'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(66741792777686518)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(66088157157456459)
,p_internal_uid=>66088157157456459
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
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
,p_fixed_header_max_height=>500
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(66747660963687521)
,p_interactive_grid_id=>wwv_flow_imp.id(66088157157456459)
,p_static_id=>'483403'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(66747829148687521)
,p_report_id=>wwv_flow_imp.id(66747660963687521)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18678435833588584)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(18171200070317249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18679346160588588)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(18171372142317250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18680257562588592)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18672127674588001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>395.906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18681136914588594)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18672270478588002)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.27099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18682003053588596)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(18672330028588003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66748378079687524)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(66088216548456460)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66749225273687526)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(66088323054456461)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66754623469687550)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(66741640217686517)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100.29888835906982
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66755594757687553)
,p_view_id=>wwv_flow_imp.id(66747829148687521)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(66741792777686518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(172413282341677255)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18410006470528624)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(23726636642852554)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423175166493299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18410499048528624)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(23726636642852554)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(294519392586558202)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(23726636642852554)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18410890144528624)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(23726636642852554)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18408004820528620)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(23726636642852554)
,p_button_name=>'NewQAChecklist'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New QA Checklist'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18408469599528620)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(23726636642852554)
,p_button_name=>'DisposeQAChecklist'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose QA Checklist'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18988970163127036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(172413282341677255)
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
 p_id=>wwv_flow_imp.id(18989388838127037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_button_name=>'SignQAChecklist'
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
 p_id=>wwv_flow_imp.id(18673090073588010)
,p_name=>'P67_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>160
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23788952290852601)
,p_name=>'P67_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23789026513852602)
,p_name=>'P67_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23789650237852608)
,p_name=>'P67_RAD_ND_QA_CHECKLIST_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23790375150852615)
,p_name=>'P67_SIGN_STATUS'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24609431865822070)
,p_name=>'P67_TXT_URL'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26056190783417410)
,p_name=>'P67_RAD_QA_DML_STATUS'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26056610947417415)
,p_name=>'P67_PARAM_SR_NO'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28578378684162672)
,p_name=>'P67_PARAM_MRNO'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30491603395896087)
,p_name=>'P67_QA_CHECKLIST_REMARKS_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(30454933077896056)
,p_prompt=>'<b><p style="color:#00008B">QA Checklist Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56323105909075003)
,p_name=>'P67_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56323202495075004)
,p_name=>'P67_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66130650096456455)
,p_name=>'P67_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
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
 p_id=>wwv_flow_imp.id(66130763183456456)
,p_name=>'P67_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66130883346456457)
,p_name=>'P67_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66130963318456458)
,p_name=>'P67_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66131003389456459)
,p_name=>'P67_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66131161151456460)
,p_name=>'P67_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66131299226456461)
,p_name=>'P67_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66131517894456464)
,p_name=>'P67_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66131687486456465)
,p_name=>'P67_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'Unit:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(66131745857456466)
,p_name=>'P67_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'Service No:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(66131813100456467)
,p_name=>'P67_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'Service Status:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(66131936267456468)
,p_name=>'P67_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'Rank:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(66132053797456469)
,p_name=>'P67_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_item_source_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_prompt=>'Formation:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(66148591567456487)
,p_name=>'P67_PARAM_SITE_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68483784376439678)
,p_name=>'P67_QA_CHECKLIST_REMARKS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(68442987147439627)
,p_prompt=>'<b><p style="color:#00008B">QA Checklist  11 Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68508297791439704)
,p_name=>'P67_ALERT_TEXT'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172417128615677275)
,p_name=>'P67_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
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
 p_id=>wwv_flow_imp.id(172417156826677276)
,p_name=>'P67_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(172417249532677277)
,p_name=>'P67_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_prompt=>'<b><p style="color:#00008B">Name:</p></b>'
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
 p_id=>wwv_flow_imp.id(172417406221677278)
,p_name=>'P67_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b> '
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172417529620677279)
,p_name=>'P67_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172417613037677280)
,p_name=>'P67_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172417652950677281)
,p_name=>'P67_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172417747148677282)
,p_name=>'P67_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172417916718677283)
,p_name=>'P67_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172418009891677284)
,p_name=>'P67_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172418490673677289)
,p_name=>'P67_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172418598357677290)
,p_name=>'P67_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176141992322481655)
,p_name=>'P67_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(172413282341677255)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178918571776255002)
,p_name=>'P67_RAD_PLAN_CHECK_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178920311008255020)
,p_name=>'P67_SUCCESS_ALERT'
,p_item_sequence=>180
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178920889204255025)
,p_name=>'P67_ERROR_ALERT'
,p_item_sequence=>190
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(243709246597107701)
,p_name=>'P67_AGEGEDER'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(56276268016074963)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(243709537365107704)
,p_name=>'P67_STATUS_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30451456502896021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18476966693528670)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66085830640456436)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18477408531528671)
,p_event_id=>wwv_flow_imp.id(18476966693528670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P67_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P67_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'/*model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    apex.item("P67_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i], "RADIATION_NO"));',
'    apex.item("P67_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i], "SITE_ID"));',
'}*/',
'apex.region("radqachecklist").refresh();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18482094191528672)
,p_name=>'Sign'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18410006470528624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673217949588012)
,p_event_id=>wwv_flow_imp.id(18482094191528672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_PASSWORD,P67_ERROR,P67_SUCCESS_MSG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673395260588013)
,p_event_id=>wwv_flow_imp.id(18482094191528672)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P67_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'  :P67_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'  :P67_DISP_MRNO    := (:P67_PATIENT_TYPE ||',
'                       LPAD(:P67_PATIENT_MRNO, 8, ''0''));',
'  :P67_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P67_DISP_MRNO);',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P67_PATIENT_MRNO,P67_PATIENT_TYPE,P67_DISP_MRNO,P67_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673423301588014)
,p_event_id=>wwv_flow_imp.id(18482094191528672)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P67_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18483945694528673)
,p_name=>'DASelectionChangeFollowUpDTL'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(66088035284456458)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18484498942528673)
,p_event_id=>wwv_flow_imp.id(18483945694528673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P67_RAD_FOLLOWUP_DTL_TOXICITY_ID'', _.radfollowupdtl.TOXICITY_ID);',
'',
'',
'var widget = apex.region(''radfollowupdtl'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var toxicityid = model.getValue(record, ''TOXICITY_ID'');',
'    $s(''P67_RAD_FOLLOWUP_DTL_TOXICITY_ID'', toxicityid);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18484821333528673)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18410890144528624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18485339653528674)
,p_event_id=>wwv_flow_imp.id(18484821333528673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18487597506528675)
,p_name=>'DANewQAChecklist'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18408004820528620)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18488078328528675)
,p_event_id=>wwv_flow_imp.id(18487597506528675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P67_SUCCESS_MSG").setValue('''');',
'apex.item("P67_ERROR").setValue('''');',
'',
'apex.server.process("ProcessCreateQAChecklist",',
'    {',
'        pageItems: [',
'            "P67_RAD_DETAIL_ND_RADIATION_NO",',
'            "P67_RAD_DETAIL_ND_SITE_ID",',
'            "P67_QA_CHECKLIST_REMARKS_1",',
'            "P67_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P67_SUCCESS_MSG").setValue(obj.message);',
'                apex.region("radqachecklist").refresh();',
'',
'',
'            } else {',
'                apex.item("P67_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
'); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(243709469552107703)
,p_event_id=>wwv_flow_imp.id(18487597506528675)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#radqachecklist'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18488489277528675)
,p_name=>'DADisposeQAChecklist'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18408469599528620)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(243709315565107702)
,p_event_id=>wwv_flow_imp.id(18488489277528675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Please confirm if you want to dispose of this checklist?</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P67_STATUS_DESC'
,p_client_condition_expression=>'Signed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240597831522194645)
,p_event_id=>wwv_flow_imp.id(18488489277528675)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P67_SUCCESS_MSG").setValue('''');',
'apex.item("P67_ERROR").setValue('''');',
'',
'apex.region(''radqachecklistdtl'').widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'',
'apex.server.process("ProcessDisposeQAChecklist",',
'    {',
'        pageItems: [',
'            "P67_RAD_DETAIL_ND_RADIATION_NO",',
'            "P67_RAD_DETAIL_ND_SITE_ID",',
'            "P67_RAD_ND_QA_CHECKLIST_ID",',
'            "P67_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P67_SUCCESS_MSG").setValue(obj.message);',
'                apex.region("radqachecklist").refresh();',
'',
'            } else {',
'                apex.item("P67_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
'); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18490271781528675)
,p_name=>'UpdateRadiationFollowUp'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateRadiationFollowUp'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18490717785528676)
,p_event_id=>wwv_flow_imp.id(18490271781528675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationFollowUp",',
'    {',
'        pageItems: ["P67_RADIATION_NO_1",',
'            "P67_SITE_ID_1",',
'            "P67_FOLLOWUP_ID",',
'            "P67_LAST_FRACTION_ID",',
'            "P67_WEEK_NO_1",',
'            "P67_SCHEDULE_SRNO_1",',
'            "P67_CHEMO_LAST_CYCLE",',
'            "P67_CHEMO_NEXT_CYCLE",',
'            "P67_ORAL_CHEMO_PRESCRIBED",',
'            "P67_REMARKS",',
'            "P67_SIGN_BY_1",',
'            "P67_SIDE_EFFECTS",',
'            "P67_DIET",',
'            "P67_GENERAL_MEASURE",',
'            "P67_PERSONAL_HYGIENE",',
'            "P67_FU_INSTRUCTIONS",',
'            "P67_PAT_FAMILY_EDU",',
'            "P67_PAT_FAMILY_EDU_REMARKS",',
'            "P67_OC_SERIAL_NO_1"',
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
'    ',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''radfollowup'').refresh();',
'                apex.theme.closeRegion(''radfollowup1'');',
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
 p_id=>wwv_flow_imp.id(18491176228528676)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18491646106528676)
,p_event_id=>wwv_flow_imp.id(18491176228528676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// if ($v("P67_RAD_FOLLOWUP_MASTER_ND_STATUS_ID")==''015'')',
'// {',
'//     apex.item("sign_btn").disable();',
'//     apex.item("save").disable();',
'//     apex.item("btnFollowupMasterSave").disable();',
'// }',
'// else',
'// {',
'//     apex.item("sign_btn").enable();',
'//     apex.item("save").enable();',
'//     apex.item("btnFollowupMasterSave").enable();',
'   ',
'// }',
'',
'',
'',
'if (($v("P67_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "015") || ($v("P67_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "009")) {',
'    apex.item("btnFollowupMasterSave").disable();',
'    apex.item("P67_LAST_FRACTION_ID").disable();',
'    apex.item("P67_WEEK_DESCRIPTION").disable();',
'    apex.item("P67_STATUS_DESC").disable();',
'    apex.item("P67_SIGN_DATE").disable();',
'    apex.item("P67_SIGN_BY_NAME").disable();',
'  //  apex.item("P67_CHEMO_LAST_CYCLE").disable();',
'    apex.item("P67_ORAL_CHEMO_PRESCRIBED").disable();',
'    apex.item("P67_CHEMO_NEXT_CYCLE").disable();',
'    apex.item("P67_REMARKS").disable();',
'    apex.item("P67_GENERAL_MEASURE").disable();',
'    apex.item("P67_FU_INSTRUCTIONS").disable();',
'    apex.item("P67_DIET").disable();',
'    apex.item("P67_PERSONAL_HYGIENE").disable();',
'    apex.item("P67_PAT_FAMILY_EDU_REMARKS").disable();',
'    apex.item("P67_RADIATION_NO_1").disable();',
'    apex.item("P67_SITE_ID_1").disable();',
'    apex.item("P67_WEEK_NO_1").disable();',
'    apex.item("P67_SCHEDULE_SRNO_1").disable();',
'    apex.item("P67_OC_SERIAL_NO_1").disable();',
'    apex.item("P67_SIGN_BY_1").disable();',
'    apex.item("P67_FOLLOWUP_ID").disable();',
'    apex.item("P67_SIDE_EFFECTS").disable();',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'}',
'else {',
'    apex.item("btnFollowupMasterSave").enable();',
'    apex.item("P67_LAST_FRACTION_ID").enable();',
'    apex.item("P67_WEEK_DESCRIPTION").enable();',
'    apex.item("P67_STATUS_DESC").enable();',
'    apex.item("P67_SIGN_DATE").enable();',
'    apex.item("P67_SIGN_BY_NAME").enable();',
'    apex.item("P67_CHEMO_LAST_CYCLE").enable();',
'    apex.item("P67_ORAL_CHEMO_PRESCRIBED").enable();',
'    apex.item("P67_CHEMO_NEXT_CYCLE").enable();',
'    apex.item("P67_REMARKS").enable();',
'    apex.item("P67_GENERAL_MEASURE").enable();',
'    apex.item("P67_FU_INSTRUCTIONS").enable();',
'    apex.item("P67_DIET").enable();',
'    apex.item("P67_PERSONAL_HYGIENE").enable();',
'    apex.item("P67_PAT_FAMILY_EDU_REMARKS").enable();',
'    apex.item("P67_RADIATION_NO_1").enable();',
'    apex.item("P67_SITE_ID_1").enable();',
'    apex.item("P67_WEEK_NO_1").enable();',
'    apex.item("P67_SCHEDULE_SRNO_1").enable();',
'    apex.item("P67_OC_SERIAL_NO_1").enable();',
'    apex.item("P67_SIGN_BY_1").enable();',
'    apex.item("P67_FOLLOWUP_ID").enable();',
'    apex.item("P67_SIDE_EFFECTS").enable();',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18492083659528676)
,p_name=>'DAQAChecklist'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(30451456502896021)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18492582560528677)
,p_event_id=>wwv_flow_imp.id(18492083659528676)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P67_RAD_ND_QA_CHECKLIST_ID'', _.radqachecklist.QA_CHECKLIST_ID);',
'$s(''P67_SIGN_STATUS'', _.radqachecklist.STATUS_ID);',
'$s(''P67_RAD_PLAN_CHECK_ID'', _.radqachecklist.QA_CHECKLIST_ID);',
'$s(''P67_QA_CHECKLIST_REMARKS_1'', _.radqachecklist.REMARKS);',
'$s(''P67_STATUS_DESC'', _.radqachecklist.STATUS_DESC);',
'',
'apex.region(''radqachecklistdtl'').widget().interactiveGrid(''getViews'').grid.model.clearChanges();',
'',
'//apex.region("radqachecklistdtl").refresh();',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18672505477588005)
,p_event_id=>wwv_flow_imp.id(18492083659528676)
,p_event_result=>'TRUE'
,p_action_sequence=>12
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P67_SIGN_STATUS") === "015") || ($v("P67_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'    apex.item("P67_QA_CHECKLIST_REMARKS_1").disable();',
'',
'',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'    apex.item("P67_QA_CHECKLIST_REMARKS_1").enable();',
'',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18672687309588006)
,p_name=>'EnableDisableDA'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18672710764588007)
,p_event_id=>wwv_flow_imp.id(18672687309588006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P67_SIGN_STATUS") === "015") || ($v("P67_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673196488588011)
,p_event_id=>wwv_flow_imp.id(18672687309588006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P67_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'',
'    apex.item("P67_SERVICE_NO").show();',
'    apex.item("P67_SERVICE_STATUS").show();',
'    apex.item("P67_RANK").show();',
'    apex.item("P67_FORMATION").show();',
'    apex.item("P67_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P67_SERVICE_NO").hide();',
'    apex.item("P67_SERVICE_STATUS").hide();',
'    apex.item("P67_RANK").hide();',
'    apex.item("P67_FORMATION").hide();',
'    apex.item("P67_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18672851239588008)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18672997762588009)
,p_event_id=>wwv_flow_imp.id(18672851239588008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P67_MRNO IS NOT NULL THEN',
'  ',
'    :P67_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P67_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P67_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P67_MRNO);',
'      :P67_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P67_MRNO);',
'      :P67_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P67_MRNO);',
'      :P67_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P67_MRNO);',
'      :P67_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P67_MRNO);',
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
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18673569913588015)
,p_name=>'SetMRNO'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673669275588016)
,p_event_id=>wwv_flow_imp.id(18673569913588015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_NAME,P67_PASSWORD,P67_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673701510588017)
,p_event_id=>wwv_flow_imp.id(18673569913588015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P67_PATIENT_TYPE IS NOT NULL AND :P67_PATIENT_MRNO IS NOT NULL THEN',
'    :P67_DISP_MRNO := :P67_PATIENT_TYPE || LPAD(:P67_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P67_PATIENT_TYPE,P67_PATIENT_MRNO'
,p_attribute_03=>'P67_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673853432588018)
,p_event_id=>wwv_flow_imp.id(18673569913588015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P67_ERROR := NULL;',
'  IF :P67_PATIENT_MRNO IS NOT NULL THEN',
'    :P67_DISP_MRNO := :P67_PATIENT_TYPE || LPAD(:P67_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P67_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P67_ERROR        := ''This is not an active employee.'';',
'      :P67_PATIENT_MRNO := NULL;',
'      :P67_DISP_MRNO    := NULL;',
'      :P67_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P67_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P67_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P67_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P67_PATIENT_MRNO,P67_PATIENT_TYPE'
,p_attribute_03=>'P67_DISP_MRNO,P67_ERROR,P67_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18673925320588019)
,p_event_id=>wwv_flow_imp.id(18673569913588015)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P67_ERROR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P67_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18674044533588020)
,p_event_id=>wwv_flow_imp.id(18673569913588015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P67_DISP_MRNO);'
,p_attribute_02=>'P67_DISP_MRNO'
,p_attribute_03=>'P67_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18674187383588021)
,p_name=>'DASuccessMessage'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_SUCCESS_MSG'
,p_condition_element=>'P67_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270729608172288323)
,p_event_id=>wwv_flow_imp.id(18674187383588021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("radqachecklist").refresh();',
'',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 200);',
'',
'',
'//apex.region("radqachecklistdtl").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18674214504588022)
,p_event_id=>wwv_flow_imp.id(18674187383588021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P67_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18674313202588023)
,p_name=>'DAError'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_ERROR'
,p_condition_element=>'P67_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18674427220588024)
,p_event_id=>wwv_flow_imp.id(18674313202588023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P67_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18674535036588025)
,p_name=>'SignQAChecklist'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18989388838127037)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18674613307588026)
,p_event_id=>wwv_flow_imp.id(18674535036588025)
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
'  :P67_TXT_ALERT_TEXT := null;',
'  :P67_SUCCESS_MSG    := null;',
'  :P67_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P67_DISP_MRNO,',
'                                          :P67_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P67_ERROR := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P67_VALIDATE'', ''N'');',
'    RETURN;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P67_VALIDATE'', ''Y'');',
'    :P65_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P67_DISP_MRNO,P67_PASSWORD'
,p_attribute_03=>'P67_TXT_ALERT_TEXT,P67_SUCCESS_MSG,P67_ERROR,P67_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18674743324588027)
,p_event_id=>wwv_flow_imp.id(18674535036588025)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P67_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00143.SIGN_RAD_QA_CHECKLIST(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P67_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P67_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_QA_CHECKLIST_ID   => :P67_RAD_ND_QA_CHECKLIST_ID,',
'                                                      P_SIGN_BY           => :P67_DISP_MRNO,',
'                                                      P_SCHEDULE_SRNO     => NULL,',
'                                                      P_SCHEDULE_EVENT_ID => NULL,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00057'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P67_VALIDATE := ''N'';',
'      :P67_ERROR    := L_ALERT_TEXT;',
'      RETURN; ',
'    ELSE',
'      :P67_SUCCESS_MSG := ''The Radiotherapy QA Checklist has been signed successfully'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P67_RAD_DETAIL_ND_RADIATION_NO,P67_RAD_DETAIL_ND_SITE_ID,P67_RAD_PLAN_CHECK_ID,P67_DISP_MRNO,P67_VALIDATE'
,p_attribute_03=>'P67_ERROR,P67_SUCCESS_MSG,P67_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18675027450588030)
,p_event_id=>wwv_flow_imp.id(18674535036588025)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radqachecklist'').refresh();',
'apex.item("sign_btn").disable();',
'apex.item("save").disable();',
'apex.theme.closeRegion(''sign'');',
'apex.region(''radqachecklist'').refresh();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18674829143588028)
,p_name=>'CloseDA'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18988970163127036)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18674939768588029)
,p_event_id=>wwv_flow_imp.id(18674829143588028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(172413282341677255)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(240598014182194647)
,p_name=>'DAParameterValue'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(66088035284456458)
,p_triggering_element=>'PARAMETER_VALUE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PARAMETER_VALUE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240598130856194648)
,p_event_id=>wwv_flow_imp.id(240598014182194647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("radqachecklistdtl").widget().interactiveGrid("getViews").grid.view$',
'',
'view$.grid("gotoCell", view$.grid("getActiveRecordId"), "PARAMETER_VALUE");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(240598243395194649)
,p_name=>'GetAgeGender'
,p_event_sequence=>270
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240598335011194650)
,p_event_id=>wwv_flow_imp.id(240598243395194649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      declare',
'       begin',
'        :P67_AGEGEDER:= HIS.PKG_PATIENT.GET_GENDER(:P67_MRNO);',
'       end;'))
,p_attribute_02=>'P67_MRNO'
,p_attribute_03=>'P67_AGEGEDER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(244041574375017021)
,p_name=>'EnterKeyPassword'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178921292869255029)
,p_event_id=>wwv_flow_imp.id(244041574375017021)
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
'  :P67_TXT_ALERT_TEXT := null;',
'  :P67_SUCCESS_MSG    := null;',
'  :P67_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P67_DISP_MRNO,',
'                                          :P67_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P67_ERROR := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P67_VALIDATE'', ''N'');',
'    RETURN;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P67_VALIDATE'', ''Y'');',
'    :P65_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P67_DISP_MRNO,P67_PASSWORD'
,p_attribute_03=>'P67_TXT_ALERT_TEXT,P67_SUCCESS_MSG,P67_ERROR,P67_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178921330939255030)
,p_event_id=>wwv_flow_imp.id(244041574375017021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P67_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00143.SIGN_RAD_QA_CHECKLIST(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P67_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P67_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_QA_CHECKLIST_ID   => :P67_RAD_ND_QA_CHECKLIST_ID,',
'                                                      P_SIGN_BY           => :P67_DISP_MRNO,',
'                                                      P_SCHEDULE_SRNO     => NULL,',
'                                                      P_SCHEDULE_EVENT_ID => NULL,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00057'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P67_VALIDATE := ''N'';',
'      :P67_ERROR    := L_ALERT_TEXT;',
'      RETURN; ',
'    ELSE',
'      :P67_SUCCESS_MSG := ''The Radiotherapy QA Checklist has been signed successfully'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P67_RAD_DETAIL_ND_RADIATION_NO,P67_RAD_DETAIL_ND_SITE_ID,P67_RAD_PLAN_CHECK_ID,P67_DISP_MRNO,P67_VALIDATE'
,p_attribute_03=>'P67_ERROR,P67_SUCCESS_MSG,P67_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178921432299255031)
,p_event_id=>wwv_flow_imp.id(244041574375017021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radqachecklist'').refresh();',
'apex.item("sign_btn").disable();',
'apex.item("save").disable();',
'apex.theme.closeRegion(''sign'');',
'apex.region(''radqachecklist'').refresh();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P67_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(243709782176107706)
,p_name=>'DASvaeGridData'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18410499048528624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178920275164255019)
,p_event_id=>wwv_flow_imp.id(243709782176107706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P67_SUCCESS_ALERT").setValue('''');',
'apex.item("P67_ERROR_ALERT").setValue('''');',
'',
'apex.region(''radqachecklist'').widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'apex.region(''radqachecklistdtl'').widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'',
'let successCount = 0;',
'let errorOccurred = false;',
'let errorMessage = '''';',
'',
'function processQAChecklistMaster() {',
'    apex.server.process("ProcessQAChecklistMaster", {',
'        pageItems: [',
'            "P67_RAD_DETAIL_ND_RADIATION_NO",',
'            "P67_RAD_DETAIL_ND_SITE_ID",',
'            "P67_RAD_ND_QA_CHECKLIST_ID",',
'            "P67_QA_CHECKLIST_REMARKS_1"',
'        ]',
'    }, {',
'        dataType: ''text'',',
'        success: handleMasterSuccess,',
'        error: handleError',
'    });',
'}',
'',
'function processQACheckDetail(vParameterId, vParameterDescription, vParameterValue, vRemarks, vValueType) {',
'    apex.server.process("ProcessQAChecklistDetail", {',
'        x01: vParameterId,',
'        x02: vParameterDescription,',
'        x03: vParameterValue,',
'        x04: vRemarks,',
'        x05: vValueType,',
'        pageItems: [',
'            "P67_RAD_DETAIL_ND_RADIATION_NO",',
'            "P67_RAD_DETAIL_ND_SITE_ID",',
'            "P67_RAD_ND_QA_CHECKLIST_ID"',
'        ]',
'    }, {',
'        dataType: ''text'',',
'        success: handleDetailSuccess,',
'        error: handleError',
'    });',
'}',
'',
'function handleDetailSuccess(data) {',
'    let obj;',
'    try {',
'        obj = JSON.parse(data);',
'    } catch (e) {',
'        console.error("Invalid JSON response:", data);',
'        errorOccurred = true;',
'        errorMessage += "An error occurred while processing detail: " + data + ''\n'';',
'        return;',
'    }',
'',
'    if (obj.status === "success") {',
'        successCount++;',
'    } else {',
'        errorOccurred = true;',
'        errorMessage += obj.message + ''\n'';',
'    }',
'}',
'',
'function handleMasterSuccess(data) {',
'',
'    if (successCount > 0) {',
'        let successMessage = ''Radiotherapy QA checklist saved successfully'';',
'        apex.item("P67_SUCCESS_ALERT").setValue(successMessage);',
'    }',
'',
'    if (errorOccurred) {',
'        apex.item("P67_ERROR_ALERT").setValue(errorMessage);',
'    }',
'}',
'',
'function handleError(jqXHR, textStatus, errorThrown) {',
'    errorOccurred = true;',
'    apex.message.alert("An error occurred: " + textStatus);',
'}',
'',
'function processRecords() {',
'    var model = apex.region("radqachecklistdtl").widget().interactiveGrid("getViews", "grid").model;',
'',
'    model.forEach(function (r) {',
'        var vParameterId = model.getValue(r, "PARAMETER_ID");',
'        var vParameterDescription = model.getValue(r, "PARAMETER_DESC");',
'        var vParameterValue = model.getValue(r, "PARAMETER_VALUE").v;',
'        var vRemarks = model.getValue(r, "REMARKS");',
'        var vValueType = model.getValue(r, "VALUE_TYPE");',
'',
'        processQACheckDetail(vParameterId, vParameterDescription, vParameterValue, vRemarks, vValueType);',
'    });',
'',
'    processQAChecklistMaster();',
'}',
'',
'processRecords();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178920410017255021)
,p_name=>'DASuccessAlert'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_SUCCESS_ALERT'
,p_condition_element=>'P67_SUCCESS_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(178920590942255022)
,p_event_id=>wwv_flow_imp.id(178920410017255021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P67_SUCCESS_ALERT.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178920922130255026)
,p_name=>'DAErrorAlert'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_ERROR_ALERT'
,p_condition_element=>'P67_ERROR_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178921049021255027)
,p_event_id=>wwv_flow_imp.id(178920922130255026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P67_ERROR_ALERT.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(270731957825288346)
,p_name=>'DANdQAChecklist'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_RAD_ND_QA_CHECKLIST_ID'
,p_condition_element=>'P67_RAD_ND_QA_CHECKLIST_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270732025589288347)
,p_event_id=>wwv_flow_imp.id(270731957825288346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'setTimeout(checkGridAndRefresh, 100);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294519453426558203)
,p_name=>'DARefresh'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(294519392586558202)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294519584124558204)
,p_event_id=>wwv_flow_imp.id(294519453426558203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const gridIds = [',
'    ''raddetail'',',
'    ''radqachecklist'',',
'    ''radqachecklistdtl''',
'];',
'',
'',
'function refreshGrid(gridId, callback) {',
'    apex.region(gridId).refresh();',
'    setTimeout(callback, 400);',
'}',
'',
'',
'function refreshGridsSequentially() {',
'    refreshGrid(gridIds[0], function () {',
'        refreshGrid(gridIds[1], function () {',
'            refreshGrid(gridIds[2], function () {',
'            });',
'        });',
'    });',
'}',
'',
'refreshGridsSequentially();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18474465163528668)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadWeeklyQA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P67_MRNO := NVL(:P67_MRNO, :P67_PARAM_MRNO);',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P67_RADIATION_NO,',
'         :P67_RADIATION_DATE,',
'         :P67_MRNO,',
'         :P67_PATIENT_NAME,',
'         :P67_DISP_AGE,',
'         :P67_DISP_GENDER,',
'         :P67_DOCTOR_ID,',
'         :P67_DISP_DOCTOR,',
'         :P67_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P67_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>18474465163528668
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(240597945227194646)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateQAChecklist'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00143.NEW_QA_CHECKLIST(P_ORGANIZATION_ID   =>  SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P67_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P67_RAD_DETAIL_ND_SITE_ID,',
'                                             P_REMARKS           => :P67_QA_CHECKLIST_REMARKS_1,',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                             P_OBJECT_CODE       => ''S18APX00057'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
'IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''QA Checklist Plan has been created successfully'');',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>240597945227194646
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(240597732863194644)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeQAChecklist'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00143.DISPOSE_RAD_QA_CHECKLIST(P_ORGANIZATION_ID   =>  SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P67_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P67_RAD_DETAIL_ND_SITE_ID,',
'                                              P_QA_CHECKLIST_ID   => :P67_RAD_ND_QA_CHECKLIST_ID,',
'                                              P_SIGN_BY           => :GV_USER_MRNO,',
'                                           ',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                             P_OBJECT_CODE       => ''S18APX00057'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
' ',
'',
'',
'IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''QA Checklist Plan has been successfully disposed of'');',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
' ',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>240597732863194644
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18469574878528663)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessQAChecklistMaster'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT        NUMBER := 0;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  EX_CUSTOM EXCEPTION;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'  IF :P67_RAD_ND_QA_CHECKLIST_ID IS NOT NULL THEN',
'  ',
'    BEGIN',
'      FOR REC IN (SELECT ROWID',
'                    FROM RADIATION.RAD_QA_CHECKLIST',
'                   WHERE RADIATION_NO = :P67_RAD_DETAIL_ND_RADIATION_NO',
'                     AND SITE_ID = :P67_RAD_DETAIL_ND_SITE_ID',
'                     AND QA_CHECKLIST_ID = :P67_RAD_ND_QA_CHECKLIST_ID',
'                     FOR UPDATE NOWAIT) LOOP',
'      ',
'        UPDATE RADIATION.RAD_QA_CHECKLIST',
'           SET REMARKS = :P67_QA_CHECKLIST_REMARKS_1',
'         WHERE ROWID = REC.ROWID;',
'      END LOOP;',
'    EXCEPTION',
'      WHEN EX_CUSTOM THEN',
'        RAISE;',
'      WHEN OTHERS THEN',
'        L_ALERT_TEXT := SYS.DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        RAISE EX_CUSTOM;',
'    END;',
'  ',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Record saved successfully...'
,p_internal_uid=>18469574878528663
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18170188318317238)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_region_id=>wwv_flow_imp.id(66088035284456458)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessQAChecklistDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_QA_DTL_TAB RADIATION.PKG_S18FRM00143.RAD_QA_DTL_TAB;',
'  L_ALERT_TEXT     VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_PARAMETER_ID    RADIATION.RAD_QA_CHECKLIST_DTL.PARAMETER_ID%TYPE := APEX_APPLICATION.G_x01;',
'  L_PARAMETER_DESC  RADIATION.QA_PARAMETERS.DESCRIPTION%TYPE := APEX_APPLICATION.G_x02;',
'  L_PARAMETER_VALUE RADIATION.RAD_PLAN_CHECK_DTL.PARAMETER_VALUE%TYPE := APEX_APPLICATION.G_x03;',
'  L_REMARKS         RADIATION.RAD_PLAN_CHECK_DTL.REMARKS%TYPE := APEX_APPLICATION.G_x04;',
'  L_VALUE_TYPE      RADIATION.PARAMETER_VALUE.VALUE_TYPE%TYPE := APEX_APPLICATION.G_x05;',
'BEGIN',
'  BEGIN',
'    SELECT :P67_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P67_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P67_RAD_ND_QA_CHECKLIST_ID     QA_CHECKLIST_ID,',
'           L_PARAMETER_ID                  PARAMETER_ID,',
'           L_PARAMETER_DESC                PARAMETER_DESC,',
'           L_PARAMETER_VALUE               PARAMETER_VALUE,',
'           L_VALUE_TYPE                    VALUE_TYPE,',
'           L_REMARKS                       REMARKS',
'      BULK COLLECT',
'      INTO L_RAD_QA_DTL_TAB',
'      FROM DUAL;',
'  EXCEPTION',
'  ',
'    WHEN OTHERS THEN',
'      L_ALERT_TEXT := SQLERRM;',
'      RAISE EX_CUSTOM;',
'  END;',
'',
'  -----------',
'  -- Update',
'  -----------',
'  BEGIN',
'    RADIATION.PKG_S18FRM00143.UPDATE_RAD_QA_DTL(L_RAD_QA_DTL_TAB);',
'  EXCEPTION',
'  ',
'    WHEN OTHERS THEN',
'      L_ALERT_TEXT := SQLERRM;',
'      RAISE EX_CUSTOM;',
'  END;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Record saved successfully...'
,p_internal_uid=>18170188318317238
);
wwv_flow_imp.component_end;
end;
/

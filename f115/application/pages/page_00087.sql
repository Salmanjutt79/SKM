prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_name=>'RAD_HDR_CT_PERFORMANCE_RAD_MENU'
,p_alias=>'RAD-HDR-CT-PERFORMANCE-RAD-MENU'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function resize() {',
'    if ($(window).width() < 739) {',
'        $("#default").toggleClass(''classold classnew'');',
'    }',
'    else {',
'        $("#default").toggleClass(''classold classold'');',
'    }',
'}',
'$(window).on("resize", resize);',
'',
'',
'',
'',
'',
'jsFormsBlock_pageReady({});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P65_UNIT").hide();',
'apex.item("P65_SERVICE_NO").hide();',
'apex.item("P65_SERVICE_STATUS").hide();',
'apex.item("P65_RANK").hide();',
'apex.item("P65_FORMATION").hide();',
'',
'// $(document).keydown(function (e) {',
'//     // Set self as the current item in focus',
'//     var self = $('':focus''),',
'//         // Set the form by the current item in focus',
'//         form = self.parents(''form:eq(0)''),',
'//         focusable;',
'',
'//     // Array of Indexable/Tab-able items',
'//     focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'').filter('':visible'').filter(''[tabindex!=-1]'');',
'',
'//    function enterKey() {',
'//         if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) { // [Enter] key',
'//             // If not a regular hyperlink/button/textarea',
'//             // console.log(focusable);',
'//             // console.log(self);',
'//             if ($.inArray(self, focusable) && (!self.is(''a,button''))) {',
'//                 // Then prevent the default [Enter] key behaviour from submitting the form',
'//                 e.preventDefault();',
'//             }',
'//             var a = 0;',
'//             if ($("#" + self.attr(''id'') + "_lov_btn").hasClass("a-Button--popupLOV")) {',
'//                 a = a + 1;',
'//             } else {',
'//                 a = a + 1;',
'//             }',
'//             focusable.eq(focusable.index(self) + (e.shiftKey ? -1 : a)).focus();',
'',
'//             // Otherwise follow the link/button as by design, or put new line in textarea',
'//             // Focus on the next item (either previous or next depending on shift)',
'',
'//             return false;',
'//         }',
'//     }',
'//     // We need to capture the [Shift] key and check the [Enter] key either way.',
'//     if (e.shiftKey) { enterKey() } else {',
'',
'//         enterKey();',
'',
'//     }',
'// });'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov {',
'    background-color: #FFFFCC !important;',
'}',
'',
'.a-GV-pageRange {',
'    display: none;',
'}',
'',
'.apex-item-datepicker--popup {',
'    background-color: #FFFFCC !important;',
'}',
'',
'.apex-item-text apex-item-datepicker {',
'    background-color: #FFFFCC !important;',
'}',
'',
'#raddetail .a-GV-status {',
'    display: none;',
'}',
'',
'#radplanchecklist .a-GV-status {',
'    display: none;',
'}',
'',
'#radcheckdtl .a-GV-status {',
'    display: none;',
'}',
'',
'/*#radchecklistdtl .a-GV-table td, #radchecklistdtl .a-GV-table th {',
'    white-space: normal;',
'}*/',
'',
'#radct .a-GV-status {',
'    display: none;',
'}',
'',
'#report_image_report img {',
'    height: 100px;',
'    width: 100px;',
'}',
'',
'#P87_MRNO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PATIENT_NAME {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_DISP_AGE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_DISP_GENDER {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_RADIATION_NO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_RADIATION_DATE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_DISP_DOCTOR {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_DISP_INTENT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_ANESTHESIA {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_REQ_REMARKS {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_CONTRAST {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PATIENT_TYPE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PATIENT_MRNO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_NAME {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PASSWORD {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PATIENT_TYPE_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PATIENT_MRNO_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_NAME_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P87_PASSWORD_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'',
'',
'#radHistory .a-GV-status {',
'    display: none;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'1700'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20241007175947'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185234468215087934)
,p_plug_name=>'<b><p style="color:#8B0000">Anesthesia</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>7
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185437022363912226)
,p_plug_name=>'Radiation CT Performance(s)'
,p_region_name=>'radct'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>7
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RD.RADIATION_NO,',
'       RD.SITE_ID,',
'       SIM_CT_ID,',
'       RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID) DIPS_SIM_CT,',
'       NECK_POSITION,',
'       SETUP_POSITION,',
'       ARM_POSITION,',
'       POSITION_INSTRUCTION,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                       P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                       P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                       P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'       RC.CT_SRNO,',
'       RC.PHASE_NO,',
'       RC.TRANS_DATE,',
'       RC.OC_SERIAL_NO,',
'       NVL(RC.SCHEDULE_SRNO, :P87_SCHEDULE_SRNO),',
'       TO_DATE(TO_CHAR(NVL(RC.SCHEDULE_DATE,',
'                   (SELECT S.VISIT_DATE',
'                      FROM RADIATION.SCHEDULE S',
'                     WHERE S.SR_NO = :P87_SCHEDULE_SRNO)),',
'               ''DD-MM-RRRR HH24:MI''), ''DD-MM-RRRR HH24:MI'') SCHEDULE_DATE,',
'       RC.PERFORMANCE_ID,',
'       NVL(RC.STATUS_ID, ''020'') STATUS_ID,',
'       RC.SIGN_BY_1,',
'       RC.SIGN_BY_2,',
'       TO_CHAR(RC.SIGN_DATE, ''DD-MM-RR HH24:MI'') SIGN_DATE,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_1) DISP_NAME_SIGN_BY_1,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_2) DISP_NAME_SIGN_BY_2,',
'       NVL(RC.CONTRAST, ''N'') CONTRAST,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(NVL(RC.STATUS_ID,',
'                                                          ''020'')) STATUS_DESC,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(NVL(RC.STATUS_ID,',
'                                                          ''020'')) DISP_STATUS_DESC,',
'       RC.ROWID',
'  FROM RADIATION.RAD_CT_PERFORMANCE RC, RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P87_RAD_DETAIL_ND_RADIATION_NO',
'   AND RD.SITE_ID = :P87_RAD_DETAIL_ND_SITE_ID',
'   AND RD.RADIATION_NO = RC.RADIATION_NO(+)',
'   AND RD.SITE_ID = RC.SITE_ID(+)',
'   AND RC.STATUS_ID(+) <> ''248''',
'   AND RC.CT_TYPE = ''C''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P87_RAD_DETAIL_ND_RADIATION_NO,P87_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation CT Performance(s)'
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
 p_id=>wwv_flow_imp.id(185437335555912229)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185437400526912230)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185437461280912231)
,p_name=>'SIM_CT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIM_CT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185437555947912232)
,p_name=>'DIPS_SIM_CT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIPS_SIM_CT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185437692719912233)
,p_name=>'NECK_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185437839063912234)
,p_name=>'SETUP_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185437859849912235)
,p_name=>'ARM_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION'
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
 p_id=>wwv_flow_imp.id(185437957261912236)
,p_name=>'POSITION_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_INSTRUCTION'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185438086831912237)
,p_name=>'SETUP_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185438159671912238)
,p_name=>'ARM_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185438286561912239)
,p_name=>'NECK_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185438384945912240)
,p_name=>'CT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>CT ID</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(185438490856912241)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>Fraction No</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(185438573013912242)
,p_name=>'TRANS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<b>CT Creation Date<b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185438706988912243)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
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
 p_id=>wwv_flow_imp.id(185438761330912244)
,p_name=>'NVL(RC.SCHEDULE_SRNO,:P87_SCHEDULE_SRNO)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NVL(RC.SCHEDULE_SRNO,:P87_SCHEDULE_SRNO)'
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
 p_id=>wwv_flow_imp.id(185438861938912245)
,p_name=>'SCHEDULE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185439003569912246)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
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
 p_id=>wwv_flow_imp.id(185439209019912248)
,p_name=>'SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_1'
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
 p_id=>wwv_flow_imp.id(185439268604912249)
,p_name=>'SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_2'
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
 p_id=>wwv_flow_imp.id(185439364656912250)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
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
 p_id=>wwv_flow_imp.id(185439465318912251)
,p_name=>'DISP_NAME_SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME_SIGN_BY_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185439588124912252)
,p_name=>'DISP_NAME_SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME_SIGN_BY_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185439759636912254)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b>Status</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185439886628912255)
,p_name=>'DISP_STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_STATUS_DESC'
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
 p_id=>wwv_flow_imp.id(185439989608912256)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(185440573934912262)
,p_name=>'CONTRAST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST'
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
 p_id=>wwv_flow_imp.id(185703832435750947)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(185437125639912227)
,p_internal_uid=>185437125639912227
,p_is_editable=>false
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(185444180210918987)
,p_interactive_grid_id=>wwv_flow_imp.id(185437125639912227)
,p_static_id=>'220773'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(185444434163918987)
,p_report_id=>wwv_flow_imp.id(185444180210918987)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185444922674918990)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(185437335555912229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185445780743918995)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(185437400526912230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185446670112918999)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(185437461280912231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185447582119919001)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(185437555947912232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185448453642919004)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(185437692719912233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185449358097919006)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(185437839063912234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185450346905919009)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(185437859849912235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185451214699919012)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(185437957261912236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185452060412919014)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(185438086831912237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185452984924919017)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(185438159671912238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185453924820919019)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(185438286561912239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185454764189919022)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(185438384945912240)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185455716193919025)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(185438490856912241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185456630568919027)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(185438573013912242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185457474773919030)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(185438706988912243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185458353534919033)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(185438761330912244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185459320767919036)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(185438861938912245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185460181456919038)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(185439003569912246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185462036224919044)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(185439209019912248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185462867713919046)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(185439268604912249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185463846175919049)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(185439364656912250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185464695766919052)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(185439465318912251)
,p_is_visible=>true
,p_is_frozen=>false
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185465595375919054)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(185439588124912252)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185467418799919060)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(185439759636912254)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185468334245919062)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(185439886628912255)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185469240205919065)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(185439989608912256)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185584457506374932)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(185440573934912262)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185928160221152219)
,p_view_id=>wwv_flow_imp.id(185444434163918987)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(185703832435750947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185440211786912258)
,p_plug_name=>'<b><p style="color:#8B0000">Contrast</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>6
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185440711396912263)
,p_plug_name=>'ND_PAGE_ITEMS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228813721191977246)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>53
,p_plug_grid_column_span=>9
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(230570676013779856)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>63
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261363352565199655)
,p_plug_name=>'Brachytherapy CT Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>9
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
'          ROWID,',
'          ANAESTHESIA,',
'          REMARKS',
'     FROM RADIATION.RADIATION_MASTER M;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P87_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(271172515429581124)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P87_MRNO;',
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
,p_ajax_items_to_submit=>'P87_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(163397544088478386)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(163397927974478391)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(163398328704478391)
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
 p_id=>wwv_flow_imp.id(271172915189581128)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'         PLANNING,',
'         RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'         P1_DOSE_FRACTION,',
'         P1_NO_OF_FRACTION,',
'         P2_DOSE_FRACTION,',
'         P2_NO_OF_FRACTION,',
'         P3_DOSE_FRACTION,',
'         P3_NO_OF_FRACTION,',
'         TREATMENT_LATER,',
'         ACTIVE,',
'         WFE_NO,',
'         RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                         P_SITE_ID      => SITE_ID,',
'                                                         P_WFE_NO       => WFE_NO) EVENT_DESC,',
'         PLANNING_ID,',
'         RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                     P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                    P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'         RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                   P_SITE_ID      => RD.SITE_ID) -',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                         P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'         (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'         NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'         NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOT_DOSE,',
'         RD.DOSE_FRACTION DOSE_FRACTION,',
'         RD.NO_OF_FRACTION',
'    FROM RADIATION.RADIATION_DETAIL RD',
'   WHERE RD.RADIATION_NO = :P87_RADIATION_NO',
'     AND RD.SITE_ID = NVL(:P87_PARAM_SITE_ID, RD.SITE_ID)',
'     AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                               P_SITE_ID             => RD.SITE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => ''015'') = ''Y'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P87_PARAM_SITE_ID,P87_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(185040937115214774)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose Fraction'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(185040963153214775)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No Of Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(223193035164593215)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271173290953581131)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(271173362473581132)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271173404859581133)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Radiotherapy Site'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271173576729581134)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(271173635574581135)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Planning Technique'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(271173770497581136)
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
 p_id=>wwv_flow_imp.id(271173858970581137)
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
 p_id=>wwv_flow_imp.id(271173941835581138)
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
 p_id=>wwv_flow_imp.id(271174038664581139)
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
 p_id=>wwv_flow_imp.id(271174110026581140)
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
 p_id=>wwv_flow_imp.id(271174269289581141)
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
 p_id=>wwv_flow_imp.id(271174305989581142)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271174467705581143)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271174581047581144)
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
 p_id=>wwv_flow_imp.id(271174606490581145)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271174730257581146)
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
 p_id=>wwv_flow_imp.id(271174883953581147)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271174949187581148)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(271175077192581149)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(271173044827581129)
,p_internal_uid=>271173044827581129
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
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
 p_id=>wwv_flow_imp.id(271777646315739479)
,p_interactive_grid_id=>wwv_flow_imp.id(271173044827581129)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(271777831497739481)
,p_report_id=>wwv_flow_imp.id(271777646315739479)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185230942782087660)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(185040937115214774)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>211.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185231811239087663)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(185040963153214775)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>193.858
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(223865559382768671)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(223193035164593215)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160.986
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271778216172739482)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(271173290953581131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271779180629739485)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(271173362473581132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271780089287739488)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(271173404859581133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>466.99699999999996
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271780977312739490)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(271173576729581134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271781804885739493)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(271173635574581135)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>268.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271782781861739498)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(271173770497581136)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271783662327739501)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(271173858970581137)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271784573378739508)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(271173941835581138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271785446856739510)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(271174038664581139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271786345285739513)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(271174110026581140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271787280940739516)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(271174269289581141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271788139930739518)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(271174305989581142)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271789055094739522)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(271174467705581143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271789923800739526)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(271174581047581144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271790869095739529)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(271174606490581145)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196.31600000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271791708593739532)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(271174730257581146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271792598984739535)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(271174883953581147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.94399999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271793579800739542)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(271174949187581148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(271794428861739544)
,p_view_id=>wwv_flow_imp.id(271777831497739481)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(271175077192581149)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(321555647213208808)
,p_plug_name=>'Radiation History'
,p_region_name=>'radHistory'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'             TO_CHAR(RADIATION_DATE,''DD-MON-RR HH24:MI'') RADIATION_DATE,',
'             MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'             DOCTOR_ID,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID),',
'             RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'             ROWID',
'',
'          ',
'FROM RADIATION.RADIATION_MASTER M',
'WHERE  M.MRNO =:P87_MRNO',
'AND M.RADIOTHERAPY_TYPE = ''B''',
'AND M.STATUS_REQUEST = ''015''',
'AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P87_SCHEDULE_SRNO,P87_MRNO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation History'
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
 p_id=>wwv_flow_imp.id(310910923511264299)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557157820208823)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557331087208824)
,p_name=>'RADIATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>24
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557371948208825)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mrno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>14
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557446200208826)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557574195208827)
,p_name=>'DISP_AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_AGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disp Age'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(321557676484208828)
,p_name=>'DISP_SEX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SEX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Disp Sex'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557767502208829)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Doctor Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>7
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321557922711208830)
,p_name=>'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Radiation.pkg Radiation.get Doctor Name(doctor Id)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(321558014874208831)
,p_name=>'DISP_TREATMENT_INTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_TREATMENT_INTENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Disp Treatment Intent'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(321557074964208822)
,p_internal_uid=>321557074964208822
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
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
 p_id=>wwv_flow_imp.id(322443274311504196)
,p_interactive_grid_id=>wwv_flow_imp.id(321557074964208822)
,p_static_id=>'113946'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(322443534336504196)
,p_report_id=>wwv_flow_imp.id(322443274311504196)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(311177631785586909)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(310910923511264299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322444013609504198)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(321557157820208823)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.6719
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322444922415504200)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(321557331087208824)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322445830652504202)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(321557371948208825)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322446691834504205)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(321557446200208826)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322447555519504207)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(321557574195208827)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322448496583504209)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(321557676484208828)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322449426930504211)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(321557767502208829)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322450226548504213)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(321557922711208830)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(322451047580504216)
,p_view_id=>wwv_flow_imp.id(322443534336504196)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(321558014874208831)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(404628257112766009)
,p_plug_name=>'Technologist''s Sign'
,p_region_name=>'signhdrct'
,p_region_css_classes=>'js-dialog-size1200x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>73
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203548355440643708)
,p_plug_name=>'<span style="font-weight: bold; color: #8A0000;">First Technologist</span>'
,p_parent_plug_id=>wwv_flow_imp.id(404628257112766009)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203548460990643709)
,p_plug_name=>'<span style="font-weight: bold; color: #8A0000;">Second Technologist</span>'
,p_parent_plug_id=>wwv_flow_imp.id(404628257112766009)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163383444431478328)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(228813721191977246)
,p_button_name=>'Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163383801599478331)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_imp.id(228813721191977246)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163384215077478331)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_imp.id(228813721191977246)
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
 p_id=>wwv_flow_imp.id(163384614925478331)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_imp.id(228813721191977246)
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
 p_id=>wwv_flow_imp.id(163386210726478332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(230570676013779856)
,p_button_name=>'CreateCT'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New CT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163385497894478332)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(230570676013779856)
,p_button_name=>'DisposeCT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose CT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163385880337478332)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(230570676013779856)
,p_button_name=>'HDRRequest'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Brachytherapy Request'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163414107206478434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163410349124478429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_button_name=>'SignHDRCT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185060807069215080)
,p_name=>'P87_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185060924920215081)
,p_name=>'P87_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185235115750088023)
,p_name=>'P87_ANESTHESIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(185234468215087934)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Anesthesia</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>' (p_attributes): onclick="return false;"'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'other way to disable checkox',
'(p_attributes): disabled'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185235139031088024)
,p_name=>'P87_REQ_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(185234468215087934)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Request Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185454253948912558)
,p_name=>'P87_CONTRAST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(185440211786912258)
,p_prompt=>'<b><p style="color:#00008B">Contrast:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:No;N,Intravenously;I,Orally;O,Rectally;R'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185455398829912564)
,p_name=>'P87_SCHEDULE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(185440711396912263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Appointment:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185456094498912571)
,p_name=>'P87_DISP_NAME_SIGN_BY_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(185440711396912263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Primary Technologist:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185456227579912572)
,p_name=>'P87_DISP_NAME_SIGN_BY_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(185440711396912263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Secondry Technologist:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185456284631912573)
,p_name=>'P87_SIGN_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(185440711396912263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185456404966912574)
,p_name=>'P87_STATUS_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(185440711396912263)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185487937920912754)
,p_name=>'P87_SCHEDULE_SRNO'
,p_item_sequence=>213
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185753213667751460)
,p_name=>'P87_CT_SRNO'
,p_item_sequence=>223
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185753288450751461)
,p_name=>'P87_CT_SCHEDULE_DATE'
,p_item_sequence=>233
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185753734328751465)
,p_name=>'P87_SCHEDULE_EVENT_ID'
,p_item_sequence=>243
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203601941800644122)
,p_name=>'P87_PATIENT_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_prompt=>'<b>Employee Code</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'disable-keyboard-focus'
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
 p_id=>wwv_flow_imp.id(203602011584644123)
,p_name=>'P87_PATIENT_MRNO_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602119134644124)
,p_name=>'P87_NAME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'disable-keyboard-focus'
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602220251644125)
,p_name=>'P87_PASSWORD_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602353654644126)
,p_name=>'P87_DISP_MRNO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602483485644127)
,p_name=>'P87_USER_MRNO_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602562206644128)
,p_name=>'P87_LOGIN_DATE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602617254644129)
,p_name=>'P87_LOCATION_ID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602785969644130)
,p_name=>'P87_LOGIN_MESSAGE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203602846820644131)
,p_name=>'P87_VALIDATE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(203548460990643709)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223330258014593821)
,p_name=>'P87_PARAM_RADIATION_NO'
,p_item_sequence=>103
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223331234394593831)
,p_name=>'P87_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>193
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223721748272090992)
,p_name=>'P87_QUERY_NEW'
,p_item_sequence=>203
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229015231180977920)
,p_name=>'P87_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>123
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229015305403977921)
,p_name=>'P87_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>133
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229015929127977927)
,p_name=>'P87_RAD_PLAN_CHECK_ID'
,p_item_sequence=>143
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229016654040977934)
,p_name=>'P87_SIGN_STATUS'
,p_item_sequence=>153
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229835710755947389)
,p_name=>'P87_TXT_URL'
,p_item_sequence=>163
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231282469673542729)
,p_name=>'P87_RAD_PLAN_CHECK_DML_STATUS'
,p_item_sequence=>183
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231282889837542734)
,p_name=>'P87_PARAM_SR_NO'
,p_item_sequence=>93
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233804657574287991)
,p_name=>'P87_PARAM_MRNO'
,p_item_sequence=>113
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261456070337200054)
,p_name=>'P87_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
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
 p_id=>wwv_flow_imp.id(261456166923200055)
,p_name=>'P87_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_source=>'RADIATION_DATE'
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
 p_id=>wwv_flow_imp.id(271263614524581506)
,p_name=>'P87_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
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
 p_id=>wwv_flow_imp.id(271263727611581507)
,p_name=>'P87_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
,p_source=>'PATIENT_NAME'
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
 p_id=>wwv_flow_imp.id(271263847774581508)
,p_name=>'P87_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(271263927746581509)
,p_name=>'P87_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Gender:</p></b>'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(271263967817581510)
,p_name=>'P87_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271264125579581511)
,p_name=>'P87_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(271264263654581512)
,p_name=>'P87_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_prompt=>'<b><p style="color:#00008B">Intent:</p></b>'
,p_source=>'DISP_INTENT'
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
 p_id=>wwv_flow_imp.id(271264482322581515)
,p_name=>'P87_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271264651914581516)
,p_name=>'P87_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
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
 p_id=>wwv_flow_imp.id(271264710285581517)
,p_name=>'P87_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
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
 p_id=>wwv_flow_imp.id(271264777528581518)
,p_name=>'P87_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
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
 p_id=>wwv_flow_imp.id(271264900695581519)
,p_name=>'P87_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
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
 p_id=>wwv_flow_imp.id(271265018225581520)
,p_name=>'P87_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(261363352565199655)
,p_item_source_plug_id=>wwv_flow_imp.id(261363352565199655)
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
 p_id=>wwv_flow_imp.id(271374870457581806)
,p_name=>'P87_PARAM_SITE_ID'
,p_item_sequence=>73
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273734576681565023)
,p_name=>'P87_ALERT_TEXT'
,p_item_sequence=>173
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404684888759766495)
,p_name=>'P87_TXT_ALERT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(404628257112766009)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404684996443766496)
,p_name=>'P87_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(404628257112766009)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404686866500766487)
,p_name=>'P87_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_prompt=>'<b>Employee Code</b>'
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
 p_id=>wwv_flow_imp.id(404686894711766488)
,p_name=>'P87_PATIENT_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(404686987417766489)
,p_name=>'P87_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
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
 p_id=>wwv_flow_imp.id(404687144106766490)
,p_name=>'P87_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404687267505766491)
,p_name=>'P87_DISP_MRNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404687350922766492)
,p_name=>'P87_USER_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404687390835766493)
,p_name=>'P87_LOGIN_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404687485033766494)
,p_name=>'P87_LOCATION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404687654603766495)
,p_name=>'P87_LOGIN_MESSAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404687747776766496)
,p_name=>'P87_VALIDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(203548355440643708)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(408408390408570861)
,p_name=>'P87_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(404628257112766009)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163427769890478599)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(271172915189581128)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163428227330478601)
,p_event_id=>wwv_flow_imp.id(163427769890478599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $s(''P87_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'// $s(''P87_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P87_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'apex.item("P87_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'}',
'//apex.region("radplanchecklist").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163428779287478611)
,p_event_id=>wwv_flow_imp.id(163427769890478599)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(185437022363912226)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163429152559478611)
,p_name=>'Sign'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163383801599478331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163429653395478611)
,p_event_id=>wwv_flow_imp.id(163429152559478611)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P87_PASSWORD,P87_PATIENT_MRNO_1,P87_DISP_MRNO_1,P87_NAME_1,P87_PASSWORD_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163430182847478612)
,p_event_id=>wwv_flow_imp.id(163429152559478611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P87_PATIENT_MRNO   := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P87_PATIENT_TYPE   := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P87_PATIENT_TYPE_1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P87_DISP_MRNO      := (:P87_PATIENT_TYPE ||',
'                           LPAD(:P87_PATIENT_MRNO, 8, ''0''));',
'    :P87_NAME           := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P87_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P87_PATIENT_MRNO,P87_PATIENT_TYPE,P87_DISP_MRNO,P87_NAME,P87_PATIENT_TYPE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163430632014478612)
,p_event_id=>wwv_flow_imp.id(163429152559478611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signhdrct");',
'apex.item("P87_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163431027599478612)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163384614925478331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163432072091478613)
,p_event_id=>wwv_flow_imp.id(163431027599478612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':LV_PATIENT_MRNO := NULL;',
':LV_SR_NO := NULL;'))
,p_attribute_02=>'LV_PATIENT_MRNO,LV_SR_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163431559379478613)
,p_event_id=>wwv_flow_imp.id(163431027599478612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163432490367478613)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163432957265478613)
,p_event_id=>wwv_flow_imp.id(163432490367478613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P87_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P87_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P87_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P87_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P87_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P87_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
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
,p_attribute_02=>'P87_SERVICE_NO,P87_SERVICE_STATUS,P87_RANK,P87_FORMATION,P87_UNIT'
,p_attribute_03=>'P87_SYSTEM_CONSTANT_ID_428'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163433451790478615)
,p_event_id=>wwv_flow_imp.id(163432490367478613)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P87_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P87_SERVICE_NO").show();',
'    apex.item("P87_SERVICE_STATUS").show();',
'    apex.item("P87_RANK").show();',
'    apex.item("P87_FORMATION").show();',
'    apex.item("P87_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P87_SERVICE_NO").hide();',
'    apex.item("P87_SERVICE_STATUS").hide();',
'    apex.item("P87_RANK").hide();',
'    apex.item("P87_FORMATION").hide();',
'    apex.item("P87_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163433813880478615)
,p_name=>'DASuccessMessage'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_SUCCESS_MSG'
,p_condition_element=>'P87_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163434342744478615)
,p_event_id=>wwv_flow_imp.id(163433813880478615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>&P87_SUCCESS_MSG.</strong>',
''))
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163434715766478615)
,p_name=>'DAError'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_ERROR'
,p_condition_element=>'P87_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163435250691478616)
,p_event_id=>wwv_flow_imp.id(163434715766478615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<strong>&P87_ERROR.</strong>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_attribute_06=>'OK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163435618515478616)
,p_name=>'EnableDisableDA'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163436198225478616)
,p_event_id=>wwv_flow_imp.id(163435618515478616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P87_SIGN_STATUS") === "015") || ($v("P87_SIGN_STATUS") === "248")) {',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163436572090478618)
,p_name=>'SetMRNO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163437022234478618)
,p_event_id=>wwv_flow_imp.id(163436572090478618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P87_NAME,P87_PASSWORD,P87_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163437530839478618)
,p_event_id=>wwv_flow_imp.id(163436572090478618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P87_PATIENT_TYPE IS NOT NULL AND :P87_PATIENT_MRNO IS NOT NULL THEN',
'    :P87_DISP_MRNO := :P87_PATIENT_TYPE || LPAD(:P87_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_PATIENT_TYPE,P87_PATIENT_MRNO'
,p_attribute_03=>'P87_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163438061602478619)
,p_event_id=>wwv_flow_imp.id(163436572090478618)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P87_ERROR := NULL;',
'  IF :P87_PATIENT_MRNO IS NOT NULL THEN',
'    :P87_DISP_MRNO := :P87_PATIENT_TYPE || LPAD(:P87_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P87_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P87_ERROR        := ''This is not an active employee.'';',
'      :P87_PATIENT_MRNO := NULL;',
'      :P87_DISP_MRNO    := NULL;',
'      :P87_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P87_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P87_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P87_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_PATIENT_MRNO,P87_PATIENT_TYPE'
,p_attribute_03=>'P87_DISP_MRNO,P87_ERROR,P87_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163438518364478619)
,p_event_id=>wwv_flow_imp.id(163436572090478618)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P87_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P87_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163439012598478619)
,p_event_id=>wwv_flow_imp.id(163436572090478618)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P87_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P87_DISP_MRNO);'
,p_attribute_02=>'P87_DISP_MRNO'
,p_attribute_03=>'P87_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163439421598478619)
,p_name=>'ExportReport'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163383444431478328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163439986147478619)
,p_event_id=>wwv_flow_imp.id(163439421598478619)
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
,p_attribute_02=>'GV_ORDER_LOCATION_ID,GV_CONNECTED_SERVER,GV_USER_MRNO,GV_TERMINAL,GV_PHYSICAL_LOCATION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163440418226478619)
,p_event_id=>wwv_flow_imp.id(163439421598478619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "P_RADIATION_NO": $v("P87_RADIATION_NO"),',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00031'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163440821018478620)
,p_name=>'DACTPerformance'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(185437022363912226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163441399673478620)
,p_event_id=>wwv_flow_imp.id(163440821018478620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P87_CONTRAST'', _.radct.CONTRAST);',
'$s(''P87_SCHEDULE_DATE'', _.radct.SCHEDULE_DATE);',
'$s(''P87_DISP_NAME_SIGN_BY_1'', _.radct.DISP_NAME_SIGN_BY_1);',
'$s(''P87_DISP_NAME_SIGN_BY_2'', _.radct.DISP_NAME_SIGN_BY_2);',
'$s(''P87_SIGN_DATE'', _.radct.SIGN_DATE);',
'$s(''P87_STATUS_DESC'', _.radct.DISP_STATUS_DESC);',
'$s(''P87_CT_SRNO'', _.radct.CT_SRNO);',
'$s(''P87_CT_SCHEDULE_DATE'', _.radct.SCHEDULE_DATE);',
'$s(''P87_SIGN_STATUS'', _.radct.STATUS_ID);',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163441867429478620)
,p_event_id=>wwv_flow_imp.id(163440821018478620)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if ($v("P87_SIGN_STATUS") === "015" || $v("P87_SIGN_STATUS") === "248") {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'    apex.item("P87_CONTRAST").disable();',
'} else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'    apex.item("P87_CONTRAST").enable();',
'}',
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
 p_id=>wwv_flow_imp.id(163442278060478620)
,p_name=>'DATXTAlertText'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_TXT_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163442738798478620)
,p_event_id=>wwv_flow_imp.id(163442278060478620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P87_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163443126358478620)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163410349124478429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163443685937478621)
,p_event_id=>wwv_flow_imp.id(163443126358478620)
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
'  :P87_TXT_ALERT_TEXT := null;',
'  :P87_SUCCESS_MSG    := null;',
'  :P87_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P87_DISP_MRNO,',
'                                          :P87_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P87_ERROR := ''The First Technologist password is incorrect. Please enter the correct password'';',
'  ELSE',
'    Apex_Util.Set_Session_State(''P87_VALIDATE'', ''Y'');',
'    :P87_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P87_DISP_MRNO,P87_PASSWORD'
,p_attribute_03=>'P87_SUCCESS_MSG,P87_ERROR,P87_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163444106853478621)
,p_event_id=>wwv_flow_imp.id(163443126358478620)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF :P87_VALIDATE = ''Y'' THEN',
'    :P87_TXT_ALERT_TEXT := null;',
'    :P87_SUCCESS_MSG    := null;',
'    :P87_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P87_DISP_MRNO_1,',
'                                            :P87_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P87_ERROR := ''The Second Technologist password is incorrect. Please enter the correct password'';',
'    ELSE',
'      Apex_Util.Set_Session_State(''P87_VALIDATE_1'', ''Y'');',
'      :P87_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_DISP_MRNO_1,P87_PASSWORD_1,P87_VALIDATE'
,p_attribute_03=>'P87_SUCCESS_MSG,P87_ERROR,P87_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163444673546478621)
,p_event_id=>wwv_flow_imp.id(163443126358478620)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P87_VALIDATE = ''Y'' AND :P87_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18APX00062.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''ORGANIZATION_ID''),',
'                                                    P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''LOCATION_ID''),',
'                                                    P_RADIATION_NO      => :P87_RAD_DETAIL_ND_RADIATION_NO,',
'                                                    P_SITE_ID           => :P87_RAD_DETAIL_ND_SITE_ID,',
'                                                    P_CT_SRNO           => :P87_CT_SRNO,',
'                                                    P_SCHEDULE_SRNO     => :P87_SCHEDULE_SRNO,',
'                                                    P_SCHEDULE_EVENT_ID => :P87_SCHEDULE_EVENT_ID,',
'                                                    P_USER_MRNO         => :GV_USER_MRNO,',
'                                                    P_FIRST_TECH        => :P87_DISP_MRNO,',
'                                                    P_SECOND_TECH       => :P87_DISP_MRNO_1,',
'                                                    P_OBJECT_CODE       => ''S18APX00062'',',
'                                                    P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''TERMINAL''),',
'                                                    P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                    P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P87_ERROR := L_ALERT_TEXT;',
'    END IF;',
'    :P87_SUCCESS_MSG := ''The HDR CT sheet has been signed'';',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_VALIDATE,P87_VALIDATE_1,P87_RAD_DETAIL_ND_RADIATION_NO,P87_RAD_DETAIL_ND_SITE_ID,P87_CT_SRNO,P87_SCHEDULE_SRNO,P87_SCHEDULE_EVENT_ID,GV_USER_MRNO,P87_DISP_MRNO,P87_DISP_MRNO_1'
,p_attribute_03=>'P87_ERROR,P87_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163445185090478622)
,p_event_id=>wwv_flow_imp.id(163443126358478620)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radct'').refresh();',
'apex.item("sign_btn").disable();',
'apex.item("save").disable();',
'apex.theme.closeRegion(''signhdrct'');',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P87_VALIDATE_1'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163445566382478622)
,p_name=>'CloseRegion'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163414107206478434)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163446062921478622)
,p_event_id=>wwv_flow_imp.id(163445566382478622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404628257112766009)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163446470141478623)
,p_name=>'SetMRNO1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_PATIENT_MRNO_1'
,p_condition_element=>'P87_PATIENT_MRNO_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163446957614478623)
,p_event_id=>wwv_flow_imp.id(163446470141478623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P87_NAME_1,P87_PASSWORD_1,P87_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163447471979478623)
,p_event_id=>wwv_flow_imp.id(163446470141478623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P87_PATIENT_TYPE_1 IS NOT NULL AND :P87_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P87_DISP_MRNO_1 := :P87_PATIENT_TYPE_1 || LPAD(:P87_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_PATIENT_TYPE_1,P87_PATIENT_MRNO_1'
,p_attribute_03=>'P87_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163447925708478623)
,p_event_id=>wwv_flow_imp.id(163446470141478623)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P87_ERROR := NULL;',
'  IF :P87_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P87_DISP_MRNO_1 := :P87_PATIENT_TYPE_1 || LPAD(:P87_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P87_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P87_ERROR        := ''This is not an active employee.'';',
'      :P87_PATIENT_MRNO_1 := NULL;',
'      :P87_DISP_MRNO_1    := NULL;',
'      :P87_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P87_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P87_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P87_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_PATIENT_MRNO_1,P87_PATIENT_TYPE_1'
,p_attribute_03=>'P87_DISP_MRNO_1,P87_ERROR,P87_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163448436531478623)
,p_event_id=>wwv_flow_imp.id(163446470141478623)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&&P87_ERROR.'
,p_attribute_02=>'System Message'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P87_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163448917828478624)
,p_event_id=>wwv_flow_imp.id(163446470141478623)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P87_NAME_1:= his.pkg_patient.GET_PATIENT_NAME(:P87_DISP_MRNO_1);'
,p_attribute_02=>'P87_DISP_MRNO_1'
,p_attribute_03=>'P87_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163426844956478598)
,p_name=>'DAStatusDescription'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_STATUS_DESC'
,p_condition_element=>'P87_STATUS_DESC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163427392142478598)
,p_event_id=>wwv_flow_imp.id(163426844956478598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function onStatusDescChange() {',
'',
'    var statusDesc = apex.item(''P87_STATUS_DESC'').getValue();',
'',
'    if (statusDesc) {',
'',
'        var upperStatusDesc = statusDesc.toUpperCase();',
'        var keyword = ''SIGNED'';',
'',
'        if (upperStatusDesc.includes(keyword)) {',
'',
'            document.getElementById(''P87_STATUS_DESC'').style.color = ''green'';',
'        } else {',
'',
'            document.getElementById(''P87_STATUS_DESC'').style.color = ''black'';',
'        }',
'    } else {',
'        console.error(''Value of P87_STATUS_DESC is undefined or empty.'');',
'    }',
'}',
'',
'onStatusDescChange();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163425917277478591)
,p_name=>'DAPassword1'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' ',
'',
''))
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163426462732478597)
,p_event_id=>wwv_flow_imp.id(163425917277478591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P87_PATIENT_TYPE_1'').setFocus();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163451611691478625)
,p_name=>'DASign@P87_PASSWORD_1'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_PASSWORD_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163453654508478627)
,p_event_id=>wwv_flow_imp.id(163451611691478625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P87_TXT_ALERT_TEXT := null;',
'  :P87_SUCCESS_MSG    := null;',
'  :P87_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P87_DISP_MRNO,',
'                                          :P87_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P87_ERROR := ''The First Technologist password is incorrect. Please enter the correct password'';',
'  ELSE',
'    Apex_Util.Set_Session_State(''P87_VALIDATE'', ''Y'');',
'    :P87_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P87_DISP_MRNO,P87_PASSWORD'
,p_attribute_03=>'P87_SUCCESS_MSG,P87_ERROR,P87_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163452175881478626)
,p_event_id=>wwv_flow_imp.id(163451611691478625)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF :P87_VALIDATE = ''Y'' THEN',
'    :P87_TXT_ALERT_TEXT := null;',
'    :P87_SUCCESS_MSG    := null;',
'    :P87_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P87_DISP_MRNO_1,',
'                                            :P87_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P87_ERROR := ''The Second Technologist password is incorrect. Please enter the correct password'';',
'    ELSE',
'      Apex_Util.Set_Session_State(''P87_VALIDATE_1'', ''Y'');',
'      :P87_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_DISP_MRNO_1,P87_PASSWORD_1,P87_VALIDATE'
,p_attribute_03=>'P87_SUCCESS_MSG,P87_ERROR,P87_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163452648441478627)
,p_event_id=>wwv_flow_imp.id(163451611691478625)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P87_VALIDATE = ''Y'' AND :P87_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18APX00062.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''ORGANIZATION_ID''),',
'                                                    P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''LOCATION_ID''),',
'                                                    P_RADIATION_NO      => :P87_RAD_DETAIL_ND_RADIATION_NO,',
'                                                    P_SITE_ID           => :P87_RAD_DETAIL_ND_SITE_ID,',
'                                                    P_CT_SRNO           => :P87_CT_SRNO,',
'                                                    P_SCHEDULE_SRNO     => :P87_SCHEDULE_SRNO,',
'                                                    P_SCHEDULE_EVENT_ID => :P87_SCHEDULE_EVENT_ID,',
'                                                    P_USER_MRNO         => :GV_USER_MRNO,',
'                                                    P_FIRST_TECH        => :P87_DISP_MRNO,',
'                                                    P_SECOND_TECH       => :P87_DISP_MRNO_1,',
'                                                    P_OBJECT_CODE       => ''S18APX00062'',',
'                                                    P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''TERMINAL''),',
'                                                    P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                    P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P87_ERROR := L_ALERT_TEXT;',
'    END IF;',
'    :P87_SUCCESS_MSG := ''The HDR CT sheet has been signed'';',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P87_VALIDATE,P87_VALIDATE_1,P87_RAD_DETAIL_ND_RADIATION_NO,P87_RAD_DETAIL_ND_SITE_ID,P87_CT_SRNO,P87_SCHEDULE_SRNO,P87_SCHEDULE_EVENT_ID,GV_USER_MRNO,P87_DISP_MRNO,P87_DISP_MRNO_1'
,p_attribute_03=>'P87_ERROR,P87_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163453135895478627)
,p_event_id=>wwv_flow_imp.id(163451611691478625)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radct'').refresh();',
'apex.item("sign_btn").disable();',
'apex.item("save").disable();',
'apex.theme.closeRegion(''signhdrct'');',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P87_VALIDATE_1'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163449384274478624)
,p_name=>'DAName1'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P87_NAME_1'
,p_condition_element=>'P87_NAME_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163449884880478624)
,p_event_id=>wwv_flow_imp.id(163449384274478624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P87_PASSWORD_1'').setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163450245499478624)
,p_name=>'DAViewHDRRequest'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163385880337478332)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163450797109478624)
,p_event_id=>wwv_flow_imp.id(163450245499478624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := 115;',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P87_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' || L_APP ||',
'                                                           '':88:'' ||',
'                                                           L_SESSION ||',
'                                                           ''::NO::P88_MRNO,P88_RADIATION_NO,P88_PARAM_RADIATION_NO:'' ||',
'                                                           :P87_MRNO || '','' ||',
'                                                           :P87_RADIATION_NO || '','' ||',
'                                                           :P87_RADIATION_NO,',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P87_MRNO,P87_RADIATION_NO'
,p_attribute_03=>'P87_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163451266939478625)
,p_event_id=>wwv_flow_imp.id(163450245499478624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P87_TXT_URL''));    '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163104374648207106)
,p_name=>'DARadiationHistory'
,p_event_sequence=>400
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(321555647213208808)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163104487822207107)
,p_event_id=>wwv_flow_imp.id(163104374648207106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P87_RADIATION_NO'', _.radHistory.RADIATION_NO);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163104685721207109)
,p_event_id=>wwv_flow_imp.id(163104374648207106)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'         ANAESTHESIA,',
'         REMARKS',
'    INTO :P87_RADIATION_NO,',
'         :P87_RADIATION_DATE,',
'         :P87_MRNO,',
'         :P87_PATIENT_NAME,',
'         :P87_DISP_AGE,',
'         :P87_DISP_GENDER,',
'         :P87_DOCTOR_ID,',
'         :P87_DISP_DOCTOR,',
'         :P87_DISP_INTENT,',
'         :P87_ANESTHESIA,',
'         :P87_REQ_REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = :P87_RADIATION_NO',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P87_RADIATION_NO'
,p_attribute_03=>'P87_RADIATION_DATE,P87_MRNO,P87_PATIENT_NAME,P87_DISP_AGE,P87_DISP_GENDER,P87_DOCTOR_ID,P87_DISP_DOCTOR,P87_DISP_INTENT,P87_ANESTHESIA,P87_REQ_REMARKS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163104851125207111)
,p_event_id=>wwv_flow_imp.id(163104374648207106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(271172915189581128)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163423938541478576)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateHDRCT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P87_MRNO;',
'  L_RADIATION_NO := :P87_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18APX00062.CREATE_NEW_HDR_CT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_RADIATION_NO      => :P87_RAD_DETAIL_ND_RADIATION_NO,',
'                                              P_SITE_ID           => :P87_RAD_DETAIL_ND_SITE_ID,',
'                                              P_SCHEDULE_SRNO     => :P87_SCHEDULE_SRNO,',
'                                              P_OBJECT_CODE       => ''S18APX00062'',',
'                                              P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                              P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P87_PARAM_MRNO         := L_MRNO;',
'  :P87_PARAM_RADIATION_NO := L_RADIATION_NO;',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163386210726478332)
,p_process_success_message=>'New CT Created Properly '
,p_internal_uid=>163423938541478576
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163424373272478580)
,p_process_sequence=>2
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeHDRCT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P87_MRNO;',
'  L_RADIATION_NO := :P87_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18APX00062.DISPOSE_CT_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_RADIATION_NO      => :P87_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID           => :P87_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_CT_SRNO           => :P87_CT_SRNO,',
'                                                   P_REASON            => NULL,',
'                                                   P_OBJECT_CODE       => ''S18APX00062'',',
'                                                   P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''TERMINAL''),',
'                                                   P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''USER_MRNO''),',
'                                                   P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                   P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P87_PARAM_MRNO         := L_MRNO;',
'  :P87_PARAM_RADIATION_NO := L_RADIATION_NO;',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163385497894478332)
,p_process_success_message=>'Record DISPOSED Properly ...'
,p_internal_uid=>163424373272478580
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
 p_id=>wwv_flow_imp.id(163424725958478581)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDR CT Performance - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PLAN_TAB RADIATION.PKG_S18APX00062.TAB_CT_PERFORMANCE;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P87_MRNO;',
'  L_RADIATION_NO := :P87_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  IF :P87_CT_SRNO IS NOT NULL THEN',
'    SELECT :P87_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P87_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           NULL                            SIM_CT_ID,',
'           NULL                            DIPS_SIM_CT,',
'           NULL                            NECK_POSITION,',
'           NULL                            SETUP_POSITION,',
'           NULL                            ARM_POSITION,',
'           NULL                            POSITION_INSTRUCTION,',
'           NULL                            SETUP_POSITION_DESC,',
'           NULL                            ARM_POSITION_DESC,',
'           NULL                            NECK_POSITION_DESC,',
'           :P87_CT_SRNO                    CT_SRNO,',
'           NULL                            PHASE_NO,',
'           NULL                            TRANS_DATE,',
'           NULL                            OC_SERIAL_NO,',
'           :P87_SCHEDULE_SRNO              SCHEDULE_SRNO,',
'           NULL                            SCHEDULE_DATE,',
'           NULL                            PERFORMANCE_ID,',
'           NULL                            STATUS_ID,',
'           NULL                            SIGN_BY_1,',
'           NULL                            SIGN_BY_2,',
'           NULL                            SIGN_DATE,',
'           NULL                            DISP_NAME_SIGN_BY_1,',
'           NULL                            DISP_NAME_SIGN_BY_2,',
'           :P87_CONTRAST                   CONTRAST,',
'           NULL                            STATUS_DESC,',
'           NULL                            DISP_STATUS_DESC',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_PLAN_TAB',
'      FROM DUAL;',
'  ',
'    BEGIN',
'      RADIATION.PKG_S18APX00062.UPDATE_CT_PERFORMANCE(L_RAD_PLAN_TAB);',
'    END;',
'  ',
'  END IF;',
'',
'  :P87_PARAM_MRNO         := L_MRNO;',
'  :P87_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163384215077478331)
,p_process_success_message=>'HDR CT Sheet updated successfully'
,p_internal_uid=>163424725958478581
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163425157131478582)
,p_process_sequence=>13
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDR CT Performance - Save Interactive Grid Data_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PLAN_TAB RADIATION.PKG_S18FRM00155.TAB_CT_PERFORMANCE;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  EX_CUSTOM EXCEPTION;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'  L_MRNO         := :P87_MRNO;',
'  L_RADIATION_NO := :P87_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  IF :P87_CT_SRNO IS NOT NULL THEN',
'  ',
'    /* BEGIN',
'      FOR REC IN (SELECT S.SITE_ID,',
'                         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => S.SITE_ID) SITE',
'                    FROM RADIATION.SCHEDULE S',
'                   WHERE S.SR_NO = :P87_SCHEDULE_SRNO',
'                     AND S.SITE_ID <> :P87_RAD_DETAIL_ND_SITE_ID) LOOP',
'        L_ALERT_TEXT := ''This appointment is for '' ||',
'                        RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(:P87_RAD_DETAIL_ND_SITE_ID) ||',
'                        '', cannot update other site of this patient.'';',
'        RAISE EX_CUSTOM;',
'      END LOOP;',
'    EXCEPTION',
'      WHEN EX_CUSTOM THEN',
'        RAISE EX_CUSTOM;',
'    END;*/',
'  ',
'    BEGIN',
'      UPDATE RADIATION.RAD_CT_PERFORMANCE',
'         SET CONTRAST      = :P87_CONTRAST,',
'             SCHEDULE_SRNO = :P87_SCHEDULE_SRNO,',
'             SCHEDULE_DATE = TO_DATE(TO_CHAR(:P87_SCHEDULE_DATE,',
'                                             ''DD-MM-RRRR HH24:MI''),',
'                                     ''DD-MM-RRRR HH24:MI'')',
'       WHERE RADIATION_NO = :P87_RAD_DETAIL_ND_RADIATION_NO',
'         AND SITE_ID = :P87_RAD_DETAIL_ND_SITE_ID',
'         AND CT_SRNO = :P87_CT_SRNO;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        L_ALERT_TEXT := SYS.DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        RAISE EX_CUSTOM;',
'    END;',
'  ',
'  END IF;',
'',
'  :P87_PARAM_MRNO         := L_MRNO;',
'  :P87_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163384215077478331)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'HDR CT Sheet updated successfully'
,p_internal_uid=>163425157131478582
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163425568933478582)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearSessionState'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>163425568933478582
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163423523352478574)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParameter'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P87_MRNO          := :P46_PATIENT_MRNO;',
'  END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>163423523352478574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163423161247478573)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormHDRCTPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'         ANAESTHESIA,',
'         REMARKS',
'    INTO :P87_RADIATION_NO,',
'         :P87_RADIATION_DATE,',
'         :P87_MRNO,',
'         :P87_PATIENT_NAME,',
'         :P87_DISP_AGE,',
'         :P87_DISP_GENDER,',
'         :P87_DOCTOR_ID,',
'         :P87_DISP_DOCTOR,',
'         :P87_DISP_INTENT,',
'         :P87_ANESTHESIA,',
'         :P87_REQ_REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P87_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''B'')',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>163423161247478573
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163422785010478565)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationHDRPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00131.RAD_F_U_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  SELECT :P87_RADIATION_NO_1         RADIATION_NO,',
'         :P87_SITE_ID_1              SITE_ID,',
'         :P87_FOLLOWUP_ID            FOLLOWUP_ID,',
'         :P87_LAST_FRACTION_ID       LAST_FRACTION_ID,',
'         :P87_WEEK_NO_1              WEEK_NO,',
'         NULL                        WEEK_DESCRIPTION,',
'         :P87_SCHEDULE_SRNO_1        SCHEDULE_SRNO,',
'         :P87_OC_SERIAL_NO_1         OC_SERIAL_NO,',
'         TO_DATE(:P87_CHEMO_LAST_CYCLE,''DD-MON-YYYY HH24:MI'')       CHEMO_LAST_CYCLE,',
'         :P87_CHEMO_NEXT_CYCLE       CHEMO_NEXT_CYCLE,',
'         :P87_ORAL_CHEMO_PRESCRIBED  ORAL_CHEMO_PRESCRIBED,',
'         :P87_REMARKS                REMARKS,',
'         NULL                        SIGN_BY,',
'         NULL                        SIGN_BY_NAME,',
'         NULL                        SIGN_DATE,',
'         NULL                        STATUS_ID,',
'         NULL                        STATUS_DESC,',
'         :P87_SIDE_EFFECTS           SIDE_EFFECTS,',
'         :P87_DIET                   DIET,',
'         :P87_GENERAL_MEASURE        GENERAL_MEASURE,',
'         :P87_PERSONAL_HYGIENE       PERSONAL_HYGIENE,',
'         :P87_FU_INSTRUCTIONS        FU_INSTRUCTIONS,',
'         :P87_PAT_FAMILY_EDU         PAT_FAMILY_EDU,',
'         :P87_PAT_FAMILY_EDU_REMARKS PAT_FAMILY_EDU_REMARKS',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00131.INSERT_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    -- Update',
'    RADIATION.PKG_S18FRM00131.UPDATE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00131.DELETE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'',',
'                  ''Radiotheraphy Followup Updated successfully.'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT||SQLERRM);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT||SQLERRM);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
'*/',
'',
'NULL;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>163422785010478565
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'RAD_SIMULATION_RAD_MENU'
,p_alias=>'RAD-SIMULATION-RAD-MENU'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'td[headers="RADIATION_NO"]{',
' font-weight:bold;',
'}',
'td[headers="MRNO"]{',
' font-weight:bold;',
'}',
'td[headers="REQUEST_STATUS"]{',
' font-weight:bold;',
'}',
'</style>',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function editIsoCenter() {',
'    apex.theme.openRegion(''isocenterdtl'')',
'',
'};',
'',
'function editSpecialInstruction() {',
'    apex.theme.openRegion(''specialintdtl'')',
'',
'};',
'',
'function editFields() {',
'    apex.theme.openRegion(''fielddtl'')',
'',
'};',
'',
'',
'$(document).on(''keydown'', function (event) {',
'',
'    if ($(''#sign'').length && event.key === ''Enter'') {',
'        event.preventDefault();',
'        event.stopPropagation();',
'    }',
'});',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_UNIT").hide();',
'apex.item("P51_SERVICE_NO").hide();',
'apex.item("P51_SERVICE_STATUS").hide();',
'apex.item("P51_RANK").hide();',
'apex.item("P51_FORMATION").hide();'))
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
'#report_image_report img {',
'    height: 130px;',
'    width: 90px;',
'}',
'',
'#phase .a-GV-status {',
'    display: none;',
'}',
'',
'.popup_lov {',
'    background-color: #FFFFCC !important;',
'}',
'',
'.selectlist {',
'    background-color: #FFFFCC !important;',
'}',
'',
'/*.apex-item-text {',
'    background-color: #FFFFCC !important;',
'}*/',
'',
'#accessory .a-GV-status {',
'    display: none;',
'}',
'',
'#ACCESSORY_ID .popup_lov {',
'    background-color: #FFFFCC !important;',
'}',
'',
'#radsim .a-GV-status {',
'    display: none;',
'}',
'',
'#isocenter .a-GV-status {',
'    display: none;',
'}',
'',
'#specialint .a-GV-status {',
'    display: none;',
'}',
'',
'#field .a-GV-status {',
'    display: none;',
'}',
'',
'#raddetail .a-GV-status {',
'    display: none;',
'}',
'',
'#P86_MRNO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PATIENT_NAME {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_DISP_AGE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_DISP_GENDER {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_RADIATION_NO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_RADIATION_DATE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_DISP_DOCTOR {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_DISP_INTENT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_SIMULATION_REMARKS {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_LR_TYPE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_LR_SHIFT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_IO_TYPE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_IO_SHIFT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_UD_TYPE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_UD_SHIFT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_ND_PHY_PLAN_ID {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_ND_PHY_PLAN_REMARKS {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PATIENT_TYPE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PATIENT_MRNO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_NAME {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PASSWORD {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PATIENT_TYPE_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PATIENT_MRNO_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_NAME_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P86_PASSWORD_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'2000'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250114162142'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169316310199539722)
,p_plug_name=>'Simulation Remarks '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>132
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169316552785539724)
,p_plug_name=>'Shift Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>142
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT RADIATION_NO,',
'            SITE_ID,',
'            SIMULATION_ID,',
'            ISOCENTER_ID,',
'            (SELECT DESCRIPTION',
'               FROM RADIATION.SUB_SITE',
'              WHERE SUB_SITE_ID = ISOCENTER_ID) ISOCENTER_DESC,',
'            LR_TYPE,',
'            LR_SHIFT,',
'            UD_TYPE,',
'            UD_SHIFT,',
'            IO_TYPE,',
'            IO_SHIFT,',
'            ROWID',
'       FROM RADIATION.RAD_SIMULATION_ISOCENTER',
'      WHERE RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'        AND SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'        AND SIMULATION_ID = :P86_ND_SIMULATION_ID',
'        AND ISOCENTER_ID = :P86_ND_ISOCENTER_ID;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_ND_SIMULATION_ID,P86_ND_ISOCENTER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(250069766880850845)
,p_plug_name=>'Phase(s)'
,p_region_name=>'phase'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>52
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       PHASE_NO,',
'       DOSE_FRACTION,',
'       NO_OF_FRACTION,',
'       DOSE_FRACTION * NO_OF_FRACTION TOT_DOSE,',
'       RBP.ROWID',
'  FROM RADIATION.RADIATION_BOOST_PLAN RBP',
' WHERE RBP.RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'   AND RBP.SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Phase(s)'
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
 p_id=>wwv_flow_imp.id(250069903577850847)
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
 p_id=>wwv_flow_imp.id(250070015461850848)
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
 p_id=>wwv_flow_imp.id(250070182574850849)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Phase No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250070218096850850)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose Fraction<br>(cGy)</b></span>'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250070294684850851)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>No of <br>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250070481715850852)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250070560764850853)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose<br>(cGy)</b></span>'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(250069870969850846)
,p_internal_uid=>250069870969850846
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'  config.initialSelection = true;',
'',
'  return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(250633947635012420)
,p_interactive_grid_id=>wwv_flow_imp.id(250069870969850846)
,p_static_id=>'159848'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(250634093722012420)
,p_report_id=>wwv_flow_imp.id(250633947635012420)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250634657528012422)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(250069903577850847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250635514923012424)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(250070015461850848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250636484325012426)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(250070182574850849)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250637366126012428)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(250070218096850850)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250638234743012430)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(250070294684850851)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250639178972012432)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(250070481715850852)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250647701677089358)
,p_view_id=>wwv_flow_imp.id(250634093722012420)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(250070560764850853)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(250071152392850859)
,p_plug_name=>'Accessories'
,p_region_name=>'accessory'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>62
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       ACCESSORY_ID,',
'       RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(ACCESSORY_ID) DISP_ACCESSORY,',
'       REMARKS,',
'       ROWID',
'  FROM RADIATION.RAD_ACCESSORIES',
' WHERE RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'   AND TRANS_TYPE = ''CT'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Accessories'
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
 p_id=>wwv_flow_imp.id(234825962298992812)
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
 p_id=>wwv_flow_imp.id(250071303237850861)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250071396394850862)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250071770732850865)
,p_name=>'ACCESSORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'ACCESSORY_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250071816928850866)
,p_name=>'DISP_ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_ACCESSORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Accessory</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250071937116850867)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(250071257431850860)
,p_internal_uid=>250071257431850860
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
 p_id=>wwv_flow_imp.id(250696820157242978)
,p_interactive_grid_id=>wwv_flow_imp.id(250071257431850860)
,p_static_id=>'160477'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(250697087195242978)
,p_report_id=>wwv_flow_imp.id(250696820157242978)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(234831949245993014)
,p_view_id=>wwv_flow_imp.id(250697087195242978)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(234825962298992812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250697567951242981)
,p_view_id=>wwv_flow_imp.id(250697087195242978)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(250071303237850861)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250698440046242984)
,p_view_id=>wwv_flow_imp.id(250697087195242978)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(250071396394850862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250701107558242989)
,p_view_id=>wwv_flow_imp.id(250697087195242978)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(250071770732850865)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250701993668242991)
,p_view_id=>wwv_flow_imp.id(250697087195242978)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(250071816928850866)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250702919541242993)
,p_view_id=>wwv_flow_imp.id(250697087195242978)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(250071937116850867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(250566785893748328)
,p_plug_name=>'Simulation'
,p_region_name=>'radsim'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>102
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.RADIATION_NO,',
'       S.SITE_ID,',
'       S.SIMULATION_ID,',
'       S.FROM_FRACTION_ID,',
'       S.TO_FRACTION_ID,',
'       S.SCHEDULE_SRNO,',
'       S.PHY_PLAN_ID,',
'       P.REMARKS PHY_REMARKS,',
'       S.SIGN_BY1,',
'       S.SIGN_BY2,',
'       CASE',
'         WHEN S.SIGN_BY1 IS NOT NULL THEN',
'          HIS.PKG_PATIENT.GET_PATIENT_NAME(S.SIGN_BY1) || '' & '' ||',
'          HIS.PKG_PATIENT.GET_PATIENT_NAME(S.SIGN_BY2)',
'         ELSE',
'          NULL',
'       END SIGN_BY_NAME,',
'       S.SIGN_DATE,',
'       S.STATUS_ID,',
'       S.REMARKS REMARKS,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(S.STATUS_ID) STATUS_DESC,',
'       S.ROWID',
'  FROM RADIATION.RAD_SIMULATION S, RADIATION.RAD_PHYSICS P',
' WHERE S.RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'   AND S.SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'   AND S.RADIATION_NO = P.RADIATION_NO',
'   AND S.SITE_ID = P.SITE_ID',
'   AND S.PHY_PLAN_ID = P.PHY_PLAN_ID',
'   AND S.STATUS_ID <> ''248'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Simulation'
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
 p_id=>wwv_flow_imp.id(234825987258992813)
,p_name=>'SIMULATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIMULATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(234826079040992814)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
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
 p_id=>wwv_flow_imp.id(234826254521992815)
,p_name=>'PHY_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(234826344162992816)
,p_name=>'SIGN_BY1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY1'
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
 p_id=>wwv_flow_imp.id(234826459519992817)
,p_name=>'SIGN_BY2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY2'
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
 p_id=>wwv_flow_imp.id(250566930150748330)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(250567069120748331)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(250567107885748332)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>99
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PHY_PLAN_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
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
 p_id=>wwv_flow_imp.id(250567297942748334)
,p_name=>'SIGN_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Sign By</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(250567392260748335)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<span style="color: darkblue;"><b>Sign Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250567534521748336)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
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
 p_id=>wwv_flow_imp.id(250567654331748337)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250567788910748338)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>From <br>Fraction ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FRACTION_ID, FRACTION_ID ID',
'  FROM (SELECT B.PHASE_NO + FRACTION / 100 FRACTION_ID',
'          FROM RADIATION.RADIATION_BOOST_PLAN B,',
'               (SELECT LEVEL FRACTION FROM DUAL CONNECT BY LEVEL < 100) F',
'         WHERE B.RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'           AND B.SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'           AND F.FRACTION < B.NO_OF_FRACTION)',
' WHERE FRACTION_ID >=',
'       (SELECT FROM_FRACTION_ID',
'          FROM RADIATION.RAD_PHYSICS',
'         WHERE RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'           AND SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'           AND PHY_PLAN_ID = :P86_PHY_PLAN_ID)',
' ORDER BY 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_PHY_PLAN_ID'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_PHY_PLAN_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250567811069748339)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>To <br>Fraction ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250568139408748342)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
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
 p_id=>wwv_flow_imp.id(250568604425748347)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(250566844492748329)
,p_internal_uid=>250566844492748329
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(250582912153795054)
,p_interactive_grid_id=>wwv_flow_imp.id(250566844492748329)
,p_static_id=>'159338'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(250583116486795055)
,p_report_id=>wwv_flow_imp.id(250582912153795054)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(234866948862108826)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(234825987258992813)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68.1406
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(234867805812108829)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(234826079040992814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(234868727633108831)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(234826254521992815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(234869658601108837)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(234826344162992816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(234870472680108839)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(234826459519992817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250583668568795056)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(250566930150748330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250584569293795058)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(250567069120748331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250585399242795060)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(250567107885748332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250587277002795064)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(250567297942748334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>261
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250588183873795065)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(250567392260748335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.984
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250589066629795067)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(250567534521748336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250589907189795069)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(250567654331748337)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250590890256795071)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(250567788910748338)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.969
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250591783631795073)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(250567811069748339)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250594397455795079)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(250568139408748342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250598956001795090)
,p_view_id=>wwv_flow_imp.id(250583116486795055)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(250568604425748347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(250569425711748355)
,p_plug_name=>'Isocenter'
,p_region_name=>'isocenter'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>112
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RPI.RADIATION_NO,',
'       RPI.SITE_ID,',
'       RPI.PHY_PLAN_ID,',
'       RPI.PHASE_NO,',
'       RPI.ISOCENTER_ID,',
'       RPI.DESCRIPTION,',
'       RPI.DOSE_FRACTION,',
'       RPI.NO_OF_FRACTION,',
'       R.DESCRIPTION TREATMENT_TYPE_DESC,',
'       RPI.TREATMENT_TYPE,',
'       DOSE_FRACTION * NO_OF_FRACTION TOTAL_DOSE,',
'       RPI.ROWID',
'  FROM RADIATION.RAD_PHYSICS_ISOCENTER RPI, RADIATION.TREATMENT_TYPE R',
' WHERE RPI.RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'   AND RPI.SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'   AND RPI.PHASE_NO = :P86_RAD_PHASE_PHASE_NO',
'   AND RPI.PHY_PLAN_ID = :P86_PHY_PLAN_ID',
'   AND RPI.TREATMENT_TYPE = R.TREATMENT_TYPE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_RAD_PHASE_PHASE_NO,P86_PHY_PLAN_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Isocenter'
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
 p_id=>wwv_flow_imp.id(250569672561748357)
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
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250569738974748358)
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
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250569875893748359)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PHY_PLAN_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250569972811748360)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PHASE_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250570014532748361)
,p_name=>'ISOCENTER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOCENTER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'ISOCENTER_ID'
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
 p_id=>wwv_flow_imp.id(250570184716748362)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Description</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DESCRIPTION'
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
 p_id=>wwv_flow_imp.id(250570195785748363)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose Fraction <br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(250570310560748364)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>No of <br>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(250570412212748365)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'TREATMENT_TYPE_DESC'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250570494759748366)
,p_name=>'TREATMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br>Type</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>1
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION, T.TREATMENT_TYPE',
'  FROM RADIATION.TREATMENT_TYPE T',
' WHERE T.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'TREATMENT_TYPE'
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
 p_id=>wwv_flow_imp.id(250570624358748367)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose <br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'TOTAL_DOSE'
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
 p_id=>wwv_flow_imp.id(250570756224748368)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_static_id=>'ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(250569571508748356)
,p_internal_uid=>250569571508748356
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
 p_id=>wwv_flow_imp.id(250623998633932164)
,p_interactive_grid_id=>wwv_flow_imp.id(250569571508748356)
,p_static_id=>'159749'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(250624277927932164)
,p_report_id=>wwv_flow_imp.id(250623998633932164)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250624760159932165)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(250569672561748357)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250625595856932167)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(250569738974748358)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250626559884932169)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(250569875893748359)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250627430029932171)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(250569972811748360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250628354163932172)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(250570014532748361)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250629244980932174)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(250570184716748362)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>273
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250630144100932176)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(250570195785748363)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250631045766932178)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(250570310560748364)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250631903942932180)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(250570412212748365)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250632843648932182)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(250570494759748366)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250633769291932183)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(250570624358748367)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250634677382932185)
,p_view_id=>wwv_flow_imp.id(250624277927932164)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(250570756224748368)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(250888617864108527)
,p_plug_name=>'Special Instruction'
,p_region_name=>'specialint'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>122
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       PHASE_NO,',
'       FRACTION_NO,',
'       SPECIAL_INSTRUCTION,',
'       PORT_FILM_REQUIRED,',
'       SPECIAL_MESSAGE,',
'       T.ROWID',
'  FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS T',
' WHERE T.RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'   AND T.SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'   AND T.PHASE_NO = :P86_RAD_PHASE_PHASE_NO',
'   ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_RAD_PHASE_PHASE_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Special Instruction'
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
 p_id=>wwv_flow_imp.id(250888869443108529)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
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
 p_id=>wwv_flow_imp.id(250888903788108530)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250889000516108531)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250889188422108532)
,p_name=>'FRACTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250889193786108533)
,p_name=>'SPECIAL_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Special Instruction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>255
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250889296532108534)
,p_name=>'PORT_FILM_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORT_FILM_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250889437430108535)
,p_name=>'SPECIAL_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250889534247108536)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(250888789761108528)
,p_internal_uid=>250888789761108528
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
 p_id=>wwv_flow_imp.id(250925515329217836)
,p_interactive_grid_id=>wwv_flow_imp.id(250888789761108528)
,p_static_id=>'162764'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(250925784351217836)
,p_report_id=>wwv_flow_imp.id(250925515329217836)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250926237906217837)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(250888869443108529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250927066326217839)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(250888903788108530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250927930862217842)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(250889000516108531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250928887812217844)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(250889188422108532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250929726826217846)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(250889193786108533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250930663719217848)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(250889296532108534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250931505791217850)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(250889437430108535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250932447559217853)
,p_view_id=>wwv_flow_imp.id(250925784351217836)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(250889534247108536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(318718995740504726)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       M.RADIATION_DATE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P86_MRNO',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P86_MRNO'
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
 p_id=>wwv_flow_imp.id(292962444780679546)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>292962444780679546
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(292962511152679547)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(292962648116679548)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'MRNO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(292962689903679549)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148207536440461817)
,p_db_column_name=>'RADIATION_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Radiation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(297294557095265541)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1450435'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:RADIATION_DATE:REQUEST_STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(371117439964763321)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_css_classes=>'js-dialog-size1200x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>362
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170037538292641020)
,p_plug_name=>'First Technician '
,p_parent_plug_id=>wwv_flow_imp.id(371117439964763321)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170037643842641021)
,p_plug_name=>'Second Technician '
,p_parent_plug_id=>wwv_flow_imp.id(371117439964763321)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(372813211613972024)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>152
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(374570166435774634)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>172
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(405362842987194433)
,p_plug_name=>'Patient Detail'
,p_region_name=>'radmaster'
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
'    /*WHERE RADIATION_NO = NVL(:P86_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P86_MRNO IS NOT NULL THEN',
'             ''%'' || :P86_MRNO',
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
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(415172005851575902)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P86_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /*#image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } */',
'',
'/*#image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'    #image img {',
'        display: inline-block;',
'        width: 10px;',
'        height: 10px;',
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
,p_ajax_items_to_submit=>'P86_USER_MRNO'
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
 p_id=>wwv_flow_imp.id(152308397059823129)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152308798931823130)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(152309188947823130)
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
 p_id=>wwv_flow_imp.id(415172405611575906)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>32
,p_plug_grid_column_span=>6
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
'         RD.MACHINE_ID,',
'         RADIATION.PKG_RADIATION.GET_MACHINE_DESC(P_MACHINE_ID => RD.MACHINE_ID) AS MACHINE_DESC,',
'         (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'         NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'         NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOT_DOSE,',
'         ROWID',
'    FROM RADIATION.RADIATION_DETAIL RD',
'   WHERE RD.RADIATION_NO = :P86_RADIATION_NO',
'     AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                               P_SITE_ID             => RD.SITE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => ''017'') = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(250571207683748373)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(250571326040748374)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_static_id=>'MACHINE_DESC'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(251322351226056358)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>41
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(292963029830679552)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(415172781375575909)
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
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(415172852895575910)
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
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(415172895281575911)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Radiotherapy Site</b></span>'
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
 p_id=>wwv_flow_imp.id(415173067151575912)
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
 p_id=>wwv_flow_imp.id(415173125996575913)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Planning <br> Technique</b></span>'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(415173260919575914)
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
 p_id=>wwv_flow_imp.id(415173349392575915)
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
 p_id=>wwv_flow_imp.id(415173432257575916)
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
 p_id=>wwv_flow_imp.id(415173529086575917)
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
 p_id=>wwv_flow_imp.id(415173600448575918)
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
 p_id=>wwv_flow_imp.id(415173759711575919)
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
 p_id=>wwv_flow_imp.id(415173796411575920)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br> Later</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(415173958127575921)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Active</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
 p_id=>wwv_flow_imp.id(415174071469575922)
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
 p_id=>wwv_flow_imp.id(415174096912575923)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Current Event</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(415174220679575924)
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
 p_id=>wwv_flow_imp.id(415174374375575925)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(415174439609575926)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(415174567614575927)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(415172535249575907)
,p_internal_uid=>415172535249575907
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'  config.initialSelection = true;',
'',
'  return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(415777136737734257)
,p_interactive_grid_id=>wwv_flow_imp.id(415172535249575907)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(415777321919734259)
,p_report_id=>wwv_flow_imp.id(415777136737734257)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250662446475017901)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(250571207683748373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250663360826017903)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(250571326040748374)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(251868796938850086)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(251322351226056358)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.14099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297313421517410779)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(292963029830679552)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415777706594734260)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(415172781375575909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415778671051734263)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(415172852895575910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415779579709734266)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(415172895281575911)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>256
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415780467734734268)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(415173067151575912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415781295307734271)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(415173125996575913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415782272283734276)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(415173260919575914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415783152749734279)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(415173349392575915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415784063800734286)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(415173432257575916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415784937278734288)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(415173529086575917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415785835707734291)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(415173600448575918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415786771362734294)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(415173759711575919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415787630352734296)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(415173796411575920)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415788545516734300)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(415173958127575921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415789414222734304)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(415174071469575922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415790359517734307)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(415174096912575923)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415791199015734310)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(415174220679575924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415792089406734313)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(415174374375575925)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415793070222734320)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(415174439609575926)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(415793919283734322)
,p_view_id=>wwv_flow_imp.id(415777321919734259)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(415174567614575927)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.85400000000001
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(191234718407002832)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(415172405611575906)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152292368613823106)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152288514498823102)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_button_name=>'SignPhysics'
,p_button_static_id=>'signbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152296154439823111)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(372813211613972024)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152297711829823113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(374570166435774634)
,p_button_name=>'NewPlan'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Simulation'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152296558716823112)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(372813211613972024)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152298199359823113)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(374570166435774634)
,p_button_name=>'DisposePlan'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Simulation'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290008516096969536)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(372813211613972024)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(152296905919823113)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(372813211613972024)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169317044611539755)
,p_name=>'P86_SIMULATION_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(169316310199539722)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Simulation Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169386387149540060)
,p_name=>'P86_ND_SIMULATION_ID'
,p_item_sequence=>332
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169387430062540070)
,p_name=>'P86_SCHEDULE_SRNO'
,p_item_sequence=>342
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170079388784641217)
,p_name=>'P86_PATIENT_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
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
 p_id=>wwv_flow_imp.id(170079458568641218)
,p_name=>'P86_PATIENT_MRNO_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170079566118641219)
,p_name=>'P86_NAME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170079667235641220)
,p_name=>'P86_PASSWORD_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
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
 p_id=>wwv_flow_imp.id(170079800638641221)
,p_name=>'P86_DISP_MRNO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170079930469641222)
,p_name=>'P86_USER_MRNO_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170080009190641223)
,p_name=>'P86_LOGIN_DATE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170080064238641224)
,p_name=>'P86_LOCATION_ID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170080232953641225)
,p_name=>'P86_LOGIN_MESSAGE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170080293804641226)
,p_name=>'P86_VALIDATE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(170037643842641021)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170110341327641385)
,p_name=>'P86_SIGN_STATUS'
,p_item_sequence=>352
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234827779919992863)
,p_name=>'P86_SHIFT_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234827872424992864)
,p_name=>'P86_SHIFT_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828004522992865)
,p_name=>'P86_SHIFT_SIMULATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_source=>'SIMULATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828035301992866)
,p_name=>'P86_SHIFT_ISOCENTER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_source=>'ISOCENTER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828128260992867)
,p_name=>'P86_SHIFT_ISOCENTER_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_source=>'ISOCENTER_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828297723992868)
,p_name=>'P86_LR_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_default=>'L'
,p_prompt=>'<b><p style="color:#00008B">Type</p></b>'
,p_source=>'LR_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Left;L,Right;R'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828357410992869)
,p_name=>'P86_LR_SHIFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_prompt=>'<b><p style="color:#00008B">Shift</p></b>'
,p_post_element_text=>'<b><p><font size="3" COLOR=red>&nbsp;&nbsp;  cm</p></font></b>'
,p_source=>'LR_SHIFT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828480046992870)
,p_name=>'P86_UD_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_default=>'RETURN ''U'';'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b><p style="color:#00008B">Type</p></b>'
,p_source=>'UD_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Up;U,Down;D'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828563711992871)
,p_name=>'P86_UD_SHIFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_prompt=>'<b><p style="color:#00008B">Shift</p></b>'
,p_post_element_text=>'<b><p><font size="3" COLOR=red>&nbsp;&nbsp;  cm</p></font></b>'
,p_source=>'UD_SHIFT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828619538992872)
,p_name=>'P86_IO_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_default=>'I'
,p_prompt=>'<b><p style="color:#00008B">Type</p></b>'
,p_source=>'IO_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:In;I,Out;O'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828717237992873)
,p_name=>'P86_IO_SHIFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_prompt=>'<b><p style="color:#00008B">Shift</p></b>'
,p_post_element_text=>'<b><p><font size="3" COLOR=red>&nbsp;&nbsp;  cm</p></font></b>'
,p_source=>'IO_SHIFT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234828903930992874)
,p_name=>'P86_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_item_source_plug_id=>wwv_flow_imp.id(169316552785539724)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250225722149851356)
,p_name=>'P86_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>272
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250225839708851357)
,p_name=>'P86_RAD_PHASE_PHASE_NO'
,p_item_sequence=>282
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250724046032748852)
,p_name=>'P86_PHY_PLAN_ID'
,p_item_sequence=>292
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250821275935020349)
,p_name=>'P86_ND_PHY_PLAN_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(191234718407002832)
,p_prompt=>'<b><p style="color:#00008B">Physicist Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250821340532020350)
,p_name=>'P86_ND_PHY_PLAN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(191234718407002832)
,p_prompt=>'<b><p style="color:#00008B">Physics Plan ID:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(250821839621020426)
,p_name=>'P86_CURRENT_MACHINE'
,p_item_sequence=>92
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251035767392401447)
,p_name=>'P86_ND_ISOCENTER_ID'
,p_item_sequence=>302
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251474506831056830)
,p_name=>'P86_CHECK_SIGN'
,p_item_sequence=>312
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251477675403056862)
,p_name=>'P86_PARAM_MRNO'
,p_item_sequence=>322
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(262345895129291785)
,p_name=>'P86_SCHEDULE_EVENT_ID'
,p_item_sequence=>372
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(318948899660505372)
,p_name=>'P86_PARAM_RADIATION_NO'
,p_item_sequence=>212
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371167851642763595)
,p_name=>'P86_TXT_ALERT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(371117439964763321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371167959326763596)
,p_name=>'P86_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(371117439964763321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371168170302763585)
,p_name=>'P86_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
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
 p_id=>wwv_flow_imp.id(371168198513763586)
,p_name=>'P86_PATIENT_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
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
 p_id=>wwv_flow_imp.id(371168291219763587)
,p_name=>'P86_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
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
 p_id=>wwv_flow_imp.id(371168447908763588)
,p_name=>'P86_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
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
 p_id=>wwv_flow_imp.id(371168571307763589)
,p_name=>'P86_DISP_MRNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371168654724763590)
,p_name=>'P86_USER_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371168694637763591)
,p_name=>'P86_LOGIN_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371168788835763592)
,p_name=>'P86_LOCATION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371168958405763593)
,p_name=>'P86_LOGIN_MESSAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371169051578763594)
,p_name=>'P86_VALIDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(170037538292641020)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373091210894972728)
,p_name=>'P86_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>222
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373091285117972729)
,p_name=>'P86_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>232
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373911690469942197)
,p_name=>'P86_TXT_URL'
,p_item_sequence=>242
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(374891353291567961)
,p_name=>'P86_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(371117439964763321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(375358449387537537)
,p_name=>'P86_RAD_PLAN_DML_STATUS'
,p_item_sequence=>262
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(375358869551537542)
,p_name=>'P86_PARAM_SR_NO'
,p_item_sequence=>202
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405508343815194864)
,p_name=>'P86_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405508440401194865)
,p_name=>'P86_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415315888002576316)
,p_name=>'P86_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415316001089576317)
,p_name=>'P86_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
,p_source=>'PATIENT_NAME'
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
 p_id=>wwv_flow_imp.id(415316121252576318)
,p_name=>'P86_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415316201224576319)
,p_name=>'P86_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_prompt=>'<b><p style="color:#00008B">Sex:</p></b>'
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
 p_id=>wwv_flow_imp.id(415316241295576320)
,p_name=>'P86_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415316399057576321)
,p_name=>'P86_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DISP_DOCTOR'
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
 p_id=>wwv_flow_imp.id(415316537132576322)
,p_name=>'P86_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
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
 p_id=>wwv_flow_imp.id(415316755800576325)
,p_name=>'P86_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415316925392576326)
,p_name=>'P86_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415316983763576327)
,p_name=>'P86_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415317051006576328)
,p_name=>'P86_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415317174173576329)
,p_name=>'P86_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415317291703576330)
,p_name=>'P86_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(405362842987194433)
,p_item_source_plug_id=>wwv_flow_imp.id(405362842987194433)
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
 p_id=>wwv_flow_imp.id(415450850171576614)
,p_name=>'P86_PARAM_SITE_ID'
,p_item_sequence=>192
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417810556395559831)
,p_name=>'P86_ALERT_TEXT'
,p_item_sequence=>252
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152329767126823281)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152296905919823113)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152330291180823284)
,p_event_id=>wwv_flow_imp.id(152329767126823281)
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
 p_id=>wwv_flow_imp.id(152330704190823285)
,p_event_id=>wwv_flow_imp.id(152329767126823281)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152331196860823285)
,p_name=>'UpdateISOCenter'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateISOCenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152331617026823286)
,p_event_id=>wwv_flow_imp.id(152331196860823285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P86_ISO_RADIATION_NO",',
'            "P86_ISO_SITE_ID",',
'            "P86_ISO_PHY_PLAN_ID",',
'            "P86_ISO_PHASE_NO",',
'            "P86_ISOCENTER_ID",',
'            "P86_ISO_DESCRIPTION",',
'            "P86_ISO_DOSE_FRACTION",',
'            "P86_ISO_NO_OF_FRACTION",',
'            "P86_ISO_TREATMENT_TYPE_DESC",',
'            "P86_ISO_TREATMENT_TYPE"',
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
'                apex.region(''isocenter'').refresh();',
'                apex.theme.closeRegion(''isocenterdtl'');',
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
 p_id=>wwv_flow_imp.id(152332015635823287)
,p_name=>'InsertISOCenter'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertISOCenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152332584081823288)
,p_event_id=>wwv_flow_imp.id(152332015635823287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P86_ISO_RADIATION_NO",',
'            "P86_ISO_SITE_ID",',
'            "P86_ISO_PHY_PLAN_ID",',
'            "P86_ISO_PHASE_NO",',
'            "P86_ISOCENTER_ID",',
'            "P86_ISO_DESCRIPTION",',
'            "P86_ISO_DOSE_FRACTION",',
'            "P86_ISO_NO_OF_FRACTION",',
'            "P86_ISO_TREATMENT_TYPE_DESC",',
'            "P86_ISO_TREATMENT_TYPE"',
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
'                apex.region(''isocenter'').refresh();',
'                apex.theme.closeRegion(''isocenterdtl'');',
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
 p_id=>wwv_flow_imp.id(152332934168823288)
,p_name=>'InsertSpecialInstruction'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertSpecialInstruction'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152333496890823288)
,p_event_id=>wwv_flow_imp.id(152332934168823288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P86_SP_INTRUCT_FRACTION_NO",',
'            "P86_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P86_SP_INTRUCT_RADIATION_NO",',
'            "P86_SP_INTRUCT_SITE_ID",',
'            "P86_SP_INTRUCT_PHASE_NO",',
'            "P86_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P86_SP_INTRUCT_ROWID"',
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
'                apex.region(''specialint'').refresh();',
'                apex.theme.closeRegion(''specialintdtl'');',
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
 p_id=>wwv_flow_imp.id(152333882731823288)
,p_name=>'UpdateSpecialInstruction'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateSpecialInstruction'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152334309506823288)
,p_event_id=>wwv_flow_imp.id(152333882731823288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P86_SP_INTRUCT_FRACTION_NO",',
'            "P86_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P86_SP_INTRUCT_RADIATION_NO",',
'            "P86_SP_INTRUCT_SITE_ID",',
'            "P86_SP_INTRUCT_PHASE_NO",',
'            "P86_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P86_SP_INTRUCT_ROWID"',
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
'                apex.region(''specialint'').refresh();',
'                apex.theme.closeRegion(''specialintdtl'');',
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
 p_id=>wwv_flow_imp.id(152334760364823289)
,p_name=>'SetRadiationNo'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(318718995740504726)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152335241254823289)
,p_event_id=>wwv_flow_imp.id(152334760364823289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_PARAM_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152335743790823289)
,p_event_id=>wwv_flow_imp.id(152334760364823289)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P86_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152336223355823289)
,p_event_id=>wwv_flow_imp.id(152334760364823289)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P86_RADIATION_NO,',
'         :P86_RADIATION_DATE,',
'         :P86_MRNO,',
'         :P86_PATIENT_NAME,',
'         :P86_DISP_AGE,',
'         :P86_DISP_GENDER,',
'         :P86_DOCTOR_ID,',
'         :P86_DISP_DOCTOR,',
'         :P86_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = :P86_PARAM_RADIATION_NO',
'     AND MRNO LIKE CASE',
'           WHEN :P86_MRNO IS NOT NULL THEN',
'            ''%'' || :P86_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P86_USER_MRNO,P86_PARAM_RADIATION_NO'
,p_attribute_03=>'P86_RADIATION_NO,P86_RADIATION_DATE,P86_PATIENT_NAME,P86_DISP_AGE,P86_DISP_GENDER,P86_DOCTOR_ID,P86_DISP_DOCTOR,P86_DISP_INTENT,P86_USER_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152336701383823289)
,p_event_id=>wwv_flow_imp.id(152334760364823289)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(415172005851575902)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152337211697823291)
,p_event_id=>wwv_flow_imp.id(152334760364823289)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(415172405611575906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152338148648823292)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152338659903823292)
,p_event_id=>wwv_flow_imp.id(152338148648823292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P86_MRNO IS NOT NULL THEN',
'  ',
'    :P86_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P86_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P86_MRNO);',
'      :P86_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P86_MRNO);',
'      :P86_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P86_MRNO);',
'      :P86_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P86_MRNO);',
'      :P86_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P86_MRNO);',
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
,p_attribute_02=>'P86_USER_MRNO'
,p_attribute_03=>'P86_SERVICE_NO,P86_SERVICE_STATUS,P86_RANK,P86_FORMATION,P86_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152339118298823292)
,p_event_id=>wwv_flow_imp.id(152338148648823292)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P86_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P86_SERVICE_NO").show();',
'    apex.item("P86_SERVICE_STATUS").show();',
'    apex.item("P86_RANK").show();',
'    apex.item("P86_FORMATION").show();',
'    apex.item("P86_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P86_SERVICE_NO").hide();',
'    apex.item("P86_SERVICE_STATUS").hide();',
'    apex.item("P86_RANK").hide();',
'    apex.item("P86_FORMATION").hide();',
'    apex.item("P86_UNIT").hide();',
'}'))
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
 p_id=>wwv_flow_imp.id(152339586328823292)
,p_name=>'DARadDetail1'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(415172405611575906)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152340026758823293)
,p_event_id=>wwv_flow_imp.id(152339586328823292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''raddetail'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var siteID = model.getValue(record, ''SITE_ID'');',
'    var radiationNO = model.getValue(record, ''RADIATION_NO'');',
'    $s(''P86_RAD_DETAIL_ND_SITE_ID'', siteID);',
'    $s(''P86_RAD_DETAIL_ND_RADIATION_NO'', radiationNO);',
'',
'});',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152340562644823293)
,p_event_id=>wwv_flow_imp.id(152339586328823292)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P86_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P86_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'$s(''P86_CURRENT_MACHINE'', _.raddetail.MACHINE_DESC);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152341042716823293)
,p_event_id=>wwv_flow_imp.id(152339586328823292)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250069766880850845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152341593478823293)
,p_event_id=>wwv_flow_imp.id(152339586328823292)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250069766880850845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152342095646823294)
,p_event_id=>wwv_flow_imp.id(152339586328823292)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250071152392850859)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152342519492823294)
,p_event_id=>wwv_flow_imp.id(152339586328823292)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250566785893748328)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152342958372823294)
,p_name=>'PopulatePlanningSiteId'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_ND_DOSE_CONSTRAINT_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152343427844823294)
,p_event_id=>wwv_flow_imp.id(152342958372823294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P86_DOSE_CONSTRAINT_SITE_ID").setValue($v("P86_ND_DOSE_CONSTRAINT_SITE"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152343801277823294)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152288514498823102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152344319193823295)
,p_event_id=>wwv_flow_imp.id(152343801277823294)
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
'  :P86_TXT_ALERT_TEXT := null;',
'  :P86_SUCCESS_MSG    := null;',
'  :P86_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P86_DISP_MRNO,',
'                                          :P86_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P86_ERROR := ''First Technician:- ''||L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P86_VALIDATE'', ''Y'');',
'    :P86_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P86_DISP_MRNO,P86_PASSWORD'
,p_attribute_03=>'P86_SUCCESS_MSG,P86_ERROR,P86_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152344819424823295)
,p_event_id=>wwv_flow_imp.id(152343801277823294)
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
'  IF :P86_VALIDATE = ''Y'' THEN',
'    :P86_TXT_ALERT_TEXT := null;',
'    :P86_SUCCESS_MSG    := null;',
'    :P86_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P86_DISP_MRNO_1,',
'                                            :P86_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P86_ERROR := ''Second Technician:- '' || L_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P86_VALIDATE_1'', ''Y'');',
'      :P86_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_DISP_MRNO_1,P86_PASSWORD_1,P86_VALIDATE'
,p_attribute_03=>'P86_SUCCESS_MSG,P86_ERROR,P86_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152345380914823298)
,p_event_id=>wwv_flow_imp.id(152343801277823294)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P86_VALIDATE = ''Y'' AND :P86_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00142.SIGN_SIMULATION(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''ORGANIZATION_ID''),',
'                                                P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''LOCATION_ID''),',
'                                                P_RADIATION_NO      => :P86_RAD_DETAIL_ND_RADIATION_NO,',
'                                                P_SITE_ID           => :P86_RAD_DETAIL_ND_SITE_ID,',
'                                                P_SIMULATION_ID     => :P86_ND_SIMULATION_ID,',
'                                                P_SIGN_BY1          => :P86_DISP_MRNO,',
'                                                P_SIGN_BY2          => :P86_DISP_MRNO_1,',
'                                                P_SCHEDULE_SRNO     => :P86_SCHEDULE_SRNO,',
'                                                P_SCHEDULE_EVENT_ID => :P86_SCHEDULE_EVENT_ID,',
'                                                P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''USER_MRNO''),',
'                                                P_OBJECT_CODE       => ''S18APX00056'',',
'                                                P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''USER_MRNO''),',
'                                                P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P86_ERROR := L_ALERT_TEXT;',
'    END IF;',
'    :P86_SUCCESS_MSG := ''Simulation signed properly'';',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_VALIDATE,P86_VALIDATE_1,P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_ND_SIMULATION_ID,P86_DISP_MRNO,P86_DISP_MRNO_1,P86_SCHEDULE_SRNO,P86_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P86_ERROR,P86_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152345872859823298)
,p_event_id=>wwv_flow_imp.id(152343801277823294)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radsim'').refresh();',
'apex.item("sign_btn").disable();',
'apex.item("save").disable();',
'apex.theme.closeRegion(''sign'');',
'',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P86_SUCCESS_MSG'') !== '''' && $v(''P86_ERROR'') === '''')',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152346283962823298)
,p_name=>'CloseSign'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152292368613823106)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152346766143823298)
,p_event_id=>wwv_flow_imp.id(152346283962823298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(371117439964763321)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152347144122823300)
,p_name=>'SetMRNO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152347694296823300)
,p_event_id=>wwv_flow_imp.id(152347144122823300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_PASSWORD,P86_PATIENT_NAME,P86_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152348146101823300)
,p_event_id=>wwv_flow_imp.id(152347144122823300)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P86_PATIENT_TYPE IS NOT NULL AND :P86_PATIENT_MRNO IS NOT NULL THEN',
'    :P86_DISP_MRNO := :P86_PATIENT_TYPE || LPAD(:P86_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_PATIENT_TYPE,P86_PATIENT_MRNO'
,p_attribute_03=>'P86_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152348649724823301)
,p_event_id=>wwv_flow_imp.id(152347144122823300)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P86_ERROR := NULL;',
'  IF :P86_PATIENT_MRNO IS NOT NULL THEN',
'    :P86_DISP_MRNO := :P86_PATIENT_TYPE || LPAD(:P86_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P86_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P86_ERROR        := ''This is not an active employee.'';',
'      :P86_PATIENT_MRNO := NULL;',
'      :P86_DISP_MRNO    := NULL;',
'      :P86_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P86_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P86_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P43_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_PATIENT_MRNO,P86_PATIENT_TYPE'
,p_attribute_03=>'P86_DISP_MRNO,P86_ERROR,P86_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152349110349823301)
,p_event_id=>wwv_flow_imp.id(152347144122823300)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P86_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P86_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152349659088823301)
,p_event_id=>wwv_flow_imp.id(152347144122823300)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P86_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P86_DISP_MRNO);'
,p_attribute_02=>'P86_DISP_MRNO'
,p_attribute_03=>'P86_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152350079871823301)
,p_name=>'DAPhase'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(250069766880850845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152350529625823301)
,p_event_id=>wwv_flow_imp.id(152350079871823301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P86_RAD_PHASE_PHASE_NO'', _.phase.PHASE_NO);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152351096062823302)
,p_event_id=>wwv_flow_imp.id(152350079871823301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250071152392850859)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152351547590823302)
,p_event_id=>wwv_flow_imp.id(152350079871823301)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250888617864108527)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152352084143823302)
,p_event_id=>wwv_flow_imp.id(152350079871823301)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250569425711748355)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152352404801823302)
,p_name=>'DASimulation'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(250566785893748328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152352938813823302)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P86_ND_SIMULATION_ID'', _.radsim.SIMULATION_ID);',
'$s(''P86_ND_PHY_PLAN_ID'', _.radsim.PHY_PLAN_ID);',
'$s(''P86_ND_PHY_PLAN_REMARKS'', _.radsim.PHY_REMARKS);',
'$s(''P86_PHY_PLAN_ID'', _.radsim.PHY_PLAN_ID);',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152353412579823302)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250569425711748355)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152353924320823303)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    apex.item("P86_ND_PHY_PLAN_ID").setValue(model.getValue(this.data.selectedRecords[i], "PHY_PLAN_ID"));',
'    apex.item("P86_ND_PHY_PLAN_REMARKS").setValue(model.getValue(this.data.selectedRecords[i], "PHY_REMARKS"));',
'    apex.item("P86_SIMULATION_REMARKS").setValue(model.getValue(this.data.selectedRecords[i], "REMARKS"));',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152354417067823303)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P86_SHIFT_RADIATION_NO_1'', _.radsim.RADIATION_NO);',
'$s(''P86_SHIFT_SITE_ID'', _.radsim.SITE_ID);',
'$s(''P86_SHIFT_SIMULATION_ID'', _.radsim.SIMULATION_ID);',
'$s(''P86_SIGN_STATUS'', _.radsim.STATUS_ID);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152354900490823303)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         SIMULATION_ID,',
'         ISOCENTER_ID,',
'         (SELECT DESCRIPTION',
'            FROM RADIATION.SUB_SITE',
'           WHERE SUB_SITE_ID = ISOCENTER_ID) ISOCENTER_DESC,',
'         LR_TYPE,',
'         LR_SHIFT,',
'         UD_TYPE,',
'         UD_SHIFT,',
'         IO_TYPE,',
'         IO_SHIFT,',
'         ROWID',
'    INTO :P86_SHIFT_RADIATION_NO_1,',
'         :P86_SHIFT_SITE_ID,',
'         :P86_SHIFT_SIMULATION_ID,',
'         :P86_SHIFT_ISOCENTER_ID,',
'         :P86_SHIFT_ISOCENTER_DESC,',
'         :P86_LR_TYPE,',
'         :P86_LR_SHIFT,',
'         :P86_UD_TYPE,',
'         :P86_UD_SHIFT,',
'         :P86_IO_TYPE,',
'         :P86_IO_SHIFT,',
'         :P86_ROWID_1',
'    FROM RADIATION.RAD_SIMULATION_ISOCENTER',
'   WHERE RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'     AND SIMULATION_ID = :P86_ND_SIMULATION_ID',
'     AND ISOCENTER_ID = :P86_ND_ISOCENTER_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_ND_SIMULATION_ID,P86_ND_ISOCENTER_ID'
,p_attribute_03=>'P86_SHIFT_RADIATION_NO_1,P86_SHIFT_SITE_ID,P86_SHIFT_SIMULATION_ID,P86_SHIFT_ISOCENTER_ID,P86_SHIFT_ISOCENTER_DESC,P86_LR_TYPE,P86_LR_SHIFT,P86_UD_TYPE,P86_UD_SHIFT,P86_IO_TYPE,P86_IO_SHIFT,P86_ROWID_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152355493750823303)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P86_SIGN_STATUS") === "015") || ($v("P86_SIGN_STATUS") === "248")) {',
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
 p_id=>wwv_flow_imp.id(152355954390823303)
,p_event_id=>wwv_flow_imp.id(152352404801823302)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(250569425711748355)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152356306600823304)
,p_name=>'SetTotalDose1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_ISO_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152356896593823304)
,p_event_id=>wwv_flow_imp.id(152356306600823304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P86_ISO_DOSE_FRACTION,0) * NVL(:P86_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P86_ISO_DOSE_FRACTION,P86_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152357244144823304)
,p_name=>'SetTotalDose2'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_ISO_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152357723575823305)
,p_event_id=>wwv_flow_imp.id(152357244144823304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P86_ISO_DOSE_FRACTION,0) * NVL(:P86_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P86_ISO_DOSE_FRACTION,P86_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152358142348823306)
,p_name=>'DAISOCenter'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(250569425711748355)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152358649228823306)
,p_event_id=>wwv_flow_imp.id(152358142348823306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P86_ND_ISOCENTER_ID'', _.isocenter.ISOCENTER_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152359101560823307)
,p_event_id=>wwv_flow_imp.id(152358142348823306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P86_SHIFT_ISOCENTER_ID'', _.isocenter.ISOCENTER_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152359610080823308)
,p_event_id=>wwv_flow_imp.id(152358142348823306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         SIMULATION_ID,',
'         ISOCENTER_ID,',
'         (SELECT DESCRIPTION',
'            FROM RADIATION.SUB_SITE',
'           WHERE SUB_SITE_ID = ISOCENTER_ID) ISOCENTER_DESC,',
'         LR_TYPE,',
'         LR_SHIFT,',
'         UD_TYPE,',
'         UD_SHIFT,',
'         IO_TYPE,',
'         IO_SHIFT,',
'         ROWID',
'    INTO :P86_SHIFT_RADIATION_NO_1,',
'         :P86_SHIFT_SITE_ID,',
'         :P86_SHIFT_SIMULATION_ID,',
'         :P86_SHIFT_ISOCENTER_ID,',
'         :P86_SHIFT_ISOCENTER_DESC,',
'         :P86_LR_TYPE,',
'         :P86_LR_SHIFT,',
'         :P86_UD_TYPE,',
'         :P86_UD_SHIFT,',
'         :P86_IO_TYPE,',
'         :P86_IO_SHIFT,',
'         :P86_ROWID_1',
'    FROM RADIATION.RAD_SIMULATION_ISOCENTER',
'   WHERE RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'     AND SIMULATION_ID = :P86_ND_SIMULATION_ID',
'     AND ISOCENTER_ID = :P86_ND_ISOCENTER_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_ND_SIMULATION_ID,P86_ND_ISOCENTER_ID'
,p_attribute_03=>'P86_SHIFT_RADIATION_NO_1,P86_SHIFT_SITE_ID,P86_SHIFT_SIMULATION_ID,P86_SHIFT_ISOCENTER_ID,P86_SHIFT_ISOCENTER_DESC,P86_LR_TYPE,P86_LR_SHIFT,P86_UD_TYPE,P86_UD_SHIFT,P86_IO_TYPE,P86_ROWID_1,P86_IO_SHIFT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152360107510823308)
,p_event_id=>wwv_flow_imp.id(152358142348823306)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(169316552785539724)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152360566297823310)
,p_name=>'InsertFields'
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152361041484823310)
,p_event_id=>wwv_flow_imp.id(152360566297823310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P86_FIELD_NO",',
'            "P86_FIELD_DESCRIPTION",',
'            "P86_FIELD_ENERGY",',
'            "P86_FIELD_GANTRY",',
'            "P86_FIELD_SSD",',
'            "P86_FIELD_MU",',
'            "P86_FIELDS_RADIATION_NO",',
'            "P86_FIELDS_SITE_ID",',
'            "P86_FIELDS_PHY_PLAN_ID",',
'            "P86_FIELDS_ISOCENTER_ID",',
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
'                apex.region(''field'').refresh();',
'                apex.theme.closeRegion(''fielddtl'');',
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
 p_id=>wwv_flow_imp.id(152361493407823311)
,p_name=>'UpdateFields'
,p_event_sequence=>370
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152361920519823311)
,p_event_id=>wwv_flow_imp.id(152361493407823311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P86_FIELD_NO",',
'            "P86_FIELD_DESCRIPTION",',
'            "P86_FIELD_ENERGY",',
'            "P86_FIELD_GANTRY",',
'            "P86_FIELD_SSD",',
'            "P86_FIELD_MU",',
'            "P86_FIELDS_RADIATION_NO",',
'            "P86_FIELDS_SITE_ID",',
'            "P86_FIELDS_PHY_PLAN_ID",',
'            "P86_FIELDS_ISOCENTER_ID",',
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
'                apex.region(''field'').refresh();',
'                apex.theme.closeRegion(''fielddtl'');',
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
 p_id=>wwv_flow_imp.id(152362386661823311)
,p_name=>'PhysicsSign'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(152296154439823111)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152362893890823311)
,p_event_id=>wwv_flow_imp.id(152362386661823311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P86_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P86_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P86_DISP_MRNO    := (:P86_PATIENT_TYPE ||',
'                         LPAD(:P86_PATIENT_MRNO, 8, ''0''));',
'    :P86_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P86_DISP_MRNO);',
'    :P86_PATIENT_TYPE_1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P86_PATIENT_MRNO,P86_PATIENT_TYPE,P86_DISP_MRNO,P86_NAME,P86_PATIENT_TYPE_1'
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
 p_id=>wwv_flow_imp.id(152363300244823311)
,p_event_id=>wwv_flow_imp.id(152362386661823311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P86_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152363737322823313)
,p_name=>'DASuccessMsg'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_SUCCESS_MSG'
,p_condition_element=>'P86_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152364247435823314)
,p_event_id=>wwv_flow_imp.id(152363737322823313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P86_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152364657767823314)
,p_name=>'DAErrorMessage'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_ERROR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152365162636823314)
,p_event_id=>wwv_flow_imp.id(152364657767823314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P86_ERROR.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P86_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152365525238823314)
,p_name=>'New'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152366031972823314)
,p_event_id=>wwv_flow_imp.id(152365525238823314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(318718995740504726)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152366432335823315)
,p_name=>'SetMRNO2'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_PATIENT_MRNO_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' || ',
'this.browserEvent?.originalEvent?.key === ''Enter'' || ',
'this.browserEvent?.originalEvent?.key === ''Tab''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152366913575823315)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_PASSWORD_1,P86_PATIENT_NAME_1,P86_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152367406808823315)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P86_PATIENT_TYPE_1 IS NOT NULL AND :P86_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P86_DISP_MRNO_1 := :P86_PATIENT_TYPE_1 || LPAD(:P86_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_PATIENT_TYPE_1,P86_PATIENT_MRNO_1'
,p_attribute_03=>'P86_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152367947933823315)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P86_ERROR := NULL;',
'  IF :P86_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P86_DISP_MRNO_1 := :P86_PATIENT_TYPE_1 ||',
'                        LPAD(:P86_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P86_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P86_ERROR          := ''This is not an active employee.'';',
'      :P86_PATIENT_MRNO_1 := NULL;',
'      :P86_DISP_MRNO_1    := NULL;',
'      :P86_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P86_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P86_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P86_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_PATIENT_MRNO_1,P86_DISP_MRNO_1'
,p_attribute_03=>'P86_ERROR,P86_DISP_MRNO_1,P86_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152368406415823316)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P86_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P86_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152368985696823316)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P86_NAME_1 := his.pkg_patient.GET_PATIENT_NAME(:P86_DISP_MRNO_1);'
,p_attribute_02=>'P86_DISP_MRNO_1'
,p_attribute_03=>'P86_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152369497619823316)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P86_ERROR'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P86_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152369932806823316)
,p_event_id=>wwv_flow_imp.id(152366432335823315)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P86_PASSWORD_1").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152370323626823316)
,p_name=>'EnableDisableDA'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152370832229823317)
,p_event_id=>wwv_flow_imp.id(152370323626823316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P86_SIGN_STATUS") === "015") || ($v("P86_SIGN_STATUS") === "248")) {',
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
 p_id=>wwv_flow_imp.id(152371226095823317)
,p_name=>'DAPassword'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' || ',
'this.browserEvent?.originalEvent?.key === ''Enter'' || ',
'this.browserEvent?.originalEvent?.key === ''Tab''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152371766234823317)
,p_event_id=>wwv_flow_imp.id(152371226095823317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P86_PATIENT_MRNO_1") !== null && $v("P86_PATIENT_MRNO_1") !== "") {',
'    apex.item("signbtn").setFocus();',
'} else {',
'    apex.item("P86_PATIENT_MRNO_1").setFocus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152372162854823317)
,p_name=>'DAPassword_1'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_PASSWORD_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' || ',
'this.browserEvent?.originalEvent?.key === ''Enter'' || ',
'this.browserEvent?.originalEvent?.key === ''Tab''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152373673864823318)
,p_event_id=>wwv_flow_imp.id(152372162854823317)
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
'  :P86_TXT_ALERT_TEXT := null;',
'  :P86_SUCCESS_MSG    := null;',
'  :P86_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P86_DISP_MRNO,',
'                                          :P86_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P86_ERROR := ''First Technician:- ''||L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P86_VALIDATE'', ''Y'');',
'    :P86_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P86_DISP_MRNO,P86_PASSWORD'
,p_attribute_03=>'P86_SUCCESS_MSG,P86_ERROR,P86_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152374167665823318)
,p_event_id=>wwv_flow_imp.id(152372162854823317)
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
'  IF :P86_VALIDATE = ''Y'' THEN',
'    :P86_TXT_ALERT_TEXT := null;',
'    :P86_SUCCESS_MSG    := null;',
'    :P86_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P86_DISP_MRNO_1,',
'                                            :P86_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P86_ERROR := ''Second Technician:- '' || L_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P86_VALIDATE_1'', ''Y'');',
'      :P86_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_DISP_MRNO_1,P86_PASSWORD_1,P86_VALIDATE'
,p_attribute_03=>'P86_SUCCESS_MSG,P86_ERROR,P86_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152372616146823317)
,p_event_id=>wwv_flow_imp.id(152372162854823317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P86_VALIDATE = ''Y'' AND :P86_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00142.SIGN_SIMULATION(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''ORGANIZATION_ID''),',
'                                                P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''LOCATION_ID''),',
'                                                P_RADIATION_NO      => :P86_RAD_DETAIL_ND_RADIATION_NO,',
'                                                P_SITE_ID           => :P86_RAD_DETAIL_ND_SITE_ID,',
'                                                P_SIMULATION_ID     => :P86_ND_SIMULATION_ID,',
'                                                P_SIGN_BY1          => :P86_DISP_MRNO,',
'                                                P_SIGN_BY2          => :P86_DISP_MRNO_1,',
'                                                P_SCHEDULE_SRNO     => :P86_SCHEDULE_SRNO,',
'                                                P_SCHEDULE_EVENT_ID => :P86_SCHEDULE_EVENT_ID,',
'                                                P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''USER_MRNO''),',
'                                                P_OBJECT_CODE       => ''S18APX00056'',',
'                                                P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''USER_MRNO''),',
'                                                P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P86_ERROR := L_ALERT_TEXT;',
'    END IF;',
'    :P86_SUCCESS_MSG := ''Simulation signed properly'';',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P86_VALIDATE,P86_VALIDATE_1,P86_RAD_DETAIL_ND_RADIATION_NO,P86_RAD_DETAIL_ND_SITE_ID,P86_ND_SIMULATION_ID,P86_DISP_MRNO,P86_DISP_MRNO_1,P86_SCHEDULE_SRNO,P86_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P86_ERROR,P86_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152373141782823317)
,p_event_id=>wwv_flow_imp.id(152372162854823317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radsim'').refresh();',
'apex.item("sign_btn").disable();',
'apex.item("save").disable();',
'apex.theme.closeRegion(''sign'');',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P86_SUCCESS_MSG'') !== '''' && $v(''P86_ERROR'') === '''')',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290008760587969538)
,p_name=>'DARefresh'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(290008516096969536)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290008844548969539)
,p_event_id=>wwv_flow_imp.id(290008760587969538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const gridIds = [',
'    ''raddetail'',',
'    ''phase'',',
'    ''accessory'',',
'    ''radsim'',',
'    ''isocenter'',',
'    ''specialint''',
'];',
'',
'',
'function refreshGrids() {',
'    gridIds.forEach(function (gridId) {',
'        apex.region(gridId).refresh();',
'    });',
'}',
'',
'',
'refreshGrids();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152328103389823268)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateSimulationPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P86_MRNO;',
'  L_RADIATION_NO := :P86_RAD_DETAIL_ND_RADIATION_NO;',
'  RADIATION.PKG_S18FRM00142.NEW_SIMULATION(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''ORGANIZATION_ID''),',
'                                           P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''LOCATION_ID''),',
'                                           P_RADIATION_NO      => :P86_RAD_DETAIL_ND_RADIATION_NO,',
'                                           P_SITE_ID           => :P86_RAD_DETAIL_ND_SITE_ID,',
'                                           P_SIMULATION_ID     => :P86_ND_SIMULATION_ID,',
'                                           P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''USER_MRNO''),',
'                                           P_SCHEDULE_SRNO     => :P86_SCHEDULE_SRNO,',
'                                           P_OBJECT_CODE       => ''S18APX00056'',',
'                                           P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''TERMINAL''),',
'                                           P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                           P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P86_PARAM_MRNO         := L_MRNO;',
'  :P86_PARAM_RADIATION_NO := L_RADIATION_NO;',
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
,p_process_when_button_id=>wwv_flow_imp.id(152297711829823113)
,p_process_success_message=>'Simulation CREATED properly ...'
,p_internal_uid=>152328103389823268
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152328583327823269)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeSimulationPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'',
'BEGIN',
'  L_MRNO         := :P86_MRNO;',
'  L_RADIATION_NO := :P86_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00142.DISPOSE_PHYSICS(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_RADIATION_NO      => :P86_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P86_RAD_DETAIL_ND_SITE_ID,',
'                                            P_SIMULATION_ID     => :P86_ND_SIMULATION_ID,',
'                                            P_SIGN_BY           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_OBJECT_CODE       => ''S18APX00056'',',
'                                            P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''TERMINAL''),',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P86_PARAM_MRNO         := L_MRNO;',
'  :P86_PARAM_RADIATION_NO := L_RADIATION_NO;',
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
,p_process_when_button_id=>wwv_flow_imp.id(152298199359823113)
,p_process_success_message=>'Simulation DISPOSED Properly ...'
,p_internal_uid=>152328583327823269
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152274849629823027)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(250566785893748328)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Simulation Plan - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT              NUMBER := 0;',
'  L_RAD_SIMULATION_TAB RADIATION.PKG_S18FRM00142.RAD_SIMULATION_TAB;',
'  L_MRNO               RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO       RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  IF :P86_ND_SIMULATION_ID IS NOT NULL THEN',
'    L_MRNO                := :P86_MRNO;',
'    L_RADIATION_NO        := :P86_RAD_DETAIL_ND_RADIATION_NO;',
'',
'    SELECT :P86_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P86_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P86_ND_SIMULATION_ID           SIMULATION_ID,',
'           :FROM_FRACTION_ID               FROM_FRACTION_ID,',
'           :TO_FRACTION_ID                 TO_FRACTION_ID,',
'           :SCHEDULE_SRNO                  SCHEDULE_SRNO,',
'           :P86_PHY_PLAN_ID                PHY_PLAN_ID,',
'           NULL                            PHY_REMARKS,',
'           NULL                            SIGN_BY1,',
'           NULL                            SIGN_BY2,',
'           NULL                            SIGN_BY_NAME,',
'           NULL                            SIGN_DATE,',
'           NULL                            STATUS_ID,',
'           :P86_SIMULATION_REMARKS         REMARKS,',
'           NULL                            STATUS_DESC',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_SIMULATION_TAB',
'      FROM DUAL;',
'  ',
'    CASE :APEX$ROW_STATUS',
'    ',
'      WHEN ''C'' THEN',
'        -----------',
'        -- Insert',
'        -----------',
'        BEGIN',
'          NULL;',
'        ',
'        END;',
'      ',
'      WHEN ''U'' THEN',
'        -----------',
'        -- Update',
'        -----------',
'        BEGIN',
'          RADIATION.PKG_S18FRM00142.UPDATE_RAD_SIMULATION(L_RAD_SIMULATION_TAB);',
'        END;',
'      ',
'      WHEN ''D'' THEN',
'        -----------',
'        -- Delete',
'        -----------',
'        BEGIN',
'          RADIATION.PKG_S18FRM00142.DELETE_RAD_SIMULATION(L_RAD_SIMULATION_TAB);',
'        END;',
'      ',
'        :P86_PARAM_MRNO         := L_MRNO;',
'        :P86_PARAM_RADIATION_NO := L_RADIATION_NO;',
'      ',
'    END CASE;',
'  ',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>152274849629823027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152326948157823267)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SimulationRemarksProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT              NUMBER := 0;',
'  L_RAD_SIMULATION_TAB RADIATION.PKG_S18FRM00142.RAD_SIMULATION_TAB;',
'  L_MRNO               RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO       RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  EX_CUSTOM EXCEPTION;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'  IF :P86_ND_SIMULATION_ID IS NOT NULL THEN',
'    L_MRNO         := :P86_MRNO;',
'    L_RADIATION_NO := :P86_RAD_DETAIL_ND_RADIATION_NO;',
'  ',
'    BEGIN',
'      FOR REC IN (SELECT ROWID',
'                    FROM RADIATION.RAD_SIMULATION',
'                   WHERE RADIATION_NO = :P86_RAD_DETAIL_ND_RADIATION_NO',
'                     AND SITE_ID = :P86_RAD_DETAIL_ND_SITE_ID',
'                     AND SIMULATION_ID = :P86_ND_SIMULATION_ID',
'                     FOR UPDATE NOWAIT) LOOP',
'      ',
'        UPDATE RADIATION.RAD_SIMULATION',
'           SET REMARKS = :P86_SIMULATION_REMARKS',
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
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT || SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>152326948157823267
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(152259510440822960)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(169316552785539724)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Shift Setup - Automatic Row Processing (DML)'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT              NUMBER := 0;',
'  L_RAD_SIMULATION_TAB RADIATION.PKG_S18FRM00142.RAD_SIMULATION_TAB;',
'  L_MRNO               RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO       RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  L_ALERT_TEXT         VARCHAR2(4000);',
'  L_RAD_SIM_ISO_TAB    RADIATION.PKG_S18FRM00142.RAD_SIM_ISO_TAB;',
'BEGIN',
'  IF :P86_ND_SIMULATION_ID IS NOT NULL THEN',
'    L_MRNO         := :P86_MRNO;',
'    L_RADIATION_NO := :P86_RAD_DETAIL_ND_RADIATION_NO;',
'    SELECT :P86_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P86_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P86_ND_SIMULATION_ID           SIMULATION_ID,',
'           :P86_ND_ISOCENTER_ID            ISOCENTER_ID,',
'           :P86_SHIFT_ISOCENTER_DESC       ISOCENTER_DESC,',
'           :P86_LR_TYPE                    LR_TYPE,',
'           :P86_LR_SHIFT                   LR_SHIFT,',
'           :P86_UD_TYPE                    UD_TYPE,',
'           :P86_UD_SHIFT                   UD_SHIFT,',
'           :P86_IO_TYPE                    IO_TYPE,',
'           :P86_IO_SHIFT                   IO_SHIFT',
'      BULK COLLECT',
'      INTO L_RAD_SIM_ISO_TAB',
'      FROM DUAL;',
'      ',
'    CASE :APEX$ROW_STATUS',
'    ',
'      WHEN ''C'' THEN',
'        -----------',
'        -- Insert',
'        -----------',
'        BEGIN',
'          RADIATION.PKG_S18FRM00142.INSERT_RAD_SIM_ISO(L_RAD_SIM_ISO_TAB);',
'        ',
'        END;',
'      ',
'      WHEN ''U'' THEN',
'        -----------',
'        -- Update',
'        -----------',
'        BEGIN',
'          MERGE INTO RADIATION.RAD_SIMULATION_ISOCENTER A',
'          USING (SELECT :P86_RAD_DETAIL_ND_RADIATION_NO AS RADIATION_NO,',
'                        :P86_RAD_DETAIL_ND_SITE_ID      AS SITE_ID,',
'                        :P86_ND_SIMULATION_ID           AS SIMULATION_ID,',
'                        :P86_ND_ISOCENTER_ID            AS ISOCENTER_ID',
'                   FROM DUAL) B',
'          ON (A.RADIATION_NO = B.RADIATION_NO AND A.SITE_ID = B.SITE_ID AND A.SIMULATION_ID = B.SIMULATION_ID AND A.ISOCENTER_ID = B.ISOCENTER_ID)',
'          ',
'          WHEN MATCHED THEN',
'            UPDATE',
'               SET LR_TYPE  = :P86_LR_TYPE,',
'                   LR_SHIFT = :P86_LR_SHIFT,',
'                   UD_TYPE  = :P86_UD_TYPE,',
'                   UD_SHIFT = :P86_UD_SHIFT,',
'                   IO_TYPE  = :P86_IO_TYPE,',
'                   IO_SHIFT = :P86_IO_SHIFT',
'          WHEN NOT MATCHED THEN',
'            INSERT',
'              (RADIATION_NO,',
'               SITE_ID,',
'               SIMULATION_ID,',
'               ISOCENTER_ID,',
'               PHASE_NO,',
'               LR_TYPE,',
'               LR_SHIFT,',
'               UD_TYPE,',
'               UD_SHIFT,',
'               IO_TYPE,',
'               IO_SHIFT)',
'            VALUES',
'              (:P86_RAD_DETAIL_ND_RADIATION_NO,',
'               :P86_RAD_DETAIL_ND_SITE_ID,',
'               :P86_ND_SIMULATION_ID,',
'               :P86_ND_ISOCENTER_ID,',
'               :P86_RAD_PHASE_PHASE_NO,',
'               :P86_LR_TYPE,',
'               :P86_LR_SHIFT,',
'               :P86_UD_TYPE,',
'               :P86_UD_SHIFT,',
'               :P86_IO_TYPE,',
'               :P86_IO_SHIFT);',
'        ',
'        END;',
'      ',
'      WHEN ''D'' THEN',
'        -----------',
'        -- Delete',
'        -----------',
'        BEGIN',
'          RADIATION.PKG_S18FRM00142.DELETE_RAD_SIM_ISO(L_RAD_SIM_ISO_TAB);',
'        END;',
'      ',
'    END CASE;',
'    :P86_PARAM_MRNO         := L_MRNO;',
'    :P86_PARAM_RADIATION_NO := L_RADIATION_NO;',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record Saved Properly'
,p_internal_uid=>152259510440822960
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
 p_id=>wwv_flow_imp.id(152327302866823268)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadSimulation'
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
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P86_RADIATION_NO,',
'         :P86_RADIATION_DATE,',
'         :P86_MRNO,',
'         :P86_PATIENT_NAME,',
'         :P86_DISP_AGE,',
'         :P86_DISP_GENDER,',
'         :P86_DOCTOR_ID,',
'         :P86_DISP_DOCTOR,',
'         :P86_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = ',
'            RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P86_MRNO,',
'                                                          P_RADIOTHERAPY_TYPE => ''T'')',
'     AND RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>152327302866823268
);
null;
wwv_flow_imp.component_end;
end;
/

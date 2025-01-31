prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_name=>'RAD_SIMULATION'
,p_alias=>'RAD-SIMULATION'
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
'#report_image_report img{',
'	height: 130px;',
'    width:  90px;',
'',
'}',
'',
'#phase .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'.popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'',
'.selectlist',
'{',
'    background-color:#FFFFCC !important;',
'}',
'/*.apex-item-text',
'{',
'    background-color:#FFFFCC !important;',
'}*/',
'',
'#accessory .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#ACCESSORY_ID .popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'',
'#radsim .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#isocenter .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#specialint .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#field .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#P66_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_SIMULATION_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P66_LR_TYPE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P66_LR_SHIFT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P66_IO_TYPE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_IO_SHIFT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P66_UD_TYPE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P66_UD_SHIFT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P66_UD_SHIFT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P66_ND_PHY_PLAN_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_ND_PHY_PLAN_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PATIENT_TYPE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PATIENT_MRNO_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P66_PASSWORD_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'2000'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250101150600'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17065240290716811)
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
 p_id=>wwv_flow_imp.id(17065482876716813)
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
'      WHERE RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'        AND SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'        AND SIMULATION_ID = :P66_ND_SIMULATION_ID',
'        AND ISOCENTER_ID = :P66_ND_ISOCENTER_ID;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_ND_SIMULATION_ID,P66_ND_ISOCENTER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97818696972027934)
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
' WHERE RBP.RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'   AND RBP.SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID'
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
 p_id=>wwv_flow_imp.id(97818833669027936)
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
 p_id=>wwv_flow_imp.id(97818945553027937)
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
 p_id=>wwv_flow_imp.id(97819112666027938)
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(97819148188027939)
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
 p_id=>wwv_flow_imp.id(97819224776027940)
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
 p_id=>wwv_flow_imp.id(97819411807027941)
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
 p_id=>wwv_flow_imp.id(97819490856027942)
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
 p_id=>wwv_flow_imp.id(97818801061027935)
,p_internal_uid=>97818801061027935
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
 p_id=>wwv_flow_imp.id(98382877726189509)
,p_interactive_grid_id=>wwv_flow_imp.id(97818801061027935)
,p_static_id=>'159848'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98383023813189509)
,p_report_id=>wwv_flow_imp.id(98382877726189509)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98383587619189511)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(97818833669027936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98384445014189513)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(97818945553027937)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98385414416189515)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(97819112666027938)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98386296217189517)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(97819148188027939)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98387164834189519)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(97819224776027940)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98388109063189521)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(97819411807027941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98396631768266447)
,p_view_id=>wwv_flow_imp.id(98383023813189509)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(97819490856027942)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(97820082484027948)
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
' WHERE RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'   AND TRANS_TYPE = ''CT'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID'
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
 p_id=>wwv_flow_imp.id(82574892390169901)
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
 p_id=>wwv_flow_imp.id(97820233329027950)
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
 p_id=>wwv_flow_imp.id(97820326486027951)
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
 p_id=>wwv_flow_imp.id(97820700824027954)
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
 p_id=>wwv_flow_imp.id(97820747020027955)
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
 p_id=>wwv_flow_imp.id(97820867208027956)
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
 p_id=>wwv_flow_imp.id(97820187523027949)
,p_internal_uid=>97820187523027949
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
 p_id=>wwv_flow_imp.id(98445750248420067)
,p_interactive_grid_id=>wwv_flow_imp.id(97820187523027949)
,p_static_id=>'160477'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98446017286420067)
,p_report_id=>wwv_flow_imp.id(98445750248420067)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82580879337170103)
,p_view_id=>wwv_flow_imp.id(98446017286420067)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(82574892390169901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98446498042420070)
,p_view_id=>wwv_flow_imp.id(98446017286420067)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(97820233329027950)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98447370137420073)
,p_view_id=>wwv_flow_imp.id(98446017286420067)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(97820326486027951)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98450037649420078)
,p_view_id=>wwv_flow_imp.id(98446017286420067)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(97820700824027954)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98450923759420080)
,p_view_id=>wwv_flow_imp.id(98446017286420067)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(97820747020027955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98451849632420082)
,p_view_id=>wwv_flow_imp.id(98446017286420067)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(97820867208027956)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98315715984925417)
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
' WHERE S.RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'   AND S.SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'   AND S.RADIATION_NO = P.RADIATION_NO',
'   AND S.SITE_ID = P.SITE_ID',
'   AND S.PHY_PLAN_ID = P.PHY_PLAN_ID',
'   AND S.STATUS_ID <> ''248'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID'
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
 p_id=>wwv_flow_imp.id(82574917350169902)
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
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(82575009132169903)
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
 p_id=>wwv_flow_imp.id(82575184613169904)
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
 p_id=>wwv_flow_imp.id(82575274254169905)
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
 p_id=>wwv_flow_imp.id(82575389611169906)
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
 p_id=>wwv_flow_imp.id(98315860241925419)
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
 p_id=>wwv_flow_imp.id(98315999211925420)
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
 p_id=>wwv_flow_imp.id(98316037976925421)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98316228033925423)
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
 p_id=>wwv_flow_imp.id(98316322351925424)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Sign Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(98316464612925425)
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
 p_id=>wwv_flow_imp.id(98316584422925426)
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
 p_id=>wwv_flow_imp.id(98316741160925428)
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
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(98317069499925431)
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
 p_id=>wwv_flow_imp.id(98317534516925436)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178556103389732403)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>From <br>Fraction ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>79
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(98315774583925418)
,p_internal_uid=>98315774583925418
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
 p_id=>wwv_flow_imp.id(98331842244972143)
,p_interactive_grid_id=>wwv_flow_imp.id(98315774583925418)
,p_static_id=>'159338'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98332046577972144)
,p_report_id=>wwv_flow_imp.id(98331842244972143)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82615878953285915)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(82574917350169902)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82616735903285918)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(82575009132169903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82617657724285920)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(82575184613169904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82618588692285926)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(82575274254169905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82619402771285928)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(82575389611169906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98332598659972145)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(98315860241925419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98333499384972147)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(98315999211925420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98334329333972149)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(98316037976925421)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98336207093972153)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(98316228033925423)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>261
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98337113964972154)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(98316322351925424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98337996720972156)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(98316464612925425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98338837280972158)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(98316584422925426)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98340713722972162)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(98316741160925428)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98343327546972168)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(98317069499925431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98347886092972179)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(98317534516925436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178747893068941447)
,p_view_id=>wwv_flow_imp.id(98332046577972144)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(178556103389732403)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.5
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98318355802925444)
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
' WHERE RPI.RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'   AND RPI.SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'   AND RPI.PHASE_NO = :P66_RAD_PHASE_PHASE_NO',
'   AND RPI.PHY_PLAN_ID = :P66_PHY_PLAN_ID',
'   AND RPI.TREATMENT_TYPE = R.TREATMENT_TYPE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_RAD_PHASE_PHASE_NO,P66_PHY_PLAN_ID'
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
 p_id=>wwv_flow_imp.id(98318602652925446)
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
 p_id=>wwv_flow_imp.id(98318669065925447)
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
 p_id=>wwv_flow_imp.id(98318805984925448)
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
 p_id=>wwv_flow_imp.id(98318902902925449)
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
 p_id=>wwv_flow_imp.id(98318944623925450)
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
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(98319114807925451)
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
 p_id=>wwv_flow_imp.id(98319125876925452)
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
 p_id=>wwv_flow_imp.id(98319240651925453)
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
 p_id=>wwv_flow_imp.id(98319342303925454)
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
 p_id=>wwv_flow_imp.id(98319424850925455)
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
 p_id=>wwv_flow_imp.id(98319554449925456)
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
 p_id=>wwv_flow_imp.id(98319686315925457)
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
 p_id=>wwv_flow_imp.id(98318501599925445)
,p_internal_uid=>98318501599925445
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
 p_id=>wwv_flow_imp.id(98372928725109253)
,p_interactive_grid_id=>wwv_flow_imp.id(98318501599925445)
,p_static_id=>'159749'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98373208019109253)
,p_report_id=>wwv_flow_imp.id(98372928725109253)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98373690251109254)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(98318602652925446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98374525948109256)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(98318669065925447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98375489976109258)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(98318805984925448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98376360121109260)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(98318902902925449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98377284255109261)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(98318944623925450)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98378175072109263)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(98319114807925451)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>273
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98379074192109265)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(98319125876925452)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98379975858109267)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(98319240651925453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98380834034109269)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(98319342303925454)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98381773740109271)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(98319424850925455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98382699383109272)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(98319554449925456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98383607474109274)
,p_view_id=>wwv_flow_imp.id(98373208019109253)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(98319686315925457)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98637547955285616)
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
' WHERE T.RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'   AND T.SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'   AND T.PHASE_NO = :P66_RAD_PHASE_PHASE_NO',
'   ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_RAD_PHASE_PHASE_NO'
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
 p_id=>wwv_flow_imp.id(98637799534285618)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98637833879285619)
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
 p_id=>wwv_flow_imp.id(98637930607285620)
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
 p_id=>wwv_flow_imp.id(98638118513285621)
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
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98638123877285622)
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(98638226623285623)
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
 p_id=>wwv_flow_imp.id(98638367521285624)
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
 p_id=>wwv_flow_imp.id(98638464338285625)
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
 p_id=>wwv_flow_imp.id(98637719852285617)
,p_internal_uid=>98637719852285617
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
 p_id=>wwv_flow_imp.id(98674445420394925)
,p_interactive_grid_id=>wwv_flow_imp.id(98637719852285617)
,p_static_id=>'162764'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(98674714442394925)
,p_report_id=>wwv_flow_imp.id(98674445420394925)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98675167997394926)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(98637799534285618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98675996417394928)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(98637833879285619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98676860953394931)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(98637930607285620)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98677817903394933)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(98638118513285621)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98678656917394935)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(98638123877285622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98679593810394937)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(98638226623285623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98680435882394939)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(98638367521285624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98681377650394942)
,p_view_id=>wwv_flow_imp.id(98674714442394925)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(98638464338285625)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(166467925831681815)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>362
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P66_MRNO, :P66_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P66_MRNO,P66_PARAM_MRNO'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(140711374871856635)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>140711374871856635
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140711441243856636)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140711578207856637)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'MRNO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140711619994856638)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(145043487186442630)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1450435'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:REQUEST_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(218866370055940410)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_css_classes=>'js-dialog-size1200x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>352
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17786468383818109)
,p_plug_name=>'First Technician '
,p_parent_plug_id=>wwv_flow_imp.id(218866370055940410)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17786573933818110)
,p_plug_name=>'Second Technician '
,p_parent_plug_id=>wwv_flow_imp.id(218866370055940410)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220562141705149113)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>152
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222319096526951723)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>172
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253111773078371522)
,p_plug_name=>'Patient Detail'
,p_region_name=>'radmaster'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>11
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
'    /*WHERE RADIATION_NO = NVL(:P66_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P66_MRNO IS NOT NULL THEN',
'             ''%'' || :P66_MRNO',
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
 p_id=>wwv_flow_imp.id(262920935942752991)
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
' WHERE MRNO = :P66_MRNO;',
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
,p_ajax_items_to_submit=>'P66_USER_MRNO'
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
 p_id=>wwv_flow_imp.id(82454459000013934)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(82454889101013935)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(82455217420013936)
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
 p_id=>wwv_flow_imp.id(262921335702752995)
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
'   WHERE RD.RADIATION_NO = :P66_RADIATION_NO',
'     AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                               P_SITE_ID             => RD.SITE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => ''017'') = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P66_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(98320137774925462)
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
 p_id=>wwv_flow_imp.id(98320256131925463)
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
 p_id=>wwv_flow_imp.id(99071281317233447)
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
 p_id=>wwv_flow_imp.id(140711959921856641)
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
 p_id=>wwv_flow_imp.id(262921711466752998)
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
 p_id=>wwv_flow_imp.id(262921782986752999)
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
 p_id=>wwv_flow_imp.id(262921825372753000)
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
 p_id=>wwv_flow_imp.id(262921997242753001)
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
 p_id=>wwv_flow_imp.id(262922056087753002)
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
 p_id=>wwv_flow_imp.id(262922191010753003)
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
 p_id=>wwv_flow_imp.id(262922279483753004)
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
 p_id=>wwv_flow_imp.id(262922362348753005)
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
 p_id=>wwv_flow_imp.id(262922459177753006)
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
 p_id=>wwv_flow_imp.id(262922530539753007)
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
 p_id=>wwv_flow_imp.id(262922689802753008)
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
 p_id=>wwv_flow_imp.id(262922726502753009)
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
 p_id=>wwv_flow_imp.id(262922888218753010)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(262923001560753011)
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
 p_id=>wwv_flow_imp.id(262923027003753012)
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
 p_id=>wwv_flow_imp.id(262923150770753013)
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
 p_id=>wwv_flow_imp.id(262923304466753014)
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
 p_id=>wwv_flow_imp.id(262923369700753015)
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
 p_id=>wwv_flow_imp.id(262923497705753016)
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
 p_id=>wwv_flow_imp.id(262921465340752996)
,p_internal_uid=>262921465340752996
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
 p_id=>wwv_flow_imp.id(263526066828911346)
,p_interactive_grid_id=>wwv_flow_imp.id(262921465340752996)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(263526252010911348)
,p_report_id=>wwv_flow_imp.id(263526066828911346)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98411376566194990)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(98320137774925462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98412290917194992)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(98320256131925463)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99617727030027175)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(99071281317233447)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(145062351608587868)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(140711959921856641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263526636685911349)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(262921711466752998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263527601142911352)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(262921782986752999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263528509800911355)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(262921825372753000)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>256
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263529397825911357)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(262921997242753001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263530225398911360)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(262922056087753002)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263531202374911365)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(262922191010753003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263532082840911368)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(262922279483753004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263532993891911375)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(262922362348753005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263533867369911377)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(262922459177753006)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263534765798911380)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(262922530539753007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263535701453911383)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(262922689802753008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263536560443911385)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(262922726502753009)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263537475607911389)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(262922888218753010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263538344313911393)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(262923001560753011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263539289608911396)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(262923027003753012)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263540129106911399)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(262923150770753013)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263541019497911402)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(262923304466753014)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263542000313911409)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(262923369700753015)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(263542849374911411)
,p_view_id=>wwv_flow_imp.id(263526252010911348)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(262923497705753016)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.85400000000001
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38983648498179921)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(262921335702752995)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82408590700013869)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(17786573933818110)
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
 p_id=>wwv_flow_imp.id(82408996207013869)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(17786468383818109)
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
 p_id=>wwv_flow_imp.id(82413684717013880)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(220562141705149113)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'S<u>i</u>gn'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_button_cattributes=>'accesskey=''I'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82415215670013881)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(222319096526951723)
,p_button_name=>'NewPlan'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>N</u>ew Simulation'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''N'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82414098320013880)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(220562141705149113)
,p_button_name=>'Save'
,p_button_static_id=>'fromfractionId'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>S</u>ave'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'accesskey=''S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82415623620013882)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(222319096526951723)
,p_button_name=>'DisposePlan'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dis<u>p</u>ose Simulation'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''P'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82414491372013881)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(220562141705149113)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E<u>x</u>it'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_button_cattributes=>'accesskey=''X'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17065369326716812)
,p_name=>'P66_SIMULATION_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17065240290716811)
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
 p_id=>wwv_flow_imp.id(17065525891716814)
,p_name=>'P66_ND_SIMULATION_ID'
,p_item_sequence=>322
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17066568804716824)
,p_name=>'P66_SCHEDULE_SRNO'
,p_item_sequence=>332
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17786641818818111)
,p_name=>'P66_PATIENT_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
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
 p_id=>wwv_flow_imp.id(17786711602818112)
,p_name=>'P66_PATIENT_MRNO_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
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
 p_id=>wwv_flow_imp.id(17786819152818113)
,p_name=>'P66_NAME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
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
 p_id=>wwv_flow_imp.id(17786920269818114)
,p_name=>'P66_PASSWORD_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
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
 p_id=>wwv_flow_imp.id(17787053672818115)
,p_name=>'P66_DISP_MRNO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17787183503818116)
,p_name=>'P66_USER_MRNO_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17787262224818117)
,p_name=>'P66_LOGIN_DATE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17787317272818118)
,p_name=>'P66_LOCATION_ID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17787485987818119)
,p_name=>'P66_LOGIN_MESSAGE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17787546838818120)
,p_name=>'P66_VALIDATE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17786573933818110)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17789480069818139)
,p_name=>'P66_SIGN_STATUS'
,p_item_sequence=>342
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82575571625169908)
,p_name=>'P66_SHIFT_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82575664130169909)
,p_name=>'P66_SHIFT_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82575796228169910)
,p_name=>'P66_SHIFT_SIMULATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_source=>'SIMULATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82575827007169911)
,p_name=>'P66_SHIFT_ISOCENTER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_source=>'ISOCENTER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82575919966169912)
,p_name=>'P66_SHIFT_ISOCENTER_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_source=>'ISOCENTER_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82576089429169913)
,p_name=>'P66_LR_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
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
 p_id=>wwv_flow_imp.id(82576149116169914)
,p_name=>'P66_LR_SHIFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
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
 p_id=>wwv_flow_imp.id(82576271752169915)
,p_name=>'P66_UD_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
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
 p_id=>wwv_flow_imp.id(82576355417169916)
,p_name=>'P66_UD_SHIFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
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
 p_id=>wwv_flow_imp.id(82576411244169917)
,p_name=>'P66_IO_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
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
 p_id=>wwv_flow_imp.id(82576508943169918)
,p_name=>'P66_IO_SHIFT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
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
 p_id=>wwv_flow_imp.id(82576695636169919)
,p_name=>'P66_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_item_source_plug_id=>wwv_flow_imp.id(17065482876716813)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97904860892028110)
,p_name=>'P66_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>262
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(97904978451028111)
,p_name=>'P66_RAD_PHASE_PHASE_NO'
,p_item_sequence=>272
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98403184774925606)
,p_name=>'P66_PHY_PLAN_ID'
,p_item_sequence=>282
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98500978363197180)
,p_name=>'P66_CURRENT_MACHINE'
,p_item_sequence=>92
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98501116959197181)
,p_name=>'P66_ND_PHY_PLAN_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38983648498179921)
,p_prompt=>'<b><p style="color:#00008B">Physicist Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98501181556197182)
,p_name=>'P66_ND_PHY_PLAN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38983648498179921)
,p_prompt=>'<b><p style="color:#00008B">Physics Plan ID:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98714906134578201)
,p_name=>'P66_ND_ISOCENTER_ID'
,p_item_sequence=>292
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99153645573233584)
,p_name=>'P66_CHECK_SIGN'
,p_item_sequence=>302
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99156814145233616)
,p_name=>'P66_PARAM_MRNO'
,p_item_sequence=>312
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110025033871468539)
,p_name=>'P66_SCHEDULE_EVENT_ID'
,p_item_sequence=>372
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(166628038402682126)
,p_name=>'P66_PARAM_RADIATION_NO'
,p_item_sequence=>202
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169437125161156524)
,p_name=>'P66_ERROR_MESSAGE'
,p_item_sequence=>382
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169437227823156525)
,p_name=>'P66_SUCCESS_MESSAGE'
,p_item_sequence=>392
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218879227330940482)
,p_name=>'P66_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
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
 p_id=>wwv_flow_imp.id(218879255541940483)
,p_name=>'P66_PATIENT_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
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
 p_id=>wwv_flow_imp.id(218879348247940484)
,p_name=>'P66_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
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
 p_id=>wwv_flow_imp.id(218879504936940485)
,p_name=>'P66_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
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
 p_id=>wwv_flow_imp.id(218879628335940486)
,p_name=>'P66_DISP_MRNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218879711752940487)
,p_name=>'P66_USER_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218879751665940488)
,p_name=>'P66_LOGIN_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218879845863940489)
,p_name=>'P66_LOCATION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218880015433940490)
,p_name=>'P66_LOGIN_MESSAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218880108606940491)
,p_name=>'P66_VALIDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(17786468383818109)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218880589388940496)
,p_name=>'P66_TXT_ALERT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(218866370055940410)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218880697072940497)
,p_name=>'P66_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(218866370055940410)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220770349637149482)
,p_name=>'P66_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>212
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220770423860149483)
,p_name=>'P66_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>222
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221590829212118951)
,p_name=>'P66_TXT_URL'
,p_item_sequence=>232
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222604091037744862)
,p_name=>'P66_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(218866370055940410)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223037588129714291)
,p_name=>'P66_RAD_PLAN_DML_STATUS'
,p_item_sequence=>252
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223038008293714296)
,p_name=>'P66_PARAM_SR_NO'
,p_item_sequence=>192
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253209384878371750)
,p_name=>'P66_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(253209481464371751)
,p_name=>'P66_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263016929065753202)
,p_name=>'P66_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263017042152753203)
,p_name=>'P66_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263017162315753204)
,p_name=>'P66_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263017242287753205)
,p_name=>'P66_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263017282358753206)
,p_name=>'P66_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263017440120753207)
,p_name=>'P66_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263017578195753208)
,p_name=>'P66_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263017796863753211)
,p_name=>'P66_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263017966455753212)
,p_name=>'P66_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263018024826753213)
,p_name=>'P66_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263018092069753214)
,p_name=>'P66_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263018215236753215)
,p_name=>'P66_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263018332766753216)
,p_name=>'P66_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(253111773078371522)
,p_item_source_plug_id=>wwv_flow_imp.id(253111773078371522)
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
 p_id=>wwv_flow_imp.id(263129988913753368)
,p_name=>'P66_PARAM_SITE_ID'
,p_item_sequence=>182
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(265489695137736585)
,p_name=>'P66_ALERT_TEXT'
,p_item_sequence=>242
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82491364348013997)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82414491372013881)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140710892613856630)
,p_event_id=>wwv_flow_imp.id(82491364348013997)
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
 p_id=>wwv_flow_imp.id(82491876556013998)
,p_event_id=>wwv_flow_imp.id(82491364348013997)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82492210744013999)
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
 p_id=>wwv_flow_imp.id(82492795177013999)
,p_event_id=>wwv_flow_imp.id(82492210744013999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P66_ISO_RADIATION_NO",',
'            "P66_ISO_SITE_ID",',
'            "P66_ISO_PHY_PLAN_ID",',
'            "P66_ISO_PHASE_NO",',
'            "P66_ISOCENTER_ID",',
'            "P66_ISO_DESCRIPTION",',
'            "P66_ISO_DOSE_FRACTION",',
'            "P66_ISO_NO_OF_FRACTION",',
'            "P66_ISO_TREATMENT_TYPE_DESC",',
'            "P66_ISO_TREATMENT_TYPE"',
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
 p_id=>wwv_flow_imp.id(82493163928013999)
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
 p_id=>wwv_flow_imp.id(82493641840014000)
,p_event_id=>wwv_flow_imp.id(82493163928013999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P66_ISO_RADIATION_NO",',
'            "P66_ISO_SITE_ID",',
'            "P66_ISO_PHY_PLAN_ID",',
'            "P66_ISO_PHASE_NO",',
'            "P66_ISOCENTER_ID",',
'            "P66_ISO_DESCRIPTION",',
'            "P66_ISO_DOSE_FRACTION",',
'            "P66_ISO_NO_OF_FRACTION",',
'            "P66_ISO_TREATMENT_TYPE_DESC",',
'            "P66_ISO_TREATMENT_TYPE"',
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
 p_id=>wwv_flow_imp.id(82494034307014000)
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
 p_id=>wwv_flow_imp.id(82494544533014000)
,p_event_id=>wwv_flow_imp.id(82494034307014000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P66_SP_INTRUCT_FRACTION_NO",',
'            "P66_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P66_SP_INTRUCT_RADIATION_NO",',
'            "P66_SP_INTRUCT_SITE_ID",',
'            "P66_SP_INTRUCT_PHASE_NO",',
'            "P66_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P66_SP_INTRUCT_ROWID"',
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
 p_id=>wwv_flow_imp.id(82494974168014000)
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
 p_id=>wwv_flow_imp.id(82495433427014000)
,p_event_id=>wwv_flow_imp.id(82494974168014000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P66_SP_INTRUCT_FRACTION_NO",',
'            "P66_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P66_SP_INTRUCT_RADIATION_NO",',
'            "P66_SP_INTRUCT_SITE_ID",',
'            "P66_SP_INTRUCT_PHASE_NO",',
'            "P66_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P66_SP_INTRUCT_ROWID"',
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
 p_id=>wwv_flow_imp.id(82495800591014001)
,p_name=>'SetRadiationNo'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(166467925831681815)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82498387152014006)
,p_event_id=>wwv_flow_imp.id(82495800591014001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_PARAM_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82498872221014006)
,p_event_id=>wwv_flow_imp.id(82495800591014001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P66_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82496348086014003)
,p_event_id=>wwv_flow_imp.id(82495800591014001)
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
'    INTO :P66_RADIATION_NO,',
'         :P66_RADIATION_DATE,',
'         :P66_MRNO,',
'         :P66_PATIENT_NAME,',
'         :P66_DISP_AGE,',
'         :P66_DISP_GENDER,',
'         :P66_DOCTOR_ID,',
'         :P66_DISP_DOCTOR,',
'         :P66_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = :P66_PARAM_RADIATION_NO',
'     AND MRNO LIKE CASE',
'           WHEN :P66_MRNO IS NOT NULL THEN',
'            ''%'' || :P66_MRNO',
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
,p_attribute_02=>'P66_USER_MRNO,P66_PARAM_RADIATION_NO'
,p_attribute_03=>'P66_RADIATION_NO,P66_RADIATION_DATE,P66_PATIENT_NAME,P66_DISP_AGE,P66_DISP_GENDER,P66_DOCTOR_ID,P66_DISP_DOCTOR,P66_DISP_INTENT,P66_USER_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82496899624014004)
,p_event_id=>wwv_flow_imp.id(82495800591014001)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(262920935942752991)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82497319779014006)
,p_event_id=>wwv_flow_imp.id(82495800591014001)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(262921335702752995)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82497876623014006)
,p_event_id=>wwv_flow_imp.id(82495800591014001)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
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
'    //var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P66_RAD_DETAIL_ND_SITE_ID'', siteID);',
'});',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82499298645014006)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82499748484014007)
,p_event_id=>wwv_flow_imp.id(82499298645014006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P66_MRNO IS NOT NULL THEN',
'  ',
'    :P66_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P66_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P66_MRNO);',
'      :P66_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P66_MRNO);',
'      :P66_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P66_MRNO);',
'      :P66_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P66_MRNO);',
'      :P66_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P66_MRNO);',
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
,p_attribute_02=>'P66_USER_MRNO'
,p_attribute_03=>'P66_SERVICE_NO,P66_SERVICE_STATUS,P66_RANK,P66_FORMATION,P66_UNIT'
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
 p_id=>wwv_flow_imp.id(82500295600014007)
,p_event_id=>wwv_flow_imp.id(82499298645014006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P66_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P66_SERVICE_NO").show();',
'    apex.item("P66_SERVICE_STATUS").show();',
'    apex.item("P66_RANK").show();',
'    apex.item("P66_FORMATION").show();',
'    apex.item("P66_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P66_SERVICE_NO").hide();',
'    apex.item("P66_SERVICE_STATUS").hide();',
'    apex.item("P66_RANK").hide();',
'    apex.item("P66_FORMATION").hide();',
'    apex.item("P66_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82500644497014007)
,p_name=>'DARadDetail1'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(262921335702752995)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82501634064014008)
,p_event_id=>wwv_flow_imp.id(82500644497014007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P66_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P66_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'$s(''P66_CURRENT_MACHINE'', _.raddetail.MACHINE_DESC);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82502145038014009)
,p_event_id=>wwv_flow_imp.id(82500644497014007)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97818696972027934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82502610602014009)
,p_event_id=>wwv_flow_imp.id(82500644497014007)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97818696972027934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82503134523014010)
,p_event_id=>wwv_flow_imp.id(82500644497014007)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97820082484027948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82503645183014010)
,p_event_id=>wwv_flow_imp.id(82500644497014007)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98315715984925417)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82504030911014010)
,p_name=>'PopulatePlanningSiteId'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_ND_DOSE_CONSTRAINT_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82504599473014011)
,p_event_id=>wwv_flow_imp.id(82504030911014010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P66_DOSE_CONSTRAINT_SITE_ID").setValue($v("P66_ND_DOSE_CONSTRAINT_SITE"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82504982748014011)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82408996207013869)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178556532339732407)
,p_event_id=>wwv_flow_imp.id(82504982748014011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P66_SUCCESS_MSG").setValue('''');',
'apex.item("P66_ERROR_MESSAGE").setValue('''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82505401482014011)
,p_event_id=>wwv_flow_imp.id(82504982748014011)
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
'  :P66_TXT_ALERT_TEXT := null;',
'  :P66_SUCCESS_MSG    := null;',
'  :P66_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P66_DISP_MRNO,',
'                                          :P66_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P66_ERROR := ''First Technician:- ''||L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P66_VALIDATE'', ''Y'');',
'    :P66_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P66_DISP_MRNO,P66_PASSWORD'
,p_attribute_03=>'P66_SUCCESS_MSG,P66_ERROR,P66_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17788894881818133)
,p_event_id=>wwv_flow_imp.id(82504982748014011)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF :P66_VALIDATE = ''Y'' THEN',
'    :P66_TXT_ALERT_TEXT := null;',
'    :P66_SUCCESS_MSG    := null;',
'    :P66_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P66_DISP_MRNO_1,',
'                                            :P66_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P66_ERROR := ''Second Technician:- '' || L_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P66_VALIDATE_1'', ''Y'');',
'      :P66_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_DISP_MRNO_1,P66_PASSWORD_1,P66_VALIDATE'
,p_attribute_03=>'P66_SUCCESS_MSG,P66_ERROR,P66_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82505947046014012)
,p_event_id=>wwv_flow_imp.id(82504982748014011)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P66_VALIDATE = ''Y'' AND :P66_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00142.SIGN_SIMULATION(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''ORGANIZATION_ID''),',
'                                                P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''LOCATION_ID''),',
'                                                P_RADIATION_NO      => :P66_RAD_DETAIL_ND_RADIATION_NO,',
'                                                P_SITE_ID           => :P66_RAD_DETAIL_ND_SITE_ID,',
'                                                P_SIMULATION_ID     => :P66_ND_SIMULATION_ID,',
'                                                P_SIGN_BY1          => :P66_DISP_MRNO,',
'                                                P_SIGN_BY2          => :P66_DISP_MRNO_1,',
'                                                P_SCHEDULE_SRNO     => :P66_SCHEDULE_SRNO,',
'                                                P_SCHEDULE_EVENT_ID => :P66_SCHEDULE_EVENT_ID,',
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
'      :P66_ERROR := L_ALERT_TEXT;',
'    END IF;',
'    :P66_SUCCESS_MSG := ''Simulation signed properly'';',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_VALIDATE,P66_VALIDATE_1,P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_ND_SIMULATION_ID,P66_DISP_MRNO,P66_DISP_MRNO_1,P66_SCHEDULE_SRNO,P66_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P66_ERROR,P66_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17789363530818138)
,p_event_id=>wwv_flow_imp.id(82504982748014011)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
'($v(''P66_SUCCESS_MSG'') !== '''' && $v(''P66_ERROR'') === '''')',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82506864129014012)
,p_name=>'CloseSign'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82408590700013869)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82507352129014012)
,p_event_id=>wwv_flow_imp.id(82506864129014012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(218866370055940410)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82507719097014013)
,p_name=>'SetMRNO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82508298170014013)
,p_event_id=>wwv_flow_imp.id(82507719097014013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_PASSWORD,P66_PATIENT_NAME,P66_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82508737949014013)
,p_event_id=>wwv_flow_imp.id(82507719097014013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P66_PATIENT_TYPE IS NOT NULL AND :P66_PATIENT_MRNO IS NOT NULL THEN',
'    :P66_DISP_MRNO := :P66_PATIENT_TYPE || LPAD(:P66_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_PATIENT_TYPE,P66_PATIENT_MRNO'
,p_attribute_03=>'P66_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82509203812014014)
,p_event_id=>wwv_flow_imp.id(82507719097014013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P66_ERROR := NULL;',
'  IF :P66_PATIENT_MRNO IS NOT NULL THEN',
'    :P66_DISP_MRNO := :P66_PATIENT_TYPE || LPAD(:P66_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P66_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P66_ERROR        := ''This is not an active employee.'';',
'      :P66_PATIENT_MRNO := NULL;',
'      :P66_DISP_MRNO    := NULL;',
'      :P66_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P66_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P66_DISP_MRNO',
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
,p_attribute_02=>'P66_PATIENT_MRNO,P66_PATIENT_TYPE'
,p_attribute_03=>'P66_DISP_MRNO,P66_ERROR,P66_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82509760742014014)
,p_event_id=>wwv_flow_imp.id(82507719097014013)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P66_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P66_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82510221603014014)
,p_event_id=>wwv_flow_imp.id(82507719097014013)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P66_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P66_DISP_MRNO);'
,p_attribute_02=>'P66_DISP_MRNO'
,p_attribute_03=>'P66_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82510683192014014)
,p_name=>'DAPhase'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(97818696972027934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82511172845014014)
,p_event_id=>wwv_flow_imp.id(82510683192014014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P66_RAD_PHASE_PHASE_NO'', _.phase.PHASE_NO);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82511602679014014)
,p_event_id=>wwv_flow_imp.id(82510683192014014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(97820082484027948)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82512191487014015)
,p_event_id=>wwv_flow_imp.id(82510683192014014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98637547955285616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140712086681856642)
,p_event_id=>wwv_flow_imp.id(82510683192014014)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98318355802925444)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82512596152014015)
,p_name=>'DASimulation'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(98315715984925417)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82513019810014015)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P66_ND_SIMULATION_ID'', _.radsim.SIMULATION_ID);',
'$s(''P66_ND_PHY_PLAN_ID'', _.radsim.PHY_PLAN_ID);',
'$s(''P66_ND_PHY_PLAN_REMARKS'', _.radsim.PHY_REMARKS);',
'$s(''P66_PHY_PLAN_ID'', _.radsim.PHY_PLAN_ID);',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82513579670014015)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98318355802925444)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82514039621014015)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    apex.item("P66_ND_PHY_PLAN_ID").setValue(model.getValue(this.data.selectedRecords[i], "PHY_PLAN_ID"));',
'    apex.item("P66_ND_PHY_PLAN_REMARKS").setValue(model.getValue(this.data.selectedRecords[i], "PHY_REMARKS"));',
'    apex.item("P66_SIMULATION_REMARKS").setValue(model.getValue(this.data.selectedRecords[i], "REMARKS"));',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82576784586169920)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P66_SHIFT_RADIATION_NO_1'', _.radsim.RADIATION_NO);',
'$s(''P66_SHIFT_SITE_ID'', _.radsim.SITE_ID);',
'$s(''P66_SHIFT_SIMULATION_ID'', _.radsim.SIMULATION_ID);',
'$s(''P66_SIGN_STATUS'', _.radsim.STATUS_ID);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17786242289818107)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
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
'    INTO :P66_SHIFT_RADIATION_NO_1,',
'         :P66_SHIFT_SITE_ID,',
'         :P66_SHIFT_SIMULATION_ID,',
'         :P66_SHIFT_ISOCENTER_ID,',
'         :P66_SHIFT_ISOCENTER_DESC,',
'         :P66_LR_TYPE,',
'         :P66_LR_SHIFT,',
'         :P66_UD_TYPE,',
'         :P66_UD_SHIFT,',
'         :P66_IO_TYPE,',
'         :P66_IO_SHIFT,',
'         :P66_ROWID_1',
'    FROM RADIATION.RAD_SIMULATION_ISOCENTER',
'   WHERE RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'     AND SIMULATION_ID = :P66_ND_SIMULATION_ID',
'     AND ISOCENTER_ID = :P66_ND_ISOCENTER_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_ND_SIMULATION_ID,P66_ND_ISOCENTER_ID'
,p_attribute_03=>'P66_SHIFT_RADIATION_NO_1,P66_SHIFT_SITE_ID,P66_SHIFT_SIMULATION_ID,P66_SHIFT_ISOCENTER_ID,P66_SHIFT_ISOCENTER_DESC,P66_LR_TYPE,P66_LR_SHIFT,P66_UD_TYPE,P66_UD_SHIFT,P66_IO_TYPE,P66_IO_SHIFT,P66_ROWID_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17789533653818140)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P66_SIGN_STATUS") === "015") || ($v("P66_SIGN_STATUS") === "248")) {',
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
 p_id=>wwv_flow_imp.id(17789105249818136)
,p_event_id=>wwv_flow_imp.id(82512596152014015)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(98318355802925444)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82514989173014016)
,p_name=>'SetTotalDose1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_ISO_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82515463694014016)
,p_event_id=>wwv_flow_imp.id(82514989173014016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P66_ISO_DOSE_FRACTION,0) * NVL(:P66_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P66_ISO_DOSE_FRACTION,P66_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82515833874014016)
,p_name=>'SetTotalDose2'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_ISO_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82516319733014017)
,p_event_id=>wwv_flow_imp.id(82515833874014016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P66_ISO_DOSE_FRACTION,0) * NVL(:P66_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P66_ISO_DOSE_FRACTION,P66_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82520380739014020)
,p_name=>'DAISOCenter'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(98318355802925444)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82520811651014020)
,p_event_id=>wwv_flow_imp.id(82520380739014020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P66_ND_ISOCENTER_ID'', _.isocenter.ISOCENTER_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82576866731169921)
,p_event_id=>wwv_flow_imp.id(82520380739014020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P66_SHIFT_ISOCENTER_ID'', _.isocenter.ISOCENTER_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17786333274818108)
,p_event_id=>wwv_flow_imp.id(82520380739014020)
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
'    INTO :P66_SHIFT_RADIATION_NO_1,',
'         :P66_SHIFT_SITE_ID,',
'         :P66_SHIFT_SIMULATION_ID,',
'         :P66_SHIFT_ISOCENTER_ID,',
'         :P66_SHIFT_ISOCENTER_DESC,',
'         :P66_LR_TYPE,',
'         :P66_LR_SHIFT,',
'         :P66_UD_TYPE,',
'         :P66_UD_SHIFT,',
'         :P66_IO_TYPE,',
'         :P66_IO_SHIFT,',
'         :P66_ROWID_1',
'    FROM RADIATION.RAD_SIMULATION_ISOCENTER',
'   WHERE RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'     AND SIMULATION_ID = :P66_ND_SIMULATION_ID',
'     AND ISOCENTER_ID = :P66_ND_ISOCENTER_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_ND_SIMULATION_ID,P66_ND_ISOCENTER_ID'
,p_attribute_03=>'P66_SHIFT_RADIATION_NO_1,P66_SHIFT_SITE_ID,P66_SHIFT_SIMULATION_ID,P66_SHIFT_ISOCENTER_ID,P66_SHIFT_ISOCENTER_DESC,P66_LR_TYPE,P66_LR_SHIFT,P66_UD_TYPE,P66_UD_SHIFT,P66_IO_TYPE,P66_ROWID_1,P66_IO_SHIFT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17789285258818137)
,p_event_id=>wwv_flow_imp.id(82520380739014020)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17065482876716813)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82521763302014021)
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
 p_id=>wwv_flow_imp.id(82522273100014021)
,p_event_id=>wwv_flow_imp.id(82521763302014021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P66_FIELD_NO",',
'            "P66_FIELD_DESCRIPTION",',
'            "P66_FIELD_ENERGY",',
'            "P66_FIELD_GANTRY",',
'            "P66_FIELD_SSD",',
'            "P66_FIELD_MU",',
'            "P66_FIELDS_RADIATION_NO",',
'            "P66_FIELDS_SITE_ID",',
'            "P66_FIELDS_PHY_PLAN_ID",',
'            "P66_FIELDS_ISOCENTER_ID",',
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
 p_id=>wwv_flow_imp.id(82522697041014021)
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
 p_id=>wwv_flow_imp.id(82523147039014021)
,p_event_id=>wwv_flow_imp.id(82522697041014021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P66_FIELD_NO",',
'            "P66_FIELD_DESCRIPTION",',
'            "P66_FIELD_ENERGY",',
'            "P66_FIELD_GANTRY",',
'            "P66_FIELD_SSD",',
'            "P66_FIELD_MU",',
'            "P66_FIELDS_RADIATION_NO",',
'            "P66_FIELDS_SITE_ID",',
'            "P66_FIELDS_PHY_PLAN_ID",',
'            "P66_FIELDS_ISOCENTER_ID",',
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
 p_id=>wwv_flow_imp.id(82525310495014023)
,p_name=>'PhysicsSign'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82413684717013880)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82525873776014023)
,p_event_id=>wwv_flow_imp.id(82525310495014023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P66_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P66_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P66_DISP_MRNO    := (:P66_PATIENT_TYPE ||',
'                         LPAD(:P66_PATIENT_MRNO, 8, ''0''));',
'    :P66_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P66_DISP_MRNO);',
'    :P66_PATIENT_TYPE_1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P66_PATIENT_MRNO,P66_PATIENT_TYPE,P66_DISP_MRNO,P66_NAME,P66_PATIENT_TYPE_1'
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
 p_id=>wwv_flow_imp.id(82526331710014023)
,p_event_id=>wwv_flow_imp.id(82525310495014023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P66_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82526742361014023)
,p_name=>'DASuccessMsg'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_SUCCESS_MSG'
,p_condition_element=>'P66_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82527209825014024)
,p_event_id=>wwv_flow_imp.id(82526742361014023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P66_SUCCESS_MSG.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82527684719014024)
,p_name=>'DAErrorMessage'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_ERROR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82528171394014024)
,p_event_id=>wwv_flow_imp.id(82527684719014024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P66_ERROR.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P66_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82528556315014024)
,p_name=>'New'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82529090329014024)
,p_event_id=>wwv_flow_imp.id(82528556315014024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(166467925831681815)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17788254402818127)
,p_name=>'SetMRNO2'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_PATIENT_MRNO_1'
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
 p_id=>wwv_flow_imp.id(17788300413818128)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_PASSWORD_1,P66_PATIENT_NAME_1,P66_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17788443171818129)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P66_PATIENT_TYPE_1 IS NOT NULL AND :P66_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P66_DISP_MRNO_1 := :P66_PATIENT_TYPE_1 || LPAD(:P66_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_PATIENT_TYPE_1,P66_PATIENT_MRNO_1'
,p_attribute_03=>'P66_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17788554126818130)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P66_ERROR := NULL;',
'  IF :P66_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P66_DISP_MRNO_1 := :P66_PATIENT_TYPE_1 ||',
'                        LPAD(:P66_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P66_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P66_ERROR          := ''This is not an active employee.'';',
'      :P66_PATIENT_MRNO_1 := NULL;',
'      :P66_DISP_MRNO_1    := NULL;',
'      :P66_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P66_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P66_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P66_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_PATIENT_MRNO_1,P66_DISP_MRNO_1'
,p_attribute_03=>'P66_ERROR,P66_DISP_MRNO_1,P66_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17788611358818131)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P66_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P66_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17788767275818132)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P66_NAME_1 := his.pkg_patient.GET_PATIENT_NAME(:P66_DISP_MRNO_1);'
,p_attribute_02=>'P66_DISP_MRNO_1'
,p_attribute_03=>'P66_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110022072419468509)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P66_ERROR'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P66_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110022124986468510)
,p_event_id=>wwv_flow_imp.id(17788254402818127)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P66_PASSWORD_1").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17789658570818141)
,p_name=>'EnableDisableDA'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17789791263818142)
,p_event_id=>wwv_flow_imp.id(17789658570818141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P66_SIGN_STATUS") === "015") || ($v("P66_SIGN_STATUS") === "248")) {',
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
 p_id=>wwv_flow_imp.id(110021873298468507)
,p_name=>'DAPassword'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_PASSWORD'
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
 p_id=>wwv_flow_imp.id(110021989654468508)
,p_event_id=>wwv_flow_imp.id(110021873298468507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P66_PATIENT_MRNO_1") !== null && $v("P66_PATIENT_MRNO_1") !== "") {',
'    apex.item("signbtn").setFocus();',
'} else {',
'    apex.item("P66_PATIENT_MRNO_1").setFocus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110024331768468532)
,p_name=>'DAPassword_1'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_PASSWORD_1'
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
 p_id=>wwv_flow_imp.id(178556669175732408)
,p_event_id=>wwv_flow_imp.id(110024331768468532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P66_SUCCESS_MSG").setValue('''');',
'apex.item("P66_ERROR_MESSAGE").setValue('''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110024518919468534)
,p_event_id=>wwv_flow_imp.id(110024331768468532)
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
'  :P66_TXT_ALERT_TEXT := null;',
'  :P66_SUCCESS_MSG    := null;',
'  :P66_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P66_DISP_MRNO,',
'                                          :P66_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P66_ERROR := ''First Technician:- ''||L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P66_VALIDATE'', ''Y'');',
'    :P66_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P66_DISP_MRNO,P66_PASSWORD'
,p_attribute_03=>'P66_SUCCESS_MSG,P66_ERROR,P66_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110024632461468535)
,p_event_id=>wwv_flow_imp.id(110024331768468532)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  IF :P66_VALIDATE = ''Y'' THEN',
'    :P66_TXT_ALERT_TEXT := null;',
'    :P66_SUCCESS_MSG    := null;',
'    :P66_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P66_DISP_MRNO_1,',
'                                            :P66_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P66_ERROR := ''Second Technician:- '' || L_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P66_VALIDATE_1'', ''Y'');',
'      :P66_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_DISP_MRNO_1,P66_PASSWORD_1,P66_VALIDATE'
,p_attribute_03=>'P66_SUCCESS_MSG,P66_ERROR,P66_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110024729728468536)
,p_event_id=>wwv_flow_imp.id(110024331768468532)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P66_VALIDATE = ''Y'' AND :P66_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00142.SIGN_SIMULATION(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''ORGANIZATION_ID''),',
'                                                P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''LOCATION_ID''),',
'                                                P_RADIATION_NO      => :P66_RAD_DETAIL_ND_RADIATION_NO,',
'                                                P_SITE_ID           => :P66_RAD_DETAIL_ND_SITE_ID,',
'                                                P_SIMULATION_ID     => :P66_ND_SIMULATION_ID,',
'                                                P_SIGN_BY1          => :P66_DISP_MRNO,',
'                                                P_SIGN_BY2          => :P66_DISP_MRNO_1,',
'                                                P_SCHEDULE_SRNO     => :P66_SCHEDULE_SRNO,',
'                                                P_SCHEDULE_EVENT_ID => :P66_SCHEDULE_EVENT_ID,',
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
'      :P66_ERROR := L_ALERT_TEXT;',
'    END IF;',
'    :P66_SUCCESS_MSG := ''Simulation signed properly'';',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P66_VALIDATE,P66_VALIDATE_1,P66_RAD_DETAIL_ND_RADIATION_NO,P66_RAD_DETAIL_ND_SITE_ID,P66_ND_SIMULATION_ID,P66_DISP_MRNO,P66_DISP_MRNO_1,P66_SCHEDULE_SRNO,P66_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P66_ERROR,P66_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110024855799468537)
,p_event_id=>wwv_flow_imp.id(110024331768468532)
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
'($v(''P66_SUCCESS_MSG'') !== '''' && $v(''P66_ERROR'') === '''')',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169436229396156515)
,p_name=>'DADisposeSimulation'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82415623620013882)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169436573733156518)
,p_event_id=>wwv_flow_imp.id(169436229396156515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Please confirm if you would like to proceed with disposing of the Radiation Simulation</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169436335006156516)
,p_event_id=>wwv_flow_imp.id(169436229396156515)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P66_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P66_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessDisposeSimulationPlan",',
'    {',
'        pageItems: [',
'            "P66_MRNO",',
'            "P66_RAD_DETAIL_ND_RADIATION_NO",',
'            "P66_RAD_DETAIL_ND_SITE_ID",',
'            "P66_ND_SIMULATION_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P66_SUCCESS_MESSAGE").setValue(obj.message);',
'                apex.region("radsim").refresh();',
'                apex.item("P66_SIMULATION_REMARKS").setValue('''');',
'                apex.item("P66_LR_SHIFT").setValue('''');',
'                apex.item("P66_IO_SHIFT").setValue('''');',
'                apex.item("P66_UD_SHIFT").setValue('''');',
'',
'            } else {',
'                apex.item("P66_ERROR_MESSAGE").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169436662018156519)
,p_name=>'DANewSimulation'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82415215670013881)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169436939196156522)
,p_event_id=>wwv_flow_imp.id(169436662018156519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P66_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P66_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessCreateSimulationPlan",',
'    {',
'        pageItems: [',
'            "P66_MRNO",',
'            "P66_RAD_DETAIL_ND_RADIATION_NO",',
'            "P66_RAD_DETAIL_ND_SITE_ID",',
'            "P66_ND_SIMULATION_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P66_SUCCESS_MESSAGE").setValue(obj.message);',
'                apex.item("P66_SIMULATION_REMARKS").setValue('''');',
'                apex.item("P66_LR_SHIFT").setValue('''');',
'                apex.item("P66_IO_SHIFT").setValue('''');',
'                apex.item("P66_UD_SHIFT").setValue('''');',
'',
'                apex.region("radsim").refresh();',
'',
'            } else {',
'                apex.item("P66_ERROR_MESSAGE").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169437338669156526)
,p_name=>'DAErrorMessage1'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_ERROR_MESSAGE'
,p_condition_element=>'P66_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169437478869156527)
,p_event_id=>wwv_flow_imp.id(169437338669156526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P66_ERROR_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169437586112156528)
,p_name=>'DASuccessMessage1'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_SUCCESS_MESSAGE'
,p_condition_element=>'P66_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169437612912156529)
,p_event_id=>wwv_flow_imp.id(169437586112156528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P66_SUCCESS_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169437710185156530)
,p_name=>'DASave'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82414098320013880)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169437918172156532)
,p_event_id=>wwv_flow_imp.id(169437710185156530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P66_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P66_ERROR_MESSAGE").setValue('''');',
'',
'let successCount = 0;',
'let errorOccurred = false;',
'let errorMessage = '''';',
'',
'function processSimulationPlan(vFromFractionID, vToFractionID, vScheduleSRNO) {',
'    apex.server.process("ProcessSimulationPlan", {',
'        x01: vFromFractionID,',
'        x02: vToFractionID,',
'        x03: vScheduleSRNO,',
'        pageItems: [',
'            "P66_RAD_DETAIL_ND_RADIATION_NO",',
'            "P66_RAD_DETAIL_ND_SITE_ID",',
'            "P66_ND_SIMULATION_ID",',
'            "P66_PHY_PLAN_ID",',
'            "P66_SIMULATION_REMARKS"',
'        ]',
'    }, {',
'        dataType: ''text'',',
'        success: handleSuccess,',
'        error: handleError',
'    });',
'}',
'',
'function processShiftSetup() {',
'    apex.server.process("ProcessShiftSetup", {',
'        pageItems: [',
'            "P66_RAD_DETAIL_ND_RADIATION_NO",',
'            "P66_RAD_DETAIL_ND_SITE_ID",',
'            "P66_ND_SIMULATION_ID",',
'            "P66_ND_ISOCENTER_ID",',
'            "P66_SHIFT_ISOCENTER_DESC",',
'            "P66_LR_TYPE",',
'            "P66_LR_SHIFT",',
'            "P66_UD_TYPE",',
'            "P66_UD_SHIFT",',
'            "P66_IO_TYPE",',
'            "P66_IO_SHIFT"',
'        ]',
'    }, {',
'        dataType: ''text'',',
'        success: handleSuccess,',
'        error: handleError',
'    });',
'}',
'',
'function processSimulationRemarks() {',
'    apex.server.process("ProcessSimulationRemarks", {',
'        pageItems: [',
'            "P66_RAD_DETAIL_ND_RADIATION_NO",',
'            "P66_RAD_DETAIL_ND_SITE_ID",',
'            "P66_ND_SIMULATION_ID",',
'            "P66_SIMULATION_REMARKS"',
'        ]',
'    }, {',
'        dataType: ''text'',',
'        success: handleSuccess,',
'        error: handleError',
'    });',
'}',
'',
'',
'function handleSuccess(data) {',
'    let obj;',
'    try {',
'        obj = JSON.parse(data);',
'    } catch (e) {',
'        console.error("Invalid JSON response:", data);',
'        apex.message.alert("An error occurred: " + data); // Display raw error',
'        return;',
'    }',
'',
'    if (obj.status === "success") {',
'        successCount++;',
'    } else {',
'        errorOccurred = true;',
'        errorMessage += obj.message + ''\n''; // Accumulate error messages',
'    }',
'',
'    if (successCount + (errorOccurred ? 1 : 0) === 2) {',
'',
'        if (successCount > 0) {',
'            let successMessage = ''Radiotherapy Simulation saved successfully'';',
'            apex.item("P66_SUCCESS_MESSAGE").setValue(successMessage);',
'        }',
'',
'        if (errorOccurred) {',
'            apex.item("P66_ERROR_MESSAGE").setValue(errorMessage);',
'        }',
'    }',
'}',
'',
'',
'function handleError(jqXHR, textStatus, errorThrown) {',
'    errorOccurred = true;',
'    apex.message.alert("An error occurred: " + textStatus);',
'}',
'',
'/*function processRecords() {',
'    var model = apex.region("radsim").widget().interactiveGrid("getViews", "grid").model;',
'    var totalRec = model.getTotalRecords();',
'',
'    model.forEach(function (r) {',
'      //  let vFromFractionID = model.getValue(r, "FROM_FRACTION_ID").v;',
'        var vFromFractionID = model.getValue(r, "FROM_FRACTION_ID");',
'        var vToFractionID = model.getValue(r, "TO_FRACTION_ID");',
'        var vScheduleSRNO = model.getValue(r, "SCHEDULE_SRNO");',
'',
'        processSimulationPlan(vFromFractionID, vToFractionID, vScheduleSRNO);',
'        processShiftSetup();',
'        processSimulationRemarks();',
'    });',
'}*/',
'',
'function processRecords() {',
'    ',
'    processShiftSetup();',
'    processSimulationRemarks();',
'}',
'',
'processRecords();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82490142168013994)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P66_MRNO          := NULL;',
'  :P66_SCHEDULE_SRNO := NULL;',
'',
'  /*IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P66_MRNO          := :P46_PATIENT_MRNO;',
'    :P66_SCHEDULE_SRNO := NULL;',
'  END IF;*/',
'',
'  IF :LV_PATIENT_MRNO IS NOT NULL THEN',
'    :P66_MRNO          := :LV_PATIENT_MRNO;',
'    :P66_SCHEDULE_SRNO := :LV_SR_NO;',
'  END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>82490142168013994
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82489753252013993)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadPlan'
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
'    INTO :P66_RADIATION_NO,',
'         :P66_RADIATION_DATE,',
'         :P66_MRNO,',
'         :P66_PATIENT_NAME,',
'         :P66_DISP_AGE,',
'         :P66_DISP_GENDER,',
'         :P66_DOCTOR_ID,',
'         :P66_DISP_DOCTOR,',
'         :P66_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = (CASE',
'           WHEN :P66_SCHEDULE_SRNO IS NOT NULL THEN',
'            (SELECT S.RADIATION_NO',
'               FROM RADIATION.SCHEDULE S',
'              WHERE SR_NO = :P66_SCHEDULE_SRNO)',
'           ELSE',
'           ',
'            RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P66_MRNO,',
'                                                          P_RADIOTHERAPY_TYPE => ''T'')',
'         END)',
'     AND MRNO LIKE CASE',
'           WHEN :P66_MRNO IS NOT NULL THEN',
'            ''%'' || :P66_MRNO',
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
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>82489753252013993
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110024950864468538)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeWorkFlow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                  P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                  P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                  P_EVENT_ID         => SW.EVENT_ID)',
'  ',
'    INTO :P66_SCHEDULE_EVENT_ID',
'    FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'   WHERE SW.SR_NO = S.SR_NO',
'     AND S.SR_NO = :P66_SCHEDULE_SRNO',
'     AND S.WFE_NO = SW.WFE_NO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>110024950864468538
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82575423708169907)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form RAD_SIMULATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    INTO :P66_SHIFT_RADIATION_NO_1,',
'         :P66_SHIFT_SITE_ID,',
'         :P66_SHIFT_SIMULATION_ID,',
'         :P66_SHIFT_ISOCENTER_ID,',
'         :P66_SHIFT_ISOCENTER_DESC,',
'         :P66_LR_TYPE,',
'         :P66_LR_SHIFT,',
'         :P66_UD_TYPE,',
'         :P66_UD_SHIFT,',
'         :P66_IO_TYPE,',
'         :P66_IO_SHIFT,',
'         :P66_ROWID_1',
'    FROM RADIATION.RAD_SIMULATION_ISOCENTER',
'   WHERE RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'     AND SIMULATION_ID = :P66_ND_SIMULATION_ID',
'     AND ISOCENTER_ID = :P66_ND_ISOCENTER_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>82575423708169907
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82482993716013976)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_region_id=>wwv_flow_imp.id(98315715984925417)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessSimulationPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT              NUMBER := 0;',
'  L_RAD_SIMULATION_TAB RADIATION.PKG_S18FRM00142.RAD_SIMULATION_TAB;',
'  L_MRNO               RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO       RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  L_FROM_FRACTION_ID   RADIATION.RAD_SIMULATION.FROM_FRACTION_ID%TYPE := APEX_APPLICATION.G_x01;',
'  L_TO_FRACTION_ID     RADIATION.RAD_SIMULATION.TO_FRACTION_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_SCHEDULE_SRNO      RADIATION.RAD_SIMULATION.SCHEDULE_SRNO%TYPE := APEX_APPLICATION.G_x03;',
'  ',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  IF :P66_ND_SIMULATION_ID IS NOT NULL THEN',
'    L_MRNO         := :P66_MRNO;',
'    L_RADIATION_NO := :P66_RAD_DETAIL_ND_RADIATION_NO;',
'  ',
'    SELECT :P66_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P66_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P66_ND_SIMULATION_ID           SIMULATION_ID,',
'           L_FROM_FRACTION_ID              FROM_FRACTION_ID,',
'           NULL                            TO_FRACTION_ID,',
'           L_SCHEDULE_SRNO                 SCHEDULE_SRNO,',
'           :P66_PHY_PLAN_ID                PHY_PLAN_ID,',
'           NULL                            PHY_REMARKS,',
'           NULL                            SIGN_BY1,',
'           NULL                            SIGN_BY2,',
'           NULL                            SIGN_BY_NAME,',
'           NULL                            SIGN_DATE,',
'           NULL                            STATUS_ID,',
'           :P66_SIMULATION_REMARKS         REMARKS,',
'           NULL                            STATUS_DESC',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_SIMULATION_TAB',
'      FROM DUAL;',
'  ',
'    -- UPDATE',
'    -----------',
'    BEGIN',
'      RADIATION.PKG_S18FRM00142.UPDATE_RAD_SIMULATION(L_RAD_SIMULATION_TAB);',
'    END;',
'  ',
'    :P66_PARAM_MRNO         := L_MRNO;',
'    :P66_PARAM_RADIATION_NO := L_RADIATION_NO;',
'  ',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  /*APEX_JSON.WRITE(P_NAME  => ''message'',',
'  P_VALUE => ''Radiotherapy Simulation saved successfully'');*/',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
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
,p_internal_uid=>82482993716013976
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
 p_id=>wwv_flow_imp.id(17786070741818105)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessSimulationRemarks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT              NUMBER := 0;',
'  L_RAD_SIMULATION_TAB RADIATION.PKG_S18FRM00142.RAD_SIMULATION_TAB;',
'  L_MRNO               RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO       RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  EX_CUSTOM EXCEPTION;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'  IF :P66_ND_SIMULATION_ID IS NOT NULL THEN',
'    L_MRNO         := :P66_MRNO;',
'    L_RADIATION_NO := :P66_RAD_DETAIL_ND_RADIATION_NO;',
'  ',
'    BEGIN',
'      FOR REC IN (SELECT ROWID',
'                    FROM RADIATION.RAD_SIMULATION',
'                   WHERE RADIATION_NO = :P66_RAD_DETAIL_ND_RADIATION_NO',
'                     AND SITE_ID = :P66_RAD_DETAIL_ND_SITE_ID',
'                     AND SIMULATION_ID = :P66_ND_SIMULATION_ID',
'                     FOR UPDATE NOWAIT) LOOP',
'      ',
'        UPDATE RADIATION.RAD_SIMULATION',
'           SET REMARKS = :P66_SIMULATION_REMARKS',
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
'  /*APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Simulation saved successfully'');*/',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
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
,p_internal_uid=>17786070741818105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17786158883818106)
,p_process_sequence=>100
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessShiftSetup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT              NUMBER := 0;',
'  L_RAD_SIMULATION_TAB RADIATION.PKG_S18FRM00142.RAD_SIMULATION_TAB;',
'  L_MRNO               RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO       RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  L_ALERT_TEXT         VARCHAR2(4000);',
'  L_RAD_SIM_ISO_TAB    RADIATION.PKG_S18FRM00142.RAD_SIM_ISO_TAB;',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  IF :P66_ND_SIMULATION_ID IS NOT NULL THEN',
'    L_MRNO         := :P66_MRNO;',
'    L_RADIATION_NO := :P66_RAD_DETAIL_ND_RADIATION_NO;',
'    SELECT :P66_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P66_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P66_ND_SIMULATION_ID           SIMULATION_ID,',
'           :P66_ND_ISOCENTER_ID            ISOCENTER_ID,',
'           :P66_SHIFT_ISOCENTER_DESC       ISOCENTER_DESC,',
'           :P66_LR_TYPE                    LR_TYPE,',
'           :P66_LR_SHIFT                   LR_SHIFT,',
'           :P66_UD_TYPE                    UD_TYPE,',
'           :P66_UD_SHIFT                   UD_SHIFT,',
'           :P66_IO_TYPE                    IO_TYPE,',
'           :P66_IO_SHIFT                   IO_SHIFT',
'      BULK COLLECT',
'      INTO L_RAD_SIM_ISO_TAB',
'      FROM DUAL;',
'  ',
'    -----------',
'    -- Update',
'    -----------',
'    BEGIN',
'      MERGE INTO RADIATION.RAD_SIMULATION_ISOCENTER A',
'      USING (SELECT :P66_RAD_DETAIL_ND_RADIATION_NO AS RADIATION_NO,',
'                    :P66_RAD_DETAIL_ND_SITE_ID      AS SITE_ID,',
'                    :P66_ND_SIMULATION_ID           AS SIMULATION_ID,',
'                    :P66_ND_ISOCENTER_ID            AS ISOCENTER_ID',
'               FROM DUAL) B',
'      ON (A.RADIATION_NO = B.RADIATION_NO AND A.SITE_ID = B.SITE_ID AND A.SIMULATION_ID = B.SIMULATION_ID AND A.ISOCENTER_ID = B.ISOCENTER_ID)',
'      ',
'      WHEN MATCHED THEN',
'        UPDATE',
'           SET LR_TYPE  = :P66_LR_TYPE,',
'               LR_SHIFT = :P66_LR_SHIFT,',
'               UD_TYPE  = :P66_UD_TYPE,',
'               UD_SHIFT = :P66_UD_SHIFT,',
'               IO_TYPE  = :P66_IO_TYPE,',
'               IO_SHIFT = :P66_IO_SHIFT',
'      WHEN NOT MATCHED THEN',
'        INSERT',
'          (RADIATION_NO,',
'           SITE_ID,',
'           SIMULATION_ID,',
'           ISOCENTER_ID,',
'           PHASE_NO,',
'           LR_TYPE,',
'           LR_SHIFT,',
'           UD_TYPE,',
'           UD_SHIFT,',
'           IO_TYPE,',
'           IO_SHIFT)',
'        VALUES',
'          (:P66_RAD_DETAIL_ND_RADIATION_NO,',
'           :P66_RAD_DETAIL_ND_SITE_ID,',
'           :P66_ND_SIMULATION_ID,',
'           :P66_ND_ISOCENTER_ID,',
'           :P66_RAD_PHASE_PHASE_NO,',
'           :P66_LR_TYPE,',
'           :P66_LR_SHIFT,',
'           :P66_UD_TYPE,',
'           :P66_UD_SHIFT,',
'           :P66_IO_TYPE,',
'           :P66_IO_SHIFT);',
'    ',
'    END;',
'  ',
'    :P66_PARAM_MRNO         := L_MRNO;',
'    :P66_PARAM_RADIATION_NO := L_RADIATION_NO;',
'  END IF;',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  /*APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Simulation saved successfully'');*/',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
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
,p_internal_uid=>17786158883818106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82490584499013994)
,p_process_sequence=>110
,p_process_point=>'ON_DEMAND'
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
'  L_MRNO         := :P66_MRNO;',
'  L_RADIATION_NO := :P66_RAD_DETAIL_ND_RADIATION_NO;',
'  RADIATION.PKG_S18FRM00142.NEW_SIMULATION(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''ORGANIZATION_ID''),',
'                                           P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''LOCATION_ID''),',
'                                           P_RADIATION_NO      => :P66_RAD_DETAIL_ND_RADIATION_NO,',
'                                           P_SITE_ID           => :P66_RAD_DETAIL_ND_SITE_ID,',
'                                           P_SIMULATION_ID     => :P66_ND_SIMULATION_ID,',
'                                           P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''USER_MRNO''),',
'                                           P_SCHEDULE_SRNO     => :P66_SCHEDULE_SRNO,',
'                                           P_OBJECT_CODE       => ''S18APX00056'',',
'                                           P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                              ''TERMINAL''),',
'                                           P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                           P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P66_PARAM_MRNO         := L_MRNO;',
'  :P66_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Simulation created Successfully'');',
'  APEX_JSON.CLOSE_OBJECT;',
'exception',
'  when EX_CUSTOM then',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  when others then',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => sqlerrm);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(82415215670013881)
,p_internal_uid=>82490584499013994
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82490979149013994)
,p_process_sequence=>110
,p_process_point=>'ON_DEMAND'
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
'  L_MRNO         := :P66_MRNO;',
'  L_RADIATION_NO := :P66_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00142.DISPOSE_PHYSICS(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_RADIATION_NO      => :P66_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P66_RAD_DETAIL_ND_SITE_ID,',
'                                            P_SIMULATION_ID     => :P66_ND_SIMULATION_ID,',
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
'  :P66_PARAM_MRNO         := L_MRNO;',
'  :P66_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Simulation Disposed Successfully'');',
'  APEX_JSON.CLOSE_OBJECT;',
'exception',
'  when EX_CUSTOM then',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  when others then',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => sqlerrm);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(82415623620013882)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_internal_uid=>82490979149013994
);
wwv_flow_imp.component_end;
end;
/

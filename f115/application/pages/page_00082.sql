prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_name=>'Radiation Follow Up Setup'
,p_alias=>'RADIATION-FOLLOW-UP-SETUP'
,p_step_title=>'Radiation Follow Up Setup'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'      jsFormsBlock_pageReady();',
'    }, 1000);',
'',
'',
'',
'',
'    document.addEventListener("scroll", function () {',
'  const buttonContainer = document.querySelector(".button-container"); // Your button container',
'  const footer = document.querySelector(".t-Footer"); // APEX footer class',
'  if (!footer || !buttonContainer) return; // Ensure both elements exist',
'  // Get positions of the footer and button container',
'  const footerRect = footer.getBoundingClientRect();',
'  const buttonRect = buttonContainer.getBoundingClientRect();',
'  // Check if the footer is visible in the viewport',
'  if (footerRect.top <= window.innerHeight) {',
'    // Footer is overlapping, stop the button at the footer',
'    buttonContainer.style.transform = `translateY(${footerRect.top - window.innerHeight}px)`;',
'  } else {',
'    // Footer is not in view, keep the button fixed',
'    buttonContainer.style.transform = "translateY(0)";',
'  }',
'});',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#LOCATION_ig_grid_vc_status {',
'    display: none;',
'}',
'.a-GV-pageRange {',
'    display: none;',
'}',
'',
'[data-action="edit"]{',
'    display:none !important;',
'} ',
'[data-action="save"]{',
'    display:none !important;',
'}',
'',
'[data-action="selection-add-row"]{',
'    display:none !important;',
'}',
'',
'',
'',
'/* Style for the button container */',
'.button-container {',
'  position: fixed;',
'  bottom: 0;',
' /* padding-left: 390px; */',
'  width: 100%;',
'  border:none;',
'  margin-bottom: 0; ',
'background-color:#ffffff;     /*var(--ut-footer-background-color);*/  ',
'  z-index: 1000;',
'}',
' .t-Body-contentInner {',
'    padding-bottom: 300px;   ',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250122180803'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112331647051901348)
,p_plug_name=>'Location'
,p_region_name=>'LOCATION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT L.LOCATION_ID, L.DESCRIPTION, L.ORGANIZATION_ID',
'  FROM DEFINITIONS.LOCATION L',
' WHERE EXISTS (SELECT 1',
'          FROM RADIATION.MACHINES M',
'         WHERE M.LOCATION_ID = L.LOCATION_ID);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Location'
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
 p_id=>wwv_flow_imp.id(116987888724753401)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(116987921171753402)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(117313532522112441)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>150
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(112331790158901349)
,p_internal_uid=>112331790158901349
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'NULL'
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
,p_fixed_header_max_height=>235
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(116993450385753526)
,p_interactive_grid_id=>wwv_flow_imp.id(112331790158901349)
,p_static_id=>'1169935'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(116993634872753526)
,p_report_id=>wwv_flow_imp.id(116993450385753526)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116995096836753531)
,p_view_id=>wwv_flow_imp.id(116993634872753526)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(116987888724753401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116995940218753535)
,p_view_id=>wwv_flow_imp.id(116993634872753526)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(116987921171753402)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(117698112608702638)
,p_view_id=>wwv_flow_imp.id(116993634872753526)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(117313532522112441)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>189.14100000000002
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116989292474753415)
,p_plug_name=>'Buttons Container'
,p_region_css_classes=>'button-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117311416439112420)
,p_plug_name=>'Follow Up Setup'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FOLLOWUP_ORGANIZATION_ID,',
'       FOLLOWUP_LOCATION_ID,',
'       FELLOW_ALLOWED,',
'       RESIDENT_ALLOWED,',
'       ACTIVE,',
'       USER_ID,',
'       TERMINAL,',
'       TRN_DATE,',
'       ORIGINAL_USER_ID,',
'       ORIGINAL_TERMINAL,',
'       ORIGINAL_TRN_DATE,',
'       ORG_ID,',
'       ZON_ID,',
'       LOC_ID,',
'       WS_SYNC_DATE,',
'       NON_CONSULTANT_FU_CPT_ID,',
'       FU_SETUP_ID,',
'       ROWID',
'  from RADIATION.DEF_FOLLOWUP_SETUP'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295425508468153337)
,p_plug_name=>'Follow Up Setup Designation  '
,p_parent_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_region_css_classes=>'forms-block my-anchor '
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'      DEF_FU_SETUP_ID,',
'',
'      RESIDENTS_ALLOWED_DESIGNATION_ID,',
'      FELLOWS_ALLOWED_DESIGNATION_ID,',
'      ROWID',
'from  RADIATION.DEF_FOLLOWUP_SETUP_DESIGNATION ',
'WHERE DEF_FU_SETUP_ID = :P82_FU_SETUP_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P82_FU_SETUP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Follow Up Setup Designation  '
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
 p_id=>wwv_flow_imp.id(295426225778153344)
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
 p_id=>wwv_flow_imp.id(302980730627896816)
,p_name=>'RESIDENTS_ALLOWED_DESIGNATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESIDENTS_ALLOWED_DESIGNATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Allowed Residents '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'300'
,p_is_required=>false
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.DESCRIPTION,DC.DESIGNATION_ID',
'FROM DEFINITIONS.CATEGORY_WISE_DESIGNATION DC, DEFINITIONS.DESIGNATION D',
'WHERE DC.DESIGNATION_ID = D.DESIGNATION_ID',
'AND DC.DESIGNATION_CATEGORY_ID = ''212'''))
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
 p_id=>wwv_flow_imp.id(302980835875896817)
,p_name=>'FELLOWS_ALLOWED_DESIGNATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FELLOWS_ALLOWED_DESIGNATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Allowed Fellows'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  D.DESCRIPTION,DC.DESIGNATION_ID',
'  FROM DEFINITIONS.CATEGORY_WISE_DESIGNATION DC, DEFINITIONS.DESIGNATION D',
'WHERE DC.DESIGNATION_ID = D.DESIGNATION_ID',
'   AND DC.DESIGNATION_CATEGORY_ID = ''039''',
'   AND EXISTS',
'(SELECT 1',
'          FROM HRD.POSITION P',
'         WHERE P.DESIGNATION_ID = D.DESIGNATION_ID',
'           AND EXISTS',
'         (SELECT 1',
'                  FROM DEFINITIONS.DEPARTMENT DEP',
'                 WHERE DEP.DEPARTMENT_NATURE_ID = ''020''',
'                   AND DEP.DEPARTMENT_ID = P.DEPARTMENT_ID))'))
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
 p_id=>wwv_flow_imp.id(302981128535896820)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a id ="de" class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(302981345262896822)
,p_name=>'DEF_FU_SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEF_FU_SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Setup ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(295425657833153338)
,p_internal_uid=>295425657833153338
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>190
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(304268928205724621)
,p_interactive_grid_id=>wwv_flow_imp.id(295425657833153338)
,p_static_id=>'3042690'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(304269189985724623)
,p_report_id=>wwv_flow_imp.id(304268928205724621)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(304277252870762876)
,p_view_id=>wwv_flow_imp.id(304269189985724623)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(295426225778153344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(304332943706759085)
,p_view_id=>wwv_flow_imp.id(304269189985724623)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(302980730627896816)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>203
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(304333897951759090)
,p_view_id=>wwv_flow_imp.id(304269189985724623)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(302980835875896817)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>295
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(305376156060738086)
,p_view_id=>wwv_flow_imp.id(304269189985724623)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(302981128535896820)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>43
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(306219346774226142)
,p_view_id=>wwv_flow_imp.id(304269189985724623)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(302981345262896822)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116989177011753414)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(116989292474753415)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(385423406715493294)
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(118028131029392523)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(116989292474753415)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'t-Icon t-Icon--left fa fa-trash '
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116988749015753410)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(116989292474753415)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423701774493294)
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117753793774190511)
,p_name=>'P82_LOCATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112331647051901348)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117753841518190512)
,p_name=>'P82_ORGANIZATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112331647051901348)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118026395940392505)
,p_name=>'P82_FOLLOWUP_ORGANIZATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'FOLLOWUP_ORGANIZATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118026427611392506)
,p_name=>'P82_FOLLOWUP_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'FOLLOWUP_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118026650141392508)
,p_name=>'P82_FELLOW_ALLOWED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_default=>'N'
,p_prompt=>'<b>Fellow Allowed</b>'
,p_source=>'FELLOW_ALLOWED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118026779668392509)
,p_name=>'P82_RESIDENT_ALLOWED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_default=>'N'
,p_prompt=>'<b>Resident Allowed</b>'
,p_source=>'RESIDENT_ALLOWED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118026829195392510)
,p_name=>'P82_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_default=>'N'
,p_prompt=>'<b>Active</b>'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118026973923392511)
,p_name=>'P82_USER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027063065392512)
,p_name=>'P82_TERMINAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'TERMINAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027129413392513)
,p_name=>'P82_TRN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'TRN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027209221392514)
,p_name=>'P82_ORIGINAL_USER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'ORIGINAL_USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027310762392515)
,p_name=>'P82_ORIGINAL_TERMINAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'ORIGINAL_TERMINAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027421991392516)
,p_name=>'P82_ORIGINAL_TRN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'ORIGINAL_TRN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027594580392517)
,p_name=>'P82_ORG_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027629189392518)
,p_name=>'P82_ZON_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'ZON_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027762143392519)
,p_name=>'P82_LOC_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'LOC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118027885336392520)
,p_name=>'P82_WS_SYNC_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'WS_SYNC_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121324720917782615)
,p_name=>'P82_NON_CONSLT_FU_CPT_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_prompt=>'<b>Non Consultant Follow Up CPT:</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DS.DESCRIPTION DESCRIPTION, DS.CPT_ID ID',
'  FROM DEFINITIONS.CPT DS',
' WHERE DS.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124890406190367809)
,p_name=>'P82_ROW_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302981584633896824)
,p_name=>'P82_NON_CONSULTANT_FU_CPT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'NON_CONSULTANT_FU_CPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302981646831896825)
,p_name=>'P82_FU_SETUP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'FU_SETUP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302982049148896829)
,p_name=>'P82_MESSAGES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112331647051901348)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302982296588896831)
,p_name=>'P82_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_item_source_plug_id=>wwv_flow_imp.id(117311416439112420)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(118025918397392501)
,p_name=>'RowSelection'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(112331647051901348)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118026038407392502)
,p_event_id=>wwv_flow_imp.id(118025918397392501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*let model = this.data.model;',
'var LOCATION_ID;',
'var ORGANIZATION_ID; ',
'',
'try{',
'LOCATION_ID   = model.getValue(this.data.selectedRecords[0],"LOCATION_ID");',
'ORGANIZATION_ID = model.getValue(this.data.selectedRecords[0],"ORGANIZATION_ID");',
'',
'apex.item("LOCATION_ID").setValue(LOCATION_ID);',
'apex.item("ORGANIZATION_ID").setValue(ORGANIZATION_ID);',
'',
'}',
'catch{',
'    console.log(''empty'');',
'}*/',
'',
'apex.item(''P82_LOCATION_ID'').setValue(_.LOCATION.LOCATION_ID);',
'apex.item(''P82_ORGANIZATION_ID'').setValue(_.LOCATION.ORGANIZATION_ID);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118028065046392522)
,p_event_id=>wwv_flow_imp.id(118025918397392501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT FOLLOWUP_ORGANIZATION_ID,',
'           FOLLOWUP_LOCATION_ID,',
'           FELLOW_ALLOWED,',
'           RESIDENT_ALLOWED,',
'           ACTIVE,',
'           NON_CONSULTANT_FU_CPT_ID,',
'            FU_SETUP_ID',
'      INTO :P82_FOLLOWUP_ORGANIZATION_ID,',
'           :P82_FOLLOWUP_LOCATION_ID,',
'           :P82_FELLOW_ALLOWED,',
'           :P82_RESIDENT_ALLOWED,',
'           :P82_ACTIVE,',
'           :P82_NON_CONSLT_FU_CPT_ID,',
'           :P82_FU_SETUP_ID',
'      FROM RADIATION.DEF_FOLLOWUP_SETUP',
'     WHERE FOLLOWUP_ORGANIZATION_ID = :P82_ORGANIZATION_ID',
'       AND FOLLOWUP_LOCATION_ID      = :P82_LOCATION_ID;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
''))
,p_attribute_02=>'P82_ORGANIZATION_ID,P82_LOCATION_ID'
,p_attribute_03=>'P82_FOLLOWUP_ORGANIZATION_ID,P82_FOLLOWUP_LOCATION_ID,P82_FELLOW_ALLOWED,P82_RESIDENT_ALLOWED,P82_ACTIVE,P82_NON_CONSLT_FU_CPT_ID,P82_FU_SETUP_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121325346323782621)
,p_event_id=>wwv_flow_imp.id(118025918397392501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gridID = "LOCATION";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'var selectedRecord = grid.getSelectedRecords();',
'console.log(selectedRecord);',
'localStorage.setItem(''lastSelectedRecord'', JSON.stringify(selectedRecord));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121325778684782625)
,p_name=>'KeepCursorPosition'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121325829310782626)
,p_event_id=>wwv_flow_imp.id(121325778684782625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gridID = "LOCATION";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'grid.setSelectedRecords(JSON.parse(localStorage.getItem(''lastSelectedRecord'')));'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302982125160896830)
,p_event_id=>wwv_flow_imp.id(121325778684782625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_MESSAGES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302980948145896818)
,p_name=>'DA_NON_CONSLT_FU_CPT_ID'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_NON_CONSLT_FU_CPT_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302981012849896819)
,p_event_id=>wwv_flow_imp.id(302980948145896818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302981863549896827)
,p_name=>'Refresh '
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_FU_SETUP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302981969146896828)
,p_event_id=>wwv_flow_imp.id(302981863549896827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295425508468153337)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(118028684428392528)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(117311416439112420)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'SAVE REGION'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'      -- Insert operation',
'      INSERT INTO RADIATION.DEF_FOLLOWUP_SETUP',
'        (FU_SETUP_ID,',
'         FOLLOWUP_LOCATION_ID,',
'         FOLLOWUP_ORGANIZATION_ID,',
'         FELLOW_ALLOWED,',
'         RESIDENT_ALLOWED,',
'         ACTIVE,',
'         NON_CONSULTANT_FU_CPT_ID)',
'      VALUES',
'        ((SELECT NVL(MAX(FU_SETUP_ID), 0) + 1',
'           FROM RADIATION.DEF_FOLLOWUP_SETUP),',
'         :P82_LOCATION_ID,',
'         :P82_ORGANIZATION_ID,',
'         :P82_FELLOW_ALLOWED,',
'         :P82_RESIDENT_ALLOWED,',
'         :P82_ACTIVE,',
'         :P82_NON_CONSLT_FU_CPT_ID);',
'    ',
'    WHEN ''U'' THEN',
'      -- Merge operation for update or insert',
'      MERGE INTO RADIATION.DEF_FOLLOWUP_SETUP tgt',
'      USING (SELECT :P82_FU_SETUP_ID          FU_SETUP_ID,',
'                    :P82_LOCATION_ID          AS FOLLOWUP_LOCATION_ID,',
'                    :P82_ORGANIZATION_ID      AS FOLLOWUP_ORGANIZATION_ID,',
'                    :P82_FELLOW_ALLOWED       AS FELLOW_ALLOWED,',
'                    :P82_RESIDENT_ALLOWED     AS RESIDENT_ALLOWED,',
'                    :P82_ACTIVE               AS ACTIVE,',
'                    :P82_NON_CONSLT_FU_CPT_ID AS NON_CONSULTANT_FU_CPT_ID',
'               FROM DUAL) src',
'      ON (tgt.FU_SETUP_ID = src.FU_SETUP_ID AND tgt.FOLLOWUP_LOCATION_ID = src.FOLLOWUP_LOCATION_ID and tgt.FOLLOWUP_ORGANIZATION_ID = src.FOLLOWUP_ORGANIZATION_ID)',
'      WHEN MATCHED THEN',
'        UPDATE',
'           SET tgt.FELLOW_ALLOWED           = src.FELLOW_ALLOWED,',
'               tgt.RESIDENT_ALLOWED         = src.RESIDENT_ALLOWED,',
'               tgt.ACTIVE                   = src.ACTIVE,',
'               tgt.NON_CONSULTANT_FU_CPT_ID = src.NON_CONSULTANT_FU_CPT_ID',
'      WHEN NOT MATCHED THEN',
'        INSERT',
'          (FU_SETUP_ID,',
'           FOLLOWUP_LOCATION_ID,',
'           FOLLOWUP_ORGANIZATION_ID,',
'           FELLOW_ALLOWED,',
'           RESIDENT_ALLOWED,',
'           ACTIVE,',
'           NON_CONSULTANT_FU_CPT_ID)',
'        VALUES',
'          ((SELECT NVL(MAX(FU_SETUP_ID), 0) + 1',
'             FROM RADIATION.DEF_FOLLOWUP_SETUP),',
'           src.FOLLOWUP_LOCATION_ID,',
'           src.FOLLOWUP_ORGANIZATION_ID,',
'           src.FELLOW_ALLOWED,',
'           src.RESIDENT_ALLOWED,',
'           src.ACTIVE,',
'           src.NON_CONSULTANT_FU_CPT_ID);',
'    ',
'    WHEN ''D'' THEN',
'      -- Delete operation',
'      DELETE FROM RADIATION.DEF_FOLLOWUP_SETUP',
'       WHERE FOLLOWUP_LOCATION_ID = :P82_LOCATION_ID',
'         AND FOLLOWUP_ORGANIZATION_ID = :P82_ORGANIZATION_ID',
'         AND FU_SETUP_ID = :P82_FU_SETUP_ID;',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    -- Handle any errors',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>118028684428392528
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(295426160014153343)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(295425508468153337)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'SAVE FOLLOWUP SETUP- Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'      -- Insert operation',
'      begin',
'      INSERT INTO RADIATION.DEF_FOLLOWUP_SETUP_DESIGNATION',
'        (DEF_FU_SETUP_ID,',
'         RESIDENTS_ALLOWED_DESIGNATION_ID,',
'         FELLOWS_ALLOWED_DESIGNATION_ID)',
'      VALUES',
'        (:P82_FU_SETUP_ID,',
'         :RESIDENTS_ALLOWED_DESIGNATION_ID,',
'         :FELLOWS_ALLOWED_DESIGNATION_ID);',
'    :P82_MESSAGES := '''';',
'     :P82_MESSAGES := ''Record Saved successfully...'';',
' EXCEPTION ',
'     WHEN dup_val_on_index THEN',
'    :P82_MESSAGES := '''';',
'     :P82_MESSAGES := ''Duplicate record found...'';',
'end;',
'    WHEN ''U'' THEN',
'      -- Merge operation for update or insert',
'      begin',
'       UPDATE RADIATION.DEF_FOLLOWUP_SETUP_DESIGNATION',
'         SET RESIDENTS_ALLOWED_DESIGNATION_ID = :RESIDENTS_ALLOWED_DESIGNATION_ID,',
'          FELLOWS_ALLOWED_DESIGNATION_ID = :FELLOWS_ALLOWED_DESIGNATION_ID',
'       WHERE ROWID = :ROWID;',
'   ',
'    :P82_MESSAGES := '''';',
'     :P82_MESSAGES := ''Record Updated successfully...'';',
' EXCEPTION ',
'     WHEN dup_val_on_index THEN',
'    :P82_MESSAGES := '''';',
'     :P82_MESSAGES := ''Duplicate record found...'';',
'     end;',
'    WHEN ''D'' THEN',
'      -- Delete operation',
'      begin',
'      DELETE FROM RADIATION.DEF_FOLLOWUP_SETUP_DESIGNATION',
'       WHERE ROWID =:ROWID;',
'  :P82_MESSAGES := '''';',
'     :P82_MESSAGES := ''Record Deleted successfully...'';',
' EXCEPTION ',
'     WHEN No_data_found THEN',
'    :P82_MESSAGES := '''';',
'     :P82_MESSAGES := SQLERRM;',
'end;',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    -- Handle any errors',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(116988749015753410)
,p_internal_uid=>295426160014153343
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(118026255035392504)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(117311416439112420)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Radiation Follow Up Setup'
,p_process_error_message=>'NULL;'
,p_process_when_type=>'NEVER'
,p_internal_uid=>118026255035392504
);
wwv_flow_imp.component_end;
end;
/

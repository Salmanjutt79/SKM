prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'RADIOTHERAPY_PARENT_SITE'
,p_alias=>'RADIOTHERAPY-PARENT-SITE'
,p_step_title=>'RADIOTHERAPY_PARENT_SITE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelectedRowId;',
'',
'function saveLastSelectedRow() {',
'    const grid = apex.region("RadParentSite").widget().interactiveGrid("getViews", "grid");',
'    const selectedRecords = grid.getSelectedRecords();',
'    ',
'    if (selectedRecords.length > 0) {',
'        lastSelectedRowId = selectedRecords[0].ROWID; // Use the primary key or ROWID',
'    }',
'}',
'',
'function selectLastRow() {',
'    if (lastSelectedRowId) {',
'        const grid = apex.region("RadParentSite").widget().interactiveGrid("getViews", "grid");',
'        const row = grid.getRowById(lastSelectedRowId);',
'        if (row) {',
'            grid.setSelectedRecords([row]);',
'            grid.scrollToRecord(row);',
'        }',
'    }',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jsFormsBlock_pageReady();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Hide horizontal scrollbar while keeping vertical scrollbar */',
'.a-GV-w-scroll {',
'    overflow-x: hidden; /* Hide horizontal scrollbar */',
'    overflow-y: auto; /* Enable vertical scrolling */',
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
' ',
'.a-GV-header-sort{',
'     display: none;',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'02'
,p_last_updated_by=>'00160000007098'
,p_last_upd_yyyymmddhh24miss=>'20250107095402'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43441715973816419)
,p_plug_name=>'Teletherapy Side Effects(s)'
,p_region_name=>'rad_tele_side_effects'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PARENT_SITE_ID,',
'       RADIOTHERAPY_TYPE,',
'       ACUTE,',
'       CHRONIC,',
'       OBJECT_CODE,',
'       ROWID',
'  FROM RADIATION.SIDE_EFFECTS',
' WHERE RADIOTHERAPY_TYPE = ''T''',
'   AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P21_MASTER_PARENT_SITE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48005181629416144)
,p_plug_name=>'Brachytheraphy Side Effects(s)'
,p_region_name=>'rad_brachy_side_effects'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PARENT_SITE_ID,',
'       RADIOTHERAPY_TYPE,',
'       ACUTE,',
'       CHRONIC,',
'       OBJECT_CODE,',
'       ROWID',
'  FROM RADIATION.SIDE_EFFECTS',
' WHERE RADIOTHERAPY_TYPE = ''B''',
'   AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P21_MASTER_PARENT_SITE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216477636175960747)
,p_plug_name=>'Buttons Container'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_display_column=>5
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(632293282984118382)
,p_plug_name=>'Parent Site'
,p_region_name=>'RadParentSite'
,p_region_css_classes=>'forms-block my-anchor'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PARENT_SITE_ID,',
'       DESCRIPTION,',
'       ABBREVIATION,',
'       NECK_POSITION,',
'       CONTOUR_REQUIRED,',
'       MIN_DOSE_LIMIT,',
'       MAX_DOSE_LIMIT,',
'       ACTIVE,',
'       EXCLUDE_CHECK_SIM_BOOST,',
'       ROWID',
'  FROM RADIATION.PARENT_SITE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Parent Site'
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
 p_id=>wwv_flow_imp.id(43440591077816407)
,p_name=>'ABBREVIATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABBREVIATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Abbreviation'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_static_id=>'ABBREVIATION'
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
 p_id=>wwv_flow_imp.id(43440619995816408)
,p_name=>'NECK_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Neck Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'NECK_POSITION'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43440798052816409)
,p_name=>'CONTOUR_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTOUR_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Contour Required'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'CONTOUR_REQUIRED'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43440812252816410)
,p_name=>'MIN_DOSE_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIN_DOSE_LIMIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Min Dose Limit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'MIN_DOSE_LIMIT'
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
 p_id=>wwv_flow_imp.id(43440992777816411)
,p_name=>'MAX_DOSE_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_DOSE_LIMIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Max Dose Limit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'MAX_DOSE_LIMIT'
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
 p_id=>wwv_flow_imp.id(43441057283816412)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_static_id=>'ACTIVE'
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
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43441431007816416)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(87053698272984546)
,p_name=>'PARENT_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Parent Site ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PARENT_SITE_ID'
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
 p_id=>wwv_flow_imp.id(109291935132207427)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
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
 p_id=>wwv_flow_imp.id(285465978185237801)
,p_name=>'EXCLUDE_CHECK_SIM_BOOST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCLUDE_CHECK_SIM_BOOST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Exclude SIM for Boost'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(632295566725118379)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>120
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(632293786641118382)
,p_internal_uid=>632293786641118382
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
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>350
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(632294169620118380)
,p_interactive_grid_id=>wwv_flow_imp.id(632293786641118382)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(632294360144118380)
,p_report_id=>wwv_flow_imp.id(632294169620118380)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43632553215177981)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(43440591077816407)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43633421884177985)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(43440619995816408)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43634304608177987)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(43440798052816409)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43635228173177991)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(43440812252816410)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43636167328177994)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(43440992777816411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43637090220177996)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(43441057283816412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43660018538247416)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(43441431007816416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(87090643914070407)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(87053698272984546)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109992357490377124)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(109291935132207427)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285471987809238181)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(285465978185237801)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(632295968738118379)
,p_view_id=>wwv_flow_imp.id(632294360144118380)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(632295566725118379)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>393
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43618499910168179)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(216477636175960747)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423701774493294)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43619276862168179)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(216477636175960747)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(385423406715493294)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43617641123168176)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(216477636175960747)
,p_button_name=>'Create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43618002457168179)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(216477636175960747)
,p_button_name=>'Edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43618885065168179)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(216477636175960747)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Side Effect(s)'
,p_button_position=>'PREVIOUS'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43630854799168228)
,p_branch_name=>'GoToHomePage'
,p_branch_action=>'f?p=100:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(43619276862168179)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43441998165816421)
,p_name=>'P21_PARENT_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_item_source_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_source=>'PARENT_SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43442009623816422)
,p_name=>'P21_RADIOTHERAPY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_item_source_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_source=>'RADIOTHERAPY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43442162697816423)
,p_name=>'P21_ACUTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_item_source_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_prompt=>'Acute'
,p_source=>'ACUTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43442220860816424)
,p_name=>'P21_CHRONIC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_item_source_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_prompt=>'Chronic'
,p_source=>'CHRONIC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43442330624816425)
,p_name=>'P21_OBJECT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_item_source_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_source=>'OBJECT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43442518931816427)
,p_name=>'P21_MASTER_PARENT_SITE_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43442717275816429)
,p_name=>'P21_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_item_source_plug_id=>wwv_flow_imp.id(43441715973816419)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005241050416145)
,p_name=>'P21_PARENT_SITE_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_item_source_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_source=>'PARENT_SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005383426416146)
,p_name=>'P21_RADIOTHERAPY_TYPE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_item_source_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_source=>'RADIOTHERAPY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005447406416147)
,p_name=>'P21_ACUTE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_item_source_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_prompt=>'Acute'
,p_source=>'ACUTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005547770416148)
,p_name=>'P21_CHRONIC_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_item_source_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_prompt=>'Chronic'
,p_source=>'CHRONIC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005688231416149)
,p_name=>'P21_OBJECT_CODE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_item_source_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_source=>'OBJECT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005734995416150)
,p_name=>'P21_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_item_source_plug_id=>wwv_flow_imp.id(48005181629416144)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66893349139598732)
,p_tabular_form_region_id=>wwv_flow_imp.id(632293282984118382)
,p_validation_name=>'ValidateMaximumDose'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_NUMBER(:MAX_DOSE_LIMIT) < TO_NUMBER(:MIN_DOSE_LIMIT) THEN',
'RETURN(''Please enter greater than minimum dose limit'');',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_column=>'MAX_DOSE_LIMIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(66893469189598733)
,p_tabular_form_region_id=>wwv_flow_imp.id(632293282984118382)
,p_validation_name=>'ValidateMinimumDose'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_NUMBER(:MIN_DOSE_LIMIT) < 100 THEN',
'RETURN(''Please enter minimum dose limit, you cannot enter dose less than 100'');',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_column=>'MIN_DOSE_LIMIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43624844392168222)
,p_name=>'Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43617641123168176)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43625315522168222)
,p_event_id=>wwv_flow_imp.id(43624844392168222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-add-row");'))
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
 p_id=>wwv_flow_imp.id(43625707835168222)
,p_name=>'Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43618002457168179)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43626277372168222)
,p_event_id=>wwv_flow_imp.id(43625707835168222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(region).widget().interactiveGrid("getActions").set("edit", true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43627586617168223)
,p_name=>'Delete '
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43618885065168179)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43628068433168223)
,p_event_id=>wwv_flow_imp.id(43627586617168223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you sure you want to delete selected record? If yes press save button to proceed'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43628581525168226)
,p_event_id=>wwv_flow_imp.id(43627586617168223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-delete");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43441597261816417)
,p_name=>'SetRadiationParentSiteRegionName'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(632293282984118382)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110021475513468503)
,p_event_id=>wwv_flow_imp.id(43441597261816417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P21_MASTER_PARENT_SITE_ID'', _.RadParentSite.PARENT_SITE_ID);',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43444632681816448)
,p_event_id=>wwv_flow_imp.id(43441597261816417)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43441715973816419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48599033718410004)
,p_event_id=>wwv_flow_imp.id(43441597261816417)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48005181629416144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43628935950168226)
,p_name=>'CloseMenu'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43629408631168226)
,p_event_id=>wwv_flow_imp.id(43628935950168226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43444415006816446)
,p_name=>'QueryTeletheraphySideEffects'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(632293282984118382)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43444562417816447)
,p_event_id=>wwv_flow_imp.id(43444415006816446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PARENT_SITE_ID,',
'         RADIOTHERAPY_TYPE,',
'         ACUTE,',
'         CHRONIC,',
'         OBJECT_CODE,',
'         ROWID',
'    INTO :P21_PARENT_SITE_ID,',
'         :P21_RADIOTHERAPY_TYPE,',
'         :P21_ACUTE,',
'         :P21_CHRONIC,',
'         :P21_OBJECT_CODE,',
'         :P21_ROWID',
'    FROM RADIATION.SIDE_EFFECTS',
'   WHERE RADIOTHERAPY_TYPE = ''T''',
'     AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P21_MASTER_PARENT_SITE_ID'
,p_attribute_03=>'P21_ACUTE,P21_CHRONIC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43444750231816449)
,p_event_id=>wwv_flow_imp.id(43444415006816446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43441715973816419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48599746662410011)
,p_event_id=>wwv_flow_imp.id(43444415006816446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48005181629416144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48598724103410001)
,p_name=>'QueryBrachytherapySideEffects'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(632293282984118382)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48598845632410002)
,p_event_id=>wwv_flow_imp.id(48598724103410001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PARENT_SITE_ID,',
'         RADIOTHERAPY_TYPE,',
'         ACUTE,',
'         CHRONIC,',
'         OBJECT_CODE,',
'         ROWID',
'    INTO :P21_PARENT_SITE_ID,',
'         :P21_RADIOTHERAPY_TYPE,',
'         :P21_ACUTE_1,',
'         :P21_CHRONIC_1,',
'         :P21_OBJECT_CODE,',
'         :P21_ROWID_1',
'    FROM RADIATION.SIDE_EFFECTS',
'   WHERE RADIOTHERAPY_TYPE = ''B''',
'     AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P21_MASTER_PARENT_SITE_ID'
,p_attribute_03=>'P21_ACUTE_1,P21_CHRONIC_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48598907130410003)
,p_event_id=>wwv_flow_imp.id(48598724103410001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48005181629416144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48599806422410012)
,p_event_id=>wwv_flow_imp.id(48598724103410001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43441715973816419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194279925876382434)
,p_name=>'SAVE'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43618499910168179)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194280090749382435)
,p_event_id=>wwv_flow_imp.id(194279925876382434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("RadParentSite").widget().interactiveGrid("getActions").invoke("selection-delete");',
'apex.region("rad_tele_side_effects").widget().interactiveGrid("getActions").invoke("selection-delete");',
'apex.region("rad_brachy_side_effects").widget().interactiveGrid("getActions").invoke("selection-delete");',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48004832718416141)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(43441715973816419)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Teletherapy - Save Form Data '
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_EFFECTS_TAB RADIATION.PKG_S18FRM00117.EFFECTS_TAB;',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'BEGIN',
'',
'  SELECT :P21_MASTER_PARENT_SITE_ID,',
'         NVL(:P21_RADIOTHERAPY_TYPE, ''T''),',
'         :P21_ACUTE,',
'         :P21_CHRONIC,',
'         NVL(:P21_OBJECT_CODE, ''S18APX'')',
'    BULK COLLECT',
'    INTO L_EFFECTS_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      BEGIN',
'        -----------',
'        -- Insert',
'        -----------',
'        RADIATION.PKG_S18FRM00117.INSERT_EFFECTS(P_BLOCK_DATA => L_EFFECTS_TAB,',
'                                                 P_ALERT_TEXT => L_ALERT_TEXT);',
'      ',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      BEGIN',
'        -----------',
'        -- Update',
'        -----------',
'        RADIATION.PKG_S18FRM00117.UPDATE_EFFECTS(P_BLOCK_DATA => L_EFFECTS_TAB,',
'                                                 P_ALERT_TEXT => L_ALERT_TEXT);',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      BEGIN',
'        -----------',
'        -- Delete',
'        -----------',
'        RADIATION.PKG_S18FRM00117.DELETE_EFFECTS(P_BLOCK_DATA => L_EFFECTS_TAB,',
'                                                 P_ALERT_TEXT => L_ALERT_TEXT);',
'      ',
'      END;',
'    ',
'  END CASE;',
'',
'  IF L_ALERT_TEXT IS NOT NULL THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  END IF;',
'',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P21_ACUTE IS NOT NULL OR :P21_CHRONIC IS NOT NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>48004832718416141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48599566229410009)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48005181629416144)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Brachytherapy - Save Form Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_EFFECTS_TAB RADIATION.PKG_S18FRM00117.EFFECTS_TAB;',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'BEGIN',
'',
'  SELECT :P21_MASTER_PARENT_SITE_ID,',
'         NVL(:P21_RADIOTHERAPY_TYPE_1, ''B''),',
'         :P21_ACUTE_1,',
'         :P21_CHRONIC_1,',
'         NVL(:P21_OBJECT_CODE_1, ''S18APX'')',
'    BULK COLLECT',
'    INTO L_EFFECTS_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      BEGIN',
'        -----------',
'        -- Insert',
'        -----------',
'        RADIATION.PKG_S18FRM00117.INSERT_EFFECTS(P_BLOCK_DATA => L_EFFECTS_TAB,',
'                                                 P_ALERT_TEXT => L_ALERT_TEXT);',
'      ',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      BEGIN',
'        -----------',
'        -- Update',
'        -----------',
'        RADIATION.PKG_S18FRM00117.UPDATE_EFFECTS(P_BLOCK_DATA => L_EFFECTS_TAB,',
'                                                 P_ALERT_TEXT => L_ALERT_TEXT);',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      BEGIN',
'        -----------',
'        -- Delete',
'        -----------',
'        RADIATION.PKG_S18FRM00117.DELETE_EFFECTS(P_BLOCK_DATA => L_EFFECTS_TAB,',
'                                                 P_ALERT_TEXT => L_ALERT_TEXT);',
'      ',
'      END;',
'    ',
'  END CASE;',
'',
'  IF L_ALERT_TEXT IS NOT NULL THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  END IF;',
'',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P21_ACUTE_1 IS NOT NULL OR :P21_CHRONIC_1 IS NOT NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'',
'END;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>48599566229410009
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48600146785410015)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(632293282984118382)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Parent Site - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT          NUMBER := 0;',
'  L_PARENT_SITE_ID RADIATION.PARENT_SITE.PARENT_SITE_ID%TYPE;',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      BEGIN',
'        SELECT :GV_LOCATION_ID ||',
'               LPAD(NVL(MAX(SUBSTR(PARENT_SITE_ID, 4, 10)), 0) + 1, 7, 0)',
'          INTO L_PARENT_SITE_ID',
'          FROM RADIATION.PARENT_SITE',
'         WHERE SUBSTR(PARENT_SITE_ID, 1, 3) = :GV_LOCATION_ID;',
'      ',
'      END;',
'    ',
'      BEGIN',
'        INSERT INTO RADIATION.PARENT_SITE',
'          (PARENT_SITE_ID,',
'           DESCRIPTION,',
'           ACTIVE,',
'           EXCLUDE_CHECK_SIM_BOOST,',
'           ABBREVIATION,',
'           NECK_POSITION,',
'           CONTOUR_REQUIRED,',
'           MIN_DOSE_LIMIT,',
'           MAX_DOSE_LIMIT)',
'        VALUES',
'          (L_PARENT_SITE_ID,',
'           :DESCRIPTION,',
'           :ACTIVE,',
'           :EXCLUDE_CHECK_SIM_BOOST,',
'           :ABBREVIATION,',
'           :NECK_POSITION,',
'           :CONTOUR_REQUIRED,',
'           :MIN_DOSE_LIMIT,',
'           :MAX_DOSE_LIMIT)',
'           RETURNING ROWID INTO :ROWID;',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        UPDATE RADIATION.PARENT_SITE',
'           SET DESCRIPTION      = :DESCRIPTION,',
'               ACTIVE           = :ACTIVE,',
'               EXCLUDE_CHECK_SIM_BOOST  = :EXCLUDE_CHECK_SIM_BOOST,',
'               ABBREVIATION     = :ABBREVIATION,',
'               NECK_POSITION    = :NECK_POSITION,',
'               CONTOUR_REQUIRED = :CONTOUR_REQUIRED,',
'               MIN_DOSE_LIMIT   = :MIN_DOSE_LIMIT,',
'               MAX_DOSE_LIMIT   = :MAX_DOSE_LIMIT',
'         WHERE ROWID = :ROWID;',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      DECLARE',
'    v_count_b NUMBER;',
'    v_count_t NUMBER;',
'BEGIN',
'    -- Check for related child records for RADIOTHERAPY_TYPE ''B''',
'    SELECT COUNT(*)',
'    INTO v_count_b',
'    FROM RADIATION.SIDE_EFFECTS',
'    WHERE RADIOTHERAPY_TYPE = ''B''',
'      AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'',
'    -- If related child records exist for RADIOTHERAPY_TYPE ''B'', delete them',
'    IF v_count_b > 0 THEN',
'        DELETE FROM RADIATION.SIDE_EFFECTS',
'        WHERE RADIOTHERAPY_TYPE = ''B''',
'          AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'    END IF;',
'',
'    -- Check for related child records for RADIOTHERAPY_TYPE ''T''',
'    SELECT COUNT(*)',
'    INTO v_count_t',
'    FROM RADIATION.SIDE_EFFECTS',
'    WHERE RADIOTHERAPY_TYPE = ''T''',
'      AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'',
'    -- If related child records exist for RADIOTHERAPY_TYPE ''T'', delete them',
'    IF v_count_t > 0 THEN',
'        DELETE FROM RADIATION.SIDE_EFFECTS',
'        WHERE RADIOTHERAPY_TYPE = ''T''',
'          AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'    END IF;',
'',
'    -- Now delete the parent record',
'    DELETE FROM RADIATION.PARENT_SITE',
'    WHERE PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'',
'  END;',
'',
'      BEGIN',
'        DELETE FROM RADIATION.PARENT_SITE WHERE ROWID = :ROWID;',
'      END;',
'  END CASE;',
'',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
'',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>48600146785410015
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43441803982816420)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Teletherapy Side effects '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PARENT_SITE_ID,',
'         RADIOTHERAPY_TYPE,',
'         ACUTE,',
'         CHRONIC,',
'         OBJECT_CODE,',
'         ROWID',
'    INTO :P21_PARENT_SITE_ID,',
'         :P21_RADIOTHERAPY_TYPE,',
'         :P21_ACUTE,',
'         :P21_CHRONIC,',
'         :P21_OBJECT_CODE,',
'         :P21_ROWID',
'    FROM RADIATION.SIDE_EFFECTS',
'   WHERE RADIOTHERAPY_TYPE = ''T''',
'     AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>43441803982816420
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48599653174410010)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Brachytherapy Side effects'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PARENT_SITE_ID,',
'         RADIOTHERAPY_TYPE,',
'         ACUTE,',
'         CHRONIC,',
'         OBJECT_CODE,',
'         ROWID',
'    INTO :P21_PARENT_SITE_ID,',
'         :P21_RADIOTHERAPY_TYPE_1,',
'         :P21_ACUTE_1,',
'         :P21_CHRONIC_1,',
'         :P21_OBJECT_CODE_1,',
'         :P21_ROWID_1',
'    FROM RADIATION.SIDE_EFFECTS',
'   WHERE RADIOTHERAPY_TYPE = ''B''',
'     AND PARENT_SITE_ID = :P21_MASTER_PARENT_SITE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>48599653174410010
);
wwv_flow_imp.component_end;
end;
/

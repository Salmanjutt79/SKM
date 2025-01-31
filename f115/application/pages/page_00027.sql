prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'DEF_RAD_QUEUE'
,p_alias=>'DEF-RAD-QUEUE'
,p_step_title=>'DEF_RAD_QUEUE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'21'
,p_last_updated_by=>'00160000007098'
,p_last_upd_yyyymmddhh24miss=>'20250108233716'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45563782512885522)
,p_plug_name=>'Queue Performance Type'
,p_region_name=>'rad_queue_performance_type'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QUEUE_ID,',
'       PERFORMANCE_TYPE_ID PERFORMANCE_TYPE_ID_DISP,',
'       PERFORMANCE_TYPE_ID,',
'       ACTIVE,',
'       ROWID',
'  FROM RADIATION.DEF_QUEUE_PERFORMANCE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(638378001457956547)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Queue Performance Type'
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
 p_id=>wwv_flow_imp.id(45563908297885524)
,p_name=>'QUEUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_ID'
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
,p_parent_column_id=>wwv_flow_imp.id(45563097129885515)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45564117884885526)
,p_name=>'QUEUE_PERFORMANCE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'QUEUE_PERFORMANCE_ACTIVE'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45564204423885527)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Performance Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(46711600212246623)
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45564339379885528)
,p_name=>'QPT_ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45564423897885529)
,p_name=>'PERFORMANCE_TYPE_ID_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID_DISP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(45563800082885523)
,p_internal_uid=>45563800082885523
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(46679839865197392)
,p_interactive_grid_id=>wwv_flow_imp.id(45563800082885523)
,p_static_id=>'466799'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(46680089065197392)
,p_report_id=>wwv_flow_imp.id(46679839865197392)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46680546768197394)
,p_view_id=>wwv_flow_imp.id(46680089065197392)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(45563908297885524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46681492100197396)
,p_view_id=>wwv_flow_imp.id(46680089065197392)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(45564117884885526)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77.469
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46682377256197398)
,p_view_id=>wwv_flow_imp.id(46680089065197392)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(45564204423885527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>359.76599999999996
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46683283769197401)
,p_view_id=>wwv_flow_imp.id(46680089065197392)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(45564339379885528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46684160291197406)
,p_view_id=>wwv_flow_imp.id(46680089065197392)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(45564423897885529)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.76599999999999
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45564818541885533)
,p_plug_name=>'Queue Events'
,p_region_name=>'rad_queue_events'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QUEUE_ID,',
'       PERFORMANCE_TYPE_ID,',
'       EVENT_ID            EVENT_ID_DISP,',
'       EVENT_ID,',
'       PERFORMABLE,',
'       ACTIVE              QUEUE_EVENTS_ACTIVE,',
'       SHORT_DESC,',
'       BG_COLOUR,',
'       ROWID',
'  FROM RADIATION.DEF_QUEUE_EVENTS',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(45563782512885522)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Queue Events'
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
 p_id=>wwv_flow_imp.id(45565187448885536)
,p_name=>'QUEUE_EVENTS_PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'QUEUE_EVENTS_PERFORMANCE_TYPE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(45564423897885529)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45565396793885538)
,p_name=>'QUEUE_EVENTS_QUEUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_static_id=>'QUEUE_EVENTS_QUEUE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(45563908297885524)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45565446226885539)
,p_name=>'QUEUE_EVENTS_ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_static_id=>'QUEUE_EVENTS_ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45565567978885540)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Event '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(46886517712485930)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'EVENT_ID'
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
 p_id=>wwv_flow_imp.id(45565656645885541)
,p_name=>'PERFORMABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Perform'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PERFORMABLE'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45565708381885542)
,p_name=>'SHORT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORT_DESC'
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
,p_max_length=>16
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'SHORT_DESC'
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
 p_id=>wwv_flow_imp.id(45565808182885543)
,p_name=>'BG_COLOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_COLOUR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_COLOR_PICKER'
,p_heading=>'Colour'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'BG_COLOUR'
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
 p_id=>wwv_flow_imp.id(45565990091885544)
,p_name=>'EVENT_ID_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID_DISP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Event Id '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EVENT_ID_DISP'
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
 p_id=>wwv_flow_imp.id(47096982466681918)
,p_name=>'QUEUE_EVENTS_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_EVENTS_ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'QUEUE_EVENTS_ACTIVE'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(45564983291885534)
,p_internal_uid=>45564983291885534
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(46848659946391679)
,p_interactive_grid_id=>wwv_flow_imp.id(45564983291885534)
,p_static_id=>'468487'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(46848890155391679)
,p_report_id=>wwv_flow_imp.id(46848659946391679)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46850278377391683)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(45565187448885536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46852029891391688)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(45565396793885538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46852992392391690)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(45565446226885539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46856601858410563)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(45565567978885540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143.469
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46857530300410567)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(45565656645885541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.1719
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46858455808410569)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(45565708381885542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159.047
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46859345023410571)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(45565808182885543)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46872530822441525)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(45565990091885544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.047
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47443426243409849)
,p_view_id=>wwv_flow_imp.id(46848890155391679)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47096982466681918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56.9688
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45566316869885548)
,p_plug_name=>'Alert(s)'
,p_region_name=>'rad_queue_alert'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_column=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QUEUE_ID,',
'       PERFORMANCE_TYPE_ID,',
'       EVENT_ID,',
'       ALERT_ID,',
'       (SELECT A.DESCRIPTION',
'          FROM RADIATION.DEF_ALERTS A',
'         WHERE A.ALERT_ID = DA.ALERT_ID) ALERT_DESC,',
'       ACTIVE,',
'       ROWID',
'  FROM RADIATION.DEF_QUEUE_EVENT_ALERTS DA',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(45564818541885533)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Alert(s)'
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
 p_id=>wwv_flow_imp.id(47095215622681901)
,p_name=>'ALERT_EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'ALERT_EVENT_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(45565990091885544)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47095641125681905)
,p_name=>'ALERT_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ALERT_ACTIVE'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47095700254681906)
,p_name=>'ALERT_QUEUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_static_id=>'ALERT_QUEUE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(45565396793885538)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47095894950681907)
,p_name=>'ALERT_ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_static_id=>'ALERT_ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47095913910681908)
,p_name=>'ALERT_PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_static_id=>'ALERT_PERFORMANCE_TYPE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(45565187448885536)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47096098569681909)
,p_name=>'ALERT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Alert Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'DESCRIPTION:ALERT_DESC'
,p_is_required=>false
,p_max_length=>3
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(47642776148630359)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ALERT_ID'
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
 p_id=>wwv_flow_imp.id(47096169209681910)
,p_name=>'ALERT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Alert Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'apex_disabled'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ALERT_DESC'
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
 p_id=>wwv_flow_imp.id(45566491455885549)
,p_internal_uid=>45566491455885549
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(47117221447701198)
,p_interactive_grid_id=>wwv_flow_imp.id(45566491455885549)
,p_static_id=>'471173'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47117446199701198)
,p_report_id=>wwv_flow_imp.id(47117221447701198)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47118856170701202)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47095215622681901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47122403769701210)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47095641125681905)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61.23400000000001
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
 p_id=>wwv_flow_imp.id(47123372429701212)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47095700254681906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47124259518701214)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47095894950681907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47125177474701216)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47095913910681908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47139414667724084)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47096098569681909)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93.51600000000002
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47140342960724087)
,p_view_id=>wwv_flow_imp.id(47117446199701198)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47096169209681910)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157.25
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222562354649798912)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(638378001457956547)
,p_plug_name=>'Queue Definition'
,p_region_name=>'rad_queue_def_setup'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT QUEUE_ID, DESCRIPTION, PERFORMANCE_TYPE_ID, ACTIVE, ROWID',
'  FROM RADIATION.DEF_QUEUE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Queue Definition'
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
 p_id=>wwv_flow_imp.id(45563097129885515)
,p_name=>'QUEUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Queue ID'
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
,p_static_id=>'QUEUE_ID'
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
 p_id=>wwv_flow_imp.id(45563106187885516)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45563213315885517)
,p_name=>'QUEUE_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
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
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45563375307885518)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(638380285198956544)
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
,p_is_required=>false
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
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(638378505114956547)
,p_internal_uid=>638378505114956547
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(638378888093956545)
,p_interactive_grid_id=>wwv_flow_imp.id(638378505114956547)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(638379078617956545)
,p_report_id=>wwv_flow_imp.id(638378888093956545)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46546477032784747)
,p_view_id=>wwv_flow_imp.id(638379078617956545)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(45563097129885515)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.43799999999999
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46547331492784753)
,p_view_id=>wwv_flow_imp.id(638379078617956545)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(45563106187885516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46548252978784757)
,p_view_id=>wwv_flow_imp.id(638379078617956545)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(45563213315885517)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46549138346784759)
,p_view_id=>wwv_flow_imp.id(638379078617956545)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(45563375307885518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(638380687211956544)
,p_view_id=>wwv_flow_imp.id(638379078617956545)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(638380285198956544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>290
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46498739480687596)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(222562354649798912)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(46514760826687615)
,p_branch_name=>'GoToHomePage'
,p_branch_action=>'f?p=100:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(46498739480687596)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46499107146687598)
,p_name=>'P27_CURSOR_REGION'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46499524056687599)
,p_name=>'P27_PAGE_STATE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46513794014687614)
,p_name=>'CloseMenu'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46514273988687615)
,p_event_id=>wwv_flow_imp.id(46513794014687614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66894698363598745)
,p_name=>'RefreshChildRegion'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(638378001457956547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66894740672598746)
,p_event_id=>wwv_flow_imp.id(66894698363598745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45564818541885533)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66894863101598747)
,p_event_id=>wwv_flow_imp.id(66894698363598745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45566316869885548)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71772096441111006)
,p_event_id=>wwv_flow_imp.id(66894698363598745)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.event.trigger( "rad_queue_def_setup", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71771992189111005)
,p_event_id=>wwv_flow_imp.id(66894698363598745)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.event.trigger( "rad_queue_performance_type", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71772129138111007)
,p_name=>'RefreshChildRegion1'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(45563782512885522)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71772211008111008)
,p_event_id=>wwv_flow_imp.id(71772129138111007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.event.trigger( "rad_queue_performance_type", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71772336294111009)
,p_event_id=>wwv_flow_imp.id(71772129138111007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.event.trigger( "rad_queue_events", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71772477998111010)
,p_name=>'RefreshChildRegion2'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(45564818541885533)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71772548724111011)
,p_event_id=>wwv_flow_imp.id(71772477998111010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.event.trigger( "rad_queue_events", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71772678935111012)
,p_event_id=>wwv_flow_imp.id(71772477998111010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.event.trigger( "rad_queue_alert", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71772771168111013)
,p_name=>'RefreshChildRegion3'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(45566316869885548)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71772830379111014)
,p_event_id=>wwv_flow_imp.id(71772771168111013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.event.trigger( "rad_queue_alert", "apexrefresh" );'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45563658902885521)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(638378001457956547)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Queue Definition - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_QUEUE_ID RADIATION.DEF_QUEUE.QUEUE_ID%TYPE;',
'BEGIN',
'',
'  IF :DESCRIPTION IS NOT NULL THEN',
'    CASE :APEX$ROW_STATUS',
'    -----------',
'    -- Insert',
'    -----------',
'      WHEN ''C'' THEN',
'        BEGIN',
'          SELECT LPAD(NVL(MAX(DQ.QUEUE_ID), 0) + 1, 3, 0)',
'            INTO L_QUEUE_ID',
'            FROM RADIATION.DEF_QUEUE DQ;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            NULL;',
'        END;',
'      ',
'        BEGIN',
'          INSERT INTO RADIATION.DEF_QUEUE',
'            (QUEUE_ID, DESCRIPTION, ACTIVE)',
'          VALUES',
'            (L_QUEUE_ID, :DESCRIPTION, :QUEUE_ACTIVE)',
'          RETURNING ROWID INTO :ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Update',
'    -----------',
'      WHEN ''U'' THEN',
'        BEGIN',
'          UPDATE RADIATION.DEF_QUEUE',
'             SET DESCRIPTION = :DESCRIPTION, ACTIVE = :QUEUE_ACTIVE',
'           WHERE ROWID = :ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Delete',
'    -----------',
'      WHEN ''D'' THEN',
'        BEGIN',
'          DELETE FROM RADIATION.DEF_QUEUE WHERE ROWID = :ROWID;',
'        END;',
'      ',
'    END CASE;',
'  ',
'  ELSE',
'  ',
'    RETURN;',
'    /*APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''There is no record to save, please refresh page'',',
'    P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);*/',
'  ',
'  END IF;',
'',
'  :P26_PAGE_STATE := ''KEEP_CURSOR'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45563658902885521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45564784225885532)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(45563782512885522)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Queue Performance Type - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  IF :PERFORMANCE_TYPE_ID IS NOT NULL THEN',
'    CASE :APEX$ROW_STATUS',
'    -----------',
'    -- Insert',
'    -----------',
'      WHEN ''C'' THEN',
'      ',
'        BEGIN',
'          INSERT INTO RADIATION.DEF_QUEUE_PERFORMANCE',
'            (QUEUE_ID, PERFORMANCE_TYPE_ID, ACTIVE)',
'          VALUES',
'            (:QUEUE_ID, :PERFORMANCE_TYPE_ID, :QUEUE_PERFORMANCE_ACTIVE)',
'          RETURNING ROWID INTO :QPT_ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Update',
'    -----------',
'      WHEN ''U'' THEN',
'        BEGIN',
'          UPDATE RADIATION.DEF_QUEUE_PERFORMANCE',
'             SET PERFORMANCE_TYPE_ID = :PERFORMANCE_TYPE_ID,',
'                 ACTIVE              = :QUEUE_PERFORMANCE_ACTIVE',
'           WHERE ROWID = :QPT_ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Delete',
'    -----------',
'      WHEN ''D'' THEN',
'        BEGIN',
'          DELETE FROM RADIATION.DEF_QUEUE_PERFORMANCE WHERE ROWID = :QPT_ROWID;',
'        END;',
'      ',
'    END CASE;',
'  ',
'  ELSE',
'  ',
'    RETURN;',
'    /*APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''There is no record to save, please refresh page'',',
'    P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);*/',
'  ',
'  END IF;',
'',
'  :P27_PAGE_STATE := ''KEEP_CURSOR'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45564784225885532
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47097200979681921)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(45564818541885533)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Queue Events - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  IF :EVENT_ID IS NOT NULL THEN',
'    CASE :APEX$ROW_STATUS',
'    -----------',
'    -- Insert',
'    -----------',
'      WHEN ''C'' THEN',
'      ',
'        BEGIN',
'          INSERT INTO RADIATION.DEF_QUEUE_EVENTS',
'            (QUEUE_ID,',
'             PERFORMANCE_TYPE_ID,',
'             EVENT_ID,',
'             PERFORMABLE,',
'             ACTIVE,',
'             SHORT_DESC,',
'             BG_COLOUR)',
'          VALUES',
'            (:QUEUE_EVENTS_QUEUE_ID,',
'             :QUEUE_EVENTS_PERFORMANCE_TYPE_ID,',
'             :EVENT_ID,',
'             :PERFORMABLE,',
'             :QUEUE_EVENTS_ACTIVE,',
'             :SHORT_DESC,',
'             :BG_COLOUR)',
'          RETURNING ROWID INTO :QUEUE_EVENTS_ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Update',
'    -----------',
'      WHEN ''U'' THEN',
'        BEGIN',
'          UPDATE RADIATION.DEF_QUEUE_EVENTS',
'             SET EVENT_ID    = :EVENT_ID,',
'                 PERFORMABLE = :PERFORMABLE,',
'                 ACTIVE      = :QUEUE_EVENTS_ACTIVE,',
'                 SHORT_DESC  = :SHORT_DESC,',
'                 BG_COLOUR   = :BG_COLOUR',
'           WHERE ROWID = :QUEUE_EVENTS_ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Delete',
'    -----------',
'      WHEN ''D'' THEN',
'        BEGIN',
'          DELETE FROM RADIATION.DEF_QUEUE_EVENTS',
'           WHERE ROWID = :QUEUE_EVENTS_ROWID;',
'        END;',
'      ',
'    END CASE;',
'  ',
'  ELSE',
'  ',
'    RETURN;',
'    /*APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''There is no record to save, please refresh page'',',
'    P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);*/',
'  ',
'  END IF;',
'',
'  :P27_PAGE_STATE := ''KEEP_CURSOR'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>47097200979681921
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47097647342681925)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(45566316869885548)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Alert - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- INSERT',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      BEGIN',
'        INSERT INTO RADIATION.DEF_QUEUE_EVENT_ALERTS',
'          (QUEUE_ID, PERFORMANCE_TYPE_ID, EVENT_ID, ALERT_ID, ACTIVE)',
'        VALUES',
'          (:ALERT_QUEUE_ID,',
'           :ALERT_PERFORMANCE_TYPE_ID,',
'           :ALERT_EVENT_ID,',
'           :ALERT_ID,',
'           :ALERT_ACTIVE)',
'        RETURNING ROWID INTO :ALERT_ROWID;',
'      END;',
'    ',
'  -----------',
'  -- UPDATE',
'  -----------',
'    WHEN ''U'' THEN',
'      BEGIN',
'        UPDATE RADIATION.DEF_QUEUE_EVENT_ALERTS',
'           SET ALERT_ID = :ALERT_ID, ACTIVE = :ALERT_ACTIVE',
'         WHERE ROWID = :ALERT_ROWID;',
'      END;',
'    ',
'  -----------',
'  -- DELETE',
'  -----------',
'    WHEN ''D'' THEN',
'      BEGIN',
'        DELETE FROM RADIATION.DEF_QUEUE_EVENT_ALERTS',
'         WHERE ROWID = :ALERT_ROWID;',
'      END;',
'    ',
'  END CASE;',
'',
'  :P27_PAGE_STATE := ''KEEP_CURSOR'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>47097647342681925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46501126531687602)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetPageState'
,p_process_sql_clob=>':P27_PAGE_STATE := ''EXIT'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(46498739480687596)
,p_internal_uid=>46501126531687602
);
wwv_flow_imp.component_end;
end;
/

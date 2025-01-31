prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Publisher'
,p_alias=>'PUBLISHER'
,p_step_title=>'Publisher'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// apex.region( "st_Journal_Type" ).widget().interactiveGrid( "getActions" ).set("edit", true);',
'// apex.region( "st_Journal" ).widget().interactiveGrid( "getActions" ).set("edit", true);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Button[data-action="selection-delete"]{',
'    background-color: #F32013;',
'    color: #ffffff;',
'    font-weight: inherit;',
'}',
'',
'.VAT_AMBER{',
'    background-color: rgb(100, 75, 0) !important;',
'    color:#000 !important;',
'}',
'',
'.a-Toolbar-radioGroup, .a-Toolbar-toggleButton {',
'display: none !important;   // To hide Edit button',
'}',
'.a-Toolbar-group {',
'    border-right-width: var(--a-toolbar-sep-border-width,0px);    // To hide separator of the button',
'}',
'',
'/* #st_Donation .a-Button.a-Toolbar-item.js-actionButton.a-Button--hot[data-action="save"] {',
'    display: none !important;   // To hide Save button of the mentioned Interactive Grid with its static id/name',
'} */',
'',
'/* #st_RequestForwardedTo .a-MediaBlock, #st_RequestForwardedTo .a-RegionMedia {',
'    display: none;  // To hide row(s) highlight control of the mentioned Interactive Grid with its static id/name',
'} */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'AAHMED'
,p_last_upd_yyyymmddhh24miss=>'20250107180932'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1511665072004506769)
,p_plug_name=>'Publisher Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Library Section</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1511665111171506770)
,p_plug_name=>'Publisher IG'
,p_region_name=>'st_Journal_Type'
,p_parent_plug_id=>wwv_flow_imp.id(1511665072004506769)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PUBLISHER_COMPANY_ID,',
'       DESCRIPTION PUBLISHER_DESC,',
'       SHORT_DESC AS PUBLISHER_SHORT_DESC,',
'       PHONE_NO,',
'       EMAIL,',
'       WEBSITE,',
'       ACTIVE,',
'       ORGANIZATION_ID,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.PUBLISHER T',
'  where t.PUBLISHER_COMPANY_ID is not null'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Request Forwarded To'
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
 p_id=>wwv_flow_imp.id(285893116392904610)
,p_name=>'PUBLISHER_COMPANY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUBLISHER_COMPANY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(285893215162904611)
,p_name=>'PUBLISHER_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUBLISHER_DESC'
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
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(285893308665904612)
,p_name=>'PUBLISHER_SHORT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUBLISHER_SHORT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Short Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>45
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
 p_id=>wwv_flow_imp.id(285893479139904613)
,p_name=>'PHONE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Phone No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(285893527412904614)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(285893672573904615)
,p_name=>'WEBSITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEBSITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Website'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(285896630760904645)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(285896720916904646)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(572652660184832238)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(572652792957832239)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(572652920077832240)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(572652925972832241)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1511665228003506771)
,p_internal_uid=>1511665228003506771
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>530
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'let $ = apex.jQuery,',
'',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'',
'// add a new "delete" button',
'',
'toolbarGroup.controls.push({type: "BUTTON",',
'',
'action: "selection-delete",',
'',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'',
'iconBeforeLabel: true,',
'',
'hot: false',
'',
'});',
'',
'// manipulate the buttons',
'',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'',
'addrowAction.iconBeforeLabel = true;',
'',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'',
'//saveAction.icon ="fa fa-save"; // list of alternative font awesome icons: fa-save,fa-check',
'',
'saveAction.hot = true;',
'',
'//store the config',
'',
'config.toolbarData = toolbarData;',
'',
'return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1516349153257738130)
,p_interactive_grid_id=>wwv_flow_imp.id(1511665228003506771)
,p_static_id=>'4022127'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1516349325261738130)
,p_report_id=>wwv_flow_imp.id(1516349153257738130)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(110469000009)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(285896720916904646)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286804909785991684)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(285893116392904610)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71.7969
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286805810916991686)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(285893215162904611)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>317.797
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286806796683991695)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(285893308665904612)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>296.797
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286807618694991697)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(285893479139904613)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286808559613991700)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(285893527412904614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286809436967991702)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(285893672573904615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(287220025702877692)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(285896630760904645)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(572661301653840188)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(572652660184832238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(572662180953840191)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(572652792957832239)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(572663107955840194)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(572652920077832240)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(572663974108840196)
,p_view_id=>wwv_flow_imp.id(1516349325261738130)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(572652925972832241)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1516343619175740330)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(1511665072004506769)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286768038897927802)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1516343619175740330)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286768467219927802)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1516343619175740330)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286767630862927796)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1516343619175740330)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1071336291309524890)
,p_name=>'P12_ORGANIZATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1511665072004506769)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1071336326690524891)
,p_name=>'P12_LOCATION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1511665072004506769)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1071336407534524892)
,p_name=>'P12_ORDER_LOCATION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1511665072004506769)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1071364132788525140)
,p_name=>'P12_BOOKS_LOCATIONS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1511665111171506770)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1127374926797608615)
,p_name=>'P12_BOOKS_LOCATION_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1511665111171506770)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286770233341927858)
,p_name=>'DA_SAVE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(286768038897927802)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286770707547927858)
,p_event_id=>wwv_flow_imp.id(286770233341927858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286771177795927858)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286772130079927864)
,p_event_id=>wwv_flow_imp.id(286771177795927858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');',
'HIS.SET_CONTEXT(''LOCATION_ID'', ''001'');',
'HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', ''124'');',
':P12_ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
':P12_LOCATION_ID := :GV_LOCATION_ID;',
':P12_ORDER_LOCATION_ID := :GV_ORDER_LOCATION_ID;'))
,p_attribute_02=>'P12_ORGANIZATION_ID,P12_LOCATION_ID,P12_ORDER_LOCATION_ID'
,p_attribute_03=>'P12_ORGANIZATION_ID,P12_LOCATION_ID,P12_ORDER_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286771619559927859)
,p_event_id=>wwv_flow_imp.id(286771177795927858)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1511665111171506770)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286772631890927865)
,p_event_id=>wwv_flow_imp.id(286771177795927858)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_DEPARTMENT_ID,P12_FORWARDED_TO,P12_EMP_CODE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286773983343927866)
,p_name=>'DA_Refresh-ButtonClick'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(286768467219927802)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286774461401927866)
,p_event_id=>wwv_flow_imp.id(286773983343927866)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1511665111171506770)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286774889556927867)
,p_name=>'DA_P12_BOOKS_LOCATIONS - Change'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_BOOKS_LOCATION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286775310576927867)
,p_event_id=>wwv_flow_imp.id(286774889556927867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1511665111171506770)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286769345374927855)
,p_name=>'DA_P12_BOOKS_LOCATIONS_DESC - Change'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_BOOKS_LOCATIONS_DESC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286769897691927858)
,p_event_id=>wwv_flow_imp.id(286769345374927855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');    ',
'END;',
':P12_BOOKS_LOCATION_ID := :P12_BOOKS_LOCATIONS_DESC;'))
,p_attribute_02=>'P12_BOOKS_LOCATIONS_DESC'
,p_attribute_03=>'P12_BOOKS_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(285896847088904647)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1511665111171506770)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Publisher IG - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --vData      ICU.SCORE_PARAMETERS%ROWTYPE;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'  vCounter   VARCHAR2(5);',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'       BEGIN',
'           SELECT LPAD(NVL(MAX(T.PUBLISHER_COMPANY_ID),0)+1, 3,0)',
'             INTO vCounter',
'             FROM SKM_LIBRARY.PUBLISHER T',
'            WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'       EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            vCounter := ''001'';',
'        WHEN OTHERS THEN',
'            vStop := ''Y'';',
'            vAlertText := ''Unable to get next counter for Id...'';',
'       END;',
'       IF vCounter IS NULL OR vCounter = '''' THEN',
'            vCounter := ''001'';',
'       END IF;',
'       BEGIN',
'           INSERT INTO SKM_LIBRARY.PUBLISHER (PUBLISHER_COMPANY_ID,',
'                                              DESCRIPTION,',
'                                              SHORT_DESC,',
'                                              PHONE_NO,',
'                                              EMAIL,',
'                                              WEBSITE,',
'                                              ACTIVE,',
'                                              ORGANIZATION_ID,',
'                                              LOCATION_ID,',
'                                              ORDER_LOCATION_ID)',
'                                      VALUES (vCounter,',
'                                              :PUBLISHER_DESC,',
'                                              :PUBLISHER_SHORT_DESC,',
'                                              :PHONE_NO,',
'                                              :EMAIL,',
'                                              :WEBSITE,',
'                                              :ACTIVE,',
'                                              :GV_ORGANIZATION_ID,',
'                                              :GV_LOCATION_ID,',
'                                              :GV_ORDER_LOCATION_ID);',
'          -- EXCEPTION',
'        --     WHEN OTHERS THEN',
'        --         vStop := ''Y'';',
'        --         vAlertText := ''Unable to insert record...'';',
'        END;',
'    WHEN ''U'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.PUBLISHER T',
'             WHERE T.PUBLISHER_COMPANY_ID = :PUBLISHER_COMPANY_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to update against Id (''||:PUBLISHER_COMPANY_ID||'')...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record against Id (''||:PUBLISHER_COMPANY_ID||'')...'';',
'        END;',
'        BEGIN',
'            UPDATE SKM_LIBRARY.PUBLISHER T',
'               SET T.DESCRIPTION = :PUBLISHER_DESC,',
'                   T.SHORT_DESC = :PUBLISHER_SHORT_DESC,',
'                   T.PHONE_NO = :PHONE_NO,',
'                   T.EMAIL = :EMAIL,',
'                   T.WEBSITE = :WEBSITE,',
'                   T.ACTIVE = :ACTIVE',
'             WHERE T.ROWID = vRowId;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record against Id (''||:PUBLISHER_COMPANY_ID||'')...'';',
'        END;',
'    WHEN ''D'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.PUBLISHER T',
'             WHERE T.PUBLISHER_COMPANY_ID = :PUBLISHER_COMPANY_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be deleted against Id (''||:PUBLISHER_COMPANY_ID||'')...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record against Id (''||:PUBLISHER_COMPANY_ID||'')...'';',
'        END;',
'        BEGIN',
'            DELETE FROM SKM_LIBRARY.PUBLISHER T',
'             WHERE T.ROWID = vRowId;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record against Id (''||:PUBLISHER_COMPANY_ID||'')...'';',
'        END;',
'	END CASE;',
' ',
'    IF (vStop = ''Y'') THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => vAlertText,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    ELSE',
'        COMMIT;',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>285896847088904647
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(286769062414927849)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Global Variable Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  HIS.SET_CONTEXT(''ORGANIZATION_ID'', :GV_ORGANIZATION_ID);',
'  HIS.SET_CONTEXT(''LOCATION_ID'', :GV_LOCATION_ID);',
'  HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', :GV_ORDER_LOCATION_ID);  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>286769062414927849
);
null;
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Author'
,p_alias=>'AUTHOR'
,p_step_title=>'Author'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'apex.region( "st_Authors_List" ).widget().interactiveGrid( "getActions" ).set("edit", true);'
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
,p_last_upd_yyyymmddhh24miss=>'20250109091614'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(920214736132222866)
,p_plug_name=>'AUTHOR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Books Authors</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(920214775299222867)
,p_plug_name=>'Authors List'
,p_region_name=>'st_Authors_List'
,p_parent_plug_id=>wwv_flow_imp.id(920214736132222866)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AUTHOR_ID, ',
'    FIRST_NAME, ',
'    MIDDLE_NAME, ',
'    LAST_NAME, ',
'    ACTIVE,     ',
'    ADDRESS, ',
'    PHONE_NO, ',
'    EMAIL, ',
'    WEBSITE, ',
'    MRNO, ',
'    ORGANIZATION_ID, ',
'    LOCATION_ID, ',
'    ORDER_LOCATION_ID ',
'FROM SKM_LIBRARY.AUTHOR'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P6_ORGANIZATION_ID,P6_LOCATION_ID,P6_ORDER_LOCATION_ID'
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
 p_id=>wwv_flow_imp.id(266051197141445220)
,p_name=>'AUTHOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Author Id'
,p_heading_alignment=>'LEFT'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(266051238660445221)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
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
 p_id=>wwv_flow_imp.id(266051326609445222)
,p_name=>'MIDDLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIDDLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Middle Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(266051413372445223)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(266051532886445224)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(266051681377445225)
,p_name=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRESS'
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
 p_id=>wwv_flow_imp.id(266051795369445226)
,p_name=>'PHONE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHONE_NO'
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
 p_id=>wwv_flow_imp.id(266051887247445227)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
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
 p_id=>wwv_flow_imp.id(266051913538445228)
,p_name=>'WEBSITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEBSITE'
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
 p_id=>wwv_flow_imp.id(266052055156445229)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(266052128772445230)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(266052228231445231)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(266052355951445232)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
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
 p_id=>wwv_flow_imp.id(924893032516456424)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(924893088564456425)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(920214892131222868)
,p_internal_uid=>920214892131222868
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
,p_toolbar_buttons=>'SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
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
 p_id=>wwv_flow_imp.id(924898817385454227)
,p_interactive_grid_id=>wwv_flow_imp.id(920214892131222868)
,p_static_id=>'4022127'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(924898989389454227)
,p_report_id=>wwv_flow_imp.id(924898817385454227)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1132262012369)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(266051197141445220)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2084045012375)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(266051238660445221)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>242.625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3092677012380)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(266051326609445222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>247.625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4131514012383)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(266051413372445223)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>247.625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5119320012385)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(266051532886445224)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6160653012390)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(266051681377445225)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7136542012393)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(266051795369445226)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8143947012395)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(266051887247445227)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9091963012398)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(266051913538445228)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10050131012400)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(266052055156445229)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11027610012402)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(266052128772445230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11982570012405)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(266052228231445231)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13061072012411)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(266052355951445232)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(522687745230469158)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(924893032516456424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(522785743287663073)
,p_view_id=>wwv_flow_imp.id(924898989389454227)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(924893088564456425)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(924893283303456427)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(920214736132222866)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(265662035990556920)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(924893283303456427)
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
 p_id=>wwv_flow_imp.id(265662470644556924)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(924893283303456427)
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
 p_id=>wwv_flow_imp.id(265662847742556924)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(924893283303456427)
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
 p_id=>wwv_flow_imp.id(479884563951241220)
,p_name=>'P6_ORGANIZATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(920214736132222866)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(479884599332241221)
,p_name=>'P6_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(920214736132222866)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(479884680176241222)
,p_name=>'P6_ORDER_LOCATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(920214736132222866)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(265664680138557207)
,p_name=>'DA_SAVE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(265662035990556920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265665190182557216)
,p_event_id=>wwv_flow_imp.id(265664680138557207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(265665590333557218)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265666592926557218)
,p_event_id=>wwv_flow_imp.id(265665590333557218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');',
'--HIS.SET_CONTEXT(''LOCATION_ID'', ''001'');',
'--HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', ''124'');',
':P6_ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
':P6_LOCATION_ID := :GV_LOCATION_ID;',
':P6_ORDER_LOCATION_ID := :GV_ORDER_LOCATION_ID;'))
,p_attribute_02=>'P6_ORGANIZATION_ID,P6_LOCATION_ID,P6_ORDER_LOCATION_ID'
,p_attribute_03=>'P6_ORGANIZATION_ID,P6_LOCATION_ID,P6_ORDER_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265666051337557218)
,p_event_id=>wwv_flow_imp.id(265665590333557218)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(920214775299222867)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265667033595557218)
,p_event_id=>wwv_flow_imp.id(265665590333557218)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_DEPARTMENT_ID,P6_FORWARDED_TO,P6_EMP_CODE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(265667466257557219)
,p_name=>'DA_SelectionChange'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(920214775299222867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265667953429557220)
,p_event_id=>wwv_flow_imp.id(265667466257557219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selRecDEPARTMENT_ID,model=this.data.model;',
'var i;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'selRecDEPARTMENT_ID=model.getValue(this.data.selectedRecords[i],"DEPARTMENT_ID");',
'}',
'apex.item("P6_DEPARTMENT_ID").setValue (selRecDEPARTMENT_ID);',
'if ($v("FORWARDED_TO") === null || $v("FORWARDED_TO") === '''' || $v("FORWARDED_TO") === ''HOD'' || $v("FORWARDED_TO") === ''MGR''){',
'    apex.item(''EMP_NAME'').disable();',
'    apex.item(''EMP_CODE'').disable();',
'} else if ($v("FORWARDED_TO") === ''O''){',
'    apex.item(''EMP_CODE'').enable();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(265668357239557221)
,p_name=>'DA_Refresh-ButtonClick'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(265662470644556924)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265668871168557221)
,p_event_id=>wwv_flow_imp.id(265668357239557221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var filters = apex.region(''st_RequestForwardedTo'').call("getFilters"); ',
'for (var i in filters) { ',
'    var filderId = filters[i].id; ',
'    apex.region(''st_RequestForwardedTo'').call("deleteFilter", filderId); ',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265669318986557221)
,p_event_id=>wwv_flow_imp.id(265668357239557221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(920214775299222867)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(265669793175557221)
,p_name=>'DA_P6_BOOKS_LOCATIONS - Change'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_BOOKS_LOCATIONS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(265670208871557221)
,p_event_id=>wwv_flow_imp.id(265669793175557221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(920214775299222867)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(265661394396556908)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(920214775299222867)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Authors List - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --vData      SKM_LIBRARY.AUTHOR%ROWTYPE;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        BEGIN',
'            SELECT LPAD(MAX(TO_NUMBER(AI.AUTHOR_ID)) + 1, 5, ''0'')',
'              INTO :AUTHOR_ID',
'              FROM SKM_LIBRARY.AUTHOR AI;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                NULL;',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        INSERT INTO SKM_LIBRARY.AUTHOR (AUTHOR_ID,    ',
'                                        FIRST_NAME,',
'                                        MIDDLE_NAME,',
'                                        LAST_NAME,',
'                                        ACTIVE,',
'                                        ORGANIZATION_ID,',
'                                        LOCATION_ID,',
'                                        ORDER_LOCATION_ID)',
'                                VALUES (:AUTHOR_ID,    ',
'                                        :FIRST_NAME,',
'                                        :MIDDLE_NAME,',
'                                        :LAST_NAME,',
'                                        :ACTIVE,',
'                                        :P6_ORGANIZATION_ID,',
'                                        :P6_LOCATION_ID,',
'                                        :P6_ORDER_LOCATION_ID);',
'',
'',
'',
'    WHEN ''U'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.AUTHOR T',
'             WHERE T.AUTHOR_ID = :AUTHOR_ID',
'              FOR UPDATE NOWAIT;',
'        END;',
'        UPDATE SKM_LIBRARY.AUTHOR T',
'           SET T.FIRST_NAME  = :FIRST_NAME,',
'               T.MIDDLE_NAME = :MIDDLE_NAME,',
'               T.LAST_NAME   = :LAST_NAME,',
'               T.ACTIVE      = :ACTIVE',
'         WHERE T.ROWID = vRowId;',
'    WHEN ''D'' THEN',
'        DELETE FROM SKM_LIBRARY.AUTHOR T',
'         WHERE T.AUTHOR_ID = :AUTHOR_ID;',
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
,p_process_success_message=>'Record saved!'
,p_internal_uid=>265661394396556908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(264419338125838321)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Global Variable Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P6_ORGANIZATION_ID     := :GV_ORGANIZATION_ID;',
'    :P6_LOCATION_ID         := :GV_LOCATION_ID;',
'    :P6_ORDER_LOCATION_ID   := :GV_ORDER_LOCATION_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>264419338125838321
);
wwv_flow_imp.component_end;
end;
/

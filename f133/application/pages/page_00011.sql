prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Library Section'
,p_alias=>'LIBRARY-SECTION'
,p_step_title=>'Library Section'
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
,p_last_upd_yyyymmddhh24miss=>'20250109090733'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1224904947487579135)
,p_plug_name=>'Library Section Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Library Section</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1224904986654579136)
,p_plug_name=>'Library Section'
,p_region_name=>'st_Journal_Type'
,p_parent_plug_id=>wwv_flow_imp.id(1224904947487579135)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SECTION_ID,',
'       DESCRIPTION AS SECTION_DESC,',
'       SHORT_DESC AS SECTION_SHORT_DESC,',
'       ACTIVE,',
'       ORGANIZATION_ID,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.SKM_LIBRARY_SECTION T'))
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
 p_id=>wwv_flow_imp.id(285892243530904601)
,p_name=>'SECTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Section Id'
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
 p_id=>wwv_flow_imp.id(285892535667904604)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(285892668440904605)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(285892795560904606)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(285892801455904607)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(285892916338904608)
,p_name=>'SECTION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECTION_DESC'
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
 p_id=>wwv_flow_imp.id(285893038954904609)
,p_name=>'SECTION_SHORT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECTION_SHORT_DESC'
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
 p_id=>wwv_flow_imp.id(1229583243871812693)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1229583299919812694)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1224905103486579137)
,p_internal_uid=>1224905103486579137
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
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>550
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
 p_id=>wwv_flow_imp.id(1229589028740810496)
,p_interactive_grid_id=>wwv_flow_imp.id(1224905103486579137)
,p_static_id=>'4022127'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1229589200744810496)
,p_report_id=>wwv_flow_imp.id(1229589028740810496)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285898465142912546)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(285892243530904601)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285901177136912554)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(285892535667904604)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285902056436912557)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(285892668440904605)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285902983438912560)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(285892795560904606)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285903849591912562)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(285892801455904607)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286102135536722012)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(285892916338904608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(286103049137722015)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(285893038954904609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(827377956585825427)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1229583243871812693)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(827475954643019342)
,p_view_id=>wwv_flow_imp.id(1229589200744810496)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1229583299919812694)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1229583494658812696)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(1224904947487579135)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285884653545892765)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1229583494658812696)
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
 p_id=>wwv_flow_imp.id(285883868887892762)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1229583494658812696)
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
 p_id=>wwv_flow_imp.id(285884224798892763)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1229583494658812696)
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
 p_id=>wwv_flow_imp.id(784575524460597199)
,p_name=>'P11_ORGANIZATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1224904947487579135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784575559841597200)
,p_name=>'P11_LOCATION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1224904947487579135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784575640685597201)
,p_name=>'P11_ORDER_LOCATION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1224904947487579135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(784597783347597348)
,p_name=>'P11_BOOKS_LOCATIONS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1224904986654579136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(840608577356680823)
,p_name=>'P11_BOOKS_LOCATION_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1224904986654579136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285886575823892807)
,p_name=>'DA_SAVE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(285884653545892765)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285887090915892808)
,p_event_id=>wwv_flow_imp.id(285886575823892807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285887402329892808)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285888448232892809)
,p_event_id=>wwv_flow_imp.id(285887402329892808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');',
'HIS.SET_CONTEXT(''LOCATION_ID'', ''001'');',
'HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', ''124'');',
':P11_ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
':P11_LOCATION_ID := :GV_LOCATION_ID;',
':P11_ORDER_LOCATION_ID := :GV_ORDER_LOCATION_ID;'))
,p_attribute_02=>'P11_ORGANIZATION_ID,P11_LOCATION_ID,P11_ORDER_LOCATION_ID'
,p_attribute_03=>'P11_ORGANIZATION_ID,P11_LOCATION_ID,P11_ORDER_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285887964000892808)
,p_event_id=>wwv_flow_imp.id(285887402329892808)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1224904986654579136)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285888930892892809)
,p_event_id=>wwv_flow_imp.id(285887402329892808)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_DEPARTMENT_ID,P11_FORWARDED_TO,P11_EMP_CODE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285889399702892810)
,p_name=>'DA_SelectionChange'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1224904986654579136)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285889882747892811)
,p_event_id=>wwv_flow_imp.id(285889399702892810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P11_JOURNAL_TYPE_ID",_.st_Journal_Type.JOURNAL_TYPE_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285890203058892811)
,p_name=>'DA_Refresh-ButtonClick'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(285883868887892762)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285890715242892811)
,p_event_id=>wwv_flow_imp.id(285890203058892811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1224904986654579136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285891133862892811)
,p_name=>'DA_P11_BOOKS_LOCATIONS - Change'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_BOOKS_LOCATION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285891691249892811)
,p_event_id=>wwv_flow_imp.id(285891133862892811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1224904986654579136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285885681642892797)
,p_name=>'DA_P11_BOOKS_LOCATIONS_DESC - Change'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_BOOKS_LOCATIONS_DESC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285886160400892807)
,p_event_id=>wwv_flow_imp.id(285885681642892797)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');    ',
'END;',
':P11_BOOKS_LOCATION_ID := :P11_BOOKS_LOCATIONS_DESC;'))
,p_attribute_02=>'P11_BOOKS_LOCATIONS_DESC'
,p_attribute_03=>'P11_BOOKS_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(285883149970892761)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1224904986654579136)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Library Section - Save Interactive Grid Data'
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
'           SELECT LPAD(MAX(TO_NUMBER(NVL(SECTION_ID, 0))+1), 3, ''0'') ',
'             INTO vCounter         ',
'             FROM SKM_LIBRARY.SKM_LIBRARY_SECTION T',
'            WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'              AND T.LOCATION_ID = :GV_LOCATION_ID',
'              AND T.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID;',
'       EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            vCounter := ''001'';',
'        WHEN OTHERS THEN',
'            vStop := ''Y'';',
'            vAlertText := ''Unable to get next counter for Section Id...'';',
'       END;',
'       IF vCounter IS NULL OR vCounter = '''' THEN',
'            vCounter := ''001'';',
'       END IF;',
'       BEGIN',
'           INSERT INTO SKM_LIBRARY.SKM_LIBRARY_SECTION (SECTION_ID,',
'                                                        DESCRIPTION,',
'                                                        SHORT_DESC,',
'                                                        ACTIVE,',
'                                                        ORGANIZATION_ID,',
'                                                        LOCATION_ID,',
'                                                        ORDER_LOCATION_ID)',
'                                                VALUES (vCounter,',
'                                                        :SECTION_DESC,',
'                                                        :SECTION_SHORT_DESC,',
'                                                        :ACTIVE,',
'                                                        :GV_ORGANIZATION_ID,',
'                                                        :GV_LOCATION_ID,',
'                                                        :GV_ORDER_LOCATION_ID);',
'        -- EXCEPTION',
'        --     WHEN OTHERS THEN',
'        --         vStop := ''Y'';',
'        --         vAlertText := ''Unable to insert record...'';',
'        END;',
'    WHEN ''U'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.SKM_LIBRARY_SECTION T',
'             WHERE T.SECTION_ID = :SECTION_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               AND T.LOCATION_ID = :LOCATION_ID',
'               AND T.ORDER_LOCATION_ID = :ORDER_LOCATION_ID',
'               FOR UPDATE NOWAIT;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to update against Section Id (''||:SECTION_ID||'')...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record against Section Id (''||:SECTION_ID||'')...'';',
'        END;',
'        BEGIN',
'            UPDATE SKM_LIBRARY.SKM_LIBRARY_SECTION T',
'               SET T.DESCRIPTION = :SECTION_DESC,',
'                   T.SHORT_DESC = :SECTION_SHORT_DESC,',
'                   T.ACTIVE = :ACTIVE',
'             WHERE T.ROWID = vRowId;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record against Section Id (''||:SECTION_ID||'')...'';',
'        END;',
'    WHEN ''D'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.SKM_LIBRARY_SECTION T',
'             WHERE T.SECTION_ID = :SECTION_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               AND T.LOCATION_ID = :LOCATION_ID',
'               AND T.ORDER_LOCATION_ID = :ORDER_LOCATION_ID',
'               FOR UPDATE NOWAIT;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be deleted against Section Id (''||:SECTION_ID||'')...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record against Section Id (''||:SECTION_ID||'')...'';',
'        END;',
'        BEGIN',
'            DELETE FROM SKM_LIBRARY.SKM_LIBRARY_SECTION T',
'             WHERE T.ROWID = vRowId;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record against Section Id (''||:SECTION_ID||'')...'';',
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
,p_process_success_message=>'Record(s) updated'
,p_internal_uid=>285883149970892761
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(285885283079892794)
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
,p_internal_uid=>285885283079892794
);
wwv_flow_imp.component_end;
end;
/

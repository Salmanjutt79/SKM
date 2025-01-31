prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Journal'
,p_alias=>'JOURNAL'
,p_step_title=>'Journal'
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
,p_last_upd_yyyymmddhh24miss=>'20250109090954'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(939034901658686495)
,p_plug_name=>'Journal Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Journal</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(285302067531115003)
,p_plug_name=>'Journal'
,p_region_name=>'st_Journal'
,p_parent_plug_id=>wwv_flow_imp.id(939034901658686495)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.JOURNAL_ID,',
'       T.JOURNAL_TYPE_ID,',
'       T.DESCRIPTION,',
'       T.SHORT_DESC,',
'       T.COMPANY,',
'       T.WEB_SITE,',
'       T.EMAIL,',
'       T.FREQUENCY_ID,',
'      (SELECT P.DESCRIPTION ',
'	    FROM ICU.SCORE_PARAMETERS P',
'      WHERE P.SCORE_PARAMETER_ID = T.FREQUENCY_ID) AS FREQUENCY_DESC,',
'       T.PRICE,',
'       T.CURRENCY_ID,',
'      (SELECT C.SHORT_DESCRIPTION ',
'   	     FROM DEFINITIONS.CURRENCY C',
'		WHERE C.CURRENCY_ID = T.CURRENCY_ID) AS CURRENCY_DESC,',
'       T.ORGANIZATION_ID,',
'       T.LOCATION_ID,',
'       T.ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.JOURNAL T'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(939034940825686496)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Journal'
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
 p_id=>wwv_flow_imp.id(285302252488115005)
,p_name=>'JOURNAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Journal Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(285302377271115006)
,p_name=>'JOURNAL_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(285301816508115001)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(285302442950115007)
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
 p_id=>wwv_flow_imp.id(285302539164115008)
,p_name=>'SHORT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Short Desc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(285302606454115009)
,p_name=>'COMPANY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(285302777871115010)
,p_name=>'WEB_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEB_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Web Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(285302884123115011)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>25
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
 p_id=>wwv_flow_imp.id(285302979440115012)
,p_name=>'FREQUENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(285303039201115013)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(285303147978115014)
,p_name=>'CURRENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENCY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currency Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(285303255892115015)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(285303302958115016)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(285303487113115017)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(285303502639115018)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(285303624081115019)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(285303871826115021)
,p_name=>'FREQUENCY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Frequency Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION AS FREQUENCY_DESC, P.SCORE_PARAMETER_ID AS FREQUENCY_ID',
'  FROM ICU.SCORE_PARAMETERS P',
' WHERE P.SCORE_CATEGORY_ID = ''FRQ''',
'   AND P.ACTIVE = ''Y''',
'ORDER BY P.DESCRIPTION'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(285303963259115022)
,p_name=>'CURRENCY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENCY_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currency Desc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(285302129339115004)
,p_internal_uid=>285302129339115004
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
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>320
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
 p_id=>wwv_flow_imp.id(285352617198163100)
,p_interactive_grid_id=>wwv_flow_imp.id(285302129339115004)
,p_static_id=>'2853527'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(285352887785163100)
,p_report_id=>wwv_flow_imp.id(285352617198163100)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7242143005861)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(285303502639115018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8293679005864)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(285303624081115019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32479100029837)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(285303871826115021)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33346903029841)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(285303963259115022)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285353387306163104)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(285302252488115005)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285354208261163106)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(285302377271115006)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285355107750163109)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(285302442950115007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>701
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285356061735163111)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(285302539164115008)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285356996742163114)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(285302606454115009)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285357804636163119)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(285302777871115010)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285358760062163122)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(285302884123115011)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285359604711163124)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(285302979440115012)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285360501688163127)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(285303039201115013)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285361463526163130)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(285303147978115014)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285362381125163132)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(285303255892115015)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285363267126163135)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(285303302958115016)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285364131835163137)
,p_view_id=>wwv_flow_imp.id(285352887785163100)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(285303487113115017)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(939034940825686496)
,p_plug_name=>'Journal Type'
,p_region_name=>'st_Journal_Type'
,p_parent_plug_id=>wwv_flow_imp.id(939034901658686495)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCORE_PARAMETER_ID AS JOURNAL_TYPE_ID, ',
'       DESCRIPTION AS JOURNAL_TYPE_DESC',
'  FROM ICU.SCORE_PARAMETERS T',
' WHERE T.SCORE_CATEGORY_ID = ''JTP'''))
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
 p_id=>wwv_flow_imp.id(285301816508115001)
,p_name=>'JOURNAL_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Journal Type Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(285301959797115002)
,p_name=>'JOURNAL_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(943713198042920053)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(943713254090920054)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(939035057657686497)
,p_internal_uid=>939035057657686497
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>250
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
 p_id=>wwv_flow_imp.id(943718982911917856)
,p_interactive_grid_id=>wwv_flow_imp.id(939035057657686497)
,p_static_id=>'4022127'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(943719154915917856)
,p_report_id=>wwv_flow_imp.id(943718982911917856)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285307819427117310)
,p_view_id=>wwv_flow_imp.id(943719154915917856)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(285301816508115001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.547
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(285308769381117318)
,p_view_id=>wwv_flow_imp.id(943719154915917856)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(285301959797115002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(541507910756932787)
,p_view_id=>wwv_flow_imp.id(943719154915917856)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(943713198042920053)
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
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(541605908814126702)
,p_view_id=>wwv_flow_imp.id(943719154915917856)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(943713254090920054)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(943713448829920056)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(939034901658686495)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284482147232020051)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(943713448829920056)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284482519286020051)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(943713448829920056)
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
 p_id=>wwv_flow_imp.id(284482974103020052)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(943713448829920056)
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
 p_id=>wwv_flow_imp.id(498704839060704545)
,p_name=>'P10_ORGANIZATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(939034901658686495)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(498704874441704546)
,p_name=>'P10_LOCATION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(939034901658686495)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(498704955285704547)
,p_name=>'P10_ORDER_LOCATION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(939034901658686495)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(498715322932704588)
,p_name=>'P10_BOOKS_LOCATIONS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(939034940825686496)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(554726116941788063)
,p_name=>'P10_BOOKS_LOCATION_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(939034940825686496)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284484866457020061)
,p_name=>'DA_SAVE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284482147232020051)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284485324760020061)
,p_event_id=>wwv_flow_imp.id(284484866457020061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284485746141020061)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284486712550020064)
,p_event_id=>wwv_flow_imp.id(284485746141020061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');',
'HIS.SET_CONTEXT(''LOCATION_ID'', ''001'');',
'HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', ''124'');',
':P10_ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
':P10_LOCATION_ID := :GV_LOCATION_ID;',
':P10_ORDER_LOCATION_ID := :GV_ORDER_LOCATION_ID;'))
,p_attribute_02=>'P10_ORGANIZATION_ID,P10_LOCATION_ID,P10_ORDER_LOCATION_ID'
,p_attribute_03=>'P10_ORGANIZATION_ID,P10_LOCATION_ID,P10_ORDER_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284486296576020063)
,p_event_id=>wwv_flow_imp.id(284485746141020061)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(939034940825686496)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284487258265020064)
,p_event_id=>wwv_flow_imp.id(284485746141020061)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_DEPARTMENT_ID,P10_FORWARDED_TO,P10_EMP_CODE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284487648322020064)
,p_name=>'DA_SelectionChange'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(939034940825686496)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284488196670020065)
,p_event_id=>wwv_flow_imp.id(284487648322020064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P10_JOURNAL_TYPE_ID",_.st_Journal_Type.JOURNAL_TYPE_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284488573075020065)
,p_name=>'DA_Refresh-ButtonClick'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284482519286020051)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284489532160020066)
,p_event_id=>wwv_flow_imp.id(284488573075020065)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(939034940825686496)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284489929593020068)
,p_name=>'DA_P10_BOOKS_LOCATIONS - Change'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_BOOKS_LOCATION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284490420442020068)
,p_event_id=>wwv_flow_imp.id(284489929593020068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(939034940825686496)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284483984052020060)
,p_name=>'DA_P10_BOOKS_LOCATIONS_DESC - Change'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_BOOKS_LOCATIONS_DESC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284484456065020061)
,p_event_id=>wwv_flow_imp.id(284483984052020060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');    ',
'END;',
':P10_BOOKS_LOCATION_ID := :P10_BOOKS_LOCATIONS_DESC;'))
,p_attribute_02=>'P10_BOOKS_LOCATIONS_DESC'
,p_attribute_03=>'P10_BOOKS_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(284481463499020050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(939034940825686496)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Journal Type - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --vData      ICU.SCORE_PARAMETERS%ROWTYPE;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        NULL;',
'    WHEN ''U'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM ICU.SCORE_PARAMETERS T',
'             WHERE T.SCORE_PARAMETER_ID = :JOURNAL_TYPE_ID',
'               AND T.SCORE_CATEGORY_ID = ''JTP''',
'               FOR UPDATE NOWAIT;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                NULL;',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        UPDATE ICU.SCORE_PARAMETERS T',
'           SET T.DESCRIPTION = :JOURNAL_TYPE_DESC',
'         WHERE T.ROWID = vRowId;',
'    WHEN ''D'' THEN',
'        NULL;',
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
,p_internal_uid=>284481463499020050
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(285303777829115020)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(285302067531115003)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Journal - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --vData      ICU.SCORE_PARAMETERS%ROWTYPE;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        BEGIN',
'            SELECT LPAD(NVL(MAX(T.JOURNAL_ID),0)+1, 7,0) ',
'        	  INTO :JOURNAL_ID',
'        	  FROM SKM_LIBRARY.JOURNAL T',
'        	 WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                NULL;',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.JOURNAL (JOURNAL_ID,',
'                                             JOURNAL_TYPE_ID,',
'                                             DESCRIPTION,',
'                                             SHORT_DESC,',
'                                             COMPANY,',
'                                             WEB_SITE,',
'                                             EMAIL,',
'                                             FREQUENCY_ID,',
'                                             PRICE,',
'                                             CURRENCY_ID,',
'                                             ORGANIZATION_ID,',
'                                             LOCATION_ID,',
'                                             ORDER_LOCATION_ID)',
'                                     VALUES (:JOURNAL_ID,',
'                                             :JOURNAL_TYPE_ID,',
'                                             :DESCRIPTION,',
'                                             :SHORT_DESC,',
'                                             :COMPANY,',
'                                             :WEB_SITE,',
'                                             :EMAIL,',
'                                             :FREQUENCY_ID,',
'                                             :PRICE,',
'                                             :CURRENCY_ID,',
'                                             :GV_ORGANIZATION_ID,',
'                                             :GV_LOCATION_ID,',
'                                             :GV_ORDER_LOCATION_ID);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to insert record'';',
'        END;',
'    WHEN ''U'' THEN',
'        NULL;',
'        -- BEGIN',
'        --     SELECT ROWID',
'        --       INTO vRowId',
'        --       FROM ICU.SCORE_PARAMETERS T',
'        --      WHERE T.SCORE_PARAMETER_ID = :JOURNAL_TYPE_ID',
'        --        AND T.SCORE_CATEGORY_ID = ''JTP''',
'        --        FOR UPDATE NOWAIT;',
'        -- EXCEPTION',
'        --     WHEN NO_DATA_FOUND THEN',
'        --         NULL;',
'        --     WHEN OTHERS THEN',
'        --         NULL;',
'        -- END;',
'        -- UPDATE ICU.SCORE_PARAMETERS T',
'        --    SET T.DESCRIPTION = :JOURNAL_TYPE_DESC',
'        --  WHERE T.ROWID = vRowId;',
'    WHEN ''D'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.JOURNAL T',
'             WHERE T.JOURNAL_ID = :JOURNAL_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'            FOR UPDATE NOWAIT;',
'        END;',
'        DELETE FROM SKM_LIBRARY.JOURNAL T',
'          WHERE T.ROWID = vRowId;',
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
,p_internal_uid=>285303777829115020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(285896995166904648)
,p_process_sequence=>10
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
,p_internal_uid=>285896995166904648
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Accession List'
,p_alias=>'ACCESSION-LIST'
,p_step_title=>'Accession List'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region( "st_Accession_List" ).widget().interactiveGrid( "getActions" ).set("edit", true);',
'',
'// document.getElementById(''BTN_SAVE'').innerHTML = ''<i class="fa fa-save"></i>&nbsp;&nbsp;<u>S</u>ave'';',
'document.getElementById(''BTN_EXIT'').innerHTML = ''<i class="fa fa-times-square-o"></i>&nbsp;&nbsp;E<u>x</u>it'';',
'',
'document.addEventListener(''keydown'', function (event) {',
'    if ((event.altKey && event.key === ''S'') || (event.altKey && event.key === ''s'')) {',
'        $("#BTN_SAVE").focus();',
'        var targetButton = apex.jQuery(''#BTN_SAVE'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    } else if ((event.altKey && event.key === ''X'') || (event.altKey && event.key === ''x'')) {',
'        $("#BTN_EXIT").focus();',
'        var targetButton = apex.jQuery(''#BTN_EXIT'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    }',
'});'))
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
,p_last_upd_yyyymmddhh24miss=>'20250110155507'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(654564784515666490)
,p_plug_name=>'Accession List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Accession List</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(654564823682666491)
,p_plug_name=>'Accession List'
,p_region_name=>'st_Accession_List'
,p_parent_plug_id=>wwv_flow_imp.id(654564784515666490)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ACCESS_NO,',
'	  (SELECT BI.TITLE',
'	     FROM SKM_LIBRARY.BOOK_INFORMATION BI',
'	    WHERE BI.BOOK_INFORMATION_ID = A.BOOK_INFORMATION_ID',
'          AND BI.ORGANIZATION_ID = :GV_ORGANIZATION_ID) AS TITLE,',
'      (SELECT BI.SUB_TITLE',
'		FROM SKM_LIBRARY.BOOK_INFORMATION BI',
'	   WHERE BI.BOOK_INFORMATION_ID = A.BOOK_INFORMATION_ID',
'		 AND BI.ORGANIZATION_ID = :GV_ORGANIZATION_ID) AS SUB_TITLE,',
'       A.BOOK_PURPOSE,',
'       A.PURCHASE_GIFT,',
'       A.SERIAL_NO,',
'       A.ISSUED,',
'       A.EXCLUDE_OVERDUE,',
'       A.ILLUSTRATION,',
'       A.ACTIVE,',
'       A.BOOK_INFORMATION_ID,',
'       A.BOOK_RESERVED,',
'       A.ACCESSION_DATE,',
'       A.VOLUME_ID,',
'       A.ORGANIZATION_ID,',
'       A.LOCATION_ID,',
'       A.ORDER_LOCATION_ID,',
'      (SELECT OL.DESCRIPTION',
'  	     FROM DEFINITIONS.ORDER_LOCATION OL',
'	    WHERE OL.LOCATION_ID	= A.LOCATION_ID',
'	      AND OL.ORDER_LOCATION_ID = A.ORDER_LOCATION_ID) AS BOOK_LOCATION_DESCRIPTION',
'  FROM TABLE(SKM_LIBRARY.PKG_S21FRM00001.F_BOOK_ACCESSION_INF_QRY_APX(P_BOOK_LOCATION_ID => :P5_BOOKS_LOCATION_ID,',
'                                                                      P_ACCESSION_NO     => NULL,',
'                                                                      P_ACTIVE           => NULL,',
'                                                                      P_ACTIVE_QRY       => NULL)) A'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_ORGANIZATION_ID,P5_BOOKS_LOCATION_ID'
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
 p_id=>wwv_flow_imp.id(214232586430684519)
,p_name=>'ACCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESS_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Access No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'stACCESS_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214232641444684520)
,p_name=>'BOOK_PURPOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_PURPOSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Book For'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Refernce;R,Issuable;I'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214232781285684521)
,p_name=>'PURCHASE_GIFT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_GIFT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Purchase/Gift'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Purchase;P,Gift;G'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214232820020684522)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Serial No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(214232938886684523)
,p_name=>'ISSUED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(214233018769684524)
,p_name=>'EXCLUDE_OVERDUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCLUDE_OVERDUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Exclude<BR>Overdue'
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
 p_id=>wwv_flow_imp.id(214233192203684525)
,p_name=>'ILLUSTRATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ILLUSTRATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Illustration'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(214233258425684526)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(214233350464684527)
,p_name=>'BOOK_INFORMATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_INFORMATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Information Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'stBOOK_INFORMATION_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214233485147684528)
,p_name=>'BOOK_RESERVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_RESERVED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Reserved'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(214233513103684529)
,p_name=>'ACCESSION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Accession Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(214233614933684530)
,p_name=>'VOLUME_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Volume Id'
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
,p_static_id=>'stVOLUME_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214233776197684531)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214233892441684532)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(214233965665684533)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(214234438299684538)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Title'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'SUB_TITLE:stSUB_TITLE,BOOK_INFORMATION_ID:stBOOK_INFORMATION_ID,VOLUME_ID:stVOLUME_ID'
,p_is_required=>false
,p_max_length=>100
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(264225542905001409)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'stTITLE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214234669688684540)
,p_name=>'SUB_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sub Title'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_static_id=>'stSUB_TITLE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(214234722461684541)
,p_name=>'BOOK_LOCATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_LOCATION_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(659243080899900048)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(659243136947900049)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(654564940514666492)
,p_internal_uid=>654564940514666492
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
 p_id=>wwv_flow_imp.id(659248865768897851)
,p_interactive_grid_id=>wwv_flow_imp.id(654564940514666492)
,p_static_id=>'4022127'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(659249037772897851)
,p_report_id=>wwv_flow_imp.id(659248865768897851)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15016921025882)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(214234669688684540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>214
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58667385116419)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(214234722461684541)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>225
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(257037793613912782)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(659243080899900048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(257135791671106697)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(659243136947900049)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258098136512046951)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(214232586430684519)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258099049376046957)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(214232641444684520)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258099994212046960)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(214232781285684521)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258100891676046973)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(214232820020684522)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258101785584046975)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(214232938886684523)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258102607578046979)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(214233018769684524)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258103563485046982)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(214233192203684525)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258104423098046984)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(214233258425684526)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258105315363046987)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(214233350464684527)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258106292274046989)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(214233485147684528)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258107190927046992)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(214233513103684529)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258108048109046994)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(214233614933684530)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>257
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258108974719046997)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(214233776197684531)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258109898623047000)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(214233892441684532)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258110704934047002)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(214233965665684533)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(258188782325246378)
,p_view_id=>wwv_flow_imp.id(659249037772897851)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(214234438299684538)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>287
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(659243331686900051)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(654564784515666490)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(257043113082916007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(659243331686900051)
,p_button_name=>'SAVE'
,p_button_static_id=>'BTN_SAVE'
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
 p_id=>wwv_flow_imp.id(257043524826916010)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(659243331686900051)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(257043901868916011)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(659243331686900051)
,p_button_name=>'EXIT'
,p_button_static_id=>'BTN_EXIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214234085652684534)
,p_name=>'P5_ORGANIZATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(654564784515666490)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214234121033684535)
,p_name=>'P5_LOCATION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(654564784515666490)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214234201877684536)
,p_name=>'P5_ORDER_LOCATION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(654564784515666490)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(214234586978684539)
,p_name=>'P5_BOOKS_LOCATIONS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(654564823682666491)
,p_prompt=>'Book(s) Location :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BL.ORDER_LOCATION_DESC, BL.ORDER_LOCATION_ID ',
'  FROM SKM_LIBRARY.V_LOCATION_GRANT BL',
' WHERE BL.USER_MRNO = :GV_USER_MRNO'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(224555119471711188)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(270245380987768014)
,p_name=>'P5_BOOKS_LOCATION_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(654564823682666491)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(257044954321916020)
,p_name=>'DA_SAVE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(257043113082916007)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257045411307916020)
,p_event_id=>wwv_flow_imp.id(257044954321916020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(257045826341916021)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214234385533684537)
,p_event_id=>wwv_flow_imp.id(257045826341916021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');',
'HIS.SET_CONTEXT(''LOCATION_ID'', ''001'');',
'HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', ''124'');',
':P5_ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
':P5_LOCATION_ID := :GV_LOCATION_ID;',
':P5_ORDER_LOCATION_ID := :GV_ORDER_LOCATION_ID;'))
,p_attribute_02=>'P5_ORGANIZATION_ID,P5_LOCATION_ID,P5_ORDER_LOCATION_ID'
,p_attribute_03=>'P5_ORGANIZATION_ID,P5_LOCATION_ID,P5_ORDER_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214235532925684549)
,p_event_id=>wwv_flow_imp.id(257045826341916021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(654564823682666491)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257046393528916021)
,p_event_id=>wwv_flow_imp.id(257045826341916021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_DEPARTMENT_ID,P5_FORWARDED_TO,P5_EMP_CODE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(257047642199916023)
,p_name=>'DA_SelectionChange'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(654564823682666491)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257048154812916024)
,p_event_id=>wwv_flow_imp.id(257047642199916023)
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
'apex.item("P5_DEPARTMENT_ID").setValue (selRecDEPARTMENT_ID);',
'if ($v("FORWARDED_TO") === null || $v("FORWARDED_TO") === '''' || $v("FORWARDED_TO") === ''HOD'' || $v("FORWARDED_TO") === ''MGR''){',
'    apex.item(''EMP_NAME'').disable();',
'    apex.item(''EMP_CODE'').disable();',
'} else if ($v("FORWARDED_TO") === ''O''){',
'    apex.item(''EMP_CODE'').enable();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(257049991224916024)
,p_name=>'DA_Refresh-ButtonClick'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(257043524826916010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257050433445916025)
,p_event_id=>wwv_flow_imp.id(257049991224916024)
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
 p_id=>wwv_flow_imp.id(257050975578916026)
,p_event_id=>wwv_flow_imp.id(257049991224916024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(654564823682666491)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(270245407145768015)
,p_name=>'DA_P5_BOOKS_LOCATIONS - Change'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_BOOKS_LOCATION_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270245511621768016)
,p_event_id=>wwv_flow_imp.id(270245407145768015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(654564823682666491)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(270245683072768017)
,p_name=>'DA_P5_BOOKS_LOCATIONS_DESC - Change'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_BOOKS_LOCATIONS_DESC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270245700488768018)
,p_event_id=>wwv_flow_imp.id(270245683072768017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');    ',
'END;',
':P5_BOOKS_LOCATION_ID := :P5_BOOKS_LOCATIONS_DESC;'))
,p_attribute_02=>'P5_BOOKS_LOCATIONS_DESC'
,p_attribute_03=>'P5_BOOKS_LOCATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(257042438838916004)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(654564823682666491)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Accession List - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vData      SKM_LIBRARY.PKG_ACCESSION_INFORMATION.ACCESSION_INFORMATION_TBL;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        BEGIN',
'            SELECT MAX(TO_NUMBER(AI.ACCESS_NO)) + 1',
'              INTO :ACCESS_NO',
'              FROM SKM_LIBRARY.ACCESSION_INFORMATION AI',
'             WHERE AI.ORDER_LOCATION_ID = 171',
'          ORDER BY TO_NUMBER(AI.ACCESS_NO) DESC;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                NULL;',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        vData(1).ACCESS_NO           := :ACCESS_NO;    ',
'        vData(1).BOOK_PURPOSE        := :BOOK_PURPOSE;',
'        vData(1).PURCHASE_GIFT       := :PURCHASE_GIFT;',
'        vData(1).SERIAL_NO           := :SERIAL_NO;',
'        vData(1).ISSUED              := ''N'';',
'        vData(1).EXCLUDE_OVERDUE     := :EXCLUDE_OVERDUE;',
'        vData(1).ILLUSTRATION        := :ILLUSTRATION;',
'        vData(1).ACTIVE              := :ACTIVE;',
'        vData(1).BOOK_INFORMATION_ID := :BOOK_INFORMATION_ID;',
'        vData(1).BOOK_RESERVED       := :BOOK_RESERVED;',
'        vData(1).ACCESSION_DATE      := :ACCESSION_DATE;',
'        vData(1).VOLUME_ID           := :VOLUME_ID;',
'        vData(1).ORGANIZATION_ID     := :P5_ORGANIZATION_ID;',
'        vData(1).LOCATION_ID         := :P5_LOCATION_ID;',
'        vData(1).ORDER_LOCATION_ID   := :P5_BOOKS_LOCATION_ID;',
'        SKM_LIBRARY.PKG_S21FRM00001.P_ACCESSION_INFORMATION_INS(P_DATA             => vDATA,',
'                                                                P_BOOK_LOCATION_ID => :P5_BOOKS_LOCATION_ID,',
'                                                                P_STOP             => vStop,',
'                                                                P_ALERT_TEXT       => vAlertText);',
'    WHEN ''U'' THEN',
'        vData(1).ACCESS_NO           := :ACCESS_NO;',
'        vData(1).BOOK_PURPOSE        := :BOOK_PURPOSE;',
'        vData(1).PURCHASE_GIFT       := :PURCHASE_GIFT;',
'        vData(1).SERIAL_NO           := :SERIAL_NO;',
'        vData(1).ISSUED              := :ISSUED;',
'        vData(1).EXCLUDE_OVERDUE     := :EXCLUDE_OVERDUE;',
'        vData(1).ILLUSTRATION        := :ILLUSTRATION;',
'        vData(1).ACTIVE              := :ACTIVE;',
'        vData(1).BOOK_INFORMATION_ID := :BOOK_INFORMATION_ID;',
'        vData(1).BOOK_RESERVED       := :BOOK_RESERVED;',
'        vData(1).ACCESSION_DATE      := :ACCESSION_DATE;',
'        vData(1).VOLUME_ID           := 1;--:VOLUME_ID;',
'        vData(1).ORGANIZATION_ID     := :P5_ORGANIZATION_ID;',
'        vData(1).LOCATION_ID         := :P5_LOCATION_ID;',
'        vData(1).ORDER_LOCATION_ID   := :P5_BOOKS_LOCATION_ID;',
'',
'        SKM_LIBRARY.PKG_S21FRM00001.P_ACCESSION_INFORMATION_UPD(P_DATA             => vDATA,',
'                                                                P_BOOK_LOCATION_ID => :P5_BOOKS_LOCATION_ID,',
'                                                                P_STOP             => vStop,',
'                                                                P_ALERT_TEXT       => vAlertText);',
'    WHEN ''D'' THEN',
'        vData(1).ACCESS_NO           := :ACCESS_NO;',
'        vData(1).ORGANIZATION_ID     := :P5_ORGANIZATION_ID;',
'        vData(1).LOCATION_ID         := :P5_LOCATION_ID;',
'        vData(1).ORDER_LOCATION_ID   := :P5_BOOKS_LOCATION_ID;        ',
'        SKM_LIBRARY.PKG_S21FRM00001.P_ACCESSION_INFORMATION_DEL(P_DATA             => vDATA,',
'                                                                P_BOOK_LOCATION_ID => :P5_BOOKS_LOCATION_ID,',
'                                                                P_STOP             => vStop,',
'                                                                P_ALERT_TEXT       => vAlertText);',
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
,p_internal_uid=>257042438838916004
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(264419495768838322)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Global Variable Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	V_ORDER_LOCATION VARCHAR2(3) := NULL;',
'	V_COUNT NUMBER := 0;',
'BEGIN',
'BEGIN',
'  HIS.SET_CONTEXT(''ORGANIZATION_ID'', :GV_ORGANIZATION_ID);',
'  HIS.SET_CONTEXT(''LOCATION_ID'', :GV_LOCATION_ID);  ',
'  HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', :GV_ORDER_LOCATION_ID);    ',
'END;',
'    :P5_ORGANIZATION_ID     := :GV_ORGANIZATION_ID;',
'    :P5_LOCATION_ID         := :GV_LOCATION_ID;',
'    :P5_ORDER_LOCATION_ID   := :GV_ORDER_LOCATION_ID;',
'    BEGIN',
'    	FOR I IN(SELECT T.ORDER_LOCATION_ID ',
'    	  		   FROM SKM_LIBRARY.ACCESSION_INFORMATION T',
'    			GROUP BY T.ORDER_LOCATION_ID)LOOP',
'    		IF :GV_ORDER_LOCATION_ID = (I.ORDER_LOCATION_ID) THEN',
'    			V_ORDER_LOCATION := :GV_ORDER_LOCATION_ID;',
'    			V_COUNT := V_COUNT + 1;',
'    		END IF;',
'    	END LOOP;',
'    	IF V_COUNT > 0 THEN',
'            SELECT OL.DESCRIPTION AS ORDER_LOCATION_DESC, OL.ORDER_LOCATION_ID',
'              INTO :P5_BOOKS_LOCATIONS_DESC, :P5_BOOKS_LOCATION_ID',
'              FROM DEFINITIONS.ORDER_LOCATION OL',
'             WHERE OL.ORDER_LOCATION_ID = V_ORDER_LOCATION',
'               AND OL.LOCATION_ID = :GV_LOCATION_ID',
'               AND OL.ACTIVE = ''Y''',
'               AND ROWNUM = 1;',
'    	ELSE',
'    		:P5_BOOKS_LOCATIONS_DESC := :GV_ORGANIZATION_ID;',
'    	END IF;',
'    EXCEPTION',
'    	WHEN NO_DATA_FOUND THEN',
'    		NULL;',
'    	WHEN OTHERS THEN',
'    		NULL;',
'    END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>264419495768838322
);
wwv_flow_imp.component_end;
end;
/

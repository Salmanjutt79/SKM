prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Journal Issue Information'
,p_alias=>'JOURNAL-ISSUE-INFORMATION'
,p_step_title=>'Journal Issue Information'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Button[data-action="selection-delete"], ',
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
'/* CSS for making the Save button green */',
'.a-Button[data-action="save"]{',
'    background-color: green;',
'    border-color: green;',
'    color: white;',
'}',
'.a-Button[data-action="save"]{',
'    background-color: green;',
'    border-color: green;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MOHTASHAMBILAL'
,p_last_upd_yyyymmddhh24miss=>'20250102103908'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242164264551232738)
,p_plug_name=>'Form Heading Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Journal Information</b></h3></center>',
'</span>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242164383461232739)
,p_plug_name=>'Filter(s)'
,p_parent_plug_id=>wwv_flow_imp.id(242164264551232738)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242164893797232744)
,p_plug_name=>'Filter(s) Sub Region'
,p_parent_plug_id=>wwv_flow_imp.id(242164383461232739)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242165147347232747)
,p_plug_name=>'Journal(s)'
,p_parent_plug_id=>wwv_flow_imp.id(242164264551232738)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242165270837232748)
,p_plug_name=>'Journal IG'
,p_parent_plug_id=>wwv_flow_imp.id(242165147347232747)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JI.JOURNAL_ID,',
'       JI.SERIAL_NO,',
'       JI.VOLUME,',
'       JI.ISSUE_NO,',
'       JI.ISSUE_YEAR,',
'       JI.ISSUE_MONTH,',
'       JI.ISSUE_DAY,',
'       JI.PART_NO,',
'       JI.SUPPLIMENT_NO,',
'       JI.FROM_PAGE,',
'       JI.TO_PAGE,',
'       JI.SPECIAL_EDITION,',
'       JI.ABSTRACT,',
'       --DECODE(JI.PURCHASE_GIFT, ''P'', ''Purchase'', ''G'', ''Gift'') PURCHASE_GIFT, ',
'       JI.PURCHASE_GIFT,',
'       JI.CURRENCY_ID,',
'       (SELECT C.SHORT_DESCRIPTION ',
'			FROM DEFINITIONS.CURRENCY C',
'			WHERE C.CURRENCY_ID = JI.CURRENCY_ID) CURRENCY,',
'       JI.PRICE,',
'       JI.ORGANIZATION_ID,',
'       JI.LOCATION_ID,',
'       JI.ORDER_LOCATION_ID',
'FROM TABLE(SKM_LIBRARY.PKG_JOURNAL_ISSUE_INFORMATION.F_JOURNAL_ISSUE_INFO_QRY(P_JOURNAL_ID => :P4_JOURNAL_ID)) JI;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P4_JOURNAL_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Journal IG'
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
 p_id=>wwv_flow_imp.id(242165416620232750)
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
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820380071829901)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Serial No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820472106829902)
,p_name=>'VOLUME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Volume'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820534662829903)
,p_name=>'ISSUE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issue No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820656693829904)
,p_name=>'ISSUE_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_YEAR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820741358829905)
,p_name=>'ISSUE_MONTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_MONTH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Month'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820830799829906)
,p_name=>'ISSUE_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_DAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Day'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253820982604829907)
,p_name=>'PART_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PART_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Part'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821052050829908)
,p_name=>'SUPPLIMENT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIMENT_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Suppliment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821107838829909)
,p_name=>'FROM_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'From Page'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821246958829910)
,p_name=>'TO_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'To Page'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821372743829911)
,p_name=>'SPECIAL_EDITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_EDITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Special</br>Edition'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821488188829912)
,p_name=>'ABSTRACT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABSTRACT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Abstract'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821540053829913)
,p_name=>'PURCHASE_GIFT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_GIFT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Purchase/</br>Gift'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Purchase;P,Gift;G'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821607797829914)
,p_name=>'CURRENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENCY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currency Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821768439829915)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821800626829916)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253821967835829917)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(253822004541829918)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(276114138213119035)
,p_name=>'CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(242165342547232749)
,p_internal_uid=>242165342547232749
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>455
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'let $ = apex.jQuery,',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'toolbarGroup.controls.push({type: "BUTTON",',
'action: "selection-delete",',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'iconBeforeLabel: true,',
'hot: false',
'});',
'// manipulate the buttons',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'addrowAction.iconBeforeLabel = true;',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'saveAction.hot = true;',
'',
'//store the config',
'config.toolbarData = toolbarData;',
'return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(253825946067830664)
,p_interactive_grid_id=>wwv_flow_imp.id(242165342547232749)
,p_static_id=>'2538260'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(253826100217830690)
,p_report_id=>wwv_flow_imp.id(253825946067830664)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253826562014830714)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(242165416620232750)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253827413057830735)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(253820380071829901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253828361133830739)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(253820472106829902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253829205944830742)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(253820534662829903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253830011291830746)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(253820656693829904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253830960869830749)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(253820741358829905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253831849596830753)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(253820830799829906)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253832742002830756)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(253820982604829907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253833612110830758)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(253821052050829908)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253834518288830762)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(253821107838829909)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253835496333830764)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(253821246958829910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253836308759830767)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(253821372743829911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253837222516830769)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(253821488188829912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253838120167830772)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(253821540053829913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253839002590830775)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(253821607797829914)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253839929732830779)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(253821768439829915)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253840888463830783)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(253821800626829916)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253841788706830786)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(253821967835829917)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(253842681239830788)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(253822004541829918)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(282875951709934401)
,p_view_id=>wwv_flow_imp.id(253826100217830690)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(276114138213119035)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276113823806119032)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(242164264551232738)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276114023862119034)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(276113823806119032)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276113911845119033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(276113823806119032)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(242164467876232740)
,p_name=>'P4_JOURNAL_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(242164893797232744)
,p_prompt=>'Journal Type :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_JOURNAL_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SP.DESCRIPTION JOURNAL_TYPE,',
'       T.JOURNAL_ID,',
'       T.DESCRIPTION JOURNAL,',
'       T.SHORT_DESC,',
'       T.COMPANY',
'  FROM SKM_LIBRARY.JOURNAL T,',
'       ICU.SCORE_PARAMETERS SP',
' WHERE SP.SCORE_PARAMETER_ID = T.JOURNAL_TYPE_ID',
' AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY T.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'1200'
,p_attribute_09=>'400'
,p_attribute_10=>'JOURNAL:P4_JOURNAL,JOURNAL_ID:P4_JOURNAL_ID,SHORT_DESC:P4_SHORT_DESC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(242164544248232741)
,p_name=>'P4_JOURNAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(242164893797232744)
,p_prompt=>'Journal :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select Null from DUAL;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(242164724888232743)
,p_name=>'P4_SHORT_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(242164893797232744)
,p_prompt=>'Short Description :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(242165009193232746)
,p_name=>'P4_JOURNAL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(242164893797232744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253822157784829919)
,p_name=>'DA_REFRESH_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_JOURNAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276113764139119031)
,p_event_id=>wwv_flow_imp.id(253822157784829919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',       :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',   :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', :GV_ORDER_LOCATION_ID);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253822210384829920)
,p_event_id=>wwv_flow_imp.id(253822157784829919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242165270837232748)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(253822553429829923)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(242165270837232748)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Journal IG - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_JOURNAL_ISSUE_INFO_TBL    SKM_LIBRARY.PKG_JOURNAL_ISSUE_INFORMATION.JOURNAL_ISSUE_INFO_TBL;',
'  V_ERROR    	   		      VARCHAR2(4000);',
'  V_STOP		   		      VARCHAR2(4000);',
'  V_ALERT_TEXT	   		      VARCHAR2(4000);',
'  V_SERIAL_NO                 NUMBER;',
'BEGIN',
'    :JOURNAL_ID         := :P4_JOURNAL_ID;',
'    :ORGANIZATION_ID    := :GV_ORGANIZATION_ID;',
'    :LOCATION_ID        := :GV_LOCATION_ID;',
'    :ORDER_LOCATION_ID  := :GV_ORDER_LOCATION_ID;',
'',
'  CASE :APEX$ROW_STATUS',
'    ',
'    WHEN ''C'' THEN',
'',
'    V_JOURNAL_ISSUE_INFO_TBL(1).JOURNAL_ID    	   := :JOURNAL_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SERIAL_NO  		   := :SERIAL_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).VOLUME             := :VOLUME;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_NO           := :ISSUE_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_MONTH        := :ISSUE_MONTH;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_YEAR         := :ISSUE_YEAR;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_DAY          := :ISSUE_DAY;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PART_NO            := :PART_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SUPPLIMENT_NO      := :SUPPLIMENT_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).FROM_PAGE          := :FROM_PAGE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).TO_PAGE            := :TO_PAGE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SPECIAL_EDITION    := :SPECIAL_EDITION;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ABSTRACT 	       := :ABSTRACT;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PURCHASE_GIFT      := :PURCHASE_GIFT;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).CURRENCY_ID  	   := :CURRENCY_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PRICE  	           := :PRICE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ORGANIZATION_ID    := :ORGANIZATION_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).LOCATION_ID  	   := :LOCATION_ID;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ORDER_LOCATION_ID  := :ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_JOURNAL_ISSUE_INFORMATION.P_JOURNAL_ISSUE_INFO_INS(P_DATA    	 => V_JOURNAL_ISSUE_INFO_TBL,',
'            												           P_STOP        => V_STOP,',
'            												           P_ALERT_TEXT  => V_ALERT_TEXT);',
'    WHEN ''U'' THEN',
'	',
'    V_JOURNAL_ISSUE_INFO_TBL(1).JOURNAL_ID    	   := :JOURNAL_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SERIAL_NO  		   := :SERIAL_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).VOLUME             := :VOLUME;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_NO           := :ISSUE_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_MONTH        := :ISSUE_MONTH;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_YEAR         := :ISSUE_YEAR;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_DAY          := :ISSUE_DAY;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PART_NO            := :PART_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SUPPLIMENT_NO      := :SUPPLIMENT_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).FROM_PAGE          := :FROM_PAGE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).TO_PAGE            := :TO_PAGE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SPECIAL_EDITION    := :SPECIAL_EDITION;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ABSTRACT 	       := :ABSTRACT;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PURCHASE_GIFT      := :PURCHASE_GIFT;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).CURRENCY_ID  	   := :CURRENCY_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PRICE  	           := :PRICE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ORGANIZATION_ID    := :ORGANIZATION_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).LOCATION_ID  	   := :LOCATION_ID;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ORDER_LOCATION_ID  := :ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_JOURNAL_ISSUE_INFORMATION.P_JOURNAL_ISSUE_INFO_UPD(P_DATA    	 => V_JOURNAL_ISSUE_INFO_TBL,',
'            												           P_STOP        => V_STOP,',
'            												           P_ALERT_TEXT  => V_ALERT_TEXT);',
'    WHEN ''D'' THEN',
'',
'    V_JOURNAL_ISSUE_INFO_TBL(1).JOURNAL_ID    	   := :JOURNAL_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SERIAL_NO  		   := :SERIAL_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).VOLUME             := :VOLUME;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_NO           := :ISSUE_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_MONTH        := :ISSUE_MONTH;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_YEAR         := :ISSUE_YEAR;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ISSUE_DAY          := :ISSUE_DAY;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PART_NO            := :PART_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SUPPLIMENT_NO      := :SUPPLIMENT_NO;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).FROM_PAGE          := :FROM_PAGE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).TO_PAGE            := :TO_PAGE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).SPECIAL_EDITION    := :SPECIAL_EDITION;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ABSTRACT 	       := :ABSTRACT;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PURCHASE_GIFT      := :PURCHASE_GIFT;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).CURRENCY_ID  	   := :CURRENCY_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).PRICE  	           := :PRICE;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).ORGANIZATION_ID    := :ORGANIZATION_ID;',
'    V_JOURNAL_ISSUE_INFO_TBL(1).LOCATION_ID  	   := :LOCATION_ID;',
'	V_JOURNAL_ISSUE_INFO_TBL(1).ORDER_LOCATION_ID  := :ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_JOURNAL_ISSUE_INFORMATION.P_JOURNAL_ISSUE_INFO_DEL(P_DATA    	 => V_JOURNAL_ISSUE_INFO_TBL,',
'            												           P_STOP        => V_STOP,',
'            												           P_ALERT_TEXT  => V_ALERT_TEXT);',
'	END CASE;',
'    ',
'    IF (V_STOP = ''Y'') ',
'    THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => V_ALERT_TEXT,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        RETURN;                         ',
'    ELSE',
'        COMMIT;',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved successfully!!!'
,p_internal_uid=>253822553429829923
);
wwv_flow_imp.component_end;
end;
/

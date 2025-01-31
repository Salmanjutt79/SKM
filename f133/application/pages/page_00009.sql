prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Library Catalogue'
,p_alias=>'LIBRARY-CATALOGUE'
,p_step_title=>'Library Catalogue'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openViewForm(){',
'    apex.jQuery(''#BTN_VIEW'').trigger(''click'');',
'}'))
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
,p_last_upd_yyyymmddhh24miss=>'20250113123357'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276115342953119047)
,p_plug_name=>'Form heading Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Library Catalogue</b></h3></center>',
'</span>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289338827768358050)
,p_plug_name=>'Catalogue(s)'
,p_parent_plug_id=>wwv_flow_imp.id(276115342953119047)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276115541606119049)
,p_plug_name=>'Tab Container'
,p_parent_plug_id=>wwv_flow_imp.id(289338827768358050)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--pill:t-Form--slimPadding:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(224488942751711137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(276115607086119050)
,p_plug_name=>'Book Catalogue'
,p_parent_plug_id=>wwv_flow_imp.id(276115541606119049)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.ACCESS_NO,',
'       V.TITLE,',
'       V.SUB_TITLE,',
'       V.VOLUME_ID,',
'       V.PUBLISHER,',
'       V.EDITION_NO,',
'       V.ISSUE_REFERENCE,',
'       V.DDC_NO,',
'       V.ISSN,',
'       V.ISBN,',
'       V.PAGES,',
'       V.BOOK_STATE,',
'       V.price,',
'       V.LOCATION,',
'       V.book_information_id,',
'       V.publishing_year,',
'       V.AVAILABILITY,',
'       V.AUTHOR_NAME,',
'       V.ORGANIZATION_ID,',
'       V.LOCATION_ID,',
'       V.ORDER_LOCATION_ID',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG V;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286837773299017724)
,p_plug_name=>'Left Book Region'
,p_parent_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286837824578017725)
,p_plug_name=>'Right Book Region'
,p_parent_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286838295166017729)
,p_plug_name=>'Book Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(286840344234017750)
,p_plug_name=>'Journal Catalogue'
,p_parent_plug_id=>wwv_flow_imp.id(276115541606119049)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288499418194751101)
,p_plug_name=>'Left Journal Region'
,p_parent_plug_id=>wwv_flow_imp.id(286840344234017750)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288500681112751113)
,p_plug_name=>'Journal Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(286840344234017750)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288501509423751122)
,p_plug_name=>'Article Catalogue'
,p_parent_plug_id=>wwv_flow_imp.id(276115541606119049)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT V.ACCESS_NO,',
'       V.TITLE,',
'       V.SUB_TITLE,',
'       V.VOLUME_ID,',
'       V.PUBLISHER,',
'       V.EDITION_NO,',
'       V.ISSUE_REFERENCE,',
'       V.DDC_NO,',
'       V.ISSN,',
'       V.ISBN,',
'       V.PAGES,',
'       V.BOOK_STATE,',
'       V.price,',
'       V.LOCATION,',
'       V.book_information_id,',
'       V.publishing_year,',
'       V.AVAILABILITY,',
'       V.AUTHOR_NAME,',
'       V.ORGANIZATION_ID,',
'       V.LOCATION_ID,',
'       V.ORDER_LOCATION_ID',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG V;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288501786793751124)
,p_plug_name=>'Left Article Region'
,p_parent_plug_id=>wwv_flow_imp.id(288501509423751122)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288502065528751127)
,p_plug_name=>'Right Article Region'
,p_parent_plug_id=>wwv_flow_imp.id(288501509423751122)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288503786096751144)
,p_plug_name=>'Journal'
,p_parent_plug_id=>wwv_flow_imp.id(288501509423751122)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288502536642751132)
,p_plug_name=>'Journal IG'
,p_region_name=>'IG_JOURNAL'
,p_parent_plug_id=>wwv_flow_imp.id(288503786096751144)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  J.DESCRIPTION,',
'        J.JOURNAL_ID,',
'        J.JOURNAL_TYPE_ID,',
'        J.SHORT_DESC,',
'        J.COMPANY,',
'        J.WEB_SITE,',
'        J.EMAIL,',
'        J.FREQUENCY_ID,',
'        J.PRICE,',
'        J.CURRENCY_ID',
'FROM TABLE(SKM_LIBRARY.PKG_S21FRM00015.F_JOURNAL_QRY(P_JOURNAL_ID    => NVL(:P9_JOURNAL_ID_AC, ''ABCD''),',
'                                                     P_ISSUE_YEAR    => :P9_ISSUE_YEAR_AC,',
'                                                     P_ARTICLE_TITLE => :P9_ARTICLE_TITLE,',
'                                                     P_AUTHOR_ID     => :P9_AUTHOR_ID_AC,',
'                                                     P_SEARCH_WORD   => :P9_ND_WORD_AC)) J;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9_JOURNAL_ID_AC,P9_ISSUE_YEAR_AC,P9_ARTICLE_TITLE,P9_AUTHOR_ID_AC,P9_ND_WORD_AC'
,p_prn_content_disposition=>'ATTACHMENT'
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
 p_id=>wwv_flow_imp.id(288502730548751134)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(288502835792751135)
,p_name=>'JOURNAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Journal Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(288502933429751136)
,p_name=>'JOURNAL_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Journal Type Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(288503062332751137)
,p_name=>'SHORT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Short Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(288503123573751138)
,p_name=>'COMPANY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(288503276698751139)
,p_name=>'WEB_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEB_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Web Site'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(288503387924751140)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>25
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
 p_id=>wwv_flow_imp.id(288503463669751141)
,p_name=>'FREQUENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(288503527323751142)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(288503612852751143)
,p_name=>'CURRENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENCY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currency Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(288502668646751133)
,p_internal_uid=>288502668646751133
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(289254036775253347)
,p_interactive_grid_id=>wwv_flow_imp.id(288502668646751133)
,p_static_id=>'2892541'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(289254287726253347)
,p_report_id=>wwv_flow_imp.id(289254036775253347)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289254711273253350)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(288502730548751134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289255644341253352)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(288502835792751135)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289256524095253355)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(288502933429751136)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289257444277253357)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(288503062332751137)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289258310026253360)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(288503123573751138)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289259274159253362)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(288503276698751139)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289260141266253364)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(288503387924751140)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289261000171253367)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(288503463669751141)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289261980579253369)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(288503527323751142)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289262827568253372)
,p_view_id=>wwv_flow_imp.id(289254287726253347)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(288503612852751143)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289335481916358016)
,p_plug_name=>'Year'
,p_parent_plug_id=>wwv_flow_imp.id(288501509423751122)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289334213202358004)
,p_plug_name=>'Year IG'
,p_region_name=>'IG_YEAR'
,p_parent_plug_id=>wwv_flow_imp.id(289335481916358016)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AI.ISSUE_YEAR, ',
'       AI.JOURNAL_ID',
'FROM TABLE(SKM_LIBRARY.PKG_S21FRM00015.F_YEAR_QRY(P_JOURNAL_ID  => NVL(:P9_JOURNAL_ID_AC, ''ABCD''),',
'                                                  P_ISSUE_YEAR  => :P9_ISSUE_YEAR_AC,',
'                                                  P_SEARCH_WORD => :P9_ND_WORD_AC)) AI',
'WHERE AI.JOURNAL_ID = :P9_NON_DB_JOURNAL_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9_JOURNAL_ID_AC,P9_ISSUE_YEAR_AC,P9_ND_WORD_AC,P9_NON_DB_JOURNAL_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Year IG'
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
 p_id=>wwv_flow_imp.id(289334500845358007)
,p_name=>'JOURNAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Journal Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(289335511828358017)
,p_name=>'ISSUE_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_YEAR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issue Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(289334373499358005)
,p_internal_uid=>289334373499358005
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(289432394539590697)
,p_interactive_grid_id=>wwv_flow_imp.id(289334373499358005)
,p_static_id=>'2894324'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(289432546810590697)
,p_report_id=>wwv_flow_imp.id(289432394539590697)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289433948396590703)
,p_view_id=>wwv_flow_imp.id(289432546810590697)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(289334500845358007)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289486391284682918)
,p_view_id=>wwv_flow_imp.id(289432546810590697)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(289335511828358017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289336053298358022)
,p_plug_name=>'Article'
,p_parent_plug_id=>wwv_flow_imp.id(288501509423751122)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289336173718358023)
,p_plug_name=>'Article IG'
,p_region_name=>'IG_ARTICLE'
,p_parent_plug_id=>wwv_flow_imp.id(289336053298358022)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AI.JOURNAL_ID,',
'       AI.ISSUE_YEAR,',
'       AI.SERIAL_NO,',
'       AI.VOLUME,',
'       AI.ISSUE_NO,',
'       AI.FROM_PAGE,',
'       AI.TO_PAGE,',
'       AI.TITLE,',
'       (SELECT I.ARTICLE_NAME',
'       FROM SKM_LIBRARY.ARTICLE_INFORMATION I',
'       WHERE I.JOURNAL_ID = AI.JOURNAL_ID',
'         AND I.ISSUE_YEAR = AI.ISSUE_YEAR',
'         AND I.SERIAL_NO  = AI.SERIAL_NO) ARTICLE_NAME',
'FROM TABLE(SKM_LIBRARY.PKG_S21FRM00015.F_ARTICLE_INFO_QRY(P_JOURNAL_ID    => NVL(:P9_JOURNAL_ID_AC, ''ABCD''),',
'                                                          P_ISSUE_YEAR    => :P9_ISSUE_YEAR_AC,',
'                                                          P_SEARCH_WORD   => :P9_ND_WORD_AC,',
'                                                          P_ARTICLE_TITLE => :P9_ARTICLE_TITLE',
'                                                          )) AI',
'WHERE AI.ISSUE_YEAR = :P9_NON_DB_ISSUE_YEAR;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9_JOURNAL_ID_AC,P9_ISSUE_YEAR_AC,P9_ARTICLE_TITLE,P9_ND_WORD_AC,P9_NON_DB_ISSUE_YEAR'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Article IG'
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
 p_id=>wwv_flow_imp.id(289336345705358025)
,p_name=>'JOURNAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOURNAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Journal Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289336458582358026)
,p_name=>'ISSUE_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_YEAR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issue Year'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289336568338358027)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Serial No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
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
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289336633847358028)
,p_name=>'VOLUME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Volume'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289336750673358029)
,p_name=>'ISSUE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issue No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289336856633358030)
,p_name=>'FROM_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'From Page'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289336943613358031)
,p_name=>'TO_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'To Page'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289337098190358032)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Title'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289337899913358040)
,p_name=>'PDF'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null)'
,p_link_text=>'<button type="button" class="button" id="clickimage" height="60px"><b>PDF</b></button>'
,p_link_attributes=>'onclick="openViewForm()" '
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(289741825694105723)
,p_name=>'ARTICLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARTICLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Article Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>256
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(289336232319358024)
,p_internal_uid=>289336232319358024
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
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(289555777975847101)
,p_interactive_grid_id=>wwv_flow_imp.id(289336232319358024)
,p_static_id=>'2895558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(289555934073847101)
,p_report_id=>wwv_flow_imp.id(289555777975847101)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(119436403287202)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(289741825694105723)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289556434921847103)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(289336345705358025)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289557324753847105)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(289336458582358026)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289558278957847109)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(289336568338358027)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289559179014847111)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(289336633847358028)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289560075231847113)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(289336750673358029)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289560912500847116)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(289336856633358030)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289561858200847121)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(289336943613358031)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289562745351847129)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(289337098190358032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(289601289549940178)
,p_view_id=>wwv_flow_imp.id(289555934073847101)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(289337899913358040)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289338422432358046)
,p_plug_name=>'Article Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(288501509423751122)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289338353824358045)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_button_name=>'BTN_VIEW'
,p_button_static_id=>'BTN_VIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_image_alt=>'View'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286838339579017730)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(286838295166017729)
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288500773771751114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(288500681112751113)
,p_button_name=>'Search_JC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288501266057751119)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(288500681112751113)
,p_button_name=>'Clear_JC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-recycle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(286838595872017732)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(286838295166017729)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-recycle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288502466866751131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(288502065528751127)
,p_button_name=>'Search_AC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289338518949358047)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(289338422432358046)
,p_button_name=>'Exit_AC'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289338606903358048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(288500681112751113)
,p_button_name=>'Exit_JC'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289338718131358049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(286838295166017729)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289333903505358001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(288502065528751127)
,p_button_name=>'Clear_AC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-recycle'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286835515470017702)
,p_name=>'P9_ACCESS_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Access No :'
,p_source=>'ACCESS_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ACCESS_NO',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY ACCESS_NO'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286835634750017703)
,p_name=>'P9_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Title :'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT TITLE',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286835770531017704)
,p_name=>'P9_SUB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Sub Title :'
,p_source=>'SUB_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT SUB_TITLE',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE SUB_TITLE IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286835839823017705)
,p_name=>'P9_VOLUME_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Volume No :'
,p_source=>'VOLUME_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286835996764017706)
,p_name=>'P9_PUBLISHER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Publisher :'
,p_source=>'PUBLISHER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PUBLISHER',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE PUBLISHER IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>60
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836067910017707)
,p_name=>'P9_EDITION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Edition No :'
,p_source=>'EDITION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT EDITION_NO',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE EDITION_NO IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836170388017708)
,p_name=>'P9_ISSUE_REFERENCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Issue Reference :'
,p_source=>'ISSUE_REFERENCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ISSUE_REFERENCE',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>9
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836273061017709)
,p_name=>'P9_DDC_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'DDC No :'
,p_source=>'DDC_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DDC_NO',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE DDC_NO IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836330680017710)
,p_name=>'P9_ISSN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'ISSN :'
,p_source=>'ISSN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ISSN',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE ISSN IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836420891017711)
,p_name=>'P9_ISBN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'ISBN :'
,p_source=>'ISBN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ISBN',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE ISBN IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836574512017712)
,p_name=>'P9_PAGES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'PAGES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836673354017713)
,p_name=>'P9_BOOK_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Book State :'
,p_source=>'BOOK_STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT BOOK_STATE',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE BOOK_STATE IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>13
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836767583017714)
,p_name=>'P9_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836811737017715)
,p_name=>'P9_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Location :'
,p_source=>'LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT LOCATION',
'FROM SKM_LIBRARY.V_LIBRARY_CATALOG',
'WHERE LOCATION IS NOT NULL',
'AND ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>32767
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286836972749017716)
,p_name=>'P9_BOOK_INFORMATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'BOOK_INFORMATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837055042017717)
,p_name=>'P9_PUBLISHING_YEAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'PUBLISHING_YEAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837157484017718)
,p_name=>'P9_AVAILABILITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'AVAILABILITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837299427017719)
,p_name=>'P9_AUTHOR_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_prompt=>'Author :'
,p_source=>'AUTHOR_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.FIRST_NAME||'' ''||T.MIDDLE_NAME||'' ''||T.LAST_NAME AS NAME,',
'       T.AUTHOR_ID AS AUTHOR_ID',
'       ',
'FROM SKM_LIBRARY.AUTHOR T',
'WHERE T.ACTIVE = ''Y''',
'AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'AUTHOR_ID:P9_AUTHOR_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837348322017720)
,p_name=>'P9_ORGANIZATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'ORGANIZATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837412338017721)
,p_name=>'P9_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837592809017722)
,p_name=>'P9_ORDER_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_item_source_plug_id=>wwv_flow_imp.id(276115607086119050)
,p_source=>'ORDER_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286837974413017726)
,p_name=>'P9_ND_WORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title Search :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>182
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286838097379017727)
,p_name=>'P9_FROM_PAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_prompt=>'From Page :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286838182444017728)
,p_name=>'P9_TO_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(286837773299017724)
,p_prompt=>'To Page :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(286838447136017731)
,p_name=>'P9_AUTHOR_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(286837824578017725)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288499530366751102)
,p_name=>'P9_JOURNAL_ID_JC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'Journal :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION JOURNAL,T.JOURNAL_ID       ',
'  FROM SKM_LIBRARY.JOURNAL T,',
'       ICU.SCORE_PARAMETERS SP',
' WHERE SP.SCORE_PARAMETER_ID = T.JOURNAL_TYPE_ID',
'AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY T.DESCRIPTION;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288499680946751103)
,p_name=>'P9_ISSUE_YEAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'Year :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288499726504751104)
,p_name=>'P9_VOLUME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'Volume No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288499897852751105)
,p_name=>'P9_ISSUE_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'Issue No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288499923636751106)
,p_name=>'P9_FROM_PAGE_JC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'From Page :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288500011035751107)
,p_name=>'P9_TO_PAGE_JC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'To Page :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288500134627751108)
,p_name=>'P9_SUPPLEMENT_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'Supplement No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288500232248751109)
,p_name=>'P9_SPECIAL_EDITION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_item_default=>'N'
,p_prompt=>'<span style="color:white">.</span>'
,p_pre_element_text=>'<label class="t-Form-label">&nbsp;&nbsp;Special Edition :&nbsp;&nbsp;</label>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288500366549751110)
,p_name=>'P9_ABSTRACT_BOOK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_item_default=>'N'
,p_prompt=>'<span style="color:white">.</span>'
,p_pre_element_text=>'<label class="t-Form-label">&nbsp;&nbsp;&nbsp;Abstract Book :&nbsp;&nbsp;</label>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288500419935751111)
,p_name=>'P9_PART'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(288499418194751101)
,p_prompt=>'Part No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288501877030751125)
,p_name=>'P9_JOURNAL_ID_AC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(288501786793751124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Journal :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION JOURNAL,T.JOURNAL_ID       ',
'  FROM SKM_LIBRARY.JOURNAL T,',
'       ICU.SCORE_PARAMETERS SP',
' WHERE SP.SCORE_PARAMETER_ID = T.JOURNAL_TYPE_ID',
'AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY T.DESCRIPTION;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288501977921751126)
,p_name=>'P9_AUTHOR_ID_AC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(288502065528751127)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Author :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.FIRST_NAME||'' ''||T.MIDDLE_NAME||'' ''||T.LAST_NAME NAME, T.AUTHOR_ID',
'FROM SKM_LIBRARY.AUTHOR T',
'WHERE T.ACTIVE = ''Y''',
'AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288502140906751128)
,p_name=>'P9_ARTICLE_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(288501786793751124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Article Title :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JI.TITLE',
'  FROM SKM_LIBRARY.JOURNAL J, SKM_LIBRARY.ARTICLE_INFORMATION JI',
' WHERE J.JOURNAL_ID = JI.JOURNAL_ID',
' AND J.ORGANIZATION_ID = JI.ORGANIZATION_ID',
' AND   J.JOURNAL_ID =:P9_JOURNAL_ID_AC',
' AND JI.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288502287818751129)
,p_name=>'P9_ND_WORD_AC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(288502065528751127)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Search Article :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288502363254751130)
,p_name=>'P9_ISSUE_YEAR_AC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(288501786793751124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Year :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289337507265358037)
,p_name=>'P9_NON_DB_ISSUE_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(289334213202358004)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289337728014358039)
,p_name=>'P9_NON_DB_JOURNAL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(288502536642751132)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289741249181105717)
,p_name=>'P9_NON_DB_JOURNAL_ID_AC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289741303167105718)
,p_name=>'P9_NON_DB_ISSUE_YEAR_AC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289741464161105719)
,p_name=>'P9_NON_DB_SERIAL_NO_AC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289741557731105720)
,p_name=>'P9_URL_STORE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289741613046105721)
,p_name=>'P9_NON_DB_DOCUMENT_TYPE_AC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289741701663105722)
,p_name=>'P9_NON_DB_TABLE_NAME_AC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(289336173718358023)
,p_item_default=>'SKM_LIBRARY.ARTICLE_INFORMATION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286838640460017733)
,p_name=>'DA_CLEAR_BOOK_CATALOGUE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(286838595872017732)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286838718109017734)
,p_event_id=>wwv_flow_imp.id(286838640460017733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_ACCESS_NO,P9_TITLE,P9_SUB_TITLE,P9_VOLUME_ID,P9_PUBLISHER,P9_EDITION_NO,P9_ISSUE_REFERENCE,P9_BOOK_STATE,P9_DDC_NO,P9_LOCATION,P9_ISSN,P9_AUTHOR_ID,P9_ISBN,P9_FROM_PAGE_JC,P9_TO_PAGE,P9_ND_WORD,P9_AUTHOR_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(286839071352017737)
,p_name=>'DA_SEARCH_BOOK_CATALOGUE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(286838339579017730)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286839964820017746)
,p_event_id=>wwv_flow_imp.id(286839071352017737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Initilaize SYS Context for BC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    HIS.SET_CONTEXT(''USER_MRNO'',            :GV_USER_MRNO);',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(286839181472017738)
,p_event_id=>wwv_flow_imp.id(286839071352017737)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'',
'let paramList = {',
'    "P_ACCESS_NO": $v(''P9_ACCESS_NO''),',
'    "P_TITLE": $v(''P9_TITLE''),',
'    "P_SUB_TITLE": $v(''P9_SUB_TITLE''), ',
'    "P_VOLUME_ID": $v(''P9_VOLUME_ID''),',
'    "P_PUBLISHER": $v(''P9_PUBLISHER''),',
'    "P_EDITION_NO": $v(''P9_EDITION_NO''),',
'    "P_ISSUE_REFERENCE": $v(''P9_ISSUE_REFERENCE''),',
'    "P_DDC_NO": $v(''P9_DDC_NO''),',
'    "P_ISSN": $v(''P9_ISSN''),',
'    "P_ISBN": $v(''P9_ISBN''),',
'    "P_FROMPAGE": $v(''P9_FROM_PAGE''),',
'    "P_TOPAGE": $v(''P9_TO_PAGE''),',
'    "P_BOOK_STATE": $v(''P9_BOOK_STATE''),',
'    "P_LOCATION": $v(''P9_LOCATION''),',
'    "P_LOCATION_ID": $v(''GV_LOCATION_ID''),',
'    "P_ORDER_LOCATION_ID": $v(''GV_ORDER_LOCATION_ID'')',
'};',
'',
'',
'let paramWord = $v(''P9_ND_WORD'') ? $v(''P9_ND_WORD'').replace(/''/g, "''''") : null;',
'',
'if (paramWord) {',
'    // Escape ''%'' to avoid issues',
'    paramWord = paramWord.replace(/%/g, "\\%"); // Escape % with a backslash for SQL',
'',
'    // Construct the SQL fragment',
'    paramList["P_WORD"] = `AND INSTR(UPPER(VLC.TITLE), UPPER(''${paramWord}'')) > 0`;',
'}',
'',
'console.log(paramList);',
'',
'//Handle P_AUTHOR_ID',
'let authorId = $v(''P9_AUTHOR_ID'') ? apex.util.escapeHTML($v(''P9_AUTHOR_ID'')) : null;',
'if (authorId) {',
'   paramList["P_AUTHOR_ID"] = `AND VLC.BOOK_INFORMATION_ID IN (SELECT BA.BOOK_INFORMATION_ID FROM SKM_LIBRARY.AUTHOR A, SKM_LIBRARY.BOOK_AUTHOR BA WHERE A.AUTHOR_ID = BA.AUTHOR_ID AND A.ACTIVE = ''Y'' AND A.AUTHOR_ID = ''${authorId}'')`;',
'};',
'',
'',
'console.log(paramList);',
'',
'/*apex.message.alert($v(''P15_FROM_DATE'') + '' '' + $v(''P15_TO_DATE'') + '' '' + $v(''P15_LOCATION_ID'') + '' '' +',
'    $v(''P15_ORDER_LOCATION_ID'') + '' '' + $v(''P15_QC_LEVEL_ID'') + '' '' + $v(''P15_POCT_NAME_ID'') + '' '' +',
'    $v(''P15_POCT_DEVICE_ID'') + '' '' + $v(''P15_QC_STATUS'') + '' '' + $v(''P15_EMP_CODE'')',
');*/',
'',
'let object = {',
'    "OBJECTCODE": ''S21REP00008'',',
'    "METHOD": ''S4'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288500844071751115)
,p_name=>'DA_SEARCH_JOURNAL_CATALOGUE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288500773771751114)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288501005206751117)
,p_event_id=>wwv_flow_imp.id(288500844071751115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Initilaize SYS Context for JC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    HIS.SET_CONTEXT(''USER_MRNO'',            :GV_USER_MRNO);',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288501163681751118)
,p_event_id=>wwv_flow_imp.id(288500844071751115)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'',
'let paramList = {',
'    "P_JOURNAL_ID": $v(''P9_JOURNAL_ID_JC''),',
'    "P_ISSUE_YEAR": $v(''P9_ISSUE_YEAR''),',
'    "P_VOLUME": $v(''P9_VOLUME''), ',
'    "P_VOLUME_ID": $v(''P9_VOLUME_ID''),',
'    "P_ISSUE_NO": $v(''P9_ISSUE_NO''),',
'    "P_FROM_PAGE": $v(''P9_FROM_PAGE''),',
'    "P_TO_PAGE": $v(''P9_TO_PAGE''),',
'    "P_SPECIAL_EDITION": $v(''P9_SPECIAL_EDITION''),',
'    "P_ABSTRACT": $v(''P9_ABSTRACT_BOOK''),',
'    "P_PART": $v(''P9_PART'')',
'};',
'',
'/*apex.message.alert($v(''P15_FROM_DATE'') + '' '' + $v(''P15_TO_DATE'') + '' '' + $v(''P15_LOCATION_ID'') + '' '' +',
'    $v(''P15_ORDER_LOCATION_ID'') + '' '' + $v(''P15_QC_LEVEL_ID'') + '' '' + $v(''P15_POCT_NAME_ID'') + '' '' +',
'    $v(''P15_POCT_DEVICE_ID'') + '' '' + $v(''P15_QC_STATUS'') + '' '' + $v(''P15_EMP_CODE'')',
');*/',
'',
'let object = {',
'    "OBJECTCODE": ''S21REP00007'',',
'    "METHOD": ''S3'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288501328763751120)
,p_name=>'DA_CLEAR_JOURNAL_CATALOGUE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288501266057751119)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288501459323751121)
,p_event_id=>wwv_flow_imp.id(288501328763751120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_JOURNAL_ID_JC,P9_ISSUE_YEAR_AC,P9_VOLUME,P9_ISSUE_NO,P9_FROM_PAGE_JC,P9_TO_PAGE_JC,P9_SUPPLEMENT_NO,P9_PART,P9_SPECIAL_EDITION,P9_ABSTRACT_BOOK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288503845657751145)
,p_name=>'DA_REFRESH_IG'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288502466866751131)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288504076617751147)
,p_event_id=>wwv_flow_imp.id(288503845657751145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Initilaize SYS Context for AC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    HIS.SET_CONTEXT(''USER_MRNO'',            :GV_USER_MRNO);',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'END;'))
,p_attribute_02=>'GV_ORGANIZATION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288503951092751146)
,p_event_id=>wwv_flow_imp.id(288503845657751145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(288502536642751132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289335676999358018)
,p_event_id=>wwv_flow_imp.id(288503845657751145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289334213202358004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289337158513358033)
,p_event_id=>wwv_flow_imp.id(288503845657751145)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289336173718358023)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289334070930358002)
,p_name=>'DA_CLEAR_ARTICLE_CATALOGUE'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(289333903505358001)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289334116908358003)
,p_event_id=>wwv_flow_imp.id(289334070930358002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_JOURNAL_ID_AC,P9_AUTHOR_ID_AC,P9_ND_WORD_AC,P9_ISSUE_YEAR_AC,P9_ARTICLE_TITLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289338092571358042)
,p_event_id=>wwv_flow_imp.id(289334070930358002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(288502536642751132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289338123942358043)
,p_event_id=>wwv_flow_imp.id(289334070930358002)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289334213202358004)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289338254953358044)
,p_event_id=>wwv_flow_imp.id(289334070930358002)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289336173718358023)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289335735286358019)
,p_name=>'DA_JOURNAL_IG'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(288502536642751132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289337638192358038)
,p_event_id=>wwv_flow_imp.id(289335735286358019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P9_NON_DB_JOURNAL_ID",_.IG_JOURNAL.JOURNAL_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289335876572358020)
,p_event_id=>wwv_flow_imp.id(289335735286358019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289334213202358004)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289337262237358034)
,p_name=>'DA_YEAR_IG'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(289334213202358004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289337462382358036)
,p_event_id=>wwv_flow_imp.id(289337262237358034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P9_NON_DB_ISSUE_YEAR",_.IG_YEAR.ISSUE_YEAR);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289337324386358035)
,p_event_id=>wwv_flow_imp.id(289337262237358034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289336173718358023)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289739624415105701)
,p_name=>'DA_HIDE_PAGE_ITEMS'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289739768248105702)
,p_event_id=>wwv_flow_imp.id(289739624415105701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(289338353824358045)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289740150190105706)
,p_name=>'DA_REFRESH_IG_REGION'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NON_DB_JOURNAL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289740305010105708)
,p_event_id=>wwv_flow_imp.id(289740150190105706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289334213202358004)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289740464074105709)
,p_name=>'DA_REFRESH_IG_REGION_01'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NON_DB_ISSUE_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289740629779105711)
,p_event_id=>wwv_flow_imp.id(289740464074105709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289336173718358023)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289740747257105712)
,p_name=>'DA_SEND_PAFRAMETERS_TO_DOCUMENT_VIEW_PAGE'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(289338353824358045)
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>400
,p_execution_immediate=>false
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289740822625105713)
,p_event_id=>wwv_flow_imp.id(289740747257105712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_url varchar2(2000);',
'l_app number := v(''APP_ID'');',
'l_session number := v(''APP_SESSION'');',
'v_encoded_date_time VARCHAR2(200);',
'BEGIN ',
'   :P9_URL_STORE:='''';',
'  -- IF :P74_TXT_PATIENT_MRNO IS  NOT NULL THEN ',
'        l_url := APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || 133 || '':102:''||l_session||''::::P102_DOCUMENT_TYPE,P102_TABLE_NAME,P102_PARAM_01,P102_PARAM_02,P102_PARAM_03:''||:P9_NON_DB_DOCUMENT_TYPE_AC||'',''||:P9_NON_DB_TABLE_NAME_AC ||'',''||:P9_NON_DB_JOURNAL_ID_AC ||'',''||:P9_NON_DB_IS'
||'SUE_YEAR_AC ||'',''||:P9_NON_DB_SERIAL_NO_AC ||'':'',',
'        p_checksum_type => ''SESSION'');',
'        :P9_URL_STORE := l_url;',
' ',
'--END IF;',
'END;'))
,p_attribute_02=>'P9_NON_DB_DOCUMENT_TYPE_AC,P9_NON_DB_TABLE_NAME_AC,P9_NON_DB_JOURNAL_ID_AC,P9_NON_DB_ISSUE_YEAR_AC,P9_NON_DB_SERIAL_NO_AC'
,p_attribute_03=>'P9_URL_STORE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289740941921105714)
,p_event_id=>wwv_flow_imp.id(289740747257105712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P9_URL_STORE'') !== '''') {',
'    apex.navigation.redirect($v(''P9_URL_STORE''), "Main Orde")',
'    return;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(289741032266105715)
,p_name=>'DA_ARTICLE_IG'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(289336173718358023)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(289741140282105716)
,p_event_id=>wwv_flow_imp.id(289741032266105715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P9_NON_DB_JOURNAL_ID_AC",_.IG_ARTICLE.JOURNAL_ID);',
'$s("P9_NON_DB_ISSUE_YEAR_AC",_.IG_ARTICLE.ISSUE_YEAR);',
'$s("P9_NON_DB_SERIAL_NO_AC",_.IG_ARTICLE.SERIAL_NO);',
'$s("P9_NON_DB_DOCUMENT_TYPE_AC",_.IG_ARTICLE.ARTICLE_NAME);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(286839541955017742)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initilaize SYS Context'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    HIS.SET_CONTEXT(''USER_MRNO'',            :GV_USER_MRNO);',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>286839541955017742
);
wwv_flow_imp.component_end;
end;
/

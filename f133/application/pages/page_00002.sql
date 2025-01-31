prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Book Reserve'
,p_alias=>'BOOK-RESERVE'
,p_step_title=>'Book Reserve'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showErrorAndAutoDismiss() {',
'  setTimeout(function() {',
'    // Clear all page messages',
'    apex.message.clearErrors();',
'  }, 5500);',
'};',
'',
'function bookReserveIGValidation() {',
'    var alertFound = false;',
'',
'    var v_non_db_access_no = apex.item(''P2_NON_DB_ACCESS_NO'').getValue();',
'',
'    if (v_non_db_access_no == null || v_non_db_access_no.trim() === '''') {',
'        alertFound = true;',
'    }',
'',
'    if (alertFound) {',
'        apex.item(''RESERVE_CANCEL'').setValue(''N'');',
'        $(''#P_RESERVE_CANCEL'').change();',
'        apex.message.alert(''Kindly save data first in order to cancel record.'');',
'        apex.da.cancel();',
'        return;',
'    }',
'};',
'',
'document.addEventListener(''keydown'', function (event) {',
'    if ((event.altKey && event.key === ''S'') || (event.altKey && event.key === ''s'')) {',
'        $("#BTN_SAVE").focus();',
'        var targetButton = apex.jQuery(''#BTN_SAVE'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    }',
'});',
'',
'document.addEventListener(''keydown'', function (event) {',
'    if ((event.altKey && event.key === ''C'') || (event.altKey && event.key === ''c'')) {',
'        var targetButton = apex.jQuery(''#BTN_CLEAR'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    }',
'});',
'',
'document.addEventListener(''keydown'', function (event) {',
'    if ((event.altKey && event.key === ''X'') || (event.altKey && event.key === ''x'')) {',
'        var targetButton = apex.jQuery(''#BTN_EXIT'');',
'        targetButton.trigger(''click'');',
'    }',
'});'))
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
,p_last_upd_yyyymmddhh24miss=>'20250124112714'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222053595001929009)
,p_plug_name=>'Form Heading Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Book Reserve</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222054893009929022)
,p_plug_name=>'Employee Information'
,p_parent_plug_id=>wwv_flow_imp.id(222053595001929009)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222055057657929024)
,p_plug_name=>'Left Pane Emp. Info.'
,p_parent_plug_id=>wwv_flow_imp.id(222054893009929022)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222055119403929025)
,p_plug_name=>'Right Pane Emp. Info.'
,p_parent_plug_id=>wwv_flow_imp.id(222054893009929022)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222055763950929031)
,p_plug_name=>'Non DB Items Block'
,p_parent_plug_id=>wwv_flow_imp.id(222053595001929009)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(226426712344074831)
,p_plug_name=>'Book Reserve Form Items'
,p_parent_plug_id=>wwv_flow_imp.id(222053595001929009)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(226426890250074832)
,p_plug_name=>'Region Book Reserve'
,p_parent_plug_id=>wwv_flow_imp.id(222053595001929009)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222053675768929010)
,p_plug_name=>'Book Reserve IG'
,p_region_name=>'IG_BOOK_RESERVE'
,p_parent_plug_id=>wwv_flow_imp.id(226426890250074832)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.ACCESS_NO,',
'       R.SERIAL_NO,',
'       R.RESERVE_BY,',
'       (SELECT P.NAME',
'		FROM REGISTRATION.PATIENT_SUMMARY P',
'		WHERE P.MRNO = R.RESERVE_BY) RESERVED_BY_NAME,',
'       R.RESERVE_DATE,',
'       R.RESERVE_FOR,',
'       R.RESERVE_CANCEL_BY,',
'       R.RESERVE_CANCEL_DATE,',
'',
'        (SELECT B.TITLE',
'	 	FROM SKM_LIBRARY.ACCESSION_INFORMATION T, ',
'              SKM_LIBRARY.BOOK_INFORMATION B',
'	 	WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'	 	AND T.ORGANIZATION_ID = B.ORGANIZATION_ID',
'	 	AND T.ACCESS_NO = R.ACCESS_NO',
'	 	AND T.ORGANIZATION_ID = R.ORGANIZATION_ID',
'	 	AND T.LOCATION_ID = R.LOCATION_ID',
'	 	AND T.ORDER_LOCATION_ID = R.ORDER_LOCATION_ID) TITLE,',
'',
'         (SELECT B.SUB_TITLE',
'	 	FROM SKM_LIBRARY.ACCESSION_INFORMATION T, ',
'              SKM_LIBRARY.BOOK_INFORMATION B',
'	 	WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'	 	AND T.ORGANIZATION_ID = B.ORGANIZATION_ID',
'	 	AND T.ACCESS_NO = R.ACCESS_NO',
'	 	AND T.ORGANIZATION_ID = R.ORGANIZATION_ID',
'	 	AND T.LOCATION_ID = R.LOCATION_ID',
'	 	AND T.ORDER_LOCATION_ID = R.ORDER_LOCATION_ID) SUB_TITLE,',
'',
'         (SELECT B.EDITION_NO ',
'	 	FROM SKM_LIBRARY.ACCESSION_INFORMATION T, ',
'              SKM_LIBRARY.BOOK_INFORMATION B',
'	 	WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'	 	AND T.ORGANIZATION_ID = B.ORGANIZATION_ID',
'	 	AND T.ACCESS_NO = R.ACCESS_NO',
'	 	AND T.ORGANIZATION_ID = R.ORGANIZATION_ID',
'	 	AND T.LOCATION_ID = R.LOCATION_ID',
'	 	AND T.ORDER_LOCATION_ID = R.ORDER_LOCATION_ID) EDITION_NO,',
'        ',
'        R.ORGANIZATION_ID,',
'        R.LOCATION_ID,',
'        R.ORDER_LOCATION_ID,',
'        ''N'' RESERVE_CANCEL',
'FROM TABLE(SKM_LIBRARY.PKG_BOOK_RESERVE.F_BOOK_RESERVE_QRY(P_RESERVE_FOR => :P2_EMP_CODE)) R',
'WHERE R.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'  AND R.LOCATION_ID = :GV_LOCATION_ID',
'  AND R.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2_EMP_CODE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Book Reserve IG'
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
 p_id=>wwv_flow_imp.id(222053819417929012)
,p_name=>'ACCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESS_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Access No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'500'
,p_is_required=>false
,p_max_length=>5
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(303944007535820572)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'ORGANIZATION_ID,LOCATION_ID,ORDER_LOCATION_ID'
,p_ajax_items_to_submit=>'ORGANIZATION_ID,LOCATION_ID,ORDER_LOCATION_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(222053927549929013)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Serial No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(222054043031929014)
,p_name=>'RESERVE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reserve By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(222054193926929015)
,p_name=>'RESERVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Reserve Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MM-YYYY'
,p_is_required=>false
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(222054245136929016)
,p_name=>'RESERVE_FOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_FOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reserve For'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(222054329363929017)
,p_name=>'RESERVE_CANCEL_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_CANCEL_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reserve Cancel By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(222054480867929018)
,p_name=>'RESERVE_CANCEL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_CANCEL_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cancel Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MM-YYYY'
,p_item_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(226425822368074822)
,p_name=>'RESERVED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reserved By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(238336726271072942)
,p_name=>'RESERVE_CANCEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESERVE_CANCEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Cancel'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(242162641445232722)
,p_name=>'RESERVE_BY_NAME'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cancel By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(302920092120530004)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(302920126925530005)
,p_name=>'SUB_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sub Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(302920224776530006)
,p_name=>'EDITION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDITION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Edition No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(302920322407530007)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GV_ORGANIZATION_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(302920447622530008)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GV_LOCATION_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(302920578724530009)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'LEFT'
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
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GV_ORDER_LOCATION_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(222053722771929011)
,p_internal_uid=>222053722771929011
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
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>365
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
 p_id=>wwv_flow_imp.id(225779686905788387)
,p_interactive_grid_id=>wwv_flow_imp.id(222053722771929011)
,p_static_id=>'2257797'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(225779879370788387)
,p_report_id=>wwv_flow_imp.id(225779686905788387)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(304004427480525)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(238336726271072942)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.2784
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225780354586788392)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(222053819417929012)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104.148
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225781273055788396)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(222053927549929013)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225782166519788399)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(222054043031929014)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225783049058788401)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(222054193926929015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225783914745788405)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(222054245136929016)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225784823261788408)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(222054329363929017)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225785759253788411)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(222054480867929018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(233190957437517145)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(226425822368074822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242743450383047588)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(242162641445232722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303411840806238289)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(302920092120530004)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303412767078238291)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(302920126925530005)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303413683763238294)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(302920224776530006)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303414517172238296)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(302920322407530007)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303415422292238300)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(302920447622530008)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(303416380672238302)
,p_view_id=>wwv_flow_imp.id(225779879370788387)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(302920578724530009)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(238333070723072905)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(222053595001929009)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(238337084556072945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(238333070723072905)
,p_button_name=>'BTN_SAVE'
,p_button_static_id=>'BTN_SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(302919761545530001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(238333070723072905)
,p_button_name=>'BTN_REFRESH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(238333152125072906)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(238333070723072905)
,p_button_name=>'BTN_CLEAR'
,p_button_static_id=>'BTN_CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(238337561369072950)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(238333070723072905)
,p_button_name=>'BTN_EXIT'
,p_button_static_id=>'BTN_EXIT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222054997859929023)
,p_name=>'P2_EMP_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emp. Code :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.MRNO, ',
'       P.MRNO MR_NO,',
'       P.FIRST_NAME,',
'       P.MIDDLE_NAME,',
'       P.LAST_NAME,',
'       D.DESCRIPTION DEPT,',
'       G.DESCRIPTION DESIGNATION',
'FROM REGISTRATION.PATIENT P, HRD.INFORMATION I, DEFINITIONS.DEPARTMENT D,',
'DEFINITIONS.DESIGNATION G',
'WHERE P.MRNO = I.MRNO',
'AND I.DEPARTMENT_ID = D.DEPARTMENT_ID (+)',
'AND I.DESIGNATION_ID = G.DESIGNATION_ID (+)',
'AND I.ACTIVE = ''Y''',
'AND I.joining_date IS NOT NULL',
'AND P.MRNO NOT LIKE''%DUM%''',
'AND P.MRNO NOT LIKE''%EXT%''',
'UNION',
'SELECT P.MRNO,',
'       P.MRNO MR_NO,',
'       P.FIRST_NAME,',
'       P.MIDDLE_NAME,',
'       P.LAST_NAME,',
'       NULL DEPT,',
'       HRD.F_GET_DESIGNATION_ID(P.MRNO, SYSDATE) DESIGNATION',
'',
'  FROM REGISTRATION.PATIENT P',
' WHERE P.MRNO IN',
'       (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'')',
'   AND P.PATIENT_TYPE_ID IN (SELECT SP.FIXED_VALUE',
'                               FROM ICU.SCORE_PARAMETERS SP',
'                              WHERE SP.SCORE_CATEGORY_ID = ''STD''',
'                                AND SP.ACTIVE = ''Y'')',
'   AND P.CLIENT_ID IN (SELECT SP.FIXED_VALUE',
'                         FROM ICU.SCORE_PARAMETERS SP',
'                        WHERE SP.SCORE_CATEGORY_ID = ''CLN''',
'                          AND SP.ACTIVE = ''Y'')',
'',
' ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'800'
,p_attribute_09=>'300'
,p_attribute_10=>'P2_MRNO:MR_NO,P2_FIRST_NAME:FIRST_NAME,P2_MIDDLE_NAME:MIDDLE_NAME,P2_LAST_NAME:LAST_NAME,P2_DEPARTMENT:DEPT,P2_DESIGNATION:DESIGNATION'
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
 p_id=>wwv_flow_imp.id(222055254345929026)
,p_name=>'P2_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(222055119403929025)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(224555229740711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT HP.PICTURES AS PICTURES',
'FROM PICTURES.HR_PICTURES HP',
'WHERE HP.MRNO = :P2_EMP_CODE;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222055840093929032)
,p_name=>'P2_EMP_CURR_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(222055763950929031)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222056014277929034)
,p_name=>'P2_ERROR_TXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(222055763950929031)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222056185548929035)
,p_name=>'P2_LIB_MEMBERSHIP_ACTIVE_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(222055763950929031)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222056275404929036)
,p_name=>'P2_MEMBERSHIP_LOC_RIGHTS_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(222055763950929031)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222056469691929038)
,p_name=>'P2_MEMBER_HIS_ACTIVE_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(222055763950929031)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(222057409909929048)
,p_name=>'P2_ORDER_LOC_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(222055763950929031)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226423732036074801)
,p_name=>'P2_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226423866660074802)
,p_name=>'P2_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226423969783074803)
,p_name=>'P2_MIDDLE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Middle :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226424034666074804)
,p_name=>'P2_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226424182487074805)
,p_name=>'P2_DEPARTMENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226424312223074807)
,p_name=>'P2_DESIGNATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Designation :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226424402592074808)
,p_name=>'P2_CONTACT_NO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact No. :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226424588790074809)
,p_name=>'P2_MOBILE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mobile No. :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226424620287074810)
,p_name=>'P2_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(222055057657929024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226426279952074826)
,p_name=>'P2_NON_DB_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226426712344074831)
,p_prompt=>'Title :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226426367310074827)
,p_name=>'P2_NON_DB_SUBTITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226426712344074831)
,p_prompt=>'Sub Title :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226426444181074828)
,p_name=>'P2_NON_DB_EDITION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226426712344074831)
,p_prompt=>'Edition No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302920978823530013)
,p_name=>'P2_NON_DB_ACCESS_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(226426712344074831)
,p_prompt=>'Access No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(222055312733929027)
,p_name=>'DA_POPULATE_P2_EMP_CODE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_EMP_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222055483059929028)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Populate EMP Code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT      VARCHAR2(600);',
'  V_STOP            VARCHAR2(1) := ''N'';',
'  V_PATIENT_MRNO    VARCHAR2(100);',
'BEGIN',
'',
'IF :P2_EMP_CODE IS NULL',
'THEN',
'    :P2_ERROR_TXT := '''';',
'    :P2_ERROR_TXT := ''MRNO not entered. Kindly enter MRNO.'';',
'ELSE',
'    HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                 P_DISP_MRNO  => :P2_EMP_CODE,',
'                 P_MRNO       => :P2_EMP_CODE,',
'                 P_ALERT_TEXT => V_ALERT_TEXT,',
'                 P_STOP       => V_STOP);',
'                   ',
'    IF V_STOP = ''Y'' ',
'    THEN',
'        :P2_ERROR_TXT := V_ALERT_TEXT;',
'    END IF;',
'',
'END IF;',
'    ',
'END;'))
,p_attribute_02=>'P2_EMP_CODE'
,p_attribute_03=>'P2_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226426960364074833)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Validate EMP Code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P2_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222055962816929033)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Populate EMP Statuses'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'END;',
'',
'BEGIN',
'IF :P2_EMP_CODE IS NOT NULL',
'THEN',
'    :P2_EMP_CURR_STATUS              := HRD.EMPLOYEE.GET_CURRENT_STATUS(P_MRNO => :P2_EMP_CODE);',
'    :P2_LIB_MEMBERSHIP_ACTIVE_STATUS := SKM_LIBRARY.PKG_S21FRM00006.IS_MEMBER_ACTIVE(P_MRNO => :P2_EMP_CODE);',
'    :P2_MEMBERSHIP_LOC_RIGHTS_STATUS := SKM_LIBRARY.PKG_S21FRM00026.MEMBERSHIP_LOCATION_RIGHTS(P_MRNO => :P2_EMP_CODE);',
'    ',
'    BEGIN   --Check Library Member Active Status in HIS',
'       SELECT P.ACTIVE',
'         INTO :P2_MEMBER_HIS_ACTIVE_STATUS',
'         FROM REGISTRATION.PATIENT P',
'        WHERE P.MRNO = :P2_EMP_CODE',
'          AND P.MRNO IN (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'');',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	 :P2_MEMBER_HIS_ACTIVE_STATUS := ''N'';',
'    END;',
'END IF;',
'    ',
'END;',
''))
,p_attribute_02=>'P2_EMP_CODE'
,p_attribute_03=>'P2_EMP_CURR_STATUS,P2_LIB_MEMBERSHIP_ACTIVE_STATUS,P2_MEMBERSHIP_LOC_RIGHTS_STATUS,P2_MEMBER_HIS_ACTIVE_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222056520078929039)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Check EMP Current Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P2_EMP_CURR_STATUS = ''INACTIVE'' AND :P2_EMP_CODE IS NOT NULL THEN',
'        IF :P2_MEMBER_HIS_ACTIVE_STATUS = ''N'' THEN',
'            :P2_ERROR_TXT := '''';',
'            :P2_ERROR_TXT := ''This employee is inactive.'';',
'        END IF;',
'    ELSIF :P2_EMP_CURR_STATUS = ''SUSPENDED'' THEN',
'        :P2_ERROR_TXT := '''';',
'        :P2_ERROR_TXT := ''This employee is suspended.'';',
'    ELSIF :P2_EMP_CURR_STATUS = ''PENDING FOR FINAL SETTLEMENT'' THEN',
'        :P2_ERROR_TXT := '''';',
'        :P2_ERROR_TXT := ''This employee is pending for final settlement.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P2_EMP_CURR_STATUS,P2_MEMBER_HIS_ACTIVE_STATUS,P2_EMP_CURR_STATUS,P2_EMP_CURR_STATUS'
,p_attribute_03=>'P2_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226425538747074819)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Validate EMP Current Status'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P2_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226425205450074816)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Check MEMBER_HIS_ACTIVE Status Equals N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --P2_MEMBER_HIS_ACTIVE_STATUS       Checks From REGISTRATION.PATIENT table',
'    --P2_LIB_MEMBERSHIP_ACTIVE_STATUS   Checks From SKM_LIBRARY.MEMBERSHIP',
'',
'    IF :P2_MEMBER_HIS_ACTIVE_STATUS  = ''N'' AND :P2_EMP_CODE IS NOT NULL',
'    THEN',
'        :P2_ERROR_TXT := '''';',
'        :P2_ERROR_TXT := ''This employee membership has been cancelled.'';',
'    END IF;',
'    ',
'    IF :P2_MEMBER_HIS_ACTIVE_STATUS = ''Y'' AND :P2_LIB_MEMBERSHIP_ACTIVE_STATUS = ''N'' AND :P2_EMP_CODE IS NOT NULL',
'    THEN',
'        :P2_ERROR_TXT := '''';',
'        :P2_ERROR_TXT := ''Membership is not assigned to this employee.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P2_EMP_CODE ,P2_LIB_MEMBERSHIP_ACTIVE_STATUS,P2_MEMBER_HIS_ACTIVE_STATUS'
,p_attribute_03=>'P2_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226425328929074817)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Validate IS_MEMBER_ACTIVE Status Equals N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                          message: ($v(''P2_ERROR_TXT'')),',
'                          unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222057268016929046)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'Check MEMBERSHIP_LOC_RIGHTS Status Equals N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P2_MEMBERSHIP_LOC_RIGHTS_STATUS = ''N'' AND :P2_EMP_CODE IS NOT NULL',
'    THEN',
'        :P2_ERROR_TXT := '''';',
'        :P2_ERROR_TXT := ''The user '' || :P2_EMP_CODE || '' is not an authorized member of the location '' || :P2_ORDER_LOC_DESC;',
'    END IF;',
'END;'))
,p_attribute_02=>'P2_MEMBERSHIP_LOC_RIGHTS_STATUS,P2_EMP_CODE,P2_ORDER_LOC_DESC'
,p_attribute_03=>'P2_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226425459309074818)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>'Validate MEMBERSHIP_LOC_RIGHTS Status Equals N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                          message: ($v(''P2_ERROR_TXT'')),',
'                          unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222056673723929040)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_name=>'Query EMP Data Upon IS_MEMBER_ACTIVE Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P2_LIB_MEMBERSHIP_ACTIVE_STATUS = ''Y'' AND :P2_EMP_CODE IS NOT NULL',
'THEN',
'BEGIN',
'     SELECT --MRNO,',
'            MR_NO,',
'            FIRST_NAME,',
'            MIDDLE_NAME,',
'            LAST_NAME,',
'            DEPT,',
'            DESIGNATION',
'      INTO --:P2_EMP_CODE,',
'           :P2_MRNO,',
'           :P2_FIRST_NAME,',
'           :P2_MIDDLE_NAME,',
'           :P2_LAST_NAME,',
'           :P2_DEPARTMENT,',
'           :P2_DESIGNATION',
'    FROM(',
'     SELECT P.MRNO        MRNO,',
'            P.MRNO        MR_NO,',
'            P.FIRST_NAME,',
'            P.MIDDLE_NAME,',
'            P.LAST_NAME,',
'            D.DESCRIPTION DEPT,',
'            G.DESCRIPTION DESIGNATION        ',
'        FROM REGISTRATION.PATIENT    P,',
'             HRD.INFORMATION         I,',
'             DEFINITIONS.DEPARTMENT  D,',
'             DEFINITIONS.DESIGNATION G',
'       WHERE P.MRNO = I.MRNO',
'         AND P.MRNO = :P2_EMP_CODE',
'         AND I.DEPARTMENT_ID = D.DEPARTMENT_ID(+)',
'         AND I.DESIGNATION_ID = G.DESIGNATION_ID(+)',
'         AND I.ACTIVE = ''Y''',
'       UNION',
'     SELECT P.MRNO,',
'           P.MRNO MR_NO,',
'           P.FIRST_NAME,',
'           P.MIDDLE_NAME,',
'           P.LAST_NAME,',
'           NULL DEPT,',
'           HRD.F_GET_DESIGNATION_ID(P.MRNO, SYSDATE) DESIGNATION',
'',
'      FROM REGISTRATION.PATIENT P',
'     WHERE P.MRNO = :P2_EMP_CODE ',
'     AND P.MRNO IN (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'')',
'       AND P.PATIENT_TYPE_ID IN (SELECT SP.FIXED_VALUE',
'                                   FROM ICU.SCORE_PARAMETERS SP',
'                                  WHERE SP.SCORE_CATEGORY_ID = ''STD''',
'                                    AND SP.ACTIVE = ''Y'')',
'       AND P.CLIENT_ID IN (SELECT SP.FIXED_VALUE',
'                             FROM ICU.SCORE_PARAMETERS SP',
'                            WHERE SP.SCORE_CATEGORY_ID = ''CLN''',
'                              AND SP.ACTIVE = ''Y''))',
'        ORDER BY MRNO;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;',
'',
'BEGIN',
'      SELECT P.PHONE, P.MOBILE, P.EMAIL',
'        INTO :P2_CONTACT_NO, :P2_MOBILE, :P2_EMAIL',
'        FROM SKM_LIBRARY.MEMBERSHIP P',
'       WHERE P.MRNO = :P2_EMP_CODE',
'         AND P.ORGANIZATION_ID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'         AND P.ACTIVE = ''Y'';',
'',
'      IF :P2_CONTACT_NO IS NULL THEN',
'        SELECT R.PHONE_NUMBER',
'          INTO :P2_CONTACT_NO',
'          FROM REGISTRATION.PATIENT R',
'         WHERE R.MRNO = :P2_EMP_CODE;',
'      END IF;',
'',
'      IF :P2_MOBILE IS NULL THEN',
'        SELECT R.PERMANANT_PHONE',
'          INTO :P2_MOBILE',
'          FROM REGISTRATION.PATIENT R',
'         WHERE R.MRNO = :P2_EMP_CODE;',
'      END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;',
'',
'END IF;'))
,p_attribute_02=>'P2_LIB_MEMBERSHIP_ACTIVE_STATUS,P2_EMP_CODE'
,p_attribute_03=>'P2_MRNO,P2_FIRST_NAME,P2_MIDDLE_NAME,P2_LAST_NAME,P2_DEPARTMENT,P2_DESIGNATION,P2_CONTACT_NO,P2_MOBILE,P2_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222055686773929030)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_name=>'Query EMP Picture'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P2_EMP_CODE IS NOT NULL',
'THEN',
'    SELECT HP.PICTURES',
'    INTO :P2_IMAGE',
'    FROM PICTURES.HR_PICTURES HP',
'    WHERE HP.MRNO = :P2_EMP_CODE;',
'END IF;',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN NULL;'))
,p_attribute_02=>'P2_EMP_CODE'
,p_attribute_03=>'P2_IMAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238337335627072948)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238337084556072945)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238336008678072935)
,p_event_id=>wwv_flow_imp.id(222055312733929027)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_name=>'Refresh IG'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(222053675768929010)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P2_EMP_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(222057526506929049)
,p_name=>'DA_SET_ORDER_LOCATION_DESCRIPTION'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(222057624753929050)
,p_event_id=>wwv_flow_imp.id(222057526506929049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ORDER_LOC_DESC'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DEFINITIONS.DESCRIPTIONS.F_GET_ORDER_LOCATION_DESC(P_LOCATION_ID        => :GV_LOCATION_ID,',
'                                                       P_ORDER_LOCATION_ID  => :GV_ORDER_LOCATION_ID)',
'    INTO :P2_ORDER_LOC_DESC ',
'FROM DUAL;',
'',
'RETURN :P2_ORDER_LOC_DESC;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(226426517661074829)
,p_name=>'DA_POPULATE_ITEMS'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(222053675768929010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226426667475074830)
,p_event_id=>wwv_flow_imp.id(226426517661074829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P2_NON_DB_TITLE", _.IG_BOOK_RESERVE.TITLE);',
'$s("P2_NON_DB_SUBTITLE", _.IG_BOOK_RESERVE.SUBTITLE);',
'$s("P2_NON_DB_EDITION_NO", _.IG_BOOK_RESERVE.EDITION_NO);',
'$s("P2_NON_DB_ACCESS_NO", _.IG_BOOK_RESERVE.ACCESS_NO);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(226427391922074837)
,p_name=>'DA_UPON_CHANGE_ACCESS_NO'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(222053675768929010)
,p_triggering_element=>'ACCESS_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226427434766074838)
,p_event_id=>wwv_flow_imp.id(226427391922074837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Populate Book Issued Info'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'	V_ISSUED_TO VARCHAR2(300);',
'	V_BOOK_RESERVED VARCHAR2(300);',
'BEGIN',
'    BEGIN',
'        HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'        HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'        HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    END;',
'    ',
'    BEGIN',
'',
'    	 V_ISSUED_TO := skm_library.pkg_S21FRM00006.IS_BOOK_ISSUED(P_ACCESS_NO => :ACCESS_NO);',
'         ',
'    	  IF V_ISSUED_TO IS NOT NULL ',
'          THEN',
'              :P2_ERROR_TXT := '''';',
'              :P2_ERROR_TXT := V_ISSUED_TO;',
'    		ELSE',
'    	  	BEGIN',
'    			 SELECT B.TITLE, B.SUB_TITLE, B.EDITION_NO ',
'    			 INTO :TITLE, :SUB_TITLE, :EDITION_NO',
'    			 FROM SKM_LIBRARY.ACCESSION_INFORMATION T, ',
'                      SKM_LIBRARY.BOOK_INFORMATION B',
'    			 WHERE T.BOOK_INFORMATION_ID    = B.BOOK_INFORMATION_ID',
'    			   AND T.ORGANIZATION_ID        = :ORGANIZATION_ID',
'    	           AND T.LOCATION_ID            = :LOCATION_ID',
'    		       AND T.ORDER_LOCATION_ID      = :ORDER_LOCATION_ID',
'    			   AND T.ACCESS_NO              = :ACCESS_NO;',
'                   ',
'    			EXCEPTION',
'    				WHEN NO_DATA_FOUND THEN NULL;		',
'    			END;',
'        END IF;',
'     END;',
'',
'     BEGIN',
'     	V_BOOK_RESERVED := skm_library.pkg_S21FRM00006.IS_BOOK_RESERVED(P_ACCESS_NO  => :ACCESS_NO,',
'     	                                                                P_IDENTIFIER => ''R'');',
'     	IF V_BOOK_RESERVED IS NOT NULL ',
'        THEN',
'            :P2_ERROR_TXT := '''';',
'            :P2_ERROR_TXT := V_BOOK_RESERVED;',
'     	ELSE',
'     		NULL;',
'     	END IF;',
'    END;',
'END;'))
,p_attribute_02=>'ACCESS_NO,ORGANIZATION_ID,LOCATION_ID,ORDER_LOCATION_ID,TITLE,SUB_TITLE,EDITION_NO'
,p_attribute_03=>'P2_ERROR_TXT,TITLE,SUB_TITLE,EDITION_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226427606180074840)
,p_event_id=>wwv_flow_imp.id(226427391922074837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Validate Book Issued Info'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P2_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'document.getElementById(''BTN_SAVE'').disabled = true;',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226427517471074839)
,p_event_id=>wwv_flow_imp.id(226427391922074837)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Reserved By and Date'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'		SELECT P.MRNO, P.NAME',
'		INTO :RESERVE_BY, ',
'             :RESERVED_BY_NAME',
'		FROM REGISTRATION.PATIENT_SUMMARY P',
'		WHERE P.MRNO IN (SELECT U.MRNO FROM SECURITY.USERS U WHERE U.USERID = :GV_USER_ID);',
'',
'		EXCEPTION',
'			WHEN NO_DATA_FOUND THEN NULL;',
'	END;',
'    ',
'     :RESERVE_DATE := TO_CHAR(SYSDATE, ''DD-MM-YYYY'');	',
'END;',
'',
''))
,p_attribute_02=>'RESERVE_BY,RESERVED_BY_NAME,RESERVE_DATE'
,p_attribute_03=>'RESERVE_BY,RESERVED_BY_NAME,RESERVE_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302923674936530040)
,p_event_id=>wwv_flow_imp.id(226427391922074837)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238337084556072945)
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238333226577072907)
,p_name=>'DA_CLEAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(238333152125072906)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238333371836072908)
,p_event_id=>wwv_flow_imp.id(238333226577072907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_EMP_CODE,P2_IMAGE,P2_EMP_CURR_STATUS,P2_MEMBER_HIS_ACTIVE_STATUS,P2_MEMBERSHIP_LOC_RIGHTS_STATUS,P2_ERROR_TXT,P2_FIRST_NAME,P2_MIDDLE_NAME,P2_LAST_NAME,P2_DEPARTMENT,P2_DESIGNATION,P2_EMAIL,P2_CONTACT_NO,P2_MOBILE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238334561265072920)
,p_event_id=>wwv_flow_imp.id(238333226577072907)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(222053675768929010)
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302922914748530033)
,p_event_id=>wwv_flow_imp.id(238333226577072907)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238337084556072945)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238336838927072943)
,p_name=>'DA_UPON_CHECK_BOX_CHANGED'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(222053675768929010)
,p_triggering_element=>'RESERVE_CANCEL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302920859718530012)
,p_event_id=>wwv_flow_imp.id(238336838927072943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate Book Reserve IG'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'bookReserveIGValidation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238336954862072944)
,p_event_id=>wwv_flow_imp.id(238336838927072943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :RESERVE_CANCEL = ''Y''',
'THEN',
'	:RESERVE_CANCEL_DATE 	:= TO_CHAR(SYSDATE, ''DD-MM-YYYY'');',
'	:RESERVE_CANCEL_BY 		:= :GV_USER_MRNO;',
'	:RESERVE_BY_NAME       := :GV_USER_NAME;',
'ELSE',
'	 :RESERVE_CANCEL_DATE 	:= '''';',
'END IF;'))
,p_attribute_02=>'RESERVE_CANCEL'
,p_attribute_03=>'RESERVE_CANCEL_DATE,RESERVE_CANCEL_BY,RESERVE_BY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238337167656072946)
,p_name=>'DA_DISABLE_BTN_SAVE'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302920761146530011)
,p_event_id=>wwv_flow_imp.id(238337167656072946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Make IG Editable'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("IG_BOOK_RESERVE").widget().interactiveGrid("getActions").set("edit", true);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238337295595072947)
,p_event_id=>wwv_flow_imp.id(238337167656072946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238337084556072945)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P2_EMP_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302919808432530002)
,p_name=>'DA_REFRESH'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(302919761545530001)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302922250698530026)
,p_event_id=>wwv_flow_imp.id(302919808432530002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302919940456530003)
,p_event_id=>wwv_flow_imp.id(302919808432530002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(222053675768929010)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302922375371530027)
,p_event_id=>wwv_flow_imp.id(302919808432530002)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238337084556072945)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P2_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302922718689530031)
,p_name=>'DA_SAVE'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(238337084556072945)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302922861195530032)
,p_event_id=>wwv_flow_imp.id(302922718689530031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IG_BOOK_RESERVE").widget().interactiveGrid("getViews", "grid").model;',
'if (model.isChanged()) {',
'    model.save(function (error, responseData) {',
'        if (error != null) {',
'            apex.message.showErrors(error);',
'        } else {',
'            apex.message.showPageSuccess(''Record saved successfully'');',
'            apex.region("IG_BOOK_RESERVE").refresh();',
'        }',
'    });',
'};'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(226425056814074814)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(222053675768929010)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Reserve IG - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_BOOK_RESERVE_TBL    SKM_LIBRARY.PKG_BOOK_RESERVE.BOOK_RESERVE_TBL;',
'  V_ERROR    	   		VARCHAR2(4000);',
'  V_STOP		   		VARCHAR2(4000);',
'  V_ALERT_TEXT	   		VARCHAR2(4000);',
'  V_SERIAL_NO           NUMBER;',
'BEGIN',
'',
'    :ORGANIZATION_ID    := :GV_ORGANIZATION_ID;',
'    :LOCATION_ID        := :GV_LOCATION_ID;',
'    :ORDER_LOCATION_ID  := :GV_ORDER_LOCATION_ID;',
'    :RESERVE_FOR        := :P2_EMP_CODE;',
'',
'  CASE :APEX$ROW_STATUS',
'    ',
'    WHEN ''C'' THEN',
'',
'    V_BOOK_RESERVE_TBL(1).ACCESS_NO    	        := :ACCESS_NO;',
'    V_BOOK_RESERVE_TBL(1).SERIAL_NO  		    := :SERIAL_NO;',
'    V_BOOK_RESERVE_TBL(1).RESERVE_BY            := :RESERVE_BY;',
'	V_BOOK_RESERVE_TBL(1).RESERVE_DATE          := TO_DATE(:RESERVE_DATE, ''DD-MM-YYYY'');',
'    V_BOOK_RESERVE_TBL(1).RESERVE_FOR           := :RESERVE_FOR;',
'    V_BOOK_RESERVE_TBL(1).RESERVE_CANCEL_BY  	:= :RESERVE_CANCEL_BY;',
'	V_BOOK_RESERVE_TBL(1).RESERVE_CANCEL_DATE 	:= TO_DATE(:RESERVE_CANCEL_DATE, ''DD-MM-YYYY'');',
'    V_BOOK_RESERVE_TBL(1).ORGANIZATION_ID       := :GV_ORGANIZATION_ID;',
'    V_BOOK_RESERVE_TBL(1).LOCATION_ID  	        := :GV_LOCATION_ID;',
'	V_BOOK_RESERVE_TBL(1).ORDER_LOCATION_ID 	:= :GV_ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_BOOK_RESERVE.P_BOOK_RESERVE_INS(P_DATA    	        => V_BOOK_RESERVE_TBL,',
'                                                    P_BOOK_RESERVE_FOR  => :RESERVE_FOR,',
'												    P_STOP              => V_STOP,',
'												    P_ALERT_TEXT        => V_ALERT_TEXT);',
'    WHEN ''U'' THEN',
'	',
'    V_BOOK_RESERVE_TBL(1).ACCESS_NO    	        := :ACCESS_NO;',
'    V_BOOK_RESERVE_TBL(1).SERIAL_NO  		    := :SERIAL_NO;',
'    V_BOOK_RESERVE_TBL(1).RESERVE_BY            := :RESERVE_BY;',
'	V_BOOK_RESERVE_TBL(1).RESERVE_DATE          := TO_DATE(:RESERVE_DATE, ''DD-MM-YYYY'');',
'    V_BOOK_RESERVE_TBL(1).RESERVE_FOR           := :RESERVE_FOR;',
'    V_BOOK_RESERVE_TBL(1).RESERVE_CANCEL_BY  	:= :RESERVE_CANCEL_BY;',
'	V_BOOK_RESERVE_TBL(1).RESERVE_CANCEL_DATE 	:= TO_DATE(:RESERVE_CANCEL_DATE, ''DD-MM-YYYY'');',
'    V_BOOK_RESERVE_TBL(1).ORGANIZATION_ID       := :GV_ORGANIZATION_ID;',
'    V_BOOK_RESERVE_TBL(1).LOCATION_ID  	        := :GV_LOCATION_ID;',
'	V_BOOK_RESERVE_TBL(1).ORDER_LOCATION_ID 	:= :GV_ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_BOOK_RESERVE.P_BOOK_RESERVE_UPD(P_DATA    	        => V_BOOK_RESERVE_TBL,',
'												    P_STOP              => V_STOP,',
'												    P_ALERT_TEXT        => V_ALERT_TEXT);',
'    WHEN ''D'' THEN',
'',
'    V_BOOK_RESERVE_TBL(1).ACCESS_NO    	        := :ACCESS_NO;',
'    V_BOOK_RESERVE_TBL(1).SERIAL_NO  		    := :SERIAL_NO;',
'    V_BOOK_RESERVE_TBL(1).RESERVE_BY            := :RESERVE_BY;',
'	V_BOOK_RESERVE_TBL(1).RESERVE_DATE          := TO_DATE(:RESERVE_DATE, ''DD-MM-YYYY'');',
'    V_BOOK_RESERVE_TBL(1).RESERVE_FOR           := :RESERVE_FOR;',
'    V_BOOK_RESERVE_TBL(1).RESERVE_CANCEL_BY  	:= :RESERVE_CANCEL_BY;',
'	V_BOOK_RESERVE_TBL(1).RESERVE_CANCEL_DATE 	:= TO_DATE(:RESERVE_CANCEL_DATE, ''DD-MM-YYYY'');',
'    V_BOOK_RESERVE_TBL(1).ORGANIZATION_ID       := :GV_ORGANIZATION_ID;',
'    V_BOOK_RESERVE_TBL(1).LOCATION_ID  	        := :GV_LOCATION_ID;',
'	V_BOOK_RESERVE_TBL(1).ORDER_LOCATION_ID 	:= :GV_ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_BOOK_RESERVE.P_BOOK_RESERVE_DEL(P_DATA    	        => V_BOOK_RESERVE_TBL,',
'												    P_STOP              => V_STOP,',
'												    P_ALERT_TEXT        => V_ALERT_TEXT);',
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
,p_internal_uid=>226425056814074814
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(289743030299105735)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize SYS Context'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>289743030299105735
);
wwv_flow_imp.component_end;
end;
/

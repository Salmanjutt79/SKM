prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Book Issue'
,p_alias=>'BOOK-ISSUE'
,p_step_title=>'Book Issue'
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
'    var v_non_db_access_no = apex.item(''P3_NON_DB_ACCESS_NO'').getValue();',
'',
'    if (v_non_db_access_no == null || v_non_db_access_no.trim() === '''') {',
'        alertFound = true;',
'    }',
'',
'    if (alertFound) {',
'        apex.item(''BOOK_RECEIVED'').setValue(''N'');',
'        $(''#BOOK_RECEIVED'').change();',
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
,p_last_upd_yyyymmddhh24miss=>'20250124122625'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(464066436149968339)
,p_plug_name=>'Form Heading Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Book Issue</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(464067734157968352)
,p_plug_name=>'Employee Information'
,p_parent_plug_id=>wwv_flow_imp.id(464066436149968339)
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
 p_id=>wwv_flow_imp.id(464067898805968354)
,p_plug_name=>'Left Pane Emp. Info.'
,p_parent_plug_id=>wwv_flow_imp.id(464067734157968352)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(464067960551968355)
,p_plug_name=>'Right Pane Emp. Info.'
,p_parent_plug_id=>wwv_flow_imp.id(464067734157968352)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(464068605098968361)
,p_plug_name=>'Non DB Items Block'
,p_parent_plug_id=>wwv_flow_imp.id(464066436149968339)
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
 p_id=>wwv_flow_imp.id(468439553492114161)
,p_plug_name=>'Book Reserve Form Items'
,p_parent_plug_id=>wwv_flow_imp.id(464066436149968339)
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
 p_id=>wwv_flow_imp.id(468439731398114162)
,p_plug_name=>'Region Book Reserve'
,p_parent_plug_id=>wwv_flow_imp.id(464066436149968339)
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
 p_id=>wwv_flow_imp.id(464066516916968340)
,p_plug_name=>'Book Issue IG'
,p_region_name=>'IG_BOOK_ISSUE'
,p_parent_plug_id=>wwv_flow_imp.id(468439731398114162)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT H.BATCH_NO,',
'       H.SERIAL_NO,',
'       H.ACCESS_NO,',
'       H.ISSUED_TO,',
'       H.ISSUED_BY,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => H.ISSUED_BY) ISSUED_BY_NAME,',
'       H.ISSUED_DATE,',
'       (H.ISSUED_DATE + 13) DUE_DATE,',
'       (SELECT B.TITLE',
'        FROM SKM_LIBRARY.ACCESSION_INFORMATION T, SKM_LIBRARY.BOOK_INFORMATION B',
'        WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'        AND T.ORGANIZATION_ID       = B.ORGANIZATION_ID',
'        AND T.ACCESS_NO             = H.ACCESS_NO',
'        AND T.ORGANIZATION_ID       = H.ORGANIZATION_ID',
'        AND T.LOCATION_ID           = H.LOCATION_ID',
'        AND T.ORDER_LOCATION_ID     = H.ORDER_LOCATION_ID) TITLE,',
'       ',
'       (SELECT  B.SUB_TITLE',
'        FROM SKM_LIBRARY.ACCESSION_INFORMATION T, SKM_LIBRARY.BOOK_INFORMATION B',
'        WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'        AND T.ORGANIZATION_ID       = B.ORGANIZATION_ID',
'        AND T.ACCESS_NO             = H.ACCESS_NO',
'        AND T.ORGANIZATION_ID       = H.ORGANIZATION_ID',
'        AND T.LOCATION_ID           = H.LOCATION_ID',
'        AND T.ORDER_LOCATION_ID     = H.ORDER_LOCATION_ID) SUB_TITLE, ',
'        ',
'       (SELECT B.EDITION_NO ',
'        FROM SKM_LIBRARY.ACCESSION_INFORMATION T, SKM_LIBRARY.BOOK_INFORMATION B',
'        WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'        AND T.ORGANIZATION_ID       = B.ORGANIZATION_ID',
'        AND T.ACCESS_NO             = H.ACCESS_NO',
'        AND T.ORGANIZATION_ID       = H.ORGANIZATION_ID',
'        AND T.LOCATION_ID           = H.LOCATION_ID',
'        AND T.ORDER_LOCATION_ID     = H.ORDER_LOCATION_ID) EDITION_NO, ',
'        ',
'       H.EXTENDED_DATE,',
'       H.FINE,',
'       H.RECEIVED_DATE,',
'       H.RECEIVED_BY,',
'       (SELECT P.NAME',
'		FROM REGISTRATION.PATIENT_SUMMARY P',
'		WHERE P.MRNO = H.RECEIVED_BY) RECEIVED_BY_NAME,',
'       H.ORGANIZATION_ID,',
'       H.LOCATION_ID,',
'       H.ORDER_LOCATION_ID,',
'       ''N'' BOOK_RECEIVED',
'FROM TABLE(SKM_LIBRARY.PKG_LIBRARY_HISTORY.F_LIBRARY_HISTORY_QRY(P_ISSUED_TO => :P3_EMP_CODE)) H',
'WHERE H.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'  AND H.LOCATION_ID = :GV_LOCATION_ID',
'  AND H.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P3_EMP_CODE'
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
 p_id=>wwv_flow_imp.id(242160597514232701)
,p_name=>'BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(242160624849232702)
,p_name=>'ISSUED_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUED_TO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(242160775909232703)
,p_name=>'ISSUED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(242160858118232704)
,p_name=>'ISSUED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued By Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>32767
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
 p_id=>wwv_flow_imp.id(242160906265232705)
,p_name=>'ISSUED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MM-YYYY'
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
 p_id=>wwv_flow_imp.id(242161026341232706)
,p_name=>'EXTENDED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Extended Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MM-YYYY'
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
 p_id=>wwv_flow_imp.id(242161107484232707)
,p_name=>'FINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fine'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(242161204299232708)
,p_name=>'RECEIVED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Received Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(242161363262232709)
,p_name=>'RECEIVED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Received By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(242161682179232712)
,p_name=>'BOOK_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_RECEIVED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Received'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(242162133526232717)
,p_name=>'RECEIVED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECEIVED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Received By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(242162328430232719)
,p_name=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Due Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(464066660565968342)
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
 p_id=>wwv_flow_imp.id(464066768697968343)
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
 p_id=>wwv_flow_imp.id(464067403386968349)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GV_ORGANIZATION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(464067457964968350)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'CENTER'
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
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GV_LOCATION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(464067548219968351)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GV_ORDER_LOCATION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(468438790042114153)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Title'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(468438877787114154)
,p_name=>'SUB_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sub Title'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(468439016357114155)
,p_name=>'EDITION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EDITION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Edition No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(464066563919968341)
,p_internal_uid=>464066563919968341
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
 p_id=>wwv_flow_imp.id(467792528053827717)
,p_interactive_grid_id=>wwv_flow_imp.id(464066563919968341)
,p_static_id=>'2257797'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(467792720518827717)
,p_report_id=>wwv_flow_imp.id(467792528053827717)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242166558592233156)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(242160597514232701)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90.994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242167428373233160)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(242160624849232702)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242168309052233163)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(242160775909232703)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242169251092233165)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(242160858118232704)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176.955
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242170124571233167)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(242160906265232705)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125.994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242171011474233170)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(242161026341232706)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242171934625233172)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(242161107484232707)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79.99400381469727
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242172836772233175)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(242161204299232708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242173776010233177)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(242161363262232709)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242188561859256106)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(242161682179232712)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.943
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242668030640776636)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(242162133526232717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242683138788839128)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(242162328430232719)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.955
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(467793195734827722)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(464066660565968342)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92.96600000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(467794114203827726)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(464066768697968343)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(467799456567827744)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(464067403386968349)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(467800376637827748)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(464067457964968350)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(467801260424827750)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(464067548219968351)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(475204656604556479)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(468438790042114153)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(475205647375556481)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(468438877787114154)
,p_is_visible=>false
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
 p_id=>wwv_flow_imp.id(475206732398556487)
,p_view_id=>wwv_flow_imp.id(467792720518827717)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(468439016357114155)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480345911871112235)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(464066436149968339)
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
 p_id=>wwv_flow_imp.id(242025548302039379)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(480345911871112235)
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
 p_id=>wwv_flow_imp.id(302921789164530021)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(480345911871112235)
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
 p_id=>wwv_flow_imp.id(242025924321039379)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(480345911871112235)
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
 p_id=>wwv_flow_imp.id(242025118916039377)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(480345911871112235)
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
 p_id=>wwv_flow_imp.id(242161753598232713)
,p_name=>'P3_BOOK_RESERVED_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(302921071728530014)
,p_name=>'P3_NON_DB_ACCESS_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(468439553492114161)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464078838661968405)
,p_name=>'P3_EMP_CURR_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464079012845968407)
,p_name=>'P3_ERROR_TXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464079184116968408)
,p_name=>'P3_LIB_MEMBERSHIP_ACTIVE_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464079273972968409)
,p_name=>'P3_MEMBERSHIP_LOC_RIGHTS_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464079468259968411)
,p_name=>'P3_MEMBER_HIS_ACTIVE_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464080408477968421)
,p_name=>'P3_ORDER_LOC_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(464068605098968361)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464082106433968403)
,p_name=>'P3_EMP_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
,p_attribute_10=>'P3_MRNO:MR_NO,P3_FIRST_NAME:FIRST_NAME,P3_MIDDLE_NAME:MIDDLE_NAME,P3_LAST_NAME:LAST_NAME,P3_DEPARTMENT:DEPT,P3_DESIGNATION:DESIGNATION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(464085839420968409)
,p_name=>'P3_IMAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(464067960551968355)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(224555229740711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT HP.PICTURES AS PICTURES',
'FROM PICTURES.HR_PICTURES HP',
'WHERE HP.MRNO = :P3_EMP_CODE;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(468440174942114166)
,p_name=>'P3_NON_DB_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(468439553492114161)
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
 p_id=>wwv_flow_imp.id(468440262300114167)
,p_name=>'P3_NON_DB_SUBTITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(468439553492114161)
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
 p_id=>wwv_flow_imp.id(468440339171114168)
,p_name=>'P3_NON_DB_EDITION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(468439553492114161)
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
 p_id=>wwv_flow_imp.id(468450840610114181)
,p_name=>'P3_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(468450975234114182)
,p_name=>'P3_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451078357114183)
,p_name=>'P3_MIDDLE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451143240114184)
,p_name=>'P3_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451291061114185)
,p_name=>'P3_DEPARTMENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451420797114187)
,p_name=>'P3_DESIGNATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451511166114188)
,p_name=>'P3_CONTACT_NO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451697364114189)
,p_name=>'P3_MOBILE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
 p_id=>wwv_flow_imp.id(468451728861114190)
,p_name=>'P3_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(464067898805968354)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242031042964039385)
,p_name=>'DA_POPULATE_P3_EMP_CODE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_EMP_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242033035475039390)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
'IF :P3_EMP_CODE IS NULL ',
'THEN',
'    :P3_ERROR_TXT := '''';',
'    :P3_ERROR_TXT := ''MRNO not entered. Kindly enter MRNO.'';',
'ELSE',
'    HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                 P_DISP_MRNO  => :P3_EMP_CODE,',
'                 P_MRNO       => :P3_EMP_CODE,',
'                 P_ALERT_TEXT => V_ALERT_TEXT,',
'                 P_STOP       => V_STOP);',
'                   ',
'    IF V_STOP = ''Y'' ',
'    THEN',
'        :P3_ERROR_TXT := V_ALERT_TEXT;',
'    END IF;',
'',
'END IF;',
'    ',
'END;'))
,p_attribute_02=>'P3_EMP_CODE'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242034531065039391)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Validate EMP Code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P3_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242033525008039391)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
'IF :P3_EMP_CODE IS NOT NULL',
'THEN',
'    :P3_EMP_CURR_STATUS              := HRD.EMPLOYEE.GET_CURRENT_STATUS(P_MRNO => :P3_EMP_CODE);',
'    :P3_LIB_MEMBERSHIP_ACTIVE_STATUS := SKM_LIBRARY.PKG_S21FRM00006.IS_MEMBER_ACTIVE(P_MRNO => :P3_EMP_CODE);',
'    :P3_MEMBERSHIP_LOC_RIGHTS_STATUS := SKM_LIBRARY.PKG_S21FRM00026.MEMBERSHIP_LOCATION_RIGHTS(P_MRNO => :P3_EMP_CODE);',
'    ',
'    BEGIN   --Check Library Member Active Status in HIS',
'       SELECT P.ACTIVE',
'         INTO :P3_MEMBER_HIS_ACTIVE_STATUS',
'         FROM REGISTRATION.PATIENT P',
'        WHERE P.MRNO = :P3_EMP_CODE',
'          AND P.MRNO IN (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'');',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	 :P3_MEMBER_HIS_ACTIVE_STATUS := ''N'';',
'    END;',
'END IF;',
'    ',
'END;',
''))
,p_attribute_02=>'P3_EMP_CODE'
,p_attribute_03=>'P3_EMP_CURR_STATUS,P3_LIB_MEMBERSHIP_ACTIVE_STATUS,P3_MEMBERSHIP_LOC_RIGHTS_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242031504795039386)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Check EMP Current Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P3_EMP_CURR_STATUS = ''INACTIVE'' AND :P3_EMP_CODE IS NOT NULL THEN',
'        IF :P3_MEMBER_HIS_ACTIVE_STATUS = ''N'' THEN',
'            :P3_ERROR_TXT := '''';',
'            :P3_ERROR_TXT := ''This employee is inactive.'';',
'        END IF;',
'    ELSIF :P3_EMP_CURR_STATUS = ''SUSPENDED'' THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''This employee is suspended.'';',
'    ELSIF :P3_EMP_CURR_STATUS = ''PENDING FOR FINAL SETTLEMENT'' THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''This employee is pending for final settlement.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P3_EMP_CURR_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS,P3_EMP_CURR_STATUS,P3_EMP_CURR_STATUS'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242037034552039395)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Validate EMP Current Status'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P3_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242037552270039396)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Check MEMBER_HIS_ACTIVE Status Equals N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --P3_MEMBER_HIS_ACTIVE_STATUS       Checks From REGISTRATION.PATIENT table',
'    --P3_LIB_MEMBERSHIP_ACTIVE_STATUS   Checks From SKM_LIBRARY.MEMBERSHIP',
'',
'    IF :P3_MEMBER_HIS_ACTIVE_STATUS  = ''N'' AND :P3_EMP_CODE IS NOT NULL',
'    THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''This employee membership has been cancelled.'';',
'    END IF;',
'    ',
'    IF :P3_MEMBER_HIS_ACTIVE_STATUS = ''Y'' AND :P3_LIB_MEMBERSHIP_ACTIVE_STATUS = ''N'' AND :P3_EMP_CODE IS NOT NULL',
'    THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''Membership is not assigned to this employee.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P3_EMP_CODE ,P3_LIB_MEMBERSHIP_ACTIVE_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242032567189039389)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Validate IS_MEMBER_ACTIVE Status Equals N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                          message: ($v(''P3_ERROR_TXT'')),',
'                          unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242035509780039392)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Check MEMBERSHIP_LOC_RIGHTS Status Equals N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P3_MEMBERSHIP_LOC_RIGHTS_STATUS = ''N'' AND :P3_EMP_CODE IS NOT NULL',
'    THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''The user '' || :P3_EMP_CODE || '' is not an authorized member of the location '' || :P3_ORDER_LOC_DESC;',
'    END IF;',
'END;'))
,p_attribute_02=>'P3_MEMBERSHIP_LOC_RIGHTS_STATUS,P3_EMP_CODE,P3_ORDER_LOC_DESC'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242035049565039391)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Validate MEMBERSHIP_LOC_RIGHTS Status Equals N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                          message: ($v(''P3_ERROR_TXT'')),',
'                          unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242036070530039392)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Query EMP Data Upon IS_MEMBER_ACTIVE Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_LIB_MEMBERSHIP_ACTIVE_STATUS = ''Y'' AND :P3_EMP_CODE IS NOT NULL',
'THEN',
'BEGIN',
'     SELECT --MRNO,',
'            MR_NO,',
'            FIRST_NAME,',
'            MIDDLE_NAME,',
'            LAST_NAME,',
'            DEPT,',
'            DESIGNATION',
'      INTO --:P3_EMP_CODE,',
'           :P3_MRNO,',
'           :P3_FIRST_NAME,',
'           :P3_MIDDLE_NAME,',
'           :P3_LAST_NAME,',
'           :P3_DEPARTMENT,',
'           :P3_DESIGNATION',
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
'         AND P.MRNO = :P3_EMP_CODE',
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
'     WHERE P.MRNO = :P3_EMP_CODE ',
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
'        INTO :P3_CONTACT_NO, :P3_MOBILE, :P3_EMAIL',
'        FROM SKM_LIBRARY.MEMBERSHIP P',
'       WHERE P.MRNO = :P3_EMP_CODE',
'         AND P.ORGANIZATION_ID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'         AND P.ACTIVE = ''Y'';',
'',
'      IF :P3_CONTACT_NO IS NULL THEN',
'        SELECT R.PHONE_NUMBER',
'          INTO :P3_CONTACT_NO',
'          FROM REGISTRATION.PATIENT R',
'         WHERE R.MRNO = :P3_EMP_CODE;',
'      END IF;',
'',
'      IF :P3_MOBILE IS NULL THEN',
'        SELECT R.PERMANANT_PHONE',
'          INTO :P3_MOBILE',
'          FROM REGISTRATION.PATIENT R',
'         WHERE R.MRNO = :P3_EMP_CODE;',
'      END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;',
'',
'END IF;'))
,p_attribute_02=>'P3_LIB_MEMBERSHIP_ACTIVE_STATUS,P3_EMP_CODE'
,p_attribute_03=>'P3_MRNO,P3_FIRST_NAME,P3_MIDDLE_NAME,P3_LAST_NAME,P3_DEPARTMENT,P3_DESIGNATION,P3_CONTACT_NO,P3_MOBILE,P3_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242034088587039391)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'Query EMP Picture'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_EMP_CODE IS NOT NULL',
'THEN',
'    SELECT HP.PICTURES',
'    INTO :P3_IMAGE',
'    FROM PICTURES.HR_PICTURES HP',
'    WHERE HP.MRNO = :P3_EMP_CODE;',
'END IF;',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN NULL;'))
,p_attribute_02=>'P3_EMP_CODE'
,p_attribute_03=>'P3_IMAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242032079175039388)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(242025548302039379)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242036577933039394)
,p_event_id=>wwv_flow_imp.id(242031042964039385)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464066516916968340)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_EMP_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242038818359039396)
,p_name=>'DA_SET_ORDER_LOCATION_DESCRIPTION'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242039375917039397)
,p_event_id=>wwv_flow_imp.id(242038818359039396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ORDER_LOC_DESC'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DEFINITIONS.DESCRIPTIONS.F_GET_ORDER_LOCATION_DESC(P_LOCATION_ID        => :GV_LOCATION_ID,',
'                                                       P_ORDER_LOCATION_ID  => :GV_ORDER_LOCATION_ID)',
'    INTO :P3_ORDER_LOC_DESC ',
'FROM DUAL;',
'',
'RETURN :P3_ORDER_LOC_DESC;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242050365876039416)
,p_name=>'DA_POPULATE_ITEMS'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(464066516916968340)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242050821944039416)
,p_event_id=>wwv_flow_imp.id(242050365876039416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P3_NON_DB_TITLE", _.IG_BOOK_ISSUE.TITLE);',
'$s("P3_NON_DB_SUBTITLE", _.IG_BOOK_ISSUE.SUBTITLE);',
'$s("P3_NON_DB_EDITION_NO", _.IG_BOOK_ISSUE.EDITION_NO);',
'$s("P3_NON_DB_ACCESS_NO", _.IG_BOOK_ISSUE.ACCESS_NO);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242048403191039414)
,p_name=>'DA_UPON_CHANGE_ACCESS_NO'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(464066516916968340)
,p_triggering_element=>'ACCESS_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242049458525039415)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
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
'',
'    BEGIN',
'        HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'        HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'        HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    END;',
'',
'    	 V_ISSUED_TO := skm_library.pkg_S21FRM00006.IS_BOOK_ISSUED(P_ACCESS_NO => :ACCESS_NO);',
'         ',
'    	  IF V_ISSUED_TO IS NOT NULL ',
'          THEN',
'              :P3_ERROR_TXT := '''';',
'              :P3_ERROR_TXT := V_ISSUED_TO;',
'    		ELSE',
'    	  	BEGIN',
'    			 SELECT B.TITLE, B.SUB_TITLE, B.EDITION_NO ',
'    			 INTO :TITLE, :SUB_TITLE, :EDITION_NO',
'    			 FROM SKM_LIBRARY.ACCESSION_INFORMATION T, ',
'                      SKM_LIBRARY.BOOK_INFORMATION B',
'    			 WHERE T.BOOK_INFORMATION_ID = B.BOOK_INFORMATION_ID',
'        		   AND T.ORGANIZATION_ID     = B.ORGANIZATION_ID',
'        		   AND T.ACCESS_NO           = :ACCESS_NO',
'        		   AND T.ORGANIZATION_ID     = :GV_ORGANIZATION_ID',
'        		   AND T.LOCATION_ID         = :GV_LOCATION_ID',
'        		   AND T.ORDER_LOCATION_ID   = :GV_ORDER_LOCATION_ID;',
'                   ',
'    			EXCEPTION',
'    				WHEN NO_DATA_FOUND THEN NULL;		',
'    			END;',
'        END IF;',
'     END;',
'',
'     BEGIN',
'     	V_BOOK_RESERVED := skm_library.pkg_S21FRM00006.IS_BOOK_RESERVED(P_ACCESS_NO  => :ACCESS_NO,',
'     	                                                                P_IDENTIFIER => ''I'');',
'        :P3_BOOK_RESERVED_STATUS := NULL;',
'        :P3_BOOK_RESERVED_STATUS := V_BOOK_RESERVED;',
'    END;',
'END;'))
,p_attribute_02=>'ACCESS_NO,TITLE,SUB_TITLE,EDITION_NO'
,p_attribute_03=>'P3_ERROR_TXT,TITLE,SUB_TITLE,EDITION_NO,P3_BOOK_RESERVED_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(242048990216039415)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Validate Book Issued Info'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P3_ERROR_TXT'') !== '''') {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: "page",',
'        message: $v(''P3_ERROR_TXT''),',
'        unsafe: false',
'    }]);',
'    document.getElementById(''BTN_SAVE'').disabled = true;',
'    showErrorAndAutoDismiss();',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242161882268232714)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Confirm to Reserve Status'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P3_BOOK_RESERVED_STATUS.'
,p_attribute_02=>'Stop'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P3_BOOK_RESERVED_STATUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242161982976232715)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Check Book Reserved Cancellation'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_STOP		   		VARCHAR2(1);',
'  V_ALERT_TEXT	   		VARCHAR2(4000);',
'BEGIN',
'    IF :RECEIVED_DATE IS NULL ',
'    THEN',
'	 	 skm_library.pkg_S21FRM00006.BOOK_RESERVE_CANCELLATION(P_ACCESS_NO  => :ACCESS_NO,',
'                                                               P_MRNO       => :GV_USER_MRNO,',
'                                                               P_STOP       => V_STOP,',
'                                                               P_ALERT_TEXT => V_ALERT_TEXT);',
'          IF V_STOP = ''Y'' THEN',
'          	:P3_ERROR_TXT := NULL;',
'          	:P3_ERROR_TXT := V_ALERT_TEXT;',
'          END IF;',
'    END IF;',
'END;'))
,p_attribute_02=>'RECEIVED_DATE,ACCESS_NO'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242162014279232716)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Validate  Book Reserved Cancellation'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P3_ERROR_TXT'') !== '''') {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: "page",',
'        message: $v(''P3_ERROR_TXT''),',
'        unsafe: false',
'    }]);',
'    document.getElementById(''BTN_SAVE'').disabled = true;',
'    showErrorAndAutoDismiss();',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242049992853039416)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Set Issued By and Date'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'		SELECT P.MRNO, ',
'               P.NAME',
'		INTO :ISSUED_BY, ',
'             :ISSUED_BY_NAME',
'		FROM REGISTRATION.PATIENT_SUMMARY P',
'		WHERE P.MRNO IN (SELECT U.MRNO FROM SECURITY.USERS U WHERE U.USERID = :GV_USER_ID);',
'',
'        EXCEPTION',
'			WHEN NO_DATA_FOUND THEN',
'			NULL;',
'	END;',
'',
'    :ISSUED_DATE := TO_CHAR(SYSDATE, ''DD-MM-YYYY'');',
'    :DUE_DATE := TO_CHAR(SYSDATE + 13, ''DD-MM-YYYY'');	',
'END;',
'',
''))
,p_attribute_02=>'ISSUED_BY,ISSUED_BY_NAME,ISSUED_DATE,DUE_DATE'
,p_attribute_03=>'ISSUED_BY,ISSUED_BY_NAME,ISSUED_DATE,DUE_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302923435787530038)
,p_event_id=>wwv_flow_imp.id(242048403191039414)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(242025548302039379)
,p_client_condition_type=>'NULL'
,p_client_condition_elem_type=>'ITEM'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242042048962039399)
,p_name=>'DA_VALIDATE_EMP_CODE_UPON_PAGE_LOAD'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242042505936039400)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Populate EMP Code'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT      VARCHAR2(600);',
'  V_STOP            VARCHAR2(1) := ''N'';',
'  V_PATIENT_MRNO    VARCHAR2(100);',
'BEGIN',
'',
'/*IF :P3_EMP_CODE IS NULL ',
'THEN',
'    :P3_ERROR_TXT := '''';',
'    :P3_ERROR_TXT := ''MRNO not entered.'';',
'ELSE*/',
'    HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                 P_DISP_MRNO  => :P3_EMP_CODE,',
'                 P_MRNO       => :P3_EMP_CODE,',
'                 P_ALERT_TEXT => V_ALERT_TEXT,',
'                 P_STOP       => V_STOP);',
'                   ',
'    IF V_STOP = ''Y'' ',
'    THEN',
'        :P3_ERROR_TXT := V_ALERT_TEXT;',
'    END IF;',
'',
'--END IF;',
'    ',
'END;'))
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242043063078039401)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Validate EMP Code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P3_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242043505595039401)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>'Populate EMP Statuses'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'', :GV_ORGANIZATION_ID);',
'END;',
'',
'BEGIN',
'    :P3_EMP_CURR_STATUS              := HRD.EMPLOYEE.GET_CURRENT_STATUS(P_MRNO => :P3_EMP_CODE);',
'    :P3_LIB_MEMBERSHIP_ACTIVE_STATUS := SKM_LIBRARY.PKG_S21FRM00006.IS_MEMBER_ACTIVE(P_MRNO => :P3_EMP_CODE);',
'    :P3_MEMBERSHIP_LOC_RIGHTS_STATUS := SKM_LIBRARY.PKG_S21FRM00026.MEMBERSHIP_LOCATION_RIGHTS(P_MRNO => :P3_EMP_CODE);',
'    ',
'    BEGIN   --Check Library Member Active Status in HIS',
'       SELECT P.ACTIVE',
'         INTO :P3_MEMBER_HIS_ACTIVE_STATUS',
'         FROM REGISTRATION.PATIENT P',
'        WHERE P.MRNO = :P3_EMP_CODE',
'          AND P.MRNO IN (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'');',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	 :P3_MEMBER_HIS_ACTIVE_STATUS := ''N'';',
'    END;',
'    ',
'END;',
''))
,p_attribute_02=>'P3_EMP_CODE'
,p_attribute_03=>'P3_EMP_CURR_STATUS,P3_LIB_MEMBERSHIP_ACTIVE_STATUS,P3_MEMBERSHIP_LOC_RIGHTS_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242044097277039401)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>'Check EMP Current Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P3_EMP_CURR_STATUS = ''INACTIVE'' AND :P3_EMP_CODE IS NOT NULL THEN',
'        IF :P3_MEMBER_HIS_ACTIVE_STATUS = ''N'' THEN',
'            :P3_ERROR_TXT := '''';',
'            :P3_ERROR_TXT := ''This employee is inactive.'';',
'        END IF;',
'    ELSIF :P3_EMP_CURR_STATUS = ''SUSPENDED'' THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''This employee is suspended.'';',
'    ELSIF :P3_EMP_CURR_STATUS = ''PENDING FOR FINAL SETTLEMENT'' THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''This employee is pending for final settlement.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P3_EMP_CURR_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS,P3_EMP_CURR_STATUS,P3_EMP_CURR_STATUS'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242044544195039401)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_name=>'Validate EMP Current Status'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P3_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242045042217039401)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>'Check MEMBER_HIS_ACTIVE Status Equals N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --P3_MEMBER_HIS_ACTIVE_STATUS       Checks From REGISTRATION.PATIENT table',
'    --P3_LIB_MEMBERSHIP_ACTIVE_STATUS   Checks From SKM_LIBRARY.MEMBERSHIP',
'',
'    IF :P3_MEMBER_HIS_ACTIVE_STATUS  = ''N'' AND :P3_EMP_CODE IS NOT NULL',
'    THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''This employee membership has been cancelled.'';',
'    END IF;',
'    ',
'    IF :P3_MEMBER_HIS_ACTIVE_STATUS = ''Y'' AND :P3_LIB_MEMBERSHIP_ACTIVE_STATUS = ''N'' AND :P3_EMP_CODE IS NOT NULL',
'    THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''Membership is not assigned to this employee.'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P3_EMP_CODE ,P3_LIB_MEMBERSHIP_ACTIVE_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242045573293039402)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_name=>'Validate IS_MEMBER_ACTIVE Status Equals N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                          message: ($v(''P3_ERROR_TXT'')),',
'                          unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242046052495039402)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'Y'
,p_name=>'Check MEMBERSHIP_LOC_RIGHTS Status Equals N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P3_MEMBERSHIP_LOC_RIGHTS_STATUS = ''N'' AND :P3_EMP_CODE IS NOT NULL',
'    THEN',
'        :P3_ERROR_TXT := '''';',
'        :P3_ERROR_TXT := ''The user '' || :P3_EMP_CODE || '' is not an authorized member of the location '' || :P3_ORDER_LOC_DESC;',
'    END IF;',
'END;'))
,p_attribute_02=>'P3_MEMBERSHIP_LOC_RIGHTS_STATUS,P3_EMP_CODE,P3_ORDER_LOC_DESC'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242048000795039414)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'Y'
,p_name=>'Validate MEMBERSHIP_LOC_RIGHTS Status Equals N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                          message: ($v(''P3_ERROR_TXT'')),',
'                          unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242046599281039403)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'Y'
,p_name=>'Query EMP Data Upon IS_MEMBER_ACTIVE Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_LIB_MEMBERSHIP_ACTIVE_STATUS = ''Y'' AND :P3_EMP_CODE IS NOT NULL',
'THEN',
'BEGIN',
'     SELECT --MRNO,',
'            MR_NO,',
'            FIRST_NAME,',
'            MIDDLE_NAME,',
'            LAST_NAME,',
'            DEPT,',
'            DESIGNATION',
'      INTO --:P3_EMP_CODE,',
'           :P3_MRNO,',
'           :P3_FIRST_NAME,',
'           :P3_MIDDLE_NAME,',
'           :P3_LAST_NAME,',
'           :P3_DEPARTMENT,',
'           :P3_DESIGNATION',
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
'         AND P.MRNO = :P3_EMP_CODE',
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
'     WHERE P.MRNO = :P3_EMP_CODE ',
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
'        INTO :P3_CONTACT_NO, :P3_MOBILE, :P3_EMAIL',
'        FROM SKM_LIBRARY.MEMBERSHIP P',
'       WHERE P.MRNO = :P3_EMP_CODE',
'         AND P.ORGANIZATION_ID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'         AND P.ACTIVE = ''Y'';',
'',
'      IF :P3_CONTACT_NO IS NULL THEN',
'        SELECT R.PHONE_NUMBER',
'          INTO :P3_CONTACT_NO',
'          FROM REGISTRATION.PATIENT R',
'         WHERE R.MRNO = :P3_EMP_CODE;',
'      END IF;',
'',
'      IF :P3_MOBILE IS NULL THEN',
'        SELECT R.PERMANANT_PHONE',
'          INTO :P3_MOBILE',
'          FROM REGISTRATION.PATIENT R',
'         WHERE R.MRNO = :P3_EMP_CODE;',
'      END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN NULL;',
'END;',
'',
'END IF;'))
,p_attribute_02=>'P3_LIB_MEMBERSHIP_ACTIVE_STATUS,P3_EMP_CODE'
,p_attribute_03=>'P3_EMP_CODE,P3_MRNO,P3_FIRST_NAME,P3_MIDDLE_NAME,P3_LAST_NAME,P3_DEPARTMENT,P3_DESIGNATION,P3_CONTACT_NO,P3_MOBILE,P3_EMAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242047008562039414)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'Y'
,p_name=>'Query EMP Picture'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P3_EMP_CODE IS NOT NULL',
'THEN',
'    SELECT HP.PICTURES',
'    INTO :P3_IMAGE',
'    FROM PICTURES.HR_PICTURES HP',
'    WHERE HP.MRNO = :P3_EMP_CODE;',
'END IF;',
'',
'EXCEPTION ',
'    WHEN OTHERS THEN NULL;'))
,p_attribute_02=>'P3_EMP_CODE'
,p_attribute_03=>'P3_IMAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242047544602039414)
,p_event_id=>wwv_flow_imp.id(242042048962039399)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464066516916968340)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242039794440039397)
,p_name=>'DA_CLEAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(242025924321039379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242040792906039398)
,p_event_id=>wwv_flow_imp.id(242039794440039397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_EMP_CODE,P3_IMAGE,P3_EMP_CURR_STATUS,P3_MEMBER_HIS_ACTIVE_STATUS,P3_MEMBERSHIP_LOC_RIGHTS_STATUS,P3_ERROR_TXT,P3_FIRST_NAME,P3_MIDDLE_NAME,P3_LAST_NAME,P3_DEPARTMENT,P3_DESIGNATION,P3_EMAIL,P3_CONTACT_NO,P3_MOBILE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242040208359039398)
,p_event_id=>wwv_flow_imp.id(242039794440039397)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464066516916968340)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302923216913530036)
,p_event_id=>wwv_flow_imp.id(242039794440039397)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(242025548302039379)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242041193096039398)
,p_name=>'DA_UPON_CHECK_BOX_CHANGED'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(464066516916968340)
,p_triggering_element=>'BOOK_RECEIVED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302921187347530015)
,p_event_id=>wwv_flow_imp.id(242041193096039398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Validate Book Issue IG'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'bookReserveIGValidation();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242041643250039399)
,p_event_id=>wwv_flow_imp.id(242041193096039398)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :BOOK_RECEIVED = ''Y''',
'THEN',
'	:RECEIVED_DATE := TO_CHAR(SYSDATE, ''DD-MM-YYYY'');',
'	:RECEIVED_BY := :GV_USER_MRNO;',
'	:RECEIVED_BY_NAME := :GV_USER_NAME;',
'ELSE',
'	:RECEIVED_DATE:= '''';',
'END IF;'))
,p_attribute_02=>'BOOK_RECEIVED'
,p_attribute_03=>'RECEIVED_DATE,RECEIVED_BY,RECEIVED_BY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242037958505039396)
,p_name=>'DA_DISABLE_BTN_SAVE'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302921290548530016)
,p_event_id=>wwv_flow_imp.id(242037958505039396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Make IG Editable'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("IG_BOOK_ISSUE").widget().interactiveGrid("getActions").set("edit", true);'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242038465369039396)
,p_event_id=>wwv_flow_imp.id(242037958505039396)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(242025548302039379)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P3_EMP_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(242162477958232720)
,p_name=>'DA_UPON_CHANGE_RECEIVED_DATE'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(464066516916968340)
,p_triggering_element=>'RECEIVED_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(242162587800232721)
,p_event_id=>wwv_flow_imp.id(242162477958232720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :RECEIVED_DATE IS NOT NULL ',
'THEN',
'	:RECEIVED_BY      := :GV_USER_MRNO;',
'	:RECEIVED_BY_NAME := :GV_USER_NAME;',
'ELSE',
'	:RECEIVED_BY      := '''';',
'	:RECEIVED_BY_NAME := '''';',
'END IF;',
''))
,p_attribute_02=>'RECEIVED_DATE'
,p_attribute_03=>'RECEIVED_BY,RECEIVED_BY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302921304289530017)
,p_name=>'DA_VALIDATE_EXTENTED_DATE'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(464066516916968340)
,p_triggering_element=>'EXTENDED_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302921475550530018)
,p_event_id=>wwv_flow_imp.id(302921304289530017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_DATE(:DUE_DATE, ''DD-MM-YYYY'') >= TO_DATE(:EXTENDED_DATE, ''DD-MM-YYYY'') ',
'THEN',
'    :P3_ERROR_TXT := '''';',
'    :P3_ERROR_TXT := ''Extended Date must be greater then Due Date.'';',
'ELSE',
'    :P3_ERROR_TXT := '''';',
'END IF;'))
,p_attribute_02=>'DUE_DATE,EXTENDED_DATE'
,p_attribute_03=>'P3_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302921578315530019)
,p_event_id=>wwv_flow_imp.id(302921304289530017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P3_ERROR_TXT'') !== '''') {',
'    apex.message.showErrors([{',
'        type: "error",',
'        location: "page",',
'        message: $v(''P3_ERROR_TXT''),',
'        unsafe: false',
'    }]);',
'    showErrorAndAutoDismiss();',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302921841960530022)
,p_name=>'DA_REFRESH'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(302921789164530021)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302922061389530024)
,p_event_id=>wwv_flow_imp.id(302921841960530022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302921971981530023)
,p_event_id=>wwv_flow_imp.id(302921841960530022)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(464066516916968340)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302922130444530025)
,p_event_id=>wwv_flow_imp.id(302921841960530022)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(242025548302039379)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P3_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302923085227530034)
,p_name=>'DA_SAVE'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(242025548302039379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302923133167530035)
,p_event_id=>wwv_flow_imp.id(302923085227530034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IG_BOOK_ISSUE").widget().interactiveGrid("getViews", "grid").model;',
'if (model.isChanged()) {',
'    model.save(function (error, responseData) {',
'        if (error != null) {',
'            apex.message.showErrors(error);',
'        } else {',
'            apex.message.showPageSuccess(''Record saved successfully'');',
'            apex.region("IG_BOOK_ISSUE").refresh();',
'        }',
'    });',
'};'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(242022235193039368)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(464066516916968340)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Issue IG - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_LIBRARAY_HISTORY_TBL    SKM_LIBRARY.PKG_LIBRARY_HISTORY.LIBRARAY_HISTORY_TBL;',
'  V_ERROR    	   		    VARCHAR2(4000);',
'  V_STOP		   		    VARCHAR2(4000);',
'  V_ALERT_TEXT	   		    VARCHAR2(4000);',
'  V_SERIAL_NO               NUMBER;',
'BEGIN',
'    :ORGANIZATION_ID    := :GV_ORGANIZATION_ID;',
'    :LOCATION_ID        := :GV_LOCATION_ID;',
'    :ORDER_LOCATION_ID  := :GV_ORDER_LOCATION_ID;',
'    -- :ISSUED_TO          := :GV_USER_MRNO;',
'',
'    IF TO_DATE(:DUE_DATE, ''DD-MM-YYYY'') >= TO_DATE(:EXTENDED_DATE, ''DD-MM-YYYY'') ',
'    THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Extended Date must be greater then Due Date.'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        RETURN;',
'    ELSE',
'        NULL;',
'    END IF;',
'',
'  CASE :APEX$ROW_STATUS',
'    ',
'    WHEN ''C'' THEN',
'',
'    V_LIBRARAY_HISTORY_TBL(1).BATCH_NO    	       := :BATCH_NO;',
'    V_LIBRARAY_HISTORY_TBL(1).SERIAL_NO  		   := :SERIAL_NO;',
'    V_LIBRARAY_HISTORY_TBL(1).ACCESS_NO            := :ACCESS_NO;',
'	V_LIBRARAY_HISTORY_TBL(1).ISSUED_TO            := :P3_EMP_CODE;--:ISSUED_TO;',
'    V_LIBRARAY_HISTORY_TBL(1).ISSUED_BY            := :GV_USER_MRNO; --:ISSUED_BY;',
'    V_LIBRARAY_HISTORY_TBL(1).ISSUED_DATE          := TO_DATE(:ISSUED_DATE, ''DD-MM-YYYY'');',
'	V_LIBRARAY_HISTORY_TBL(1).EXTENDED_DATE        := TO_DATE(:EXTENDED_DATE, ''DD-MM-YYYY'');',
'    V_LIBRARAY_HISTORY_TBL(1).FINE                 := :FINE;',
'    V_LIBRARAY_HISTORY_TBL(1).RECEIVED_DATE  	   := TO_DATE(:RECEIVED_DATE, ''DD-MM-YYYY'');',
'	V_LIBRARAY_HISTORY_TBL(1).RECEIVED_BY 	       := :RECEIVED_BY;',
'    V_LIBRARAY_HISTORY_TBL(1).ORGANIZATION_ID      := :ORGANIZATION_ID;',
'    V_LIBRARAY_HISTORY_TBL(1).LOCATION_ID  	       := :LOCATION_ID;',
'	V_LIBRARAY_HISTORY_TBL(1).ORDER_LOCATION_ID    := :ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_LIBRARY_HISTORY.P_LIBRARY_HISTORY_INS(P_DATA    	      => V_LIBRARAY_HISTORY_TBL,',
'                                                          P_ISSUED_TO         => :P3_EMP_CODE,',
'												          P_STOP              => V_STOP,',
'												          P_ALERT_TEXT        => V_ALERT_TEXT);',
'    WHEN ''U'' THEN',
'	',
'    V_LIBRARAY_HISTORY_TBL(1).BATCH_NO    	       := :BATCH_NO;',
'    V_LIBRARAY_HISTORY_TBL(1).SERIAL_NO  		   := :SERIAL_NO;',
'    V_LIBRARAY_HISTORY_TBL(1).ACCESS_NO            := :ACCESS_NO;',
'	V_LIBRARAY_HISTORY_TBL(1).ISSUED_TO            := :P3_EMP_CODE;--:ISSUED_TO;',
'    V_LIBRARAY_HISTORY_TBL(1).ISSUED_BY            := :GV_USER_MRNO; --:ISSUED_BY;',
'    V_LIBRARAY_HISTORY_TBL(1).ISSUED_DATE          := TO_DATE(:ISSUED_DATE, ''DD-MM-YYYY'');',
'	V_LIBRARAY_HISTORY_TBL(1).EXTENDED_DATE        := TO_DATE(:EXTENDED_DATE, ''DD-MM-YYYY'');',
'    V_LIBRARAY_HISTORY_TBL(1).FINE                 := :FINE;',
'    V_LIBRARAY_HISTORY_TBL(1).RECEIVED_DATE  	   := TO_DATE(:RECEIVED_DATE, ''DD-MM-YYYY'');',
'	V_LIBRARAY_HISTORY_TBL(1).RECEIVED_BY 	       := :RECEIVED_BY;',
'    V_LIBRARAY_HISTORY_TBL(1).ORGANIZATION_ID      := :ORGANIZATION_ID;',
'    V_LIBRARAY_HISTORY_TBL(1).LOCATION_ID  	       := :LOCATION_ID;',
'	V_LIBRARAY_HISTORY_TBL(1).ORDER_LOCATION_ID    := :ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_LIBRARY_HISTORY.P_LIBRARY_HISTORY_UPD(P_DATA    	      => V_LIBRARAY_HISTORY_TBL,',
'												          P_STOP              => V_STOP,',
'												          P_ALERT_TEXT        => V_ALERT_TEXT);',
'    WHEN ''D'' THEN',
'',
'    V_LIBRARAY_HISTORY_TBL(1).BATCH_NO    	       := :BATCH_NO;',
'    V_LIBRARAY_HISTORY_TBL(1).SERIAL_NO  		   := :SERIAL_NO;',
'    V_LIBRARAY_HISTORY_TBL(1).ACCESS_NO            := :ACCESS_NO;',
'	V_LIBRARAY_HISTORY_TBL(1).ISSUED_TO            := :P3_EMP_CODE;--:ISSUED_TO;',
'    V_LIBRARAY_HISTORY_TBL(1).ISSUED_BY            := :GV_USER_MRNO; --:ISSUED_BY;',
'    V_LIBRARAY_HISTORY_TBL(1).ISSUED_DATE          := TO_DATE(:ISSUED_DATE, ''DD-MM-YYYY'');',
'	V_LIBRARAY_HISTORY_TBL(1).EXTENDED_DATE        := TO_DATE(:EXTENDED_DATE, ''DD-MM-YYYY'');',
'    V_LIBRARAY_HISTORY_TBL(1).FINE                 := :FINE;',
'    V_LIBRARAY_HISTORY_TBL(1).RECEIVED_DATE  	   := TO_DATE(:RECEIVED_DATE, ''DD-MM-YYYY'');',
'	V_LIBRARAY_HISTORY_TBL(1).RECEIVED_BY 	       := :RECEIVED_BY;',
'    V_LIBRARAY_HISTORY_TBL(1).ORGANIZATION_ID      := :ORGANIZATION_ID;',
'    V_LIBRARAY_HISTORY_TBL(1).LOCATION_ID  	       := :LOCATION_ID;',
'	V_LIBRARAY_HISTORY_TBL(1).ORDER_LOCATION_ID    := :ORDER_LOCATION_ID;',
'	',
'    SKM_LIBRARY.PKG_LIBRARY_HISTORY.P_LIBRARY_HISTORY_DEL(P_DATA    	      => V_LIBRARAY_HISTORY_TBL,',
'												          P_STOP              => V_STOP,',
'												          P_ALERT_TEXT        => V_ALERT_TEXT);',
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
,p_internal_uid=>242022235193039368
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
 p_id=>wwv_flow_imp.id(289742679574105731)
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
,p_internal_uid=>289742679574105731
);
null;
wwv_flow_imp.component_end;
end;
/

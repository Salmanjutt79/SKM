prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_name=>'RAD_SELECT_PATIENT_NORMAL'
,p_alias=>'RAD-SELECT-PATIENT-NORMAL'
,p_step_title=>'RAD_SELECT_PATIENT_NORMAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function selectMRNO(mrno) {',
'',
'    let task1 = new Promise((resolve, reject) => {',
'        $(window.top.document).find(''#P46_PATIENT_MRNO'').val(mrno);',
'    })',
'',
'    let task2 = new Promise((resolve, reject) => {',
'        $(window.top.document).find(''#P46_PATIENT_MRNO'').focus()',
'    })',
'',
'',
'    let task3 = new Promise((resolve, reject) => {',
'        apex.navigation.dialog.close(true)',
'    })',
'',
'',
'',
'    let t1 = await task1',
'    let t2 = await task2',
'    let t3 = await task3',
'',
'}',
'',
'',
'',
'$(document).keydown((e) => {',
'    if (e.key === "Backspace" || e.key === "Delete") {',
'        const focusedElement = document.activeElement;',
'',
'        if ($(focusedElement).hasClass(''lov clear bksp del'')) {',
'            $s(focusedElement.id, '''');',
'        }',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'',
'.apex-item-datepicker--popup{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.apex-item-text apex-item-datepicker{',
'    background-color: #FFFFCC !important;',
'}',
'',
'',
'#P59_RAD_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_PENDING_FOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P59_PHYSICIST_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_APPT_STATUS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_PERIOD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_MACHINE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_APPT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P59_CALENDER_input{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'/*#radselect .a-GV-status {',
'',
'    display: none;',
'',
'}*/'))
,p_step_template=>wwv_flow_imp.id(385053571573493544)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250101154022'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290455216821681149)
,p_plug_name=>'<b><font color="red"> Filters</font></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290456195640681159)
,p_plug_name=>'Patient List'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290456325146681160)
,p_plug_name=>'Patient List'
,p_region_name=>'radselect'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MRNO,',
'       MRNO MRNO_PK,',
'       PATIENT_NAME,',
'       RADIOTHERAPY_TRT_SITE,',
'       DISP_AGE,',
'       DISP_GENDER,',
'       DISP_DOCTOR,',
'       RADIATION_NO,',
'       SITE_ID,',
'       ADMISSION_NO,',
'       TOTAL_FRACTION,',
'       REMARKS,',
'       PHYSICIST_NAME,',
'       REQUEST_STATUS,',
'       ORDER_BY,',
'       EVENT_ID,',
'       RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(EVENT_ID) EVENT,',
'       ENTERED_BY,',
'       ENTERED_DATE,',
'       PLANNING,',
'       NEXT_FRACTION_ID,',
'       RADIOTHERAPY_TYPE,',
'       DISP_MACHINE,',
'       TO_CHAR(NEXT_VISIT_DATE,''DD-MON-RRRR HH24:MI:SS'') NEXT_VISIT_DATE,  ',
'       DOCTOR_ID,',
'       COUNT(MRNO) OVER () AS RECORD_COUNT',
'  FROM RADIATION.PKG_S18FRM00150.PATIENT_LIST_APEX(P_RAD_TYPE            => :P89_RAD_TYPE,',
'                                                   P_DOCTOR_ID           => :P89_DISP_DOCTOR,',
'                                                   P_PHYSIST_MRNO        => :P89_PHYSICIST_NAME,',
'                                                   P_EVENT_ID            => :P89_PENDING_FOR,',
'                                                   P_MRNO                => :GV_SELECT_PATIENT,',
'                                                   P_NAME                => NULL,',
'                                                   P_DATE                => :P89_CALENDER,',
'                                                   P_MACHINE_ID          => :P89_MACHINE,',
'                                                   P_ORDER_BY            => NULL,',
'                                                   P_SERVICE_NO          => NULL,',
'                                                   P_ARMY_UNIT_ID        => NULL,',
'                                                   P_SERVICE_STATUS_ID   => NULL,',
'                                                   P_RANK_ID             => NULL,',
'                                                   P_FORMATION           => NULL,',
'                                                   P_BOOKED              => :P89_APPT_STATUS,',
'                                                   P_MONTHS              => :P89_PERIOD,',
'                                                   P_PERFORMANCE_TYPE_ID => :P89_APPT);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P89_RAD_TYPE,P89_DISP_DOCTOR,P89_PHYSICIST_NAME,P89_PENDING_FOR,P89_CALENDER,P89_MACHINE,P89_APPT_STATUS,P89_PERIOD,P89_APPT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Patient List'
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
 p_id=>wwv_flow_imp.id(546220307334615854)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546220383901615855)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Name</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546220461006615856)
,p_name=>'RADIOTHERAPY_TRT_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIOTHERAPY_TRT_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Radiotherapy <br> Site</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546220605810615857)
,p_name=>'DISP_AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_AGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Age</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546220725170615858)
,p_name=>'DISP_GENDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_GENDER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Gender</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546220771972615859)
,p_name=>'DISP_DOCTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_DOCTOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Radiotherapy <br> Consultant</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546220874292615860)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221002139615861)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221048440615862)
,p_name=>'ADMISSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221212542615863)
,p_name=>'TOTAL_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_FRACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221253451615864)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Remarks</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221359067615865)
,p_name=>'PHYSICIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHYSICIST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Physicist</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221465327615866)
,p_name=>'REQUEST_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Current <br> Event</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221568530615867)
,p_name=>'ORDER_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221721412615868)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221792378615869)
,p_name=>'EVENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Next <br> Event</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221928871615870)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546221983482615871)
,p_name=>'ENTERED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Duration</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546222038480615872)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Planning <br> Technique</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546222186383615873)
,p_name=>'NEXT_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Next <br> Fraction</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546222284117615874)
,p_name=>'RADIOTHERAPY_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIOTHERAPY_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546222409189615875)
,p_name=>'DISP_MACHINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_MACHINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Machine</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546222528239615876)
,p_name=>'NEXT_VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_VISIT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Appointment <br> Date</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546222583824615877)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546726696508213056)
,p_name=>'MRNO_PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO_PK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(546727095882213060)
,p_name=>'RECORD_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(546220171581615853)
,p_internal_uid=>546220171581615853
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(546275108527718629)
,p_interactive_grid_id=>wwv_flow_imp.id(546220171581615853)
,p_static_id=>'2702767'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(546275261242718630)
,p_report_id=>wwv_flow_imp.id(546275108527718629)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546275807464718633)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(546220307334615854)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120.991
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546276689074718639)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(546220383901615855)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546277623386718648)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(546220461006615856)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>206.994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546278480488718652)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(546220605810615857)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546279361920718655)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(546220725170615858)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546280252326718658)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(546220771972615859)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546281135363718665)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(546220874292615860)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546282045532718668)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(546221002139615861)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546282942057718671)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(546221048440615862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546283870427718676)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(546221212542615863)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546284750184718681)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(546221253451615864)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.2017
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546285640532718684)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(546221359067615865)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546286570595718687)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(546221465327615866)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546287392813718692)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(546221568530615867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546288274348718695)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(546221721412615868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546289160259718699)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(546221792378615869)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546290109934718705)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(546221928871615870)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546290933334718711)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(546221983482615871)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546291921163718714)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(546222038480615872)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546292745263718718)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(546222186383615873)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75.9943
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546293718110718723)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(546222284117615874)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546294597901718726)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(546222409189615875)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546295527806718730)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(546222528239615876)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158.918
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546296343829718733)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(546222583824615877)
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
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(546797490244389704)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(546726696508213056)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(548284945813714765)
,p_view_id=>wwv_flow_imp.id(546275261242718630)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(546727095882213060)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276014138948924865)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(290456325146681160)
,p_button_name=>'RadiationPatientList'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Patient List '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276014520875924867)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(290456325146681160)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276014849774924867)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(290456325146681160)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290455841251681180)
,p_name=>'P89_RAD_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_item_default=>'T'
,p_prompt=>'<b><p style="color:#00008B">Radiation Type :</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Teletherapy;T,Brachytherapy;B'
,p_cHeight=>1
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290455917577681181)
,p_name=>'P89_PENDING_FOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_item_default=>'0'
,p_prompt=>'<b><p style="color:#00008B">Pending For :</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EVENT_DESC, EVENT_ID',
'  FROM RADIATION.PKG_S18FRM00150.POPULATE_EVENTS(:GV_ORGANIZATION_ID,',
'                                                 :GV_LOCATION_ID,',
'                                                 :P89_RAD_TYPE,',
'                                                 :P89_APPT)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P89_RAD_TYPE,P89_APPT'
,p_ajax_items_to_submit=>'P89_RAD_TYPE,P89_APPT'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456045367681182)
,p_name=>'P89_DISP_DOCTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_prompt=>'<b><p style="color:#00008B">Consultant : </p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.NAME FULL_NAME, DD.DOCTOR_ID',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID = NVL(:GV_ORGANIZATION_ID, ''SKM''))',
' ORDER BY DOCTOR_ID',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'lov clear bksp del'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456141949681183)
,p_name=>'P89_PHYSICIST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_prompt=>'<b><p style="color:#00008B">Physicist :</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME, P.PHYSICIST_MRNO EMPLOYEE_CODE ',
'  FROM RADIATION.PHYSICISTS P, HRD.VU_INFORMATION I',
' WHERE P.PHYSICIST_MRNO = I.MRNO',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'lov clear bksp del'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456228112681184)
,p_name=>'P89_APPT_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_item_default=>'A'
,p_prompt=>'<b><p style="color:#00008B">Appointment Status :</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:All;A,Booked ;Y,Waiting;N'
,p_cHeight=>1
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456379060681185)
,p_name=>'P89_PERIOD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_item_default=>'3'
,p_prompt=>'<b><p style="color:#00008B">Show :</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:One month old;1,Three months old;3,Six months old;6,All;0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456434923681186)
,p_name=>'P89_MACHINE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_prompt=>'<b><p style="color:#00008B">Machine :</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.DESCRIPTION MACHINE_NAME, MC.MACHINE_ID',
'  FROM RADIATION.MACHINES MC',
' WHERE ACTIVE = ''Y''',
'   AND MACHINE_TYPE = ''T''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'   AND MC.PERFORMANCE_TYPE_ID IN',
'       (SELECT QP.PERFORMANCE_TYPE_ID',
'          FROM RADIATION.DEF_QUEUE_PERFORMANCE QP',
'         WHERE QP.ACTIVE = ''Y'')',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'lov clear bksp del'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456512388681187)
,p_name=>'P89_APPT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_prompt=>'<b><p style="color:#00008B">Appointment Event :</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(PT.SHORT_DESC, PT.DESCIPTION) DESCIPTION, PT.PERFORMANCE_TYPE_ID',
'  FROM RADIATION.DEF_PERFORMANCE_TYPE PT',
' WHERE PT.NATURE_TYPE_ID = ''020''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.PLANNING P, RADIATION.DEF_SCHEDULE_WORKFLOW S',
'         WHERE P.PLANNING_ID = S.PLANNING_ID',
'           AND PT.PERFORMANCE_TYPE_ID = S.PERFORMANCE_TYPE_ID',
'           AND P.RADIOTHERAPY_TYPE = :P89_RAD_TYPE)',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'lov clear bksp del'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290456641539681188)
,p_name=>'P89_CALENDER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_format_mask=>'DD-MON-RR'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290463941961681240)
,p_name=>'P89_ERROR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(290456195640681159)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(546726695967213080)
,p_name=>'P89_PATIENT_COUNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(290455216821681149)
,p_prompt=>'<b><p style="color:#00008B">Total Patient(s):</p></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(546744262416213219)
,p_name=>'P89_USER_MRNO'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(546744362253213220)
,p_name=>'P89_USER_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(546744585608213222)
,p_name=>'P89_TERMINAL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276016741041924911)
,p_name=>'RefreshSelectPatient'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276014520875924867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276017291858924918)
,p_event_id=>wwv_flow_imp.id(276016741041924911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("radselect").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276017619259924918)
,p_name=>'ExitPage'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276014849774924867)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270731248913288339)
,p_event_id=>wwv_flow_imp.id(276017619259924918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.close();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276018557393924918)
,p_name=>'ExportPatientList'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276014138948924865)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276019042542924919)
,p_event_id=>wwv_flow_imp.id(276018557393924918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP  CHAR(1);',
'  L_ERROR VARCHAR2(4000);',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  RADIATION.PKG_S18FRM00150.POPULATE_DATA(P_USERID     => :P89_USER_ID,',
'                                          P_TERMINAL   => :P89_TERMINAL,',
'                                          P_ALERT_TEXT => L_ERROR,',
'                                          P_STOP       => L_STOP);',
'',
'  IF L_STOP = ''Y'' THEN',
'    :P89_ERROR_MESSAGE := L_ERROR;',
'  ',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P89_USER_ID,P89_TERMINAL'
,p_attribute_03=>'P89_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276019506602924920)
,p_event_id=>wwv_flow_imp.id(276018557393924918)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'',
'// Change start',
'let paramList = {',
'    "P_CONSULTANT_MRNO": $v(''P89_USER_MRNO''),',
'    "P_USERID": $v(''P89_USER_ID''),',
'    "P_TERMINAL": $v(''P89_TERMINAL'')',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00080'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276019992704924920)
,p_name=>'Alert'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_ERROR_MESSAGE'
,p_condition_element=>'P89_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276020401430924921)
,p_event_id=>wwv_flow_imp.id(276019992704924920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P89_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P89_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276020866998924921)
,p_name=>'SetMRNO'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(290456325146681160)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'dblclick'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276021327723924922)
,p_event_id=>wwv_flow_imp.id(276020866998924921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var mrno = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'selectMRNO(mrno);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276021797536924923)
,p_name=>'DARadType1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_RAD_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276022201840924923)
,p_event_id=>wwv_flow_imp.id(276021797536924923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276022619795924923)
,p_name=>'DAPendingFor1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_PENDING_FOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276023103830924923)
,p_event_id=>wwv_flow_imp.id(276022619795924923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276023526897924923)
,p_name=>'DADispDoctor1'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_DISP_DOCTOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276024067975924923)
,p_event_id=>wwv_flow_imp.id(276023526897924923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276024452280924924)
,p_name=>'DAPhysicistName1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_PHYSICIST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276024929880924924)
,p_event_id=>wwv_flow_imp.id(276024452280924924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276025366812924924)
,p_name=>'DAApptStatus1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_APPT_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276025811263924924)
,p_event_id=>wwv_flow_imp.id(276025366812924924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276026254953924924)
,p_name=>'PeriodDA'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276026726880924924)
,p_event_id=>wwv_flow_imp.id(276026254953924924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276027106142924924)
,p_name=>'DAMachine1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_MACHINE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276027622331924925)
,p_event_id=>wwv_flow_imp.id(276027106142924924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276028022353924925)
,p_name=>'DAAppt1'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_APPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276028540758924925)
,p_event_id=>wwv_flow_imp.id(276028022353924925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276028906223924925)
,p_name=>'DACalender'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_CALENDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276029473804924925)
,p_event_id=>wwv_flow_imp.id(276028906223924925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radselect'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276029816702924925)
,p_name=>'DAPhysicistName2'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_PHYSICIST_NAME'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276030351541924926)
,p_event_id=>wwv_flow_imp.id(276029816702924925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276030762571924926)
,p_name=>'DAMAchine2'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_MACHINE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276031244803924928)
,p_event_id=>wwv_flow_imp.id(276030762571924926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276031669122924928)
,p_name=>'DAAppt2'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_APPT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276032121156924929)
,p_event_id=>wwv_flow_imp.id(276031669122924928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276032522821924929)
,p_name=>'DADispDoctor2'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_DISP_DOCTOR'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276033043427924929)
,p_event_id=>wwv_flow_imp.id(276032522821924929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276033445487924929)
,p_name=>'SetTotalPatientCount'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(290456325146681160)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276033967709924929)
,p_event_id=>wwv_flow_imp.id(276033445487924929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P89_PATIENT_COUNT'', _.radselect.RECORD_COUNT);',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(270731540796288342)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(290456325146681160)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Patient List - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>270731540796288342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(276016384457924906)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetGV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P89_USER_MRNO := :GV_USER_MRNO;',
'  :P89_USER_ID   := :GV_USER_ID;',
'  :P89_TERMINAL  := :GV_TERMINAL;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>276016384457924906
);
wwv_flow_imp.component_end;
end;
/

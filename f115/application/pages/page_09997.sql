prompt --application/pages/page_09997
begin
--   Manifest
--     PAGE: 09997
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
 p_id=>9997
,p_name=>'DEF_SETUP_RAD_TEST'
,p_alias=>'DEF-SETUP-RAD-TEST'
,p_step_title=>'DEF_SETUP_RAD_TEST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20230413144117'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56026164558522564)
,p_plug_name=>'Setup'
,p_region_name=>'RAD_SETUP'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID,',
'       DOCTOR_ID,',
'       ENTRY_DATE,',
'       FROM_DATE,',
'       TO_DATE,',
'       DOSE_LENGTH_START,',
'       DOSE_LENGTH_END,',
'       NO_OF_FRACTION_START,',
'       NO_OF_FRACTION_END,',
'       PORT_FILM_TASK_SHOW,',
'       TREATMENT_REVISE_EMAIL,',
'       PATIENT_DISCHARGE_EMAIL,',
'       TUMOR_VOLUME_TASK_SHOW,',
'       CT_PLAN_TASK_SHOW,',
'       QA_AFTER_FRACTION,',
'       TRT_STOP_NO_QA,',
'       PHASE_COMPLETE_EMAIL,',
'       PCE_BEFORE_DAYS,',
'       EMAIL_WEEKLY_QA_OVERDUE,',
'       EMAIL_WEEKLY_QA_DAYS,',
'       IMRT_PLANNING_CHECK,',
'       HDR_NOTES_TASK_SHOW,',
'       BOOST_REQUEST_BEFORE,',
'       BOOST_APPNT_BEFORE,',
'       FU_DAY,',
'       FU_AFTER_FRACTIONS,',
'       TRT_STOP_NO_FU,',
'       ACTIVE,',
'       CPT_ID,',
'       FU_MACHINE_ID,',
'       FOLLOW_UP_SMS,',
'       FU_AFTER_2ND_FRACTION,',
'       QA_AFTER_2ND_FRACTION,',
'       PATH_RAD_REVIEWED,',
'       ROWID',
'  FROM RADIATION.DEF_SETUP',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Setup'
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
 p_id=>wwv_flow_imp.id(56026313628522566)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Setup Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'SETUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56026481770522567)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'DOCTOR_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56026534439522568)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56026671905522569)
,p_name=>'FROM_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'From Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'FROM_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56026759933522570)
,p_name=>'TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'To Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'TO_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56026870852522571)
,p_name=>'DOSE_LENGTH_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_LENGTH_START'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'DOSE_LENGTH_START'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56026912442522572)
,p_name=>'DOSE_LENGTH_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_LENGTH_END'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'DOSE_LENGTH_END'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027016609522573)
,p_name=>'NO_OF_FRACTION_START'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION_START'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'NO_OF_FRACTION_START'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027108765522574)
,p_name=>'NO_OF_FRACTION_END'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION_END'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'NO_OF_FRACTION_END'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027262137522575)
,p_name=>'PORT_FILM_TASK_SHOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORT_FILM_TASK_SHOW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PORT_FILM_TASK_SHOW'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027352178522576)
,p_name=>'TREATMENT_REVISE_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_REVISE_EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'TREATMENT_REVISE_EMAIL'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027396954522577)
,p_name=>'PATIENT_DISCHARGE_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_DISCHARGE_EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PATIENT_DISCHARGE_EMAIL'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027575796522578)
,p_name=>'TUMOR_VOLUME_TASK_SHOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TUMOR_VOLUME_TASK_SHOW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'TUMOR_VOLUME_TASK_SHOW'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027667321522579)
,p_name=>'CT_PLAN_TASK_SHOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_PLAN_TASK_SHOW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'CT_PLAN_TASK_SHOW'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027697291522580)
,p_name=>'QA_AFTER_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_AFTER_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'QA_AFTER_FRACTION'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027867361522581)
,p_name=>'TRT_STOP_NO_QA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRT_STOP_NO_QA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'TRT_STOP_NO_QA'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56027936238522582)
,p_name=>'PHASE_COMPLETE_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_COMPLETE_EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PHASE_COMPLETE_EMAIL'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028048518522583)
,p_name=>'PCE_BEFORE_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PCE_BEFORE_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PCE_BEFORE_DAYS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028108468522584)
,p_name=>'EMAIL_WEEKLY_QA_OVERDUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_WEEKLY_QA_OVERDUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'EMAIL_WEEKLY_QA_OVERDUE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028205576522585)
,p_name=>'EMAIL_WEEKLY_QA_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_WEEKLY_QA_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'EMAIL_WEEKLY_QA_DAYS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028339036522586)
,p_name=>'IMRT_PLANNING_CHECK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMRT_PLANNING_CHECK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'IMRT_PLANNING_CHECK'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028467706522587)
,p_name=>'HDR_NOTES_TASK_SHOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HDR_NOTES_TASK_SHOW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'HDR_NOTES_TASK_SHOW'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028557796522588)
,p_name=>'BOOST_REQUEST_BEFORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOST_REQUEST_BEFORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'BOOST_REQUEST_BEFORE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028662970522589)
,p_name=>'BOOST_APPNT_BEFORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOST_APPNT_BEFORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'BOOST_APPNT_BEFORE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028724348522590)
,p_name=>'FU_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FU_DAY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FU_DAY'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028809169522591)
,p_name=>'FU_AFTER_FRACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FU_AFTER_FRACTIONS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FU_AFTER_FRACTIONS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56028912794522592)
,p_name=>'TRT_STOP_NO_FU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRT_STOP_NO_FU'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'TRT_STOP_NO_FU'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029027415522593)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'ACTIVE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029176345522594)
,p_name=>'CPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'CPT_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029189254522595)
,p_name=>'FU_MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FU_MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FU_MACHINE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029305704522596)
,p_name=>'FOLLOW_UP_SMS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOW_UP_SMS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FOLLOW_UP_SMS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029441748522597)
,p_name=>'FU_AFTER_2ND_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FU_AFTER_2ND_FRACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FU_AFTER_2ND_FRACTION'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029542403522598)
,p_name=>'QA_AFTER_2ND_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QA_AFTER_2ND_FRACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'QA_AFTER_2ND_FRACTION'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029660847522599)
,p_name=>'PATH_RAD_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATH_RAD_REVIEWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PATH_RAD_REVIEWED'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56029758063522600)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(56026261627522565)
,p_internal_uid=>56026261627522565
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>250
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(61865667596355139)
,p_interactive_grid_id=>wwv_flow_imp.id(56026261627522565)
,p_static_id=>'244650'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(61865852201355139)
,p_report_id=>wwv_flow_imp.id(61865667596355139)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61866185013355142)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(56026313628522566)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>181.983
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61867107313355145)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(56026481770522567)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61868022270355147)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(56026534439522568)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61868893292355149)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(56026671905522569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>314.962
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61869874534355151)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(56026759933522570)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>286.049
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61870740537355156)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(56026870852522571)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61871633469355160)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(56026912442522572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61872499231355162)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(56027016609522573)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61873414496355167)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(56027108765522574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61874296828355169)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(56027262137522575)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61875204305355171)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(56027352178522576)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61876100572355173)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(56027396954522577)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61877056244355175)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(56027575796522578)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61877931229355178)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(56027667321522579)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61878803919355181)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(56027697291522580)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61879764995355184)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(56027867361522581)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61880601438355190)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(56027936238522582)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61881547298355192)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(56028048518522583)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61882461364355195)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(56028108468522584)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61883333064355198)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(56028205576522585)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61884234821355201)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(56028339036522586)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61885131941355203)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(56028467706522587)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61886051186355205)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(56028557796522588)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61886943261355208)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(56028662970522589)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61887827816355210)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(56028724348522590)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61888721414355212)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(56028809169522591)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61889633311355215)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(56028912794522592)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61890532962355217)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(56029027415522593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61891473569355219)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(56029176345522594)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61892356934355222)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(56029189254522595)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61893230526355225)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(56029305704522596)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61894137885355228)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(56029441748522597)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61895021693355231)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(56029542403522598)
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
 p_id=>wwv_flow_imp.id(61895917725355233)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(56029660847522599)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61896875473355236)
,p_view_id=>wwv_flow_imp.id(61865852201355139)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(56029758063522600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56029843595522601)
,p_plug_name=>'Follow Up '
,p_region_name=>'RAD_FOLLOW_UP'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID, WEEK_NO, MACHINE_ID, CREATE_SCHEDULE, ACTIVE, ROWID',
'  FROM RADIATION.DEF_SETUP_FOLLOWUP',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Follow Up '
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
 p_id=>wwv_flow_imp.id(61926685632415653)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SETUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61926825818415654)
,p_name=>'WEEK_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Week No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT LEVEL LEVEL_DESCRIPTION, LEVEL LEVEL_ID FROM DUAL CONNECT BY LEVEL <= 4'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'WEEK_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61926900091415655)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Machine'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, MACHINE_ID',
'  FROM RADIATION.MACHINES',
' WHERE MACHINE_TYPE = ''F''',
'   AND ACTIVE = ''Y''',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'MACHINE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61927082388415656)
,p_name=>'CREATE_SCHEDULE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_SCHEDULE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Create Schedule'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'CREATE_SCHEDULE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61927098505415657)
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
,p_attribute_01=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ACTIVE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64375943728102667)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(61926604788415652)
,p_internal_uid=>61926604788415652
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>250
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(61932848296417205)
,p_interactive_grid_id=>wwv_flow_imp.id(61926604788415652)
,p_static_id=>'245322'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(61933081799417205)
,p_report_id=>wwv_flow_imp.id(61932848296417205)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61933527598417207)
,p_view_id=>wwv_flow_imp.id(61933081799417205)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(61926685632415653)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61934430874417209)
,p_view_id=>wwv_flow_imp.id(61933081799417205)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(61926825818415654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128.91000000000003
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61935363458417211)
,p_view_id=>wwv_flow_imp.id(61933081799417205)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(61926900091415655)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61936259079417214)
,p_view_id=>wwv_flow_imp.id(61933081799417205)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(61927082388415656)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61937174509417216)
,p_view_id=>wwv_flow_imp.id(61933081799417205)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(61927098505415657)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.27099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66263319479163590)
,p_view_id=>wwv_flow_imp.id(61933081799417205)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(64375943728102667)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61927434845415660)
,p_plug_name=>'Setup Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>50
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61930640945415692)
,p_plug_name=>'Allowed Location '
,p_region_name=>'RAD_ALLOWED_LOCATION'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID, ORGANIZATION_ID, LOCATION_ID, ACTIVE, ROWID',
'  FROM RADIATION.DEF_SETUP_LOCATIONS',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Allowed Location '
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
 p_id=>wwv_flow_imp.id(61930792751415694)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61931238440415698)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61931361325415699)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61931395026415700)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(35585701128735353)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'LOCATION_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61931492575415701)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(61930728691415693)
,p_internal_uid=>61930728691415693
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>130
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(64310430467031001)
,p_interactive_grid_id=>wwv_flow_imp.id(61930728691415693)
,p_static_id=>'269098'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(64310655457031001)
,p_report_id=>wwv_flow_imp.id(64310430467031001)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64311162388031002)
,p_view_id=>wwv_flow_imp.id(64310655457031001)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(61930792751415694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64314687381031013)
,p_view_id=>wwv_flow_imp.id(64310655457031001)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(61931238440415698)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113.45100000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64326747469052785)
,p_view_id=>wwv_flow_imp.id(64310655457031001)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(61931361325415699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64327665946052788)
,p_view_id=>wwv_flow_imp.id(64310655457031001)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(61931395026415700)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64328573075052790)
,p_view_id=>wwv_flow_imp.id(64310655457031001)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(61931492575415701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64374411415102652)
,p_plug_name=>'Planning techniques'
,p_region_name=>'RAD_PLANNING_TECHNIQUE'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID, PLANNING_ID, ACTIVE, ROWID',
'  FROM RADIATION.DEF_SETUP_PLANNING',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Planning techniques'
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
 p_id=>wwv_flow_imp.id(64374742043102655)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64374804597102656)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64375014493102658)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(64375179384102659)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Planning '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(35570505911688075)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(64374551833102653)
,p_internal_uid=>64374551833102653
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>130
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(64383061021106964)
,p_interactive_grid_id=>wwv_flow_imp.id(64374551833102653)
,p_static_id=>'269824'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(64383268977106964)
,p_report_id=>wwv_flow_imp.id(64383061021106964)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64383734409106966)
,p_view_id=>wwv_flow_imp.id(64383268977106964)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(64374742043102655)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64384611047106968)
,p_view_id=>wwv_flow_imp.id(64383268977106964)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(64374804597102656)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.99700000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64385559123106972)
,p_view_id=>wwv_flow_imp.id(64383268977106964)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(64375014493102658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(64386465658106974)
,p_view_id=>wwv_flow_imp.id(64383268977106964)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(64375179384102659)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163258402997130518)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(579074049805288153)
,p_plug_name=>'Oncologists'
,p_region_name=>'ONCOLOGIST'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.DOCTOR_ID,',
'       I.MRNO        DOCTOR_MRNO,',
'       I.NAME        DOCTOR_NAME,',
'       I.DESIGNATION,',
'       I.ACTIVE',
'  FROM DEFINITIONS.DOCTOR D, HRD.VU_INFORMATION I',
' WHERE I.MRNO = D.DOCTOR_MRNO',
'   AND D.CONSULTANT = ''Y''',
'   AND D.ONCOLOGIST = ''Y'''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Oncologists'
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
 p_id=>wwv_flow_imp.id(56025532815522558)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56025618203522559)
,p_name=>'DOCTOR_MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(56025765258522560)
,p_name=>'DOCTOR_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>192
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
 p_id=>wwv_flow_imp.id(56025853291522561)
,p_name=>'DESIGNATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGNATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Designation'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
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
 p_id=>wwv_flow_imp.id(579077327436288149)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ACTIVE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(579074553462288153)
,p_internal_uid=>579074553462288153
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
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>250
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(579074936441288151)
,p_interactive_grid_id=>wwv_flow_imp.id(579074553462288153)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(579075126965288151)
,p_report_id=>wwv_flow_imp.id(579074936441288151)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61791658877450326)
,p_view_id=>wwv_flow_imp.id(579075126965288151)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(56025532815522558)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61792572881450329)
,p_view_id=>wwv_flow_imp.id(579075126965288151)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(56025618203522559)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.542
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61793480766450333)
,p_view_id=>wwv_flow_imp.id(579075126965288151)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(56025765258522560)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>338.497
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
 p_id=>wwv_flow_imp.id(61794285139450335)
,p_view_id=>wwv_flow_imp.id(579075126965288151)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(56025853291522561)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>453.188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(579077738350288149)
,p_view_id=>wwv_flow_imp.id(579075126965288151)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(579077327436288149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.7882
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37404669590541158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(163258402997130518)
,p_button_name=>'Create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37405864836541159)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(163258402997130518)
,p_button_name=>'Edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37405492858541159)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(163258402997130518)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37404298540541157)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(163258402997130518)
,p_button_name=>'Delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete '
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37405057398541158)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(163258402997130518)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37429174901541174)
,p_name=>'P9997_DOSE_LENGTH_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Dose Length Start'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37429568672541174)
,p_name=>'P9997_PATIENT_DISCHARGE_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Patient Discharge Email'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:YES;Y,NO;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37429902808541174)
,p_name=>'P9997_CT_PLAN_TASK_SHOW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_item_default=>'N'
,p_prompt=>'CT Plan Task Show'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:YES;Y,NO;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37430399769541174)
,p_name=>'P9997_PCE_BEFORE_DAYS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Phase Completion mail send before'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37430706963541175)
,p_name=>'P9997_FU_AFTER_FRACTIONS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Follow Up after Fractions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37431136367541175)
,p_name=>'P9997_DOSE_LENGTH_END'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Dose Length End'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37431540649541175)
,p_name=>'P9997_TREATMENT_REVISE_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Treatment Revise Email'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:YES;Y,NO;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37431921326541175)
,p_name=>'P9997_PHASE_COMPLETE_EMAIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Phase Complete Email'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37432352609541175)
,p_name=>'P9997_FOLLOW_UP_SMS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'F/U SMS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37432766744541176)
,p_name=>'P9997_TRT_STOP_NO_FU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Treatment Stop on Follow Up'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes ;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37433116485541176)
,p_name=>'P9997_NO_OF_FRACTION_START'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'No of fraction Start '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37433593502541176)
,p_name=>'P9997_TUMOR_VOLUME_TASK_SHOW'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Tumor Volume Task Show'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:YES;Y,No;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37433989683541176)
,p_name=>'P9997_IMRT_PLANNING_CHECK'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'IMRT Planning Check '
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37434332110541176)
,p_name=>'P9997_FU_AFTER_2ND_FRACTION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'FU after 2nd Fraction '
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37434712815541176)
,p_name=>'P9997_DISP_CPT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Follow Up CPT '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, CPT_ID FROM DEFINITIONS.VU_CPT_ALL ',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37435115141541177)
,p_name=>'P9997_NO_OF_FRACTION_END'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'No of Fraction End'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37435580466541177)
,p_name=>'P9997_PORT_FILM_TASK_SHOW'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Port Film Task Show'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:YES;Y,NO;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37435900480541177)
,p_name=>'P9997_PATH_RAD_REVIEWED'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Pathology / Radiology Reviewed'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37436319584541177)
,p_name=>'P9997_FU_DAY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Follow Up Day'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, DAY_ID',
'FROM DEFINITIONS.DAY ',
'ORDER BY DAY_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37436760374541177)
,p_name=>'P9997_DISP_FOLLOW_UP_MACHINE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Default Follow Up Machine'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, MACHINE_ID',
'  FROM RADIATION.MACHINES',
' WHERE MACHINE_TYPE = ''F''',
'   AND ACTIVE = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37437158551541177)
,p_name=>'P9997_SETUP_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(61927434845415660)
,p_prompt=>'Setup Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37440535651541180)
,p_name=>'P9997_CURSOR_REGION'
,p_item_sequence=>100
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71771807434111004)
,p_name=>'P9997_NEW'
,p_item_sequence=>110
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37443643629541182)
,p_name=>'Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37404669590541158)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37444140551541182)
,p_event_id=>wwv_flow_imp.id(37443643629541182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region =  apex.item("P9997_CURSOR_REGION").getValue(); ',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37442799868541181)
,p_name=>'Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37405864836541159)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37443209999541182)
,p_event_id=>wwv_flow_imp.id(37442799868541181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P9997_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").set("edit", true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37447755788541183)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37405492858541159)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37448207790541184)
,p_event_id=>wwv_flow_imp.id(37447755788541183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P9997_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").invoke("save");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37448710660541184)
,p_event_id=>wwv_flow_imp.id(37447755788541183)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37444535766541182)
,p_name=>'Delete '
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37404298540541157)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37445099142541182)
,p_event_id=>wwv_flow_imp.id(37444535766541182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you sure you want to delete selected record? If yes press save button to proceed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37445542855541182)
,p_event_id=>wwv_flow_imp.id(37444535766541182)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P9997_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-delete");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37446899226541183)
,p_name=>'GoToPreviousPage'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37405057398541158)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37447315456541183)
,p_event_id=>wwv_flow_imp.id(37446899226541183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getResponseObject(jDataStr) {',
'    if (jDataStr) {',
'        try { return JSON.parse(JSON.parse(jDataStr).data); }',
'        catch (e) {',
'                    alert("generateURL() failed to return URL");',
'            console.log(''Unable to parse response string:'' + jDataStr)',
'            window.close();',
'        }',
'    }',
'};',
'',
'',
'',
'async function generateURL() {',
'    return apex.server.process(''GET_PREVIOUS_PAGE_URL'', {},',
'        {',
'            dataType: "text"',
'        }',
'    );',
'};',
'',
'',
'',
'//generate url',
'let url = generateURL();',
'url.then((jDataStr) => {',
'    let urlObj = getResponseObject(jDataStr);',
'    // navigate to url',
'    try {',
'        if (urlObj)',
'            apex.navigation.redirect(urlObj.url);',
'        else',
'            throw urlNotFound();',
'    }',
'    catch (e) {',
'        console.log(''generateURL() failed to return URL'');',
'        console.log(''Closing the current window'');',
'        window.close();',
'    }',
'',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37445900395541183)
,p_name=>'CursorRegionOncologist'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(579074049805288153)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37446425083541183)
,p_event_id=>wwv_flow_imp.id(37445900395541183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P9997_CURSOR_REGION" ).setValue ("ONCOLOGIST");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37441828945541180)
,p_name=>'CursorRegionSetup'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(56026164558522564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37442373713541181)
,p_event_id=>wwv_flow_imp.id(37441828945541180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P9997_CURSOR_REGION" ).setValue ("RAD_SETUP");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37440949484541180)
,p_name=>'SetSetupDetailRecord'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(56026164558522564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37441452005541180)
,p_event_id=>wwv_flow_imp.id(37440949484541180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''RAD_SETUP'').widget();',
'',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'',
'var model = grid.model;',
'',
'var selectedRecords = grid.view$.grid("getSelectedRecords");',
'',
'for (i = 0; i < selectedRecords.length; i++) {',
'',
'    var record = selectedRecords[i];',
'',
'    var DOSE_LENGTH_START = model.getValue(record, "DOSE_LENGTH_START");',
'    $s(''P9997_DOSE_LENGTH_START'', DOSE_LENGTH_START);',
'',
'    var PATIENT_DISCHARGE_EMAIL = model.getValue(record, "PATIENT_DISCHARGE_EMAIL");',
'    $s(''P9997_PATIENT_DISCHARGE_EMAIL'', PATIENT_DISCHARGE_EMAIL);',
'',
'    var CT_PLAN_TASK_SHOW = model.getValue(record, "CT_PLAN_TASK_SHOW");',
'    $s(''P9997_CT_PLAN_TASK_SHOW'', CT_PLAN_TASK_SHOW);',
'',
'    var PCE_BEFORE_DAYS = model.getValue(record, "PCE_BEFORE_DAYS");',
'    $s(''P9997_PCE_BEFORE_DAYS'', PCE_BEFORE_DAYS);',
'',
'    var FU_AFTER_FRACTIONS = model.getValue(record, "FU_AFTER_FRACTIONS");',
'    $s(''P9997_FU_AFTER_FRACTIONS'', FU_AFTER_FRACTIONS);',
'',
'    var DOSE_LENGTH_END = model.getValue(record, "DOSE_LENGTH_END");',
'    $s(''P9997_DOSE_LENGTH_END'', DOSE_LENGTH_END);',
'',
'    var TREATMENT_REVISE_EMAIL = model.getValue(record, "TREATMENT_REVISE_EMAIL");',
'    $s(''P9997_TREATMENT_REVISE_EMAIL'', TREATMENT_REVISE_EMAIL);',
'',
'    var PHASE_COMPLETE_EMAIL = model.getValue(record, "PHASE_COMPLETE_EMAIL");',
'    $s(''P9997_PHASE_COMPLETE_EMAIL'', PHASE_COMPLETE_EMAIL);',
'',
'    var FOLLOW_UP_SMS = model.getValue(record, "FOLLOW_UP_SMS");',
'    $s(''P9997_FOLLOW_UP_SMS'', FOLLOW_UP_SMS);',
'',
'    var TRT_STOP_NO_FU = model.getValue(record, "TRT_STOP_NO_FU");',
'    $s(''P9997_TRT_STOP_NO_FU'', TRT_STOP_NO_FU);',
'',
'    var NO_OF_FRACTION_START = model.getValue(record, "NO_OF_FRACTION_START");',
'    $s(''P9997_NO_OF_FRACTION_START'', NO_OF_FRACTION_START);',
'',
'    var TUMOR_VOLUME_TASK_SHOW = model.getValue(record, "TUMOR_VOLUME_TASK_SHOW");',
'    $s(''P9997_TUMOR_VOLUME_TASK_SHOW'', TUMOR_VOLUME_TASK_SHOW);',
'',
'    var IMRT_PLANNING_CHECK = model.getValue(record, "IMRT_PLANNING_CHECK");',
'    $s(''P9997_IMRT_PLANNING_CHECK'', IMRT_PLANNING_CHECK);',
'',
'    var FU_AFTER_2ND_FRACTION = model.getValue(record, "FU_AFTER_2ND_FRACTION");',
'    $s(''P9997_FU_AFTER_2ND_FRACTION'', FU_AFTER_2ND_FRACTION);',
'',
'    var NO_OF_FRACTION_END = model.getValue(record, "NO_OF_FRACTION_END");',
'    $s(''P9997_NO_OF_FRACTION_END'', NO_OF_FRACTION_END);',
'',
'    var PORT_FILM_TASK_SHOW = model.getValue(record, "PORT_FILM_TASK_SHOW");',
'    $s(''P9997_PORT_FILM_TASK_SHOW'', PORT_FILM_TASK_SHOW);',
'',
'    var PATH_RAD_REVIEWED = model.getValue(record, "PATH_RAD_REVIEWED");',
'    $s(''P9997_PATH_RAD_REVIEWED'', PATH_RAD_REVIEWED);',
'',
'    var FU_DAY = model.getValue(record, "FU_DAY");',
'    $s(''P9997_FU_DAY'', FU_DAY);',
'',
'    var CPT_ID = model.getValue(record, "CPT_ID");',
'    $s(''P9997_DISP_CPT'', CPT_ID);',
'',
'    var FU_MACHINE_ID = model.getValue(record, "FU_MACHINE_ID");',
'    $s(''P9997_DISP_FOLLOW_UP_MACHINE'', FU_MACHINE_ID);',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37449140588541184)
,p_name=>'SetRegionNameSetupDetail'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61927434845415660)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37449670975541184)
,p_event_id=>wwv_flow_imp.id(37449140588541184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P9997_CURSOR_REGION" ).setValue ("RAD_SETUP");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37428484278541173)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(56026164558522564)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Setup - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_DS_TAB RADIATION.PKG_S18APX00017.RAD_DS_TAB;',
'  L_COUNT      NUMBER := 0;',
'  L_SETUP_ID   RADIATION.DEF_SETUP.SETUP_ID%TYPE;',
'',
'BEGIN',
'',
'  APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Error in test'',',
'                       P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE  => ''DML PROCEDURE'',',
'                             P_CATEGORY => ''DEF_SETUP'');',
'  BEGIN',
'    SELECT NVL(MAX(SETUP_ID), 0) + 1',
'      INTO L_SETUP_ID',
'      FROM RADIATION.DEF_SETUP;',
'  END;',
'',
'  BEGIN',
'    SELECT L_SETUP_ID,',
'           :DOCTOR_ID,',
'           SYSDATE,',
'           :FROM_DATE,',
'           :TO_DATE,',
'           :P9997_DOSE_LENGTH_START,',
'           :P9997_DOSE_LENGTH_END,',
'           :P9997_NO_OF_FRACTION_START,',
'           :P9997_NO_OF_FRACTION_END,',
'           :P9997_PORT_FILM_TASK_SHOW,',
'           :P9997_TREATMENT_REVISE_EMAIL,',
'           :P9997_PATIENT_DISCHARGE_EMAIL,',
'           :P9997_TUMOR_VOLUME_TASK_SHOW,',
'           :P9997_CT_PLAN_TASK_SHOW,',
'           :QA_AFTER_FRACTION,',
'           :TRT_STOP_NO_QA,',
'           :P9997_PHASE_COMPLETE_EMAIL,',
'           :P9997_PCE_BEFORE_DAYS,',
'           ''N'',',
'           NVL(:EMAIL_WEEKLY_QA_DAYS, 0),',
'           :P9997_IMRT_PLANNING_CHECK,',
'           NVL(:HDR_NOTES_TASK_SHOW, ''Y''),',
'           :BOOST_REQUEST_BEFORE,',
'           :BOOST_APPNT_BEFORE,',
'           :P9997_FU_DAY,',
'           :P9997_FU_AFTER_FRACTIONS,',
'           :P9997_TRT_STOP_NO_FU,',
'           NVL(:ACTIVE, ''Y''),',
'           :P9997_DISP_CPT,',
'           :P9997_DISP_FOLLOW_UP_MACHINE,',
'           :P9997_FOLLOW_UP_SMS,',
'           :P9997_FU_AFTER_2ND_FRACTION,',
'           :QA_AFTER_2ND_FRACTION,',
'           :P9997_PATH_RAD_REVIEWED',
'      BULK COLLECT',
'      INTO L_RAD_DS_TAB',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      BEGIN',
'        -----------',
'        -- Insert',
'        -----------',
'        RADIATION.PKG_S18APX00017.INSERT_RAD_DEF_SETUP(P_BLOCK_DATA => L_RAD_DS_TAB);',
'      ',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      BEGIN',
'        -----------',
'        -- Update',
'        -----------',
'        RADIATION.PKG_S18APX00017.UPDATE_RAD_DEF_SETUP(P_BLOCK_DATA => L_RAD_DS_TAB);',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      BEGIN',
'        -----------',
'        -- Delete',
'        -----------',
'        RADIATION.PKG_S18APX00017.DELETE_RAD_DEF_SETUP(P_BLOCK_DATA => L_RAD_DS_TAB);',
'      ',
'      END;',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37428484278541173
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37409635718541161)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(56029843595522601)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Follow Up - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT NUMBER := 0;',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      BEGIN',
'        INSERT INTO RADIATION.DEF_SETUP_FOLLOWUP',
'          (SETUP_ID, WEEK_NO, MACHINE_ID, CREATE_SCHEDULE, ACTIVE)',
'        VALUES',
'          (:SETUP_ID, :WEEK_NO, :MACHINE_ID, :CREATE_SCHEDULE, :ACTIVE);',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        UPDATE RADIATION.DEF_SETUP_FOLLOWUP',
'           SET WEEK_NO         = :WEEK_NO,',
'               MACHINE_ID      = :MACHINE_ID,',
'               CREATE_SCHEDULE = :CREATE_SCHEDULE,',
'               ACTIVE          = :ACTIVE',
'         WHERE ROWID = :ROWID;',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        DELETE FROM RADIATION.DEF_SETUP_FOLLOWUP WHERE ROWID = :ROWID;',
'      END;',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);              ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37409635718541161
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37413048330541164)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(61930640945415692)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Allowed Location - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT NUMBER := 0;',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      BEGIN',
'        INSERT INTO RADIATION.DEF_SETUP_LOCATIONS',
'          (SETUP_ID, ORGANIZATION_ID, LOCATION_ID, ACTIVE)',
'        VALUES',
'          (:SETUP_ID, :GV_ORGANIZATION_ID, :LOCATION_ID, :ACTIVE);',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        UPDATE RADIATION.DEF_SETUP_LOCATIONS',
'           SET ACTIVE = :ACTIVE,',
'               LOCATION_ID = :LOCATION_ID',
'         WHERE ROWID = :ROWID;',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        DELETE FROM RADIATION.DEF_SETUP_LOCATIONS WHERE ROWID = :ROWID;',
'      END;',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);                    ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37413048330541164
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37440176668541179)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(64374411415102652)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Planning Technique - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT NUMBER := 0;',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      BEGIN',
'        INSERT INTO RADIATION.DEF_SETUP_PLANNING',
'          (SETUP_ID, PLANNING_ID, ACTIVE)',
'        VALUES',
'          (:SETUP_ID, :PLANNING_ID, :ACTIVE);',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        UPDATE RADIATION.DEF_SETUP_PLANNING',
'           SET PLANNING_ID = :PLANNING_ID, ACTIVE = :ACTIVE',
'         WHERE ROWID = :ROWID;',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        DELETE FROM RADIATION.DEF_SETUP_PLANNING WHERE ROWID = :ROWID;',
'      END;',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);                     ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37440176668541179
);
null;
wwv_flow_imp.component_end;
end;
/

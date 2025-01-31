prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'DEF_SETUP_RADIATION'
,p_alias=>'DEF-SETUP-RADIATION'
,p_step_title=>'DEF_SETUP_RADIATION'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250108232742'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18625481047981413)
,p_plug_name=>'Setup / Setup Detail'
,p_region_name=>'rad_setup'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
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
' WHERE DOCTOR_ID = :P18_ND_DOCTOR_ID;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P18_ND_DOCTOR_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18629160084981450)
,p_plug_name=>'Follow Up '
,p_region_name=>'rad_follow_up'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID, WEEK_NO, MACHINE_ID, CREATE_SCHEDULE, ACTIVE, ROWID',
'  FROM RADIATION.DEF_SETUP_FOLLOWUP',
' WHERE SETUP_ID = :P18_SETUP_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_SETUP_ID'
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
 p_id=>wwv_flow_imp.id(24526002121874502)
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24526142307874503)
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
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'WEEK_NO'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24526216580874504)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'F/u Machine'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24526398877874505)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24526414994874506)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26975260217561516)
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
 p_id=>wwv_flow_imp.id(24525921277874501)
,p_internal_uid=>24525921277874501
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
,p_fixed_header_max_height=>383
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(24532164785876054)
,p_interactive_grid_id=>wwv_flow_imp.id(24525921277874501)
,p_static_id=>'245322'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24532398288876054)
,p_report_id=>wwv_flow_imp.id(24532164785876054)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24532844087876056)
,p_view_id=>wwv_flow_imp.id(24532398288876054)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(24526002121874502)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24533747363876058)
,p_view_id=>wwv_flow_imp.id(24532398288876054)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(24526142307874503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128.91000000000003
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24534679947876060)
,p_view_id=>wwv_flow_imp.id(24532398288876054)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(24526216580874504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24535575568876063)
,p_view_id=>wwv_flow_imp.id(24532398288876054)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(24526398877874505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24536490998876065)
,p_view_id=>wwv_flow_imp.id(24532398288876054)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(24526414994874506)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.27099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28862635968622439)
,p_view_id=>wwv_flow_imp.id(24532398288876054)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(26975260217561516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24529957434874541)
,p_plug_name=>'Allowed Location '
,p_region_name=>'rad_allowed_location'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID, ORGANIZATION_ID, LOCATION_ID, LOCATION_ID DISP_LOCATION_ID, ACTIVE, ROWID',
'  FROM RADIATION.DEF_SETUP_LOCATIONS',
' WHERE SETUP_ID = :P18_SETUP_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_SETUP_ID'
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
 p_id=>wwv_flow_imp.id(24530109240874543)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_static_id=>'SETUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24530554929874547)
,p_name=>'ACTIVE_LOC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ACTIVE_LOC'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24530677814874548)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_static_id=>'ORGANIZATION_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24530711515874549)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>3
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24530809064874550)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39046883155005406)
,p_name=>'DISP_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(24530045180874542)
,p_internal_uid=>24530045180874542
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
,p_fixed_header_max_height=>220
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(26909746956489850)
,p_interactive_grid_id=>wwv_flow_imp.id(24530045180874542)
,p_static_id=>'269098'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(26909971946489850)
,p_report_id=>wwv_flow_imp.id(26909746956489850)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26910478877489851)
,p_view_id=>wwv_flow_imp.id(26909971946489850)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(24530109240874543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26914003870489862)
,p_view_id=>wwv_flow_imp.id(26909971946489850)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(24530554929874547)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26926063958511634)
,p_view_id=>wwv_flow_imp.id(26909971946489850)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(24530677814874548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26926982435511637)
,p_view_id=>wwv_flow_imp.id(26909971946489850)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(24530711515874549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26927889564511639)
,p_view_id=>wwv_flow_imp.id(26909971946489850)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(24530809064874550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40050104291751695)
,p_view_id=>wwv_flow_imp.id(26909971946489850)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(39046883155005406)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78.688
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26973727904561501)
,p_plug_name=>'Planning Techniques'
,p_region_name=>'rad_planning_technique'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SETUP_ID, PLANNING_ID, ACTIVE, ROWID, PLANNING_ID DISP_PLANNING_ID',
'  FROM RADIATION.DEF_SETUP_PLANNING',
' WHERE SETUP_ID = :P18_SETUP_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_SETUP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Planning Techniques'
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
 p_id=>wwv_flow_imp.id(26974058532561504)
,p_name=>'SETUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_static_id=>'SETUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26974121086561505)
,p_name=>'ACTIVE_PLAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ACTIVE_PLAN'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(26974330982561507)
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
 p_id=>wwv_flow_imp.id(26974495873561508)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Planning '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>2
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
,p_static_id=>'PLANNING_ID'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(39046906977005407)
,p_name=>'DISP_PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(26973868322561502)
,p_internal_uid=>26973868322561502
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
,p_fixed_header_max_height=>220
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(26982377510565813)
,p_interactive_grid_id=>wwv_flow_imp.id(26973868322561502)
,p_static_id=>'269824'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(26982585466565813)
,p_report_id=>wwv_flow_imp.id(26982377510565813)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26983050898565815)
,p_view_id=>wwv_flow_imp.id(26982585466565813)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(26974058532561504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26983927536565817)
,p_view_id=>wwv_flow_imp.id(26982585466565813)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(26974121086561505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79.453
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26984875612565821)
,p_view_id=>wwv_flow_imp.id(26982585466565813)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(26974330982561507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26985782147565823)
,p_view_id=>wwv_flow_imp.id(26982585466565813)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(26974495873561508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(40056092348765360)
,p_view_id=>wwv_flow_imp.id(26982585466565813)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(39046906977005407)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.76600000000002
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125857719486589367)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(541673366294747002)
,p_plug_name=>'Oncologists'
,p_region_name=>'oncologist'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
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
'   AND D.ONCOLOGIST = ''Y''',
'   AND (NVL(:P18_SHOW_ALL_ONCOLOGISTS, ''N'') = ''Y'' OR EXISTS',
'        (SELECT 1 FROM RADIATION.DEF_SETUP S WHERE S.DOCTOR_ID = D.DOCTOR_ID))',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P18_SHOW_ALL_ONCOLOGISTS'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18624849304981407)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'DOCTOR_ID'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18624934692981408)
,p_name=>'DOCTOR_MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18625081747981409)
,p_name=>'DOCTOR_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18625169780981410)
,p_name=>'DESIGNATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGNATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Designation'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(541676643925746998)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(541673869951747002)
,p_internal_uid=>541673869951747002
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
 p_id=>wwv_flow_imp.id(541674252930747000)
,p_interactive_grid_id=>wwv_flow_imp.id(541673869951747002)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(541674443454747000)
,p_report_id=>wwv_flow_imp.id(541674252930747000)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24390975366909175)
,p_view_id=>wwv_flow_imp.id(541674443454747000)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18624849304981407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24391889370909178)
,p_view_id=>wwv_flow_imp.id(541674443454747000)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18624934692981408)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.542
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24392797255909182)
,p_view_id=>wwv_flow_imp.id(541674443454747000)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18625081747981409)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>307.497
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24393601628909184)
,p_view_id=>wwv_flow_imp.id(541674443454747000)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18625169780981410)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>453.188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(541677054839746998)
,p_view_id=>wwv_flow_imp.id(541674443454747000)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(541676643925746998)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57.788
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24368046969856802)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(125857719486589367)
,p_button_name=>'Create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24369292050856803)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(125857719486589367)
,p_button_name=>'Edit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24368819285856803)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(125857719486589367)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'PREVIOUS'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24367691731856799)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(125857719486589367)
,p_button_name=>'Delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete '
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24368452456856803)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(125857719486589367)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(41732780903012521)
,p_branch_name=>'GoToHomePage'
,p_branch_action=>'f?p=100:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(24368452456856803)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24369671849856806)
,p_name=>'P18_CURSOR_REGION'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37450670450545406)
,p_name=>'P18_SETUP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Setup Id'
,p_source=>'SETUP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37450766855545407)
,p_name=>'P18_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37450855971545408)
,p_name=>'P18_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37450964774545409)
,p_name=>'P18_FROM_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'From Date'
,p_source=>'FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451081563545410)
,p_name=>'P18_TO_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'To Date'
,p_source=>'TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451124412545411)
,p_name=>'P18_DOSE_LENGTH_START'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Dose Length Start'
,p_source=>'DOSE_LENGTH_START'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451222108545412)
,p_name=>'P18_DOSE_LENGTH_END'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Dose Length End'
,p_source=>'DOSE_LENGTH_END'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451333389545413)
,p_name=>'P18_NO_OF_FRACTION_START'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'No Of Fraction Start'
,p_source=>'NO_OF_FRACTION_START'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451418241545414)
,p_name=>'P18_NO_OF_FRACTION_END'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'No Of Fraction End'
,p_source=>'NO_OF_FRACTION_END'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451527980545415)
,p_name=>'P18_PORT_FILM_TASK_SHOW'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Port Film Task Show'
,p_source=>'PORT_FILM_TASK_SHOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451605676545416)
,p_name=>'P18_TREATMENT_REVISE_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Treatment Revise Email'
,p_source=>'TREATMENT_REVISE_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451771724545417)
,p_name=>'P18_PATIENT_DISCHARGE_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Patient Discharge Email'
,p_source=>'PATIENT_DISCHARGE_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451886563545418)
,p_name=>'P18_TUMOR_VOLUME_TASK_SHOW'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Tumor Volume Task Show'
,p_source=>'TUMOR_VOLUME_TASK_SHOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37451905435545419)
,p_name=>'P18_CT_PLAN_TASK_SHOW'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Ct Plan Task Show'
,p_source=>'CT_PLAN_TASK_SHOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452098206545420)
,p_name=>'P18_QA_AFTER_FRACTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'QA_AFTER_FRACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452123595545421)
,p_name=>'P18_TRT_STOP_NO_QA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'TRT_STOP_NO_QA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452259288545422)
,p_name=>'P18_PHASE_COMPLETE_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_default=>'N'
,p_prompt=>'Phase Complete Email'
,p_source=>'PHASE_COMPLETE_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452315019545423)
,p_name=>'P18_PCE_BEFORE_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Phase completion mail send before'
,p_source=>'PCE_BEFORE_DAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452420119545424)
,p_name=>'P18_EMAIL_WEEKLY_QA_OVERDUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'EMAIL_WEEKLY_QA_OVERDUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452547465545425)
,p_name=>'P18_EMAIL_WEEKLY_QA_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'EMAIL_WEEKLY_QA_DAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452659562545426)
,p_name=>'P18_IMRT_PLANNING_CHECK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_default=>'N'
,p_prompt=>'IMRT Planning Check'
,p_source=>'IMRT_PLANNING_CHECK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452791667545427)
,p_name=>'P18_HDR_NOTES_TASK_SHOW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'HDR_NOTES_TASK_SHOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452851709545428)
,p_name=>'P18_BOOST_REQUEST_BEFORE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'BOOST_REQUEST_BEFORE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37452993358545429)
,p_name=>'P18_BOOST_APPNT_BEFORE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'BOOST_APPNT_BEFORE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453061677545430)
,p_name=>'P18_FU_DAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Follow Up Day'
,p_source=>'FU_DAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT D.DESCRIPTION, D.DAY_ID FROM DEFINITIONS.DAY D '
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453127023545431)
,p_name=>'P18_FU_AFTER_FRACTIONS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Follow Up After Fractions'
,p_source=>'FU_AFTER_FRACTIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453276250545432)
,p_name=>'P18_TRT_STOP_NO_FU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Treatment Stop on Follow Up'
,p_source=>'TRT_STOP_NO_FU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453308580545433)
,p_name=>'P18_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453490666545434)
,p_name=>'P18_CPT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Follow Up CPT '
,p_source=>'CPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DESCRIPTION, CPT_ID FROM DEFINITIONS.VU_CPT_ALL'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453537433545435)
,p_name=>'P18_FU_MACHINE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'Default Follow Up Machine '
,p_source=>'FU_MACHINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, MACHINE_ID',
'  FROM RADIATION.MACHINES',
' WHERE MACHINE_TYPE = ''F''',
'   AND ACTIVE = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453663419545436)
,p_name=>'P18_FOLLOW_UP_SMS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_prompt=>'F/U SMS'
,p_source=>'FOLLOW_UP_SMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453704323545437)
,p_name=>'P18_FU_AFTER_2ND_FRACTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_default=>'N'
,p_prompt=>'Fu After 2nd Fraction'
,p_source=>'FU_AFTER_2ND_FRACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453863017545438)
,p_name=>'P18_QA_AFTER_2ND_FRACTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'QA_AFTER_2ND_FRACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37453941549545439)
,p_name=>'P18_PATH_RAD_REVIEWED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_default=>'N'
,p_prompt=>'Pathology / Radiology Reviewed'
,p_source=>'PATH_RAD_REVIEWED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37454070952545440)
,p_name=>'P18_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_item_source_plug_id=>wwv_flow_imp.id(18625481047981413)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37454190534545441)
,p_name=>'P18_ND_DOCTOR_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37768593118524920)
,p_name=>'P18_SHOW_ALL_ONCOLOGISTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(541673366294747002)
,p_item_default=>'N'
,p_prompt=>'Show All Oncologists'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41732600801012520)
,p_name=>'P18_PAGE_STATE'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24370968208856815)
,p_name=>'Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24368046969856802)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24371442255856816)
,p_event_id=>wwv_flow_imp.id(24370968208856815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region =  apex.item("P18_CURSOR_REGION").getValue(); ',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24370006965856810)
,p_name=>'Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24369292050856803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24370517969856811)
,p_event_id=>wwv_flow_imp.id(24370006965856810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P18_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").set("edit", true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24375001111856818)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24368819285856803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24375537279856819)
,p_event_id=>wwv_flow_imp.id(24375001111856818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P18_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").invoke("save");',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30989036126797602)
,p_event_id=>wwv_flow_imp.id(24375001111856818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24371854122856817)
,p_name=>'Delete '
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24367691731856799)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24372301386856817)
,p_event_id=>wwv_flow_imp.id(24371854122856817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you sure you want to delete selected record? If yes press save button to proceed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24372852888856817)
,p_event_id=>wwv_flow_imp.id(24371854122856817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P18_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-delete");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24374133079856818)
,p_name=>'GoToPreviousPage'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24368452456856803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24374662481856818)
,p_event_id=>wwv_flow_imp.id(24374133079856818)
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
 p_id=>wwv_flow_imp.id(37454207708545442)
,p_name=>'SetDoctorID'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(541673366294747002)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37454301707545443)
,p_event_id=>wwv_flow_imp.id(37454207708545442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedDoctorId = "",',
'',
'    model = this.data.model;',
'',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    selectedDoctorId += model.getValue(this.data.selectedRecords[i], "DOCTOR_ID");',
'',
'',
'}',
'',
'$s("P18_ND_DOCTOR_ID", selectedDoctorId);',
'$s("P18_DOCTOR_ID", selectedDoctorId);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37454412504545444)
,p_event_id=>wwv_flow_imp.id(37454207708545442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SETUP_ID,',
'         DOCTOR_ID,',
'         ENTRY_DATE,',
'         FROM_DATE,',
'         TO_DATE,',
'         DOSE_LENGTH_START,',
'         DOSE_LENGTH_END,',
'         NO_OF_FRACTION_START,',
'         NO_OF_FRACTION_END,',
'         PORT_FILM_TASK_SHOW,',
'         TREATMENT_REVISE_EMAIL,',
'         PATIENT_DISCHARGE_EMAIL,',
'         TUMOR_VOLUME_TASK_SHOW,',
'         CT_PLAN_TASK_SHOW,',
'         QA_AFTER_FRACTION,',
'         TRT_STOP_NO_QA,',
'         PHASE_COMPLETE_EMAIL,',
'         PCE_BEFORE_DAYS,',
'         EMAIL_WEEKLY_QA_OVERDUE,',
'         EMAIL_WEEKLY_QA_DAYS,',
'         IMRT_PLANNING_CHECK,',
'         HDR_NOTES_TASK_SHOW,',
'         BOOST_REQUEST_BEFORE,',
'         BOOST_APPNT_BEFORE,',
'         FU_DAY,',
'         FU_AFTER_FRACTIONS,',
'         TRT_STOP_NO_FU,',
'         ACTIVE,',
'         CPT_ID,',
'         FU_MACHINE_ID,',
'         FOLLOW_UP_SMS,',
'         FU_AFTER_2ND_FRACTION,',
'         QA_AFTER_2ND_FRACTION,',
'         PATH_RAD_REVIEWED,',
'         ROWID',
'    INTO :P18_SETUP_ID,',
'         :P18_DOCTOR_ID,',
'         :P18_ENTRY_DATE,',
'         :P18_FROM_DATE,',
'         :P18_TO_DATE,',
'         :P18_DOSE_LENGTH_START,',
'         :P18_DOSE_LENGTH_END,',
'         :P18_NO_OF_FRACTION_START,',
'         :P18_NO_OF_FRACTION_END,',
'         :P18_PORT_FILM_TASK_SHOW,',
'         :P18_TREATMENT_REVISE_EMAIL,',
'         :P18_PATIENT_DISCHARGE_EMAIL,',
'         :P18_TUMOR_VOLUME_TASK_SHOW,',
'         :P18_CT_PLAN_TASK_SHOW,',
'         :P18_QA_AFTER_FRACTION,',
'         :P18_TRT_STOP_NO_QA,',
'         :P18_PHASE_COMPLETE_EMAIL,',
'         :P18_PCE_BEFORE_DAYS,',
'         :P18_EMAIL_WEEKLY_QA_OVERDUE,',
'         :P18_EMAIL_WEEKLY_QA_DAYS,',
'         :P18_IMRT_PLANNING_CHECK,',
'         :P18_HDR_NOTES_TASK_SHOW,',
'         :P18_BOOST_REQUEST_BEFORE,',
'         :P18_BOOST_APPNT_BEFORE,',
'         :P18_FU_DAY,',
'         :P18_FU_AFTER_FRACTIONS,',
'         :P18_TRT_STOP_NO_FU,',
'         :P18_ACTIVE,',
'         :P18_CPT_ID,',
'         :P18_FU_MACHINE_ID,',
'         :P18_FOLLOW_UP_SMS,',
'         :P18_FU_AFTER_2ND_FRACTION,',
'         :P18_QA_AFTER_2ND_FRACTION,',
'         :P18_PATH_RAD_REVIEWED,',
'         :P18_ROWID',
'    FROM RADIATION.DEF_SETUP',
'   WHERE DOCTOR_ID = :P18_ND_DOCTOR_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P18_ND_DOCTOR_ID'
,p_attribute_03=>'P18_SETUP_ID,P18_DOCTOR_ID,P18_ENTRY_DATE,P18_FROM_DATE,P18_TO_DATE,P18_DOSE_LENGTH_START,P18_DOSE_LENGTH_END,P18_NO_OF_FRACTION_START,P18_NO_OF_FRACTION_END,P18_PORT_FILM_TASK_SHOW,P18_TREATMENT_REVISE_EMAIL,P18_PATIENT_DISCHARGE_EMAIL,P18_TUMOR_VOL'
||'UME_TASK_SHOW,P18_CT_PLAN_TASK_SHOW,P18_QA_AFTER_FRACTION,P18_TRT_STOP_NO_QA,P18_PHASE_COMPLETE_EMAIL,P18_PCE_BEFORE_DAYS,P18_EMAIL_WEEKLY_QA_OVERDUE,P18_EMAIL_WEEKLY_QA_DAYS,P18_IMRT_PLANNING_CHECK,P18_HDR_NOTES_TASK_SHOW,P18_BOOST_REQUEST_BEFORE,P1'
||'8_BOOST_APPNT_BEFORE,P18_FU_DAY,P18_FU_AFTER_FRACTIONS,P18_TRT_STOP_NO_FU,P18_ACTIVE,P18_CPT_ID,P18_FU_MACHINE_ID,P18_FOLLOW_UP_SMS,P18_FU_AFTER_2ND_FRACTION,P18_QA_AFTER_2ND_FRACTION,P18_PATH_RAD_REVIEWED,P18_ROWID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37454778219545447)
,p_event_id=>wwv_flow_imp.id(37454207708545442)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24529957434874541)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37454862600545448)
,p_event_id=>wwv_flow_imp.id(37454207708545442)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18629160084981450)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37454903662545449)
,p_event_id=>wwv_flow_imp.id(37454207708545442)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26973727904561501)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37768294315524917)
,p_event_id=>wwv_flow_imp.id(37454207708545442)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P18_CURSOR_REGION" ).setValue ();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37767442730524909)
,p_name=>'SetFURegionName'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18629160084981450)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37767502553524910)
,p_event_id=>wwv_flow_imp.id(37767442730524909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P18_CURSOR_REGION" ).setValue ("rad_follow_up");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37767664339524911)
,p_name=>'SetAllowedLocationRegionName'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24529957434874541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37767779252524912)
,p_event_id=>wwv_flow_imp.id(37767664339524911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P18_CURSOR_REGION" ).setValue ("rad_allowed_location");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37767876642524913)
,p_name=>'SetPlantechregionName'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26973727904561501)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37767946897524914)
,p_event_id=>wwv_flow_imp.id(37767876642524913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P18_CURSOR_REGION" ).setValue ("rad_planning_technique");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37768019015524915)
,p_name=>'SetRadOncoRegionName'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(541673366294747002)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37768124418524916)
,p_event_id=>wwv_flow_imp.id(37768019015524915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P18_CURSOR_REGION" ).setValue ();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37768304615524918)
,p_name=>'PageLoad'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37768405500524919)
,p_event_id=>wwv_flow_imp.id(37768304615524918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item( "P18_CURSOR_REGION" ).setValue (" ");',
'document.getElementById("P18_SETUP_ID").readOnly = true;',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37768828014524923)
,p_event_id=>wwv_flow_imp.id(37768304615524918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("oncologist").call("getActions").invoke(''reset-report'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37769542528524930)
,p_event_id=>wwv_flow_imp.id(37768304615524918)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("rad_follow_up").call("getActions").invoke(''reset-report'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37769696384524931)
,p_event_id=>wwv_flow_imp.id(37768304615524918)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("rad_allowed_location").call("getActions").invoke(''reset-report'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37769727485524932)
,p_event_id=>wwv_flow_imp.id(37768304615524918)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("rad_planning_technique").call("getActions").invoke(''reset-report'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37770247414524937)
,p_name=>'QueryAllOncologist'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_SHOW_ALL_ONCOLOGISTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37770326401524938)
,p_event_id=>wwv_flow_imp.id(37770247414524937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(541673366294747002)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38482398406170839)
,p_name=>'CloseMenu'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38482440315170840)
,p_event_id=>wwv_flow_imp.id(38482398406170839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39049111318005429)
,p_name=>'KeepCursorPosition'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(541673366294747002)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39049243179005430)
,p_event_id=>wwv_flow_imp.id(39049111318005429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gridID = "oncologist";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'var selectedRecord = grid.getSelectedRecords();',
'console.log(selectedRecord);',
'localStorage.setItem(''lastSelectedRecord'', JSON.stringify(selectedRecord));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39049341254005431)
,p_name=>'GoToPreviousSelectedRecord'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P18_PAGE_STATE = ''KEEP_CURSOR'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39049409760005432)
,p_event_id=>wwv_flow_imp.id(39049341254005431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//set the static id field on your interactive grid and put the value on gridID variable',
'var gridID = "oncologist";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'',
'grid.setSelectedRecords(JSON.parse(localStorage.getItem(''lastSelectedRecord'')));',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277843227939685601)
,p_name=>'DACptId'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_CPT_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277843391686685602)
,p_event_id=>wwv_flow_imp.id(277843227939685601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26975384534561517)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18629160084981450)
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
'          (:P18_SETUP_ID, :WEEK_NO, :MACHINE_ID, :CREATE_SCHEDULE, :ACTIVE);',
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
'  :P18_PAGE_STATE := ''KEEP_CURSOR'';',
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
,p_process_success_message=>'Changes saved successfully '
,p_internal_uid=>26975384534561517
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26975464780561518)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24529957434874541)
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
'          (:P18_SETUP_ID, :GV_ORGANIZATION_ID, :LOCATION_ID, :ACTIVE_LOC);',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        UPDATE RADIATION.DEF_SETUP_LOCATIONS',
'           SET ACTIVE = :ACTIVE_LOC,',
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
'  :P18_PAGE_STATE := ''KEEP_CURSOR'';',
'  ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);                    ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Changes saved successfully '
,p_internal_uid=>26975464780561518
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26975542941561519)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(26973727904561501)
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
'          (:P18_SETUP_ID, :PLANNING_ID, :ACTIVE_PLAN);',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        UPDATE RADIATION.DEF_SETUP_PLANNING',
'           SET PLANNING_ID = :PLANNING_ID, ACTIVE = :ACTIVE_PLAN',
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
'  :P18_PAGE_STATE := ''KEEP_CURSOR'';',
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
,p_process_success_message=>'Changes saved successfully '
,p_internal_uid=>26975542941561519
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37455088024545450)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18625481047981413)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Radiation Setup - Save Form Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_DS_TAB RADIATION.PKG_S18APX00017.RAD_DS_TAB;',
'  L_COUNT      NUMBER := 0;',
'  L_SETUP_ID   RADIATION.DEF_SETUP.SETUP_ID%TYPE;',
'',
'BEGIN',
'',
'  BEGIN',
'    SELECT :P18_SETUP_ID,',
'           NVL(:P18_DOCTOR_ID, :P18_ND_DOCTOR_ID),',
'           NVL(:P18_ENTRY_DATE, SYSDATE),',
'           :P18_FROM_DATE,',
'           :P18_TO_DATE,',
'           :P18_DOSE_LENGTH_START,',
'           :P18_DOSE_LENGTH_END,',
'           :P18_NO_OF_FRACTION_START,',
'           :P18_NO_OF_FRACTION_END,',
'           :P18_PORT_FILM_TASK_SHOW,',
'           :P18_TREATMENT_REVISE_EMAIL,',
'           :P18_PATIENT_DISCHARGE_EMAIL,',
'           :P18_TUMOR_VOLUME_TASK_SHOW,',
'           :P18_CT_PLAN_TASK_SHOW,',
'           :P18_QA_AFTER_FRACTION,',
'           :P18_TRT_STOP_NO_QA,',
'           :P18_PHASE_COMPLETE_EMAIL,',
'           :P18_PCE_BEFORE_DAYS,',
'           NVL(:P18_EMAIL_WEEKLY_QA_OVERDUE, ''N''),',
'           NVL(:P18_EMAIL_WEEKLY_QA_DAYS, 0),',
'           :P18_IMRT_PLANNING_CHECK,',
'           NVL(:P18_HDR_NOTES_TASK_SHOW, ''Y''),',
'           :P18_BOOST_REQUEST_BEFORE,',
'           :P18_BOOST_APPNT_BEFORE,',
'           :P18_FU_DAY,',
'           :P18_FU_AFTER_FRACTIONS,',
'           :P18_TRT_STOP_NO_FU,',
'           NVL(:P18_ACTIVE, ''Y''),',
'           :P18_CPT_ID,',
'           :P18_FU_MACHINE_ID,',
'           :P18_FOLLOW_UP_SMS,',
'           :P18_FU_AFTER_2ND_FRACTION,',
'           :P18_QA_AFTER_2ND_FRACTION,',
'           :P18_PATH_RAD_REVIEWED',
'      BULK COLLECT',
'      INTO L_RAD_DS_TAB',
'      FROM DUAL;',
'  ',
'  END;',
'     HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE => :APEX$ROW_STATUS, P_CATEGORY => ''DEF_SETUP'');',
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
'  :P18_PAGE_STATE := ''KEEP_CURSOR'';',
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
,p_process_success_message=>'Changes saved successfully '
,p_internal_uid=>37455088024545450
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37450593215545405)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18625481047981413)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DEF_SETUP_RADIATION'
,p_internal_uid=>37450593215545405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41732862458012522)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetPageState'
,p_process_sql_clob=>':P18_PAGE_STATE := ''EXIT'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(24368452456856803)
,p_internal_uid=>41732862458012522
);
wwv_flow_imp.component_end;
end;
/

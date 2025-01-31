prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'DEF_WORKFLOW_SETUP'
,p_alias=>'DEF-WORKFLOW-SETUP'
,p_step_title=>'DEF_WORKFLOW_SETUP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'02'
,p_last_updated_by=>'00160000007098'
,p_last_upd_yyyymmddhh24miss=>'20250108234442'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47098233879681931)
,p_plug_name=>'Planning'
,p_region_name=>'rad_workflow_setup_planning'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>'SELECT PLANNING_ID, PLANNING_PREFIX, DESCRIPTION FROM RADIATION.PLANNING'
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Planning'
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
 p_id=>wwv_flow_imp.id(47098630640681935)
,p_name=>'PLANNING_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PLANNING_DESCRIPTION'
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
 p_id=>wwv_flow_imp.id(47098738407681936)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Planning Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_imp.id(47098869730681937)
,p_name=>'PLANNING_PREFIX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_PREFIX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Planning Prefix'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PLANNING_PREFIX'
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
 p_id=>wwv_flow_imp.id(47098367983681932)
,p_internal_uid=>47098367983681932
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(47840872385882248)
,p_interactive_grid_id=>wwv_flow_imp.id(47098367983681932)
,p_static_id=>'478409'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47841030896882248)
,p_report_id=>wwv_flow_imp.id(47840872385882248)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47841572018882249)
,p_view_id=>wwv_flow_imp.id(47841030896882248)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47098630640681935)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.469
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47842461507882252)
,p_view_id=>wwv_flow_imp.id(47841030896882248)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47098738407681936)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.766
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47843361156882255)
,p_view_id=>wwv_flow_imp.id(47841030896882248)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47098869730681937)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109.75
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47098915455681938)
,p_plug_name=>'Performance Type'
,p_region_name=>'rad_workflow_setup_performance_type'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PERFORMANCE_TYPE_ID, DESCIPTION',
'  FROM RADIATION.DEF_PERFORMANCE_TYPE',
' WHERE ((NVL(:P28_QUERY_PERFORMANCE_TYPE, ''~'') = ''R'' OR',
'       (NATURE_TYPE_ID = ''055'')) AND (NVL(:P28_QUERY_PERFORMANCE_TYPE, ''~'') = ''O'' OR',
'       (NATURE_TYPE_ID = ''020'')))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P28_QUERY_PERFORMANCE_TYPE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Performance Type'
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
 p_id=>wwv_flow_imp.id(47099491705681943)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Performance Type Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PERFORMANCE_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(47099534847681944)
,p_name=>'PERFORMANCE_TYPE_DESCIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desciption'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'PERFORMANCE_TYPE_DESCIPTION'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47099048597681939)
,p_internal_uid=>47099048597681939
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(47866704703946452)
,p_interactive_grid_id=>wwv_flow_imp.id(47099048597681939)
,p_static_id=>'478668'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47866968885946452)
,p_report_id=>wwv_flow_imp.id(47866704703946452)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47867460479946453)
,p_view_id=>wwv_flow_imp.id(47866968885946452)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47099491705681943)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47868327192946455)
,p_view_id=>wwv_flow_imp.id(47866968885946452)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47099534847681944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>199
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48000981900416102)
,p_plug_name=>'Planning Workflow'
,p_region_name=>'rad_plan_workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ORGANIZATION_ID,',
'        LOCATION_ID,',
'        PLANNING_ID,',
'        SCHEMA_ID,',
'        WORKFLOW_TYPE_ID,',
'        WORK_FLOW_ID,',
'        ACTIVE,',
'        ROWID,',
'        (SELECT WF.DESCRIPTION',
'           FROM DEFINITIONS.WORK_FLOW WF',
'          WHERE WF.WORK_FLOW_ID = DPW.WORK_FLOW_ID) WF_DESCRIPTION',
'   FROM RADIATION.DEF_PLANNING_WORKFLOW DPW',
'  WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'    AND LOCATION_ID = :P28_LOCATION_ID',
'    AND PLANNING_ID = :P28_PLANNING_ID;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48002063927416113)
,p_plug_name=>'Appointment Workflow'
,p_region_name=>'rad_appointmnet_workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANIZATION_ID,',
'       LOCATION_ID,',
'       PLANNING_ID,',
'       PERFORMANCE_TYPE_ID,',
'       SCHEMA_ID,',
'       WORKFLOW_TYPE_ID,',
'       WORK_FLOW_ID,',
'       ACTIVE,',
'       ROWID,',
'       (SELECT WF.DESCRIPTION',
'          FROM DEFINITIONS.WORK_FLOW WF',
'         WHERE WF.WORK_FLOW_ID = DSF.WORK_FLOW_ID) WF_DESCRIPTION',
'  FROM RADIATION.DEF_SCHEDULE_WORKFLOW DSF',
' WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'   AND LOCATION_ID = :P28_LOCATION_ID',
'   AND PLANNING_ID = :P28_PLANNING_ID',
'   AND PERFORMANCE_TYPE_ID = :P28_PERFORMANCE_TYPE_ID_MASTER',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID,P28_PERFORMANCE_TYPE_ID_MASTER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(223772581234804101)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(639588228042961736)
,p_plug_name=>'Location '
,p_region_name=>'rad_workflow_setup_loc'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANIZATION_ID, LOCATION_ID, DESCRIPTION',
'  FROM DEFINITIONS.LOCATION L',
' WHERE EXISTS (SELECT 1',
'          FROM RADIATION.MACHINES M',
'         WHERE M.LOCATION_ID = L.LOCATION_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Location '
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
 p_id=>wwv_flow_imp.id(91967826030604855)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Org Id'
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
,p_static_id=>'ORGANIZATION_ID'
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
 p_id=>wwv_flow_imp.id(91967843145604856)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(639590511783961733)
,p_name=>'LOCATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'LOCATION_DESCRIPTION'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(639588731699961736)
,p_internal_uid=>639588731699961736
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(639589114678961734)
,p_interactive_grid_id=>wwv_flow_imp.id(639588731699961736)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(639589305202961734)
,p_report_id=>wwv_flow_imp.id(639589114678961734)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93130304644314515)
,p_view_id=>wwv_flow_imp.id(639589305202961734)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(91967826030604855)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93131160997314520)
,p_view_id=>wwv_flow_imp.id(639589305202961734)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(91967843145604856)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(639590913796961733)
,p_view_id=>wwv_flow_imp.id(639589305202961734)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(639590511783961733)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>270
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47707221712692752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(223772581234804101)
,p_button_name=>'Create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47707697143692753)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(223772581234804101)
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
 p_id=>wwv_flow_imp.id(47708053294692753)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(223772581234804101)
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
 p_id=>wwv_flow_imp.id(47708417669692753)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(223772581234804101)
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
 p_id=>wwv_flow_imp.id(47708840645692753)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(223772581234804101)
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
 p_id=>wwv_flow_imp.id(47724858051692775)
,p_branch_name=>'GoToHomePage'
,p_branch_action=>'f?p=100:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(47708840645692753)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47099670722681945)
,p_name=>'P28_QUERY_PERFORMANCE_TYPE'
,p_item_sequence=>10
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Radiation;R,Others;O'
,p_grid_column=>11
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47709272231692756)
,p_name=>'P28_CURSOR_REGION'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47709662868692757)
,p_name=>'P28_PAGE_STATE'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47710063889692758)
,p_name=>'P28_ORGANIZATION_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47710450762692758)
,p_name=>'P28_LOCATION_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47710857714692758)
,p_name=>'P28_PLANNING_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001180613416104)
,p_name=>'P28_ORGANIZATION_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_source=>'ORGANIZATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001217929416105)
,p_name=>'P28_LOCATION_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001307400416106)
,p_name=>'P28_PLANNING_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_source=>'PLANNING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001420853416107)
,p_name=>'P28_SCHEMA_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_prompt=>'Schema Id'
,p_source=>'SCHEMA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001568854416108)
,p_name=>'P28_WORKFLOW_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_prompt=>'Workflow Type Id'
,p_source=>'WORKFLOW_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(48001602454416109)
,p_name=>'P28_WORK_FLOW_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_prompt=>'Work Flow '
,p_source=>'WORK_FLOW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_DEF_WORKFLOW_SETUP_WORKFLOW_ID'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WF.WORK_FLOW_ID,',
'       WF.DESCRIPTION,',
'       PTF.PURCHASE_TYPE_ID WORKFLOW_TYPE_ID,',
'       PTF.SCHEMA_ID',
'  FROM DEFINITIONS.WORK_FLOW WF, DEFINITIONS.PR_TYPE_FLOW PTF',
' WHERE WF.WORK_FLOW_ID = PTF.WORK_FLOW_ID',
'   AND PTF.SCHEMA_ID = CASE',
'         WHEN :P28_QUERY_PERFORMANCE_TYPE = ''R'' THEN',
'          ''S18''',
'         ELSE',
'          PTF.SCHEMA_ID',
'       END',
' ORDER BY 1'))
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
,p_attribute_10=>'WORKFLOW_TYPE_ID:P28_WORKFLOW_TYPE_ID,SCHEMA_ID:P28_SCHEMA_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001780692416110)
,p_name=>'P28_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_default=>'N'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48001853613416111)
,p_name=>'P28_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
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
 p_id=>wwv_flow_imp.id(48002116090416114)
,p_name=>'P28_ORGANIZATION_ID_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_source=>'ORGANIZATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48002278468416115)
,p_name=>'P28_LOCATION_ID_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48002317009416116)
,p_name=>'P28_PLANNING_ID_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_source=>'PLANNING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48002499950416117)
,p_name=>'P28_SCHEMA_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_prompt=>'Schema Id'
,p_source=>'SCHEMA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48002539981416118)
,p_name=>'P28_WORKFLOW_TYPE_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_prompt=>'Workflow Type Id'
,p_source=>'WORKFLOW_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(48002717099416120)
,p_name=>'P28_WORK_FLOW_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_prompt=>'Work Flow '
,p_source=>'WORK_FLOW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_DEF_WORKFLOW_SETUP_WORKFLOW_ID'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WF.WORK_FLOW_ID,',
'       WF.DESCRIPTION,',
'       PTF.PURCHASE_TYPE_ID WORKFLOW_TYPE_ID,',
'       PTF.SCHEMA_ID',
'  FROM DEFINITIONS.WORK_FLOW WF, DEFINITIONS.PR_TYPE_FLOW PTF',
' WHERE WF.WORK_FLOW_ID = PTF.WORK_FLOW_ID',
'   AND PTF.SCHEMA_ID = CASE',
'         WHEN :P28_QUERY_PERFORMANCE_TYPE = ''R'' THEN',
'          ''S18''',
'         ELSE',
'          PTF.SCHEMA_ID',
'       END',
' ORDER BY 1'))
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
,p_attribute_10=>'WORKFLOW_TYPE_ID:P28_WORKFLOW_TYPE_ID_1,SCHEMA_ID:P28_SCHEMA_ID_1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48002801461416121)
,p_name=>'P28_ACTIVE_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_default=>'N'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48002974565416122)
,p_name=>'P28_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48003002490416123)
,p_name=>'P28_PERFORMANCE_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_source=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48003159570416124)
,p_name=>'P28_PERFORMANCE_TYPE_ID_MASTER'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63727076649109523)
,p_name=>'P28_WF_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_item_source_plug_id=>wwv_flow_imp.id(48002063927416113)
,p_prompt=>'Workflow Description'
,p_source=>'WF_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63727410248109527)
,p_name=>'P28_WF_DESCRIPTION_1'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_item_source_plug_id=>wwv_flow_imp.id(48000981900416102)
,p_prompt=>'Workflow Description'
,p_source=>'WF_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47717916577692766)
,p_name=>'Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47707221712692752)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47718445316692766)
,p_event_id=>wwv_flow_imp.id(47717916577692766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region =  apex.item("P28_CURSOR_REGION").getValue(); ',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47718878001692766)
,p_name=>'Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47707697143692753)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47719320325692767)
,p_event_id=>wwv_flow_imp.id(47718878001692766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P28_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").set("edit", true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47719798438692767)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47708053294692753)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47720251156692768)
,p_event_id=>wwv_flow_imp.id(47719798438692767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P28_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").invoke("save");',
'apex.submit();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47720608348692768)
,p_name=>'Delete '
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47708417669692753)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47721166193692768)
,p_event_id=>wwv_flow_imp.id(47720608348692768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you sure you want to delete selected record? If yes press save button to proceed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47721628954692770)
,p_event_id=>wwv_flow_imp.id(47720608348692768)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var region = apex.item("P28_CURSOR_REGION").getValue();',
'apex.region(region).widget().interactiveGrid("getActions").invoke("selection-delete");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47723871521692772)
,p_name=>'CloseMenu'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47724376051692772)
,p_event_id=>wwv_flow_imp.id(47723871521692772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47716167144692765)
,p_name=>'MaintainSelectedRecord'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(639588228042961736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47716691812692765)
,p_event_id=>wwv_flow_imp.id(47716167144692765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gridID = "rad_workflow_setup_loc";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'var selectedRecord = grid.getSelectedRecords();',
'console.log(selectedRecord);',
'localStorage.setItem(''lastSelectedRecord'', JSON.stringify(selectedRecord));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47717081928692765)
,p_name=>'GoToPreviousSelectedRecord'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P28_PAGE_STATE = ''KEEP_CURSOR'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;',
''))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47717524496692766)
,p_event_id=>wwv_flow_imp.id(47717081928692765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//set the static id field on your interactive grid and put the value on gridID variable',
'var gridID = "rad_workflow_setup_loc";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'',
'grid.setSelectedRecords(JSON.parse(localStorage.getItem(''lastSelectedRecord'')));',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47099755299681946)
,p_name=>'SetPerformanceType'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47099853951681947)
,p_event_id=>wwv_flow_imp.id(47099755299681946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_QUERY_PERFORMANCE_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'R'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47100148979681950)
,p_event_id=>wwv_flow_imp.id(47099755299681946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47098915455681938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47099997327681948)
,p_name=>'RefreshPerformanceType'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_QUERY_PERFORMANCE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47100053538681949)
,p_event_id=>wwv_flow_imp.id(47099997327681948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47098915455681938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48003284772416125)
,p_name=>'SetLocationOrganizationId'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(639588228042961736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48003318690416126)
,p_event_id=>wwv_flow_imp.id(48003284772416125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P28_ORGANIZATION_ID").setValue(_.rad_workflow_setup_loc.ORGANIZATION_ID);',
'apex.item("P28_LOCATION_ID").setValue(_.rad_workflow_setup_loc.LOCATION_ID);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48003950137416132)
,p_name=>'SetPlanningId'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47098233879681931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48004033711416133)
,p_event_id=>wwv_flow_imp.id(48003950137416132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P28_PLANNING_ID").setValue(_.rad_workflow_setup_planning.PLANNING_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48004547653416138)
,p_name=>'SetPerformanceTypeId'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47098915455681938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48004645702416139)
,p_event_id=>wwv_flow_imp.id(48004547653416138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P28_PERFORMANCE_TYPE_ID_MASTER").setValue(_.rad_workflow_setup_performance_type.PERFORMANCE_TYPE_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49143597053497034)
,p_name=>'QueryPlanningWorkflowA'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(639588228042961736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144041371497039)
,p_event_id=>wwv_flow_imp.id(49143597053497034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'         (SELECT WF.DESCRIPTION',
'            FROM DEFINITIONS.WORK_FLOW WF',
'           WHERE WF.WORK_FLOW_ID = DPW.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_1,',
'         :P28_LOCATION_ID_1,',
'         :P28_PLANNING_ID_1,',
'         :P28_SCHEMA_ID,',
'         :P28_WORKFLOW_TYPE_ID,',
'         :P28_WORK_FLOW_ID,',
'         :P28_ACTIVE,',
'         :P28_ROWID,',
'         :P28_WF_DESCRIPTION_1',
'    FROM RADIATION.DEF_PLANNING_WORKFLOW DPW',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID'
,p_attribute_03=>'P28_ORGANIZATION_ID_1,P28_LOCATION_ID_1,P28_PLANNING_ID_1,P28_SCHEMA_ID,P28_WORKFLOW_TYPE_ID,P28_WORK_FLOW_ID,P28_ACTIVE,P28_ROWID,P28_WF_DESCRIPTION_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49143616728497035)
,p_event_id=>wwv_flow_imp.id(49143597053497034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48000981900416102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49143773455497036)
,p_name=>'QueryPlanningWorkflowB'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47098233879681931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49143937586497038)
,p_event_id=>wwv_flow_imp.id(49143773455497036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'               (SELECT WF.DESCRIPTION',
'           FROM DEFINITIONS.WORK_FLOW WF',
'          WHERE WF.WORK_FLOW_ID = DPW.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_1,',
'         :P28_LOCATION_ID_1,',
'         :P28_PLANNING_ID_1,',
'         :P28_SCHEMA_ID,',
'         :P28_WORKFLOW_TYPE_ID,',
'         :P28_WORK_FLOW_ID,',
'         :P28_ACTIVE,',
'         :P28_ROWID,',
'         :P28_WF_DESCRIPTION_1',
'    FROM RADIATION.DEF_PLANNING_WORKFLOW DPW',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID'
,p_attribute_03=>'P28_ORGANIZATION_ID_1,P28_LOCATION_ID_1,P28_PLANNING_ID_1,P28_SCHEMA_ID,P28_WORKFLOW_TYPE_ID,P28_WORK_FLOW_ID,P28_ACTIVE,P28_ROWID,P28_WF_DESCRIPTION_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49143876666497037)
,p_event_id=>wwv_flow_imp.id(49143773455497036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48000981900416102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49144180214497040)
,p_name=>'QueryAppointmnetworkflowA'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(639588228042961736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144272355497041)
,p_event_id=>wwv_flow_imp.id(49144180214497040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         PERFORMANCE_TYPE_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'         (SELECT WF.DESCRIPTION',
'            FROM DEFINITIONS.WORK_FLOW WF',
'           WHERE WF.WORK_FLOW_ID = DSF.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_2,',
'         :P28_LOCATION_ID_2,',
'         :P28_PLANNING_ID_2,',
'         :P28_PERFORMANCE_TYPE_ID,',
'         :P28_SCHEMA_ID_1,',
'         :P28_WORKFLOW_TYPE_ID_1,',
'         :P28_WORK_FLOW_ID_1,',
'         :P28_ACTIVE_1,',
'         :P28_ROWID_1,',
'         :P28_WF_DESCRIPTION',
'    FROM RADIATION.DEF_SCHEDULE_WORKFLOW DSF',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID',
'     AND PERFORMANCE_TYPE_ID = :P28_PERFORMANCE_TYPE_ID_MASTER;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
''))
,p_attribute_02=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID,P28_PERFORMANCE_TYPE_ID_MASTER'
,p_attribute_03=>'P28_ORGANIZATION_ID_2,P28_LOCATION_ID_2,P28_PLANNING_ID_2,P28_PERFORMANCE_TYPE_ID,P28_SCHEMA_ID_1,P28_WORKFLOW_TYPE_ID_1,P28_WORK_FLOW_ID_1,P28_ACTIVE_1,P28_ROWID_1,P28_WF_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144353059497042)
,p_event_id=>wwv_flow_imp.id(49144180214497040)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48002063927416113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49144492958497043)
,p_name=>'QueryAppointmnetworkflowB'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47098233879681931)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144579328497044)
,p_event_id=>wwv_flow_imp.id(49144492958497043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         PERFORMANCE_TYPE_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'         (SELECT WF.DESCRIPTION',
'            FROM DEFINITIONS.WORK_FLOW WF',
'           WHERE WF.WORK_FLOW_ID = DSF.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_2,',
'         :P28_LOCATION_ID_2,',
'         :P28_PLANNING_ID_2,',
'         :P28_PERFORMANCE_TYPE_ID,',
'         :P28_SCHEMA_ID_1,',
'         :P28_WORKFLOW_TYPE_ID_1,',
'         :P28_WORK_FLOW_ID_1,',
'         :P28_ACTIVE_1,',
'         :P28_ROWID_1,',
'         :P28_WF_DESCRIPTION',
'    FROM RADIATION.DEF_SCHEDULE_WORKFLOW DSF',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID',
'     AND PERFORMANCE_TYPE_ID = :P28_PERFORMANCE_TYPE_ID_MASTER;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID,P28_PERFORMANCE_TYPE_ID_MASTER'
,p_attribute_03=>'P28_ORGANIZATION_ID_2,P28_LOCATION_ID_2,P28_PLANNING_ID_2,P28_PERFORMANCE_TYPE_ID,P28_SCHEMA_ID_1,P28_WORKFLOW_TYPE_ID_1,P28_WORK_FLOW_ID_1,P28_ACTIVE_1,P28_ROWID_1,P28_WF_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144612421497045)
,p_event_id=>wwv_flow_imp.id(49144492958497043)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48002063927416113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49144777158497046)
,p_name=>'QueryAppointmnetworkflowC'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47098915455681938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144806667497047)
,p_event_id=>wwv_flow_imp.id(49144777158497046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         PERFORMANCE_TYPE_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'         (SELECT WF.DESCRIPTION',
'            FROM DEFINITIONS.WORK_FLOW WF',
'           WHERE WF.WORK_FLOW_ID = DSF.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_2,',
'         :P28_LOCATION_ID_2,',
'         :P28_PLANNING_ID_2,',
'         :P28_PERFORMANCE_TYPE_ID,',
'         :P28_SCHEMA_ID_1,',
'         :P28_WORKFLOW_TYPE_ID_1,',
'         :P28_WORK_FLOW_ID_1,',
'         :P28_ACTIVE_1,',
'         :P28_ROWID_1,',
'         :P28_WF_DESCRIPTION',
'    FROM RADIATION.DEF_SCHEDULE_WORKFLOW DSF',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID',
'     AND PERFORMANCE_TYPE_ID = :P28_PERFORMANCE_TYPE_ID_MASTER;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P28_ORGANIZATION_ID,P28_LOCATION_ID,P28_PLANNING_ID,P28_PERFORMANCE_TYPE_ID_MASTER'
,p_attribute_03=>'P28_ORGANIZATION_ID_2,P28_LOCATION_ID_2,P28_PLANNING_ID_2,P28_PERFORMANCE_TYPE_ID,P28_SCHEMA_ID_1,P28_WORKFLOW_TYPE_ID_1,P28_WORK_FLOW_ID_1,P28_ACTIVE_1,P28_ROWID_1,P28_WF_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49144908874497048)
,p_event_id=>wwv_flow_imp.id(49144777158497046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48002063927416113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63727552786109528)
,p_name=>'SetPlanningWorkflowDescription'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_WORK_FLOW_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63727667592109529)
,p_event_id=>wwv_flow_imp.id(63727552786109528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_WF_DESCRIPTION_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT WF.DESCRIPTION',
'  FROM DEFINITIONS.WORK_FLOW WF',
' WHERE WF.WORK_FLOW_ID = :P28_WORK_FLOW_ID;',
''))
,p_attribute_07=>'P28_WORK_FLOW_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63727733048109530)
,p_name=>'SetAppointmnetWorkflowDescription'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_WORK_FLOW_ID_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63727845864109531)
,p_event_id=>wwv_flow_imp.id(63727733048109530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_WF_DESCRIPTION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WF.DESCRIPTION',
'  FROM DEFINITIONS.WORK_FLOW WF',
' WHERE WF.WORK_FLOW_ID = :P28_WORK_FLOW_ID_1;'))
,p_attribute_07=>'P28_WORK_FLOW_ID_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277843443425685603)
,p_name=>'DAWorkFlowId'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_WORK_FLOW_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277843564596685604)
,p_event_id=>wwv_flow_imp.id(277843443425685603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277843646053685605)
,p_name=>'DAWorkFlowId1'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_WORK_FLOW_ID_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277843776615685606)
,p_event_id=>wwv_flow_imp.id(277843646053685605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
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
 p_id=>wwv_flow_imp.id(49143422418497033)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48000981900416102)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Planning Workflow'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      BEGIN',
'        -----------',
'        -- Insert',
'        -----------',
'        INSERT INTO RADIATION.DEF_PLANNING_WORKFLOW',
'          (ORGANIZATION_ID,',
'           LOCATION_ID,',
'           PLANNING_ID,',
'           SCHEMA_ID,',
'           WORKFLOW_TYPE_ID,',
'           WORK_FLOW_ID,',
'           ACTIVE)',
'        VALUES',
'          (:P28_ORGANIZATION_ID,',
'           :P28_LOCATION_ID,',
'           :P28_PLANNING_ID,',
'           :P28_SCHEMA_ID,',
'           :P28_WORKFLOW_TYPE_ID,',
'           :P28_WORK_FLOW_ID,',
'           :P28_ACTIVE);',
'      ',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      BEGIN',
'        ---------------------',
'        -- Insert / Update',
'        ---------------------',
'        MERGE INTO RADIATION.DEF_PLANNING_WORKFLOW A',
'        USING (SELECT :P28_ORGANIZATION_ID  AS ORGANIZATION_ID,',
'                      :P28_LOCATION_ID      AS LOCATION_ID,',
'                      :P28_PLANNING_ID      AS PLANNING_ID',
'                 FROM DUAL) B',
'        ON (A.ORGANIZATION_ID = B.ORGANIZATION_ID AND A.LOCATION_ID = B.LOCATION_ID AND A.PLANNING_ID = B.PLANNING_ID)',
'        ',
'        WHEN MATCHED THEN',
'          UPDATE SET WORK_FLOW_ID = :P28_WORK_FLOW_ID, ACTIVE = :P28_ACTIVE',
'          ',
'        ',
'        WHEN NOT MATCHED THEN',
'          INSERT',
'            (ORGANIZATION_ID,',
'             LOCATION_ID,',
'             PLANNING_ID,',
'             SCHEMA_ID,',
'             WORKFLOW_TYPE_ID,',
'             WORK_FLOW_ID,',
'             ACTIVE)',
'          VALUES',
'            (:P28_ORGANIZATION_ID,',
'             :P28_LOCATION_ID,',
'             :P28_PLANNING_ID,',
'             :P28_SCHEMA_ID,',
'             :P28_WORKFLOW_TYPE_ID,',
'             :P28_WORK_FLOW_ID,',
'             :P28_ACTIVE);',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      BEGIN',
'        -----------',
'        -- Delete',
'        -----------',
'        DELETE FROM RADIATION.DEF_PLANNING_WORKFLOW',
'         WHERE ROWID = :P28_ROWID;',
'      ',
'      END;',
'    ',
'  END CASE;',
'',
'  :P28_CURSOR_REGION := ''KEEP_CURSOR'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P28_WORK_FLOW_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>49143422418497033
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49145037085497049)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48002063927416113)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Appointment Workflow'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      BEGIN',
'        -----------',
'        -- Insert',
'        -----------',
'        INSERT INTO RADIATION.DEF_SCHEDULE_WORKFLOW',
'          (ORGANIZATION_ID,',
'           LOCATION_ID,',
'           PLANNING_ID,',
'           PERFORMANCE_TYPE_ID,',
'           SCHEMA_ID,',
'           WORKFLOW_TYPE_ID,',
'           WORK_FLOW_ID,',
'           ACTIVE)',
'        VALUES',
'          (:P28_ORGANIZATION_ID,',
'           :P28_LOCATION_ID,',
'           :P28_PLANNING_ID,',
'           :P28_PERFORMANCE_TYPE_ID_MASTER,',
'           :P28_SCHEMA_ID_1,',
'           :P28_WORKFLOW_TYPE_ID_1,',
'           :P28_WORK_FLOW_ID_1,',
'           :P28_ACTIVE_1);',
'      ',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      BEGIN',
'        ---------------------',
'        -- Insert / Update',
'        ---------------------',
'        MERGE INTO RADIATION.DEF_SCHEDULE_WORKFLOW A',
'        USING (SELECT DISTINCT :P28_ORGANIZATION_ID            AS ORGANIZATION_ID,',
'                      :P28_LOCATION_ID                AS LOCATION_ID,',
'                      :P28_PLANNING_ID                AS PLANNING_ID,',
'                      :P28_PERFORMANCE_TYPE_ID_MASTER AS PERFORMANCE_TYPE_ID',
'                 FROM RADIATION.DEF_SCHEDULE_WORKFLOW) B',
'        ON (A.ORGANIZATION_ID = B.ORGANIZATION_ID AND A.LOCATION_ID = B.LOCATION_ID AND A.PLANNING_ID = B.PLANNING_ID AND A.PERFORMANCE_TYPE_ID = B.PERFORMANCE_TYPE_ID)',
'        ',
'        WHEN MATCHED THEN',
'          UPDATE',
'             SET WORK_FLOW_ID = :P28_WORK_FLOW_ID_1, ACTIVE = :P28_ACTIVE_1',
'          ',
'        ',
'        WHEN NOT MATCHED THEN',
'          INSERT',
'            (ORGANIZATION_ID,',
'             LOCATION_ID,',
'             PLANNING_ID,',
'             PERFORMANCE_TYPE_ID,',
'             SCHEMA_ID,',
'             WORKFLOW_TYPE_ID,',
'             WORK_FLOW_ID,',
'             ACTIVE)',
'          VALUES',
'            (:P28_ORGANIZATION_ID,',
'             :P28_LOCATION_ID,',
'             :P28_PLANNING_ID,',
'             :P28_PERFORMANCE_TYPE_ID_MASTER,',
'             :P28_SCHEMA_ID_1,',
'             :P28_WORKFLOW_TYPE_ID_1,',
'             :P28_WORK_FLOW_ID_1,',
'             :P28_ACTIVE_1);',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      BEGIN',
'        -----------',
'        -- Delete',
'        -----------',
'        DELETE FROM RADIATION.DEF_SCHEDULE_WORKFLOW',
'         WHERE ROWID = :P28_ROWID_1;',
'      ',
'      END;',
'    ',
'  END CASE;',
'',
'  :P28_CURSOR_REGION := ''KEEP_CURSOR'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P28_WORK_FLOW_ID_1'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>49145037085497049
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48001055494416103)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Planning Workflow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'         (SELECT WF.DESCRIPTION',
'            FROM DEFINITIONS.WORK_FLOW WF',
'           WHERE WF.WORK_FLOW_ID = DPW.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_1,',
'         :P28_LOCATION_ID_1,',
'         :P28_PLANNING_ID_1,',
'         :P28_SCHEMA_ID,',
'         :P28_WORKFLOW_TYPE_ID,',
'         :P28_WORK_FLOW_ID,',
'         :P28_ACTIVE,',
'         :P28_ROWID,',
'         :P28_WF_DESCRIPTION_1',
'    FROM RADIATION.DEF_PLANNING_WORKFLOW DPW',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>48001055494416103
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63727187505109524)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Schedule Workflow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ORGANIZATION_ID,',
'         LOCATION_ID,',
'         PLANNING_ID,',
'         PERFORMANCE_TYPE_ID,',
'         SCHEMA_ID,',
'         WORKFLOW_TYPE_ID,',
'         WORK_FLOW_ID,',
'         ACTIVE,',
'         ROWID,',
'         (SELECT WF.DESCRIPTION',
'            FROM DEFINITIONS.WORK_FLOW WF',
'           WHERE WF.WORK_FLOW_ID = DSF.WORK_FLOW_ID) WF_DESCRIPTION',
'    INTO :P28_ORGANIZATION_ID_2,',
'         :P28_LOCATION_ID_2,',
'         :P28_PLANNING_ID_2,',
'         :P28_PERFORMANCE_TYPE_ID,',
'         :P28_SCHEMA_ID_1,',
'         :P28_WORKFLOW_TYPE_ID_1,',
'         :P28_WORK_FLOW_ID_1,',
'         :P28_ACTIVE_1,',
'         :P28_ROWID_1,',
'         :P28_WF_DESCRIPTION',
'    FROM RADIATION.DEF_SCHEDULE_WORKFLOW DSF',
'   WHERE ORGANIZATION_ID = :P28_ORGANIZATION_ID',
'     AND LOCATION_ID = :P28_LOCATION_ID',
'     AND PLANNING_ID = :P28_PLANNING_ID',
'     AND PERFORMANCE_TYPE_ID = :P28_PERFORMANCE_TYPE_ID_MASTER;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>63727187505109524
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47711290529692759)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetPageState'
,p_process_sql_clob=>':P28_PAGE_STATE := ''EXIT'';'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(47708840645692753)
,p_internal_uid=>47711290529692759
);
wwv_flow_imp.component_end;
end;
/

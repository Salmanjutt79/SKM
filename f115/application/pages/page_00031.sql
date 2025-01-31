prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>'RADIATION_MACHINE_SCHEDULE'
,p_alias=>'RADIATION-MACHINE-SCHEDULE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'jsFormsBlock_pageReady();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P31_SCHEDULE_ID{',
'     background-color: #FFFFCC !important;',
'}',
'',
'#P31_MACHINE_ID{',
'     background-color: #FFFFCC !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(14479247264908220)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250108235125'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53914185911531832)
,p_plug_name=>'Machine Schedule '
,p_region_name=>'MachineSchedule'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>22
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>12
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCHEDULE_ID,',
'       MACHINE_ID,',
'       (SELECT MM.DESCRIPTION',
'          FROM RADIATION.MACHINES MM',
'         WHERE MM.MACHINE_ID = DMS.MACHINE_ID) AS MACHINE_DESC,',
'       FROM_DATE,',
'       TO_DATE,',
'       SUBSTR(FROM_TIME, 0, 2) AS FROM_HH,',
'       SUBSTR(FROM_TIME, 4, 2) AS FROM_MI,',
'       SUBSTR(TO_TIME, 0, 2) AS TO_HH,',
'       SUBSTR(TO_TIME, 4, 2) AS TO_MI,',
'       FROM_TIME,',
'       TO_TIME,',
'       NVL(DAY_MON, ''N'') DAY_MON,',
'       NVL(DAY_TUE, ''N'') DAY_TUE,',
'       NVL(DAY_WED, ''N'') DAY_WED,',
'       NVL(DAY_THU, ''N'') DAY_THU,',
'       NVL(DAY_FRI, ''N'') DAY_FRI,',
'       NVL(DAY_SAT, ''N'') DAY_SAT,',
'       NVL(DAY_SUN, ''N'') DAY_SUN,',
'       SLOT,',
'       SLOT_LENGTH,',
'       ROWID,',
'       NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'           0) TOTAL_SLOTS,',
'       NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_BOOKED_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'           0) BOOKED_SLOTS',
'  FROM RADIATION.DEF_MACHINE_SCHEDULE DMS',
' WHERE SCHEDULE_ID = :P31_SCHEDULE_ID;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P31_SCHEDULE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65855104814723327)
,p_plug_name=>'Machine Slot'
,p_region_name=>'MachineSlot'
,p_region_css_classes=>'forms-block'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DMSS.SCHEDULE_ID,',
'       DMSS.SLOT_TYPE_ID,',
'       DMSS.SLOT_TYPE_ID AS SLOT_TYPE_DESC,',
'       DMSS.FROM_TIME,',
'       DMSS.TO_TIME,',
'       DMSS.ROWID,',
'       NULL ACTIVE',
'  FROM RADIATION.DEF_MACHINE_SCHEDULE_SLOTS DMSS, RADIOLOGY.SLOT_COLOR SC',
' WHERE DMSS.SLOT_TYPE_ID = SC.SLOT_TYPE_ID',
'   AND DMSS.SCHEDULE_ID = :P31_SCHEDULE_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P31_SCHEDULE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Machine Slot'
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
 p_id=>wwv_flow_imp.id(4343812390671823)
,p_name=>'SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Schedule Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>39
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65855405302723330)
,p_name=>'SLOT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLOT_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Slot Type ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(65855584763723331)
,p_name=>'SLOT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLOT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Slot Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
,p_attribute_09=>'320'
,p_is_required=>false
,p_max_length=>2
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(118804381776791618)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
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
 p_id=>wwv_flow_imp.id(65855682757723332)
,p_name=>'FROM_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'From Time'
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
 p_id=>wwv_flow_imp.id(65855795903723333)
,p_name=>'TO_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'To Time'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(65855847316723334)
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
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(65856741292723343)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(261953501056341948)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> '))
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(65855203609723328)
,p_internal_uid=>65855203609723328
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
 p_id=>wwv_flow_imp.id(66658621509671836)
,p_interactive_grid_id=>wwv_flow_imp.id(65855203609723328)
,p_static_id=>'666587'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(66658812700671837)
,p_report_id=>wwv_flow_imp.id(66658621509671836)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4930607424442757)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4343812390671823)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66660284713671846)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(65855405302723330)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66661019506671848)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(65855584763723331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>332
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66661938270671850)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(65855682757723332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66662854581671852)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(65855795903723333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66678295602722238)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(65855847316723334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(66857147400483045)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(65856741292723343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(277696230062343480)
,p_view_id=>wwv_flow_imp.id(66658812700671837)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(261953501056341948)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65856976436723345)
,p_plug_name=>'Control'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>12
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66891028231598709)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(65856976436723345)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66892632882598725)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(65856976436723345)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_confirm_message=>'Do you wish to proceed with deleting the selected record?'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71774601959111032)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(65856976436723345)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66893237682598731)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(65856976436723345)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(117841644253347105)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_button_name=>'Schedule'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Schedule'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-check-square fa-3x'
,p_grid_new_row=>'Y'
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4343127348671816)
,p_name=>'P31_PARAM_SCHEDULE_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53914380037531834)
,p_name=>'P31_SCHEDULE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>Schedule Id</b>'
,p_source=>'SCHEDULE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SCHEDULE_ID FROM RADIATION.DEF_MACHINE_SCHEDULE ORDER BY 1 DESC',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>8
,p_colspan=>4
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53914624019531837)
,p_name=>'P31_FROM_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>From Date</b>'
,p_source=>'FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>6
,p_colspan=>4
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53914728528531838)
,p_name=>'P31_TO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>To Date</b>'
,p_source=>'TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
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
 p_id=>wwv_flow_imp.id(53914838598531839)
,p_name=>'P31_FROM_HH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'0'
,p_prompt=>'<b>From Hour</b>'
,p_source=>'FROM_HH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53914909060531840)
,p_name=>'P31_FROM_MI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'RETURN 00;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<b>From Minute</b>'
,p_source=>'FROM_MI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53915007651531841)
,p_name=>'P31_TO_HH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>To Hour</b>'
,p_source=>'TO_HH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53915107248531842)
,p_name=>'P31_TO_MI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'''00'''
,p_prompt=>'<b>To Minute</b>'
,p_source=>'TO_MI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53915298769531843)
,p_name=>'P31_FROM_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_source=>'FROM_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53915322343531844)
,p_name=>'P31_TO_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_source=>'TO_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55631130127066102)
,p_name=>'P31_SLOT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>Slot</b>'
,p_source=>'SLOT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55631221886066103)
,p_name=>'P31_SLOT_LENGTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>Slot Length</b>'
,p_source=>'SLOT_LENGTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(55631345391066104)
,p_name=>'P31_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65856175902723337)
,p_name=>'P31_MACHINE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>Machine </b>'
,p_source=>'MACHINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MM.DESCRIPTION, MM.MACHINE_ID',
'  FROM RADIATION.MACHINES MM',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>6
,p_colspan=>8
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65856229862723338)
,p_name=>'P31_MACHINE_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_source=>'MACHINE_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71775913256111045)
,p_name=>'P31_DAY_MON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Monday </b>'
,p_source=>'DAY_MON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>1
,p_grid_column=>3
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71776029190111046)
,p_name=>'P31_DAY_TUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Tuesday</b>'
,p_source=>'DAY_TUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71776187524111047)
,p_name=>'P31_DAY_WED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Wednesday</b>'
,p_source=>'DAY_WED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71776214675111048)
,p_name=>'P31_DAY_THU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Thursday</b>'
,p_source=>'DAY_THU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71776366111111049)
,p_name=>'P31_DAY_FRI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Friday</b>'
,p_source=>'DAY_FRI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(71776410270111050)
,p_name=>'P31_DAY_SAT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Saturday</b>'
,p_source=>'DAY_SAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78031213925443901)
,p_name=>'P31_DAY_SUN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_prompt=>'<b>Sunday</b>'
,p_source=>'DAY_SUN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117841260798347101)
,p_name=>'P31_NEW_LEGACY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_default=>'N'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:New;N,Legacy;O'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>7
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117841747802347106)
,p_name=>'P31_TOTAL_SLOTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>Total Slots</b>'
,p_source=>'TOTAL_SLOTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_colspan=>3
,p_grid_column=>2
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117841864838347107)
,p_name=>'P31_BOOKED_SLOTS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_item_source_plug_id=>wwv_flow_imp.id(53914185911531832)
,p_prompt=>'<b>Booked Slots</b>'
,p_source=>'BOOKED_SLOTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
,p_grid_label_column_span=>1
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117842096774347109)
,p_name=>'P31_MSG'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71774357808111029)
,p_name=>'FetchSchedule2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_SCHEDULE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71774467032111030)
,p_event_id=>wwv_flow_imp.id(71774357808111029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SCHEDULE_ID,',
'         NVL(MACHINE_ID, NULL),',
'         (SELECT MM.DESCRIPTION',
'            FROM RADIATION.MACHINES MM',
'           WHERE MM.MACHINE_ID = DMS.MACHINE_ID) AS MACHINE_DESC,',
'         FROM_DATE,',
'         TO_DATE,',
'         SUBSTR(FROM_TIME, 0, 2) AS FROM_HH,',
'         SUBSTR(FROM_TIME, 4, 2) AS FROM_MI,',
'         SUBSTR(TO_TIME, 0, 2) AS TO_HH,',
'         SUBSTR(TO_TIME, 4, 2) AS TO_MI,',
'         FROM_TIME,',
'         TO_TIME,',
'         NVL(DAY_MON, ''N''),',
'         NVL(DAY_TUE, ''N''),',
'         NVL(DAY_WED, ''N''),',
'         NVL(DAY_THU, ''N''),',
'         NVL(DAY_FRI, ''N''),',
'         NVL(DAY_SAT, ''N''),',
'         NVL(DAY_SUN, ''N''),',
'         SLOT,',
'         SLOT_LENGTH,',
'         ROWID,',
'         NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'             0) TOTAL_SLOTS,',
'         NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_BOOKED_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'             0) BOOKED_SLOTS',
'    INTO :P31_SCHEDULE_ID,',
'         :P31_MACHINE_ID,',
'         :P31_MACHINE_DESC,',
'         :P31_FROM_DATE,',
'         :P31_TO_DATE,',
'         :P31_FROM_HH,',
'         :P31_FROM_MI,',
'         :P31_TO_HH,',
'         :P31_TO_MI,',
'         :P31_FROM_TIME,',
'         :P31_TO_TIME,',
'         :P31_DAY_MON,',
'         :P31_DAY_TUE,',
'         :P31_DAY_WED,',
'         :P31_DAY_THU,',
'         :P31_DAY_FRI,',
'         :P31_DAY_SAT,',
'         :P31_DAY_SUN,',
'         :P31_SLOT,',
'         :P31_SLOT_LENGTH,',
'         :P31_ROWID,',
'         :P31_TOTAL_SLOTS,',
'         :P31_BOOKED_SLOTS',
'    FROM RADIATION.DEF_MACHINE_SCHEDULE DMS',
'   WHERE SCHEDULE_ID = :P31_SCHEDULE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P31_SCHEDULE_ID'
,p_attribute_03=>'P31_MACHINE_ID,P31_MACHINE_DESC,P31_FROM_DATE,P31_TO_DATE,P31_FROM_HH,P31_FROM_MI,P31_TO_HH,P31_TO_MI,P31_FROM_TIME,P31_TO_TIME,P31_DAY_MON,P31_DAY_TUE,P31_DAY_WED,P31_DAY_THU,P31_DAY_FRI,P31_DAY_SAT,P31_DAY_SUN,P31_SLOT,P31_SLOT_LENGTH,P31_ROWID,P31'
||'_TOTAL_SLOTS,P31_BOOKED_SLOTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71774549726111031)
,p_event_id=>wwv_flow_imp.id(71774357808111029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65855104814723327)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71774738180111033)
,p_name=>'Clear'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71774601959111032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71774810469111034)
,p_event_id=>wwv_flow_imp.id(71774738180111033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_SCHEDULE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4344217395671827)
,p_event_id=>wwv_flow_imp.id(71774738180111033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53914185911531832)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71775023260111036)
,p_event_id=>wwv_flow_imp.id(71774738180111033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SCHEDULE_ID,',
'         NVL(MACHINE_ID, NULL),',
'         (SELECT MM.DESCRIPTION',
'            FROM RADIATION.MACHINES MM',
'           WHERE MM.MACHINE_ID = DMS.MACHINE_ID) AS MACHINE_DESC,',
'         FROM_DATE,',
'         TO_DATE,',
'         SUBSTR(FROM_TIME, 0, 2) AS FROM_HH,',
'         SUBSTR(FROM_TIME, 4, 2) AS FROM_MI,',
'         SUBSTR(TO_TIME, 0, 2) AS TO_HH,',
'         SUBSTR(TO_TIME, 4, 2) AS TO_MI,',
'         FROM_TIME,',
'         TO_TIME,',
'         NVL(DAY_MON, ''N''),',
'         NVL(DAY_TUE, ''N''),',
'         NVL(DAY_WED, ''N''),',
'         NVL(DAY_THU, ''N''),',
'         NVL(DAY_FRI, ''N''),',
'         NVL(DAY_SAT, ''N''),',
'         NVL(DAY_SUN, ''N''),',
'         SLOT,',
'         SLOT_LENGTH,',
'         ROWID,',
'         NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'             0) TOTAL_SLOTS,',
'         NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_BOOKED_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'             0) BOOKED_SLOTS',
'    INTO :P31_SCHEDULE_ID,',
'         :P31_MACHINE_ID,',
'         :P31_MACHINE_DESC,',
'         :P31_FROM_DATE,',
'         :P31_TO_DATE,',
'         :P31_FROM_HH,',
'         :P31_FROM_MI,',
'         :P31_TO_HH,',
'         :P31_TO_MI,',
'         :P31_FROM_TIME,',
'         :P31_TO_TIME,',
'         :P31_DAY_MON,',
'         :P31_DAY_TUE,',
'         :P31_DAY_WED,',
'         :P31_DAY_THU,',
'         :P31_DAY_FRI,',
'         :P31_DAY_SAT,',
'         :P31_DAY_SUN,',
'         :P31_SLOT,',
'         :P31_SLOT_LENGTH,',
'         :P31_ROWID,',
'         :P31_TOTAL_SLOTS,',
'         :P31_BOOKED_SLOTS',
'    FROM RADIATION.DEF_MACHINE_SCHEDULE DMS',
'   WHERE SCHEDULE_ID = :P31_SCHEDULE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P31_SCHEDULE_ID'
,p_attribute_03=>'P31_SCHEDULE_ID,P31_MACHINE_ID,P31_MACHINE_DESC,P31_FROM_DATE,P31_FROM_HH,P31_FROM_MI,P31_TO_HH,P31_TO_MI,P31_FROM_TIME,P31_TO_TIME,P31_SLOT,P31_SLOT_LENGTH,P31_TOTAL_SLOTS,P31_BOOKED_SLOTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71775112837111037)
,p_event_id=>wwv_flow_imp.id(71774738180111033)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65855104814723327)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4344125574671826)
,p_event_id=>wwv_flow_imp.id(71774738180111033)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_FROM_HH,P31_FROM_MI,P31_TO_HH,P31_TO_MI,P31_TOTAL_SLOTS,P31_BOOKED_SLOTS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN 0;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P31_SCHEDULE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(118904847953279710)
,p_name=>'SetMinutesValDefault'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118904903747279711)
,p_event_id=>wwv_flow_imp.id(118904847953279710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_FROM_MI'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'00'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P31_FROM_MI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(118905020260279712)
,p_event_id=>wwv_flow_imp.id(118904847953279710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_TO_MI'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'00'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P31_TO_MI'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4343931389671824)
,p_name=>'SetScheduleId'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(65855104814723327)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4344055539671825)
,p_event_id=>wwv_flow_imp.id(4343931389671824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SCHEDULE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P31_SCHEDULE_ID")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4344323430671828)
,p_name=>'ValidateFromdate'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_TO_DATE'
,p_condition_element=>'P31_TO_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4344425976671829)
,p_event_id=>wwv_flow_imp.id(4344323430671828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P31_FROM_DATE") > $v("P31_TO_DATE"))  {',
'    apex.message.alert("Schedule end date must be greater than or equal to start date");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(261952935083341942)
,p_name=>'Button disable/enable'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_SCHEDULE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261953053775341943)
,p_event_id=>wwv_flow_imp.id(261952935083341942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(117841644253347105)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P31_SCHEDULE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261953288384341945)
,p_event_id=>wwv_flow_imp.id(261952935083341942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(117841644253347105)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P31_SCHEDULE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(261953376357341946)
,p_name=>'set'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(65855104814723327)
,p_triggering_element=>'SLOT_TYPE_DESC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(261953444758341947)
,p_event_id=>wwv_flow_imp.id(261953376357341946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':SLOT_TYPE_ID := :SLOT_TYPE_DESC;'
,p_attribute_02=>'SLOT_TYPE_DESC'
,p_attribute_03=>'SLOT_TYPE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(117842140263347110)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53914185911531832)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'ProcessMachineSchedule'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_SCHEDULE_ID RADIATION.DEF_MACHINE_SCHEDULE.SCHEDULE_ID%TYPE;',
'L_STOP   CHAR(1) := ''N'';',
'L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'CASE :APEX$ROW_STATUS',
'-----------',
'-- Insert',
'-----------',
'WHEN ''C'' THEN',
'BEGIN',
'HIS.PKG_COUNTER.GET_COUNTER(P_COUNTER_ID  => 501,',
'                P_COUNTER_LOC => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                             ''PHYSICAL_LOCATION_ID''),',
'                P_WHERE       => NULL,',
'                P_TYPE        => ''N'',',
'                P_COUNTER     => L_SCHEDULE_ID,',
'                P_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                             ''PHYSICAL_LOCATION_ID''),',
'                P_STOP        => L_STOP,',
'                P_ALERT_TEXT  => L_ALERT_TEXT);',
'END;',
'IF L_STOP = ''Y'' THEN',
'APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END IF;',
'',
'BEGIN',
'INSERT INTO RADIATION.DEF_MACHINE_SCHEDULE',
'(SCHEDULE_ID,',
'MACHINE_ID,',
'FROM_DATE,',
'TO_DATE,',
'FROM_TIME,',
'TO_TIME,',
'DAY_MON,',
'DAY_TUE,',
'DAY_WED,',
'DAY_THU,',
'DAY_FRI,',
'DAY_SAT,',
'DAY_SUN,',
'SLOT,',
'SLOT_LENGTH)',
'VALUES',
'(L_SCHEDULE_ID,',
':P31_MACHINE_ID,',
':P31_FROM_DATE,',
':P31_TO_DATE,',
'LPAD(:P31_FROM_HH, 2, ''0'') || '':'' || LPAD(:P31_FROM_MI, 2, ''0''),',
'LPAD(:P31_TO_HH, 2, ''0'') || '':'' || LPAD(:P31_TO_MI, 2, ''0''),',
':P31_DAY_MON,',
':P31_DAY_TUE,',
':P31_DAY_WED,',
':P31_DAY_THU,',
':P31_DAY_FRI,',
':P31_DAY_SAT,',
':P31_DAY_SUN,',
':P31_SLOT,',
':P31_SLOT_LENGTH)',
'RETURNING ROWID INTO :P31_ROWID;',
'END;',
'WHEN ''U'' THEN',
'-----------',
'-- Update',
'-----------',
'IF :P31_SCHEDULE_ID IS NULL THEN ',
'BEGIN',
'HIS.PKG_COUNTER.GET_COUNTER(P_COUNTER_ID  => 501,',
'                P_COUNTER_LOC => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                             ''PHYSICAL_LOCATION_ID''),',
'                P_WHERE       => NULL,',
'                P_TYPE        => ''N'',',
'                P_COUNTER     => L_SCHEDULE_ID,',
'                P_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                             ''PHYSICAL_LOCATION_ID''),',
'                P_STOP        => L_STOP,',
'                P_ALERT_TEXT  => L_ALERT_TEXT);',
'END;',
'IF L_STOP = ''Y'' THEN',
'APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END IF;',
'END IF;',
'BEGIN',
'MERGE INTO RADIATION.DEF_MACHINE_SCHEDULE A',
'USING (SELECT :P31_SCHEDULE_ID AS SCHEDULE_ID FROM DUAL) B',
'ON (A.SCHEDULE_ID = B.SCHEDULE_ID)',
'WHEN MATCHED THEN',
'UPDATE',
'SET MACHINE_ID  = :P31_MACHINE_ID,',
' FROM_DATE   = :P31_FROM_DATE,',
' TO_DATE     = :P31_TO_DATE,',
' FROM_TIME   = LPAD(:P31_FROM_HH, 2, ''0'') || '':'' ||',
'               LPAD(:P31_FROM_MI, 2, ''0''),',
' TO_TIME     = LPAD(:P31_TO_HH, 2, ''0'') || '':'' ||',
'               LPAD(:P31_TO_MI, 2, ''0''),',
' DAY_MON     = :P31_DAY_MON,',
' DAY_TUE     = :P31_DAY_TUE,',
' DAY_WED     = :P31_DAY_WED,',
' DAY_THU     = :P31_DAY_THU,',
' DAY_FRI     = :P31_DAY_FRI,',
' DAY_SAT     = :P31_DAY_SAT,',
' DAY_SUN     = :P31_DAY_SUN,',
' SLOT        = :P31_SLOT,',
' SLOT_LENGTH = :P31_SLOT_LENGTH',
'WHERE SCHEDULE_ID = :P31_SCHEDULE_ID',
'WHEN NOT MATCHED THEN',
'INSERT',
'(SCHEDULE_ID,',
'MACHINE_ID,',
'FROM_DATE,',
'TO_DATE,',
'FROM_TIME,',
'TO_TIME,',
'DAY_MON,',
'DAY_TUE,',
'DAY_WED,',
'DAY_THU,',
'DAY_FRI,',
'DAY_SAT,',
'DAY_SUN,',
'SLOT,',
'SLOT_LENGTH)',
'VALUES',
'(L_SCHEDULE_ID,',
':P31_MACHINE_ID,',
':P31_FROM_DATE,',
':P31_TO_DATE,',
'LPAD(:P31_FROM_HH, 2, ''0'') || '':'' ||',
'LPAD(:P31_FROM_MI, 2, ''0''),',
'LPAD(:P31_TO_HH, 2, ''0'') || '':'' || LPAD(:P31_TO_MI, 2, ''0''),',
':P31_DAY_MON,',
':P31_DAY_TUE,',
':P31_DAY_WED,',
':P31_DAY_THU,',
':P31_DAY_FRI,',
':P31_DAY_SAT,',
':P31_DAY_SUN,',
':P31_SLOT,',
':P31_SLOT_LENGTH);',
'END;',
'WHEN ''D'' THEN',
'-----------',
'-- Delete',
'-----------',
'BEGIN',
'DELETE FROM RADIATION.DEF_MACHINE_SCHEDULE',
'WHERE ROWID = :P31_ROWID;',
'END;',
'END CASE;',
':P31_PARAM_SCHEDULE_ID := NVL(L_SCHEDULE_ID, :P31_SCHEDULE_ID);',
'EXCEPTION',
'WHEN OTHERS THEN',
'APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>117842140263347110
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65856624779723342)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(65855104814723327)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessMachineSlot'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_SCHEDULE_ID RADIATION.DEF_MACHINE_SCHEDULE.SCHEDULE_ID%TYPE;',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      IF :SLOT_TYPE_DESC IS NULL THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Kindly select slot type first, cannot proceed.'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      END IF;',
'    ',
'      IF :FROM_TIME IS NULL THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Kindly enter From Time first, cannot proceed.'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      END IF;',
'    ',
'      IF :TO_TIME IS NULL THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Kindly enter To Time first, cannot proceed.'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      END IF;',
'      BEGIN',
'        INSERT INTO RADIATION.DEF_MACHINE_SCHEDULE_SLOTS',
'          (SCHEDULE_ID, SLOT_TYPE_ID, FROM_TIME, TO_TIME)',
'        VALUES',
'          (NVL(:P31_SCHEDULE_ID, :P31_PARAM_SCHEDULE_ID),',
'           :SLOT_TYPE_DESC,',
'           :FROM_TIME,',
'           :TO_TIME)',
'        RETURNING ROWID INTO :ROWID;',
'      END;',
'    ',
'    WHEN ''U'' THEN',
'      BEGIN',
'        -----------',
'        -- Update',
'        -----------',
'        MERGE INTO RADIATION.DEF_MACHINE_SCHEDULE_SLOTS A',
'        USING (SELECT :P31_SCHEDULE_ID AS SCHEDULE_ID,',
'                      :SLOT_TYPE_ID    AS SLOT_TYPE_ID',
'                 FROM DUAL) B',
'        ON (A.SCHEDULE_ID = B.SCHEDULE_ID AND A.SLOT_TYPE_ID = B.SLOT_TYPE_ID)',
'        ',
'        WHEN MATCHED THEN',
'          UPDATE',
'             SET FROM_TIME = :FROM_TIME, TO_TIME = :TO_TIME',
'           WHERE ROWID = ROWID',
'          ',
'        ',
'        WHEN NOT MATCHED THEN',
'          INSERT',
'            (SCHEDULE_ID, SLOT_TYPE_ID, FROM_TIME, TO_TIME)',
'          VALUES',
'            (:P31_SCHEDULE_ID, :SLOT_TYPE_DESC, :FROM_TIME, :TO_TIME);',
'      END;',
'    ',
'      BEGIN',
'        SELECT MAX(ROWID)',
'          INTO :ROWID',
'          FROM RADIATION.DEF_MACHINE_SCHEDULE_SLOTS;',
'      END;',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        DELETE FROM RADIATION.DEF_MACHINE_SCHEDULE_SLOTS',
'         WHERE ROWID = :ROWID;',
'      END;',
'  END CASE;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>65856624779723342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(117841959614347108)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateSchedule'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP            CHAR(1) := ''N'';',
'  L_ALERT_TEXT      VARCHAR2(4000);',
'  L_DISPLAY_MESSAGE VARCHAR2(4000);',
'  E_ERROR EXCEPTION;',
'  L_COUNT NUMBER;',
'',
'BEGIN',
'',
'  IF NVL(:P31_NEW_LEGACY, ''~'') = ''O'' THEN',
'    -- CALL THE PROCEDURE',
'    RADIATION.PKG_S18FRM00059.SCHEDULE_MACHINE_SLOTS(P_SCHEDULE_ID => :P31_SCHEDULE_ID,',
'                                                     P_SLOT_COUNT  => L_COUNT,',
'                                                     P_OBJECT_CODE => ''S18FRM00059'',',
'                                                     P_USER_MRNO   => :GV_USER_MRNO,',
'                                                     P_TERMINAL    => :GV_TERMINAL,',
'                                                     P_ALERT_TEXT  => L_ALERT_TEXT,',
'                                                     P_STOP        => L_STOP);',
'  ',
'  ELSE',
'    RADIATION.PKG_SCHEDULE.GEN_SCHEDULE_SLOTS(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_SCHEDULE_ID       => :P31_SCHEDULE_ID,',
'                                              P_SLOT_COUNT        => L_COUNT,',
'                                              P_OBJECT_CODE       => ''S18FRM00059'',',
'                                              P_USER_MRNO         => :GV_USER_MRNO,',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'  END IF;',
'',
'  IF L_STOP = ''Y'' THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  END IF;',
'  --------',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(117841644253347105)
,p_process_success_message=>'The machine scheduling has been successfully finalized'
,p_internal_uid=>117841959614347108
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53914237498531833)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form RADIATION_MACHINE_SCHEDULE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SCHEDULE_ID,',
'         MACHINE_ID,',
'         (SELECT MM.DESCRIPTION',
'            FROM RADIATION.MACHINES MM',
'           WHERE MM.MACHINE_ID = DMS.MACHINE_ID) AS MACHINE_DESC,',
'         FROM_DATE,',
'         TO_DATE,',
'         SUBSTR(FROM_TIME, 0, 2) AS FROM_HH,',
'         SUBSTR(FROM_TIME, 4, 2) AS FROM_MI,',
'         SUBSTR(TO_TIME, 0, 2) AS TO_HH,',
'         SUBSTR(TO_TIME, 4, 2) AS TO_MI,',
'         FROM_TIME,',
'         TO_TIME,',
'         DAY_MON,',
'         DAY_TUE,',
'         DAY_WED,',
'         DAY_THU,',
'         DAY_FRI,',
'         DAY_SAT,',
'         DAY_SUN,',
'         SLOT,',
'         SLOT_LENGTH,',
'         NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'             0) TOTAL_SLOTS,',
'         NVL(RADIATION.PKG_SCHEDULE.GET_TOTAL_BOOKED_SLOTS(P_SCHEDULE_ID => DMS.SCHEDULE_ID),',
'             0) BOOKED_SLOTS,',
'         ROWID',
'    INTO :P31_SCHEDULE_ID,',
'         :P31_MACHINE_ID,',
'         :P31_MACHINE_DESC,',
'         :P31_FROM_DATE,',
'         :P31_TO_DATE,',
'         :P31_FROM_HH,',
'         :P31_FROM_MI,',
'         :P31_TO_HH,',
'         :P31_TO_MI,',
'         :P31_FROM_TIME,',
'         :P31_TO_TIME,',
'         :P31_DAY_MON,',
'         :P31_DAY_TUE,',
'         :P31_DAY_WED,',
'         :P31_DAY_THU,',
'         :P31_DAY_FRI,',
'         :P31_DAY_SAT,',
'         :P31_DAY_SUN,',
'         :P31_SLOT,',
'         :P31_SLOT_LENGTH,',
'         :P31_TOTAL_SLOTS,',
'         :P31_BOOKED_SLOTS,',
'         :P31_ROWID',
'    FROM RADIATION.DEF_MACHINE_SCHEDULE DMS',
'   WHERE SCHEDULE_ID = NVL(:P31_PARAM_SCHEDULE_ID, :P31_SCHEDULE_ID);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>53914237498531833
);
wwv_flow_imp.component_end;
end;
/

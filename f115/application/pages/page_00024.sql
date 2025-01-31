prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>'DEF_ALERTS	'
,p_alias=>'DEF-ALERTS'
,p_step_title=>'DEF_ALERTS	'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jsFormsBlock_pageReady();',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Hide horizontal scrollbar while keeping vertical scrollbar */',
'.a-GV-w-scroll {',
'    overflow-x: hidden; /* Hide horizontal scrollbar */',
'    overflow-y: auto; /* Enable vertical scrolling */',
'}',
'',
'',
'',
' [data-action="edit"]{',
'    display:none !important;',
'} ',
'  ',
'[data-action="save"]{',
'    display:none !important;',
'}',
' ',
' ',
'[data-action="selection-add-row"]{',
'    display:none !important;',
'}',
' ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250108230100'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(635784163163559259)
,p_plug_name=>'Definition Alert '
,p_region_name=>'rad_def_alert'
,p_region_css_classes=>'forms-block my-anchor'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ALERT_ID,',
'       DESCRIPTION,',
'       ALERT_MESSAGE,',
'       ALERT_TYPE,',
'       DISMISS_ALLOWED,',
'       ACTIVE,',
'       ROWID',
'  FROM RADIATION.DEF_ALERTS',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Definition Alert '
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
 p_id=>wwv_flow_imp.id(44268218533912110)
,p_name=>'ALERT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Alert ID'
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
,p_static_id=>'ALERT_ID'
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
 p_id=>wwv_flow_imp.id(44268394645912111)
,p_name=>'ALERT_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Alert Message'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'ALERT_MESSAGE'
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
 p_id=>wwv_flow_imp.id(44268462422912112)
,p_name=>'ALERT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Alert Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Error;E,Warning;W,Information;I'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'ALERT_TYPE'
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
,p_default_expression=>'E'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44268547573912113)
,p_name=>'DISMISS_ALLOWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISMISS_ALLOWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Dismiss Allowed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DISMISS_ALLOWED'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(175435676787645318)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(635786446904559256)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DESCRIPTION'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(635787440794559255)
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
,p_is_required=>false
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(635790431085559248)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(635784666820559259)
,p_internal_uid=>635784666820559259
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
,p_toolbar_buttons=>'SEARCH_FIELD:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>450
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (config) {',
'    var $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();',
' ',
'    addAction = toolbarData.toolbarFind("selection-add-row");',
'    saveAction = toolbarData.toolbarFind("save");',
' ',
'    addAction.iconBeforeLabel = true;',
'    saveAction.iconBeforeLabel = true;',
' ',
'    addAction.icon = "icon-ig-add-row";',
'    saveAction.icon = "icon-ig-save";',
' ',
'    addAction.hot = true;',
'    saveAction.hot = true;',
' ',
'    config.toolbarData = toolbarData;',
' ',
'    return config;',
'}',
' '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(635785049799559257)
,p_interactive_grid_id=>wwv_flow_imp.id(635784666820559259)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(635785240323559257)
,p_report_id=>wwv_flow_imp.id(635785049799559257)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44745760094645804)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(44268218533912110)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.641
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44746681660645811)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(44268394645912111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>443.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44747529585645813)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(44268462422912112)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44748445781645816)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(44268547573912113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.68799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(176458036383620263)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(175435676787645318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(635786848917559256)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(635786446904559256)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(635787851708559255)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(635787440794559255)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53.3906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(635790840978559248)
,p_view_id=>wwv_flow_imp.id(635785240323559257)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(635790431085559248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44729089544634020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(635784163163559259)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44729813141634021)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(635784163163559259)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(44743430753634035)
,p_branch_name=>'GoToHomePage'
,p_branch_action=>'f?p=100:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44729813141634021)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44739237870634033)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44729089544634020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44739706598634033)
,p_event_id=>wwv_flow_imp.id(44739237870634033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("rad_def_alert").widget().interactiveGrid("getActions").invoke("save");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44742467848634034)
,p_name=>'CloseMenu'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44742976139634034)
,p_event_id=>wwv_flow_imp.id(44742467848634034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44734050629634028)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(635784163163559259)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Alert Definitions  - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_ID RADIATION.DEF_ALERTS.ALERT_ID%TYPE;',
'BEGIN',
'',
'  IF :DESCRIPTION IS NOT NULL THEN',
'    CASE :APEX$ROW_STATUS',
'    -----------',
'    -- Insert',
'    -----------',
'      WHEN ''C'' THEN',
'      ',
'        BEGIN',
'          SELECT LPAD(NVL(MAX(A.ALERT_ID), 0) + 1, 3, ''0'')',
'            INTO L_ALERT_ID',
'            FROM RADIATION.DEF_ALERTS A;',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            NULL;',
'        END;',
'      ',
'        BEGIN',
'          INSERT INTO RADIATION.DEF_ALERTS',
'            (ALERT_ID,',
'             DESCRIPTION,',
'             ALERT_MESSAGE,',
'             ALERT_TYPE,',
'             DISMISS_ALLOWED,',
'             ACTIVE)',
'          VALUES',
'            (L_ALERT_ID,',
'             :DESCRIPTION,',
'             :ALERT_MESSAGE,',
'             :ALERT_TYPE,',
'             :DISMISS_ALLOWED,',
'             :ACTIVE)',
'             RETURNING ROWID INTO :ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Update',
'    -----------',
'      WHEN ''U'' THEN',
'        BEGIN',
'          UPDATE RADIATION.DEF_ALERTS',
'             SET DESCRIPTION     = :DESCRIPTION,',
'                 ALERT_MESSAGE   = :ALERT_MESSAGE,',
'                 ALERT_TYPE      = :ALERT_TYPE,',
'                 DISMISS_ALLOWED = :DISMISS_ALLOWED,',
'                 ACTIVE          = :ACTIVE',
'           WHERE ROWID = :ROWID;',
'        END;',
'      ',
'    -----------',
'    -- Delete',
'    -----------',
'      WHEN ''D'' THEN',
'        BEGIN',
'          DELETE FROM RADIATION.DEF_ALERTS WHERE ROWID = :ROWID;',
'        END;',
'      ',
'    END CASE;',
'  ',
'  ELSE',
'  ',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''There is no record to save'',',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'  END IF;',
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
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>44734050629634028
);
wwv_flow_imp.component_end;
end;
/

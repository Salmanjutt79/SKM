prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'QA_PARAMETERS'
,p_alias=>'QA-PARAMETERS'
,p_step_title=>'QA_PARAMETERS'
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
' [data-action="edit"]{',
'    display:none !important;',
'',
'}   ',
'[data-action="save"]{',
'    display:none !important;',
'',
'}',
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
,p_last_upd_yyyymmddhh24miss=>'20250108224016'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1800215866531805637)
,p_plug_name=>'QA Parameters '
,p_region_name=>'RAD_ACC'
,p_region_css_classes=>'forms-block my-anchor'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Q.PARAMETER_ID, Q.DESCRIPTION, Q.ACTIVE, Q.VALUE_TYPE,Q.ROWID',
'  FROM RADIATION.QA_PARAMETERS Q',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'QA Parameters '
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
 p_id=>wwv_flow_imp.id(149517622166353035)
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
 p_id=>wwv_flow_imp.id(175434630075645308)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(455241358711145550)
,p_name=>'PARAMETER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly="readonly;"'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PARAMETER_ID'
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
 p_id=>wwv_flow_imp.id(461724846939482401)
,p_name=>'VALUE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Value Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'VALUE_TYPE'
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
 p_id=>wwv_flow_imp.id(1800217978984805568)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(1800222981270805550)
,p_name=>'ACTIVE'
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
 p_id=>wwv_flow_imp.id(1800216319064805637)
,p_internal_uid=>1800216319064805637
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1800216678780805635)
,p_interactive_grid_id=>wwv_flow_imp.id(1800216319064805637)
,p_static_id=>'4173650'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1800216943386805635)
,p_report_id=>wwv_flow_imp.id(1800216678780805635)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(150279815273306808)
,p_view_id=>wwv_flow_imp.id(1800216943386805635)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(149517622166353035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(176054353174848342)
,p_view_id=>wwv_flow_imp.id(1800216943386805635)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(175434630075645308)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461745802775496901)
,p_view_id=>wwv_flow_imp.id(1800216943386805635)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(455241358711145550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.953
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(461746789689496904)
,p_view_id=>wwv_flow_imp.id(1800216943386805635)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(461724846939482401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1800218400340805566)
,p_view_id=>wwv_flow_imp.id(1800216943386805635)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1800217978984805568)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>396.016
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1800223457689805549)
,p_view_id=>wwv_flow_imp.id(1800216943386805635)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1800222981270805550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57.046899999999994
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(175437390733645335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1800215866531805637)
,p_button_name=>'Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(461710264191478869)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1800215866531805637)
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
 p_id=>wwv_flow_imp.id(461710647764478870)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1800215866531805637)
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(461725014506482403)
,p_tabular_form_region_id=>wwv_flow_imp.id(1800215866531805637)
,p_validation_name=>'ValidateDuplicateParamName'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT NUMBER;',
'BEGIN',
'  BEGIN',
'    SELECT COUNT(P.DESCRIPTION)',
'      INTO L_COUNT',
'      FROM RADIATION.QA_PARAMETERS P',
'     WHERE UPPER(P.DESCRIPTION) = UPPER(:DESCRIPTION);',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      L_COUNT := 0;',
'  END;',
'',
'  IF L_COUNT > 0 AND :APEX$ROW_STATUS = ''C'' THEN',
'    RETURN ''QA Parameter with this name already exists, cannot proceed.'';',
'  END IF;',
'',
'  IF :DESCRIPTION IS NULL AND :APEX$ROW_STATUS = ''C'' THEN',
'    RETURN ''QA Parameter is blank, cannot proceed.'';',
'  END IF;',
'',
'  IF :DESCRIPTION IS NULL AND :APEX$ROW_STATUS = ''U'' THEN',
'    RETURN ''QA Parameter is blank, cannot proceed.'';',
'  END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'DESCRIPTION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(461712319832478872)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(461710264191478869)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NOT_DISPLAYING_INLINE_VALIDATION_ERRORS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461712829408478872)
,p_event_id=>wwv_flow_imp.id(461712319832478872)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("RAD_ACC").widget().interactiveGrid("getActions").invoke("save");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38480137331170817)
,p_name=>'CloseMenu'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38480207464170818)
,p_event_id=>wwv_flow_imp.id(38480137331170817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(175437853593645340)
,p_name=>'Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(175437390733645335)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175437954984645341)
,p_event_id=>wwv_flow_imp.id(175437853593645340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'// Initialize parameter list',
'let paramList = {',
'    "PARAMFORM": ''NO'', // Disabling the parameter form',
'    "MAXIMIZE": ''YES'', // Maximizing the report',
'     "P_USER_NAME": $v(":GLOBAL.FULL_NAME"), ',
'      "DESTYPE": ''SCREEN'', // Destination type is screen',
'     "P_TERMINAL": $v(":GLOBAL.TERMINAL"), ',
'};',
'',
'// Define the report code and method',
'var l_object_code = ''S18REP00020''; // Report code from PL/SQL version',
'let object = {',
'    "OBJECTCODE": l_object_code,',
'    "METHOD": ''S2'',',
'    "PARAMLIST": paramList // Pass the parameters',
'};',
'',
'// Push the object into the list',
'objectList.push(object);',
'// Return the object list',
'return objectList;',
'',
'',
'//   IF NOT ID_NULL(PL_ID) THEN',
'//     DESTROY_PARAMETER_LIST(''INFORMATION'');',
'//   END IF;',
'//   PL_ID := CREATE_PARAMETER_LIST(''INFORMATION'');',
'//   ADD_PARAMETER(PL_ID, ''PARAMFORM'', TEXT_PARAMETER, ''NO'');',
'//   ADD_PARAMETER(PL_ID, ''MAXIMIZE'', TEXT_PARAMETER, ''YES'');',
'//   ADD_PARAMETER(PL_ID, ''P_TERMINAL'', TEXT_PARAMETER, :GLOBAL.TERMINAL);',
'// 	ADD_PARAMETER(PL_ID, ''DESTYPE'', TEXT_PARAMETER, ''SCREEN'');',
'// -----REPORT PARAMETER',
'//     ADD_PARAMETER(PL_ID, ''P_USER_NAME'', TEXT_PARAMETER, :GLOBAL.FULL_NAME);       ',
'//     --RUN_PRODUCT(REPORTS, :GLOBAL.RADIAREPORTS|| ''QA_CHECKLIST.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID);',
'// -----------------------------------------------------------------------------------------',
'// RP2RRO.RUN_PRODUCT(''S18REP00020'',SYNCHRONOUS,PL_ID,NULL,''Y'',V_STOP,V_ERROR);',
'// IF V_STOP=''Y'' THEN',
'// DISPLAY_ALERT(''MESSAGE'',V_ERROR);',
'// RAISE FORM_TRIGGER_FAILURE;',
'// END IF;',
'// ------------------------------------------------------------------------------------------',
'',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(461711007512478870)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1800215866531805637)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'QA Parameters - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_PARAMETER_ID RADIATION.QA_PARAMETERS.PARAMETER_ID%TYPE;',
'BEGIN',
' ',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'      BEGIN',
'        SELECT LPAD(NVL(MAX(PARAMETER_ID), 0) + 1, 3, 0)',
'          INTO L_PARAMETER_ID',
'          FROM RADIATION.QA_PARAMETERS;',
'      END;',
'      INSERT INTO RADIATION.QA_PARAMETERS',
'        (PARAMETER_ID, DESCRIPTION, ACTIVE, VALUE_TYPE)',
'      VALUES',
'        (L_PARAMETER_ID, :DESCRIPTION, :ACTIVE, :VALUE_TYPE)',
'         RETURNING ROWID INTO :ROWID;',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      UPDATE RADIATION.QA_PARAMETERS',
'         SET DESCRIPTION = :DESCRIPTION,',
'             ACTIVE      = :ACTIVE,',
'             VALUE_TYPE  = :VALUE_TYPE',
'       WHERE PARAMETER_ID = :PARAMETER_ID;',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      DELETE FROM RADIATION.QA_PARAMETERS',
'       WHERE PARAMETER_ID = :PARAMETER_ID;',
'  END CASE;',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;'))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>461711007512478870
);
wwv_flow_imp.component_end;
end;
/

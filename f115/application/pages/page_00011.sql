--------------------------------------------------------------------------------
-- © Shaukat Khanum Memorial Trust (2000-2022). All rights reserved.
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
end;
/
 
prompt APPLICATION 115 - Radiation
--
-- Application Export:
--   Application:     115
--   Name:            Radiation
--   Date and Time:   14:59 Friday January 31, 2025
--   Exported By:     MUHAMMADUSMAN1
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 11
--   Manifest End
--   Version:         23.1.4
--   Instance ID:     697853336793999
--

begin
null;
end;
/
prompt --application/pages/delete_00011
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>11);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'PRIORITY'
,p_alias=>'PRIORITY'
,p_step_title=>'PRIORITY'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jsFormsBlock_pageReady();',
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
,p_last_upd_yyyymmddhh24miss=>'20250131145932'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(449226409415283362)
,p_plug_name=>'Radiation Priority Setup'
,p_region_name=>'RAD_PIRORITY'
,p_region_css_classes=>'forms-block my-anchor'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>5
,p_plug_display_column=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PRIORITY_ID, PRIORITY_PREFIX, DESCRIPTION, ACTIVE, ROWID',
'  FROM RADIATION.PRIORITY'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation Priority Setup'
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
 p_id=>wwv_flow_imp.id(16187864893629527)
,p_name=>'PRIORITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Priority ID'
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
,p_static_id=>'PRIORITY_ID'
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
 p_id=>wwv_flow_imp.id(16187953274629528)
,p_name=>'PRIORITY_PREFIX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY_PREFIX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Priority Prefix'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_static_id=>'PRIORITY_PREFIX'
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
 p_id=>wwv_flow_imp.id(175434887084645310)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(449228693156283359)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(449229687046283358)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(449232677337283351)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(449226913072283362)
,p_internal_uid=>449226913072283362
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
 p_id=>wwv_flow_imp.id(449227296051283360)
,p_interactive_grid_id=>wwv_flow_imp.id(449226913072283362)
,p_static_id=>'4152051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(449227486575283360)
,p_report_id=>wwv_flow_imp.id(449227296051283360)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17237584139500087)
,p_view_id=>wwv_flow_imp.id(449227486575283360)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16187864893629527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17238488228500089)
,p_view_id=>wwv_flow_imp.id(449227486575283360)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16187953274629528)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(176126856461955426)
,p_view_id=>wwv_flow_imp.id(449227486575283360)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(175434887084645310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(449229095169283359)
,p_view_id=>wwv_flow_imp.id(449227486575283360)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(449228693156283359)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(449230097960283358)
,p_view_id=>wwv_flow_imp.id(449227486575283360)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(449229687046283358)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(449233087230283351)
,p_view_id=>wwv_flow_imp.id(449227486575283360)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(449232677337283351)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17228884593496213)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(449226409415283362)
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
,p_button_cattributes=>'data-action="[RAD_PIRORITY]save"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17228462511496213)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(449226409415283362)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(313813013209270131)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(449226409415283362)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'New'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17231831932496217)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17228884593496213)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17232309232496217)
,p_event_id=>wwv_flow_imp.id(17231831932496217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("RAD_PIRORITY").widget().interactiveGrid("getActions").invoke("save");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38480982933170825)
,p_name=>'CloseMenu'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38481089598170826)
,p_event_id=>wwv_flow_imp.id(38480982933170825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17226968311496210)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(449226409415283362)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Priority - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_PRIORITY_ID RADIATION.PRIORITY.PRIORITY_ID%TYPE;',
'BEGIN',
'  CASE :APEX$ROW_STATUS',
'    -- Insert',
'    WHEN ''C'' THEN',
'      BEGIN',
'        -- Check for uniqueness of PRIORITY_PREFIX',
'        DECLARE',
'          v_count NUMBER;',
'        BEGIN',
'          SELECT COUNT(*)',
'          INTO v_count',
'          FROM RADIATION.PRIORITY',
'          WHERE PRIORITY_PREFIX = :PRIORITY_PREFIX;',
'          ',
'          IF v_count > 0 THEN',
'            RAISE_APPLICATION_ERROR(-20001, ''Priority Prefix must be unique.'');',
'          END IF;',
'        END;',
'        ',
'        -- Generate new PRIORITY_ID',
'            BEGIN',
'        SELECT LPAD(NVL(MAX(PRIORITY_ID), 0) + 1, 2, 0)',
'          INTO L_PRIORITY_ID',
'          FROM RADIATION.PRIORITY;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
'   ',
'   ',
'        -- Perform the insert',
'       BEGIN',
'        INSERT INTO RADIATION.PRIORITY',
'          (PRIORITY_ID, PRIORITY_PREFIX, DESCRIPTION, ACTIVE)',
'        VALUES',
'          (L_PRIORITY_ID, :PRIORITY_PREFIX, :DESCRIPTION, :ACTIVE)',
'          RETURNING ROWID INTO :ROWID;',
'      END;',
'      END;',
'',
'    -- Update',
'    WHEN ''U'' THEN',
'      BEGIN',
'        -- Check for uniqueness of PRIORITY_PREFIX on update',
'        DECLARE',
'          v_count NUMBER;',
'        BEGIN',
'          SELECT COUNT(*)',
'          INTO v_count',
'          FROM RADIATION.PRIORITY',
'          WHERE PRIORITY_PREFIX = :PRIORITY_PREFIX',
'            AND ROWID != :ROWID;',
'          ',
'          IF v_count > 0 THEN',
'            RAISE_APPLICATION_ERROR(-20001, ''Priority Prefix must be unique.'');',
'          END IF;',
'        END;',
'        ',
'        -- Perform the update',
'            BEGIN',
'        UPDATE RADIATION.PRIORITY',
'           SET PRIORITY_PREFIX = :PRIORITY_PREFIX,',
'               DESCRIPTION     = :DESCRIPTION,',
'               ACTIVE          = :ACTIVE',
'         WHERE ROWID = :ROWID;',
'      END;',
'      END;',
'',
'    -- Delete',
'    WHEN ''D'' THEN',
'      BEGIN',
'        -- Perform the delete',
'         BEGIN',
'        DELETE FROM RADIATION.PRIORITY WHERE ROWID = :ROWID;',
'      END;',
'      END;',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Unexpected error: '' || SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>17226968311496210
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

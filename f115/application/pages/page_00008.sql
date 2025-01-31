prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'RADIATION_EVENTS'
,p_alias=>'RADIATION-EVENTS'
,p_step_title=>'RADIATION_EVENTS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jsFormsBlock_pageReady();',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[data-action="edit"]{',
'    display:none !important;',
'} ',
'[data-action="save"]{',
'    display:none !important;',
'}',
'',
'[data-action="selection-add-row"]{',
'    display:none !important;',
'}',
'',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250108224132'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33163710834937922)
,p_plug_name=>'Control'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(461726808871482421)
,p_plug_name=>'Event Rights'
,p_region_name=>'EVENT_RIGHT'
,p_region_css_classes=>'forms-block my-anchor'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>12
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EVENT_ID, MRNO, ROLE_ASSIGN, ACTIVE, SHOW_PENDING_TASKS, ROWID, HIS.PKG_PATIENT.GET_PATIENT_NAME(MRNO) DISP_NAME',
'  FROM RADIATION.EVENT_RIGHTS',
'WHERE EVENT_ID = :P8_EVENT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(2265551536409513189)
,p_ajax_items_to_submit=>'P8_EVENT_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Event Rights'
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
 p_id=>wwv_flow_imp.id(33163345465937918)
,p_name=>'DISP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME'
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
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DISP_NAME'
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
 p_id=>wwv_flow_imp.id(181013237055459405)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461727606454482429)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461727706837482430)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'EVENT_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(461726213993482415)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461728274265482435)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'MRNO'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>14
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(33851817936215498)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'MRNO'
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
 p_id=>wwv_flow_imp.id(461728390525482436)
,p_name=>'ROLE_ASSIGN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ASSIGN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Role Assign'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Unit Co-ordinator;U,SIM Technician;S,Resident;R,Consultant;C,Physicist;P,RAD Technician;D,Developer;V,CT Tech;T,HDR Tech;B'
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'ROLE_ASSIGN'
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
 p_id=>wwv_flow_imp.id(461728407526482437)
,p_name=>'SHOW_PENDING_TASKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOW_PENDING_TASKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Show Pending Tasks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SHOW_PENDING_TASKS'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461728948250482442)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_static_id=>'ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(461727474378482427)
,p_internal_uid=>461727474378482427
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
,p_fixed_header_max_height=>350
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(465399046412779260)
,p_interactive_grid_id=>wwv_flow_imp.id(461727474378482427)
,p_static_id=>'4653991'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(465399235713779260)
,p_report_id=>wwv_flow_imp.id(465399046412779260)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13440949535969860)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(461728948250482442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33844662906197564)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(33163345465937918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182033360821717188)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(181013237055459405)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465400634786779265)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(461727606454482429)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465401596681779267)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(461727706837482430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465415903797796132)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(461728274265482435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>635
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465416874192796134)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(461728390525482436)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465417776400796137)
,p_view_id=>wwv_flow_imp.id(465399235713779260)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(461728407526482437)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2265551536409513189)
,p_plug_name=>'Radiotherapy Workflow '
,p_region_name=>'RAD_WORKFLOW'
,p_region_css_classes=>'forms-block my-anchor'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EVENT_ID,',
'       DESCRIPTION,',
'       EMAIL_SUBJECT,',
'       EMAIL_BODY,',
'       OBJECT_CODE,',
'       ACTIVE,',
'       NEXT_EVENT,',
'       ROWID',
'  FROM RADIATION.RADIATION_EVENTS',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Workflow '
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
 p_id=>wwv_flow_imp.id(181013159107459404)
,p_name=>'delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(461726213993482415)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Event Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EVENT_ID'
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
 p_id=>wwv_flow_imp.id(461726372124482416)
,p_name=>'EMAIL_SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Email Subject'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'EMAIL_SUBJECT'
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
 p_id=>wwv_flow_imp.id(461726402397482417)
,p_name=>'EMAIL_BODY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL_BODY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Email Body'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'EMAIL_BODY'
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
 p_id=>wwv_flow_imp.id(461726548425482418)
,p_name=>'OBJECT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Object Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>11
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'OBJECT_CODE'
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
 p_id=>wwv_flow_imp.id(461726649548482419)
,p_name=>'NEXT_EVENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_EVENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Next Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'NEXT_EVENT'
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
 p_id=>wwv_flow_imp.id(461728834719482441)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2265553648862513120)
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
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(2265558651148513102)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
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
 p_id=>wwv_flow_imp.id(2265551988942513189)
,p_internal_uid=>2265551988942513189
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
,p_fixed_header_max_height=>350
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2265552348658513187)
,p_interactive_grid_id=>wwv_flow_imp.id(2265551988942513189)
,p_static_id=>'4173650'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2265552613264513187)
,p_report_id=>wwv_flow_imp.id(2265552348658513187)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182031360884714432)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(181013159107459404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465348817791722273)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(461726213993482415)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.5469
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465349765627722280)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(461726372124482416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190.969
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465350633095722282)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(461726402397482417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>217
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465351590438722285)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(461726548425482418)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.993
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(465352485115722287)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(461726649548482419)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.542
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(466175694234644799)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(461728834719482441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2265554070218513118)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2265553648862513120)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2265559127567513101)
,p_view_id=>wwv_flow_imp.id(2265552613264513187)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2265558651148513102)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69.9375
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194278826799382423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33163710834937922)
,p_button_name=>'Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(465339679092707657)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33163710834937922)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(465340056138707657)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33163710834937922)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33163832335937923)
,p_name=>'P8_EVENT_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(461729286871482445)
,p_name=>'P8_CURRENT_REGION'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(465340579465707669)
,p_tabular_form_region_id=>wwv_flow_imp.id(2265551536409513189)
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
 p_id=>wwv_flow_imp.id(465342138978707739)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(465339679092707657)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(465342615037707739)
,p_event_id=>wwv_flow_imp.id(465342138978707739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("RAD_WORKFLOW").widget().interactiveGrid("getActions").invoke("save");',
'apex.region("EVENT_RIGHT").widget().interactiveGrid("getActions").invoke("save");',
''))
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33163960665937924)
,p_name=>'SetEventID'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2265551536409513189)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33164092404937925)
,p_event_id=>wwv_flow_imp.id(33163960665937924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedEventId = "", ',
'',
'    model = this.data.model;',
'',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    selectedEventId += model.getValue(this.data.selectedRecords[i], "EVENT_ID");',
'',
'}',
'',
'$s("P8_EVENT_ID", selectedEventId);',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41733934256012533)
,p_event_id=>wwv_flow_imp.id(33163960665937924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P8_EVENT_ID").setValue(_.RAD_WORKFLOW.EVENT_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33164123157937926)
,p_event_id=>wwv_flow_imp.id(33163960665937924)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(461726808871482421)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33164293263937927)
,p_name=>'SetEventIDClick'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2265551536409513189)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41734139642012535)
,p_event_id=>wwv_flow_imp.id(33164293263937927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(461726808871482421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33164375013937928)
,p_event_id=>wwv_flow_imp.id(33164293263937927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedEventId = "", ',
'',
'    model = this.data.model;',
'',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    selectedEventId += model.getValue(this.data.selectedRecords[i], "EVENT_ID");',
'',
'}',
'',
'$s("P8_EVENT_ID", selectedEventId);',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41734011563012534)
,p_event_id=>wwv_flow_imp.id(33164293263937927)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P8_EVENT_ID").setValue(_.RAD_WORKFLOW.EVENT_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33164479697937929)
,p_event_id=>wwv_flow_imp.id(33164293263937927)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(461726808871482421)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38480362875170819)
,p_name=>'CloseMenu'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38480416150170820)
,p_event_id=>wwv_flow_imp.id(38480362875170819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181013788401459410)
,p_name=>'SET_NAME'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(461726808871482421)
,p_triggering_element=>'MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181013808031459411)
,p_event_id=>wwv_flow_imp.id(181013788401459410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':DISP_NAME := HIS.PKG_PATIENT.GET_PATIENT_NAME(:MRNO);',
''))
,p_attribute_02=>'MRNO'
,p_attribute_03=>'DISP_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194279072105382425)
,p_name=>'Click'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(194278826799382423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194279158648382426)
,p_event_id=>wwv_flow_imp.id(194279072105382425)
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
'     "P_TERMINAL_IN": $v(":GLOBAL.TERMINAL"), ',
'};',
'',
'// Define the report code and method',
'var l_object_code = ''S18REP00013''; // Report code from PL/SQL version',
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
'',
'',
'',
'// IF :SYSTEM.FORM_STATUS <> ''QUERY'' THEN',
'// 	DISPLAY_ALERT(''MESSAGE'',''Please Save Changes'');',
'// 	RAISE FORM_TRIGGER_FAILURE;',
'// END IF;',
'',
'',
'',
'// DECLARE',
'//   pl_id paramlist;',
'//  	V_STOP VARCHAR2(1);',
'// 	V_ERROR VARCHAR2(4000);',
'',
'// BEGIN',
'//   pl_id := get_parameter_list(''information'');',
'//   IF NOT id_null(pl_id) THEN',
'//     destroy_parameter_list(''information'');',
'//   END IF;',
'',
'//   pl_id := create_parameter_list(''information'');',
'//   add_parameter(pl_id, ''PARAMFORM'', text_parameter, ''NO'');',
'//   add_parameter(pl_id, ''MAXIMIZE'', text_parameter, ''YES'');',
'//   ADD_PARAMETER(PL_ID, ''DESTYPE'', TEXT_PARAMETER, ''SCREEN'');',
'//   add_parameter(pl_id, ''P_TERMINAL_IN'', text_parameter, :GLOBAL.TERMINAL);',
'',
'// -----Report Parameter',
'',
'//     add_parameter(pl_id, ''P_USER_NAME'', text_parameter, :GLOBAL.FULL_NAME);   ',
'//     --RP2RRO.RP2RRO_RUN_PRODUCT(REPORTS, :GLOBAL.RADIAREPORTS|| ''RADIATION_EVENTS_RIGHTS.rep'', ASYNCHRONOUS, RUNTIME, FILESYSTEM, PL_ID,null);',
'    ',
'//     -- Run Report --',
'//     RP2RRO.RUN_PRODUCT(P_OBJECTCODE  => ''S18REP00013'',',
'//                        P_COMMMODE    => SYNCHRONOUS,',
'//                        P_PARAMLIST   => PL_ID,',
'//                        P_PRINTERTYPE => NULL,',
'//                        P_AUTOACTION  => ''Y'',',
'//                        P_STOP        => V_STOP,',
'//                        P_ALERTTEXT   => V_ERROR);',
'//     IF V_STOP = ''Y'' THEN',
'//       DISPLAY_ALERT(''MESSAGE'', V_ERROR);',
'//       RAISE FORM_TRIGGER_FAILURE;',
'//     END IF;',
'',
'',
'// END;  ',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(194279279829382427)
,p_name=>'Selection change'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2265551536409513189)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(194279375547382428)
,p_event_id=>wwv_flow_imp.id(194279279829382427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(461726808871482421)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(465340894942707672)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2265551536409513189)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'QA Parameters - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      INSERT INTO RADIATION.RADIATION_EVENTS',
'        (EVENT_ID,',
'         DESCRIPTION,',
'         EMAIL_SUBJECT,',
'         EMAIL_BODY,',
'         OBJECT_CODE,',
'         ACTIVE,',
'         NEXT_EVENT)',
'      VALUES',
'        (:EVENT_ID,',
'         :DESCRIPTION,',
'         :EMAIL_SUBJECT,',
'         :EMAIL_BODY,',
'         :OBJECT_CODE,',
'         :ACTIVE,',
'         :NEXT_EVENT)',
'         RETURNING ROWID INTO :ROWID;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      UPDATE RADIATION.RADIATION_EVENTS',
'         SET EVENT_ID      = :EVENT_ID,',
'             DESCRIPTION   = :DESCRIPTION,',
'             EMAIL_SUBJECT = :EMAIL_SUBJECT,',
'             EMAIL_BODY    = :EMAIL_BODY,',
'             OBJECT_CODE   = :OBJECT_CODE,',
'             ACTIVE        = :ACTIVE,',
'             NEXT_EVENT    = :NEXT_EVENT',
'       WHERE ROWID = :ROWID;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      DELETE FROM RADIATION.RADIATION_EVENTS WHERE ROWID = :ROWID;',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>465340894942707672
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13972292970460301)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(461726808871482421)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Event Rights - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      INSERT INTO RADIATION.EVENT_RIGHTS',
'        (EVENT_ID, MRNO, ROLE_ASSIGN, ACTIVE, SHOW_PENDING_TASKS)',
'      VALUES',
'        (:P8_EVENT_ID, :MRNO, :ROLE_ASSIGN, :ACTIVE, :SHOW_PENDING_TASKS)',
'      RETURNING ROWID INTO :ROWID;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      UPDATE RADIATION.EVENT_RIGHTS',
'         SET MRNO               = :MRNO,',
'             ROLE_ASSIGN        = :ROLE_ASSIGN,',
'             ACTIVE             = :ACTIVE,',
'             SHOW_PENDING_TASKS = :SHOW_PENDING_TASKS',
'       WHERE ROWID = :ROWID;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      DELETE FROM RADIATION.EVENT_RIGHTS WHERE ROWID = :ROWID;',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>13972292970460301
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_09995
begin
--   Manifest
--     PAGE: 09995
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
 p_id=>9995
,p_name=>'Copy of page 4'
,p_alias=>'COPY-OF-PAGE-4'
,p_step_title=>'Copy of page 4'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.font-maroon { color:maroon}',
'.font-red { color:red}',
'.margin-top-20 {margin-top: -20}',
'.t-Region-header { line-height: 5px}',
'.t-Region-body {padding-top:0px;padding-right:10px;',
'padding-bottom:0px;',
'padding-left:10px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADSHARIF'
,p_last_upd_yyyymmddhh24miss=>'20230315090813'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(456900056454003689)
,p_plug_name=>'Radiotherapy Treatment Site'
,p_region_name=>'RAD_TRT_SITE'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SITE_ID,',
'       DESCRIPTION,',
'       NECK_POSITION,',
'       CONTOUR_REQUIRED,',
'       MIN_DOSE_LIMIT,',
'       MAX_DOSE_LIMIT,',
'       ACTIVE,',
'       PARENT_SITE_ID,',
'       ROWID',
'  FROM RADIATION.SITE S'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Treatment Site'
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
 p_id=>wwv_flow_imp.id(70525204645227269)
,p_name=>'PARENTSITEID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Parent Site '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, PARENT_SITE_ID ID',
'  FROM RADIATION.PARENT_SITE',
' WHERE ACTIVE = ''Y''',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'PARENTSITEID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456901351250003625)
,p_name=>'SITEID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Site ID'
,p_heading_alignment=>'LEFT'
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
,p_static_id=>'SITEID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456902168907003620)
,p_name=>'RADIOTHERAPYSITENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiotherapy Site Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456903187012003605)
,p_name=>'NECKDOSELIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Neck Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'NECKDOSELIMIT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456904181063003605)
,p_name=>'CONTOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTOUR_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Contour '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'CONTOUR'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456905216476003603)
,p_name=>'MINDOSELIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIN_DOSE_LIMIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Min Dose Limit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'MINDOSELIMIT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456906216672003602)
,p_name=>'MAXDOSELIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_DOSE_LIMIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Max Dose Limit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'MAXDOSELIMIT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(456907171193003602)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(494772710416575169)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(456900508987003689)
,p_internal_uid=>456900508987003689
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
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>550
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(456900868703003687)
,p_interactive_grid_id=>wwv_flow_imp.id(456900508987003689)
,p_static_id=>'4173650'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(456901133309003687)
,p_report_id=>wwv_flow_imp.id(456900868703003687)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71764629709941397)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(70525204645227269)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192.33300000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456901574052003621)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(456901351250003625)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456902590263003618)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(456902168907003620)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>408
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456903652524003605)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(456903187012003605)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456904604881003604)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(456904181063003605)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456905611884003603)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(456905216476003603)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456906650317003602)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(456906216672003602)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456907647612003601)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(456907171193003602)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66.701
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(494870449460638757)
,p_view_id=>wwv_flow_imp.id(456901133309003687)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(494772710416575169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39541954907429766)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(456900056454003689)
,p_button_name=>'AddRadiationSite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39541544022429766)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(456900056454003689)
,p_button_name=>'EditRadiationSite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-pencil-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39540728749429764)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(456900056454003689)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39542352257429767)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(456900056454003689)
,p_button_name=>'Delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39541163508429766)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(456900056454003689)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39544345609429819)
,p_name=>'P9995_STOP'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39544788772429823)
,p_name=>'P9995_ERROR'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39545138298429823)
,p_name=>'P9995_MAXDOSELIMIT'
,p_item_sequence=>60
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
 p_id=>wwv_flow_imp.id(39545560017429823)
,p_name=>'P9995_MINDOSELIMIT'
,p_item_sequence=>70
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39542831990429771)
,p_tabular_form_region_id=>wwv_flow_imp.id(456900056454003689)
,p_validation_name=>'ValidateMinimumDose'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ERROR EXCEPTION;',
'BEGIN',
'  IF NVL(:MINDOSELIMIT, 0) < 100 THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P9995_ERROR'',',
'                                ''Please enter minimum dose limit, you cannot enter dose less than 100'');',
'    APEX_UTIL.SET_SESSION_STATE(''P9995_STOP'', ''Y'');',
'    RAISE ERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN ERROR THEN',
'    RAISE;',
'END;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Please enter minimum dose limit, you cannot enter dose less than 100'
,p_always_execute=>'Y'
,p_associated_column=>'MINDOSELIMIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39543252059429775)
,p_tabular_form_region_id=>wwv_flow_imp.id(456900056454003689)
,p_validation_name=>'ValidateMaximumDose'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_MAX_DOSE NUMBER;',
'  L_MIN_DOSE NUMBER;',
'  ERROR EXCEPTION;',
'BEGIN',
'IF :APEX$ROW_STATUS IN (''C'',''U'') THEN',
'  IF :MAXDOSELIMIT <= :MINDOSELIMIT THEN',
'     RETURN  ''Please enter max dose limit greater than min dose limit'';',
'  END IF;',
'  END IF; ',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_column=>'MINDOSELIMIT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39549129964429835)
,p_name=>'AddRow'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39541954907429766)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39549655677429835)
,p_event_id=>wwv_flow_imp.id(39549129964429835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("RAD_TRT_SITE").widget().interactiveGrid( "getActions" ).invoke( "selection-add-row" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39546845594429832)
,p_name=>'EditRow'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39541544022429766)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39547361369429834)
,p_event_id=>wwv_flow_imp.id(39546845594429832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region( "RAD_TRT_SITE" ).widget().interactiveGrid( "getActions" ).set("edit", true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39547733124429834)
,p_name=>'Save'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39540728749429764)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39548279908429834)
,p_event_id=>wwv_flow_imp.id(39547733124429834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("RAD_TRT_SITE").widget().interactiveGrid("getActions").invoke("save");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39548773342429835)
,p_event_id=>wwv_flow_imp.id(39547733124429834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit();'
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P9995_STOP = ''Y'' THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'END;',
''))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39550031226429835)
,p_name=>'Delete'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39542352257429767)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39550513045429835)
,p_event_id=>wwv_flow_imp.id(39550031226429835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you sure you want to delete Radiation Site? If yes press save button to proceed'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39551074660429835)
,p_event_id=>wwv_flow_imp.id(39550031226429835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("RAD_TRT_SITE").widget().interactiveGrid("getActions").invoke("selection-delete");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39551438183429836)
,p_name=>'ValidateMaximumDose'
,p_event_sequence=>70
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(456900056454003689)
,p_triggering_element=>'MAXDOSELIMIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39557762196493101)
,p_event_id=>wwv_flow_imp.id(39551438183429836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''MAXDOSELIMIT'') < $v(''MINDOSELIMIT'')) {',
'    apex.message.alert(''please enter max greater then min'');',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39552416967429837)
,p_event_id=>wwv_flow_imp.id(39551438183429836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9995_MAXDOSELIMIT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :MAXDOSELIMIT;'
,p_attribute_07=>'MAXDOSELIMIT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39551918789429837)
,p_event_id=>wwv_flow_imp.id(39551438183429836)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_MAX_DOSE NUMBER;',
'  L_MIN_DOSE NUMBER;',
'  ERROR EXCEPTION;',
'BEGIN',
'IF :APEX$ROW_STATUS IN (''C'',''U'') THEN',
'  IF :MAXDOSELIMIT <= :MINDOSELIMIT THEN',
'     RETURN  ''Please enter max dose limit greater than min dose limit'';',
'  END IF;',
'  END IF; ',
'END;',
''))
,p_attribute_02=>'MINDOSELIMIT,MAXDOSELIMIT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39545927778429824)
,p_name=>'CloseMenu'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39546468729429828)
,p_event_id=>wwv_flow_imp.id(39545927778429824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(window).on("theme42ready", function () { if ($("body").hasClass("js-navExpanded")) { $("#t_Button_navControl").click(); } });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39552895225429838)
,p_name=>'Set'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(456900056454003689)
,p_triggering_element=>'MAXDOSELIMIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39553399338429838)
,p_event_id=>wwv_flow_imp.id(39552895225429838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9995_MAXDOSELIMIT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :MAXDOSELIMIT;'
,p_attribute_07=>'MAXDOSELIMIT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39553706446429838)
,p_name=>'SetMinDose'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(456900056454003689)
,p_triggering_element=>'MINDOSELIMIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39554211164429842)
,p_event_id=>wwv_flow_imp.id(39553706446429838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9995_MINDOSELIMIT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :MINDOSELIMIT;'
,p_attribute_07=>'MINDOSELIMIT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39543954702429778)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(456900056454003689)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ValidateMaxDose'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  IF :P9995_MAXDOSELIMIT < :P9995_MINDOSELIMIT THEN',
'  ',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Max dose limit must be greater than min dose limit, refresh page and try again'',',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ELSE',
'    NULL;',
'  END IF;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>39543954702429778
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39543567603429776)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(456900056454003689)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Site -- DML'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_SITE_ID RADIATION.SITE.SITE_ID%TYPE;',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'    ',
'      /*IF NVL(:MAXDOSELIMIT, 0) <= NVL(:MINDOSELIMIT, 0) THEN',
'        apex_util.set_session_state(''P9995_ERROR'',',
'                                    ''Max dose limit must be greater than min dose limit, refresh page and try again'');',
'        RAISE EX_CUSTOM;',
'      end if;*/',
'    ',
'      --IF NVL(:MAXDOSELIMIT, 0) <= NVL(:MINDOSELIMIT, 0) THEN',
'    --   IF :P9995_MAXDOSELIMIT <= :P9995_MINDOSELIMIT THEN',
'      ',
'    --     APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Max dose limit must be greater than min dose limit, refresh page and try again'',',
'    --                          P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        /*APEX_UTIL.SET_SESSION_STATE(''P9995_ERROR'',',
'        ''Max dose limit must be greater than min dose limit, refresh page and try again'');*/',
'        /*  RAISE_APPLICATION_ERROR(-20007,',
'        ''Max dose limit greater than min dose limit, refresh page and try again'');*/',
'     -- END IF;',
'      BEGIN',
'        SELECT LPAD(NVL(MAX(SITE_ID),0)+1,7,0)',
'          INTO L_SITE_ID',
'          FROM RADIATION.SITE',
'         WHERE LENGTH(SITE_ID) = 7;',
'      END;',
'      INSERT INTO RADIATION.SITE',
'        (SITE_ID,',
'         DESCRIPTION,',
'         ACTIVE,',
'         NECK_POSITION,',
'         CONTOUR_REQUIRED,',
'         MIN_DOSE_LIMIT,',
'         MAX_DOSE_LIMIT,',
'         PARENT_SITE_ID)',
'      VALUES',
'        (L_SITE_ID,',
'         :RADIOTHERAPYSITENAME,',
'         :ACTIVE,',
'         :NECKDOSELIMIT,',
'         :CONTOUR,',
'         :MINDOSELIMIT,',
'         :MAXDOSELIMIT,',
'         :PARENTSITEID);',
'    ',
'    WHEN ''U'' THEN',
'    ',
'      /* IF NVL(:MAXDOSELIMIT, 0) <= NVL(:MINDOSELIMIT, 0) THEN',
'           apex_util.set_session_state(''P9995_ERROR'',''Max dose limit must be greater than min dose limit, refresh page and try again'');',
'           RAISE EX_CUSTOM;',
'      end if;*/',
'     -- IF NVL(:MAXDOSELIMIT, 0) <= NVL(:MINDOSELIMIT, 0) THEN',
'    --   IF :P9995_MAXDOSELIMIT <= :P9995_MINDOSELIMIT THEN',
'    --     APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Max dose limit must be greater than min dose limit, refresh page and try again'',',
'    --                          P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        /*APEX_UTIL.SET_SESSION_STATE(''P9995_ERROR'',',
'        ''Max dose limit must be greater than min dose limit, refresh page and try again'');*/',
'        /*  RAISE_APPLICATION_ERROR(-20007,',
'        ''Max dose limit greater than min dose limit, refresh page and try again'');*/',
'     -- END IF;',
'      -----------',
'      -- Update',
'      -----------',
'      UPDATE RADIATION.SITE',
'         SET DESCRIPTION      = :RADIOTHERAPYSITENAME,',
'             ACTIVE           = :ACTIVE,',
'             NECK_POSITION    = :NECKDOSELIMIT,',
'             CONTOUR_REQUIRED = :CONTOUR,',
'             MIN_DOSE_LIMIT   = :MINDOSELIMIT,',
'             MAX_DOSE_LIMIT   = :MAXDOSELIMIT,',
'             PARENT_SITE_ID   = :PARENTSITEID',
'       WHERE SITE_ID = :SITEID;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      DELETE FROM RADIATION.SITE WHERE SITE_ID = :SITEID;',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => :P9995_ERROR,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    APEX_UTIL.SET_SESSION_STATE(''P9995_stop'', ''Y'');',
'    RAISE;',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    APEX_UTIL.SET_SESSION_STATE(''P9995_stop'', ''Y'');',
'    RAISE;',
'  ',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_only_for_changed_rows=>'N'
,p_internal_uid=>39543567603429776
);
wwv_flow_imp.component_end;
end;
/

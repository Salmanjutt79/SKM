prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Library Memebership'
,p_alias=>'LIBRARY-MEMEBERSHIP'
,p_step_title=>'Library Memebership'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showErrorAndAutoDismiss() {',
'  setTimeout(function() {',
'    // Clear all page messages',
'    apex.message.clearErrors();',
'  }, 5500);',
'};'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Button[data-action="selection-delete"], ',
'.a-Button[data-action="selection-delete"]{',
'    background-color: #F32013;',
'    color: #ffffff;',
'    font-weight: inherit;',
'}',
'',
'.VAT_AMBER{',
'    background-color: rgb(100, 75, 0) !important;',
'    color:#000 !important;',
'}',
'',
'/* CSS for making the Save button green */',
'.a-Button[data-action="save"]{',
'    background-color: green;',
'    border-color: green;',
'    color: white;',
'}',
'.a-Button[data-action="save"]{',
'    background-color: green;',
'    border-color: green;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MOHTASHAMBILAL'
,p_last_upd_yyyymmddhh24miss=>'20250128191734'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289742729590105732)
,p_plug_name=>'Form Heading Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Library Memebership</b></h3></center>',
'</span>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304584917336340332)
,p_plug_name=>'Bio Data'
,p_parent_plug_id=>wwv_flow_imp.id(289742729590105732)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECt M.MEMBERSHIP_NO,',
'       M.MEMBERSHIP,',
'       M.MRNO,',
'       M.NAME,',
'       M.DESIGNATION,',
'       M.FATHER_NAME,',
'       M.ADDRESS_HOME,',
'       M.PHONE,',
'       M.MOBILE,',
'       M.EMAIL,',
'       M.MEMBERSHIP_FEE,',
'       M.CNIC,',
'       M.ADDRESS_ORG_INST,',
'       M.APPLICATION_DATE,',
'       M.MEMBERSHIP_GRANT_DATE,',
'       M.MEMBERSHIP_EXPIRY_DATE,',
'       M.SIGNED_BY,',
'       M.SIGNED_DATE,',
'       M.ACTIVE,',
'       M.REMARKS,',
'       M.MEMBERSHIP_CANCELLED_BY,',
'       M.MEMBERSHIP_CANCELLED_DATE,',
'       M.ORGANIZATION_ID,',
'       M.LOCATION_ID,',
'       M.ORDER_LOCATION_ID',
'FROM SKM_LIBRARY.MEMBERSHIP M',
'WHERE M.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'  AND M.LOCATION_ID     = :GV_LOCATION_ID',
'  AND M.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311273311097908115)
,p_plug_name=>'Upper Right Pane 03'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311273628328908118)
,p_plug_name=>'Membership Location'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311273701417908119)
,p_plug_name=>'Membership Location IG'
,p_parent_plug_id=>wwv_flow_imp.id(311273628328908118)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ML.MEMBERSHIP_NO,',
'       ML.ORGANIZATION_ID,',
'       ML.LOCATION_ID,',
'       ML.ORDER_LOCATION_ID,',
'       ML.ACTIVE',
'FROM SKM_LIBRARY.MEMBERSHIP_LOCATIONS ML',
'WHERE ML.MEMBERSHIP_NO = :P13_MEMBERSHIP_NO;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13_MEMBERSHIP_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Membership Location IG'
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
 p_id=>wwv_flow_imp.id(311273952426908121)
,p_name=>'MEMBERSHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEMBERSHIP_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Membership No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311274050138908122)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311274185152908123)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>3
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT L.DESCRIPTION, L.LOCATION_ID',
'FROM DEFINITIONS.LOCATION L',
'WHERE L.ORGANIZATION_ID =  :GV_ORGANIZATION_ID;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311274243173908124)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Order Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>3
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT L.DESCRIPTION, L.ORDER_LOCATION_ID',
'FROM DEFINITIONS.ORDER_LOCATION L',
'WHERE L.LOCATION_ID = :LOCATION_ID;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'LOCATION_ID'
,p_ajax_items_to_submit=>'LOCATION_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311274349400908125)
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
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(311273851633908120)
,p_internal_uid=>311273851633908120
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>255
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'let $ = apex.jQuery,',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'toolbarGroup.controls.push({type: "BUTTON",',
'action: "selection-delete",',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'iconBeforeLabel: true,',
'hot: false',
'});',
'// manipulate the buttons',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'addrowAction.iconBeforeLabel = true;',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'saveAction.hot = true;',
'',
'//store the config',
'config.toolbarData = toolbarData;',
'return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(314791527280379948)
,p_interactive_grid_id=>wwv_flow_imp.id(311273851633908120)
,p_static_id=>'3147916'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(314791780514379949)
,p_report_id=>wwv_flow_imp.id(314791527280379948)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314792283697379950)
,p_view_id=>wwv_flow_imp.id(314791780514379949)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(311273952426908121)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314793121187379953)
,p_view_id=>wwv_flow_imp.id(314791780514379949)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(311274050138908122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314794023198379955)
,p_view_id=>wwv_flow_imp.id(314791780514379949)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(311274185152908123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168.25900000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314794914872379958)
,p_view_id=>wwv_flow_imp.id(314791780514379949)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(311274243173908124)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>235.236
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314795843003379963)
,p_view_id=>wwv_flow_imp.id(314791780514379949)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(311274349400908125)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79.518
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311274740658908129)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>90
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311275425396908136)
,p_plug_name=>'Cancellation History'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(311275581789908137)
,p_plug_name=>'Cancellation History IG'
,p_parent_plug_id=>wwv_flow_imp.id(311275425396908136)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.MRNO,',
'       C.MEMBERSHIP_NO,',
'       C.SERIAL_NO,',
'       C.MEMBERSHIP_CANCELLED_BY,',
'       (Select NAME ',
'        from HRD.VU_INFORMATION ',
'        WHERE mrno = C.MEMBERSHIP_CANCELLED_BY) CANCELLED_BY_NAME,',
'       C.MEMBERSHIP_CANCELLED_DATE,',
'       C.ORGANIZATION_ID,',
'       C.LOCATION_ID,',
'       C.ORDER_LOCATION_ID',
'FROM SKM_LIBRARY.MEMBERSHIP_CANCELLATION_HIST C',
'WHERE C.MRNO = :P13_MRNO',
' AND C.MEMBERSHIP_NO = :P13_MEMBERSHIP_NO',
' AND C.ORGANIZATION_ID = :GV_ORGANIZATION_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13_MRNO,P13_MEMBERSHIP_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cancellation History IG'
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
 p_id=>wwv_flow_imp.id(311275737398908139)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mrno'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311275878305908140)
,p_name=>'MEMBERSHIP_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEMBERSHIP_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Membership No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>7
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311275990178908141)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Serial No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311276048804908142)
,p_name=>'MEMBERSHIP_CANCELLED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEMBERSHIP_CANCELLED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Membership Cancelled By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311276158675908143)
,p_name=>'MEMBERSHIP_CANCELLED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEMBERSHIP_CANCELLED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Membership Cancelled Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MM-YYYY'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311276285475908144)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311276369069908145)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311276475860908146)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>3
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(311276889439908150)
,p_name=>'CANCELLED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANCELLED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Membership Cancelled By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(311275677320908138)
,p_internal_uid=>311275677320908138
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>255
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'let $ = apex.jQuery,',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'toolbarGroup.controls.push({type: "BUTTON",',
'action: "selection-delete",',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'iconBeforeLabel: true,',
'hot: false',
'});',
'// manipulate the buttons',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'addrowAction.iconBeforeLabel = true;',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'saveAction.hot = true;',
'',
'//store the config',
'config.toolbarData = toolbarData;',
'return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(314905058630595491)
,p_interactive_grid_id=>wwv_flow_imp.id(311275677320908138)
,p_static_id=>'3149051'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(314905216318595493)
,p_report_id=>wwv_flow_imp.id(314905058630595491)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3089050006002)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(311276889439908150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314905763382595495)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(311275737398908139)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314906619348595498)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(311275878305908140)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314907501581595501)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(311275990178908141)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.75899999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314908470012595503)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(311276048804908142)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314909330208595506)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(311276158675908143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>207.54500000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314910238860595511)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(311276285475908144)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314911163791595514)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(311276369069908145)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314912017418595517)
,p_view_id=>wwv_flow_imp.id(314905216318595493)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(311276475860908146)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312230676764742810)
,p_plug_name=>'Upper Right Pane 01'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312230730004742811)
,p_plug_name=>'Upper Left Pane'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312230801239742812)
,p_plug_name=>'Lower Left Region'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312230917498742813)
,p_plug_name=>'Upper Right Pane 02'
,p_parent_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312231203762742816)
,p_plug_name=>'Non DB Block Items'
,p_parent_plug_id=>wwv_flow_imp.id(289742729590105732)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(311273595812908117)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_button_name=>'Sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign Membership'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(311274841906908130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(311274740658908129)
,p_button_name=>'BTN_SAVE'
,p_button_static_id=>'BTN_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(311274930758908131)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(311274740658908129)
,p_button_name=>'BTN_CLEAR'
,p_button_static_id=>'BTN_CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(311275040448908132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(311274740658908129)
,p_button_name=>'BTN_REPORT'
,p_button_static_id=>'BTN_REPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-table'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(311275152152908133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(311274740658908129)
,p_button_name=>'BTN_EXIT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585180714340334)
,p_name=>'P13_MEMBERSHIP_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312230676764742810)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Membership No :'
,p_source=>'MEMBERSHIP_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>7
,p_tag_attributes=>'readonly'
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585297226340335)
,p_name=>'P13_MEMBERSHIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(312230676764742810)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Membership :'
,p_source=>'MEMBERSHIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Internal;I,External;E'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585376637340336)
,p_name=>'P13_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(312230730004742811)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'MR No :'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.MRNO, ',
'       P.MRNO MR_NO,',
'       P.FIRST_NAME,',
'       P.MIDDLE_NAME,',
'       P.LAST_NAME,',
'       D.DESCRIPTION DEPT,',
'       G.DESCRIPTION DESIGNATION',
'FROM REGISTRATION.PATIENT P, HRD.INFORMATION I, DEFINITIONS.DEPARTMENT D,',
'DEFINITIONS.DESIGNATION G',
'WHERE P.MRNO = I.MRNO',
'AND I.DEPARTMENT_ID = D.DEPARTMENT_ID (+)',
'AND I.DESIGNATION_ID = G.DESIGNATION_ID (+)',
'AND I.ACTIVE = ''Y''',
'AND I.joining_date IS NOT NULL',
'AND P.MRNO NOT LIKE''%DUM%''',
'AND P.MRNO NOT LIKE''%EXT%''',
'UNION',
'SELECT P.MRNO,',
'       P.MRNO MR_NO,',
'       P.FIRST_NAME,',
'       P.MIDDLE_NAME,',
'       P.LAST_NAME,',
'       NULL DEPT,',
'       HRD.F_GET_DESIGNATION_ID(P.MRNO, SYSDATE) DESIGNATION',
'',
'  FROM REGISTRATION.PATIENT P',
' WHERE P.MRNO IN',
'       (SELECT M.MRNO FROM SKM_LIBRARY.MEMBERSHIP M WHERE M.ACTIVE = ''Y'')',
'   AND P.PATIENT_TYPE_ID IN (SELECT SP.FIXED_VALUE',
'                               FROM ICU.SCORE_PARAMETERS SP',
'                              WHERE SP.SCORE_CATEGORY_ID = ''STD''',
'                                AND SP.ACTIVE = ''Y'')',
'   AND P.CLIENT_ID IN (SELECT SP.FIXED_VALUE',
'                         FROM ICU.SCORE_PARAMETERS SP',
'                        WHERE SP.SCORE_CATEGORY_ID = ''CLN''',
'                          AND SP.ACTIVE = ''Y'')',
'',
' ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>14
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'800'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585430273340337)
,p_name=>'P13_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(312230730004742811)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Name :'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585539124340338)
,p_name=>'P13_DESIGNATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(312230676764742810)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Designation :'
,p_source=>'DESIGNATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585631886340339)
,p_name=>'P13_FATHER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(312230730004742811)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Father Name :'
,p_source=>'FATHER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585715278340340)
,p_name=>'P13_ADDRESS_HOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(312230676764742810)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Home Address :'
,p_source=>'ADDRESS_HOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>250
,p_cHeight=>2
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585827513340341)
,p_name=>'P13_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(312230676764742810)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Phone :'
,p_source=>'PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304585934245340342)
,p_name=>'P13_MOBILE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(312230676764742810)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Mobile :'
,p_source=>'MOBILE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304586014967340343)
,p_name=>'P13_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(312230730004742811)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Email :'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304586116915340344)
,p_name=>'P13_MEMBERSHIP_FEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Fee :'
,p_source=>'MEMBERSHIP_FEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304586201934340345)
,p_name=>'P13_CNIC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(312230730004742811)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'CNIC :'
,p_source=>'CNIC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304586325866340346)
,p_name=>'P13_ADDRESS_ORG_INST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Organization</br>institute Address :'
,p_source=>'ADDRESS_ORG_INST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304586435720340347)
,p_name=>'P13_APPLICATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312230730004742811)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Application Date :'
,p_source=>'APPLICATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304586574985340348)
,p_name=>'P13_MEMBERSHIP_GRANT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Grant Date :'
,p_format_mask=>'DD-MM-YYYY'
,p_source=>'MEMBERSHIP_GRANT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
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
 p_id=>wwv_flow_imp.id(304586612483340349)
,p_name=>'P13_MEMBERSHIP_EXPIRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Expiry Date :'
,p_format_mask=>'DD-MM-YYYY'
,p_source=>'MEMBERSHIP_EXPIRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
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
 p_id=>wwv_flow_imp.id(304586732819340350)
,p_name=>'P13_SIGNED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'SIGNED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(311273191838908113)
,p_name=>'P13_SIGNED_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'SIGNED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(311273219587908114)
,p_name=>'P13_PICTURES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312230917498742813)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(224555229740711188)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT HP.PICTURES AS PICTURES',
'FROM PICTURES.HR_PICTURES HP',
'WHERE HP.MRNO = :P13_MRNO;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312229721993742801)
,p_name=>'P13_SIGNED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Signed Date :'
,p_source=>'SIGNED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312229840047742802)
,p_name=>'P13_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(311273311097908115)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_item_default=>'N'
,p_prompt=>'<span style="color:white">.</span>'
,p_pre_element_text=>'<label><b>Active :&nbsp;&nbsp;&nbsp;</b></label>'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312229970374742803)
,p_name=>'P13_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_prompt=>'Remarks :'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312230086669742804)
,p_name=>'P13_MEMBERSHIP_CANCELLED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'MEMBERSHIP_CANCELLED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312230152105742805)
,p_name=>'P13_MEMBERSHIP_CANCELLED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'MEMBERSHIP_CANCELLED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312230261481742806)
,p_name=>'P13_ORGANIZATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'ORGANIZATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312230316704742807)
,p_name=>'P13_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312230428088742808)
,p_name=>'P13_ORDER_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(312230801239742812)
,p_item_source_plug_id=>wwv_flow_imp.id(304584917336340332)
,p_source=>'ORDER_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312231366450742817)
,p_name=>'P13_ERROR_TXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312231203762742816)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312231087852742814)
,p_name=>'DA_POPULATE_P13_MRNO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312231137082742815)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Populate MRNO'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT      VARCHAR2(600);',
'  V_STOP            VARCHAR2(1) := ''N'';',
'  V_PATIENT_MRNO    VARCHAR2(100);',
'BEGIN',
'',
'IF :P13_MRNO IS NULL ',
'THEN',
'    :P13_ERROR_TXT := '''';',
'    :P13_ERROR_TXT := ''MRNO not entered. Kindly enter MRNO.'';',
'ELSE',
'    HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                 P_DISP_MRNO  => :P13_MRNO,',
'                 P_MRNO       => :P13_MRNO,',
'                 P_ALERT_TEXT => V_ALERT_TEXT,',
'                 P_STOP       => V_STOP);',
'                   ',
'    IF V_STOP = ''Y'' ',
'    THEN',
'        :P3_ERROR_TXT := V_ALERT_TEXT;',
'    END IF;',
'',
'END IF;',
'    ',
'END;'))
,p_attribute_02=>'P13_MRNO'
,p_attribute_03=>'P13_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312231424929742818)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Validate MRNO'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P13_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P13_ERROR_TXT'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312232123092742825)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Initialize SYS Context'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312231583463742819)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Check MRNO Status'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ALERT_TEXT VARCHAR2(4000);',
'  V_STOP VARCHAR(1);',
'BEGIN',
'    ',
'    BEGIN',
'		  SELECT COUNT(*)',
'		    INTO V_COUNT',
'		   FROM (SELECT I.MRNO',
'		           FROM HRD.VU_INFORMATION I',
'		          WHERE I.MRNO = :P13_MRNO',
'		            AND I.ACTIVE = ''N''',
'		            AND I.JOINING_DATE IS NOT NULL',
'		         UNION',
'		         SELECT P.MRNO',
'		           FROM REGISTRATION.PATIENT P',
'		          WHERE P.MRNO = :P13_MRNO',
'		            AND P.ACTIVE=''N''',
'		            AND P.PATIENT_TYPE_ID IN',
'		                (SELECT SP.FIXED_VALUE',
'		                   FROM ICU.SCORE_PARAMETERS SP',
'		                  WHERE SP.SCORE_CATEGORY_ID = ''STD''',
'		                  AND SP.ACTIVE=''Y''));	            ',
'      IF V_COUNT > 0 ',
'      THEN',
'          :P13_ERROR_TXT := '''';',
'          :P13_ERROR_TXT := ''This employee is inactive.'';',
'      END IF;',
'    END;',
'    ',
'    BEGIN',
'        SELECT  COUNT(*)',
'          INTO  V_COUNT',
'          FROM  SKM_LIBRARY.MEMBERSHIP',
'          WHERE MRNO = :P13_MRNO',
'          AND   ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'          AND   ACTIVE = ''Y'';',
'        IF V_COUNT > 0',
'         THEN',
'             :P13_ERROR_TXT := '''';',
'             :P13_ERROR_TXT := ''This employee is already member of medical library.'';',
'        ELSIF V_COUNT = 0 ',
'        THEN',
'        --    PAPULATE_EMP_DETAIL;',
'           SELECT COUNT(*)',
'            INTO V_COUNT',
'            FROM SKM_LIBRARY.MEMBERSHIP',
'           WHERE MRNO = :P13_MRNO',
'            AND  ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'            AND  MEMBERSHIP_CANCELLED_BY IS NOT NULL;',
'          IF V_COUNT > 0 ',
'          THEN',
'              :P13_ERROR_TXT := '''';',
'              :P13_ERROR_TXT := ''This employee membership has been cancelled.'';',
'          ELSE',
'              NULL;',
'          END IF;',
'         END IF;',
'    END;',
'END;'))
,p_attribute_02=>'P13_MRNO'
,p_attribute_03=>'P13_ERROR_TXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312231761869742821)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Validate MRNO Statuses'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P13_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'showErrorAndAutoDismiss();',
'apex.da.cancel();'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P13_ERROR_TXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312231869350742822)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Populate MRNO Details'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_ALERT_TEXT VARCHAR2(4000);',
'  V_STOP VARCHAR(1);',
'BEGIN',
'    ',
'    BEGIN',
'        SELECT  COUNT(*)',
'          INTO  V_COUNT',
'          FROM  SKM_LIBRARY.MEMBERSHIP',
'          WHERE MRNO = :P13_MRNO',
'          AND   ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'          AND   ACTIVE = ''Y'';',
'        IF V_COUNT = 0 THEN',
'          BEGIN',
'                SELECT --MRNO, ',
'                       NAME, ',
'                       DESIGNATION, ',
'                       FATHER_NAME,',
'                       NIC, ',
'                       EMAIL',
'                  INTO --:P13_MRNO,',
'                       :P13_NAME,',
'                       :P13_DESIGNATION,',
'                       :P13_FATHER_NAME,',
'                       :P13_CNIC,',
'                       :P13_EMAIL',
'                  FROM (SELECT --I.MRNO,',
'                               I.NAME,',
'                               I.DESIGNATION,',
'                               I.FATHER_NAME,',
'                               I.NIC,',
'                               I.EMAIL',
'                          FROM HRD.VU_INFORMATION I',
'                         WHERE I.ACTIVE = ''Y''',
'                           AND I.JOINING_DATE IS NOT NULL',
'                           AND I.MRNO = :P13_MRNO',
'                           AND I.EMPLOYEE = ''Y''',
'                        UNION',
'                        SELECT --P.MRNO,',
'                               P.NAME,',
'                               HRD.F_GET_DESIGNATION_ID(P.MRNO, SYSDATE) DESIGNATION,',
'                               P.FATHER_NAME,',
'                               P.NIC,',
'                               NULL EMAIL',
'                          FROM REGISTRATION.PATIENT P',
'                         WHERE P.MRNO = :P13_MRNO',
'                           AND P.PATIENT_TYPE_ID IN',
'                               (SELECT SP.FIXED_VALUE',
'                                  FROM ICU.SCORE_PARAMETERS SP',
'                                 WHERE SP.SCORE_CATEGORY_ID = ''STD''',
'                                 AND SP.ACTIVE=''Y'')',
'                           AND P.CLIENT_ID IN',
'                               (SELECT SP.FIXED_VALUE',
'                                  FROM ICU.SCORE_PARAMETERS SP',
'                                 WHERE SP.SCORE_CATEGORY_ID = ''CLN''',
'                                 AND SP.ACTIVE = ''Y'')',
'                           ',
'                         ORDER BY 1);',
'            END;',
'        ELSE',
'            NULL;',
'        END IF;',
'        ',
'      EXCEPTION',
'      WHEN OTHERS THEN NULL;',
'    END;',
'',
'    BEGIN',
'      SELECT P.PHONE_NUMBER, ',
'             P.PERMANANT_ADDRESS',
'        INTO :P13_PHONE, ',
'             :P13_ADDRESS_HOME',
'        FROM REGISTRATION.PATIENT P',
'       WHERE P.MRNO = :P13_MRNO;',
'    EXCEPTION',
'      WHEN OTHERS THEN NULL;',
'    END;',
'    ',
'    --Used in PRE-INSERT of form. Must be used in Process of saving Page.',
'    /*BEGIN ',
'        IF :P13_MEMBERSHIP_NO IS NULL',
'        THEN',
'            BEGIN',
'                SELECT TO_CHAR(SYSDATE,''YY'')||LPAD(NVL(MAX(SUBSTR(M.MEMBERSHIP_NO,5)),0)+1,5,''0'') "MEMBER ID"',
'                INTO :P13_MEMBERSHIP_NO',
'                FROM SKM_LIBRARY.MEMBERSHIP M',
'                WHERE SUBSTR(M.MEMBERSHIP_NO,1,2) = TO_CHAR(SYSDATE,''YY'')',
'                  AND M.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'            END;',
'        END IF;',
'',
'        EXCEPTION ',
'            WHEN OTHERS THEN NULL;',
'    END;*/',
'',
'    BEGIN',
'        SELECT NAME ',
'          INTO :P13_SIGNED_BY_NAME',
'          FROM HRD.VU_INFORMATION ',
'         WHERE MRNO = :P13_SIGNED_BY;',
'',
'        IF :P13_MRNO IS NOT NULL AND :P13_NAME IS NULL',
'        THEN',
'            :P13_NAME := HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => :P13_MRNO);',
'        END IF;	',
'',
'        EXCEPTION ',
'        WHEN OTHERS THEN NULL;',
'    END;',
'END;'))
,p_attribute_02=>'P13_MRNO'
,p_attribute_03=>'P13_NAME,P13_DESIGNATION,P13_FATHER_NAME,P13_CNIC,P13_EMAIL,P13_PHONE,P13_ADDRESS_HOME,P13_MEMBERSHIP_NO,P13_SIGNED_BY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314976661734680705)
,p_event_id=>wwv_flow_imp.id(312231087852742814)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Populate Active Check'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	V_STATUS VARCHAR2(10);',
'	V_RECORD NUMBER;',
'	V_MRNO VARCHAR2(14);',
'BEGIN',
' 	 V_STATUS := SKM_LIBRARY.PKG_S21FRM00006.IS_MEMBER_ACTIVE(:P13_MRNO);',
'      ',
'	 IF V_STATUS = ''Y'' ',
'     THEN',
'	 	:P13_ACTIVE := ''N'';',
'	 ElSIF  V_STATUS = ''N''',
'     THEN',
'	 	:P13_ACTIVE := ''Y'';',
'   END IF;',
'END;',
'',
'		',
'		'))
,p_attribute_02=>'P13_MRNO'
,p_attribute_03=>'P13_ACTIVE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(311275268196908134)
,p_name=>'DA_CLEAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(311274930758908131)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(311275395930908135)
,p_event_id=>wwv_flow_imp.id(311275268196908134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_MEMBERSHIP_NO,P13_ADDRESS_ORG_INST,P13_APPLICATION_DATE,P13_MEMBERSHIP_GRANT_DATE,P13_MEMBERSHIP_EXPIRY_DATE,P13_PICTURES,P13_ERROR_TXT,P13_MEMBERSHIP,P13_MRNO,P13_MEMBERSHIP_FEE,P13_NAME,P13_REMARKS,P13_DESIGNATION,P13_FATHER_NAME,P13_SIGNED_DAT'
||'E,P13_PHONE,P13_EMAIL,P13_SIGNED_BY_NAME,P13_MOBILE,P13_CNIC,P13_ADDRESS_HOME,P13_SIGNED_BY'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314976283325680701)
,p_event_id=>wwv_flow_imp.id(311275268196908134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(311273701417908119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314976336713680702)
,p_event_id=>wwv_flow_imp.id(311275268196908134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(311275581789908137)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314976890923680707)
,p_event_id=>wwv_flow_imp.id(311275268196908134)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set Value Of Active Check'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P13_ACTIVE'', ''N'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314976408781680703)
,p_name=>'DA_ON_PAGE_LOAD'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314976534051680704)
,p_event_id=>wwv_flow_imp.id(314976408781680703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Disable Active Check'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P13_ACTIVE").disabled = true;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314976936608680708)
,p_name=>'DA_OPEN_REPORT'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(311275040448908132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314977116345680710)
,p_event_id=>wwv_flow_imp.id(314976936608680708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Initialize SYS Context'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    HIS.SET_CONTEXT(''USER_MRNO'',            :GV_USER_MRNO);',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314977239641680711)
,p_event_id=>wwv_flow_imp.id(314976936608680708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'',
'let paramList = {',
'    "P_MEMBERSHIP_NO": $v(''P13_MEMBERSHIP_NO'')',
'};',
'',
'/*apex.message.alert($v(''P15_FROM_DATE'') + '' '' + $v(''P15_TO_DATE'') + '' '' + $v(''P15_LOCATION_ID'') + '' '' +',
'    $v(''P15_ORDER_LOCATION_ID'') + '' '' + $v(''P15_QC_LEVEL_ID'') + '' '' + $v(''P15_POCT_NAME_ID'') + '' '' +',
'    $v(''P15_POCT_DEVICE_ID'') + '' '' + $v(''P15_QC_STATUS'') + '' '' + $v(''P15_EMP_CODE'')',
');*/',
'',
'if ($v(''P13_MEMBERSHIP'') == ''E'') {',
'    let object = {',
'        "OBJECTCODE": ''S21REP00005'',',
'        "METHOD": ''S3'',//Reference is in Help',
'        "PARAMLIST": paramList',
'    };',
'',
'    objectList.push(object);',
'',
'    // Change End',
'    return objectList;',
'}',
'else{',
'    $s(''P13_ERROR_TXT'', '''');',
'    $s(''P13_ERROR_TXT'', ''This report is only for external members of medical library.'');',
'    apex.message.showErrors([{type: "error",',
'                          location: "page",',
'                           message: ($v(''P13_ERROR_TXT'')),',
'                           unsafe: false',
'                        }]);',
'    showErrorAndAutoDismiss();',
'    apex.da.cancel();',
'};'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312232258758742826)
,p_name=>'DA_SIGN'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(311273595812908117)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312232322736742827)
,p_event_id=>wwv_flow_imp.id(312232258758742826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'HO_SIGN'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(311274637646908128)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(311273701417908119)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Membership Location IG - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>311274637646908128
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(311276746277908149)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(311275581789908137)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Cancellation History IG - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>311276746277908149
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(312232475976742828)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process to Sign Record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	:P13_SIGNED_BY      := :GV_USER_MRNO;',
'	:P13_SIGNED_BY_NAME := :GV_FULL_NAME;',
'	:P13_SIGNED_DATE := SYSDATE;',
'',
'    IF :P13_MEMBERSHIP_NO IS NULL ',
'    THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Cannot sign any empty Record...!!!'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'        RETURN;',
'    ELSE',
'       UPDATE SKM_LIBRARY.MEMBERSHIP M',
'        SET M.SIGNED_BY = :GV_USER_MRNO,',
'            M.SIGNED_DATE = SYSDATE',
'        WHERE M.MEMBERSHIP_NO = :P13_MEMBERSHIP_NO',
'          AND M.MRNO = :P13_MRNO;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'HO_SIGN'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record Signed Successfully...'
,p_internal_uid=>312232475976742828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(304585014437340333)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Library Memebership'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECt M.MEMBERSHIP_NO,',
'       M.MEMBERSHIP,',
'       M.MRNO,',
'       M.NAME,',
'       M.DESIGNATION,',
'       M.FATHER_NAME,',
'       M.ADDRESS_HOME,',
'       M.PHONE,',
'       M.MOBILE,',
'       M.EMAIL,',
'       M.MEMBERSHIP_FEE,',
'       M.CNIC,',
'       M.ADDRESS_ORG_INST,',
'       M.APPLICATION_DATE,',
'       M.MEMBERSHIP_GRANT_DATE,',
'       M.MEMBERSHIP_EXPIRY_DATE,',
'       M.SIGNED_BY,',
'       M.SIGNED_DATE,',
'       M.ACTIVE,',
'       M.REMARKS,',
'       M.MEMBERSHIP_CANCELLED_BY,',
'       M.MEMBERSHIP_CANCELLED_DATE,',
'       M.ORGANIZATION_ID,',
'       M.LOCATION_ID,',
'       M.ORDER_LOCATION_ID',
'  INTO :P13_MEMBERSHIP_NO,',
'       :P13_MEMBERSHIP,',
'       :P13_MRNO,',
'       :P13_NAME,',
'       :P13_DESIGNATION,',
'       :P13_FATHER_NAME,',
'       :P13_ADDRESS_HOME,',
'       :P13_PHONE,',
'       :P13_MOBILE,',
'       :P13_EMAIL,',
'       :P13_MEMBERSHIP_FEE,',
'       :P13_CNIC,',
'       :P13_ADDRESS_ORG_INST,',
'       :P13_APPLICATION_DATE,',
'       :P13_MEMBERSHIP_GRANT_DATE,',
'       :P13_MEMBERSHIP_EXPIRY_DATE,',
'       :P13_SIGNED_BY,',
'       :P13_SIGNED_DATE,',
'       :P13_ACTIVE,',
'       :P13_REMARKS,',
'       :P13_MEMBERSHIP_CANCELLED_BY,',
'       :P13_MEMBERSHIP_CANCELLED_DATE,',
'       :P13_ORGANIZATION_ID,',
'       :P13_LOCATION_ID,',
'       :P13_ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.MEMBERSHIP M',
' WHERE M.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'   AND M.LOCATION_ID = :GV_LOCATION_ID',
'   AND M.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'   AND M.MRNO = :P13_MRNO;',
'',
'EXCEPTION',
'WHEN OTHERS THEN NULL;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>304585014437340333
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(312231980774742823)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize SYS Context'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>312231980774742823
);
wwv_flow_imp.component_end;
end;
/

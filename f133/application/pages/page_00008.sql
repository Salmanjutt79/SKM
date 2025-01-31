prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Book Information'
,p_alias=>'BOOK-INFORMATION'
,p_step_title=>'Book Information'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''BTN_SAVE'').innerHTML = ''<i class="fa fa-save"></i>&nbsp;&nbsp;<u>S</u>ave'';',
'document.getElementById(''BTN_QUERY'').innerHTML = ''<i class="fa fa-search"></i>&nbsp;&nbsp;<u>Q</u>uery'';',
'document.getElementById(''BTN_CLEAR'').innerHTML = ''<i class="fa fa-remove"></i>&nbsp;&nbsp;<u>C</u>lear'';',
'document.getElementById(''BTN_ACCESSION_LIST'').innerHTML = ''<i class="fa fa-list-alt"></i>&nbsp;&nbsp;Access<u>i</u>on List'';',
'document.getElementById(''BTN_EXIT'').innerHTML = ''<i class="fa fa-times-square-o"></i>&nbsp;&nbsp;E<u>x</u>it'';',
'',
'function addToSubjectIG(){',
'    apex.jQuery(''#BTN_ADD_SUBJECT'').trigger(''click'');',
'}',
'',
'function deleteFromSubjectIG(){',
'    apex.jQuery(''#BTN_DELETE_SUBJECT'').trigger(''click'');',
'}',
'',
'function deleteFromMaterialIG(){',
'    apex.jQuery(''#BTN_DELETE_MATERIAL'').trigger(''click'');',
'}',
'',
'function deleteFromAuthorIG(){',
'    apex.jQuery(''#BTN_DELETE_AUTHOR'').trigger(''click'');',
'}',
'deleteFromMaterialIG',
'',
'document.addEventListener(''keydown'', function (event) {',
'    if ((event.altKey && event.key === ''S'') || (event.altKey && event.key === ''s'')) {',
'        $("#BTN_SAVE").focus();',
'        var targetButton = apex.jQuery(''#BTN_SAVE'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    } else if ((event.altKey && event.key === ''Q'') || (event.altKey && event.key === ''q'')) {',
'        $("#BTN_QUERY").focus();',
'        var targetButton = apex.jQuery(''#BTN_QUERY'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    } else if ((event.altKey && event.key === ''C'') || (event.altKey && event.key === ''c'')) {',
'        $("#BTN_CLEAR").focus();',
'        var targetButton = apex.jQuery(''#BTN_CLEAR'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }        ',
'    } else if ((event.altKey && event.key === ''T'') || (event.altKey && event.key === ''t'')) {',
'        $("#BTN_QUERY").focus();',
'        var targetButton = apex.jQuery(''#BTN_QUERY'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    } else if ((event.altKey && event.key === ''I'') || (event.altKey && event.key === ''i'')) {',
'        $("#BTN_ACCESSION_LIST").focus();',
'        var targetButton = apex.jQuery(''#BTN_ACCESSION_LIST'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    } else if ((event.altKey && event.key === ''X'') || (event.altKey && event.key === ''x'')) {',
'        $("#BTN_EXIT").focus();',
'        var targetButton = apex.jQuery(''#BTN_EXIT'');',
'                        // Check if the button is enabled',
'        if (!targetButton.prop(''disabled'')) {',
'            targetButton.trigger(''click'');',
'        }',
'    }',
'});',
'',
'',
'function disableButtons(){',
'    $(''#BTN_SAVE'').prop(''disabled'', true);  // Disable the button',
'    $(''#BTN_CLEAR'').prop(''disabled'', true);  // Disable the button',
'    $(''#BTN_DELETE'').prop(''disabled'', true);  // Disable the button    ',
'    $(''#BTN_ACCESSION_LIST'').prop(''disabled'', true);  // Disable the button    ',
'}',
'',
'function enableButtons(){',
'    $(''#BTN_SAVE'').prop(''disabled'', false);  // Disable the button',
'    $(''#BTN_CLEAR'').prop(''disabled'', false);  // Disable the button',
'    $(''#BTN_DELETE'').prop(''disabled'', false);  // Disable the button    ',
'    $(''#BTN_ACCESSION_LIST'').prop(''disabled'', false);  // Disable the button    ',
'}'))
,p_javascript_code_onload=>'jsFormsBlock_pageReady();  // to show "Add Row" button at the botom of the interactive grid'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.a-Toolbar-radioGroup, .a-Toolbar-toggleButton {',
'display: none !important;   // To hide Edit button',
'}',
'.a-Toolbar-group {',
'    border-right-width: var(--a-toolbar-sep-border-width,0px);    // To hide separator of the button',
'}',
'',
'[data-action="save"]{',
'',
'    display:none !important;',
'',
'}',
' ',
'',
'/* #st_Donation .a-Button.a-Toolbar-item.js-actionButton.a-Button--hot[data-action="save"] {',
'    display: none !important;   // To hide Save button of the mentioned Interactive Grid with its static id/name',
'} */',
'',
'/* #st_RequestForwardedTo .a-MediaBlock, #st_RequestForwardedTo .a-RegionMedia {',
'    display: none;  // To hide row(s) highlight control of the mentioned Interactive Grid with its static id/name',
'} */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'AAHMED'
,p_last_upd_yyyymmddhh24miss=>'20250123130732'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560552726323742420)
,p_plug_name=>'Book Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Book Information</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560552823636742421)
,p_plug_name=>'Book Information'
,p_region_name=>'st_Book_Information'
,p_parent_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T1.BOOK_INFORMATION_ID,',
'    --    T2.PUBLISHER_COMPANY_ID,',
'       (SELECT T3.DESCRIPTION ',
'  		  FROM SKM_LIBRARY.PUBLISHER T3',
'		 WHERE T3.PUBLISHER_COMPANY_ID = T2.PUBLISHER_COMPANY_ID',
'		   AND T3.ORGANIZATION_ID = T1.ORGANIZATION_ID) AS PUBLISHER_COMPANY_DESC,',
'       T2.NO_OF_COPIES,',
'       T1.DDC_NO,',
'       T1.CATAGORY_ID,',
'    --    T2.PUBLISHING_PLACE_ID,',
'       (SELECT P.DESCRIPTION',
'          FROM ICU.SCORE_PARAMETERS P ',
'         WHERE P.SCORE_PARAMETER_ID = T2.PUBLISHING_PLACE_ID) AS PUBLISHING_PLACE,',
'       T2.ISBN,',
'       T1.PACKAGE_PRICE,',
'       T1.TITLE,',
'       T2.PUBLISHING_YEAR,',
'       T2.PAGES,',
'       T1.CURRENCY_ID,',
'       T1.SUB_TITLE,',
'       T2.BOOK_STATE,',
'       T2.ACTIVE,',
'       T1.SERIES_ID,',
'       T1.REMARKS,',
'       T1.EDITION_NO,',
'       T2.VOLUME_ID,',
'       T1.NO_OF_VOLUME',
'  FROM SKM_LIBRARY.BOOK_INFORMATION        T1,',
'       SKM_LIBRARY.BOOK_VOLUME_INFORMATION T2',
' WHERE T1.BOOK_INFORMATION_ID = T2.BOOK_INFORMATION_ID',
'   AND T1.ORGANIZATION_ID = T2.ORGANIZATION_ID',
'   AND T1.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'   AND T2.VOLUME_ID = :P8_VOLUME_ID',
'   AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P8_BOOK_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560813290416522520)
,p_plug_name=>'Book Detail'
,p_parent_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560813356482522521)
,p_plug_name=>'Book Subject Information'
,p_region_name=>'ig_Subject_Information'
,p_parent_plug_id=>wwv_flow_imp.id(560813290416522520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBJECT_ID,',
'      (SELECT P.DESCRIPTION',
'         FROM ICU.SCORE_PARAMETERS P ',
'        WHERE P.SCORE_PARAMETER_ID = SUBJECT_ID) AS SUBJECT_DESC, ',
'       BOOK_INFORMATION_ID,',
'       VOLUME_ID,',
'       ORGANIZATION_ID,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.BOOK_SUBJECT_INFORMATION BSI',
' WHERE BSI.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'   AND BSI.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'   AND BSI.VOLUME_ID = :P8_VOLUME_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P8_BOOK_ID,P8_VOLUME_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Book Subject Information'
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
 p_id=>wwv_flow_imp.id(282601835512976501)
,p_name=>'Delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(282603332888976516)
,p_name=>'Add'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:void(null)'
,p_link_text=>'<button type="button" class="a-Button a-Button--noLabel a-Button--iconTextButton js-actionButton" data-action = "row-delete"> <span class="fa fa-plus u-danger-text"></span> </button>'
,p_link_attributes=>'onclick="addToSubjectIG()"'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815028521522537)
,p_name=>'SUBJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Subject Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815072068522538)
,p_name=>'BOOK_INFORMATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_INFORMATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Information Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815219325522539)
,p_name=>'VOLUME_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Volume Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815255647522540)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815387336522541)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(560815496808522542)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(560815716816522544)
,p_name=>'SUBJECT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Subject'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION AS SUBJECT_DESC, P.SCORE_PARAMETER_ID AS SUBJECT_ID',
'  FROM ICU.SCORE_PARAMETERS P',
' WHERE P.SCORE_CATEGORY_ID = ''SUB''',
'   AND P.ACTIVE = ''Y'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815805016522545)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560815843362522546)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(560814881188522536)
,p_internal_uid=>560814881188522536
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>190
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'let $ = apex.jQuery,',
'',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'',
'toolbarGroup.controls.push({type: "BUTTON",',
'',
'action: "selection-delete",',
'',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'',
'iconBeforeLabel: true,',
'',
'hot: false',
'',
'});',
'',
'// manipulate the buttons',
'',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'',
'addrowAction.iconBeforeLabel = true;',
'',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'',
'//saveAction.icon ="fa fa-save"; // list of alternative font awesome icons: fa-save,fa-check',
'',
'saveAction.hot = true;',
'',
'//store the config',
'',
'config.toolbarData = toolbarData;',
'',
'return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(561382038704223180)
,p_interactive_grid_id=>wwv_flow_imp.id(560814881188522536)
,p_static_id=>'2797943'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(561382336958223181)
,p_report_id=>wwv_flow_imp.id(561382038704223180)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(619725970479527)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(282603332888976516)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(282610103832984621)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(282601835512976501)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561382754216223183)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(560815028521522537)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561383606040223187)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(560815072068522538)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561384460088223189)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(560815219325522539)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561385378270223192)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(560815255647522540)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561386255696223194)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(560815387336522541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561387206857223197)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(560815496808522542)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561771842692622839)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(560815716816522544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>570
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561834152603634298)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(560815805016522545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561835164094634307)
,p_view_id=>wwv_flow_imp.id(561382336958223181)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(560815843362522546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560813521642522522)
,p_plug_name=>'Book Material Information'
,p_region_name=>'ig_Book_Material_Information'
,p_parent_plug_id=>wwv_flow_imp.id(560813290416522520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BOOK_INFORMATION_ID,',
'       VOLUME_ID,',
'       MATERIAL_ID,',
'       NURSING.PKG_PACU_MONITORING.F_GET_SCORE_PARAMETER_DESC (P_SCORE_PARAMETER_ID => MATERIAL_ID) AS MATERIAL_DESC,',
'       ORGANIZATION_ID,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.BOOK_MATERIAL_INFORMATION T',
' WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'   AND T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'   AND T.VOLUME_ID = :P8_VOLUME_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P8_BOOK_ID,P8_VOLUME_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Book Material Information'
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
 p_id=>wwv_flow_imp.id(282604344819976526)
,p_name=>'Delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560817861997522566)
,p_name=>'BOOK_INFORMATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_INFORMATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Information Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
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
 p_id=>wwv_flow_imp.id(560817949914522567)
,p_name=>'VOLUME_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Volume Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(560818118158522568)
,p_name=>'MATERIAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MATERIAL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Material Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560818186552522569)
,p_name=>'MATERIAL_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MATERIAL_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Material'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>32767
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.DESCRIPTION AS MATERIAL_DESC, R.SCORE_PARAMETER_ID AS MATERIAL_ID',
'  FROM ICU.SCORE_PARAMETERS R',
' WHERE R.SCORE_CATEGORY_ID = ''MIN''',
'   AND R.ACTIVE = ''Y''',
'ORDER BY R.Description'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901062678755520)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901142124755521)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901266843755522)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901434269755523)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901450909755524)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(560817825502522565)
,p_internal_uid=>560817825502522565
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
,p_toolbar_buttons=>'SEARCH_FIELD:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>190
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'let $ = apex.jQuery,',
'',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'',
'toolbarGroup.controls.push({type: "BUTTON",',
'',
'action: "selection-delete",',
'',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'',
'iconBeforeLabel: true,',
'',
'hot: false',
'',
'});',
'',
'// manipulate the buttons',
'',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'',
'addrowAction.iconBeforeLabel = true;',
'',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'',
'//saveAction.icon ="fa fa-save"; // list of alternative font awesome icons: fa-save,fa-check',
'',
'saveAction.hot = true;',
'',
'//store the config',
'',
'config.toolbarData = toolbarData;',
'',
'return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(561907027949756426)
,p_interactive_grid_id=>wwv_flow_imp.id(560817825502522565)
,p_static_id=>'2803192'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(561907163499756426)
,p_report_id=>wwv_flow_imp.id(561907027949756426)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(284130616792354960)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(282604344819976526)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561907703882756428)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(560817861997522566)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561908571040756431)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(560817949914522567)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561909465150756433)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(560818118158522568)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561910427904756436)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(560818186552522569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>569
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561911315149756440)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(561901062678755520)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561912172174756445)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(561901142124755521)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561913089206756449)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(561901266843755522)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561915273004761174)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(561901434269755523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561916184552761176)
,p_view_id=>wwv_flow_imp.id(561907163499756426)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(561901450909755524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560813588664522523)
,p_plug_name=>'Book Accession Information'
,p_parent_plug_id=>wwv_flow_imp.id(560813290416522520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BOOK_INFORMATION_ID,',
'       VOLUME_ID,',
'       ACCESS_NO,',
'       ACCESS_NO AS ACCESS_NO_DESC,',
'       PURCHASE_GIFT,',
'       ILLUSTRATION,',
'       SERIAL_NO,',
'       ISSUED,',
'       ACCESSION_DATE,',
'       ORGANIZATION_ID,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.ACCESSION_INFORMATION T',
' WHERE T.ORGANIZATION_ID     = :GV_ORGANIZATION_ID',
'   AND T.LOCATION_ID         = :GV_LOCATION_ID',
'   AND T.ORDER_LOCATION_ID   = :GV_ORDER_LOCATION_ID',
'   AND T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'   AND T.VOLUME_ID = :P8_VOLUME_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P8_BOOK_ID,P8_VOLUME_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Book Accession Information'
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
 p_id=>wwv_flow_imp.id(281193028988377450)
,p_name=>'ACCESS_NO_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESS_NO_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Access No '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(560816317754522550)
,p_name=>'BOOK_INFORMATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_INFORMATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Information Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
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
 p_id=>wwv_flow_imp.id(560816390182522551)
,p_name=>'VOLUME_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Volume Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(560816450437522552)
,p_name=>'ACCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESS_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560816558675522553)
,p_name=>'PURCHASE_GIFT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_GIFT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Purchase Gift'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560816675407522554)
,p_name=>'ILLUSTRATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ILLUSTRATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Illustration'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560816831739522555)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Serial No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560816936956522556)
,p_name=>'ISSUED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560816985750522557)
,p_name=>'ACCESSION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Accession Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(560817120037522558)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560817137491522559)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560817284168522560)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(560816190365522549)
,p_internal_uid=>560816190365522549
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>190
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'let $ = apex.jQuery,',
'',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'',
'toolbarGroup.controls.push({type: "BUTTON",',
'',
'action: "selection-delete",',
'',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'',
'iconBeforeLabel: true,',
'',
'hot: false',
'',
'});',
'',
'// manipulate the buttons',
'',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'',
'addrowAction.iconBeforeLabel = true;',
'',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'',
'//saveAction.icon ="fa fa-save"; // list of alternative font awesome icons: fa-save,fa-check',
'',
'saveAction.hot = true;',
'',
'//store the config',
'',
'config.toolbarData = toolbarData;',
'',
'return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(561855972963680257)
,p_interactive_grid_id=>wwv_flow_imp.id(560816190365522549)
,p_static_id=>'2802682'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(561856236217680262)
,p_report_id=>wwv_flow_imp.id(561855972963680257)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21838427074112)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(281193028988377450)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>586
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561856735094680272)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(560816317754522550)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561857625787680275)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(560816390182522551)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561858491241680278)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(560816450437522552)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561859401111680283)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(560816558675522553)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561860205605680286)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(560816675407522554)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561861102596680288)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(560816831739522555)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561861945678680290)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(560816936956522556)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561862890548680299)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(560816985750522557)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561863773849680303)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(560817120037522558)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561864680607680305)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(560817137491522559)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561865624507680308)
,p_view_id=>wwv_flow_imp.id(561856236217680262)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(560817284168522560)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560813641995522524)
,p_plug_name=>'Book Author'
,p_region_name=>'ig_Book_Author'
,p_parent_plug_id=>wwv_flow_imp.id(560813290416522520)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BOOK_INFORMATION_ID,',
'       AUTHOR_ID,',
'       (SELECT T1.FIRST_NAME || '' '' || T1.MIDDLE_NAME || '' '' || T1.LAST_NAME',
'          FROM SKM_LIBRARY.AUTHOR T1',
'         WHERE T1.AUTHOR_ID = T.AUTHOR_ID',
'           AND T1.ORGANIZATION_ID = T.ORGANIZATION_ID) AS AUTHOR_DESC,',
'       ACTIVE,',
'       ORGANIZATION_ID,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID',
'  FROM SKM_LIBRARY.BOOK_AUTHOR T',
' WHERE T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'   AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P8_BOOK_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Book Author'
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
 p_id=>wwv_flow_imp.id(282605115899976534)
,p_name=>'Delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901846810755528)
,p_name=>'BOOK_INFORMATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOK_INFORMATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Book Information Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>9
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561901937961755529)
,p_name=>'AUTHOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Author Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561902060518755530)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Active'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561902219610755531)
,p_name=>'ORGANIZATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGANIZATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Organization Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561902265626755532)
,p_name=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(561902348097755533)
,p_name=>'ORDER_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_LOCATION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order Location Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(561902502851755534)
,p_name=>'AUTHOR_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHOR_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Author'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>182
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ALL T.FIRST_NAME||'' ''||T.MIDDLE_NAME||'' ''||T.LAST_NAME AS AUTHOR_NAME, T.AUTHOR_ID',
'FROM SKM_LIBRARY.AUTHOR T',
'WHERE T.ACTIVE = ''Y''',
'AND T.ORGANIZATION_ID =  :GV_ORGANIZATION_ID',
'ORDER BY T.FIRST_NAME||T.MIDDLE_NAME||T.LAST_NAME '))
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561902578574755535)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_display_condition_type=>'NEVER'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(561902653890755536)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(561901776182755527)
,p_internal_uid=>561901776182755527
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
,p_toolbar_buttons=>'SEARCH_FIELD:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>190
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'let $ = apex.jQuery,',
'',
'toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'',
'toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'',
'addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'',
'saveAction = toolbarData.toolbarFind("save"); // Save button',
'',
'// add a new "delete" button',
'',
'toolbarGroup.controls.push({type: "BUTTON",',
'',
'action: "selection-delete",',
'',
'icon: "icon-ig-delete", // alternative FontAwesome icon: "fa fa-trash",',
'',
'iconBeforeLabel: true,',
'',
'hot: false',
'',
'});',
'',
'// manipulate the buttons',
'',
'addrowAction.icon = "fa fa-plus"; // alternative font awesome icon: "fa fa-plus";',
'',
'addrowAction.iconBeforeLabel = true;',
'',
'addrowAction.hot = true;',
'',
'saveAction.iconBeforeLabel = true;',
'',
'saveAction.icon ="fa fa-save"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'',
'//saveAction.icon ="fa fa-save"; // list of alternative font awesome icons: fa-save,fa-check',
'',
'saveAction.hot = true;',
'',
'//store the config',
'',
'config.toolbarData = toolbarData;',
'',
'return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(561948590102963144)
,p_interactive_grid_id=>wwv_flow_imp.id(561901776182755527)
,p_static_id=>'2803608'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(561948824460963144)
,p_report_id=>wwv_flow_imp.id(561948590102963144)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(284142612510421966)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(282605115899976534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66.999975
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561949285292963147)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(561901846810755528)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561950230498963149)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(561901937961755529)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561951073605963152)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(561902060518755530)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561952013473963155)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(561902219610755531)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561952840990963157)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(561902265626755532)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561953826000963160)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(561902348097755533)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561954641191963164)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(561902502851755534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>523.438
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561956764958966355)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(561902578574755535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561957699500966357)
,p_view_id=>wwv_flow_imp.id(561948824460963144)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(561902653890755536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(560813887355522526)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(282604414472976527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(560813521642522522)
,p_button_name=>'BTN_DELETE_MATERIAL'
,p_button_static_id=>'BTN_DELETE_MATERIAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Delete Material'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(282604825595976531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(560813641995522524)
,p_button_name=>'BTN_DELETE_AUTHOR'
,p_button_static_id=>'BTN_DELETE_AUTHOR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Delete Author'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288393730942170118)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(560813356482522521)
,p_button_name=>'BTN_DELETE_SUBJECT'
,p_button_static_id=>'BTN_DELETE_SUBJECT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Delete Subject'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281627048862570082)
,p_button_sequence=>540
,p_button_plug_id=>wwv_flow_imp.id(560813887355522526)
,p_button_name=>'ACCESSION_LIST'
,p_button_static_id=>'BTN_ACCESSION_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Accession List'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-list-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281629058802570088)
,p_button_sequence=>500
,p_button_plug_id=>wwv_flow_imp.id(560813887355522526)
,p_button_name=>'SAVE'
,p_button_static_id=>'BTN_SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281627457668570088)
,p_button_sequence=>510
,p_button_plug_id=>wwv_flow_imp.id(560813887355522526)
,p_button_name=>'QUERY'
,p_button_static_id=>'BTN_QUERY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>Q</u>uery'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(296054304201938006)
,p_button_sequence=>520
,p_button_plug_id=>wwv_flow_imp.id(560813887355522526)
,p_button_name=>'CLEAR'
,p_button_static_id=>'BTN_CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>C</u>lear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281628273347570088)
,p_button_sequence=>530
,p_button_plug_id=>wwv_flow_imp.id(560813887355522526)
,p_button_name=>'DELETE'
,p_button_static_id=>'BTN_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(281627887520570088)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(560813887355522526)
,p_button_name=>'BTN_EXIT'
,p_button_static_id=>'BTN_EXIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281192822320377448)
,p_name=>'P8_VOLUME_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282602594615976508)
,p_name=>'P8_ND_BOOK_INFO_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(560813356482522521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282602600074976509)
,p_name=>'P8_ND_SUBJECT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(560813356482522521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282602704488976510)
,p_name=>'P8_ND_VOLUME_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(560813356482522521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282603160275976514)
,p_name=>'P8_ND_SUBJECT_DELETION_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(560813356482522521)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(282605318593976536)
,p_name=>'P8_ND_MATERIAL_DELETION_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(560813521642522522)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288392821864170109)
,p_name=>'P8_OP_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288394553302170126)
,p_name=>'P8_ND_AUTHOR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(560813641995522524)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288394695187170127)
,p_name=>'P8_ND_AUTHOR_DELETION_FLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(560813641995522524)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288395606839170137)
,p_name=>'P8_ND_MATERIAL_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(560813521642522522)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296054016279938003)
,p_name=>'P8_BOOK_INFO_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_source=>'BOOK_INFORMATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303514388073334911)
,p_name=>'P8_PUBLISHER_COMPANY_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303514454963334912)
,p_name=>'P8_PUBLISHING_PLACE_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303514597223334913)
,p_name=>'P8_PUBLICATION_YEAR_ID'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303514681167334914)
,p_name=>'P8_SERIES_ID'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303514729396334915)
,p_name=>'P8_ALERT_MESSAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303515584684334923)
,p_name=>'P8_CURRENCY_ID'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560581518765742775)
,p_name=>'P8_BOOK_INFORMATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Book Id :'
,p_source=>'BOOK_INFORMATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>9
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560581718624742777)
,p_name=>'P8_PUBLISHER_COMPANY_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Publisher :'
,p_source=>'PUBLISHER_COMPANY_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION AS PUBLISHER_DESC, T.PUBLISHER_COMPANY_ID AS PUBLISHER_ID',
'  FROM SKM_LIBRARY.PUBLISHER T',
' WHERE T.ACTIVE = ''Y''',
'   AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY T.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'PUBLISHER_ID:P8_PUBLISHER_COMPANY_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560581848641742778)
,p_name=>'P8_NO_OF_COPIES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Copies :'
,p_source=>'NO_OF_COPIES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(560581935339742779)
,p_name=>'P8_DDC_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'DDC No. :'
,p_source=>'DDC_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(560582087221742780)
,p_name=>'P8_BOOK_CATEGORY_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Category :'
,p_source=>'CATAGORY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.DESCRIPTION AS BOOK_CATEGORY_DESC ,R.SCORE_PARAMETER_ID AS BOOK_CATEGORY_ID',
'  FROM ICU.SCORE_PARAMETERS R',
' WHERE R.SCORE_CATEGORY_ID = ''BCT''',
'   AND R.ACTIVE=''Y''',
'ORDER BY R.Description',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>6
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560582118688742781)
,p_name=>'P8_PUBLISHING_PLACE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Place Of Pub. :'
,p_source=>'PUBLISHING_PLACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION AS PUBLICATION_PLACE_DESC, P.SCORE_PARAMETER_ID AS PUBLICATION_PLACE_ID ',
'  FROM ICU.SCORE_PARAMETERS P ',
' WHERE P.ACTIVE = ''Y''',
'   AND P.SCORE_CATEGORY_ID = ''PBL''',
'ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'PUBLICATION_PLACE_ID:P8_PUBLISHING_PLACE_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560582263202742782)
,p_name=>'P8_ISBN_ISSN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'ISBN/ISSN :'
,p_source=>'ISBN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(560582331008742783)
,p_name=>'P8_PACKAGE_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Package Price :'
,p_source=>'PACKAGE_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560582443227742784)
,p_name=>'P8_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Title :'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(560582589433742785)
,p_name=>'P8_PUBLISHING_YEAR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Year :'
,p_source=>'PUBLISHING_YEAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION PUBLICATION_YEAR_DESC, P.DESCRIPTION PUBLICATION_YEAR_ID',
'  FROM ICU.SCORE_PARAMETERS P',
' WHERE P.SCORE_CATEGORY_ID = ''YER''',
'ORDER BY P.ORDER_BY'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'PUBLICATION_YEAR_ID:P8_PUBLICATION_YEAR_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560582611699742786)
,p_name=>'P8_PAGES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Pages :'
,p_source=>'PAGES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(560582741407742787)
,p_name=>'P8_CURRENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Currency :'
,p_source=>'CURRENCY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CURRENCY_P8'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION AS CURRENCY_DESC, T.SHORT_DESCRIPTION AS CYRREBCT_SHORT_DESC, T.SYMBOL AS CURRENCY_SYMBOL, T.CURRENCY_ID ',
'  FROM DEFINITIONS.CURRENCY T',
' WHERE T.ACTIVE = ''Y''',
'ORDER BY T.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'CURRENCY_ID:P8_CURRENCY_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560582900024742788)
,p_name=>'P8_SUB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Sub Title :'
,p_source=>'SUB_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(560582917510742789)
,p_name=>'P8_BOOK_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Binding :'
,p_source=>'BOOK_STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Ring Binding;R,Tape Binding;T,Hard Binding;H,Other;O,Paper Binding;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560583055726742790)
,p_name=>'P8_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Active :'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(225746927565730659)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560583226388742792)
,p_name=>'P8_SERIES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Series :'
,p_source=>'SERIES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.DESCRIPTION AS BOOK_SERIES_DESC, R.SCORE_PARAMETER_ID AS BOOK_SERIES_ID',
'  FROM ICU.SCORE_PARAMETERS R',
' WHERE R.SCORE_CATEGORY_ID = ''BSR''',
'   AND R.ACTIVE = ''Y''',
'ORDER BY R.DESCRIPTION;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'BOOK_SERIES_ID:P8_SERIES_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(560583320349742793)
,p_name=>'P8_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Notes :'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(560583500121742794)
,p_name=>'P8_EDITION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_prompt=>'Edition :'
,p_source=>'EDITION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_grid_column=>10
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
 p_id=>wwv_flow_imp.id(561929629233755872)
,p_name=>'P8_VOLUME_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_source=>'VOLUME_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(562776893885947264)
,p_name=>'P8_ORGANIZATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(562777064940947266)
,p_name=>'P8_LOCATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(562777175576947267)
,p_name=>'P8_ORDER_LOCATION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(562777731096947272)
,p_name=>'P8_BOOK_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(560552726323742420)
,p_display_as=>'NATIVE_HIDDEN'
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
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(562802344989947450)
,p_name=>'P8_NO_OF_VOLUME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_item_source_plug_id=>wwv_flow_imp.id(560552823636742421)
,p_source=>'NO_OF_VOLUME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281632942727570523)
,p_name=>'DA_Page Load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281633410961570523)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560552823636742421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281633997544570523)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813356482522521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281634408926570523)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813588664522523)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281635450457570524)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813521642522522)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281635975391570524)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813641995522524)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282604769402976530)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(288393730942170118)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288394195164170122)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(282604414472976527)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282605295820976535)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(282604825595976531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303515060414334918)
,p_event_id=>wwv_flow_imp.id(281632942727570523)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P8_ALERT_MESSAGE").setValue("");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281192662534377446)
,p_name=>'DA_P8_BOOK_ID - Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_BOOK_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281192758550377447)
,p_event_id=>wwv_flow_imp.id(281192662534377446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- IF :P8_BOOK_INFORMATION_ID IS NOT NULL AND :P8_OP_STATUS = ''DELETION'' THEN',
'IF :P8_BOOK_ID IS NULL AND :P8_OP_STATUS = ''DELETION'' THEN',
'    NULL;',
'    -- :P8_BOOK_INFORMATION_ID := NULL;',
'    -- :P8_PUBLISHER_COMPANY_ID := NULL;',
'    -- :P8_PUBLISHER_COMPANY_DESC := NULL;',
'    -- :P8_PUBLISHING_PLACE_ID := NULL;',
'    -- :P8_NO_OF_COPIES := NULL;',
'    -- :P8_DDC_NO := NULL;',
'    -- :P8_BOOK_CATEGORY_DESC := NULL;',
'    -- :P8_PUBLISHING_PLACE := NULL;',
'    -- :P8_ISBN_ISSN := NULL;',
'    -- :P8_PACKAGE_PRICE := NULL;',
'    -- :P8_TITLE := NULL;',
'    -- :P8_PUBLISHING_YEAR := NULL;',
'    -- :P8_PAGES := NULL;',
'    -- :P8_CURRENCY := NULL;',
'    -- :P8_SUB_TITLE := NULL;',
'    -- :P8_BOOK_STATE := NULL;',
'    -- :P8_ACTIVE := ''N'';',
'    -- :P8_SERIES := NULL;',
'    -- :P8_NOTES := NULL;',
'    -- :P8_EDITION := NULL;',
'    -- :P8_VOLUME_NO := NULL;',
'    -- :P8_NO_OF_VOLUME := NULL;',
'END IF;'))
,p_attribute_02=>'P8_BOOK_ID,P8_OP_STATUS'
,p_attribute_03=>'P8_BOOK_INFORMATION_ID,P8_PUBLISHER_COMPANY_DESC,P8_NO_OF_COPIES,P8_DDC_NO,P8_BOOK_CATEGORY_DESC,P8_PUBLISHING_PLACE,P8_ISBN_ISSN,P8_PACKAGE_PRICE,P8_TITLE,P8_PUBLISHING_YEAR,P8_PAGES,P8_CURRENCY,P8_SUB_TITLE,P8_BOOK_STATE,P8_ACTIVE,P8_SERIES,P8_NOTE'
||'S,P8_EDITION,P8_VOLUME_NO,P8_NO_OF_VOLUME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392039812170101)
,p_event_id=>wwv_flow_imp.id(281192662534377446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813356482522521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392181878170102)
,p_event_id=>wwv_flow_imp.id(281192662534377446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813588664522523)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392296436170103)
,p_event_id=>wwv_flow_imp.id(281192662534377446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813521642522522)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392343468170104)
,p_event_id=>wwv_flow_imp.id(281192662534377446)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(560813641995522524)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392590548170106)
,p_event_id=>wwv_flow_imp.id(281192662534377446)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_BOOK_INFORMATION_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276114831675119042)
,p_name=>'P8_ND_SUBJECT_DELETION_FLAG - Change'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_ND_SUBJECT_DELETION_FLAG'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>100
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276115021242119044)
,p_event_id=>wwv_flow_imp.id(276114831675119042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Delete Row'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_ND_SUBJECT_DELETION_FLAG = ''Y'' THEN',
'    DELETE FROM SKM_LIBRARY.BOOK_SUBJECT_INFORMATION BSI',
'     WHERE BSI.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'       AND BSI.BOOK_INFORMATION_ID = :P8_ND_BOOK_INFO_ID',
'       AND BSI.VOLUME_ID = :P8_ND_VOLUME_ID',
'       AND BSI.SUBJECT_ID = :P8_ND_SUBJECT_ID;',
'ELSE',
'    NULL;',
'END IF;'))
,p_attribute_02=>'P8_ND_BOOK_INFO_ID,P8_ND_VOLUME_ID,P8_ND_SUBJECT_ID,P8_ND_SUBJECT_DELETION_FLAG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276115208601119046)
,p_event_id=>wwv_flow_imp.id(276114831675119042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Grid'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("ig_Subject_Information").widget().interactiveGrid("getViews", "grid").model.clearChanges();',
'apex.region("ig_Subject_Information").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288395442176170135)
,p_event_id=>wwv_flow_imp.id(276114831675119042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Record deleted b'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(282602380512976506)
,p_name=>'DA_POPULATE_IG_ITEMS'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(560813356482522521)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282602462260976507)
,p_event_id=>wwv_flow_imp.id(282602380512976506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P8_ND_BOOK_INFO_ID",_.ig_Subject_Information.BOOK_INFORMATION_ID); ',
'$s("P8_ND_SUBJECT_ID",_.ig_Subject_Information.SUBJECT_ID); ',
'$s("P8_ND_VOLUME_ID",_.ig_Subject_Information.VOLUME_ID); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(282603532961976518)
,p_name=>'DA_Create_New_Row'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(560813356482522521)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282603641507976519)
,p_event_id=>wwv_flow_imp.id(282603532961976518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).on(''keydown'', function(e) {',
'    // Check if the Down Arrow key (key code 40) is pressed',
'    if (e.keyCode === 40) {',
'        apex.message.alert(''hello'');',
'',
'        // Access the Interactive Grid using its Static ID (e.g., "ig_Subject_Information")',
'        var grid = apex.region("ig_Subject_Information").widget().interactiveGrid("getViews", "grid");',
'',
'        // Check if the grid is successfully retrieved',
'        if (grid) {',
'            var model = grid.model;',
'            model.addRow();  // Add a new row to the grid',
'        } else {',
'            console.error("Interactive Grid is not available.");',
'        }',
'',
'',
'',
'',
'',
'',
'',
'        apex.region("ig_Subject_Information").refresh();',
'        // Listen for the apexafterrefresh event on the document',
'        $(document).on("apexafterrefresh", function(_event, region) {',
'',
'            // Check if the refreshed region is the one we are interested in',
'            if (region.regionId === "ig_Subject_Information") {',
'',
'                // The grid is refreshed, and you can now safely interact with it',
'                var grid = apex.region("ig_Subject_Information").widget().interactiveGrid("getViews", "grid");',
'                ',
'                // Check if grid is properly initialized',
'                if (grid) {',
'                    grid.addRow();',
'                    console.log("Grid has been refreshed and is ready for interaction.");',
'                } else {',
'                    console.error("Grid is not initialized.");',
'                }',
'            }',
'        });',
'',
'',
'',
'        Prevent the default behavior of moving to the next row',
'        e.preventDefault();',
'        Add a new row to the Interactive Grid',
'',
'        Add a listener for when the grid is fully refreshed',
'        $(document).on("apexafterrefresh", function(event, region) {',
'            apex.message.alert(''hello-1'');',
'            if (region.regionId === "ig_Subject_Information") {',
'                apex.message.alert(''hello-2'');',
'                var grid = apex.region("ig_Subject_Information").widget().interactiveGrid("getViews", "grid");',
'                var model = grid.model;',
'                model.addRow(); // Add the row once the grid is ready',
'            }',
'        });',
'',
'        var grid = apex.region("ig_Subject_Information").widget().interactiveGrid("getViews", "grid");',
'        ',
'        // Get the model of the grid',
'        if (grid) {',
'            // var model = grid.model;',
'            console.error("Grid is initialized.");',
'            // model.addRow();',
'        } else {',
'            console.error("Grid is not initialized.");',
'        }',
'        Add a new row to the grid''s model',
'        grid.addRow();',
'        grid.model.addRow({});',
'        grid.addRow();',
'        grid.model.addRow();',
'    }',
'});',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(282604132476976524)
,p_name=>'DA_SAVE - Click'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(281629058802570088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296054882322938011)
,p_event_id=>wwv_flow_imp.id(282604132476976524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'--   vData      SKM_LIBRARY.BOOK_SUBJECT_INFORMATION%ROWTYPE;--SKM_LIBRARY.PKG_ACCESSION_INFORMATION.ACCESSION_INFORMATION_TBL;',
'  vError       VARCHAR2(4000);',
'  vStop		   VARCHAR2(1);',
'  vAlertText   VARCHAR2(4000);',
'  vRowId       ROWID;',
'  vBook_Conter VARCHAR2(15); ',
'BEGIN',
'    IF :P8_BOOK_ID IS NULL THEN    ',
'        BEGIN',
'            SELECT LPAD(MAX(TO_NUMBER(T1.BOOK_INFORMATION_ID)+1), 9, ''0'')',
'              INTO vBook_Conter',
'              FROM SKM_LIBRARY.BOOK_INFORMATION T1',
'             WHERE T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vBook_Conter := ''000000001'';',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        :P8_BOOK_ID := vBook_Conter;',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.BOOK_INFORMATION (BOOK_INFORMATION_ID, ',
'                                                      CATAGORY_ID, ',
'                                                      DDC_NO, ',
'                                                      TITLE, ',
'                                                      SUB_TITLE, ',
'                                                      SERIES_ID, ',
'                                                      EDITION_NO, ',
'                                                      PACKAGE_PRICE, ',
'                                                      CURRENCY_ID, ',
'                                                      NO_OF_VOLUME, ',
'                                                      REMARKS, ',
'                                                      ORGANIZATION_ID, ',
'                                                      LOCATION_ID, ',
'                                                      ORDER_LOCATION_ID)',
'                                              VALUES (:P8_BOOK_ID,',
'                                                      :P8_BOOK_CATEGORY_DESC,',
'                                                      :P8_DDC_NO,',
'                                                      :P8_TITLE,',
'                                                      :P8_SUB_TITLE,',
'                                                      :P8_SERIES,',
'                                                      :P8_EDITION,',
'                                                      :P8_PACKAGE_PRICE,',
'                                                      :P8_CURRENCY,',
'                                                      1,',
'                                                      :P8_NOTES,',
'                                                      :GV_ORGANIZATION_ID,',
'                                                      :GV_LOCATION_ID,',
'                                                      :GV_ORDER_LOCATION_ID);',
'        END;',
'    ELSIF :P8_BOOK_ID IS NOT NULL THEN    ',
'        BEGIN',
'            UPDATE SKM_LIBRARY.BOOK_INFORMATION BI',
'               SET CATAGORY_ID = :P8_BOOK_CATEGORY_DESC,',
'                   DDC_NO = :P8_DDC_NO, ',
'                   TITLE = :P8_TITLE, ',
'                   SUB_TITLE = :P8_SUB_TITLE, ',
'                   EDITION_NO = :P8_EDITION, ',
'                   PACKAGE_PRICE = :P8_PACKAGE_PRICE, ',
'                   CURRENCY_ID = :P8_CURRENCY, ',
'                   NO_OF_VOLUME = 1,',
'                   REMARKS = :P8_NOTES,',
'                   SERIES_ID = :P8_SERIES,',
'                   ORGANIZATION_ID = ORGANIZATION_ID,',
'                   LOCATION_ID = LOCATION_ID,',
'                   ORDER_LOCATION_ID = ORDER_LOCATION_ID',
'             WHERE BI.BOOK_INFORMATION_ID = :P8_BOOK_ID;',
'        END;        ',
'    END IF;',
'    IF (vStop = ''Y'') THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => vAlertText,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    ELSE',
'        COMMIT;',
'    END IF;',
'END;'))
,p_attribute_02=>'P8_BOOK_ID,P8_BOOK_CATEGORY_DESC,P8_DDC_NO,P8_TITLE,P8_SUB_TITLE,P8_SERIES,P8_EDITION,P8_PACKAGE_PRICE,P8_CURRENCY_ID,P8_CURRENCY,P8_SERIES_ID,,P8_NOTES'
,p_attribute_03=>'P8_BOOK_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296055065110938013)
,p_event_id=>wwv_flow_imp.id(282604132476976524)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vError       VARCHAR2(4000);',
'  vStop		   VARCHAR2(1) := ''N'';',
'  vAlertText   VARCHAR2(4000) := NULL;',
'  vRowId       ROWID;',
'  vBookId      VARCHAR2(10) := :P8_BOOK_ID;',
'BEGIN',
'    :P8_ALERT_MESSAGE := NULL;',
'    BEGIN',
'        SELECT ROWID',
'          INTO vRowId',
'          FROM SKM_LIBRARY.BOOK_VOLUME_INFORMATION BVI',
'         WHERE BVI.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'           AND BVI.VOLUME_ID = 1',
'           AND BVI.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'           AND BVI.LOCATION_ID = :GV_LOCATION_ID',
'           AND BVI.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'         FOR UPDATE WAIT 2;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            vRowId := NULL;',
'            vStop := ''Y'';',
'            vAlertText := ''No record found to be updated, due to ''||SQLERRM;',
'        WHEN OTHERS THEN',
'            vRowId := NULL; ',
'            vStop := ''Y'';',
'            vAlertText := ''Unable to update the record, due to ''||SQLERRM;           ',
'    END;',
'    IF vRowId IS NULL THEN',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.BOOK_VOLUME_INFORMATION (BOOK_INFORMATION_ID, ',
'                                                              VOLUME_ID, ',
'                                                              PUBLISHER_COMPANY_ID, ',
'                                                              PUBLISHING_PLACE_ID, ',
'                                                              ISBN,',
'                                                              PAGES,',
'                                                              ORGANIZATION_ID, ',
'                                                              LOCATION_ID, ',
'                                                              ORDER_LOCATION_ID)',
'                                                      VALUES (:P8_BOOK_ID,',
'                                                              1,',
'                                                              :P8_PUBLISHER_COMPANY_DESC, ',
'                                                              :P8_PUBLISHING_PLACE, ',
'                                                              :P8_ISBN_ISSN, ',
'                                                              :P8_PAGES,',
'                                                              :GV_ORGANIZATION_ID,',
'                                                              :GV_LOCATION_ID,',
'                                                              :GV_ORDER_LOCATION_ID);',
'            vStop := ''N'';',
'            vAlertText := ''Record inserted...'';',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Record can not be inserted, due to ''||SQLERRM;',
'                :P8_BOOK_ID := vBookId;',
'        END;',
'    ELSIF vRowId IS NOT NULL THEN',
'        BEGIN',
'            UPDATE SKM_LIBRARY.BOOK_VOLUME_INFORMATION',
'               SET BOOK_INFORMATION_ID = :P8_BOOK_ID,',
'                   VOLUME_ID = 1,',
'                   PUBLISHER_COMPANY_ID = :P8_PUBLISHER_COMPANY_ID,',
'                   NO_OF_COPIES = :P8_NO_OF_COPIES,',
'                   PUBLISHING_PLACE_ID = :P8_PUBLISHING_PLACE_ID,',
'                   ISBN = :P8_ISBN_ISSN,',
'                   PUBLISHING_YEAR = :P8_PUBLICATION_YEAR_ID,',
'                   PAGES = :P8_PAGES,',
'                   BOOK_STATE = :P8_BOOK_STATE,',
'                   ORGANIZATION_ID = ORGANIZATION_ID,',
'                   LOCATION_ID = LOCATION_ID,',
'                   ORDER_LOCATION_ID = ORDER_LOCATION_ID',
'            WHERE ROWID = vRowId;',
'            vStop := ''N'';',
'            vAlertText := ''Record updated...'';',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record, due to ''||SQLERRM;',
'                :P8_BOOK_ID := vBookId;',
'        END;',
'    END IF;',
'    IF (vStop = ''Y'') THEN',
'        :P8_ALERT_MESSAGE := vAlertText;',
'        :P8_BOOK_ID := vBookId;    ',
'    ELSE',
'        COMMIT;',
'        :P8_ALERT_MESSAGE := ''Record saved'';',
'    END IF;',
'    :P8_BOOK_ID := vBookId;',
'END;'))
,p_attribute_02=>'P8_BOOK_ID,P8_PUBLISHER_COMPANY_ID,P8_PUBLISHER_COMPANY_DESC,P8_PUBLISHING_PLACE_ID,P8_PUBLISHING_PLACE,P8_ISBN_ISSN,P8_NO_OF_COPIES,P8_PUBLICATION_YEAR_ID,P8_PUBLISHING_YEAR,P8_PAGES,P8_BOOK_STATE'
,p_attribute_03=>'P8_BOOK_ID,P8_ALERT_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303515273861334920)
,p_event_id=>wwv_flow_imp.id(282604132476976524)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("st_Book_Information").widget().interactiveGrid("getViews", "grid").model.clearChanges();',
'// apex.region("st_Book_Information").refresh();'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282604258237976525)
,p_event_id=>wwv_flow_imp.id(282604132476976524)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Save'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(282604597389976528)
,p_name=>'DA_DELETE_MATERIAL_INFORMATION_IG_01'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(282604414472976527)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282604640918976529)
,p_event_id=>wwv_flow_imp.id(282604597389976528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Deletion Flag'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.confirm(''Are you sure to delete this record...?'', function(isOk) {',
'    ',
'    if (isOk) {',
'        apex.item(''P8_ND_MATERIAL_DELETION_FLAG'').setValue('''');',
'        apex.item(''P8_ND_MATERIAL_DELETION_FLAG'').setValue(''Y'');',
'        ',
'    } else {',
'        apex.item(''P8_ND_MATERIAL_DELETION_FLAG'').setValue('''');',
'        apex.item(''P8_ND_MATERIAL_DELETION_FLAG'').setValue(''N'');',
'    }',
'',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(282604953190976532)
,p_name=>'DA_BTN_DELETE_AUTHOR - Click'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(282604825595976531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282605085220976533)
,p_event_id=>wwv_flow_imp.id(282604953190976532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Deletion Flag'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.confirm(''Are you sure to delete this record...?'', function(isOk) {',
'    ',
'    if (isOk) {',
'        apex.item(''P8_ND_AUTHOR_DELETION_FLAG'').setValue('''');',
'        apex.item(''P8_ND_AUTHOR_DELETION_FLAG'').setValue(''Y'');',
'        ',
'    } else {',
'        apex.item(''P8_ND_AUTHOR_DELETION_FLAG'').setValue('''');',
'        apex.item(''P8_ND_AUTHOR_DELETION_FLAG'').setValue(''N'');',
'    }',
'',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(282605420927976537)
,p_name=>'DA_P8_ND_MATERIAL_DELETION_FLAG - Change'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_ND_MATERIAL_DELETION_FLAG'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>100
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(282605517450976538)
,p_event_id=>wwv_flow_imp.id(282605420927976537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Delete Row'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_ND_MATERIAL_DELETION_FLAG = ''Y'' THEN',
'    DELETE FROM SKM_LIBRARY.BOOK_MATERIAL_INFORMATION BMI',
'     WHERE 1=1--BMI.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'       --AND BMI.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'       --AND BMI.VOLUME_ID = :P8_ND_VOLUME_ID',
'       AND BMI.MATERIAL_ID = :P8_ND_MATERIAL_ID;',
'ELSE',
'    NULL;',
'END IF;'))
,p_attribute_02=>'P8_BOOK_ID,P8_ND_MATERIAL_ID,P8_ND_MATERIAL_DELETION_FLAG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288395249292170133)
,p_event_id=>wwv_flow_imp.id(282605420927976537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Grid'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("ig_Book_Material_Information").widget().interactiveGrid("getViews", "grid").model.clearChanges();',
'apex.region("ig_Book_Material_Information").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288395370905170134)
,p_event_id=>wwv_flow_imp.id(282605420927976537)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Record deleted a'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285897052511904649)
,p_name=>'DA_Query - Click'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(281627457668570088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303513852649334906)
,p_event_id=>wwv_flow_imp.id(285897052511904649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Toggle Read-Only state of the page item',
'var item = $(''#P8_BOOK_INFORMATION_ID''); // Replace with your page item''s ID',
'',
'// Check the current state and toggle',
'if (item.prop(''readonly'')) {',
'    item.prop(''readonly'', false); // Make it editable',
'} ',
'// else {',
'//     item.prop(''readonly'', true); // Make it read-only',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392717934170108)
,p_event_id=>wwv_flow_imp.id(285897052511904649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P8_BOOK_INFORMATION_ID") !== null && $v("P8_BOOK_INFORMATION_ID") !== "") && ($v("P8_BOOK_ID") !== null && $v("P8_BOOK_ID") !== "")) ',
'{',
'    apex.item("P8_BOOK_ID").setValue(null);',
'    apex.item("BTN_QUERY").setValue("Execute");',
'    // document.getElementById(''BTN_QUERY'').innerHTML = ''<i class="fa fa-search"></i>&nbsp;&nbsp;Execu<u>t</u>e'';',
'    apex.item("P8_OP_STATUS").setValue("QUERY");',
'    disableButtons();',
'    // apex.message.alert(''001, BTN_QUERY:''+$v("BTN_QUERY")+'', P8_OP_STATUS:''+$v("P8_OP_STATUS"));',
'} else if (($v("P8_BOOK_INFORMATION_ID") !== null && $v("P8_BOOK_INFORMATION_ID") !== "") && ($v("P8_BOOK_ID") === null || $v("P8_BOOK_ID") === ""))',
'{',
'    apex.item("P8_BOOK_ID").setValue($v("P8_BOOK_INFORMATION_ID"));',
'    apex.item("BTN_QUERY").setValue("Query");',
'    document.getElementById(''BTN_QUERY'').innerHTML = ''<i class="fa fa-search"></i>&nbsp;&nbsp;<u>Q</u>uery'';',
'    apex.item("P8_OP_STATUS").setValue("EXECUTE");',
'    enableButtons();',
'    // apex.message.alert(''002, BTN_QUERY:''+$v("BTN_QUERY")+'', P8_OP_STATUS:''+$v("P8_OP_STATUS"));    ',
'} else if (($v("P8_BOOK_INFORMATION_ID") === null || $v("P8_BOOK_INFORMATION_ID") === "") && ($v("P8_BOOK_ID") === null || $v("P8_BOOK_ID") === ""))',
'            // && ($v("BTN_QUERY") === ''Execute'') && ($v("P8_OP_STATUS") === ''QUERY''))',
'{',
'    apex.item("BTN_QUERY").setValue("Query");',
'    document.getElementById(''BTN_QUERY'').innerHTML = ''<i class="fa fa-search"></i>&nbsp;&nbsp;<u>Q</u>uery'';    ',
'    apex.item("P8_OP_STATUS").setValue("EXECUTE");',
'    enableButtons();',
'    // apex.message.alert(''003, BTN_QUERY:''+$v("BTN_QUERY")+'', P8_OP_STATUS:''+$v("P8_OP_STATUS"));',
'} ',
'// else if (($v("P8_BOOK_INFORMATION_ID") === null || $v("P8_BOOK_INFORMATION_ID") === "") && ($v("P8_BOOK_ID") === null || $v("P8_BOOK_ID") === "") ',
'//             // && ($v("BTN_QUERY") === ''Query''))',
'//              && ($v("P8_OP_STATUS") === ''EXECUTE''))',
'// {',
'//     apex.item("BTN_QUERY").setValue("Execute");',
'//     document.getElementById(''BTN_QUERY'').innerHTML = ''<i class="fa fa-search"></i>&nbsp;&nbsp;<u>Q</u>uery'';    ',
'//     apex.item("P8_OP_STATUS").setValue("QUERY");',
'//     enableButtons();',
'//     apex.message.alert(''004, BTN_QUERY:''+$v("BTN_QUERY")+'', P8_OP_STATUS:''+$v("P8_OP_STATUS"));',
'// }',
'// apex.message.alert(''xxx, $v("P8_BOOK_ID"):''+$v("P8_BOOK_ID")+'', $v("P8_BOOK_INFORMATION_ID"):''+$v("P8_BOOK_INFORMATION_ID")+'', BTN_QUERY:''+$v("BTN_QUERY")+'', P8_OP_STATUS:''+$v("P8_OP_STATUS"));'))
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
 p_id=>wwv_flow_imp.id(288393021480170111)
,p_event_id=>wwv_flow_imp.id(285897052511904649)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P8_ALERT_MESSAGE := NULL;',
'IF :P8_BOOK_ID IS NULL AND :P8_BOOK_INFORMATION_ID IS NULL AND :P8_OP_STATUS = ''EXECUTE'' THEN',
'    BEGIN',
'        SELECT A.BOOK_INFORMATION_ID,',
'               A.BOOK_INFORMATION_ID,',
'               A.PUBLISHER_COMPANY_ID,',
'               A.PUBLISHER_COMPANY_DESC,',
'               A.NO_OF_COPIES,',
'               A.DDC_NO,',
'               A.CATAGORY_ID,',
'               A.PUBLISHING_PLACE_ID,',
'               A.PUBLISHING_PLACE,',
'               A.ISBN,',
'               A.PACKAGE_PRICE,',
'               A.TITLE,',
'               A.PUBLISHING_YEAR,',
'               A.PAGES,',
'               A.CURRENCY_ID,',
'               A.SUB_TITLE,',
'               A.BOOK_STATE,',
'               A.ACTIVE,',
'               A.SERIES_ID,',
'               A.REMARKS,',
'               A.EDITION_NO,',
'               A.VOLUME_ID,',
'               A.VOLUME_NO,',
'               A.NO_OF_VOLUME,',
'               A.BOOK_INFO_ID',
'          INTO :P8_BOOK_ID,',
'               :P8_BOOK_INFORMATION_ID,',
'               :P8_PUBLISHER_COMPANY_ID,',
'               :P8_PUBLISHER_COMPANY_DESC,',
'               :P8_NO_OF_COPIES,',
'               :P8_DDC_NO,',
'               :P8_BOOK_CATEGORY_DESC,',
'               :P8_PUBLISHING_PLACE_ID,',
'               :P8_PUBLISHING_PLACE,',
'               :P8_ISBN_ISSN,',
'               :P8_PACKAGE_PRICE,',
'               :P8_TITLE,',
'               :P8_PUBLISHING_YEAR,',
'               :P8_PAGES,',
'               :P8_CURRENCY,',
'               :P8_SUB_TITLE,',
'               :P8_BOOK_STATE,',
'               :P8_ACTIVE,',
'               :P8_SERIES,',
'               :P8_NOTES,',
'               :P8_EDITION,',
'               :P8_VOLUME_ID,',
'               :P8_VOLUME_NO,',
'               :P8_NO_OF_VOLUME,',
'               :P8_BOOK_INFO_ID',
'          FROM (SELECT T1.BOOK_INFORMATION_ID,',
'                       T2.PUBLISHER_COMPANY_ID,',
'                       (SELECT T3.DESCRIPTION ',
'                  		  FROM SKM_LIBRARY.PUBLISHER T3',
'                		 WHERE T3.PUBLISHER_COMPANY_ID = T2.PUBLISHER_COMPANY_ID',
'                		   AND T3.ORGANIZATION_ID = T1.ORGANIZATION_ID) AS PUBLISHER_COMPANY_DESC,',
'                       T2.NO_OF_COPIES,',
'                       T1.DDC_NO,',
'                       T1.CATAGORY_ID,',
'                       T2.PUBLISHING_PLACE_ID,',
'                       (SELECT P.DESCRIPTION',
'                          FROM ICU.SCORE_PARAMETERS P ',
'                         WHERE P.SCORE_PARAMETER_ID = T2.PUBLISHING_PLACE_ID) AS PUBLISHING_PLACE,',
'                       T2.ISBN,',
'                       T1.PACKAGE_PRICE,',
'                       T1.TITLE,',
'                       T2.PUBLISHING_YEAR,',
'                       T2.PAGES,',
'                       T1.CURRENCY_ID,',
'                    --    (SELECT T.SHORT_DESCRIPTION ',
'                 	-- 	  FROM DEFINITIONS.CURRENCY T',
'                	-- 	  WHERE T.CURRENCY_ID = T1.CURRENCY_ID) AS CURRENCY_DESC,',
'                       T1.SUB_TITLE,',
'                       T2.BOOK_STATE,',
'                       T2.ACTIVE,',
'                       T1.SERIES_ID,',
'                       T1.REMARKS,',
'                       T1.EDITION_NO,',
'                       T2.VOLUME_ID,',
'                       T2.VOLUME_ID AS VOLUME_NO,',
'                       T1.NO_OF_VOLUME,',
'                       T1.BOOK_INFORMATION_ID AS BOOK_INFO_ID',
'                  FROM SKM_LIBRARY.BOOK_INFORMATION        T1,',
'                       SKM_LIBRARY.BOOK_VOLUME_INFORMATION T2',
'                 WHERE T1.BOOK_INFORMATION_ID = T2.BOOK_INFORMATION_ID',
'                   AND T1.ORGANIZATION_ID = T2.ORGANIZATION_ID',
'                   AND T1.BOOK_INFORMATION_ID = NVL(:P8_BOOK_ID, T1.BOOK_INFORMATION_ID)',
'                   AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'                ORDER BY T1.BOOK_INFORMATION_ID ASC) A',
'        WHERE ROWNUM = 1;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'           :P8_ALERT_MESSAGE := ''No record found for your search query criteria...'';',
'        WHEN OTHERS THEN',
'           :P8_ALERT_MESSAGE := ''No record found for your search query criteria...'';',
'    END;',
'    RETURN;',
'END IF;'))
,p_attribute_02=>'P8_BOOK_ID,P8_OP_STATUS'
,p_attribute_03=>'P8_BOOK_INFORMATION_ID,P8_PUBLISHER_COMPANY_DESC,P8_NO_OF_COPIES,P8_DDC_NO,P8_BOOK_CATEGORY_DESC,P8_PUBLISHING_PLACE,P8_ISBN_ISSN,P8_PACKAGE_PRICE,P8_TITLE,P8_PUBLISHING_YEAR,P8_PAGES,P8_CURRENCY_ID,P8_CURRENCY,P8_SUB_TITLE,P8_BOOK_STATE,P8_ACTIVE,P8'
||'_SERIES,P8_NOTES,P8_EDITION,P8_VOLUME_ID,P8_VOLUME_NO,P8_NO_OF_VOLUME,P8_BOOK_INFO_ID,P8_BOOK_ID,P8_ALERT_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288393659684170117)
,p_event_id=>wwv_flow_imp.id(285897052511904649)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P8_ALERT_MESSAGE := NULL;',
'IF :P8_BOOK_ID IS NOT NULL AND :P8_BOOK_INFORMATION_ID IS NULL AND :P8_OP_STATUS = ''EXECUTE'' THEN',
'    BEGIN',
'        SELECT A.BOOK_INFORMATION_ID,',
'               A.BOOK_INFORMATION_ID,',
'               A.PUBLISHER_COMPANY_ID,',
'               A.PUBLISHER_COMPANY_DESC,',
'               A.NO_OF_COPIES,',
'               A.DDC_NO,',
'               A.CATAGORY_ID,',
'               A.PUBLISHING_PLACE_ID,',
'               A.PUBLISHING_PLACE,',
'               A.ISBN,',
'               A.PACKAGE_PRICE,',
'               A.TITLE,',
'               A.PUBLISHING_YEAR,',
'               A.PAGES,',
'               A.CURRENCY_ID,',
'               A.SUB_TITLE,',
'               A.BOOK_STATE,',
'               A.ACTIVE,',
'               A.SERIES_ID,',
'               A.REMARKS,',
'               A.EDITION_NO,',
'               A.VOLUME_ID,',
'               A.VOLUME_NO,',
'               A.NO_OF_VOLUME,',
'               A.BOOK_INFO_ID',
'          INTO :P8_BOOK_ID,',
'               :P8_BOOK_INFORMATION_ID,',
'               :P8_PUBLISHER_COMPANY_ID,',
'               :P8_PUBLISHER_COMPANY_DESC,',
'               :P8_NO_OF_COPIES,',
'               :P8_DDC_NO,',
'               :P8_BOOK_CATEGORY_DESC,',
'               :P8_PUBLISHING_PLACE_ID,',
'               :P8_PUBLISHING_PLACE,',
'               :P8_ISBN_ISSN,',
'               :P8_PACKAGE_PRICE,',
'               :P8_TITLE,',
'               :P8_PUBLISHING_YEAR,',
'               :P8_PAGES,',
'               :P8_CURRENCY,',
'               :P8_SUB_TITLE,',
'               :P8_BOOK_STATE,',
'               :P8_ACTIVE,',
'               :P8_SERIES,',
'               :P8_NOTES,',
'               :P8_EDITION,',
'               :P8_VOLUME_ID,',
'               :P8_VOLUME_NO,',
'               :P8_NO_OF_VOLUME,',
'               :P8_BOOK_INFO_ID',
'          FROM (SELECT T1.BOOK_INFORMATION_ID,',
'                       T2.PUBLISHER_COMPANY_ID,',
'                       (SELECT T3.DESCRIPTION ',
'                  		  FROM SKM_LIBRARY.PUBLISHER T3',
'                		 WHERE T3.PUBLISHER_COMPANY_ID = T2.PUBLISHER_COMPANY_ID',
'                		   AND T3.ORGANIZATION_ID = T1.ORGANIZATION_ID) AS PUBLISHER_COMPANY_DESC,',
'                       T2.NO_OF_COPIES,',
'                       T1.DDC_NO,',
'                       T1.CATAGORY_ID,',
'                       T2.PUBLISHING_PLACE_ID,',
'                       (SELECT P.DESCRIPTION',
'                          FROM ICU.SCORE_PARAMETERS P ',
'                         WHERE P.SCORE_PARAMETER_ID = T2.PUBLISHING_PLACE_ID) AS PUBLISHING_PLACE,',
'                       T2.ISBN,',
'                       T1.PACKAGE_PRICE,',
'                       T1.TITLE,',
'                       T2.PUBLISHING_YEAR,',
'                       T2.PAGES,',
'                       T1.CURRENCY_ID,',
'                       T1.SUB_TITLE,',
'                       T2.BOOK_STATE,',
'                       T2.ACTIVE,',
'                       T1.SERIES_ID,',
'                       T1.REMARKS,',
'                       T1.EDITION_NO,',
'                       T2.VOLUME_ID,',
'                       T2.VOLUME_ID AS VOLUME_NO,',
'                       T1.NO_OF_VOLUME,',
'                       T1.BOOK_INFORMATION_ID AS BOOK_INFO_ID',
'                  FROM SKM_LIBRARY.BOOK_INFORMATION        T1,',
'                       SKM_LIBRARY.BOOK_VOLUME_INFORMATION T2',
'                 WHERE T1.BOOK_INFORMATION_ID = T2.BOOK_INFORMATION_ID',
'                   AND T1.ORGANIZATION_ID = T2.ORGANIZATION_ID',
'                   AND T1.BOOK_INFORMATION_ID = NVL(:P8_BOOK_ID, T1.BOOK_INFORMATION_ID)',
'                   AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'                ORDER BY T1.BOOK_INFORMATION_ID ASC) A',
'        WHERE ROWNUM = 1;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'           :P8_ALERT_MESSAGE := ''No record found for your search query criteria...'';',
'        WHEN OTHERS THEN',
'           :P8_ALERT_MESSAGE := ''No record found for your search query criteria...'';',
'    END;',
'    RETURN;    ',
'END IF;'))
,p_attribute_02=>'P8_BOOK_ID,P8_OP_STATUS'
,p_attribute_03=>'P8_BOOK_INFORMATION_ID,P8_PUBLISHER_COMPANY_DESC,P8_NO_OF_COPIES,P8_DDC_NO,P8_BOOK_CATEGORY_DESC,P8_PUBLISHING_PLACE,P8_ISBN_ISSN,P8_PACKAGE_PRICE,P8_TITLE,P8_PUBLISHING_YEAR,P8_PAGES,P8_CURRENCY_ID,P8_CURRENCY,P8_SUB_TITLE,P8_BOOK_STATE,P8_ACTIVE,P8'
||'_SERIES,P8_NOTES,P8_EDITION,P8_VOLUME_ID,P8_VOLUME_NO,P8_NO_OF_VOLUME,P8_BOOK_INFO_ID,P8_BOOK_ID,P8_ALERT_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288392906101170110)
,p_event_id=>wwv_flow_imp.id(285897052511904649)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_BOOK_INFORMATION_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303514075119334908)
,p_event_id=>wwv_flow_imp.id(285897052511904649)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Toggle Read-Only state of the page item',
'var item = $(''#P8_BOOK_INFORMATION_ID''); // Replace with your page item''s ID',
'',
'// Check the current state and toggle',
'if ($v("P8_BOOK_INFORMATION_ID") !== "" && $v("P8_BOOK_INFORMATION_ID") !== null && !item.prop(''readonly'')) { ',
'    item.prop(''readonly'', true); // Make it read-only',
'} '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288394291271170123)
,p_name=>'DA_DELETE - Click'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(281628273347570088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288394349014170124)
,p_event_id=>wwv_flow_imp.id(288394291271170123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vError     VARCHAR2(4000);',
'    vStop	   VARCHAR2(4000);',
'    vAlertText VARCHAR2(4000);',
'    vRowId     ROWID;',
'    vCount     NUMBER := 0;',
'BEGIN',
'    :P8_ALERT_MESSAGE := NULL;',
'    vStop := ''N'';',
'    vAlertText := NULL;',
'    IF :P8_BOOK_INFO_ID IS NOT NULL THEN',
'        BEGIN',
'            SELECT COUNT(*)',
'              INTO vCount',
'              FROM SKM_LIBRARY.BOOK_SUBJECT_INFORMATION T',
'             WHERE T.BOOK_INFORMATION_ID = :P8_BOOK_INFO_ID',
'               AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'',
'            IF vCount > 0 THEN',
'                vAlertText := ''Parent record can not be deleted while child record(s) exists...'';',
'                :P8_ALERT_MESSAGE := vAlertText||'', ABRAR - , 002, :P8_BOOK_INFO_ID:''||:P8_BOOK_INFO_ID;',
'                RETURN;',
'            END IF;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''N'';',
'                vAlertText := NULL;',
'                :P8_ALERT_MESSAGE := NULL;',
'            WHEN OTHERS THEN',
'                vStop := ''N'';',
'                vAlertText := NULL;',
'                :P8_ALERT_MESSAGE := NULL;',
'        END;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'              INTO vCount',
'              FROM SKM_LIBRARY.BOOK_AUTHOR T',
'             WHERE T.BOOK_INFORMATION_ID = :P8_BOOK_INFO_ID',
'               AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'',
'            IF vCount > 0 THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Parent record can not be deleted while child record(s) exists...'';',
'                :P8_ALERT_MESSAGE := vAlertText||'', ABRAR - , 003'';',
'                RETURN;',
'            END IF;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''N'';',
'                vAlertText := NULL;',
'            WHEN OTHERS THEN',
'                vStop := ''N'';',
'                vAlertText := NULL;',
'        END;',
'',
'        IF vCount = 0 AND vStop = ''N'' AND vAlertText IS NULL THEN',
'            -- BEGIN',
'            --     SELECT ROWID',
'            --       INTO vRowId',
'            --       FROM SKM_LIBRARY.BOOK_INFORMATION T1',
'            --      WHERE T1.BOOK_INFORMATION_ID = :P8_BOOK_INFO_ID',
'            --        AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'            --        FOR DELETETION NOWAIT;',
'            -- EXCEPTION',
'            --     WHEN NO_DATA_FOUND THEN',
'            --         NULL;',
'            --     WHEN OTHERS THEN',
'            --         NULL;',
'            -- END;',
'            BEGIN',
'                IF :P8_BOOK_INFO_ID IS NOT NULL THEN',
'                    DELETE FROM SKM_LIBRARY.BOOK_VOLUME_INFORMATION T1',
'                     WHERE T1.BOOK_INFORMATION_ID = :P8_BOOK_INFO_ID',
'                       AND T1.VOLUME_ID = 1',
'                       AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'                    DELETE FROM SKM_LIBRARY.BOOK_INFORMATION T1',
'                     WHERE T1.BOOK_INFORMATION_ID = :P8_BOOK_INFO_ID',
'                       AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'',
'                    COMMIT;',
'                    :P8_BOOK_ID := NULL;',
'                    :P8_BOOK_INFO_ID := NULL;',
'                    :P8_OP_STATUS := ''DELETION'';',
'                    :P8_ALERT_MESSAGE := ''Record deleted...'';',
'                END IF;',
'                --  WHERE T1.BOOK_INFORMATION_ID = :P8_BOOK_INFO_ID',
'                --    AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                :P8_ALERT_MESSAGE := ''Record can not be deleted, due to ''||SQLERRM;',
'            END;',
'        END IF;',
'    END IF;',
'END;'))
,p_attribute_02=>'P8_BOOK_INFO_ID'
,p_attribute_03=>'P8_ALERT_MESSAGE,P8_BOOK_INFORMATION_ID,P8_BOOK_INFO_ID,P8_ND_BOOK_INFO_ID,P8_BOOK_ID,P8_OP_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303515420103334922)
,p_event_id=>wwv_flow_imp.id(288394291271170123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_BOOK_INFORMATION_ID IS NOT NULL AND :P8_OP_STATUS = ''DELETION'' THEN',
'    :P8_BOOK_INFORMATION_ID := NULL;',
'    :P8_PUBLISHER_COMPANY_ID := NULL;',
'    :P8_PUBLISHER_COMPANY_DESC := NULL;',
'    :P8_PUBLISHING_PLACE_ID := NULL;',
'    :P8_NO_OF_COPIES := NULL;',
'    :P8_DDC_NO := NULL;',
'    :P8_BOOK_CATEGORY_DESC := NULL;',
'    :P8_PUBLISHING_PLACE := NULL;',
'    :P8_ISBN_ISSN := NULL;',
'    :P8_PACKAGE_PRICE := NULL;',
'    :P8_TITLE := NULL;',
'    :P8_PUBLISHING_YEAR := NULL;',
'    :P8_PAGES := NULL;',
'    :P8_CURRENCY := NULL;',
'    :P8_SUB_TITLE := NULL;',
'    :P8_BOOK_STATE := NULL;',
'    :P8_ACTIVE := ''N'';',
'    :P8_SERIES := NULL;',
'    :P8_NOTES := NULL;',
'    :P8_EDITION := NULL;',
'    :P8_VOLUME_NO := NULL;',
'    :P8_NO_OF_VOLUME := NULL;',
'END IF;'))
,p_attribute_02=>'P8_BOOK_ID,P8_OP_STATUS'
,p_attribute_03=>'P8_BOOK_INFORMATION_ID,P8_PUBLISHER_COMPANY_DESC,P8_NO_OF_COPIES,P8_DDC_NO,P8_BOOK_CATEGORY_DESC,P8_PUBLISHING_PLACE,P8_ISBN_ISSN,P8_PACKAGE_PRICE,P8_TITLE,P8_PUBLISHING_YEAR,P8_PAGES,P8_CURRENCY,P8_SUB_TITLE,P8_BOOK_STATE,P8_ACTIVE,P8_SERIES,P8_NOTE'
||'S,P8_EDITION,P8_VOLUME_NO,P8_NO_OF_VOLUME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288394744573170128)
,p_name=>'DA_P8_ND_AUTHOR_DELETION_FLAG - Change'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_ND_AUTHOR_DELETION_FLAG'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288394815593170129)
,p_event_id=>wwv_flow_imp.id(288394744573170128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Delete Row'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P8_ND_AUTHOR_DELETION_FLAG = ''Y'' THEN',
'    DELETE FROM SKM_LIBRARY.BOOK_AUTHOR BA',
'     WHERE BA.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'       AND BA.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'       AND BA.AUTHOR_ID = :P8_ND_AUTHOR_ID;',
'ELSE',
'    NULL;',
'END IF;'))
,p_attribute_02=>'P8_BOOK_ID,P8_ND_AUTHOR_ID,P8_ND_AUTHOR_DELETION_FLAG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288394931465170130)
,p_event_id=>wwv_flow_imp.id(288394744573170128)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Grid'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("ig_Book_Author").widget().interactiveGrid("getViews", "grid").model.clearChanges();',
'apex.region("ig_Book_Author").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288395598302170136)
,p_event_id=>wwv_flow_imp.id(288394744573170128)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Record deleted c'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288395096196170131)
,p_name=>'Set Deletion Flag'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288393730942170118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288395188825170132)
,p_event_id=>wwv_flow_imp.id(288395096196170131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.confirm(''Are you sure to delete this record...?'', function(isOk) {',
'    ',
'    if (isOk) {',
'        apex.item(''P8_ND_SUBJECT_DELETION_FLAG'').setValue('''');',
'        apex.item(''P8_ND_SUBJECT_DELETION_FLAG'').setValue(''Y'');',
'        ',
'    } else {',
'        apex.item(''P8_ND_SUBJECT_DELETION_FLAG'').setValue('''');',
'        apex.item(''P8_ND_SUBJECT_DELETION_FLAG'').setValue(''N'');',
'    }',
'',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288395797908170138)
,p_name=>'DA_IG_Book_Material_Information - Selection Change'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(560813521642522522)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288395890175170139)
,p_event_id=>wwv_flow_imp.id(288395797908170138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P8_ND_MATERIAL_ID",_.ig_Book_Material_Information.MATERIAL_ID); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288396251000170143)
,p_name=>'DA_IG_Book Author - Selection Change'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(560813641995522524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288396324427170144)
,p_event_id=>wwv_flow_imp.id(288396251000170143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s("P8_ND_AUTHOR_ID",_.ig_Book_Author.AUTHOR_ID); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288396789026170148)
,p_name=>'DA_Alert_Text - Change'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288396899800170149)
,p_event_id=>wwv_flow_imp.id(288396789026170148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.alert($v("P8_ALERT_TEXT"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296054440464938007)
,p_name=>'DA_CLEAER - Click'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(296054304201938006)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296054536051938008)
,p_event_id=>wwv_flow_imp.id(296054440464938007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P8_BOOK_ID                 := NULL;',
'    :P8_BOOK_INFORMATION_ID     := NULL;',
'    :P8_PUBLISHER_COMPANY_ID    := NULL;',
'    :P8_PUBLISHER_COMPANY_DESC  := NULL;',
'    :P8_NO_OF_COPIES            := NULL;',
'    :P8_DDC_NO                  := NULL;',
'    :P8_BOOK_CATEGORY_DESC      := NULL;',
'    :P8_PUBLISHING_PLACE_ID     := NULL;',
'    :P8_PUBLISHING_PLACE        := NULL;',
'    :P8_ISBN_ISSN               := NULL;',
'    :P8_PACKAGE_PRICE           := NULL;',
'    :P8_TITLE                   := NULL;',
'    :P8_PUBLISHING_YEAR         := NULL;',
'    :P8_PAGES                   := NULL;',
'    :P8_CURRENCY                := NULL;',
'    :P8_SUB_TITLE               := NULL;',
'    :P8_BOOK_STATE              := NULL;',
'    :P8_ACTIVE                  := NULL;',
'    :P8_SERIES                  := NULL;',
'    :P8_NOTES                   := NULL;',
'    :P8_EDITION                 := NULL;',
'    :P8_VOLUME_ID               := NULL;',
'    :P8_VOLUME_NO               := NULL;',
'    :P8_NO_OF_VOLUME            := NULL;',
'    :P8_BOOK_INFO_ID            := NULL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;'))
,p_attribute_03=>'P8_BOOK_ID,P8_BOOK_INFORMATION_ID,P8_PUBLISHER_COMPANY_DESC,P8_NO_OF_COPIES,P8_DDC_NO,P8_BOOK_CATEGORY_DESC,P8_PUBLISHING_PLACE,P8_ISBN_ISSN,P8_PACKAGE_PRICE, P8_TITLE,P8_PUBLISHING_YEAR,P8_PAGES,P8_CURRENCY,P8_SUB_TITLE,P8_BOOK_STATE,P8_ACTIVE,P8_SE'
||'RIES,P8_NOTES,P8_EDITION,P8_VOLUME_ID,P8_VOLUME_NO,P8_NO_OF_VOLUME,P8_BOOK_INFO_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296054684678938009)
,p_event_id=>wwv_flow_imp.id(296054440464938007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set Focus'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_PUBLISHER_COMPANY_DESC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(303514804892334916)
,p_name=>'DA_P8_ALERT_MESSAGE - Change'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_ALERT_MESSAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303514949128334917)
,p_event_id=>wwv_flow_imp.id(303514804892334916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let alertMessage = $v("P8_ALERT_MESSAGE");',
'if (alertMessage !== null && alertMessage !== ""){',
'    apex.message.alert(alertMessage);',
'    apex.item("P8_ALERT_MESSAGE").setValue("");',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(296054756930938010)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(560813356482522521)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Information - Save Parent Record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'--   vData      SKM_LIBRARY.BOOK_SUBJECT_INFORMATION%ROWTYPE;--SKM_LIBRARY.PKG_ACCESSION_INFORMATION.ACCESSION_INFORMATION_TBL;',
'  vError       VARCHAR2(4000);',
'  vStop		   VARCHAR2(1);',
'  vAlertText   VARCHAR2(4000);',
'  vRowId       ROWID;',
'  vBook_Conter VARCHAR2(15); ',
'BEGIN',
'    IF :P8_BOOK_ID IS NULL THEN    ',
'        BEGIN',
'            SELECT LPAD(MAX(TO_NUMBER(T1.BOOK_INFORMATION_ID)+1), 9, ''0'')',
'              INTO vBook_Conter',
'              FROM SKM_LIBRARY.BOOK_INFORMATION T1',
'             WHERE T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vBook_Conter := ''000000001'';',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        :P8_BOOK_ID := vBook_Conter;',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.BOOK_INFORMATION (BOOK_INFORMATION_ID, ',
'                                                      CATAGORY_ID, ',
'                                                      DDC_NO, ',
'                                                      TITLE, ',
'                                                      SUB_TITLE, ',
'                                                      SERIES_ID, ',
'                                                      EDITION_NO, ',
'                                                      PACKAGE_PRICE, ',
'                                                      CURRENCY_ID, ',
'                                                      NO_OF_VOLUME, ',
'                                                      REMARKS, ',
'                                                      --LANGUAGE_ID, ',
'                                                      --ISSUANCE_REFERENCE, ',
'                                                      ORGANIZATION_ID, ',
'                                                      LOCATION_ID, ',
'                                                      ORDER_LOCATION_ID)',
'                                              VALUES (:P8_BOOK_ID,',
'                                                      :P8_BOOK_CATEGORY_DESC,',
'                                                      :P8_DDC_NO,',
'                                                      :P8_TITLE,',
'                                                      :P8_SUB_TITLE,',
'                                                      :P8_SERIES,',
'                                                      :P8_EDITION,',
'                                                      :P8_PACKAGE_PRICE,',
'                                                      :P8_CURRENCY,',
'                                                      1, --:P8_VOLUME_NO,',
'                                                      :P8_NOTES,',
'                                                      :GV_ORGANIZATION_ID,',
'                                                      :GV_LOCATION_ID,',
'                                                      :GV_ORDER_LOCATION_ID);',
'        END;',
'    ELSIF :P8_BOOK_ID IS NOT NULL THEN    ',
'        BEGIN',
'            UPDATE SKM_LIBRARY.BOOK_INFORMATION BI',
'               SET CATAGORY_ID = :P8_BOOK_CATEGORY_DESC,',
'                   DDC_NO = :P8_DDC_NO, ',
'                   TITLE = :P8_TITLE, ',
'                   SUB_TITLE = :P8_SUB_TITLE, ',
'                   EDITION_NO = :P8_EDITION, ',
'                   PACKAGE_PRICE = :P8_PACKAGE_PRICE, ',
'                   CURRENCY_ID = :P8_CURRENCY, ',
'                   NO_OF_VOLUME = 1,',
'                   REMARKS = :P8_NOTES,',
'                   SERIES_ID = :P8_SERIES,',
'                   ORGANIZATION_ID = :GV_ORGANIZATION_ID,',
'                   LOCATION_ID = :GV_LOCATION_ID,',
'                   ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'             WHERE BI.BOOK_INFORMATION_ID = :P8_BOOK_ID;',
'        END;        ',
'    END IF;',
'    IF (vStop = ''Y'') THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => vAlertText,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    ELSE',
'        COMMIT;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>296054756930938010
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(281606494371570034)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(560813356482522521)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Subject Information - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'--   vData      SKM_LIBRARY.BOOK_SUBJECT_INFORMATION%ROWTYPE;--SKM_LIBRARY.PKG_ACCESSION_INFORMATION.ACCESSION_INFORMATION_TBL;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'BEGIN',
'   NULL;',
'--   CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        :BOOK_INFORMATION_ID := :P8_BOOK_ID;',
'        :ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.BOOK_SUBJECT_INFORMATION (SUBJECT_ID, ',
'                                                              BOOK_INFORMATION_ID, ',
'                                                              VOLUME_ID,',
'                                                              ORGANIZATION_ID, ',
'                                                              LOCATION_ID, ',
'                                                              ORDER_LOCATION_ID)',
'                                                      VALUES (:SUBJECT_DESC, --SUBJECT_ID, ',
'                                                              :P8_BOOK_ID,',
'                                                              1,',
'                                                              :GV_ORGANIZATION_ID, ',
'                                                              :GV_LOCATION_ID, ',
'                                                              :GV_ORDER_LOCATION_ID);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to insert the record(s). Due to ''||SQLERRM;',
'        END;',
'    WHEN ''U'' THEN',
'        :BOOK_INFORMATION_ID := :P8_BOOK_ID;',
'        :ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.BOOK_SUBJECT_INFORMATION T',
'             WHERE T.SUBJECT_ID = :P8_ND_SUBJECT_ID',
'               AND T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'               AND T.VOLUME_ID = :VOLUME_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'            ',
'            UPDATE SKM_LIBRARY.BOOK_SUBJECT_INFORMATION T',
'               SET T.SUBJECT_ID = :SUBJECT_DESC',
'             WHERE  ROWID = vRowId;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be updated...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record(s). Due to ''||SQLERRM;',
'        END;',
'    WHEN ''D'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.BOOK_SUBJECT_INFORMATION T',
'             WHERE T.SUBJECT_ID = :P8_ND_SUBJECT_ID',
'               AND T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'               AND T.VOLUME_ID = :VOLUME_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'            ',
'            DELETE FROM SKM_LIBRARY.BOOK_SUBJECT_INFORMATION',
'             WHERE ROWID = vRowId;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be deleted...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record(s). Due to ''||SQLERRM;',
'        END;',
'	END CASE;',
' ',
'    IF (vStop = ''Y'') THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => vAlertText,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    ELSE',
'        COMMIT;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>281606494371570034
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(281594735671570011)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(560813521642522522)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Material Information - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --vData      SKM_LIBRARY.BOOK_MATERIAL_INFORMATION%ROWTYPE;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        :BOOK_INFORMATION_ID := :P8_BOOK_ID;        ',
'        :ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.BOOK_MATERIAL_INFORMATION (MATERIAL_ID, ',
'                                                              BOOK_INFORMATION_ID, ',
'                                                              VOLUME_ID,',
'                                                              ORGANIZATION_ID, ',
'                                                              LOCATION_ID, ',
'                                                              ORDER_LOCATION_ID)',
'                                                      VALUES (:MATERIAL_DESC,',
'                                                              :P8_BOOK_ID,',
'                                                              :P8_VOLUME_NO,',
'                                                              :GV_ORGANIZATION_ID, ',
'                                                              :GV_LOCATION_ID, ',
'                                                              :GV_ORDER_LOCATION_ID);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to insert record. Due to ''||SQLERRM;',
'        END;',
'    WHEN ''U'' THEN',
'        :BOOK_INFORMATION_ID := :P8_BOOK_ID;        ',
'        :ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.BOOK_MATERIAL_INFORMATION T',
'             WHERE T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'               AND T.MATERIAL_ID = :P8_ND_MATERIAL_ID',
'               AND T.VOLUME_ID = :VOLUME_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'            ',
'            UPDATE SKM_LIBRARY.BOOK_MATERIAL_INFORMATION T',
'               SET T.MATERIAL_ID = :P8_ND_MATERIAL_ID,',
'                   T.BOOK_INFORMATION_ID = :BOOK_INFORMATION_ID, ',
'                   T.VOLUME_ID = :VOLUME_ID,',
'                   T.ORGANIZATION_ID = :GV_ORGANIZATION_ID, ',
'                   T.LOCATION_ID = :GV_LOCATION_ID, ',
'                   T.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'            WHERE  ROWID = vRowId;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No data found to be updated...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record(s). Due to ''||SQLERRM;',
'        END;',
'        ',
'    WHEN ''D'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.BOOK_MATERIAL_INFORMATION T',
'             WHERE T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'               AND T.MATERIAL_ID = :MATERIAL_DESC',
'               AND T.VOLUME_ID = :VOLUME_ID',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'            ',
'            DELETE FROM SKM_LIBRARY.BOOK_MATERIAL_INFORMATION',
'             WHERE ROWID = vRowId;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be deleted...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record(s). Due to ''||SQLERRM;',
'        END;',
'	END CASE;',
' ',
'    IF (vStop = ''Y'') THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => vAlertText,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    ELSE',
'        COMMIT;',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record saved'
,p_internal_uid=>281594735671570011
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(281611920459570043)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(560813641995522524)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Book Author - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --vData      SKM_LIBRARY.BOOK_MATERIAL_INFORMATION%ROWTYPE;',
'  vError     VARCHAR2(4000);',
'  vStop		 VARCHAR2(4000);',
'  vAlertText VARCHAR2(4000);',
'  vRowId     ROWID;',
'',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'        :BOOK_INFORMATION_ID := :P8_BOOK_ID;        ',
'        :ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'        BEGIN',
'            INSERT INTO SKM_LIBRARY.BOOK_AUTHOR (BOOK_INFORMATION_ID, ',
'                                                 AUTHOR_ID,',
'                                                 ORGANIZATION_ID, ',
'                                                 LOCATION_ID, ',
'                                                 ORDER_LOCATION_ID)',
'                                         VALUES (:P8_BOOK_ID,',
'                                                 :AUTHOR_DESC,',
'                                                 :GV_ORGANIZATION_ID, ',
'                                                 :GV_LOCATION_ID, ',
'                                                 :GV_ORDER_LOCATION_ID);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to insert the record(s). Due to ''||SQLERRM;',
'        END;',
'    WHEN ''U'' THEN',
'        :BOOK_INFORMATION_ID := :P8_BOOK_ID;        ',
'        :ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.BOOK_AUTHOR T',
'             WHERE T.AUTHOR_ID = :AUTHOR_DESC',
'               AND T.ORGANIZATION_ID = :ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'            ',
'            UPDATE SKM_LIBRARY.BOOK_AUTHOR T',
'               SET T.AUTHOR_ID = :AUTHOR_DESC,',
'                   T.BOOK_INFORMATION_ID = :BOOK_INFORMATION_ID, ',
'                   T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'            WHERE  ROWID = vRowId;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be updated...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to update the record(s). Due to ''||SQLERRM;',
'        END;',
'        ',
'    WHEN ''D'' THEN',
'        BEGIN',
'            SELECT ROWID',
'              INTO vRowId',
'              FROM SKM_LIBRARY.BOOK_AUTHOR T',
'             WHERE T.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'               AND T.AUTHOR_ID = :AUTHOR_ID',
'               AND T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'               FOR UPDATE NOWAIT;',
'            ',
'            DELETE FROM SKM_LIBRARY.BOOK_AUTHOR T',
'             WHERE ROWID = vRowId;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                vStop := ''Y'';',
'                vAlertText := ''No record found to be deleted...'';',
'            WHEN OTHERS THEN',
'                vStop := ''Y'';',
'                vAlertText := ''Unable to delete the record(s). Due to ''||SQLERRM;',
'        END;',
'	END CASE;',
' ',
'    IF (vStop = ''Y'') THEN   ',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => vAlertText,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    ELSE',
'        COMMIT;',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>281611920459570043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(281629761423570499)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Book Information'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T1.BOOK_INFORMATION_ID,',
'    --    T2.PUBLISHER_COMPANY_ID,',
'       (SELECT T3.DESCRIPTION ',
'  		  FROM SKM_LIBRARY.PUBLISHER T3',
'		 WHERE T3.PUBLISHER_COMPANY_ID = T2.PUBLISHER_COMPANY_ID',
'		   AND T3.ORGANIZATION_ID = T1.ORGANIZATION_ID) AS PUBLISHER_COMPANY_DESC,',
'       T2.NO_OF_COPIES,',
'       T1.DDC_NO,',
'       T1.CATAGORY_ID,',
'    --    T2.PUBLISHING_PLACE_ID,',
'       (SELECT P.DESCRIPTION',
'          FROM ICU.SCORE_PARAMETERS P ',
'         WHERE P.SCORE_PARAMETER_ID = T2.PUBLISHING_PLACE_ID) AS PUBLISHING_PLACE,',
'       T2.ISBN,',
'       T1.PACKAGE_PRICE,',
'       T1.TITLE,',
'       T2.PUBLISHING_YEAR,',
'       T2.PAGES,',
'       T1.CURRENCY_ID,',
'    --    (SELECT T.SHORT_DESCRIPTION ',
' 	-- 	  FROM DEFINITIONS.CURRENCY T',
'	-- 	  WHERE T.CURRENCY_ID = T1.CURRENCY_ID) AS CURRENCY_DESC,',
'       T1.SUB_TITLE,',
'       T2.BOOK_STATE,',
'       T2.ACTIVE,',
'       T1.SERIES_ID,',
'       T1.REMARKS,',
'       T1.EDITION_NO,',
'       T2.VOLUME_ID,',
'       T2.VOLUME_ID AS VOLUME_NO,',
'       T1.NO_OF_VOLUME,',
'       T1.BOOK_INFORMATION_ID AS BOOK_INFO_ID',
'  INTO :P8_BOOK_INFORMATION_ID,',
'    --    :P8_PUBLISHER_COMPANY_ID,',
'       :P8_PUBLISHER_COMPANY_DESC,',
'       :P8_NO_OF_COPIES,',
'       :P8_DDC_NO,',
'       :P8_BOOK_CATEGORY_DESC,',
'    --    :P8_PUBLISHING_PLACE_ID,',
'       :P8_PUBLISHING_PLACE,',
'       :P8_ISBN_ISSN,',
'       :P8_PACKAGE_PRICE,',
'       :P8_TITLE,',
'       :P8_PUBLISHING_YEAR,',
'       :P8_PAGES,',
'       :P8_CURRENCY,',
'       :P8_SUB_TITLE,',
'       :P8_BOOK_STATE,',
'       :P8_ACTIVE,',
'       :P8_SERIES,',
'       :P8_NOTES,',
'       :P8_EDITION,',
'       :P8_VOLUME_ID,',
'       :P8_VOLUME_NO,',
'       :P8_NO_OF_VOLUME,',
'       :P8_BOOK_INFO_ID',
'  FROM SKM_LIBRARY.BOOK_INFORMATION        T1,',
'       SKM_LIBRARY.BOOK_VOLUME_INFORMATION T2',
' WHERE T1.BOOK_INFORMATION_ID = T2.BOOK_INFORMATION_ID',
'   AND T1.ORGANIZATION_ID = T2.ORGANIZATION_ID',
'   AND T1.BOOK_INFORMATION_ID = :P8_BOOK_ID',
'   AND T1.ORGANIZATION_ID = :GV_ORGANIZATION_ID;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>281629761423570499
);
wwv_flow_imp.component_end;
end;
/

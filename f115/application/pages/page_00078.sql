prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_name=>'RAD_HDR_MRI_PERFORMANCE'
,p_alias=>'RAD-HDR-MRI-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_HDR_MRI_PERFORMANCE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function resize() {',
'    if ($(window).width() < 739) {',
'        $("#default").toggleClass(''classold classnew'');',
'    }',
'    else {',
'        $("#default").toggleClass(''classold classold'');',
'    }',
'}',
'$(window).on("resize", resize);',
'',
'',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P65_UNIT").hide();',
'apex.item("P65_SERVICE_NO").hide();',
'apex.item("P65_SERVICE_STATUS").hide();',
'apex.item("P65_RANK").hide();',
'apex.item("P65_FORMATION").hide();',
'',
'$(document).keydown(function (e) {',
'    // Set self as the current item in focus',
'    var self = $('':focus''),',
'        // Set the form by the current item in focus',
'        form = self.parents(''form:eq(0)''),',
'        focusable;',
'',
'    // Array of Indexable/Tab-able items',
'    focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'').filter('':visible'').filter(''[tabindex!=-1]'');',
'',
'    function enterKey() {',
'        if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) { // [Enter] key',
'            // If not a regular hyperlink/button/textarea',
'            // console.log(focusable);',
'            // console.log(self);',
'            if ($.inArray(self, focusable) && (!self.is(''a,button''))) {',
'                // Then prevent the default [Enter] key behaviour from submitting the form',
'                e.preventDefault();',
'            }',
'            var a = 0;',
'            if ($("#" + self.attr(''id'') + "_lov_btn").hasClass("a-Button--popupLOV")) {',
'                a = a + 1;',
'            } else {',
'                a = a + 1;',
'            }',
'            focusable.eq(focusable.index(self) + (e.shiftKey ? -1 : a)).focus();',
'',
'            // Otherwise follow the link/button as by design, or put new line in textarea',
'            // Focus on the next item (either previous or next depending on shift)',
'',
'            return false;',
'        }',
'    }',
'    // We need to capture the [Shift] key and check the [Enter] key either way.',
'    if (e.shiftKey) { enterKey() } else {',
'',
'        enterKey();',
'',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.a-GV-pageRange{',
'    display:none;',
'}',
'',
'.apex-item-datepicker--popup{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.apex-item-text apex-item-datepicker{',
'    background-color: #FFFFCC !important;',
'}',
'',
'',
'',
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radplanchecklist .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#radcheckdtl .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'/*#radchecklistdtl .a-GV-table td, #radchecklistdtl .a-GV-table th {',
'',
'    white-space: normal;',
'',
'}*/',
'',
'#radct .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#report_image_report img{',
'	height: 150px;',
'    width:  100px;',
'',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'YOUSAF'
,p_last_upd_yyyymmddhh24miss=>'20240221124734'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186575244785726021)
,p_plug_name=>'<b><p style="color:#8B0000">Anesthesia</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>5
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186777798934550313)
,p_plug_name=>'MRI Performance'
,p_region_name=>'radct'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>7
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RD.RADIATION_NO,',
'       RD.SITE_ID,',
'       SIM_CT_ID,',
'       RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID) DIPS_SIM_CT,',
'       NECK_POSITION,',
'       SETUP_POSITION,',
'       ARM_POSITION,',
'       POSITION_INSTRUCTION,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                       P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                       P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                       P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'       RC.CT_SRNO,',
'       RC.PHASE_NO,',
'       RC.TRANS_DATE,',
'       RC.OC_SERIAL_NO,',
'       NVL(RC.SCHEDULE_SRNO, :P78_SCHEDULE_SRNO),',
'       TO_DATE(TO_CHAR(NVL(RC.SCHEDULE_DATE,',
'                   (SELECT S.VISIT_DATE',
'                      FROM RADIATION.SCHEDULE S',
'                     WHERE S.SR_NO = :P78_SCHEDULE_SRNO)),',
'               ''DD-MM-RRRR HH24:MI''), ''DD-MM-RRRR HH24:MI'') SCHEDULE_DATE,',
'       RC.PERFORMANCE_ID,',
'       NVL(RC.STATUS_ID, ''020'') STATUS_ID,',
'       RC.SIGN_BY_1,',
'       RC.SIGN_BY_2,',
'       TO_CHAR(RC.SIGN_DATE, ''DD-MM-RR HH24:MI'') SIGN_DATE,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_1) DISP_NAME_SIGN_BY_1,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_2) DISP_NAME_SIGN_BY_2,',
'       NVL(RC.CONTRAST, ''N'') CONTRAST,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(NVL(RC.STATUS_ID,',
'                                                          ''020'')) STATUS_DESC,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(NVL(RC.STATUS_ID,',
'                                                          ''020'')) DISP_STATUS_DESC,',
'       RC.ROWID',
'  FROM RADIATION.RAD_CT_PERFORMANCE RC, RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P78_RAD_DETAIL_ND_RADIATION_NO',
'   AND RD.SITE_ID = :P78_RAD_DETAIL_ND_SITE_ID',
'   AND RD.RADIATION_NO = RC.RADIATION_NO(+)',
'   AND RD.SITE_ID = RC.SITE_ID(+)',
'   AND RC.STATUS_ID(+) <> ''248''',
'   AND RC.CT_TYPE = ''M''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P78_RAD_DETAIL_ND_RADIATION_NO,P78_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'MRI Performance'
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
 p_id=>wwv_flow_imp.id(186778112126550316)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778177097550317)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778237851550318)
,p_name=>'SIM_CT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIM_CT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778332518550319)
,p_name=>'DIPS_SIM_CT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIPS_SIM_CT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778469290550320)
,p_name=>'NECK_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778615634550321)
,p_name=>'SETUP_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778636420550322)
,p_name=>'ARM_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778733832550323)
,p_name=>'POSITION_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778863402550324)
,p_name=>'SETUP_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186778936242550325)
,p_name=>'ARM_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186779063132550326)
,p_name=>'NECK_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186779161516550327)
,p_name=>'CT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>MRI ID</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(186779267427550328)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>Fraction No</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
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
 p_id=>wwv_flow_imp.id(186779349584550329)
,p_name=>'TRANS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<b>Entry Date<b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
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
 p_id=>wwv_flow_imp.id(186779483559550330)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186779537901550331)
,p_name=>'NVL(RC.SCHEDULE_SRNO,:P73_SCHEDULE_SRNO)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NVL(RC.SCHEDULE_SRNO,:P78_SCHEDULE_SRNO)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186779638509550332)
,p_name=>'SCHEDULE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186779780140550333)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186779985590550335)
,p_name=>'SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780045175550336)
,p_name=>'SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780141227550337)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780241889550338)
,p_name=>'DISP_NAME_SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME_SIGN_BY_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780364695550339)
,p_name=>'DISP_NAME_SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME_SIGN_BY_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780536207550341)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b>Status</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780663199550342)
,p_name=>'DISP_STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186780766179550343)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(186781350505550349)
,p_name=>'CONTRAST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187044609006389034)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(186777902210550314)
,p_internal_uid=>186777902210550314
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(186784956781557074)
,p_interactive_grid_id=>wwv_flow_imp.id(186777902210550314)
,p_static_id=>'220773'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(186785210734557074)
,p_report_id=>wwv_flow_imp.id(186784956781557074)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186785699245557077)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(186778112126550316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186786557314557082)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(186778177097550317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186787446683557086)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(186778237851550318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186788358690557088)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(186778332518550319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186789230213557091)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(186778469290550320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186790134668557093)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(186778615634550321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186791123476557096)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(186778636420550322)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186791991270557099)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(186778733832550323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186792836983557101)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(186778863402550324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186793761495557104)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(186778936242550325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186794701391557106)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(186779063132550326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186795540760557109)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(186779161516550327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186796492764557112)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(186779267427550328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186797407139557114)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(186779349584550329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186798251344557117)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(186779483559550330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186799130105557120)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(186779537901550331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186800097338557123)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(186779638509550332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186800958027557125)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(186779780140550333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186802812795557131)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(186779985590550335)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186803644284557133)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(186780045175550336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186804622746557136)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(186780141227550337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186805472337557139)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(186780241889550338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186806371946557141)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(186780364695550339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186808195370557147)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(186780536207550341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186809110816557149)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(186780663199550342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186810016776557152)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(186780766179550343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186925234077013019)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(186781350505550349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187268936791790306)
,p_view_id=>wwv_flow_imp.id(186785210734557074)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(187044609006389034)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(186781487967550350)
,p_plug_name=>'ND_PAGE_ITEMS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(224531279826231277)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P78_MRNO,:P78_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P78_MRNO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'History'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(224531333111231278)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>224531333111231278
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224531437588231279)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224531590132231280)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'MRNO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(224531693700231281)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(225064838199960333)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'172056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:REQUEST_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(230154497762615333)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>53
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(231911452584417943)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>63
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(262704129135837742)
,p_plug_name=>'MRI Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT RADIATION_NO,',
'          RADIATION_DATE,',
'          MRNO,',
'          RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'          RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'          HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'          DOCTOR_ID,',
'          RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'          RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'          ROWID',
'     FROM RADIATION.RADIATION_MASTER M;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P78_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(272513292000219211)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P78_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /*#image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } ',
'',
'     #image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'    #image img {',
'        display: inline-block;',
'        width: 100px;',
'        height: 100px;',
'        object-fit: cover;',
'        border: 1px solid #D8D4D4;',
'    }',
'',
'    #image img:hover {',
'        box-shadow: 0 0 1px 1px rgba(0, 140, 186, 0.5);',
'    }',
'',
'    #FILE_BLOB {',
'        padding: 0;',
'    }',
'',
'    #report_table_image>tbody>tr>td {',
'        padding: 0;',
'    }',
'</style>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P78_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164748192183116195)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164748548125116197)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164748973147116197)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:ROWID::::::::PICTURES'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272513691760219215)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'         PLANNING,',
'         RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'         P1_DOSE_FRACTION,',
'         P1_NO_OF_FRACTION,',
'         P2_DOSE_FRACTION,',
'         P2_NO_OF_FRACTION,',
'         P3_DOSE_FRACTION,',
'         P3_NO_OF_FRACTION,',
'         TREATMENT_LATER,',
'         ACTIVE,',
'         WFE_NO,',
'         RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                         P_SITE_ID      => SITE_ID,',
'                                                         P_WFE_NO       => WFE_NO) EVENT_DESC,',
'         PLANNING_ID,',
'         RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                     P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                    P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'         RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                   P_SITE_ID      => RD.SITE_ID) -',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                         P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'         (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'         NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'         NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOT_DOSE,',
'         RD.DOSE_FRACTION DOSE_FRACTION,',
'         RD.NO_OF_FRACTION',
'    FROM RADIATION.RADIATION_DETAIL RD',
'   WHERE RD.RADIATION_NO = :P78_RADIATION_NO',
'     AND RD.SITE_ID = NVL(:P78_PARAM_SITE_ID, RD.SITE_ID)',
'     AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                               P_SITE_ID             => RD.SITE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => ''015'') = ''Y'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P78_PARAM_SITE_ID,P78_RADIATION_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Site(s)'
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
 p_id=>wwv_flow_imp.id(186381713685852861)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose Fraction'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(186381739723852862)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No Of Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(224533811735231302)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(272514067524219218)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514139044219219)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514181430219220)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Radiotherapy Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514353300219221)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514412145219222)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Planning Technique'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514547068219223)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514635541219224)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514718406219225)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514815235219226)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272514886597219227)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515045860219228)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515082560219229)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515244276219230)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515357618219231)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515383061219232)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515506828219233)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515660524219234)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515725758219235)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(272515853763219236)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(272513821398219216)
,p_internal_uid=>272513821398219216
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(273118422886377566)
,p_interactive_grid_id=>wwv_flow_imp.id(272513821398219216)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(273118608068377568)
,p_report_id=>wwv_flow_imp.id(273118422886377566)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186571719352725747)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(186381713685852861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>211.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(186572587809725750)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(186381739723852862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>193.858
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(225206335953406758)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(224533811735231302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160.986
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273118992743377569)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(272514067524219218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273119957200377572)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(272514139044219219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273120865858377575)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(272514181430219220)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>466.99699999999996
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273121753883377577)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(272514353300219221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273122581456377580)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(272514412145219222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>268.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273123558432377585)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(272514547068219223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273124438898377588)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(272514635541219224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273125349949377595)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(272514718406219225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273126223427377597)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(272514815235219226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273127121856377600)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(272514886597219227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273128057511377603)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(272515045860219228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273128916501377605)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(272515082560219229)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273129831665377609)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(272515244276219230)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273130700371377613)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(272515357618219231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273131645666377616)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(272515383061219232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196.31600000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273132485164377619)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(272515506828219233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273133375555377622)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(272515660524219234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.94399999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273134356371377629)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(272515725758219235)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(273135205432377631)
,p_view_id=>wwv_flow_imp.id(273118608068377568)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(272515853763219236)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(339828035545897140)
,p_plug_name=>'Sign '
,p_region_name=>'signhdrmr'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>73
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164724005009116158)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(230154497762615333)
,p_button_name=>'Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164724497695116160)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_imp.id(230154497762615333)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164724836461116160)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_imp.id(230154497762615333)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164725289198116160)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_imp.id(230154497762615333)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164726029137116161)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(231911452584417943)
,p_button_name=>'CreateCT'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_grid_new_row=>'Y'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164726447542116161)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(231911452584417943)
,p_button_name=>'DisposeCT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164726842687116161)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(231911452584417943)
,p_button_name=>'HDRRequest'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::P71_MRNO:&P78_MRNO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(165024603353970835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(165025099048970836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_button_name=>'SignMRI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186595379532726072)
,p_name=>'P78_ANESTHESIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(186575244785726021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Anesthesia</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>' (p_attributes): onclick="return false;"'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'other way to disable checkox',
'(p_attributes): disabled'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186595402813726073)
,p_name=>'P78_REQ_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(186575244785726021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Request Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186782219063550355)
,p_name=>'P78_SCHEDULE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(186781487967550350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Appointment:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186782914732550362)
,p_name=>'P78_DISP_NAME_SIGN_BY_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(186781487967550350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Technologist:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186783104865550364)
,p_name=>'P78_SIGN_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(186781487967550350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186783225200550365)
,p_name=>'P78_STATUS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(186781487967550350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b> '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186830330008550425)
,p_name=>'P78_SCHEDULE_SRNO'
,p_item_sequence=>233
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187095605755389131)
,p_name=>'P78_CT_SRNO'
,p_item_sequence=>243
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187095680538389132)
,p_name=>'P78_CT_SCHEDULE_DATE'
,p_item_sequence=>253
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187096126416389136)
,p_name=>'P78_SCHEDULE_EVENT_ID'
,p_item_sequence=>263
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224672650102231492)
,p_name=>'P78_PARAM_RADIATION_NO'
,p_item_sequence=>103
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(224673626482231502)
,p_name=>'P78_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>193
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225064140359728663)
,p_name=>'P78_QUERY_NEW'
,p_item_sequence=>213
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(230357623268615591)
,p_name=>'P78_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>123
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(230357697491615592)
,p_name=>'P78_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>133
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(230358321215615598)
,p_name=>'P78_RAD_PLAN_CHECK_ID'
,p_item_sequence=>143
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(230359046128615605)
,p_name=>'P78_SIGN_STATUS'
,p_item_sequence=>153
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(231178102843585060)
,p_name=>'P78_TXT_URL'
,p_item_sequence=>163
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232624861761180400)
,p_name=>'P78_RAD_PLAN_CHECK_DML_STATUS'
,p_item_sequence=>183
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(232625281925180405)
,p_name=>'P78_PARAM_SR_NO'
,p_item_sequence=>93
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235147049661925662)
,p_name=>'P78_PARAM_MRNO'
,p_item_sequence=>113
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(262797690716837883)
,p_name=>'P78_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(262797787302837884)
,p_name=>'P78_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605234904219335)
,p_name=>'P78_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605347991219336)
,p_name=>'P78_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605468154219337)
,p_name=>'P78_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605548126219338)
,p_name=>'P78_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Gender:</p></b>'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605588197219339)
,p_name=>'P78_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605745959219340)
,p_name=>'P78_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272605884034219341)
,p_name=>'P78_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272606102702219344)
,p_name=>'P78_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272606272294219345)
,p_name=>'P78_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'Unit:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272606330665219346)
,p_name=>'P78_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'Service No:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272606397908219347)
,p_name=>'P78_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'Service Status:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272606521075219348)
,p_name=>'P78_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'Rank:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272606638605219349)
,p_name=>'P78_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_item_source_plug_id=>wwv_flow_imp.id(262704129135837742)
,p_prompt=>'Formation:'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272717262545219477)
,p_name=>'P78_PARAM_SITE_ID'
,p_item_sequence=>73
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(275076968769202694)
,p_name=>'P78_ALERT_TEXT'
,p_item_sequence=>173
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339866890316897205)
,p_name=>'P78_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339866918527897206)
,p_name=>'P78_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867011233897207)
,p_name=>'P78_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867167922897208)
,p_name=>'P78_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867291321897209)
,p_name=>'P78_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867374738897210)
,p_name=>'P78_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867414651897211)
,p_name=>'P78_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867508849897212)
,p_name=>'P78_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867678419897213)
,p_name=>'P78_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339867771592897214)
,p_name=>'P78_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339868252374897219)
,p_name=>'P78_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339868360058897220)
,p_name=>'P78_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(343591754023701585)
,p_name=>'P78_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(339828035545897140)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164768069754116233)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(272513691760219215)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164768583493116235)
,p_event_id=>wwv_flow_imp.id(164768069754116233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $s(''P78_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'// $s(''P78_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P78_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'apex.item("P78_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'}',
'//apex.region("radplanchecklist").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164769033071116236)
,p_event_id=>wwv_flow_imp.id(164768069754116233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(186777798934550313)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164769470887116237)
,p_name=>'Sign'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164724497695116160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164769989879116238)
,p_event_id=>wwv_flow_imp.id(164769470887116237)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164770469607116238)
,p_event_id=>wwv_flow_imp.id(164769470887116237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P78_PATIENT_MRNO   := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P78_PATIENT_TYPE   := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P78_DISP_MRNO      := (:P78_PATIENT_TYPE ||',
'                           LPAD(:P78_PATIENT_MRNO, 8, ''0''));',
'    :P78_NAME           := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P78_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P78_PATIENT_MRNO,P78_PATIENT_TYPE,P78_DISP_MRNO,P78_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164770929434116238)
,p_event_id=>wwv_flow_imp.id(164769470887116237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signhdrmr");',
'apex.item("P78_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164771364757116238)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164725289198116160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164771828614116238)
,p_event_id=>wwv_flow_imp.id(164771364757116238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164772268673116239)
,p_name=>'HistoryDA'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(224531279826231277)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164772767539116239)
,p_event_id=>wwv_flow_imp.id(164772268673116239)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P78_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164773253145116240)
,p_event_id=>wwv_flow_imp.id(164772268673116239)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'         ANAESTHESIA,',
'         REMARKS',
'    INTO :P78_RADIATION_NO,',
'         :P78_RADIATION_DATE,',
'         :P78_MRNO,',
'         :P78_PATIENT_NAME,',
'         :P78_DISP_AGE,',
'         :P78_DISP_GENDER,',
'         :P78_DOCTOR_ID,',
'         :P78_DISP_DOCTOR,',
'         :P78_DISP_INTENT,',
'         :P78_ANESTHESIA,',
'         :P78_REQ_REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = NVL(:P78_PARAM_RADIATION_NO, RADIATION_NO)',
'     AND MRNO LIKE CASE',
'           WHEN :P78_MRNO IS NOT NULL THEN',
'            ''%'' || :P78_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P78_PARAM_RADIATION_NO'
,p_attribute_03=>'P78_RADIATION_NO,P78_RADIATION_DATE,P78_MRNO,P78_PATIENT_NAME,P78_DISP_AGE,P78_DISP_GENDER,P78_DOCTOR_ID,P78_DISP_DOCTOR,P78_DISP_INTENT,P78_REQ_REMARKS,P78_ANESTHESIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164773791895116241)
,p_event_id=>wwv_flow_imp.id(164772268673116239)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(272513292000219211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164774282063116242)
,p_event_id=>wwv_flow_imp.id(164772268673116239)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(272513691760219215)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164774684892116242)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164775172684116243)
,p_event_id=>wwv_flow_imp.id(164774684892116242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P78_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P78_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P78_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P78_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P78_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P78_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
'    ',
'    END IF;',
'  ',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P78_SERVICE_NO,P78_SERVICE_STATUS,P78_RANK,P78_FORMATION,P78_UNIT'
,p_attribute_03=>'P78_SYSTEM_CONSTANT_ID_428'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164775679023116246)
,p_event_id=>wwv_flow_imp.id(164774684892116242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P78_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P78_SERVICE_NO").show();',
'    apex.item("P78_SERVICE_STATUS").show();',
'    apex.item("P78_RANK").show();',
'    apex.item("P78_FORMATION").show();',
'    apex.item("P78_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P78_SERVICE_NO").hide();',
'    apex.item("P78_SERVICE_STATUS").hide();',
'    apex.item("P78_RANK").hide();',
'    apex.item("P78_FORMATION").hide();',
'    apex.item("P78_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164776079770116246)
,p_name=>'DASuccessMessage'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_SUCCESS_MSG'
,p_condition_element=>'P78_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164776537392116246)
,p_event_id=>wwv_flow_imp.id(164776079770116246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P78_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164776944383116247)
,p_name=>'DAError'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_ERROR'
,p_condition_element=>'P78_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164777453681116247)
,p_event_id=>wwv_flow_imp.id(164776944383116247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P78_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164777828717116247)
,p_name=>'EnableDisableDA'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164778334992116247)
,p_event_id=>wwv_flow_imp.id(164777828717116247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P78_SIGN_STATUS") === "015") || ($v("P78_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164778700565116247)
,p_name=>'SetMRNO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164779275755116247)
,p_event_id=>wwv_flow_imp.id(164778700565116247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_NAME,P78_PASSWORD,P78_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164779734249116248)
,p_event_id=>wwv_flow_imp.id(164778700565116247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P78_PATIENT_TYPE IS NOT NULL AND :P78_PATIENT_MRNO IS NOT NULL THEN',
'    :P78_DISP_MRNO := :P78_PATIENT_TYPE || LPAD(:P78_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P78_PATIENT_TYPE,P78_PATIENT_MRNO'
,p_attribute_03=>'P78_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164780254384116248)
,p_event_id=>wwv_flow_imp.id(164778700565116247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P78_ERROR := NULL;',
'  IF :P78_PATIENT_MRNO IS NOT NULL THEN',
'    :P78_DISP_MRNO := :P78_PATIENT_TYPE || LPAD(:P78_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P78_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P78_ERROR        := ''This is not an active employee.'';',
'      :P78_PATIENT_MRNO := NULL;',
'      :P78_DISP_MRNO    := NULL;',
'      :P78_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P78_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P78_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P78_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P78_PATIENT_MRNO,P78_PATIENT_TYPE'
,p_attribute_03=>'P78_DISP_MRNO,P78_ERROR,P78_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164780746924116248)
,p_event_id=>wwv_flow_imp.id(164778700565116247)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P78_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P78_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164781227757116248)
,p_event_id=>wwv_flow_imp.id(164778700565116247)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P78_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P78_DISP_MRNO);'
,p_attribute_02=>'P78_DISP_MRNO'
,p_attribute_03=>'P78_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164781625035116252)
,p_name=>'ExportReport'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164724005009116158)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164782103693116252)
,p_event_id=>wwv_flow_imp.id(164781625035116252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :GV_ORDER_LOCATION_ID := NVL(:GV_ORDER_LOCATION_ID, ''001'');',
'  HIS.SET_CONTEXT(''CONNECTED_SERVER'', :GV_CONNECTED_SERVER);',
'  HIS.SET_CONTEXT(''USER_MRNO'', :GV_USER_MRNO);',
'  HIS.SET_CONTEXT(''TERMINAL'', :GV_TERMINAL);',
'  HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'  HIS.SET_CONTEXT(''ORDER_LOCATION_ID'', :GV_ORDER_LOCATION_ID);',
'END;',
''))
,p_attribute_02=>'GV_ORDER_LOCATION_ID,GV_CONNECTED_SERVER,GV_USER_MRNO,GV_TERMINAL,GV_PHYSICAL_LOCATION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164782639415116252)
,p_event_id=>wwv_flow_imp.id(164781625035116252)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "P_RADIATION_NO": $v("P78_RADIATION_NO"),',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00031'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164783080304116253)
,p_name=>'DAMRPerformance'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(186777798934550313)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164783593061116253)
,p_event_id=>wwv_flow_imp.id(164783080304116253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P78_CONTRAST'', _.radct.CONTRAST);',
'$s(''P78_SCHEDULE_DATE'', _.radct.SCHEDULE_DATE);',
'$s(''P78_DISP_NAME_SIGN_BY_1'', _.radct.DISP_NAME_SIGN_BY_1);',
'$s(''P78_DISP_NAME_SIGN_BY_2'', _.radct.DISP_NAME_SIGN_BY_2);',
'$s(''P78_SIGN_DATE'', _.radct.SIGN_DATE);',
'$s(''P78_STATUS_DESC'', _.radct.DISP_STATUS_DESC);',
'$s(''P78_CT_SRNO'', _.radct.CT_SRNO);',
'$s(''P78_CT_SCHEDULE_DATE'', _.radct.SCHEDULE_DATE);',
'$s(''P78_SIGN_STATUS'', _.radct.STATUS_ID);',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164784035655116253)
,p_event_id=>wwv_flow_imp.id(164783080304116253)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P78_SIGN_STATUS") === "015") || ($v("P78_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164784436102116254)
,p_name=>'DATXTAlertText'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_TXT_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164784975145116254)
,p_event_id=>wwv_flow_imp.id(164784436102116254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P78_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164788655714116255)
,p_name=>'SetMRNO1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_PATIENT_MRNO_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164789196658116256)
,p_event_id=>wwv_flow_imp.id(164788655714116255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_NAME_1,P78_PASSWORD_1,P78_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164789691768116260)
,p_event_id=>wwv_flow_imp.id(164788655714116255)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P78_PATIENT_TYPE_1 IS NOT NULL AND :P78_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P78_DISP_MRNO_1 := :P78_PATIENT_TYPE_1 || LPAD(:P78_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P78_PATIENT_TYPE_1,P78_PATIENT_MRNO_1'
,p_attribute_03=>'P78_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164790127351116261)
,p_event_id=>wwv_flow_imp.id(164788655714116255)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P78_ERROR := NULL;',
'  IF :P78_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P78_DISP_MRNO_1 := :P78_PATIENT_TYPE_1 || LPAD(:P78_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P78_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P78_ERROR        := ''This is not an active employee.'';',
'      :P78_PATIENT_MRNO_1 := NULL;',
'      :P78_DISP_MRNO_1    := NULL;',
'      :P78_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P78_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P78_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P78_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P78_PATIENT_MRNO_1,P78_PATIENT_TYPE_1'
,p_attribute_03=>'P78_DISP_MRNO_1,P78_ERROR,P78_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164790601999116262)
,p_event_id=>wwv_flow_imp.id(164788655714116255)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&&P78_ERROR.'
,p_attribute_02=>'System Message'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P78_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164791121927116263)
,p_event_id=>wwv_flow_imp.id(164788655714116255)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P78_NAME_1:= his.pkg_patient.GET_PATIENT_NAME(:P78_DISP_MRNO_1);'
,p_attribute_02=>'P78_DISP_MRNO_1'
,p_attribute_03=>'P78_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25390866178313838)
,p_name=>'DARadiationNo'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_RADIATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25390984504313839)
,p_event_id=>wwv_flow_imp.id(25390866178313838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P78_ANESTHESIA,P78_REQ_REMARKS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  SELECT M.ANAESTHESIA, M.REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE M.RADIATION_NO = :P78_RADIATION_NO;',
''))
,p_attribute_07=>'P78_RADIATION_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25391002959313840)
,p_name=>'SignMRI'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(165025099048970836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25391103714313841)
,p_event_id=>wwv_flow_imp.id(25391002959313840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P78_TXT_ALERT_TEXT := null;',
'  :P78_SUCCESS_MSG    := null;',
'  :P78_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P78_DISP_MRNO,',
'                                          :P78_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P78_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P78_VALIDATE'', ''Y'');',
'    :P78_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P78_DISP_MRNO,P78_PASSWORD'
,p_attribute_03=>'P78_VALIDATE,P78_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25391239243313842)
,p_event_id=>wwv_flow_imp.id(25391002959313840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P78_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00161.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''ORGANIZATION_ID''),',
'                                                    P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''LOCATION_ID''),',
'                                                    P_RADIATION_NO      => :P78_RAD_DETAIL_ND_RADIATION_NO,',
'                                                    P_SITE_ID           => :P78_RAD_DETAIL_ND_SITE_ID,',
'                                                    P_CT_SRNO           => :P78_CT_SRNO,',
'                                                    P_SCHEDULE_SRNO     => :P78_SCHEDULE_SRNO,',
'                                                    P_SCHEDULE_EVENT_ID => :P78_SCHEDULE_EVENT_ID,',
'                                                    P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''USER_MRNO''),',
'                                                    P_FIRST_TECH        => :P78_DISP_MRNO,',
'                                                    P_OBJECT_CODE       => ''S18APX00067'',',
'                                                    P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''TERMINAL''),',
'                                                    P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                    P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P78_ERROR    := L_ALERT_TEXT;',
'      :P78_VALIDATE := ''N'';',
'    ELSE',
'      :P78_SUCCESS_MSG := ''MRI signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P78_VALIDATE,P78_RAD_DETAIL_ND_RADIATION_NO,P78_RAD_DETAIL_ND_SITE_ID,P78_CT_SRNO,P78_SCHEDULE_SRNO,P78_SCHEDULE_EVENT_ID,P78_DISP_MRNO'
,p_attribute_03=>'P78_ERROR,P78_VALIDATE,P78_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25391678168313846)
,p_event_id=>wwv_flow_imp.id(25391002959313840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P78_SIGN_STATUS") === "015") || ($v("P78_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25391491596313844)
,p_name=>'CloseRegion'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(165024603353970835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25391593224313845)
,p_event_id=>wwv_flow_imp.id(25391491596313844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(339828035545897140)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164766480999116231)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P78_MRNO;',
'  L_RADIATION_NO := :P78_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00161.CREATE_NEW_HDR_CT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_RADIATION_NO      => :P78_RAD_DETAIL_ND_RADIATION_NO,',
'                                              P_SITE_ID           => :P78_RAD_DETAIL_ND_SITE_ID,',
'                                              P_SCHEDULE_SRNO     => :P78_SCHEDULE_SRNO,',
'                                              P_OBJECT_CODE       => ''S18APX00067'',',
'                                              P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                              P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P78_PARAM_MRNO         := L_MRNO;',
'  :P78_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'                    SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                    $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                    '' ERROR MESSAGE: '' || SQLERRM;',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(164726029137116161)
,p_process_success_message=>'New MRI Created Properly '
,p_internal_uid=>164766480999116231
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164766802813116232)
,p_process_sequence=>2
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P78_MRNO;',
'  L_RADIATION_NO := :P78_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00161.DISPOSE_CT_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_RADIATION_NO      => :P78_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID           => :P78_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_CT_SRNO           => :P78_CT_SRNO,',
'                                                   P_REASON            => NULL,',
'                                                   P_OBJECT_CODE       => ''S18APX00067'',',
'                                                   P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''TERMINAL''),',
'                                                   P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''USER_MRNO''),',
'                                                   P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                   P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P78_PARAM_MRNO         := L_MRNO;',
'  :P78_PARAM_RADIATION_NO := L_RADIATION_NO;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'                    SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                    $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                    '' ERROR MESSAGE: '' || SQLERRM;',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(164726447542116161)
,p_process_success_message=>'Record DISPOSED Properly ...'
,p_internal_uid=>164766802813116232
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164767236503116232)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDR MR Performance - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PLAN_TAB RADIATION.PKG_S18APX00062.TAB_CT_PERFORMANCE;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P78_MRNO;',
'  L_RADIATION_NO := :P78_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  IF :P78_CT_SRNO IS NOT NULL THEN',
'    SELECT :P78_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P78_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           NULL                            SIM_CT_ID,',
'           NULL                            DIPS_SIM_CT,',
'           NULL                            NECK_POSITION,',
'           NULL                            SETUP_POSITION,',
'           NULL                            ARM_POSITION,',
'           NULL                            POSITION_INSTRUCTION,',
'           NULL                            SETUP_POSITION_DESC,',
'           NULL                            ARM_POSITION_DESC,',
'           NULL                            NECK_POSITION_DESC,',
'           :P78_CT_SRNO                    CT_SRNO,',
'           NULL                            PHASE_NO,',
'           NULL                            TRANS_DATE,',
'           NULL                            OC_SERIAL_NO,',
'           :P78_SCHEDULE_SRNO              SCHEDULE_SRNO,',
'           NULL                            SCHEDULE_DATE,',
'           NULL                            PERFORMANCE_ID,',
'           NULL                            STATUS_ID,',
'           NULL                            SIGN_BY_1,',
'           NULL                            SIGN_BY_2,',
'           NULL                            SIGN_DATE,',
'           NULL                            DISP_NAME_SIGN_BY_1,',
'           NULL                            DISP_NAME_SIGN_BY_2,',
'           :P78_CONTRAST                   CONTRAST,',
'           NULL                            STATUS_DESC,',
'           NULL                            DISP_STATUS_DESC',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_PLAN_TAB',
'      FROM DUAL;',
'  ',
'    BEGIN',
'      RADIATION.PKG_S18APX00062.UPDATE_CT_PERFORMANCE(L_RAD_PLAN_TAB);',
'    END;',
'  ',
'  END IF;',
'',
'  :P78_PARAM_MRNO         := L_MRNO;',
'  :P78_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(164724836461116160)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'HDR CT Sheet updated successfully'
,p_internal_uid=>164767236503116232
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
 p_id=>wwv_flow_imp.id(164766016224116231)
,p_process_sequence=>2
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P78_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>164766016224116231
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164765685435116231)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormHDRMRPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  --:P78_MRNO := NVL(:P78_MRNO, :P78_PARAM_MRNO);',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'         ANAESTHESIA,',
'         REMARKS',
'    INTO :P78_RADIATION_NO,',
'         :P78_RADIATION_DATE,',
'         :P78_MRNO,',
'         :P78_PATIENT_NAME,',
'         :P78_DISP_AGE,',
'         :P78_DISP_GENDER,',
'         :P78_DOCTOR_ID,',
'         :P78_DISP_DOCTOR,',
'         :P78_DISP_INTENT,',
'         :P78_ANESTHESIA,',
'         :P78_REQ_REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P78_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => NVL(:P78_MRNO,',
'                                                                                      :P78_PARAM_MRNO),',
'                                                           P_RADIOTHERAPY_TYPE => ''B''))',
'     AND MRNO LIKE CASE',
'           WHEN :P78_MRNO IS NOT NULL THEN',
'            ''%'' || :P78_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>164765685435116231
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164765253039116230)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00131.RAD_F_U_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  SELECT :P78_RADIATION_NO_1         RADIATION_NO,',
'         :P78_SITE_ID_1              SITE_ID,',
'         :P78_FOLLOWUP_ID            FOLLOWUP_ID,',
'         :P78_LAST_FRACTION_ID       LAST_FRACTION_ID,',
'         :P78_WEEK_NO_1              WEEK_NO,',
'         NULL                        WEEK_DESCRIPTION,',
'         :P78_SCHEDULE_SRNO_1        SCHEDULE_SRNO,',
'         :P78_OC_SERIAL_NO_1         OC_SERIAL_NO,',
'         TO_DATE(:P78_CHEMO_LAST_CYCLE,''DD-MON-YYYY HH24:MI'')       CHEMO_LAST_CYCLE,',
'         :P78_CHEMO_NEXT_CYCLE       CHEMO_NEXT_CYCLE,',
'         :P78_ORAL_CHEMO_PRESCRIBED  ORAL_CHEMO_PRESCRIBED,',
'         :P78_REMARKS                REMARKS,',
'         NULL                        SIGN_BY,',
'         NULL                        SIGN_BY_NAME,',
'         NULL                        SIGN_DATE,',
'         NULL                        STATUS_ID,',
'         NULL                        STATUS_DESC,',
'         :P78_SIDE_EFFECTS           SIDE_EFFECTS,',
'         :P78_DIET                   DIET,',
'         :P78_GENERAL_MEASURE        GENERAL_MEASURE,',
'         :P78_PERSONAL_HYGIENE       PERSONAL_HYGIENE,',
'         :P78_FU_INSTRUCTIONS        FU_INSTRUCTIONS,',
'         :P78_PAT_FAMILY_EDU         PAT_FAMILY_EDU,',
'         :P78_PAT_FAMILY_EDU_REMARKS PAT_FAMILY_EDU_REMARKS',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00131.INSERT_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    -- Update',
'    RADIATION.PKG_S18FRM00131.UPDATE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00131.DELETE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'',',
'                  ''Radiotheraphy Followup Updated successfully.'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT||SQLERRM);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT||SQLERRM);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
'*/',
'',
'NULL;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>164765253039116230
);
wwv_flow_imp.component_end;
end;
/

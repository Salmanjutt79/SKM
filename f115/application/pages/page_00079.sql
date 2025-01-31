prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_name=>'RAD_HDR_DISCHARGE'
,p_alias=>'RAD-HDR-DISCHARGE'
,p_page_mode=>'MODAL'
,p_step_title=>'HDR Discharge'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function editIsoCenter() {',
'    apex.theme.openRegion(''isocenterdtl'')',
'',
'};',
'',
'function editSpecialInstruction() {',
'    apex.theme.openRegion(''specialintdtl'')',
'',
'};',
'',
'function editFields() {',
'    apex.theme.openRegion(''fielddtl'')',
'',
'};'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_UNIT").hide();',
'apex.item("P51_SERVICE_NO").hide();',
'apex.item("P51_SERVICE_STATUS").hide();',
'apex.item("P51_RANK").hide();',
'apex.item("P51_FORMATION").hide();',
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
'#report_image_report img{',
'	height: 120x;',
'    width:  100px;',
'',
'}',
'',
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'#phase .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'.popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'',
'.selectlist',
'{',
'    background-color:#FFFFCC !important;',
'}',
'/*.apex-item-text',
'{',
'    background-color:#FFFFCC !important;',
'}*/',
'',
'#accessory .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#ACCESSORY_ID .popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'',
'#radphy .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#isocenter .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#specialint .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#field .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'',
'#P79_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISCHARGE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_INSERTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_STATUS_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_TRT_START_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'#P79_TRT_END_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_XRT_STARTED_ON {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'#P79_XRT_COMPLETED_ON {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
' ',
'',
'#P79_XRT_STARTED_ON {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_XRT_COMPLETED_ON {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISCHARGE_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_IMPLANT_OUT_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_DISCHARGE_BY_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_FROM_FRACTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_IMPLANT_IN_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P79_FRACTIONS_PERFORMED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_IS_LINKED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_AFTER_FRACTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P79_ND_FOLLOWUP_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_ORDER_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_SIDE_EFFECTS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_DIET {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_GENERAL_MEASURE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_PERSONAL_HYGIENE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_FU_INSTRUCTIONS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_EXPLAIN_TEXT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_ND_EDU_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P79_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P79_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250128152843'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45981289262661286)
,p_plug_name=>'Implant Out / Discharge'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>24
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.RADIATION_NO,',
'       D.SITE_ID,',
'       D.DISCHARGE_ID,',
'       D.DISCHARGE_DATE,',
'       D.XRT_STARTED_ON,',
'       D.XRT_COMPLETED_ON,',
'       D.REMARKS,',
'       D.DISCHARGE_BY,',
'       D.DISCAHRGE_LOCATION_ID,',
'       D.FOLLOW_UP_INSTRUCTION,',
'       D.TREATMENT_TYPE,',
'       D.TECHNIQUE_ID,',
'       D.FOLLOW_UP,',
'       D.EXPLAIN_LANGUAGE,',
'       D.EXPLAIN_TEXT,',
'       D.CONTIGENCY_FLAG,',
'       D.ORDER_TYPE_ID,',
'       D.ORDER_NO,',
'       D.LOCATION_ID,',
'       D.ORDER_LOCATION_ID,',
'       D.ACTIVE,',
'       D.PHASE_NO,',
'       D.EDU_SIDE_EFFECTS,',
'       D.EDU_DIET,',
'       D.EDU_GENERAL_MEASURE,',
'       D.EDU_PERSONAL_HYGIENE,',
'       D.EDU_FU_INSTRUCTIONS,',
'       NVL(E.STATUS_ID, D.STATUS_ID) STATUS_ID, ',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => NVL(E.STATUS_ID,',
'                                                                               D.STATUS_ID)) STATUS_DESC,',
'       (SELECT MIN(RP.FRACTION_DATE)',
'          FROM RADIATION.RAD_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = D.RADIATION_NO',
'           AND RP.SITE_ID = D.SITE_ID',
'           AND RP.STATUS_ID = ''015'') TRT_START_DATE,',
'       (SELECT MAX(RP.FRACTION_DATE)',
'          FROM RADIATION.RAD_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = D.RADIATION_NO',
'           AND RP.SITE_ID = D.SITE_ID',
'           AND RP.STATUS_ID = ''015'') TRT_END_DATE,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(NVL(E.SIGN_BY, D.DISCHARGE_BY)) DISCHARGE_BY_NAME,',
'       D.PAT_FAMILY_EDU,',
'       D.PAT_FAMILY_EDU_REMARKS,',
'       D.NOTE_ID,',
'       D.TRANS_TYPE,',
'       I.INSERTION_ID,',
'       I.FROM_FRACTION_ID,',
'       NVL(I.TO_FRACTION_ID,',
'           ((SELECT MAX(P.FRACTION_ID)',
'               FROM RADIATION.RAD_PERFORMANCE P',
'              WHERE P.RADIATION_NO = E.RADIATION_NO',
'                AND P.SITE_ID = E.SITE_ID',
'                AND P.IMP_INSERTION_ID = E.INSERTION_ID',
'                AND P.STATUS_ID = ''015''))) MAX_FRACTION_ID,',
'       I.SIGN_DATE IMPLANT_IN_TIME,',
'       NVL(E.SIGN_DATE, SYSDATE) IMPLANT_OUT_TIME,',
'       E.REMARKS IMP_EXTRACT_REMARKS,',
'       (SELECT COUNT(1)',
'          FROM RADIATION.RAD_PERFORMANCE P',
'         WHERE P.RADIATION_NO = E.RADIATION_NO',
'           AND P.SITE_ID = E.SITE_ID',
'           AND P.IMP_INSERTION_ID = E.INSERTION_ID',
'           AND P.STATUS_ID = ''015'') FRACTIONS_PERFORMED,',
'       L.LINKED_RADIATION_NO,',
'       L.LINKED_SITE_ID,',
'       L.AFTER_FRACTION_ID,',
'       CASE',
'         WHEN L.LINKED_RADIATION_NO IS NOT NULL THEN',
'          ''Y''',
'         ELSE',
'          ''N''',
'       END IS_LINKED',
'',
'  FROM RADIATION.PATIENT_DISCHARGE     D,',
'       RADIATION.RAD_IMPLANT_EXTRACT   E,',
'       RADIATION.RAD_IMPLANT_INSERT    I,',
'       RADIATION.RADIATION_DETAIL_LINK L',
' WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'   AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'   AND E.RADIATION_NO(+) = D.RADIATION_NO',
'   AND E.SITE_ID(+) = D.SITE_ID',
'   AND E.INSERTION_ID(+) = D.IMP_INSERTION_ID',
'   AND I.RADIATION_NO(+) = E.RADIATION_NO',
'   AND I.SITE_ID(+) = E.SITE_ID',
'   AND I.INSERTION_ID(+) = E.INSERTION_ID',
'   AND L.RADIATION_NO(+) = D.RADIATION_NO',
'   AND L.SITE_ID(+) = D.SITE_ID',
'   AND D.DISCHARGE_ID = :P79_IMP_INSERTION_ID',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_IMP_INSERTION_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312105291900618917)
,p_plug_name=>'Actual Treatment'
,p_parent_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>160
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b><p style="color:brown">&nbsp;&nbsp;Actual Treatment</p></b>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46229203443240374)
,p_plug_name=>'Condition at Discharge'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>64
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46229338022240376)
,p_plug_name=>'Follow Up Appointment '
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>74
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46229646628240379)
,p_plug_name=>'Medication Order '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>84
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46230044373240383)
,p_plug_name=>'History'
,p_region_name=>'raddishistory'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>34
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.DISCHARGE_ID, ROWID',
'  FROM RADIATION.PATIENT_DISCHARGE D',
' WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'   AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(312105144099618916)
,p_name=>'DISCHARGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCHARGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>' <p style="color:#00008B">Discharge <br> ID</p> '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(314367541187318308)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(312105090619618915)
,p_internal_uid=>312105090619618915
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(312989696344530456)
,p_interactive_grid_id=>wwv_flow_imp.id(312105090619618915)
,p_static_id=>'3129897'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(312989870825530457)
,p_report_id=>wwv_flow_imp.id(312989696344530456)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(312990385818530458)
,p_view_id=>wwv_flow_imp.id(312989870825530457)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(312105144099618916)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314716837341282651)
,p_view_id=>wwv_flow_imp.id(312989870825530457)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(314367541187318308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46230695012240389)
,p_plug_name=>'Discharge Medication'
,p_region_name=>'DischargeMedi'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>94
,p_plug_grid_column_span=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.ORDER_TYPE_ID,',
'       D.ORDER_NO,',
'       D.LOCATION_ID,',
'       D.ORDER_LOCATION_ID,',
'       TRANSACTION_NO,',
'       GENERIC_ID,',
'       (SELECT DESCRIPTION',
'          FROM INVENTORY.GENERIC',
'         WHERE GENERIC_ID = OP.GENERIC_ID) GENERIC_DESC,',
'       DRUG_ID,',
'       -- ''ABC''',
'       (SELECT DESCRIPTION',
'          FROM DEFINITIONS.DOSAGE_TYPE',
'         WHERE DOSAGE_TYPE_ID = OP.DOSE_UNIT_ID) DOSAGE_DESC,',
'       STRENGTH,',
'       OP.FREQUENCY_ID,',
'       (SELECT DESCRIPTION',
'          FROM DEFINITIONS.FREQUENCY',
'         WHERE FREQUENCY_ID = OP.FREQUENCY_ID) FREQUENCY_DESC,',
'       DOSE,',
'       DOSE_UNIT_ID,',
'       PHARMACY.PKG_COMMON.GET_DISPENSE_UNIT_DESC(P_ITEM_ID => OP.DRUG_ID) DISPENSE_UNIT_DESC,',
'       PRICE,',
'       DURATION,',
'       DURATION_UNIT_ID,',
'       (SELECT DESCRIPTION',
'          FROM DEFINITIONS.UNIT UT',
'         WHERE UT.UNIT_ID = OP.DURATION_UNIT_ID',
'           AND UT.UNIT_TYPE = ''02'') UNIT_DESC,',
'       OP.TOTAL_QUANTITY,',
'       OP.ROUTE_ID,',
'       (SELECT DESCRIPTION',
'          FROM DEFINITIONS.ROUTE RT',
'         WHERE RT.ROUTE_ID = OP.ROUTE_ID) ROUTE_DESC,',
'       CASE OP.MG_TAKE_HOME',
'         WHEN ''Y'' THEN',
'          APEX_ITEM.CHECKBOX2(P_IDX        => 1,',
'                              P_VALUE      => ''Y'',',
'                              P_ATTRIBUTES => ''checked disabled'')',
'         ELSE',
'          APEX_ITEM.CHECKBOX2(P_IDX        => 1,',
'                              P_VALUE      => ''N'',',
'                              P_ATTRIBUTES => ''disabled'')',
'       END TAKE_HOME,',
'       OP.REMARKS,',
'       OP.OBJECT_CODE,',
'       OP.MRNO,',
'       OP.STORE_ID,',
'       OP.ROWID',
'  FROM ORDERENTRY.ORDER_OUTPATIENT_MEDICINE OP,',
'       RADIATION.PATIENT_DISCHARGE          D',
' WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'   AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'   AND D.DISCHARGE_ID = :P79_DISCHARGE_ID',
'   AND OP.ORDER_TYPE_ID = D.ORDER_TYPE_ID',
'   AND OP.ORDER_NO = D.ORDER_NO',
'   AND OP.LOCATION_ID = D.LOCATION_ID',
'   AND OP.ORDER_LOCATION_ID = D.ORDER_LOCATION_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_DISCHARGE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Discharge Medication'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(46441394936270668)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>46441394936270668
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442109977270675)
,p_db_column_name=>'GENERIC_DESC'
,p_display_order=>1
,p_column_identifier=>'G'
,p_column_label=>'Generic '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442298824270677)
,p_db_column_name=>'DOSAGE_DESC'
,p_display_order=>2
,p_column_identifier=>'I'
,p_column_label=>'D.Form'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46441451433270669)
,p_db_column_name=>'ORDER_TYPE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Order Type Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46441623966270670)
,p_db_column_name=>'ORDER_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Order No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46441632263270671)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Location Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46441806492270672)
,p_db_column_name=>'ORDER_LOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Order Location Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46441864920270673)
,p_db_column_name=>'TRANSACTION_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46441952374270674)
,p_db_column_name=>'GENERIC_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Generic Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442169947270676)
,p_db_column_name=>'DRUG_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Drug Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442388797270678)
,p_db_column_name=>'STRENGTH'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Strength'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442516022270679)
,p_db_column_name=>'FREQUENCY_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Frequency Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442585297270680)
,p_db_column_name=>'FREQUENCY_DESC'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Frequency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442724433270681)
,p_db_column_name=>'DOSE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Dose'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442754015270682)
,p_db_column_name=>'DOSE_UNIT_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Dose Unit Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442833056270683)
,p_db_column_name=>'DISPENSE_UNIT_DESC'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46442962055270684)
,p_db_column_name=>'PRICE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443112433270685)
,p_db_column_name=>'DURATION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Duration'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443200224270686)
,p_db_column_name=>'DURATION_UNIT_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Duration Unit Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443253781270687)
,p_db_column_name=>'UNIT_DESC'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Unit '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443411723270688)
,p_db_column_name=>'TOTAL_QUANTITY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443512479270689)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Route Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443616361270690)
,p_db_column_name=>'ROUTE_DESC'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Route '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443765963270692)
,p_db_column_name=>'REMARKS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443840504270693)
,p_db_column_name=>'OBJECT_CODE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Object Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443958397270694)
,p_db_column_name=>'MRNO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46444096705270695)
,p_db_column_name=>'STORE_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Store Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46444187638270696)
,p_db_column_name=>'ROWID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46444411031270698)
,p_db_column_name=>'TAKE_HOME'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Take Home'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46472469614293448)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'196145'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GENERIC_DESC:DOSAGE_DESC:DOSE:DISPENSE_UNIT_DESC:FREQUENCY_DESC:DURATION:UNIT_DESC:TOTAL_QUANTITY:ROUTE_DESC:TAKE_HOME:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46444495361270699)
,p_plug_name=>'Education Given'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>104
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130054705988574148)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>344
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P79_MRNO, :P79_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P79_MRNO,P79_PARAM_MRNO'
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
 p_id=>wwv_flow_imp.id(130054780520574149)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>170
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>130054780520574149
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130054873147574150)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'<b><p style="color:#00008B">Radiation <br>No</p></b>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130054986659574151)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130055091292574152)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'<b><p style="color:#00008B">Status</p></b>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(130267392930363343)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'103239'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'RADIATION_NO:MRNO:REQUEST_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182453150212832743)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>334
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(184148921862041446)
,p_plug_name=>'Control1'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>134
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216698553235263855)
,p_plug_name=>'Patient Detail'
,p_region_name=>'radmaster'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
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
'     FROM RADIATION.RADIATION_MASTER M'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(226507716099645324)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P79_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /*#image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } */',
'',
'/*#image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'    #image img {',
'        display: inline-block;',
'        width: 10px;',
'        height: 10px;',
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
,p_ajax_items_to_submit=>'P79_MRNO'
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
 p_id=>wwv_flow_imp.id(26891957720158581)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26892329561158581)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(26892725774158581)
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
 p_id=>wwv_flow_imp.id(226508115859645328)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>23
,p_plug_grid_column_span=>5
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
'         RD.MACHINE_ID,',
'         RADIATION.PKG_RADIATION.GET_MACHINE_DESC(P_MACHINE_ID => RD.MACHINE_ID) AS MACHINE_DESC,',
'         (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'         NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'         NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOT_DOSE,',
'         ROWID',
'    FROM RADIATION.RADIATION_DETAIL RD',
'   WHERE RD.RADIATION_NO = :P79_RADIATION_NO;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P79_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(46517966946520085)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61906917931817795)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(61907036288817796)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(62658061474125780)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226508491623645331)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226508563143645332)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226508605529645333)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Radiotherapy <br>Site</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226508777399645334)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226508836244645335)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226508971167645336)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509059640645337)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509142505645338)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509239334645339)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509310696645340)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509469959645341)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509506659645342)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509668375645343)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509781717645344)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509807160645345)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Status</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226509930927645346)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226510084623645347)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Total Dose <br>(cGy) </p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226510149857645348)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Delivered Dose <br>(cGy)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(226510277862645349)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Remaining <br>Fraction</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(226508245497645329)
,p_internal_uid=>226508245497645329
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>170
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'  config.initialSelection = true;',
'',
'  return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(227112846985803679)
,p_interactive_grid_id=>wwv_flow_imp.id(226508245497645329)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(227113032167803681)
,p_report_id=>wwv_flow_imp.id(227112846985803679)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46361276159410998)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(46517966946520085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61998156723087323)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(61906917931817795)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61999071074087325)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(61907036288817796)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63204507186919508)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(62658061474125780)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227113416842803682)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(226508491623645331)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227114381299803685)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(226508563143645332)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227115289957803688)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(226508605529645333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227116177982803690)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(226508777399645334)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227117005555803693)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(226508836244645335)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227117982531803698)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(226508971167645336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227118862997803701)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(226509059640645337)
,p_is_visible=>true
,p_is_frozen=>false
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227119774048803708)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(226509142505645338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227120647526803710)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(226509239334645339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227121545955803713)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(226509310696645340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227122481610803716)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(226509469959645341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227123340600803718)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(226509506659645342)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227124255764803722)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(226509668375645343)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227125124470803726)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(226509781717645344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227126069765803729)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(226509807160645345)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.422
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227126909263803732)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(226509930927645346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227127799654803735)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(226510084623645347)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82.9375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227128780470803742)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(226510149857645348)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113.844
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227129629531803744)
,p_view_id=>wwv_flow_imp.id(227113032167803681)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(226510277862645349)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.7969
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312104739210618912)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>114
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26879332751158575)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(184148921862041446)
,p_button_name=>'Report'
,p_button_static_id=>'patdischarge'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26860116147158560)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(46229646628240379)
,p_button_name=>'FetchLastOrderedMedications'
,p_button_static_id=>'fetchmedicine'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'<b>Fetch Last Ordererd Medications</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-prescription-sheet'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26879799193158575)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(184148921862041446)
,p_button_name=>'Sign'
,p_button_static_id=>'signbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26860551846158560)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(46229646628240379)
,p_button_name=>'MedicineOrder'
,p_button_static_id=>'medicineorder'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'<b>Medicine Order</b>'
,p_button_redirect_url=>'f?p=138:259:&SESSION.::&DEBUG.::P259_P_MRNO:&P79_MRNO.'
,p_icon_css_classes=>'fa-prescription'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26880102722158575)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(184148921862041446)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26880575140158575)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(184148921862041446)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26881371382158575)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(184148921862041446)
,p_button_name=>'NewDischarge'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Discharge'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26881756560158576)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(184148921862041446)
,p_button_name=>'DisposeDischarge'
,p_button_static_id=>'DischargeDisposed'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Discharge '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26874278225158572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(182453150212832743)
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
 p_id=>wwv_flow_imp.id(26874650170158572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_button_name=>'SignRadiationDischarge'
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
 p_id=>wwv_flow_imp.id(25392039758313850)
,p_name=>'P79_IMP_INSERTION_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27021796825378601)
,p_name=>'P79_NOTE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'NOTE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27021893623378602)
,p_name=>'P79_TRANS_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'TRANS_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27021984397378603)
,p_name=>'P79_INSERTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Out ID</p></b>'
,p_source=>'INSERTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022044166378604)
,p_name=>'P79_FROM_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Fraction ID</p></b>'
,p_source=>'FROM_FRACTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022176204378605)
,p_name=>'P79_MAX_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'MAX_FRACTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022261437378606)
,p_name=>'P79_IMPLANT_IN_TIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Implant In Time</p></b>'
,p_source=>'IMPLANT_IN_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022330734378607)
,p_name=>'P79_IMPLANT_OUT_TIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Implant Out Time</p></b>'
,p_source=>'IMPLANT_OUT_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022443305378608)
,p_name=>'P79_IMP_EXTRACT_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'IMP_EXTRACT_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022595016378609)
,p_name=>'P79_FRACTIONS_PERFORMED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Fractions Performed</p></b>'
,p_source=>'FRACTIONS_PERFORMED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022651681378610)
,p_name=>'P79_LINKED_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'LINKED_RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022783842378611)
,p_name=>'P79_LINKED_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'LINKED_SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27022861508378612)
,p_name=>'P79_AFTER_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Next Performance after Fraction ID</p></b>'
,p_source=>'AFTER_FRACTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.PHASE_NO + (FRACTION / 100) FRACTION_ID',
'  FROM RADIATION.RADIATION_BOOST_PLAN B,',
'       (SELECT LEVEL FRACTION FROM DUAL CONNECT BY LEVEL < 100) F',
' WHERE B.RADIATION_NO = :P79_LINKED_RADIATION_NO',
'   AND B.SITE_ID = :P79_LINKED_SITE_ID',
'   AND F.FRACTION <= B.NO_OF_FRACTION',
'   AND NOT EXISTS (SELECT 1',
'          FROM RADIATION.RAD_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = B.RADIATION_NO',
'           AND RP.SITE_ID = B.SITE_ID',
'           AND RP.FRACTION_ID = B.PHASE_NO + (FRACTION / 100))',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P79_LINKED_SITE_ID,P79_LINKED_RADIATION_NO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
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
 p_id=>wwv_flow_imp.id(27022935682378613)
,p_name=>'P79_IS_LINKED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Linked</p></b>'
,p_source=>'IS_LINKED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027332807661317)
,p_name=>'P79_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027414027661318)
,p_name=>'P79_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027501702661319)
,p_name=>'P79_DISCHARGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Discharge ID</p></b>'
,p_source=>'DISCHARGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027646456661320)
,p_name=>'P79_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Discharge Date</p></b>'
,p_source=>'DISCHARGE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027684392661321)
,p_name=>'P79_XRT_STARTED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Start Date</p></b>'
,p_source=>'XRT_STARTED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027831244661322)
,p_name=>'P79_XRT_COMPLETED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Complete Date</p></b>'
,p_source=>'XRT_COMPLETED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46027920079661323)
,p_name=>'P79_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028029259661324)
,p_name=>'P79_DISCHARGE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'DISCHARGE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028124700661325)
,p_name=>'P79_DISCAHRGE_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'DISCAHRGE_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028189223661326)
,p_name=>'P79_FOLLOW_UP_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'FOLLOW_UP_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028292208661327)
,p_name=>'P79_TREATMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'TREATMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028412196661328)
,p_name=>'P79_TECHNIQUE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'TECHNIQUE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028499317661329)
,p_name=>'P79_FOLLOW_UP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'FOLLOW_UP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028678090661330)
,p_name=>'P79_EXPLAIN_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EXPLAIN_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028691280661331)
,p_name=>'P79_EDU_GIVEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EXPLAIN_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028850246661332)
,p_name=>'P79_CONTIGENCY_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'CONTIGENCY_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46028904061661333)
,p_name=>'P79_ORDER_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'ORDER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46029031215661334)
,p_name=>'P79_ORDER_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'ORDER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46029138115661335)
,p_name=>'P79_LOCATION_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46029254406661336)
,p_name=>'P79_ORDER_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'ORDER_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46029298393661337)
,p_name=>'P79_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46232658011240383)
,p_name=>'P79_ND_ORDER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46229646628240379)
,p_prompt=>'<b><p style="color:#00008B">Order No:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_IMPLANT_DISCHARGE_ORDER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OM.ORDER_NO AS ORDER_NO,',
'       OM.ORDER_NO AS ORDER_NO_RETURN,',
'       OM.ORDER_TYPE_ID,',
'       OM.LOCATION_ID,',
'       OM.ORDER_LOCATION_ID,',
'       OM.ORDER_DATE',
'  FROM ORDERENTRY.ORDER_MASTER OM, ORDERENTRY.ORDER_OUTPATIENT_MEDICINE OOM',
' WHERE OM.ORDER_TYPE_ID = OOM.ORDER_TYPE_ID',
'   AND OM.ORDER_NO = OOM.ORDER_NO',
'   AND OM.LOCATION_ID = OOM.LOCATION_ID',
'   AND OM.ORDER_LOCATION_ID = OOM.ORDER_LOCATION_ID',
'   AND OM.MRNO = :P79_MRNO',
' ORDER BY OM.ORDER_DATE DESC',
''))
,p_lov_cascade_parent_items=>'P79_MRNO'
,p_ajax_items_to_submit=>'P79_MRNO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46273535600240388)
,p_name=>'P79_PHASE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'PHASE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46273644709240389)
,p_name=>'P79_EDU_SIDE_EFFECTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EDU_SIDE_EFFECTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46273738520240390)
,p_name=>'P79_EDU_DIET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EDU_DIET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46273819663240391)
,p_name=>'P79_EDU_GENERAL_MEASURE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EDU_GENERAL_MEASURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46273968559240392)
,p_name=>'P79_EDU_PERSONAL_HYGIENE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EDU_PERSONAL_HYGIENE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46273986329240393)
,p_name=>'P79_EDU_FU_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'EDU_FU_INSTRUCTIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46274143497240394)
,p_name=>'P79_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>364
,p_item_plug_id=>wwv_flow_imp.id(46230044373240383)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46274300627240396)
,p_name=>'P79_TRT_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(312105291900618917)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Start Date</p></b>'
,p_source=>'TRT_START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(46274411280240397)
,p_name=>'P79_TRT_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(312105291900618917)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Complete Date</p></b> '
,p_source=>'TRT_END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46274579349240398)
,p_name=>'P79_DISCHARGE_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Sign By</p></b>'
,p_source=>'DISCHARGE_BY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46274661416240399)
,p_name=>'P79_PAT_FAMILY_EDU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'PAT_FAMILY_EDU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46274763251240400)
,p_name=>'P79_PAT_FAMILY_EDU_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_source=>'PAT_FAMILY_EDU_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46274949402240402)
,p_name=>'P79_STATUS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_item_source_plug_id=>wwv_flow_imp.id(45981289262661286)
,p_prompt=>'<b><p style="color:#00008B">Status</p></b>'
,p_source=>'STATUS_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46296493567240414)
,p_name=>'P79_ND_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46229203443240374)
,p_prompt=>'<b><p style="color:#00008B">Condition at Discharge</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46297455555240417)
,p_name=>'P79_ND_FOLLOWUP_INSTRUCTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46229338022240376)
,p_prompt=>'<b><p style="color:#00008B">Follow Up Appointment</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46298654037240426)
,p_name=>'P79_ND_DISCHARGE_ID'
,p_item_sequence=>294
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46458304470270713)
,p_name=>'P79_ND_SIDE_EFFECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#0000AF">Side Effects</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46458392535270714)
,p_name=>'P79_ND_DIET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#0000AF">Diet</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46458549921270715)
,p_name=>'P79_ND_GENERAL_MEASURE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#0000AF">General Measure</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46458636218270716)
,p_name=>'P79_ND_PERSONAL_HYGIENE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#0000AF">Personal Hygiene </p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46458694393270717)
,p_name=>'P79_ND_FU_INSTRUCTIONS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#0000AF">F/U Instruction</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46529155212520072)
,p_name=>'P79_EXPLAIN_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_item_default=>'RETURN ''N'';'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_pre_element_text=>'<b><p style="color:#8B0000"> Discharge summary explained to the Patient / Attendant &nbsp;&nbsp;&nbsp;</p></b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-lg:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46529182762520073)
,p_name=>'P79_ND_EDU_REMARKS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(46444495361270699)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46584229241520105)
,p_name=>'P79_ND_SUCCESS_MESSAGE'
,p_item_sequence=>304
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46584331816520106)
,p_name=>'P79_ND_ERROR_MESSAGE'
,p_item_sequence=>314
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61559865643920386)
,p_name=>'P79_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>224
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61559983202920387)
,p_name=>'P79_RAD_PHASE_PHASE_NO'
,p_item_sequence=>234
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62058189526817882)
,p_name=>'P79_PHY_PLAN_ID'
,p_item_sequence=>244
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62369910886470477)
,p_name=>'P79_ND_ISOCENTER_ID'
,p_item_sequence=>254
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62808650325125860)
,p_name=>'P79_CHECK_SIGN'
,p_item_sequence=>264
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62811818897125892)
,p_name=>'P79_PARAM_MRNO'
,p_item_sequence=>274
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63204967538623080)
,p_name=>'P79_SIGN_STATUS'
,p_item_sequence=>284
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130283043154574402)
,p_name=>'P79_PARAM_RADIATION_NO'
,p_item_sequence=>164
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182540835273832831)
,p_name=>'P79_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
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
 p_id=>wwv_flow_imp.id(182540863484832832)
,p_name=>'P79_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(182540956190832833)
,p_name=>'P79_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_prompt=>'<b><p style="color:#00008B">Name:</p></b>'
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
 p_id=>wwv_flow_imp.id(182541112879832834)
,p_name=>'P79_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b> '
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182541236278832835)
,p_name=>'P79_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182541319695832836)
,p_name=>'P79_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182541359608832837)
,p_name=>'P79_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182541453806832838)
,p_name=>'P79_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182541623376832839)
,p_name=>'P79_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182541716549832840)
,p_name=>'P79_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182542197331832845)
,p_name=>'P79_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182542305015832846)
,p_name=>'P79_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184425354389041758)
,p_name=>'P79_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>174
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184425428612041759)
,p_name=>'P79_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>184
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(185245833964011227)
,p_name=>'P79_TXT_URL'
,p_item_sequence=>194
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186265698980637211)
,p_name=>'P79_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(182453150212832743)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186692592881606567)
,p_name=>'P79_RAD_PLAN_DML_STATUS'
,p_item_sequence=>214
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(186693013045606572)
,p_name=>'P79_PARAM_SR_NO'
,p_item_sequence=>154
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216878437189264093)
,p_name=>'P79_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Radiation No</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216878533775264094)
,p_name=>'P79_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date</p></b>'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226685981376645545)
,p_name=>'P79_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686094463645546)
,p_name=>'P79_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Patient Name</p></b>'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686214626645547)
,p_name=>'P79_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Age</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686294598645548)
,p_name=>'P79_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Sex</p></b>'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686334669645549)
,p_name=>'P79_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686492431645550)
,p_name=>'P79_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Consultant</p></b>'
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686630506645551)
,p_name=>'P79_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226686849174645554)
,p_name=>'P79_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226687018766645555)
,p_name=>'P79_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226687077137645556)
,p_name=>'P79_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226687144380645557)
,p_name=>'P79_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226687267547645558)
,p_name=>'P79_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226687385077645559)
,p_name=>'P79_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_item_source_plug_id=>wwv_flow_imp.id(216698553235263855)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226784993665645644)
,p_name=>'P79_PARAM_SITE_ID'
,p_item_sequence=>144
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229144699889628861)
,p_name=>'P79_ALERT_TEXT'
,p_item_sequence=>204
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26970357406158617)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26880575140158575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26970860965158617)
,p_event_id=>wwv_flow_imp.id(26970357406158617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26946553255158608)
,p_name=>'UpdateISOCenter'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateISOCenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26947051640158608)
,p_event_id=>wwv_flow_imp.id(26946553255158608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P79_ISO_RADIATION_NO",',
'            "P79_ISO_SITE_ID",',
'            "P79_ISO_PHY_PLAN_ID",',
'            "P79_ISO_PHASE_NO",',
'            "P79_ISOCENTER_ID",',
'            "P79_ISO_DESCRIPTION",',
'            "P79_ISO_DOSE_FRACTION",',
'            "P79_ISO_NO_OF_FRACTION",',
'            "P79_ISO_TREATMENT_TYPE_DESC",',
'            "P79_ISO_TREATMENT_TYPE"',
'        ],',
'        x01: ''UPDATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''isocenter'').refresh();',
'                apex.theme.closeRegion(''isocenterdtl'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26947420285158608)
,p_name=>'InsertISOCenter'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertISOCenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26947956677158609)
,p_event_id=>wwv_flow_imp.id(26947420285158608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P79_ISO_RADIATION_NO",',
'            "P79_ISO_SITE_ID",',
'            "P79_ISO_PHY_PLAN_ID",',
'            "P79_ISO_PHASE_NO",',
'            "P79_ISOCENTER_ID",',
'            "P79_ISO_DESCRIPTION",',
'            "P79_ISO_DOSE_FRACTION",',
'            "P79_ISO_NO_OF_FRACTION",',
'            "P79_ISO_TREATMENT_TYPE_DESC",',
'            "P79_ISO_TREATMENT_TYPE"',
'        ],',
'        x01: ''CREATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''isocenter'').refresh();',
'                apex.theme.closeRegion(''isocenterdtl'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26948334358158609)
,p_name=>'InsertSpecialInstruction'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertSpecialInstruction'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26948811292158609)
,p_event_id=>wwv_flow_imp.id(26948334358158609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P79_SP_INTRUCT_FRACTION_NO",',
'            "P79_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P79_SP_INTRUCT_RADIATION_NO",',
'            "P79_SP_INTRUCT_SITE_ID",',
'            "P79_SP_INTRUCT_PHASE_NO",',
'            "P79_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P79_SP_INTRUCT_ROWID"',
'        ],',
'        x01: ''CREATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''specialint'').refresh();',
'                apex.theme.closeRegion(''specialintdtl'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
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
 p_id=>wwv_flow_imp.id(26949257202158609)
,p_name=>'UpdateSpecialInstruction'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateSpecialInstruction'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26949715514158609)
,p_event_id=>wwv_flow_imp.id(26949257202158609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P79_SP_INTRUCT_FRACTION_NO",',
'            "P79_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P79_SP_INTRUCT_RADIATION_NO",',
'            "P79_SP_INTRUCT_SITE_ID",',
'            "P79_SP_INTRUCT_PHASE_NO",',
'            "P79_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P79_SP_INTRUCT_ROWID"',
'        ],',
'        x01: ''UPDATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''specialint'').refresh();',
'                apex.theme.closeRegion(''specialintdtl'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26950144533158609)
,p_name=>'SetRadiationNo'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(130054705988574148)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26953631410158611)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_PARAM_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26954127751158611)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P79_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26950607436158610)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P79_RADIATION_NO,',
'         :P79_RADIATION_DATE,',
'         :P79_MRNO,',
'         :P79_PATIENT_NAME,',
'         :P79_DISP_AGE,',
'         :P79_DISP_GENDER,',
'         :P79_DOCTOR_ID,',
'         :P79_DISP_DOCTOR,',
'         :P79_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P79_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P79_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''B''))',
'     AND MRNO LIKE CASE',
'           WHEN :P79_MRNO IS NOT NULL THEN',
'            ''%'' || :P79_MRNO',
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
'',
'',
''))
,p_attribute_02=>'P79_PARAM_RADIATION_NO,P79_MRNO'
,p_attribute_03=>'P79_RADIATION_NO,P79_RADIATION_DATE,P79_PATIENT_NAME,P79_DISP_AGE,P79_DISP_GENDER,P79_DOCTOR_ID,P79_DISP_DOCTOR,P79_DISP_INTENT,P79_USER_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26951120423158610)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(226507716099645324)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26951648248158610)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(226508115859645328)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26952114751158610)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''raddetail'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var siteID = model.getValue(record, ''SITE_ID'');',
'    //var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P79_RAD_DETAIL_ND_SITE_ID'', siteID);',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26952665233158610)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45981289262661286)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26953101285158611)
,p_event_id=>wwv_flow_imp.id(26950144533158609)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P79_SIGN_STATUS") === "015") || ($v("P79_SIGN_STATUS") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("save").disable();',
'',
'',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("save").enable();',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26954524400158611)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26955030890158611)
,p_event_id=>wwv_flow_imp.id(26954524400158611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P79_MRNO IS NOT NULL THEN',
'  ',
'    :P79_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P79_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P79_MRNO);',
'      :P79_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P79_MRNO);',
'      :P79_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P79_MRNO);',
'      :P79_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P79_MRNO);',
'      :P79_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P79_MRNO);',
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
,p_attribute_02=>'P79_USER_MRNO'
,p_attribute_03=>'P79_SERVICE_NO,P79_SERVICE_STATUS,P79_RANK,P79_FORMATION,P79_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26955555702158611)
,p_event_id=>wwv_flow_imp.id(26954524400158611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P79_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P79_SERVICE_NO").show();',
'    apex.item("P79_SERVICE_STATUS").show();',
'    apex.item("P79_RANK").show();',
'    apex.item("P79_FORMATION").show();',
'    apex.item("P79_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P79_SERVICE_NO").hide();',
'    apex.item("P79_SERVICE_STATUS").hide();',
'    apex.item("P79_RANK").hide();',
'    apex.item("P79_FORMATION").hide();',
'    apex.item("P79_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312103740527618902)
,p_event_id=>wwv_flow_imp.id(26954524400158611)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(130054705988574148)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26955966759158612)
,p_name=>'DARadDetail1'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(226508115859645328)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26956429110158612)
,p_event_id=>wwv_flow_imp.id(26955966759158612)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P79_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P79_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22337287212272926)
,p_event_id=>wwv_flow_imp.id(26955966759158612)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_IMP_INSERTION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(PD.DISCHARGE_ID)',
'  FROM RADIATION.PATIENT_DISCHARGE PD',
' WHERE PD.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'   AND PD.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'   AND PD.STATUS_ID IS NOT NULL',
''))
,p_attribute_07=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26956913948158612)
,p_event_id=>wwv_flow_imp.id(26955966759158612)
,p_event_result=>'TRUE'
,p_action_sequence=>11
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46230044373240383)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159081188512816235)
,p_event_id=>wwv_flow_imp.id(26955966759158612)
,p_event_result=>'TRUE'
,p_action_sequence=>21
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT D.RADIATION_NO,',
'D.SITE_ID,',
'D.DISCHARGE_ID,',
'TO_CHAR(D.DISCHARGE_DATE, ''DD-MON-YYYY HH24:MI'') DISCHARGE_DATE,',
'D.XRT_STARTED_ON,',
'D.XRT_COMPLETED_ON,',
'D.REMARKS,',
'D.DISCHARGE_BY,',
'D.DISCAHRGE_LOCATION_ID,',
'D.FOLLOW_UP_INSTRUCTION,',
'D.TREATMENT_TYPE,',
'D.TECHNIQUE_ID,',
'D.FOLLOW_UP,',
'D.EXPLAIN_LANGUAGE,',
'D.EXPLAIN_TEXT,',
'D.CONTIGENCY_FLAG,',
'D.ORDER_TYPE_ID,',
'D.ORDER_NO,',
'D.LOCATION_ID,',
'D.ORDER_LOCATION_ID,',
'D.ACTIVE,',
'D.PHASE_NO,',
'D.EDU_SIDE_EFFECTS,',
'D.EDU_DIET,',
'D.EDU_GENERAL_MEASURE,',
'D.EDU_PERSONAL_HYGIENE,',
'D.EDU_FU_INSTRUCTIONS,',
'NVL(E.STATUS_ID, D.STATUS_ID) STATUS_ID,',
'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => NVL(E.STATUS_ID,',
'                                                                           D.STATUS_ID)) STATUS_DESC,',
'TO_CHAR((SELECT MIN(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'')  TRT_START_DATE,',
'TO_CHAR((SELECT MAX(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'') TRT_END_DATE,',
'HIS.PKG_PATIENT.GET_PATIENT_NAME(NVL(E.SIGN_BY, D.DISCHARGE_BY)) DISCHARGE_BY_NAME,',
'D.PAT_FAMILY_EDU,',
'D.PAT_FAMILY_EDU_REMARKS,',
'D.NOTE_ID,',
'D.TRANS_TYPE,',
'I.INSERTION_ID,',
'I.FROM_FRACTION_ID,',
'NVL(I.TO_FRACTION_ID,',
' ((SELECT MAX(P.FRACTION_ID)',
'     FROM RADIATION.RAD_PERFORMANCE P',
'    WHERE P.RADIATION_NO = E.RADIATION_NO',
'      AND P.SITE_ID = E.SITE_ID',
'      AND P.IMP_INSERTION_ID = E.INSERTION_ID',
'      AND P.STATUS_ID = ''015''))) MAX_FRACTION_ID,',
'TO_CHAR(I.SIGN_DATE, ''DD-MON-YYYY HH24:MI'') IMPLANT_IN_TIME,',
'TO_CHAR(NVL(E.SIGN_DATE, SYSDATE),''DD-MON-YYYY HH24:MI'') IMPLANT_OUT_TIME,',
'E.REMARKS IMP_EXTRACT_REMARKS,',
'(SELECT COUNT(1)',
'FROM RADIATION.RAD_PERFORMANCE P',
'WHERE P.RADIATION_NO = E.RADIATION_NO',
' AND P.SITE_ID = E.SITE_ID',
' AND P.IMP_INSERTION_ID = E.INSERTION_ID',
' AND P.STATUS_ID = ''015'') FRACTIONS_PERFORMED,',
'L.LINKED_RADIATION_NO,',
'L.LINKED_SITE_ID,',
'L.AFTER_FRACTION_ID,',
'CASE',
'WHEN L.LINKED_RADIATION_NO IS NOT NULL THEN',
'''Y''',
'ELSE',
'''N''',
'END IS_LINKED',
'INTO :P79_RADIATION_NO_1,',
':P79_SITE_ID,',
':P79_DISCHARGE_ID,',
':P79_DISCHARGE_DATE,',
':P79_XRT_STARTED_ON,',
':P79_XRT_COMPLETED_ON,',
':P79_ND_REMARKS,',
':P79_DISCHARGE_BY,',
':P79_DISCAHRGE_LOCATION_ID,',
':P79_ND_FOLLOWUP_INSTRUCTION,',
':P79_TREATMENT_TYPE,',
':P79_TECHNIQUE_ID,',
':P79_FOLLOW_UP,',
':P79_EXPLAIN_LANGUAGE,',
':P79_EXPLAIN_TEXT,',
':P79_CONTIGENCY_FLAG,',
':P79_ORDER_TYPE_ID,',
':P79_ORDER_NO,',
':P79_LOCATION_ID_1,',
':P79_ORDER_LOCATION_ID,',
':P79_ACTIVE,',
':P79_PHASE_NO,',
':P79_ND_SIDE_EFFECTS,',
':P79_ND_DIET,',
':P79_ND_GENERAL_MEASURE,',
':P79_ND_PERSONAL_HYGIENE,',
':P79_ND_FU_INSTRUCTIONS,',
':P79_STATUS_ID,',
':P79_STATUS_DESC,',
':P79_TRT_START_DATE,',
':P79_TRT_END_DATE,',
':P79_DISCHARGE_BY_NAME,',
':P79_EDU_GIVEN,',
':P79_ND_EDU_REMARKS,',
':P79_NOTE_ID,',
':P79_TRANS_TYPE,',
':P79_INSERTION_ID,',
':P79_FROM_FRACTION_ID,',
':P79_MAX_FRACTION_ID,',
':P79_IMPLANT_IN_TIME,',
':P79_IMPLANT_OUT_TIME,',
':P79_IMP_EXTRACT_REMARKS,',
':P79_FRACTIONS_PERFORMED,',
':P79_LINKED_RADIATION_NO,',
':P79_LINKED_SITE_ID,',
':P79_AFTER_FRACTION_ID,',
':P79_IS_LINKED',
'',
'FROM RADIATION.PATIENT_DISCHARGE     D,',
'RADIATION.RAD_IMPLANT_EXTRACT   E,',
'RADIATION.RAD_IMPLANT_INSERT    I,',
'RADIATION.RADIATION_DETAIL_LINK L',
'WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'AND D.DISCHARGE_ID = :P79_IMP_INSERTION_ID',
'AND E.RADIATION_NO(+) = D.RADIATION_NO',
'AND E.SITE_ID(+) = D.SITE_ID',
'AND E.INSERTION_ID(+) = D.IMP_INSERTION_ID',
'AND I.RADIATION_NO(+) = E.RADIATION_NO',
'AND I.SITE_ID(+) = E.SITE_ID',
'AND I.INSERTION_ID(+) = E.INSERTION_ID',
'AND L.RADIATION_NO(+) = D.RADIATION_NO',
'AND L.SITE_ID(+) = D.SITE_ID;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_attribute_02=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_IMP_INSERTION_ID'
,p_attribute_03=>'P79_RADIATION_NO_1,P79_SITE_ID,P79_DISCHARGE_ID,P79_DISCHARGE_DATE,P79_XRT_STARTED_ON,P79_XRT_COMPLETED_ON,P79_ND_REMARKS,P79_DISCHARGE_BY,P79_DISCAHRGE_LOCATION_ID,P79_ND_FOLLOWUP_INSTRUCTION,P79_TREATMENT_TYPE,P79_TECHNIQUE_ID,P79_FOLLOW_UP,P79_EXP'
||'LAIN_LANGUAGE,P79_EDU_GIVEN,P79_CONTIGENCY_FLAG,P79_ORDER_TYPE_ID,P79_ORDER_NO,P79_LOCATION_ID_1,P79_ORDER_LOCATION_ID,P79_ACTIVE,P79_PHASE_NO,P79_ND_SIDE_EFFECTS,P79_ND_DIET,P79_ND_GENERAL_MEASURE,P79_ND_PERSONAL_HYGIENE,P79_ND_FU_INSTRUCTIONS,P79_S'
||'TATUS_ID,P79_STATUS_DESC,P79_TRT_START_DATE,P79_TRT_END_DATE,P79_DISCHARGE_BY_NAME,P79_ND_EDU_REMARKS,P79_NOTE_ID,P79_TRANS_TYPE,P79_INSERTION_ID,P79_FROM_FRACTION_ID,P79_MAX_FRACTION_ID,P79_IMPLANT_IN_TIME,P79_IMPLANT_OUT_TIME,P79_IMP_EXTRACT_REMARK'
||'S,P79_FRACTIONS_PERFORMED,P79_LINKED_RADIATION_NO,P79_LINKED_SITE_ID,P79_AFTER_FRACTION_ID,P79_IS_LINKED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26957861424158612)
,p_name=>'PopulatePlanningSiteId'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ND_DOSE_CONSTRAINT_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26958331565158613)
,p_event_id=>wwv_flow_imp.id(26957861424158612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P79_DOSE_CONSTRAINT_SITE_ID").setValue($v("P79_ND_DOSE_CONSTRAINT_SITE"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26958706305158613)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26874650170158572)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314367975769318312)
,p_event_id=>wwv_flow_imp.id(26958706305158613)
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
'  :P79_TXT_ALERT_TEXT := null;',
'  :P79_SUCCESS_MSG    := null;',
'  :P79_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P79_DISP_MRNO,',
'                                          :P79_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P79_ND_ERROR_MESSAGE := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P79_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P79_VALIDATE'', ''Y'');',
'    :P79_ND_ERROR_MESSAGE := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P79_DISP_MRNO,P79_PASSWORD'
,p_attribute_03=>'P79_SUCCESS_MSG,P79_ERROR,P79_VALIDATE,P79_ND_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314368075001318313)
,p_event_id=>wwv_flow_imp.id(26958706305158613)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P79_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00160.SIGN_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P79_RAD_DETAIL_ND_RADIATION_NO,',
'                                               P_SITE_ID           => :P79_RAD_DETAIL_ND_SITE_ID,',
'                                               P_DISCHARGE_ID      => :P79_DISCHARGE_ID,',
'                                               P_SIGN_BY           => :P79_DISP_MRNO,',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_OBJECT_CODE       => ''S18APX00068'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P79_ND_ERROR_MESSAGE    := L_ALERT_TEXT;',
'      :P79_VALIDATE := ''N'';',
'    ELSE',
'      :P79_ND_SUCCESS_MESSAGE := ''Radiotheraphy Discharge Signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_DISCHARGE_ID,P79_DISP_MRNO,P79_VALIDATE'
,p_attribute_03=>'P79_ERROR,P79_SUCCESS_MSG,P79_VALIDATE,P79_ND_SUCCESS_MESSAGE,P79_ND_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P79_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314368843038318321)
,p_event_id=>wwv_flow_imp.id(26958706305158613)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT D.RADIATION_NO,',
'D.SITE_ID,',
'D.DISCHARGE_ID,',
'TO_CHAR(D.DISCHARGE_DATE, ''DD-MON-YYYY HH24:MI'') DISCHARGE_DATE,',
'D.XRT_STARTED_ON,',
'D.XRT_COMPLETED_ON,',
'D.REMARKS,',
'D.DISCHARGE_BY,',
'D.DISCAHRGE_LOCATION_ID,',
'D.FOLLOW_UP_INSTRUCTION,',
'D.TREATMENT_TYPE,',
'D.TECHNIQUE_ID,',
'D.FOLLOW_UP,',
'D.EXPLAIN_LANGUAGE,',
'D.EXPLAIN_TEXT,',
'D.CONTIGENCY_FLAG,',
'D.ORDER_TYPE_ID,',
'D.ORDER_NO,',
'D.LOCATION_ID,',
'D.ORDER_LOCATION_ID,',
'D.ACTIVE,',
'D.PHASE_NO,',
'D.EDU_SIDE_EFFECTS,',
'D.EDU_DIET,',
'D.EDU_GENERAL_MEASURE,',
'D.EDU_PERSONAL_HYGIENE,',
'D.EDU_FU_INSTRUCTIONS,',
'NVL(E.STATUS_ID, D.STATUS_ID) STATUS_ID,',
'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => NVL(E.STATUS_ID,',
'                                                                           D.STATUS_ID)) STATUS_DESC,',
'TO_CHAR((SELECT MIN(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'')  TRT_START_DATE,',
'TO_CHAR((SELECT MAX(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'') TRT_END_DATE,',
'HIS.PKG_PATIENT.GET_PATIENT_NAME(NVL(E.SIGN_BY, D.DISCHARGE_BY)) DISCHARGE_BY_NAME,',
'NVL(D.PAT_FAMILY_EDU,''N''),',
'D.PAT_FAMILY_EDU_REMARKS,',
'D.NOTE_ID,',
'D.TRANS_TYPE,',
'I.INSERTION_ID,',
'I.FROM_FRACTION_ID,',
'NVL(I.TO_FRACTION_ID,',
' ((SELECT MAX(P.FRACTION_ID)',
'     FROM RADIATION.RAD_PERFORMANCE P',
'    WHERE P.RADIATION_NO = E.RADIATION_NO',
'      AND P.SITE_ID = E.SITE_ID',
'      AND P.IMP_INSERTION_ID = E.INSERTION_ID',
'      AND P.STATUS_ID = ''015''))) MAX_FRACTION_ID,',
'TO_CHAR(I.SIGN_DATE, ''DD-MON-YYYY HH24:MI'') IMPLANT_IN_TIME,',
'TO_CHAR(NVL(E.SIGN_DATE, SYSDATE),''DD-MON-YYYY HH24:MI'') IMPLANT_OUT_TIME,',
'E.REMARKS IMP_EXTRACT_REMARKS,',
'(SELECT COUNT(1)',
'FROM RADIATION.RAD_PERFORMANCE P',
'WHERE P.RADIATION_NO = E.RADIATION_NO',
' AND P.SITE_ID = E.SITE_ID',
' AND P.IMP_INSERTION_ID = E.INSERTION_ID',
' AND P.STATUS_ID = ''015'') FRACTIONS_PERFORMED,',
'L.LINKED_RADIATION_NO,',
'L.LINKED_SITE_ID,',
'L.AFTER_FRACTION_ID,',
'CASE',
'WHEN L.LINKED_RADIATION_NO IS NOT NULL THEN',
'''Y''',
'ELSE',
'''N''',
'END IS_LINKED',
'INTO :P79_RADIATION_NO_1,',
':P79_SITE_ID,',
':P79_DISCHARGE_ID,',
':P79_DISCHARGE_DATE,',
':P79_XRT_STARTED_ON,',
':P79_XRT_COMPLETED_ON,',
':P79_ND_REMARKS,',
':P79_DISCHARGE_BY,',
':P79_DISCAHRGE_LOCATION_ID,',
':P79_ND_FOLLOWUP_INSTRUCTION,',
':P79_TREATMENT_TYPE,',
':P79_TECHNIQUE_ID,',
':P79_FOLLOW_UP,',
':P79_EXPLAIN_LANGUAGE,',
':P79_EXPLAIN_TEXT,',
':P79_CONTIGENCY_FLAG,',
':P79_ORDER_TYPE_ID,',
':P79_ORDER_NO,',
':P79_LOCATION_ID_1,',
':P79_ORDER_LOCATION_ID,',
':P79_ACTIVE,',
':P79_PHASE_NO,',
':P79_ND_SIDE_EFFECTS,',
':P79_ND_DIET,',
':P79_ND_GENERAL_MEASURE,',
':P79_ND_PERSONAL_HYGIENE,',
':P79_ND_FU_INSTRUCTIONS,',
':P79_STATUS_ID,',
':P79_STATUS_DESC,',
':P79_TRT_START_DATE,',
':P79_TRT_END_DATE,',
':P79_DISCHARGE_BY_NAME,',
':P79_EDU_GIVEN,',
':P79_ND_EDU_REMARKS,',
':P79_NOTE_ID,',
':P79_TRANS_TYPE,',
':P79_INSERTION_ID,',
':P79_FROM_FRACTION_ID,',
':P79_MAX_FRACTION_ID,',
':P79_IMPLANT_IN_TIME,',
':P79_IMPLANT_OUT_TIME,',
':P79_IMP_EXTRACT_REMARKS,',
':P79_FRACTIONS_PERFORMED,',
':P79_LINKED_RADIATION_NO,',
':P79_LINKED_SITE_ID,',
':P79_AFTER_FRACTION_ID,',
':P79_IS_LINKED',
'',
'FROM RADIATION.PATIENT_DISCHARGE     D,',
'RADIATION.RAD_IMPLANT_EXTRACT   E,',
'RADIATION.RAD_IMPLANT_INSERT    I,',
'RADIATION.RADIATION_DETAIL_LINK L',
'WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'AND D.DISCHARGE_ID = :P79_IMP_INSERTION_ID',
'AND E.RADIATION_NO(+) = D.RADIATION_NO',
'AND E.SITE_ID(+) = D.SITE_ID',
'AND E.INSERTION_ID(+) = D.IMP_INSERTION_ID',
'AND I.RADIATION_NO(+) = E.RADIATION_NO',
'AND I.SITE_ID(+) = E.SITE_ID',
'AND I.INSERTION_ID(+) = E.INSERTION_ID',
'AND L.RADIATION_NO(+) = D.RADIATION_NO',
'AND L.SITE_ID(+) = D.SITE_ID;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_attribute_02=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_IMP_INSERTION_ID'
,p_attribute_03=>'P79_RADIATION_NO_1,P79_SITE_ID,P79_DISCHARGE_ID,P79_DISCHARGE_DATE,P79_XRT_STARTED_ON,P79_XRT_COMPLETED_ON,P79_ND_REMARKS,P79_DISCHARGE_BY,P79_DISCAHRGE_LOCATION_ID,P79_ND_FOLLOWUP_INSTRUCTION,P79_TREATMENT_TYPE,P79_TECHNIQUE_ID,P79_FOLLOW_UP,P79_EXP'
||'LAIN_LANGUAGE,P79_EDU_GIVEN,P79_CONTIGENCY_FLAG,P79_ORDER_TYPE_ID,P79_ORDER_NO,P79_LOCATION_ID_1,P79_ORDER_LOCATION_ID,P79_ACTIVE,P79_PHASE_NO,P79_ND_SIDE_EFFECTS,P79_ND_DIET,P79_ND_GENERAL_MEASURE,P79_ND_PERSONAL_HYGIENE,P79_ND_FU_INSTRUCTIONS,P79_S'
||'TATUS_ID,P79_STATUS_DESC,P79_TRT_START_DATE,P79_TRT_END_DATE,P79_DISCHARGE_BY_NAME,P79_ND_EDU_REMARKS,P79_NOTE_ID,P79_TRANS_TYPE,P79_INSERTION_ID,P79_FROM_FRACTION_ID,P79_MAX_FRACTION_ID,P79_IMPLANT_IN_TIME,P79_IMPLANT_OUT_TIME,P79_IMP_EXTRACT_REMARK'
||'S,P79_FRACTIONS_PERFORMED,P79_LINKED_RADIATION_NO,P79_LINKED_SITE_ID,P79_AFTER_FRACTION_ID,P79_IS_LINKED,P79_PAT_FAMILY_EDU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26960689891158614)
,p_name=>'CloseSign'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26874278225158572)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26961196509158614)
,p_event_id=>wwv_flow_imp.id(26960689891158614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182453150212832743)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26961515207158614)
,p_name=>'SetMRNO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26962043639158614)
,p_event_id=>wwv_flow_imp.id(26961515207158614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_PASSWORD,P79_PATIENT_NAME,P79_DISP_MRNO,P79_SUCCESS_MSG,P79_ND_SUCCESS_MESSAGE,P79_ERROR,P79_ND_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26962526746158614)
,p_event_id=>wwv_flow_imp.id(26961515207158614)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P79_PATIENT_TYPE IS NOT NULL AND :P79_PATIENT_MRNO IS NOT NULL THEN',
'    :P79_DISP_MRNO := :P79_PATIENT_TYPE || LPAD(:P79_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P79_PATIENT_TYPE,P79_PATIENT_MRNO'
,p_attribute_03=>'P79_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26963003272158615)
,p_event_id=>wwv_flow_imp.id(26961515207158614)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P79_ERROR := NULL;',
'  IF :P79_PATIENT_MRNO IS NOT NULL THEN',
'    :P79_DISP_MRNO := :P79_PATIENT_TYPE || LPAD(:P79_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P79_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P79_ERROR        := ''This is not an active employee.'';',
'      :P79_PATIENT_MRNO := NULL;',
'      :P79_DISP_MRNO    := NULL;',
'      :P79_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P79_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P79_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P43_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P79_PATIENT_MRNO,P79_PATIENT_TYPE'
,p_attribute_03=>'P79_DISP_MRNO'
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
 p_id=>wwv_flow_imp.id(26963554243158615)
,p_event_id=>wwv_flow_imp.id(26961515207158614)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P79_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P79_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26964063736158615)
,p_event_id=>wwv_flow_imp.id(26961515207158614)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P79_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P79_DISP_MRNO);'
,p_attribute_02=>'P79_DISP_MRNO'
,p_attribute_03=>'P79_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26964432906158615)
,p_name=>'SetTotalDose1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ISO_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26964904516158615)
,p_event_id=>wwv_flow_imp.id(26964432906158615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P79_ISO_DOSE_FRACTION,0) * NVL(:P79_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P79_ISO_DOSE_FRACTION,P79_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26965371545158615)
,p_name=>'SetTotalDose2'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ISO_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26965888942158615)
,p_event_id=>wwv_flow_imp.id(26965371545158615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P79_ISO_DOSE_FRACTION,0) * NVL(:P79_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P79_ISO_DOSE_FRACTION,P79_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26966296963158616)
,p_name=>'InsertFields'
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26966790897158616)
,p_event_id=>wwv_flow_imp.id(26966296963158616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P79_FIELD_NO",',
'            "P79_FIELD_DESCRIPTION",',
'            "P79_FIELD_ENERGY",',
'            "P79_FIELD_GANTRY",',
'            "P79_FIELD_SSD",',
'            "P79_FIELD_MU",',
'            "P79_FIELDS_RADIATION_NO",',
'            "P79_FIELDS_SITE_ID",',
'            "P79_FIELDS_PHY_PLAN_ID",',
'            "P79_FIELDS_ISOCENTER_ID",',
'        ],',
'        x01: ''CREATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''field'').refresh();',
'                apex.theme.closeRegion(''fielddtl'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26967169139158616)
,p_name=>'UpdateFields'
,p_event_sequence=>370
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26967664307158616)
,p_event_id=>wwv_flow_imp.id(26967169139158616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P79_FIELD_NO",',
'            "P79_FIELD_DESCRIPTION",',
'            "P79_FIELD_ENERGY",',
'            "P79_FIELD_GANTRY",',
'            "P79_FIELD_SSD",',
'            "P79_FIELD_MU",',
'            "P79_FIELDS_RADIATION_NO",',
'            "P79_FIELDS_SITE_ID",',
'            "P79_FIELDS_PHY_PLAN_ID",',
'            "P79_FIELDS_ISOCENTER_ID",',
'        ],',
'        x01: ''UPDATE''',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''field'').refresh();',
'                apex.theme.closeRegion(''fielddtl'');',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26968083976158616)
,p_name=>'DischargeSign'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26879799193158575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26968551841158617)
,p_event_id=>wwv_flow_imp.id(26968083976158616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P79_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P79_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P79_DISP_MRNO    := (:P79_PATIENT_TYPE ||',
'                         LPAD(:P79_PATIENT_MRNO, 8, ''0''));',
'    :P79_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P79_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P79_PATIENT_MRNO,P79_PATIENT_TYPE,P79_DISP_MRNO,P79_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26969053084158617)
,p_event_id=>wwv_flow_imp.id(26968083976158616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P79_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26969432583158617)
,p_name=>'DASuccessMsg'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_SUCCESS_MSG'
,p_condition_element=>'P79_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26969936488158617)
,p_event_id=>wwv_flow_imp.id(26969432583158617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P79_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26934201771158603)
,p_name=>'DAErrorMessage'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ERROR'
,p_condition_element=>'P79_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26934754403158604)
,p_event_id=>wwv_flow_imp.id(26934201771158603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P79_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P79_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26935147751158604)
,p_name=>'EnableDisableFields'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22338436100272938)
,p_event_id=>wwv_flow_imp.id(26935147751158604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P79_STATUS_ID") === "015") || ($v("P79_STATUS_ID") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("save").disable();',
'    apex.item("P79_ND_REMARKS").disable();',
'    apex.item("P79_ND_FOLLOWUP_INSTRUCTION").disable();',
'    apex.item("P79_ND_ORDER_NO").disable();',
'    apex.item("P79_ND_SIDE_EFFECTS").disable();',
'    apex.item("P79_ND_DIET").disable();',
'    apex.item("P79_XRT_STARTED_ON").disable();',
'    apex.item("P79_XRT_COMPLETED_ON").disable();',
'    apex.item("P79_ND_GENERAL_MEASURE").disable();',
'    apex.item("P79_ND_PERSONAL_HYGIENE").disable();',
'    apex.item("P79_ND_FU_INSTRUCTIONS").disable();',
'    apex.item("P79_EDU_GIVEN").disable();',
'    apex.item("P79_EXPLAIN_TEXT").disable();',
'    apex.item("fetchmedicine").disable();',
'    apex.item("medicineorder").disable();',
'',
'',
'',
'',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("save").enable();',
'    apex.item("P79_ND_REMARKS").enable();',
'    apex.item("P79_ND_FOLLOWUP_INSTRUCTION").enable();',
'    apex.item("P79_ND_ORDER_NO").enable();',
'    apex.item("P79_ND_SIDE_EFFECTS").enable();',
'    apex.item("P79_ND_DIET").enable();',
'    apex.item("P79_XRT_STARTED_ON").enable();',
'    apex.item("P79_XRT_COMPLETED_ON").enable();',
'    apex.item("P79_ND_GENERAL_MEASURE").enable();',
'    apex.item("P79_ND_PERSONAL_HYGIENE").enable();',
'    apex.item("P79_ND_FU_INSTRUCTIONS").enable();',
'    apex.item("P79_EDU_GIVEN").enable();',
'    apex.item("P79_EXPLAIN_TEXT").enable();',
'    apex.item("fetchmedicine").enable();',
'    apex.item("medicineorder").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26935625084158604)
,p_event_id=>wwv_flow_imp.id(26935147751158604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(130054705988574148)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26936990225158604)
,p_name=>'SetDischargeId'
,p_event_sequence=>450
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46230044373240383)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26937475431158605)
,p_event_id=>wwv_flow_imp.id(26936990225158604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P79_IMP_INSERTION_ID'', _.raddishistory.DISCHARGE_ID);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26938306359158605)
,p_name=>'DAFetchLastMedicationOrder'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26860116147158560)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26938822308158605)
,p_event_id=>wwv_flow_imp.id(26938306359158605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  IF :P79_DISCHARGE_ID IS NOT NULL THEN',
'    RADIATION.PKG_S18FRM00146.LINK_LATEST_MEDICATIONS(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P79_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P79_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_DISCHARGE_ID      => :P79_DISCHARGE_ID,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00059'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'  ',
'  END IF;',
'',
'  IF NVL(L_STOP, ''~'') = ''Y'' THEN',
'    :P79_ND_ERROR_MESSAGE := L_ALERT_TEXT;',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  :P79_ND_SUCCESS_MESSAGE := ''Order Linked Properly'';',
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
,p_attribute_02=>'P79_DISCHARGE_ID,P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P79_ND_ERROR_MESSAGE,P79_ND_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26939332412158605)
,p_event_id=>wwv_flow_imp.id(26938306359158605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46230695012240389)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26939793081158605)
,p_name=>'DANDErrorMessage'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ND_ERROR_MESSAGE'
,p_condition_element=>'P79_ND_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26940216903158606)
,p_event_id=>wwv_flow_imp.id(26939793081158605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P79_ND_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26940672109158606)
,p_name=>'DANDSuccessMessage'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ND_SUCCESS_MESSAGE'
,p_condition_element=>'P79_ND_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26941109907158606)
,p_event_id=>wwv_flow_imp.id(26940672109158606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P79_ND_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26942462016158606)
,p_name=>'DADischargeId'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_DISCHARGE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26942904926158606)
,p_event_id=>wwv_flow_imp.id(26942462016158606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46230695012240389)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26943360527158607)
,p_name=>'DASave'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26880102722158575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26943863441158607)
,p_event_id=>wwv_flow_imp.id(26943360527158607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDischarge",',
'    {',
'        pageItems: [',
'            "P79_RAD_DETAIL_ND_RADIATION_NO",',
'            "P79_RAD_DETAIL_ND_SITE_ID",',
'            "P79_DISCHARGE_ID",',
'            "P79_DISCHARGE_DATE",',
'            "P79_TRT_START_DATE",',
'            "P79_TRT_END_DATE",',
'            "P79_ND_REMARKS",',
'            "P79_XRT_STARTED_ON",',
'"P79_XRT_COMPLETED_ON",',
'            "P79_DISCHARGE_BY",',
'            "P79_DISCAHRGE_LOCATION_ID",',
'            "P79_ND_FOLLOWUP_INSTRUCTION",',
'            "P79_TREATMENT_TYPE",',
'            "P79_TECHNIQUE_ID",',
'            "P79_FOLLOW_UP",',
'            "P79_EXPLAIN_LANGUAGE",',
'            "P79_EXPLAIN_TEXT",',
'            "P79_CONTIGENCY_FLAG",',
'            "P79_ORDER_TYPE_ID",',
'            "P79_ORDER_NO",',
'            "P79_LOCATION_ID_1",',
'            "P79_ORDER_LOCATION_ID",',
'            "P79_ACTIVE",',
'            "P79_PHASE_NO",',
'            "P79_ND_SIDE_EFFECTS",',
'            "P79_ND_DIET",',
'            "P79_ND_GENERAL_MEASURE",',
'            "P79_ND_PERSONAL_HYGIENE",',
'            "P79_ND_FU_INSTRUCTIONS",',
'            "P79_STATUS_ID",',
'            "P79_STATUS_DESC",',
'            "P79_TRT_START_DATE",',
'            "P79_TRT_END_DATE ",',
'            "P79_DISCHARGE_BY_NAME",',
'            "P79_EDU_GIVEN",',
'            "P79_ND_EDU_REMARKS"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'            else {',
'                apex.message.alert(obj.response, function () {',
'                    //afterLoad();',
'                }, {',
'                    title: "Error",',
'                    style: "warning",',
'                    iconClasses: "fa fa-warning fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26944282783158607)
,p_name=>'ExportRDF'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26879332751158575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26944710473158607)
,p_event_id=>wwv_flow_imp.id(26944282783158607)
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
 p_id=>wwv_flow_imp.id(26945263059158607)
,p_event_id=>wwv_flow_imp.id(26944282783158607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = { "P_RADIATION_NO": $v("P79_RADIATION_NO") };',
'let object = {',
'    "OBJECTCODE": ''S18REP00033'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26945634995158608)
,p_name=>'DAChangeStatusId'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26946151899158608)
,p_event_id=>wwv_flow_imp.id(26945634995158608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_SIGN_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P79_STATUS_ID;'
,p_attribute_07=>'P79_STATUS_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22337648875272930)
,p_event_id=>wwv_flow_imp.id(26945634995158608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P79_STATUS_ID") === "015") || ($v("P79_STATUS_ID") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("save").disable();',
'    apex.item("P79_ND_REMARKS").disable();',
'    apex.item("P79_ND_FOLLOWUP_INSTRUCTION").disable();',
'    apex.item("P79_ND_ORDER_NO").disable();',
'    apex.item("P79_ND_SIDE_EFFECTS").disable();',
'    apex.item("P79_ND_DIET").disable();',
'    apex.item("P79_XRT_STARTED_ON").disable();',
'    apex.item("P79_XRT_COMPLETED_ON").disable();',
'    apex.item("P79_ND_GENERAL_MEASURE").disable();',
'    apex.item("P79_ND_PERSONAL_HYGIENE").disable();',
'    apex.item("P79_ND_FU_INSTRUCTIONS").disable();',
'    apex.item("P79_EDU_GIVEN").disable();',
'    apex.item("P79_EXPLAIN_TEXT").disable();',
'    apex.item("fetchmedicine").disable();',
'    apex.item("medicineorder").disable();',
'',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("save").enable();',
'    apex.item("P79_ND_REMARKS").enable();',
'    apex.item("P79_ND_FOLLOWUP_INSTRUCTION").enable();',
'    apex.item("P79_ND_ORDER_NO").enable();',
'    apex.item("P79_ND_SIDE_EFFECTS").enable();',
'    apex.item("P79_XRT_STARTED_ON").enable();',
'    apex.item("P79_XRT_COMPLETED_ON").enable();',
'    apex.item("P79_ND_DIET").enable();',
'    apex.item("P79_ND_GENERAL_MEASURE").enable();',
'    apex.item("P79_ND_PERSONAL_HYGIENE").enable();',
'    apex.item("P79_ND_FU_INSTRUCTIONS").enable();',
'    apex.item("P79_EDU_GIVEN").enable();',
'    apex.item("P79_EXPLAIN_TEXT").enable();',
'    apex.item("fetchmedicine").enable();',
'    apex.item("medicineorder").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22338011408272934)
,p_name=>'DANewDischarge'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26881371382158575)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22338168383272935)
,p_event_id=>wwv_flow_imp.id(22338011408272934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P79_SUCCESS_MSG").setValue('''');',
'apex.item("P79_ERROR").setValue('''');',
'apex.server.process("ProcessRadiationCreateDischarge",',
'    {',
'        pageItems: [',
'            "P79_RAD_DETAIL_ND_RADIATION_NO",',
'            "P79_RAD_DETAIL_ND_SITE_ID",',
'            "P79_ND_EDU_REMARKS",',
'            "P79_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P79_SUCCESS_MSG").setValue(obj.message);',
'',
'                apex.item("P79_ND_EDU_REMARKS").setValue('''');',
'            } else {',
'                apex.item("P79_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
'',
'apex.item("P79_ND_REMARKS").enable();',
'apex.item("P79_ND_FOLLOWUP_INSTRUCTION").enable();',
'apex.item("P79_ND_ORDER_NO").enable();',
'apex.item("P79_ND_SIDE_EFFECTS").enable();',
'apex.item("P79_ND_DIET").enable();',
'apex.item("P79_ND_GENERAL_MEASURE").enable();',
'apex.item("P79_ND_PERSONAL_HYGIENE").enable();',
'apex.item("P79_ND_FU_INSTRUCTIONS").enable();',
'apex.item("P79_EXPLAIN_TEXT").enable();',
'apex.item("P79_ND_EDU_REMARKS").enable();',
'apex.item("fetchmedicine").enable();',
'apex.item("medicineorder").enable();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314367692015318309)
,p_event_id=>wwv_flow_imp.id(22338011408272934)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''raddishistory'').refresh();',
'',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 500);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22338201130272936)
,p_name=>'DADisposeDischarge'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26881756560158576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312103892321618903)
,p_event_id=>wwv_flow_imp.id(22338201130272936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Are you sure you want to Dispose this HDR plan?</b>'
,p_attribute_02=>'System Message!'
,p_attribute_03=>'warning'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v("P79_STATUS_ID") !== "015") || ($v("P79_STATUS_ID") !== "248")',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22338356490272937)
,p_event_id=>wwv_flow_imp.id(22338201130272936)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P79_SUCCESS_MSG").setValue('''');',
'apex.item("P79_ERROR").setValue('''');',
'apex.server.process("ProcessRadiationDisposeDischarge",',
'    {',
'        pageItems: [',
'            "P79_RAD_DETAIL_ND_RADIATION_NO",',
'            "P79_RAD_DETAIL_ND_SITE_ID",',
'            "P79_ND_EDU_REMARKS",',
'            "P79_DISCHARGE_ID",',
'            "P79_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P79_SUCCESS_MSG").setValue(obj.message);',
'',
'                apex.item("P79_ND_EDU_REMARKS").setValue('''');',
'            } else {',
'                apex.item("P79_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
'',
'',
'apex.item("P79_ND_REMARKS").enable();',
'apex.item("P79_ND_FOLLOWUP_INSTRUCTION").enable();',
'apex.item("P79_ND_ORDER_NO").enable();',
'apex.item("P79_ND_SIDE_EFFECTS").enable();',
'apex.item("P79_ND_DIET").enable();',
'apex.item("P79_ND_GENERAL_MEASURE").enable();',
'apex.item("P79_ND_PERSONAL_HYGIENE").enable();',
'apex.item("P79_ND_FU_INSTRUCTIONS").enable();',
'apex.item("P79_EXPLAIN_TEXT").enable();',
'apex.item("P79_ND_EDU_REMARKS").enable();',
'apex.item("fetchmedicine").enable();',
'apex.item("medicineorder").enable();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314367843887318311)
,p_event_id=>wwv_flow_imp.id(22338201130272936)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''raddishistory'').refresh();',
'',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 500);',
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
 p_id=>wwv_flow_imp.id(54532978357908221)
,p_name=>'DASignEnterKey'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54533104560908223)
,p_event_id=>wwv_flow_imp.id(54532978357908221)
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
'  :P79_TXT_ALERT_TEXT := null;',
'  :P79_SUCCESS_MSG    := null;',
'  :P79_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P79_DISP_MRNO,',
'                                          :P79_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P79_ND_ERROR_MESSAGE := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P79_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P79_VALIDATE'', ''Y'');',
'    :P79_ND_ERROR_MESSAGE := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P79_DISP_MRNO,P79_PASSWORD'
,p_attribute_03=>'P79_SUCCESS_MSG,P79_ERROR,P79_VALIDATE,P79_ND_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54533293902908224)
,p_event_id=>wwv_flow_imp.id(54532978357908221)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P79_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00160.SIGN_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P79_RAD_DETAIL_ND_RADIATION_NO,',
'                                               P_SITE_ID           => :P79_RAD_DETAIL_ND_SITE_ID,',
'                                               P_DISCHARGE_ID      => :P79_DISCHARGE_ID,',
'                                               P_SIGN_BY           => :P79_DISP_MRNO,',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_OBJECT_CODE       => ''S18APX00068'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P79_ND_ERROR_MESSAGE    := L_ALERT_TEXT;',
'      :P79_VALIDATE := ''N'';',
'    ELSE',
'      :P79_ND_SUCCESS_MESSAGE := ''Radiotheraphy Discharge Signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_DISCHARGE_ID,P79_DISP_MRNO,P79_VALIDATE'
,p_attribute_03=>'P79_ERROR,P79_SUCCESS_MSG,P79_VALIDATE,P79_ND_SUCCESS_MESSAGE,P79_ND_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P79_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314368724515318320)
,p_event_id=>wwv_flow_imp.id(54532978357908221)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT D.RADIATION_NO,',
'D.SITE_ID,',
'D.DISCHARGE_ID,',
'TO_CHAR(D.DISCHARGE_DATE, ''DD-MON-YYYY HH24:MI'') DISCHARGE_DATE,',
'D.XRT_STARTED_ON,',
'D.XRT_COMPLETED_ON,',
'D.REMARKS,',
'D.DISCHARGE_BY,',
'D.DISCAHRGE_LOCATION_ID,',
'D.FOLLOW_UP_INSTRUCTION,',
'D.TREATMENT_TYPE,',
'D.TECHNIQUE_ID,',
'D.FOLLOW_UP,',
'D.EXPLAIN_LANGUAGE,',
'D.EXPLAIN_TEXT,',
'D.CONTIGENCY_FLAG,',
'D.ORDER_TYPE_ID,',
'D.ORDER_NO,',
'D.LOCATION_ID,',
'D.ORDER_LOCATION_ID,',
'D.ACTIVE,',
'D.PHASE_NO,',
'D.EDU_SIDE_EFFECTS,',
'D.EDU_DIET,',
'D.EDU_GENERAL_MEASURE,',
'D.EDU_PERSONAL_HYGIENE,',
'D.EDU_FU_INSTRUCTIONS,',
'NVL(E.STATUS_ID, D.STATUS_ID) STATUS_ID,',
'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => NVL(E.STATUS_ID,',
'                                                                           D.STATUS_ID)) STATUS_DESC,',
'TO_CHAR((SELECT MIN(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'')  TRT_START_DATE,',
'TO_CHAR((SELECT MAX(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'') TRT_END_DATE,',
'HIS.PKG_PATIENT.GET_PATIENT_NAME(NVL(E.SIGN_BY, D.DISCHARGE_BY)) DISCHARGE_BY_NAME,',
'NVL(D.PAT_FAMILY_EDU,''N''),',
'D.PAT_FAMILY_EDU_REMARKS,',
'D.NOTE_ID,',
'D.TRANS_TYPE,',
'I.INSERTION_ID,',
'I.FROM_FRACTION_ID,',
'NVL(I.TO_FRACTION_ID,',
' ((SELECT MAX(P.FRACTION_ID)',
'     FROM RADIATION.RAD_PERFORMANCE P',
'    WHERE P.RADIATION_NO = E.RADIATION_NO',
'      AND P.SITE_ID = E.SITE_ID',
'      AND P.IMP_INSERTION_ID = E.INSERTION_ID',
'      AND P.STATUS_ID = ''015''))) MAX_FRACTION_ID,',
'TO_CHAR(I.SIGN_DATE, ''DD-MON-YYYY HH24:MI'') IMPLANT_IN_TIME,',
'TO_CHAR(NVL(E.SIGN_DATE, SYSDATE),''DD-MON-YYYY HH24:MI'') IMPLANT_OUT_TIME,',
'E.REMARKS IMP_EXTRACT_REMARKS,',
'(SELECT COUNT(1)',
'FROM RADIATION.RAD_PERFORMANCE P',
'WHERE P.RADIATION_NO = E.RADIATION_NO',
' AND P.SITE_ID = E.SITE_ID',
' AND P.IMP_INSERTION_ID = E.INSERTION_ID',
' AND P.STATUS_ID = ''015'') FRACTIONS_PERFORMED,',
'L.LINKED_RADIATION_NO,',
'L.LINKED_SITE_ID,',
'L.AFTER_FRACTION_ID,',
'CASE',
'WHEN L.LINKED_RADIATION_NO IS NOT NULL THEN',
'''Y''',
'ELSE',
'''N''',
'END IS_LINKED',
'INTO :P79_RADIATION_NO_1,',
':P79_SITE_ID,',
':P79_DISCHARGE_ID,',
':P79_DISCHARGE_DATE,',
':P79_XRT_STARTED_ON,',
':P79_XRT_COMPLETED_ON,',
':P79_ND_REMARKS,',
':P79_DISCHARGE_BY,',
':P79_DISCAHRGE_LOCATION_ID,',
':P79_ND_FOLLOWUP_INSTRUCTION,',
':P79_TREATMENT_TYPE,',
':P79_TECHNIQUE_ID,',
':P79_FOLLOW_UP,',
':P79_EXPLAIN_LANGUAGE,',
':P79_EXPLAIN_TEXT,',
':P79_CONTIGENCY_FLAG,',
':P79_ORDER_TYPE_ID,',
':P79_ORDER_NO,',
':P79_LOCATION_ID_1,',
':P79_ORDER_LOCATION_ID,',
':P79_ACTIVE,',
':P79_PHASE_NO,',
':P79_ND_SIDE_EFFECTS,',
':P79_ND_DIET,',
':P79_ND_GENERAL_MEASURE,',
':P79_ND_PERSONAL_HYGIENE,',
':P79_ND_FU_INSTRUCTIONS,',
':P79_STATUS_ID,',
':P79_STATUS_DESC,',
':P79_TRT_START_DATE,',
':P79_TRT_END_DATE,',
':P79_DISCHARGE_BY_NAME,',
':P79_EDU_GIVEN,',
':P79_ND_EDU_REMARKS,',
':P79_NOTE_ID,',
':P79_TRANS_TYPE,',
':P79_INSERTION_ID,',
':P79_FROM_FRACTION_ID,',
':P79_MAX_FRACTION_ID,',
':P79_IMPLANT_IN_TIME,',
':P79_IMPLANT_OUT_TIME,',
':P79_IMP_EXTRACT_REMARKS,',
':P79_FRACTIONS_PERFORMED,',
':P79_LINKED_RADIATION_NO,',
':P79_LINKED_SITE_ID,',
':P79_AFTER_FRACTION_ID,',
':P79_IS_LINKED',
'',
'FROM RADIATION.PATIENT_DISCHARGE     D,',
'RADIATION.RAD_IMPLANT_EXTRACT   E,',
'RADIATION.RAD_IMPLANT_INSERT    I,',
'RADIATION.RADIATION_DETAIL_LINK L',
'WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'AND D.DISCHARGE_ID = :P79_IMP_INSERTION_ID',
'AND E.RADIATION_NO(+) = D.RADIATION_NO',
'AND E.SITE_ID(+) = D.SITE_ID',
'AND E.INSERTION_ID(+) = D.IMP_INSERTION_ID',
'AND I.RADIATION_NO(+) = E.RADIATION_NO',
'AND I.SITE_ID(+) = E.SITE_ID',
'AND I.INSERTION_ID(+) = E.INSERTION_ID',
'AND L.RADIATION_NO(+) = D.RADIATION_NO',
'AND L.SITE_ID(+) = D.SITE_ID;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_attribute_02=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_IMP_INSERTION_ID'
,p_attribute_03=>'P79_RADIATION_NO_1,P79_SITE_ID,P79_DISCHARGE_ID,P79_DISCHARGE_DATE,P79_XRT_STARTED_ON,P79_XRT_COMPLETED_ON,P79_ND_REMARKS,P79_DISCHARGE_BY,P79_DISCAHRGE_LOCATION_ID,P79_ND_FOLLOWUP_INSTRUCTION,P79_TREATMENT_TYPE,P79_TECHNIQUE_ID,P79_FOLLOW_UP,P79_EXP'
||'LAIN_LANGUAGE,P79_EDU_GIVEN,P79_CONTIGENCY_FLAG,P79_ORDER_TYPE_ID,P79_ORDER_NO,P79_LOCATION_ID_1,P79_ORDER_LOCATION_ID,P79_ACTIVE,P79_PHASE_NO,P79_ND_SIDE_EFFECTS,P79_ND_DIET,P79_ND_GENERAL_MEASURE,P79_ND_PERSONAL_HYGIENE,P79_ND_FU_INSTRUCTIONS,P79_S'
||'TATUS_ID,P79_STATUS_DESC,P79_TRT_START_DATE,P79_TRT_END_DATE,P79_DISCHARGE_BY_NAME,P79_ND_EDU_REMARKS,P79_NOTE_ID,P79_TRANS_TYPE,P79_INSERTION_ID,P79_FROM_FRACTION_ID,P79_MAX_FRACTION_ID,P79_IMPLANT_IN_TIME,P79_IMPLANT_OUT_TIME,P79_IMP_EXTRACT_REMARK'
||'S,P79_FRACTIONS_PERFORMED,P79_LINKED_RADIATION_NO,P79_LINKED_SITE_ID,P79_AFTER_FRACTION_ID,P79_IS_LINKED,P79_PAT_FAMILY_EDU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312104153427618906)
,p_name=>'ClearFields'
,p_event_sequence=>570
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P79_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312104202358618907)
,p_event_id=>wwv_flow_imp.id(312104153427618906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_ND_REMARKS,P79_ND_FOLLOWUP_INSTRUCTION,P79_ND_SIDE_EFFECTS,P79_ND_DIET,P79_ND_GENERAL_MEASURE,P79_ND_PERSONAL_HYGIENE,P79_ND_FU_INSTRUCTIONS,P79_EXPLAIN_TEXT,P79_ND_EDU_REMARKS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312105370882618918)
,p_name=>'Partial_Final'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_TRANS_TYPE'
,p_condition_element=>'P79_TRANS_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'F'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312105417275618919)
,p_event_id=>wwv_flow_imp.id(312105370882618918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DISCHARGE_ID,P79_DISCHARGE_DATE,P79_STATUS_DESC,P79_DISCHARGE_BY_NAME,P79_XRT_STARTED_ON,P79_XRT_COMPLETED_ON,P79_TRT_START_DATE,P79_TRT_END_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312105957444618924)
,p_event_id=>wwv_flow_imp.id(312105370882618918)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(312105291900618917)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312105759037618922)
,p_event_id=>wwv_flow_imp.id(312105370882618918)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_INSERTION_ID,P79_IMPLANT_OUT_TIME,P79_AFTER_FRACTION_ID,P79_IMPLANT_IN_TIME,P79_IS_LINKED,P79_FROM_FRACTION_ID,P79_FRACTIONS_PERFORMED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312105816458618923)
,p_event_id=>wwv_flow_imp.id(312105370882618918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(312105291900618917)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312105597119618920)
,p_event_id=>wwv_flow_imp.id(312105370882618918)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_DISCHARGE_ID,P79_DISCHARGE_DATE,P79_XRT_STARTED_ON,P79_XRT_COMPLETED_ON,P79_TRT_START_DATE,P79_TRT_END_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312105692009618921)
,p_event_id=>wwv_flow_imp.id(312105370882618918)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_INSERTION_ID,P79_IMPLANT_OUT_TIME,P79_AFTER_FRACTION_ID,P79_IMPLANT_IN_TIME,P79_IS_LINKED,P79_FROM_FRACTION_ID,P79_FRACTIONS_PERFORMED'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314367362046318306)
,p_name=>'DAImpInsertionID'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_IMP_INSERTION_ID'
,p_condition_element=>'P79_IMP_INSERTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159081080292816234)
,p_event_id=>wwv_flow_imp.id(314367362046318306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT D.RADIATION_NO,',
'D.SITE_ID,',
'D.DISCHARGE_ID,',
'TO_CHAR(D.DISCHARGE_DATE, ''DD-MON-YYYY HH24:MI'') DISCHARGE_DATE,',
'D.XRT_STARTED_ON,',
'D.XRT_COMPLETED_ON,',
'D.REMARKS,',
'D.DISCHARGE_BY,',
'D.DISCAHRGE_LOCATION_ID,',
'D.FOLLOW_UP_INSTRUCTION,',
'D.TREATMENT_TYPE,',
'D.TECHNIQUE_ID,',
'D.FOLLOW_UP,',
'D.EXPLAIN_LANGUAGE,',
'D.EXPLAIN_TEXT,',
'D.CONTIGENCY_FLAG,',
'D.ORDER_TYPE_ID,',
'D.ORDER_NO,',
'D.LOCATION_ID,',
'D.ORDER_LOCATION_ID,',
'D.ACTIVE,',
'D.PHASE_NO,',
'D.EDU_SIDE_EFFECTS,',
'D.EDU_DIET,',
'D.EDU_GENERAL_MEASURE,',
'D.EDU_PERSONAL_HYGIENE,',
'D.EDU_FU_INSTRUCTIONS,',
'NVL(E.STATUS_ID, D.STATUS_ID) STATUS_ID,',
'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => NVL(E.STATUS_ID,',
'                                                                           D.STATUS_ID)) STATUS_DESC,',
'TO_CHAR((SELECT MIN(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'')  TRT_START_DATE,',
'TO_CHAR((SELECT MAX(RP.FRACTION_DATE)',
'FROM RADIATION.RAD_PERFORMANCE RP',
'WHERE RP.RADIATION_NO = D.RADIATION_NO',
' AND RP.SITE_ID = D.SITE_ID',
' AND RP.STATUS_ID = ''015''), ''DD-MON-YYYY HH24:MI'') TRT_END_DATE,',
'HIS.PKG_PATIENT.GET_PATIENT_NAME(NVL(E.SIGN_BY, D.DISCHARGE_BY)) DISCHARGE_BY_NAME,',
'NVL(D.PAT_FAMILY_EDU,''N''),',
'D.PAT_FAMILY_EDU_REMARKS,',
'D.NOTE_ID,',
'D.TRANS_TYPE,',
'I.INSERTION_ID,',
'I.FROM_FRACTION_ID,',
'NVL(I.TO_FRACTION_ID,',
' ((SELECT MAX(P.FRACTION_ID)',
'     FROM RADIATION.RAD_PERFORMANCE P',
'    WHERE P.RADIATION_NO = E.RADIATION_NO',
'      AND P.SITE_ID = E.SITE_ID',
'      AND P.IMP_INSERTION_ID = E.INSERTION_ID',
'      AND P.STATUS_ID = ''015''))) MAX_FRACTION_ID,',
'TO_CHAR(I.SIGN_DATE, ''DD-MON-YYYY HH24:MI'') IMPLANT_IN_TIME,',
'TO_CHAR(NVL(E.SIGN_DATE, SYSDATE),''DD-MON-YYYY HH24:MI'') IMPLANT_OUT_TIME,',
'E.REMARKS IMP_EXTRACT_REMARKS,',
'(SELECT COUNT(1)',
'FROM RADIATION.RAD_PERFORMANCE P',
'WHERE P.RADIATION_NO = E.RADIATION_NO',
' AND P.SITE_ID = E.SITE_ID',
' AND P.IMP_INSERTION_ID = E.INSERTION_ID',
' AND P.STATUS_ID = ''015'') FRACTIONS_PERFORMED,',
'L.LINKED_RADIATION_NO,',
'L.LINKED_SITE_ID,',
'L.AFTER_FRACTION_ID,',
'CASE',
'WHEN L.LINKED_RADIATION_NO IS NOT NULL THEN',
'''Y''',
'ELSE',
'''N''',
'END IS_LINKED',
'INTO :P79_RADIATION_NO_1,',
':P79_SITE_ID,',
':P79_DISCHARGE_ID,',
':P79_DISCHARGE_DATE,',
':P79_XRT_STARTED_ON,',
':P79_XRT_COMPLETED_ON,',
':P79_ND_REMARKS,',
':P79_DISCHARGE_BY,',
':P79_DISCAHRGE_LOCATION_ID,',
':P79_ND_FOLLOWUP_INSTRUCTION,',
':P79_TREATMENT_TYPE,',
':P79_TECHNIQUE_ID,',
':P79_FOLLOW_UP,',
':P79_EXPLAIN_LANGUAGE,',
':P79_EXPLAIN_TEXT,',
':P79_CONTIGENCY_FLAG,',
':P79_ORDER_TYPE_ID,',
':P79_ORDER_NO,',
':P79_LOCATION_ID_1,',
':P79_ORDER_LOCATION_ID,',
':P79_ACTIVE,',
':P79_PHASE_NO,',
':P79_ND_SIDE_EFFECTS,',
':P79_ND_DIET,',
':P79_ND_GENERAL_MEASURE,',
':P79_ND_PERSONAL_HYGIENE,',
':P79_ND_FU_INSTRUCTIONS,',
':P79_STATUS_ID,',
':P79_STATUS_DESC,',
':P79_TRT_START_DATE,',
':P79_TRT_END_DATE,',
':P79_DISCHARGE_BY_NAME,',
':P79_EDU_GIVEN,',
':P79_ND_EDU_REMARKS,',
':P79_NOTE_ID,',
':P79_TRANS_TYPE,',
':P79_INSERTION_ID,',
':P79_FROM_FRACTION_ID,',
':P79_MAX_FRACTION_ID,',
':P79_IMPLANT_IN_TIME,',
':P79_IMPLANT_OUT_TIME,',
':P79_IMP_EXTRACT_REMARKS,',
':P79_FRACTIONS_PERFORMED,',
':P79_LINKED_RADIATION_NO,',
':P79_LINKED_SITE_ID,',
':P79_AFTER_FRACTION_ID,',
':P79_IS_LINKED',
'',
'FROM RADIATION.PATIENT_DISCHARGE     D,',
'RADIATION.RAD_IMPLANT_EXTRACT   E,',
'RADIATION.RAD_IMPLANT_INSERT    I,',
'RADIATION.RADIATION_DETAIL_LINK L',
'WHERE D.RADIATION_NO = :P79_RAD_DETAIL_ND_RADIATION_NO',
'AND D.SITE_ID = :P79_RAD_DETAIL_ND_SITE_ID',
'AND D.DISCHARGE_ID = :P79_IMP_INSERTION_ID',
'AND E.RADIATION_NO(+) = D.RADIATION_NO',
'AND E.SITE_ID(+) = D.SITE_ID',
'AND E.INSERTION_ID(+) = D.IMP_INSERTION_ID',
'AND I.RADIATION_NO(+) = E.RADIATION_NO',
'AND I.SITE_ID(+) = E.SITE_ID',
'AND I.INSERTION_ID(+) = E.INSERTION_ID',
'AND L.RADIATION_NO(+) = D.RADIATION_NO',
'AND L.SITE_ID(+) = D.SITE_ID;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_attribute_02=>'P79_RAD_DETAIL_ND_RADIATION_NO,P79_RAD_DETAIL_ND_SITE_ID,P79_IMP_INSERTION_ID'
,p_attribute_03=>'P79_RADIATION_NO_1,P79_SITE_ID,P79_DISCHARGE_ID,P79_DISCHARGE_DATE,P79_XRT_STARTED_ON,P79_XRT_COMPLETED_ON,P79_ND_REMARKS,P79_DISCHARGE_BY,P79_DISCAHRGE_LOCATION_ID,P79_ND_FOLLOWUP_INSTRUCTION,P79_TREATMENT_TYPE,P79_TECHNIQUE_ID,P79_FOLLOW_UP,P79_EXP'
||'LAIN_LANGUAGE,P79_EDU_GIVEN,P79_CONTIGENCY_FLAG,P79_ORDER_TYPE_ID,P79_ORDER_NO,P79_LOCATION_ID_1,P79_ORDER_LOCATION_ID,P79_ACTIVE,P79_PHASE_NO,P79_ND_SIDE_EFFECTS,P79_ND_DIET,P79_ND_GENERAL_MEASURE,P79_ND_PERSONAL_HYGIENE,P79_ND_FU_INSTRUCTIONS,P79_S'
||'TATUS_ID,P79_STATUS_DESC,P79_TRT_START_DATE,P79_TRT_END_DATE,P79_DISCHARGE_BY_NAME,P79_ND_EDU_REMARKS,P79_NOTE_ID,P79_TRANS_TYPE,P79_INSERTION_ID,P79_FROM_FRACTION_ID,P79_MAX_FRACTION_ID,P79_IMPLANT_IN_TIME,P79_IMPLANT_OUT_TIME,P79_IMP_EXTRACT_REMARK'
||'S,P79_FRACTIONS_PERFORMED,P79_LINKED_RADIATION_NO,P79_LINKED_SITE_ID,P79_AFTER_FRACTION_ID,P79_IS_LINKED,P79_PAT_FAMILY_EDU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(313810668279270107)
,p_name=>'DAOrderNoLov'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_ND_ORDER_NO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313810736107270108)
,p_event_id=>wwv_flow_imp.id(313810668279270107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(313810871568270109)
,p_name=>'DAAfeterFractionIDLov'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_AFTER_FRACTION_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313810988234270110)
,p_event_id=>wwv_flow_imp.id(313810871568270109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26932603491158602)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadDischarge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P79_RADIATION_NO,',
'         :P79_RADIATION_DATE,',
'         :P79_MRNO,',
'         :P79_PATIENT_NAME,',
'         :P79_DISP_AGE,',
'         :P79_DISP_GENDER,',
'         :P79_DOCTOR_ID,',
'         :P79_DISP_DOCTOR,',
'         :P79_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P79_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''B'')',
'        ',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26932603491158602
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(312103643683618901)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationCreateDischarge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'',
'BEGIN',
'  L_MRNO         := :P79_MRNO;',
'  L_RADIATION_NO := :P79_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00160.NEW_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''ORGANIZATION_ID''),',
'                                          P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''LOCATION_ID''),',
'                                          P_RADIATION_NO      => :P79_RAD_DETAIL_ND_RADIATION_NO,',
'                                          P_SITE_ID           => :P79_RAD_DETAIL_ND_SITE_ID,',
'                                          P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''USER_MRNO''),',
'                                          P_OBJECT_CODE       => ''S18APX00068'',',
'                                          P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''TERMINAL''),',
'                                          P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                          P_STOP              => L_STOP);',
'',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Discharge populated successfully '');',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
'  '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>312103643683618901
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(312103961916618904)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationDisposeDischarge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'',
'BEGIN',
'  L_MRNO         := :P79_MRNO;',
'  L_RADIATION_NO := :P79_RAD_DETAIL_ND_RADIATION_NO;',
'  RADIATION.PKG_S18FRM00160.DISPOSE_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_RADIATION_NO      => :P79_RAD_DETAIL_ND_RADIATION_NO,',
'                                              P_SITE_ID           => :P79_RAD_DETAIL_ND_SITE_ID,',
'                                              P_DISCHARGE_ID      => :P79_DISCHARGE_ID,',
'                                              P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                              P_OBJECT_CODE       => ''S18APX00068'',',
'                                              P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'his.message_entry_category(P_MESSAGE => ''P79_RAD_DETAIL_ND_RADIATION_NO ''||:P79_RAD_DETAIL_ND_RADIATION_NO || ''--''||''P79_RAD_DETAIL_ND_SITE_ID''||:P79_RAD_DETAIL_ND_SITE_ID || ''-''||''P79_DISCHARGE_ID'' ||:P79_DISCHARGE_ID, P_CATEGORY =>  ''SHARIFtest1'');',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'  his.message_entry_category(P_MESSAGE => ''P79_RAD_DETAIL_ND_RADIATION_NO ''||:P79_RAD_DETAIL_ND_RADIATION_NO || ''--''||''P79_RAD_DETAIL_ND_SITE_ID''||:P79_RAD_DETAIL_ND_SITE_ID || ''-''||''L_STOP'' ||L_STOP, P_CATEGORY =>  ''SHARIFtest2'');',
'',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Discharge disposed successfully  '');',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => L_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
'  ',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>312103961916618904
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26932294841158602)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationDischarge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00146.RAD_DISCHARGE_TAB;',
'BEGIN',
'  SELECT :P79_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P79_RAD_DETAIL_ND_SITE_ID SITE_ID,',
'         :P79_DISCHARGE_ID DISCHARGE_ID,',
'         TO_DATE(:P79_DISCHARGE_DATE, ''DD-MM-RRRR HH24:MI'') DISCHARGE_DATE,',
'         TO_DATE(:P79_TRT_START_DATE, ''DD-MM-RRRR HH24:MI'') XRT_STARTED_ON,',
'         TO_DATE(:P79_TRT_END_DATE, ''DD-MM-RRRR HH24:MI'') XRT_COMPLETED_ON,',
'         :P79_ND_REMARKS REMARKS,',
'         :P79_DISCHARGE_BY DISCHARGE_BY,',
'         :P79_DISCAHRGE_LOCATION_ID DISCAHRGE_LOCATION_ID,',
'         :P79_ND_FOLLOWUP_INSTRUCTION FOLLOW_UP_INSTRUCTION,',
'         :P79_TREATMENT_TYPE TREATMENT_TYPE,',
'         :P79_TECHNIQUE_ID TECHNIQUE_ID,',
'         :P79_FOLLOW_UP FOLLOW_UP,',
'         :P79_EXPLAIN_LANGUAGE EXPLAIN_LANGUAGE,',
'         :P79_EXPLAIN_TEXT EXPLAIN_TEXT,',
'         :P79_CONTIGENCY_FLAG CONTIGENCY_FLAG,',
'         :P79_ORDER_TYPE_ID ORDER_TYPE_ID,',
'         :P79_ORDER_NO ORDER_NO,',
'         :P79_LOCATION_ID_1 LOCATION_ID,',
'         :P79_ORDER_LOCATION_ID ORDER_LOCATION_ID,',
'         :P79_ACTIVE ACTIVE,',
'         :P79_PHASE_NO PHASE_NO,',
'         :P79_ND_SIDE_EFFECTS EDU_SIDE_EFFECTS,',
'         :P79_ND_DIET EDU_DIET,',
'         :P79_ND_GENERAL_MEASURE EDU_GENERAL_MEASURE,',
'         :P79_ND_PERSONAL_HYGIENE EDU_PERSONAL_HYGIENE,',
'         :P79_ND_FU_INSTRUCTIONS EDU_FU_INSTRUCTIONS,',
'         :P79_STATUS_ID STATUS_ID,',
'         :P79_STATUS_DESC STATUS_DESC,',
'         TO_DATE(:P79_TRT_START_DATE, ''DD-MM-RRRR HH24:MI'') ACTUAL_TRT_START,',
'         TO_DATE(:P79_TRT_END_DATE, ''DD-MM-RRRR HH24:MI'') ACTUAL_TRT_COMPLETE,',
'         :P79_DISCHARGE_BY_NAME SIGN_BY,',
'         :P79_EDU_GIVEN PAT_FAMILY_EDU,',
'         :P79_ND_EDU_REMARKS PAT_FAMILY_EDU_REMARKS',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  RADIATION.PKG_S18FRM00146.UPDATE_RAD_DISCHARGE(L_BLOCK_DATA);',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'', ''Discharge saved successfully'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26932294841158602
);
wwv_flow_imp.component_end;
end;
/

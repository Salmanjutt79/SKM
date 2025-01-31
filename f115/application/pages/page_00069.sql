prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_name=>'RAD_DISCHARGE'
,p_alias=>'RAD-DISCHARGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiotherapy Discharge'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'td[headers="RADIATION_NO_HIST"]{',
' font-weight:bold;',
'}',
'td[headers="MRNO"]{',
' font-weight:bold;',
'}',
'td[headers="REQUEST_STATUS"]{',
' font-weight:bold;',
'}',
'td[headers="DISCHARGE_ID"]{',
' font-weight:bold;',
'}',
'td[headers="GENERIC_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="DOSAGE_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="DOSE"]{',
' font-weight:bold;',
'}',
'',
'td[headers="DISPENSE_UNIT_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="DURATION"]{',
' font-weight:bold;',
'}',
'',
'td[headers="TOTAL_QUANTITY"]{',
' font-weight:bold;',
'}',
'',
'td[headers="ROUTE_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="ROUTE_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="TAKE_HOME"]{',
' font-weight:bold;',
'}',
'',
'td[headers="REMARKS"]{',
' font-weight:bold;',
'}',
'',
'',
'td[headers="DOSE"]{',
' font-weight:bold;',
'}',
'',
'td[headers="FREQUENCY_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="DISPENSE_UNIT_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="UNIT_DESC"]{',
' font-weight:bold;',
'}',
'',
'td[headers="REMARKS"]{',
' font-weight:bold;',
'}',
'',
'</style>',
'',
'',
'',
'',
''))
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
'};',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'jsFormsBlock_pageReady();',
'',
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
'});',
'',
'',
'',
'',
'',
'',
'',
'',
'',
''))
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
'	height: 130px;',
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
'#P69_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_DISCHARGE_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_STATUS_DESC  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_DISCHARGE_DATE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_DISCHARGE_BY_NAME  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_XRT_STARTED_ON  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_XRT_COMPLETED_ON  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_TRT_START_DATE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_TRT_END_DATE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_ND_REMARKS  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_ND_FOLLOWUP_INSTRUCTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_ND_EDU_REMARKS  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_PATIENT_TYPE{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_PATIENT_MRNO{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_NAME{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P69_PASSWORD{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P69_ND_ORDER_NO{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#patientDischarge{',
'    height:192px;',
'   ',
'}',
'',
' /* #P69_EDU_GIVEN  {',
'    display: flex;',
'',
'} */',
'',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250127125358'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103196680607415590)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>230
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO_HIST,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P69_MRNO, :P69_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P69_MRNO,P69_PARAM_MRNO'
,p_plug_display_condition_type=>'NEVER'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(103196755139415591)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>103196755139415591
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38985447152179939)
,p_db_column_name=>'RADIATION_NO_HIST'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>' <b><p style="color:#00008B">Radiation No</p></b>'
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
,p_static_id=>'RADIATION_NO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103196961278415593)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'<b><p style="color:#00008B">MRNO </p></b>'
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
,p_static_id=>'MRNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103197065911415594)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'<b><p style="color:#00008B">Request Status</p></b>'
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
,p_static_id=>'REQUEST_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103409367549204785)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'103239'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'RADIATION_NO_HIST:MRNO:REQUEST_STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155595124831674185)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>220
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157290896480882888)
,p_plug_name=>'Control1'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>31
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189840527854105297)
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
'     FROM RADIATION.RADIATION_MASTER M',
'    /*WHERE RADIATION_NO = NVL(:P69_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P69_MRNO IS NOT NULL THEN',
'             ''%'' || :P69_MRNO',
'            ELSE',
'             MRNO',
'          END',
'      AND RADIOTHERAPY_TYPE = ''T''',
'      AND M.STATUS_REQUEST = ''015''',
'      AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'    ORDER BY RADIATION_DATE DESC*/',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19123263881502728)
,p_plug_name=>'Patient Discharge'
,p_region_name=>'patientDischarge'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       DISCHARGE_ID,',
'       DISCHARGE_DATE,',
'       XRT_STARTED_ON,',
'       XRT_COMPLETED_ON,',
'       REMARKS,',
'       DISCHARGE_BY,',
'       DISCAHRGE_LOCATION_ID,',
'       FOLLOW_UP_INSTRUCTION,',
'       TREATMENT_TYPE,',
'       TECHNIQUE_ID,',
'       FOLLOW_UP,',
'       EXPLAIN_LANGUAGE,',
'       EXPLAIN_TEXT,',
'       CONTIGENCY_FLAG,',
'       ORDER_TYPE_ID,',
'       ORDER_NO,',
'       LOCATION_ID,',
'       ORDER_LOCATION_ID,',
'       ACTIVE,',
'       PHASE_NO,',
'       EDU_SIDE_EFFECTS,',
'       EDU_DIET,',
'       EDU_GENERAL_MEASURE,',
'       EDU_PERSONAL_HYGIENE,',
'       EDU_FU_INSTRUCTIONS,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESC,',
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
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(CASE',
'                                          WHEN D.STATUS_ID = ''015'' THEN',
'                                           D.DISCHARGE_BY',
'                                          ELSE',
'                                           NULL',
'                                        END) DISCHARGE_BY_NAME,',
'       PAT_FAMILY_EDU,',
'       PAT_FAMILY_EDU_REMARKS,',
'       ROWID',
'  FROM RADIATION.PATIENT_DISCHARGE D',
' WHERE RADIATION_NO = :P69_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P69_RAD_DETAIL_ND_SITE_ID',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19371178062081816)
,p_plug_name=>'Condition at Discharge'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19371312641081818)
,p_plug_name=>'Follow Up Appointment '
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19371621247081821)
,p_plug_name=>'Medication Order '
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19372018992081825)
,p_plug_name=>'History'
,p_region_name=>'raddishist'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISCHARGE_ID, ROWID',
'  FROM RADIATION.PATIENT_DISCHARGE',
' WHERE RADIATION_NO = :P69_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P69_RAD_DETAIL_ND_SITE_ID',
' ORDER BY 1 DESC;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID'
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
 p_id=>wwv_flow_imp.id(309340243425051325)
,p_name=>'DISCHARGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCHARGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Discharge Id</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(309340383026051326)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(309340147450051324)
,p_internal_uid=>309340147450051324
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.initialSelection = true;',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(311232253395750769)
,p_interactive_grid_id=>wwv_flow_imp.id(309340147450051324)
,p_static_id=>'3112323'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(311232465640750769)
,p_report_id=>wwv_flow_imp.id(311232253395750769)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(311232964589750775)
,p_view_id=>wwv_flow_imp.id(311232465640750769)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(309340243425051325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(311233837261750778)
,p_view_id=>wwv_flow_imp.id(311232465640750769)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(309340383026051326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19372669631081831)
,p_plug_name=>'Discharge Medication'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>120
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
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
' WHERE D.RADIATION_NO = :P69_RAD_DETAIL_ND_RADIATION_NO',
'   AND D.SITE_ID = :P69_RAD_DETAIL_ND_SITE_ID',
'   AND D.DISCHARGE_ID = :P69_DISCHARGE_ID',
'   AND OP.ORDER_TYPE_ID = D.ORDER_TYPE_ID',
'   AND OP.ORDER_NO = D.ORDER_NO',
'   AND OP.LOCATION_ID = D.LOCATION_ID',
'   AND OP.ORDER_LOCATION_ID = D.ORDER_LOCATION_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID,P69_DISCHARGE_ID'
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
 p_id=>wwv_flow_imp.id(19583369555112110)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>19583369555112110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584084596112117)
,p_db_column_name=>'GENERIC_DESC'
,p_display_order=>1
,p_column_identifier=>'G'
,p_column_label=>'<b><p style="color:#00008B">Generic </p></b>'
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
,p_static_id=>'GENERIC_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584273443112119)
,p_db_column_name=>'DOSAGE_DESC'
,p_display_order=>2
,p_column_identifier=>'I'
,p_column_label=>'<b><p style="color:#00008B">D.Form</p></b>'
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
,p_static_id=>'DOSAGE_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19583426052112111)
,p_db_column_name=>'ORDER_TYPE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Order Type Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19583598585112112)
,p_db_column_name=>'ORDER_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Order No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19583606882112113)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Location Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19583781111112114)
,p_db_column_name=>'ORDER_LOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Order Location Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19583839539112115)
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
 p_id=>wwv_flow_imp.id(19583926993112116)
,p_db_column_name=>'GENERIC_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Generic Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584144566112118)
,p_db_column_name=>'DRUG_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Drug Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584363416112120)
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
 p_id=>wwv_flow_imp.id(19584490641112121)
,p_db_column_name=>'FREQUENCY_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Frequency Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584559916112122)
,p_db_column_name=>'FREQUENCY_DESC'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'<b><p style="color:#00008B">Frequency</p></b>'
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
,p_static_id=>'FREQUENCY_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584699052112123)
,p_db_column_name=>'DOSE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'<b><p style="color:#00008B">Dose </p></b>'
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
,p_column_type=>'NUMBER'
,p_static_id=>'DOSE'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584728634112124)
,p_db_column_name=>'DOSE_UNIT_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Dose Unit Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584807675112125)
,p_db_column_name=>'DISPENSE_UNIT_DESC'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'<b><p style="color:#00008B">Unit </p></b>'
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
,p_static_id=>'DISPENSE_UNIT_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19584936674112126)
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
 p_id=>wwv_flow_imp.id(19585087052112127)
,p_db_column_name=>'DURATION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'<b><p style="color:#00008B">Duration</p></b>'
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
,p_column_type=>'NUMBER'
,p_static_id=>'DURATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585174843112128)
,p_db_column_name=>'DURATION_UNIT_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Duration Unit Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585228400112129)
,p_db_column_name=>'UNIT_DESC'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'<b><p style="color:#00008B">Unit</p></b>'
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
,p_static_id=>'UNIT_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585386342112130)
,p_db_column_name=>'TOTAL_QUANTITY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'<b><p style="color:#00008B">Quantity</p></b>'
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
,p_column_type=>'NUMBER'
,p_static_id=>'TOTAL_QUANTITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585487098112131)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Route Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585590980112132)
,p_db_column_name=>'ROUTE_DESC'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'<b><p style="color:#00008B">Route</p></b>'
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
,p_static_id=>'ROUTE_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585740582112134)
,p_db_column_name=>'REMARKS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'<b><p style="color:#00008B">Remarks</p></b>'
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
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585815123112135)
,p_db_column_name=>'OBJECT_CODE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Object Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19585933016112136)
,p_db_column_name=>'MRNO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586071324112137)
,p_db_column_name=>'STORE_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Store Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19586162257112138)
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
 p_id=>wwv_flow_imp.id(19586385650112140)
,p_db_column_name=>'TAKE_HOME'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'<b><p style="color:#00008B">Take Home</p></b>'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'TAKE_HOME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19614444233134890)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'196145'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GENERIC_DESC:DOSAGE_DESC:DOSE:DISPENSE_UNIT_DESC:FREQUENCY_DESC:DURATION:UNIT_DESC:TOTAL_QUANTITY:ROUTE_DESC:TAKE_HOME:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19586469980112141)
,p_plug_name=>'Education Given'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(199649690718486766)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P69_MRNO;',
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
,p_ajax_items_to_submit=>'P69_MRNO'
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
 p_id=>wwv_flow_imp.id(19145100668747615)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19145573027747615)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19145859415747615)
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
 p_id=>wwv_flow_imp.id(199650090478486770)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_parent_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_region_css_classes=>'forms-block'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
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
'   WHERE RD.RADIATION_NO = :P69_RADIATION_NO;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P69_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(19659941565361527)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35048892550659237)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35049010907659238)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(35800036092967222)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199650466242486773)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199650537762486774)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199650580148486775)
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199650752018486776)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199650810863486777)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199650945786486778)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651034259486779)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651117124486780)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651213953486781)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651285315486782)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651444578486783)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651481278486784)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651642994486785)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651756336486786)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651781779486787)
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199651905546486788)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199652059242486789)
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
,p_value_alignment=>'LEFT'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199652124476486790)
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
,p_value_alignment=>'LEFT'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(199652252481486791)
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
,p_value_alignment=>'LEFT'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(199650220116486771)
,p_internal_uid=>199650220116486771
,p_is_editable=>false
,p_lazy_loading=>false
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>125
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
 p_id=>wwv_flow_imp.id(200254821604645121)
,p_interactive_grid_id=>wwv_flow_imp.id(199650220116486771)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(200255006786645123)
,p_report_id=>wwv_flow_imp.id(200254821604645121)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19503250778252440)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(19659941565361527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35140131341928765)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(35048892550659237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35141045692928767)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(35049010907659238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(36346481805760950)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(35800036092967222)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200255391461645124)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(199650466242486773)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200256355918645127)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(199650537762486774)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200257264576645130)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(199650580148486775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200258152601645132)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(199650752018486776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200258980174645135)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(199650810863486777)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200259957150645140)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(199650945786486778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200260837616645143)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(199651034259486779)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200261748667645150)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(199651117124486780)
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
 p_id=>wwv_flow_imp.id(200262622145645152)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(199651213953486781)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200263520574645155)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(199651285315486782)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200264456229645158)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(199651444578486783)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200265315219645160)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(199651481278486784)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200266230383645164)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(199651642994486785)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200267099089645168)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(199651756336486786)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200268044384645171)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(199651781779486787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200268883882645174)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(199651905546486788)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200269774273645177)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(199652059242486789)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200270755089645184)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(199652124476486790)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(200271604150645186)
,p_view_id=>wwv_flow_imp.id(200255006786645123)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(199652252481486791)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290426734336116501)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>11
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19371899842081823)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19371621247081821)
,p_button_name=>'FetchLastOrderedMedications'
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
 p_id=>wwv_flow_imp.id(19371907575081824)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19371621247081821)
,p_button_name=>'MedicineOrder'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'<b>Medicine Order</b>'
,p_button_redirect_url=>'f?p=138:259:&SESSION.::&DEBUG.::P259_P_MRNO:&P69_MRNO.'
,p_icon_css_classes=>'fa-prescription'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19661217701361540)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(157290896480882888)
,p_button_name=>'Report'
,p_button_static_id=>'patdischarge'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19200152209747650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(157290896480882888)
,p_button_name=>'Sign'
,p_button_static_id=>'signbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423175166493299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19200515407747650)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(157290896480882888)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19200992959747650)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(157290896480882888)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19195049085747647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19201715108747651)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(157290896480882888)
,p_button_name=>'NewDischarge'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Discharge'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19202194923747651)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(157290896480882888)
,p_button_name=>'DisposeDischarge'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Discharge '
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19195491612747648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_button_name=>'SignRadiationDischarge'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(385423175166493299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19123452529502730)
,p_name=>'P69_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19123533749502731)
,p_name=>'P69_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19123621424502732)
,p_name=>'P69_DISCHARGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Discharge Id</p></b>'
,p_source=>'DISCHARGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19123766178502733)
,p_name=>'P69_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Discharge Date</p></b>'
,p_source=>'DISCHARGE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19123804114502734)
,p_name=>'P69_XRT_STARTED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Start Date</p></b>'
,p_source=>'XRT_STARTED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(19123950966502735)
,p_name=>'P69_XRT_COMPLETED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Complete Date</p></b>'
,p_source=>'XRT_COMPLETED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(19124039801502736)
,p_name=>'P69_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124148981502737)
,p_name=>'P69_DISCHARGE_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'DISCHARGE_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124244422502738)
,p_name=>'P69_DISCAHRGE_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'DISCAHRGE_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124308945502739)
,p_name=>'P69_FOLLOW_UP_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'FOLLOW_UP_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124411930502740)
,p_name=>'P69_TREATMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'TREATMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124531918502741)
,p_name=>'P69_TECHNIQUE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'TECHNIQUE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124619039502742)
,p_name=>'P69_FOLLOW_UP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'FOLLOW_UP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124797812502743)
,p_name=>'P69_EXPLAIN_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EXPLAIN_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124811002502744)
,p_name=>'P69_EXPLAIN_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EXPLAIN_TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19124969968502745)
,p_name=>'P69_CONTIGENCY_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'CONTIGENCY_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19125023783502746)
,p_name=>'P69_ORDER_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'ORDER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19125150937502747)
,p_name=>'P69_ORDER_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'ORDER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19125257837502748)
,p_name=>'P69_LOCATION_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19125374128502749)
,p_name=>'P69_ORDER_LOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'ORDER_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19125418115502750)
,p_name=>'P69_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19369655322081801)
,p_name=>'P69_PHASE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'PHASE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19369764431081802)
,p_name=>'P69_EDU_SIDE_EFFECTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EDU_SIDE_EFFECTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19369858242081803)
,p_name=>'P69_EDU_DIET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EDU_DIET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19369939385081804)
,p_name=>'P69_EDU_GENERAL_MEASURE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EDU_GENERAL_MEASURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370088281081805)
,p_name=>'P69_EDU_PERSONAL_HYGIENE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EDU_PERSONAL_HYGIENE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370106051081806)
,p_name=>'P69_EDU_FU_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'EDU_FU_INSTRUCTIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370263219081807)
,p_name=>'P69_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370420349081809)
,p_name=>'P69_TRT_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Actual Start Date</p></b>'
,p_source=>'TRT_START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370531002081810)
,p_name=>'P69_TRT_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Complete Date</p></b>'
,p_source=>'TRT_END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370699071081811)
,p_name=>'P69_DISCHARGE_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_prompt=>'<b><p style="color:#00008B">Sign By</p></b>'
,p_source=>'DISCHARGE_BY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370781138081812)
,p_name=>'P69_PAT_FAMILY_EDU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'PAT_FAMILY_EDU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370882973081813)
,p_name=>'P69_PAT_FAMILY_EDU_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'PAT_FAMILY_EDU_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19370973709081814)
,p_name=>'P69_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19371069124081815)
,p_name=>'P69_STATUS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(19123263881502728)
,p_item_source_plug_id=>wwv_flow_imp.id(19123263881502728)
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
 p_id=>wwv_flow_imp.id(19371276411081817)
,p_name=>'P69_ND_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19371178062081816)
,p_prompt=>'<b><p style="color:#00008B">Condition at Discharge:</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19371467685081819)
,p_name=>'P69_ND_FOLLOWUP_INSTRUCTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19371312641081818)
,p_prompt=>'<b><p style="color:#00008B">Follow Up Appointment :</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19371750905081822)
,p_name=>'P69_ND_ORDER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19371621247081821)
,p_prompt=>'<b><p style="color:#00008B">Order No:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_DISCHARGE_DISCHARGE_ORDER'
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
'   AND OM.MRNO = :P69_MRNO',
' ORDER BY OM.ORDER_DATE DESC',
''))
,p_lov_cascade_parent_items=>'P69_MRNO'
,p_ajax_items_to_submit=>'P69_MRNO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'800'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19372353943081828)
,p_name=>'P69_ND_DISCHARGE_ID'
,p_item_sequence=>80
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19586526326112142)
,p_name=>'P69_ND_SIDE_EFFECTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_item_default=>'N'
,p_prompt=>' <b><p style="color:#00008B">Side Effects</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19586614391112143)
,p_name=>'P69_ND_DIET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Diet</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19586771777112144)
,p_name=>'P69_ND_GENERAL_MEASURE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">General Measure</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19586858074112145)
,p_name=>'P69_ND_PERSONAL_HYGIENE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Personal Hygiene </p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19586916249112146)
,p_name=>'P69_ND_FU_INSTRUCTIONS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">F/U Instruction</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19657377068361501)
,p_name=>'P69_EDU_GIVEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_item_default=>'N'
,p_pre_element_text=>'<b><p style="color:#8B0000"> I confirm, that the assessment and plan have been discussed with patient / family and that they have understood and agreed </p></b></br>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19657404618361502)
,p_name=>'P69_ND_EDU_REMARKS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19657929147361507)
,p_name=>'P69_ND_SUCCESS_MESSAGE'
,p_item_sequence=>200
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
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
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19658031722361508)
,p_name=>'P69_ND_ERROR_MESSAGE'
,p_item_sequence=>210
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34633565549761788)
,p_name=>'P69_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34633683108761789)
,p_name=>'P69_RAD_PHASE_PHASE_NO'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35131889432659284)
,p_name=>'P69_PHY_PLAN_ID'
,p_item_sequence=>150
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35443610792311879)
,p_name=>'P69_ND_ISOCENTER_ID'
,p_item_sequence=>160
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35882350230967262)
,p_name=>'P69_CHECK_SIGN'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35885518802967294)
,p_name=>'P69_PARAM_MRNO'
,p_item_sequence=>180
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36278667444464482)
,p_name=>'P69_SIGN_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19586469980112141)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103356743060415804)
,p_name=>'P69_PARAM_RADIATION_NO'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155665739137674259)
,p_name=>'P69_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_prompt=>' <b><p style="color:#00008B">Employee Code:</p></b>'
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
 p_id=>wwv_flow_imp.id(155665767348674260)
,p_name=>'P69_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_prompt=>'<b>Employee Code:</b>'
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
 p_id=>wwv_flow_imp.id(155665860054674261)
,p_name=>'P69_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
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
 p_id=>wwv_flow_imp.id(155666016743674262)
,p_name=>'P69_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Password</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155666140142674263)
,p_name=>'P69_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155666223559674264)
,p_name=>'P69_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155666263472674265)
,p_name=>'P69_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155666357670674266)
,p_name=>'P69_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155666527240674267)
,p_name=>'P69_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155666620413674268)
,p_name=>'P69_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155667101195674273)
,p_name=>'P69_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155667208879674274)
,p_name=>'P69_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157499054294883160)
,p_name=>'P69_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157499128517883161)
,p_name=>'P69_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158319533869852629)
,p_name=>'P69_TXT_URL'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159390602844478639)
,p_name=>'P69_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(155595124831674185)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159766292787447969)
,p_name=>'P69_RAD_PLAN_DML_STATUS'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159766712951447974)
,p_name=>'P69_PARAM_SR_NO'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189995896927105517)
,p_name=>'P69_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(189995993513105518)
,p_name=>'P69_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date</p></b>'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(199803441114486969)
,p_name=>'P69_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199803554201486970)
,p_name=>'P69_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199803674364486971)
,p_name=>'P69_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_prompt=>'<b><p style="color:#00008B">Age</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(199803754336486972)
,p_name=>'P69_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_prompt=>'<b><p style="color:#00008B">Sex</p></b>'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
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
 p_id=>wwv_flow_imp.id(199803794407486973)
,p_name=>'P69_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199803952169486974)
,p_name=>'P69_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199804090244486975)
,p_name=>'P69_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199804308912486978)
,p_name=>'P69_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199804478504486979)
,p_name=>'P69_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199804536875486980)
,p_name=>'P69_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199804604118486981)
,p_name=>'P69_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199804727285486982)
,p_name=>'P69_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199804844815486983)
,p_name=>'P69_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_imp.id(189840527854105297)
,p_item_source_plug_id=>wwv_flow_imp.id(189840527854105297)
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
 p_id=>wwv_flow_imp.id(199858693571487046)
,p_name=>'P69_PARAM_SITE_ID'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(202218399795470263)
,p_name=>'P69_ALERT_TEXT'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290006416537969515)
,p_name=>'P69_SUCCESS_MESSAGE'
,p_item_sequence=>240
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290006794463969518)
,p_name=>'P69_ERROR_MESSAGE'
,p_item_sequence=>250
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19220354558747663)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19200992959747650)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19220824365747664)
,p_event_id=>wwv_flow_imp.id(19220354558747663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19221239273747664)
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
 p_id=>wwv_flow_imp.id(19221756401747664)
,p_event_id=>wwv_flow_imp.id(19221239273747664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P69_ISO_RADIATION_NO",',
'            "P69_ISO_SITE_ID",',
'            "P69_ISO_PHY_PLAN_ID",',
'            "P69_ISO_PHASE_NO",',
'            "P69_ISOCENTER_ID",',
'            "P69_ISO_DESCRIPTION",',
'            "P69_ISO_DOSE_FRACTION",',
'            "P69_ISO_NO_OF_FRACTION",',
'            "P69_ISO_TREATMENT_TYPE_DESC",',
'            "P69_ISO_TREATMENT_TYPE"',
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
 p_id=>wwv_flow_imp.id(19222187390747664)
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
 p_id=>wwv_flow_imp.id(19222631647747665)
,p_event_id=>wwv_flow_imp.id(19222187390747664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P69_ISO_RADIATION_NO",',
'            "P69_ISO_SITE_ID",',
'            "P69_ISO_PHY_PLAN_ID",',
'            "P69_ISO_PHASE_NO",',
'            "P69_ISOCENTER_ID",',
'            "P69_ISO_DESCRIPTION",',
'            "P69_ISO_DOSE_FRACTION",',
'            "P69_ISO_NO_OF_FRACTION",',
'            "P69_ISO_TREATMENT_TYPE_DESC",',
'            "P69_ISO_TREATMENT_TYPE"',
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
 p_id=>wwv_flow_imp.id(19223013640747665)
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
 p_id=>wwv_flow_imp.id(19223535470747665)
,p_event_id=>wwv_flow_imp.id(19223013640747665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P69_SP_INTRUCT_FRACTION_NO",',
'            "P69_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P69_SP_INTRUCT_RADIATION_NO",',
'            "P69_SP_INTRUCT_SITE_ID",',
'            "P69_SP_INTRUCT_PHASE_NO",',
'            "P69_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P69_SP_INTRUCT_ROWID"',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19223938894747665)
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
 p_id=>wwv_flow_imp.id(19224445525747665)
,p_event_id=>wwv_flow_imp.id(19223938894747665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P69_SP_INTRUCT_FRACTION_NO",',
'            "P69_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P69_SP_INTRUCT_RADIATION_NO",',
'            "P69_SP_INTRUCT_SITE_ID",',
'            "P69_SP_INTRUCT_PHASE_NO",',
'            "P69_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P69_SP_INTRUCT_ROWID"',
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
 p_id=>wwv_flow_imp.id(19224899656747665)
,p_name=>'SetRadiationNo'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(103196680607415590)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19225362836747666)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_PARAM_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19225848922747666)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P69_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19226378830747666)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
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
'    INTO :P69_RADIATION_NO,',
'         :P69_RADIATION_DATE,',
'         :P69_MRNO,',
'         :P69_PATIENT_NAME,',
'         :P69_DISP_AGE,',
'         :P69_DISP_GENDER,',
'         :P69_DOCTOR_ID,',
'         :P69_DISP_DOCTOR,',
'         :P69_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P69_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P69_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND MRNO LIKE CASE',
'           WHEN :P69_MRNO IS NOT NULL THEN',
'            ''%'' || :P69_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''T''',
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
,p_attribute_02=>'P69_PARAM_RADIATION_NO,P69_MRNO'
,p_attribute_03=>'P69_RADIATION_NO,P69_RADIATION_DATE,P69_PATIENT_NAME,P69_DISP_AGE,P69_DISP_GENDER,P69_DOCTOR_ID,P69_DISP_DOCTOR,P69_DISP_INTENT,P69_USER_MRNO'
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
 p_id=>wwv_flow_imp.id(19226870690747666)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(199649690718486766)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19227351913747666)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(199650090478486770)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19227805142747667)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
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
'    $s(''P69_RAD_DETAIL_ND_SITE_ID'', siteID);',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19662162915361549)
,p_event_id=>wwv_flow_imp.id(19224899656747665)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19123263881502728)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19228226745747667)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19228726308747667)
,p_event_id=>wwv_flow_imp.id(19228226745747667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P69_MRNO IS NOT NULL THEN',
'  ',
'    :P69_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P69_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P69_MRNO);',
'      :P69_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P69_MRNO);',
'      :P69_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P69_MRNO);',
'      :P69_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P69_MRNO);',
'      :P69_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P69_MRNO);',
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
,p_attribute_02=>'P69_USER_MRNO'
,p_attribute_03=>'P69_SERVICE_NO,P69_SERVICE_STATUS,P69_RANK,P69_FORMATION,P69_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19229273092747667)
,p_event_id=>wwv_flow_imp.id(19228226745747667)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P69_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P69_SERVICE_NO").show();',
'    apex.item("P69_SERVICE_STATUS").show();',
'    apex.item("P69_RANK").show();',
'    apex.item("P69_FORMATION").show();',
'    apex.item("P69_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P69_SERVICE_NO").hide();',
'    apex.item("P69_SERVICE_STATUS").hide();',
'    apex.item("P69_RANK").hide();',
'    apex.item("P69_FORMATION").hide();',
'    apex.item("P69_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19229615313747667)
,p_name=>'DARadDetail1'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(199650090478486770)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19230601964747668)
,p_event_id=>wwv_flow_imp.id(19229615313747667)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P69_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P69_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'$s(''P69_CURRENT_MACHINE'', _.raddetail.MACHINE_DESC);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19659157366361519)
,p_event_id=>wwv_flow_imp.id(19229615313747667)
,p_event_result=>'TRUE'
,p_action_sequence=>11
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19372018992081825)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19659074471361518)
,p_event_id=>wwv_flow_imp.id(19229615313747667)
,p_event_result=>'TRUE'
,p_action_sequence=>21
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         DISCHARGE_ID,',
'         DISCHARGE_DATE,',
'         XRT_STARTED_ON,',
'         XRT_COMPLETED_ON,',
'         REMARKS,',
'         DISCHARGE_BY,',
'         DISCAHRGE_LOCATION_ID,',
'         FOLLOW_UP_INSTRUCTION,',
'         TREATMENT_TYPE,',
'         TECHNIQUE_ID,',
'         FOLLOW_UP,',
'         EXPLAIN_LANGUAGE,',
'         EXPLAIN_TEXT,',
'         CONTIGENCY_FLAG,',
'         ORDER_TYPE_ID,',
'         ORDER_NO,',
'         LOCATION_ID,',
'         ORDER_LOCATION_ID,',
'         ACTIVE,',
'         PHASE_NO,',
'         EDU_SIDE_EFFECTS,',
'         EDU_DIET,',
'         EDU_GENERAL_MEASURE,',
'         EDU_PERSONAL_HYGIENE,',
'         EDU_FU_INSTRUCTIONS,',
'         STATUS_ID,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESC,',
'         (SELECT MIN(RP.FRACTION_DATE)',
'            FROM RADIATION.RAD_PERFORMANCE RP',
'           WHERE RP.RADIATION_NO = D.RADIATION_NO',
'             AND RP.SITE_ID = D.SITE_ID',
'             AND RP.STATUS_ID = ''015'') TRT_START_DATE,',
'         (SELECT MAX(RP.FRACTION_DATE)',
'            FROM RADIATION.RAD_PERFORMANCE RP',
'           WHERE RP.RADIATION_NO = D.RADIATION_NO',
'             AND RP.SITE_ID = D.SITE_ID',
'             AND RP.STATUS_ID = ''015'') TRT_END_DATE,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(CASE',
'                                            WHEN D.STATUS_ID = ''015'' THEN',
'                                             D.DISCHARGE_BY',
'                                            ELSE',
'                                             NULL',
'                                          END) DISCHARGE_BY_NAME,',
'         PAT_FAMILY_EDU,',
'         PAT_FAMILY_EDU_REMARKS,',
'         ROWID',
'    INTO :P69_RADIATION_NO_1,',
'         :P69_SITE_ID,',
'         :P69_DISCHARGE_ID,',
'         :P69_DISCHARGE_DATE,',
'         :P69_XRT_STARTED_ON,',
'         :P69_XRT_COMPLETED_ON,',
'         :P69_ND_REMARKS,',
'         :P69_DISCHARGE_BY,',
'         :P69_DISCAHRGE_LOCATION_ID,',
'         :P69_ND_FOLLOWUP_INSTRUCTION,',
'         :P69_TREATMENT_TYPE,',
'         :P69_TECHNIQUE_ID,',
'         :P69_FOLLOW_UP,',
'         :P69_EXPLAIN_LANGUAGE,',
'         :P69_EXPLAIN_TEXT,',
'         :P69_CONTIGENCY_FLAG,',
'         :P69_ORDER_TYPE_ID,',
'         :P69_ORDER_NO,',
'         :P69_LOCATION_ID_1,',
'         :P69_ORDER_LOCATION_ID,',
'         :P69_ACTIVE,',
'         :P69_PHASE_NO,',
'         :P69_ND_SIDE_EFFECTS,',
'         :P69_ND_DIET,',
'         :P69_ND_GENERAL_MEASURE,',
'         :P69_ND_PERSONAL_HYGIENE,',
'         :P69_ND_FU_INSTRUCTIONS,',
'         :P69_STATUS_ID,',
'         :P69_STATUS_DESC,',
'         :P69_TRT_START_DATE,',
'         :P69_TRT_END_DATE,',
'         :P69_DISCHARGE_BY_NAME,',
'         :P69_EDU_GIVEN,',
'         :P69_ND_EDU_REMARKS,',
'         :P69_ROWID_1',
'    FROM RADIATION.PATIENT_DISCHARGE D',
'   WHERE RADIATION_NO = :P69_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P69_RAD_DETAIL_ND_SITE_ID',
'     AND ((:P69_ND_DISCHARGE_ID IS NOT NULL AND',
'         DISCHARGE_ID = :P69_ND_DISCHARGE_ID) OR',
'         (:P69_ND_DISCHARGE_ID IS NULL AND DISCHARGE_ID = DISCHARGE_ID AND',
'         ROWNUM = 1))',
'   ORDER BY 3 DESC;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P69_RADIATION_NO_1,P69_SITE_ID,P69_DISCHARGE_ID,P69_DISCHARGE_DATE,P69_XRT_STARTED_ON,P69_XRT_COMPLETED_ON,P69_ND_REMARKS,P69_DISCHARGE_BY,P69_DISCAHRGE_LOCATION_ID,P69_ND_FOLLOWUP_INSTRUCTION,P69_TREATMENT_TYPE,P69_TECHNIQUE_ID,P69_FOLLOW_UP,P69_EXP'
||'LAIN_LANGUAGE,P69_EXPLAIN_TEXT,P69_CONTIGENCY_FLAG,P69_ORDER_TYPE_ID,P69_ORDER_NO,P69_LOCATION_ID_1,P69_ORDER_LOCATION_ID,P69_ACTIVE,P69_PHASE_NO,P69_ND_SIDE_EFFECTS,P69_ND_DIET,P69_ND_GENERAL_MEASURE,P69_ND_PERSONAL_HYGIENE,P69_ND_FU_INSTRUCTIONS,P6'
||'9_STATUS_ID,P69_STATUS_DESC,P69_TRT_START_DATE,P69_TRT_END_DATE,P69_DISCHARGE_BY_NAME,P69_EDU_GIVEN,P69_ND_EDU_REMARKS,P69_ROWID_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19233044461747668)
,p_name=>'PopulatePlanningSiteId'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ND_DOSE_CONSTRAINT_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19233515189747668)
,p_event_id=>wwv_flow_imp.id(19233044461747668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P69_DOSE_CONSTRAINT_SITE_ID").setValue($v("P69_ND_DOSE_CONSTRAINT_SITE"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19233916496747669)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19195491612747648)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19234492942747669)
,p_event_id=>wwv_flow_imp.id(19233916496747669)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P69_TXT_ALERT_TEXT := null;',
'  :P69_SUCCESS_MSG    := null;',
'  :P69_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P69_DISP_MRNO,',
'                                          :P69_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P69_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P69_VALIDATE'', ''Y'');',
'    :P69_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P69_DISP_MRNO,P69_PASSWORD'
,p_attribute_03=>'P69_SUCCESS_MSG,P69_ERROR,P69_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19234970363747669)
,p_event_id=>wwv_flow_imp.id(19233916496747669)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P69_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00146.SIGN_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P69_RAD_DETAIL_ND_RADIATION_NO,',
'                                               P_SITE_ID           => :P69_RAD_DETAIL_ND_SITE_ID,',
'                                               P_DISCHARGE_ID      => :P69_DISCHARGE_ID,',
'                                               P_SIGN_BY           => :P69_DISP_MRNO,',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_OBJECT_CODE       => ''S18APX00059'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P69_ERROR    := L_ALERT_TEXT;',
'      :P69_VALIDATE := ''N'';',
'    ELSE',
'      :P69_SUCCESS_MSG := ''Radiotheraphy Discharge Signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID,P69_DISCHARGE_ID,P69_DISP_MRNO,P69_VALIDATE'
,p_attribute_03=>'P69_ERROR,P69_SUCCESS_MSG,P69_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P69_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19235944558747670)
,p_event_id=>wwv_flow_imp.id(19233916496747669)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''patdischarge'').refresh();',
'apex.item("signbtn").disable();',
'apex.item("save").disable();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P69_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19236330862747670)
,p_name=>'CloseSign'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19195049085747647)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19236814780747670)
,p_event_id=>wwv_flow_imp.id(19236330862747670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(155595124831674185)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19237215689747670)
,p_name=>'SetMRNO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19237753841747670)
,p_event_id=>wwv_flow_imp.id(19237215689747670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_PASSWORD,P69_PATIENT_NAME,P69_DISP_MRNO,P69_SUCCESS_MSG,P69_ND_SUCCESS_MESSAGE,P69_ERROR,P69_ND_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19238244795747670)
,p_event_id=>wwv_flow_imp.id(19237215689747670)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P69_PATIENT_TYPE IS NOT NULL AND :P69_PATIENT_MRNO IS NOT NULL THEN',
'    :P69_DISP_MRNO := :P69_PATIENT_TYPE || LPAD(:P69_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P69_PATIENT_TYPE,P69_PATIENT_MRNO'
,p_attribute_03=>'P69_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19238738209747671)
,p_event_id=>wwv_flow_imp.id(19237215689747670)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P69_ERROR := NULL;',
'  IF :P69_PATIENT_MRNO IS NOT NULL THEN',
'    :P69_DISP_MRNO := :P69_PATIENT_TYPE || LPAD(:P69_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P69_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P69_ERROR        := ''This is not an active employee.'';',
'      :P69_PATIENT_MRNO := NULL;',
'      :P69_DISP_MRNO    := NULL;',
'      :P69_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P69_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P69_DISP_MRNO',
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
,p_attribute_02=>'P69_PATIENT_MRNO,P69_PATIENT_TYPE'
,p_attribute_03=>'P69_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19239248988747671)
,p_event_id=>wwv_flow_imp.id(19237215689747670)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P69_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P69_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19239776249747671)
,p_event_id=>wwv_flow_imp.id(19237215689747670)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P69_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P69_DISP_MRNO);'
,p_attribute_02=>'P69_DISP_MRNO'
,p_attribute_03=>'P69_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19244993268747673)
,p_name=>'SetTotalDose1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ISO_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19245490469747673)
,p_event_id=>wwv_flow_imp.id(19244993268747673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P69_ISO_DOSE_FRACTION,0) * NVL(:P69_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P69_ISO_DOSE_FRACTION,P69_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19245874787747673)
,p_name=>'SetTotalDose2'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ISO_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19246334297747673)
,p_event_id=>wwv_flow_imp.id(19245874787747673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P69_ISO_DOSE_FRACTION,0) * NVL(:P69_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P69_ISO_DOSE_FRACTION,P69_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19251722855747675)
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
 p_id=>wwv_flow_imp.id(19252217804747675)
,p_event_id=>wwv_flow_imp.id(19251722855747675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P69_FIELD_NO",',
'            "P69_FIELD_DESCRIPTION",',
'            "P69_FIELD_ENERGY",',
'            "P69_FIELD_GANTRY",',
'            "P69_FIELD_SSD",',
'            "P69_FIELD_MU",',
'            "P69_FIELDS_RADIATION_NO",',
'            "P69_FIELDS_SITE_ID",',
'            "P69_FIELDS_PHY_PLAN_ID",',
'            "P69_FIELDS_ISOCENTER_ID",',
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
 p_id=>wwv_flow_imp.id(19252618617747675)
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
 p_id=>wwv_flow_imp.id(19253189812747675)
,p_event_id=>wwv_flow_imp.id(19252618617747675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P69_FIELD_NO",',
'            "P69_FIELD_DESCRIPTION",',
'            "P69_FIELD_ENERGY",',
'            "P69_FIELD_GANTRY",',
'            "P69_FIELD_SSD",',
'            "P69_FIELD_MU",',
'            "P69_FIELDS_RADIATION_NO",',
'            "P69_FIELDS_SITE_ID",',
'            "P69_FIELDS_PHY_PLAN_ID",',
'            "P69_FIELDS_ISOCENTER_ID",',
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
 p_id=>wwv_flow_imp.id(19255336802747676)
,p_name=>'PhysicsSign'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19200152209747650)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19255838324747677)
,p_event_id=>wwv_flow_imp.id(19255336802747676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P69_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P69_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P69_DISP_MRNO    := (:P69_PATIENT_TYPE ||',
'                         LPAD(:P69_PATIENT_MRNO, 8, ''0''));',
'    :P69_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P69_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P69_PATIENT_MRNO,P69_PATIENT_TYPE,P69_DISP_MRNO,P69_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19256347075747677)
,p_event_id=>wwv_flow_imp.id(19255336802747676)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P69_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19256728587747677)
,p_name=>'DASuccessMsg'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_SUCCESS_MSG'
,p_condition_element=>'P69_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19257236884747677)
,p_event_id=>wwv_flow_imp.id(19256728587747677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P69_SUCCESS_MSG.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19257648348747677)
,p_name=>'DAErrorMessage'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ERROR'
,p_condition_element=>'P69_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19258151080747677)
,p_event_id=>wwv_flow_imp.id(19257648348747677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P69_ERROR.</b>'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P69_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19258547461747677)
,p_name=>'New'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19259034484747678)
,p_event_id=>wwv_flow_imp.id(19258547461747677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103196680607415590)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19372496957081829)
,p_name=>'SetDischargeId'
,p_event_sequence=>450
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19372018992081825)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19372540666081830)
,p_event_id=>wwv_flow_imp.id(19372496957081829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P69_ND_DISCHARGE_ID'', _.raddishist.DISCHARGE_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19657759756361505)
,p_name=>'DAFetchLastMedicationOrder'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19371899842081823)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19657829688361506)
,p_event_id=>wwv_flow_imp.id(19657759756361505)
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
'  IF :P69_DISCHARGE_ID IS NOT NULL THEN',
'    RADIATION.PKG_S18FRM00146.LINK_LATEST_MEDICATIONS(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P69_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P69_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_DISCHARGE_ID      => :P69_DISCHARGE_ID,',
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
'    :P69_ND_ERROR_MESSAGE := L_ALERT_TEXT;',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  :P69_ND_SUCCESS_MESSAGE := ''Order Linked Properly'';',
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
,p_attribute_02=>'P69_DISCHARGE_ID,P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P69_ND_ERROR_MESSAGE,P69_ND_SUCCESS_MESSAGE'
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
 p_id=>wwv_flow_imp.id(19661980311361547)
,p_event_id=>wwv_flow_imp.id(19657759756361505)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19372669631081831)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19658105176361509)
,p_name=>'DANDErrorMessage'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ND_ERROR_MESSAGE'
,p_condition_element=>'P69_ND_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19658242323361510)
,p_event_id=>wwv_flow_imp.id(19658105176361509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P69_ND_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19658332981361511)
,p_name=>'DANDSuccessMessage'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ND_SUCCESS_MESSAGE'
,p_condition_element=>'P69_ND_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19658419686361512)
,p_event_id=>wwv_flow_imp.id(19658332981361511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P69_ND_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19660753555361535)
,p_name=>'DADischargeId'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_DISCHARGE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19660879085361536)
,p_event_id=>wwv_flow_imp.id(19660753555361535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19372669631081831)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19661012537361538)
,p_name=>'DASave'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19200515407747650)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19661147413361539)
,p_event_id=>wwv_flow_imp.id(19661012537361538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDischarge",',
'    {',
'        pageItems: [',
'            "P69_RAD_DETAIL_ND_RADIATION_NO",',
'            "P69_RAD_DETAIL_ND_SITE_ID",',
'            "P69_DISCHARGE_ID",',
'            "P69_DISCHARGE_DATE",',
'            "P69_TRT_START_DATE",',
'            "P69_TRT_END_DATE",',
'            "P69_ND_REMARKS",',
'            "P69_DISCHARGE_BY",',
'            "P69_DISCAHRGE_LOCATION_ID",',
'            "P69_ND_FOLLOWUP_INSTRUCTION",',
'            "P69_TREATMENT_TYPE",',
'            "P69_TECHNIQUE_ID",',
'            "P69_FOLLOW_UP",',
'            "P69_EXPLAIN_LANGUAGE",',
'            "P69_EXPLAIN_TEXT",',
'            "P69_CONTIGENCY_FLAG",',
'            "P69_ORDER_TYPE_ID",',
'            "P69_ORDER_NO",',
'            "P69_LOCATION_ID_1",',
'            "P69_ORDER_LOCATION_ID",',
'            "P69_ACTIVE",',
'            "P69_PHASE_NO",',
'            "P69_ND_SIDE_EFFECTS",',
'            "P69_ND_DIET",',
'            "P69_ND_GENERAL_MEASURE",',
'            "P69_ND_PERSONAL_HYGIENE",',
'            "P69_ND_FU_INSTRUCTIONS",',
'            "P69_STATUS_ID",',
'            "P69_STATUS_DESC",',
'            "P69_TRT_START_DATE",',
'            "P69_TRT_END_DATE ",',
'            "P69_DISCHARGE_BY_NAME",',
'            "P69_EDU_GIVEN",',
'            "P69_ND_EDU_REMARKS"',
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
 p_id=>wwv_flow_imp.id(19661336825361541)
,p_name=>'ExportRDF'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19661217701361540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19661479554361542)
,p_event_id=>wwv_flow_imp.id(19661336825361541)
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
 p_id=>wwv_flow_imp.id(19661525963361543)
,p_event_id=>wwv_flow_imp.id(19661336825361541)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = { "P_RADIATION_NO": $v("P69_RADIATION_NO") };',
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
 p_id=>wwv_flow_imp.id(19661784745361545)
,p_name=>'DAChangeStatusId'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19661850238361546)
,p_event_id=>wwv_flow_imp.id(19661784745361545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P69_SIGN_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P69_STATUS_ID;'
,p_attribute_07=>'P69_STATUS_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309342264534051345)
,p_event_id=>wwv_flow_imp.id(19661784745361545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P69_SIGN_STATUS") === "015") || ($v("P69_SIGN_STATUS") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("save").disable();',
'',
'',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("save").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288736736073212511)
,p_name=>'DA_ND_ORDER_NO'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ND_ORDER_NO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288736861556212512)
,p_event_id=>wwv_flow_imp.id(288736736073212511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290006125591969512)
,p_name=>'DANewDischarge'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19201715108747651)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290006203519969513)
,p_event_id=>wwv_flow_imp.id(290006125591969512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P69_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P69_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessCreateDischarge",',
'    {',
'        pageItems: [',
'            "P69_RAD_DETAIL_ND_RADIATION_NO",',
'            "P69_RAD_DETAIL_ND_SITE_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P69_SUCCESS_MESSAGE").setValue(obj.message);',
'',
'',
'            } else {',
'                apex.item("P69_ERROR_MESSAGE").setValue(obj.message);',
'                return;',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309341282888051335)
,p_event_id=>wwv_flow_imp.id(290006125591969512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''raddishist'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290006510437969516)
,p_name=>'DASuccessMessage'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_SUCCESS_MESSAGE'
,p_condition_element=>'P69_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290006665256969517)
,p_event_id=>wwv_flow_imp.id(290006510437969516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P69_SUCCESS_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290006858145969519)
,p_name=>'DAErrorMessage1'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ERROR_MESSAGE'
,p_condition_element=>'P69_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290006955103969520)
,p_event_id=>wwv_flow_imp.id(290006858145969519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P69_ERROR_MESSAGE.</b>'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290007006189969521)
,p_name=>'DADisposeDischarge'
,p_event_sequence=>580
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19202194923747651)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290007248293969523)
,p_event_id=>wwv_flow_imp.id(290007006189969521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Could you please confirm if you would like to dispose of this discharge?</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290007194198969522)
,p_event_id=>wwv_flow_imp.id(290007006189969521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P69_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P69_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessDisposeDischarge",',
'    {',
'        pageItems: [',
'            "P69_RAD_DETAIL_ND_RADIATION_NO",',
'            "P69_RAD_DETAIL_ND_SITE_ID",',
'            "P69_DISCHARGE_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P69_SUCCESS_MESSAGE").setValue(obj.message);',
'',
'',
'            } else {',
'                apex.item("P69_ERROR_MESSAGE").setValue(obj.message);',
'                return;',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309341073123051333)
,p_event_id=>wwv_flow_imp.id(290007006189969521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''raddishist'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(309340517845051328)
,p_name=>'DADischargeID'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_ND_DISCHARGE_ID'
,p_condition_element=>'P69_ND_DISCHARGE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309340451761051327)
,p_event_id=>wwv_flow_imp.id(309340517845051328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         DISCHARGE_ID,',
'         DISCHARGE_DATE,',
'         XRT_STARTED_ON,',
'         XRT_COMPLETED_ON,',
'         REMARKS,',
'         DISCHARGE_BY,',
'         DISCAHRGE_LOCATION_ID,',
'         FOLLOW_UP_INSTRUCTION,',
'         TREATMENT_TYPE,',
'         TECHNIQUE_ID,',
'         FOLLOW_UP,',
'         EXPLAIN_LANGUAGE,',
'         EXPLAIN_TEXT,',
'         CONTIGENCY_FLAG,',
'         ORDER_TYPE_ID,',
'         ORDER_NO,',
'         LOCATION_ID,',
'         ORDER_LOCATION_ID,',
'         ACTIVE,',
'         PHASE_NO,',
'         EDU_SIDE_EFFECTS,',
'         EDU_DIET,',
'         EDU_GENERAL_MEASURE,',
'         EDU_PERSONAL_HYGIENE,',
'         EDU_FU_INSTRUCTIONS,',
'         STATUS_ID,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESC,',
'         (SELECT MIN(RP.FRACTION_DATE)',
'            FROM RADIATION.RAD_PERFORMANCE RP',
'           WHERE RP.RADIATION_NO = D.RADIATION_NO',
'             AND RP.SITE_ID = D.SITE_ID',
'             AND RP.STATUS_ID = ''015'') TRT_START_DATE,',
'         (SELECT MAX(RP.FRACTION_DATE)',
'            FROM RADIATION.RAD_PERFORMANCE RP',
'           WHERE RP.RADIATION_NO = D.RADIATION_NO',
'             AND RP.SITE_ID = D.SITE_ID',
'             AND RP.STATUS_ID = ''015'') TRT_END_DATE,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(CASE',
'                                            WHEN D.STATUS_ID = ''015'' THEN',
'                                             D.DISCHARGE_BY',
'                                            ELSE',
'                                             NULL',
'                                          END) DISCHARGE_BY_NAME,',
'         PAT_FAMILY_EDU,',
'         PAT_FAMILY_EDU_REMARKS,',
'         ROWID',
'    INTO :P69_RADIATION_NO_1,',
'         :P69_SITE_ID,',
'         :P69_DISCHARGE_ID,',
'         :P69_DISCHARGE_DATE,',
'         :P69_XRT_STARTED_ON,',
'         :P69_XRT_COMPLETED_ON,',
'         :P69_ND_REMARKS,',
'         :P69_DISCHARGE_BY,',
'         :P69_DISCAHRGE_LOCATION_ID,',
'         :P69_ND_FOLLOWUP_INSTRUCTION,',
'         :P69_TREATMENT_TYPE,',
'         :P69_TECHNIQUE_ID,',
'         :P69_FOLLOW_UP,',
'         :P69_EXPLAIN_LANGUAGE,',
'         :P69_EXPLAIN_TEXT,',
'         :P69_CONTIGENCY_FLAG,',
'         :P69_ORDER_TYPE_ID,',
'         :P69_ORDER_NO,',
'         :P69_LOCATION_ID_1,',
'         :P69_ORDER_LOCATION_ID,',
'         :P69_ACTIVE,',
'         :P69_PHASE_NO,',
'         :P69_ND_SIDE_EFFECTS,',
'         :P69_ND_DIET,',
'         :P69_ND_GENERAL_MEASURE,',
'         :P69_ND_PERSONAL_HYGIENE,',
'         :P69_ND_FU_INSTRUCTIONS,',
'         :P69_STATUS_ID,',
'         :P69_STATUS_DESC,',
'         :P69_TRT_START_DATE,',
'         :P69_TRT_END_DATE,',
'         :P69_DISCHARGE_BY_NAME,',
'         :P69_EDU_GIVEN,',
'         :P69_ND_EDU_REMARKS,',
'         :P69_ROWID_1',
'    FROM RADIATION.PATIENT_DISCHARGE D',
'   WHERE RADIATION_NO = :P69_RAD_DETAIL_ND_RADIATION_NO',
'     AND SITE_ID = :P69_RAD_DETAIL_ND_SITE_ID',
'     AND DISCHARGE_ID = :P69_ND_DISCHARGE_ID',
'  ',
'   ORDER BY 3 DESC;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID,P69_ND_DISCHARGE_ID'
,p_attribute_03=>'P69_RADIATION_NO_1,P69_SITE_ID,P69_DISCHARGE_ID,P69_DISCHARGE_DATE,P69_XRT_STARTED_ON,P69_XRT_COMPLETED_ON,P69_ND_REMARKS,P69_DISCHARGE_BY,P69_DISCAHRGE_LOCATION_ID,P69_ND_FOLLOWUP_INSTRUCTION,P69_TREATMENT_TYPE,P69_TECHNIQUE_ID,P69_FOLLOW_UP,P69_EXP'
||'LAIN_LANGUAGE,P69_EXPLAIN_TEXT,P69_CONTIGENCY_FLAG,P69_ORDER_TYPE_ID,P69_ORDER_NO,P69_LOCATION_ID_1,P69_ORDER_LOCATION_ID,P69_ACTIVE,P69_PHASE_NO,P69_ND_SIDE_EFFECTS,P69_ND_DIET,P69_ND_GENERAL_MEASURE,P69_ND_PERSONAL_HYGIENE,P69_ND_FU_INSTRUCTIONS,P6'
||'9_STATUS_ID,P69_STATUS_DESC,P69_TRT_START_DATE,P69_TRT_END_DATE,P69_DISCHARGE_BY_NAME,P69_EDU_GIVEN,P69_ND_EDU_REMARKS,P69_ROWID_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(309341343109051336)
,p_name=>'EnterKeyPassword'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309341546004051338)
,p_event_id=>wwv_flow_imp.id(309341343109051336)
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
'  :P69_TXT_ALERT_TEXT := null;',
'  :P69_SUCCESS_MSG    := null;',
'  :P69_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P69_DISP_MRNO,',
'                                          :P69_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P69_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P69_VALIDATE'', ''Y'');',
'    :P69_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P69_DISP_MRNO,P69_PASSWORD'
,p_attribute_03=>'P69_SUCCESS_MSG,P69_ERROR,P69_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309341686230051339)
,p_event_id=>wwv_flow_imp.id(309341343109051336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P69_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00146.SIGN_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P69_RAD_DETAIL_ND_RADIATION_NO,',
'                                               P_SITE_ID           => :P69_RAD_DETAIL_ND_SITE_ID,',
'                                               P_DISCHARGE_ID      => :P69_DISCHARGE_ID,',
'                                               P_SIGN_BY           => :P69_DISP_MRNO,',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_OBJECT_CODE       => ''S18APX00059'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P69_ERROR    := L_ALERT_TEXT;',
'      :P69_VALIDATE := ''N'';',
'    ELSE',
'      :P69_SUCCESS_MSG := ''Radiotheraphy Discharge Signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P69_RAD_DETAIL_ND_RADIATION_NO,P69_RAD_DETAIL_ND_SITE_ID,P69_DISCHARGE_ID,P69_DISP_MRNO,P69_VALIDATE'
,p_attribute_03=>'P69_ERROR,P69_SUCCESS_MSG,P69_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P69_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309341737026051340)
,p_event_id=>wwv_flow_imp.id(309341343109051336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''patdischarge'').refresh();',
'apex.item("signbtn").disable();',
'apex.item("save").disable();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P69_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(290006057613969511)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClearItems'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'  :P69_ND_REMARKS              := NULL;',
'  :P69_ND_FOLLOWUP_INSTRUCTION := NULL;',
'  :P69_ND_SIDE_EFFECTS         := ''N'';',
'  :P69_ND_DIET                 := ''N'';',
'  :P69_ND_GENERAL_MEASURE      := ''N'';',
'  :P69_ND_PERSONAL_HYGIENE     := ''N'';',
'  :P69_ND_FU_INSTRUCTIONS      := ''N'';',
'  :P69_EDU_GIVEN               := ''N'';',
'  :P69_ND_EDU_REMARKS          := NULL;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>290006057613969511
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19218765372747662)
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
'    INTO :P69_RADIATION_NO,',
'         :P69_RADIATION_DATE,',
'         :P69_MRNO,',
'         :P69_PATIENT_NAME,',
'         :P69_DISP_AGE,',
'         :P69_DISP_GENDER,',
'         :P69_DOCTOR_ID,',
'         :P69_DISP_DOCTOR,',
'         :P69_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P69_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
'     AND RADIOTHERAPY_TYPE = ''T''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19218765372747662
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19218351512747662)
,p_process_sequence=>10
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
'',
'  SELECT :P69_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P69_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'         :P69_DISCHARGE_ID               DISCHARGE_ID,',
'         :P69_DISCHARGE_DATE             DISCHARGE_DATE,',
'         :P69_TRT_START_DATE             XRT_STARTED_ON,',
'         :P69_TRT_END_DATE               XRT_COMPLETED_ON,',
'         :P69_ND_REMARKS                 REMARKS,',
'         :P69_DISCHARGE_BY               DISCHARGE_BY,',
'         :P69_DISCAHRGE_LOCATION_ID      DISCAHRGE_LOCATION_ID,',
'         :P69_ND_FOLLOWUP_INSTRUCTION    FOLLOW_UP_INSTRUCTION,',
'         :P69_TREATMENT_TYPE             TREATMENT_TYPE,',
'         :P69_TECHNIQUE_ID               TECHNIQUE_ID,',
'         :P69_FOLLOW_UP                  FOLLOW_UP,',
'         :P69_EXPLAIN_LANGUAGE           EXPLAIN_LANGUAGE,',
'         :P69_EXPLAIN_TEXT               EXPLAIN_TEXT,',
'         :P69_CONTIGENCY_FLAG            CONTIGENCY_FLAG,',
'         :P69_ORDER_TYPE_ID              ORDER_TYPE_ID,',
'         :P69_ORDER_NO                   ORDER_NO,',
'         :P69_LOCATION_ID_1              LOCATION_ID,',
'         :P69_ORDER_LOCATION_ID          ORDER_LOCATION_ID,',
'         :P69_ACTIVE                     ACTIVE,',
'         :P69_PHASE_NO                   PHASE_NO,',
'         :P69_ND_SIDE_EFFECTS            EDU_SIDE_EFFECTS,',
'         :P69_ND_DIET                    EDU_DIET,',
'         :P69_ND_GENERAL_MEASURE         EDU_GENERAL_MEASURE,',
'         :P69_ND_PERSONAL_HYGIENE        EDU_PERSONAL_HYGIENE,',
'         :P69_ND_FU_INSTRUCTIONS         EDU_FU_INSTRUCTIONS,',
'         :P69_STATUS_ID                  STATUS_ID,',
'         :P69_STATUS_DESC                STATUS_DESC,',
'         :P69_TRT_START_DATE             ACTUAL_TRT_START,',
'         :P69_TRT_END_DATE               ACTUAL_TRT_COMPLETE,',
'         :P69_DISCHARGE_BY_NAME          SIGN_BY,',
'         :P69_EDU_GIVEN                  PAT_FAMILY_EDU,',
'         :P69_ND_EDU_REMARKS             PAT_FAMILY_EDU_REMARKS',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  RADIATION.PKG_S18FRM00146.UPDATE_RAD_DISCHARGE(L_BLOCK_DATA);',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'', ''The discharge has been saved properly'');',
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
,p_internal_uid=>19218351512747662
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19219505605747662)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateDischarge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00146.NEW_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''ORGANIZATION_ID''),',
'                                          P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''LOCATION_ID''),',
'                                          P_RADIATION_NO      => :P69_RAD_DETAIL_ND_RADIATION_NO,',
'                                          P_SITE_ID           => :P69_RAD_DETAIL_ND_SITE_ID,',
'                                          P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''USER_MRNO''),',
'                                          P_OBJECT_CODE       => ''S18APX00059'',',
'                                          P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''TERMINAL''),',
'                                          P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                          P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The radiotherapy discharge has been successfully generated'');',
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
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(19201715108747651)
,p_process_success_message=>'Radiotherapy Discharge populated successfully '
,p_internal_uid=>19219505605747662
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
 p_id=>wwv_flow_imp.id(19219915075747663)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeDischarge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'',
'',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00146.DISPOSE_DISCHARGE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_RADIATION_NO      => :P69_RAD_DETAIL_ND_RADIATION_NO,',
'                                              P_SITE_ID           => :P69_RAD_DETAIL_ND_SITE_ID,',
'                                              P_DISCHARGE_ID      => :P69_DISCHARGE_ID,',
'                                              P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                              P_OBJECT_CODE       => ''S18APX00059'',',
'                                              P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The radiotherapy discharge has been disposed'');',
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
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(19202194923747651)
,p_process_success_message=>'Radiotherapy Discharge disposed successfully  '
,p_internal_uid=>19219915075747663
);
null;
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_name=>'RAD_SCHEDULE'
,p_alias=>'RAD-SCHEDULE'
,p_step_title=>'RAD_SCHEDULE'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function createSlot() {',
'    $.event.trigger(''createSlot'');',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.a-GV-pageRange{',
'    display:none;',
'}',
'',
'',
'.fc-event-title{',
'    font-size: 15px !important;',
'}',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
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
'/*.event-style {',
'    width: min-content;',
'     width: 1000px; ',
'    /*width: 20%; */',
'/*}',
'',
'.fc-scroller {',
'',
'overflow-y: visible! important;',
'',
'overflow-x: visible! important;',
'',
'}*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'OWAIS'
,p_last_upd_yyyymmddhh24miss=>'20240403145124'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12233948001052347)
,p_plug_name=>'Create Single Slot'
,p_region_name=>'singleslot'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>111
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12234053952052348)
,p_plug_name=>'Create Single Slot'
,p_parent_plug_id=>wwv_flow_imp.id(12233948001052347)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28169936815971624)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(12233948001052347)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57399886695054142)
,p_plug_name=>'Control'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>41
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57400428421054148)
,p_plug_name=>'Cancel Appointment SMS'
,p_region_name=>'cancel'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>101
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57400509896054149)
,p_plug_name=>'Send Message'
,p_parent_plug_id=>wwv_flow_imp.id(57400428421054148)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62636442984912407)
,p_plug_name=>'Legend'
,p_region_name=>'legend'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>131
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'  L_LEGEND CLOB;',
'  CURSOR C1 IS',
'    SELECT T.SLOT_TYPE_ID, T.DESCRIPTION, T.ACTIVE, T.BG_COLOR, T.SERIAL_NO',
'      FROM RADIOLOGY.SLOT_COLOR T, DEFINITIONS.DEPARTMENT D',
'     WHERE T.DEPARTMENT_ID = D.DEPARTMENT_ID',
'       AND D.DEPARTMENT_NATURE_ID = ''020'';',
'BEGIN',
'  FOR I IN C1 LOOP',
'    L_LEGEND := L_LEGEND || ''<li><span style=''''background: rgb('' ||',
'                trim(regexp_replace(I.bg_color, ''[a-z]'', '' '')) ||',
'                '');''''></span>'' || I.DESCRIPTION || ''</li>'';',
'  END LOOP;',
'  HTP.P(''<div class=''''my-legend''''>',
'            <div class=''''legend-scale''''>',
'            <ul class=''''legend-labels''''>'' || L_LEGEND ||',
'        ''</ul>',
'             </div>',
'             </div>',
'             <style type=''''text/css''''>',
'                .my-legend .legend-scale ul {',
'                    margin: 0;',
'                    margin-bottom: 5px;',
'                    padding: 0;',
'                    float: left;',
'                    list-style: none;',
'                }',
'',
'                .my-legend .legend-scale ul li {',
'                    font-size: 110%;',
'                    font-weight: bold;',
'                    list-style: none;',
'                    margin-left: 0;',
'                    line-height: 25px;',
'                    margin-bottom: 2px;',
'                }',
'',
'                .my-legend ul.legend-labels li span {',
'                    display: block;',
'                    float: left;',
'                    height: 25px;',
'                    width: 60px;',
'                    margin-right: 5px;',
'                    margin-left: 0;',
'                    border: 1px solid #999;',
'                }',
'',
'             </style>'');',
'',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228144480444690537)
,p_plug_name=>'Radiotherapy Schedule '
,p_region_name=>'radschedule'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--xlarge'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.SR_NO,',
'       S.MACHINE_ID,',
'       CASE',
'         WHEN S.RADIATION_NO IS NOT NULL THEN',
'          RADIATION.PKG_RADIATION.GET_PATIENT_NAME(RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(S.RADIATION_NO)) || ''-'' ||',
'          RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(S.RADIATION_NO)',
'         ELSE',
'          '' ''',
'       END DISPLAY_COLUMN,',
'       S.VISIT_DATE START_DATE,',
'       /*(NVL((SELECT DMS.SLOT_LENGTH',
'         FROM RADIATION.DEF_MACHINE_SCHEDULE DMS',
'        WHERE (DMS.SCHEDULE_ID_MIGRATE = S.MACHINE_SCHEDULE_ID OR',
'              DMS.SCHEDULE_ID = S.MACHINE_SCHEDULE_ID)',
'          AND DMS.MACHINE_ID = S.MACHINE_ID),',
'       30) * INTERVAL ''1'' MINUTE) + S.VISIT_DATE END_DATE,*/',
'       S.RADIATION_NO,',
'       S.SITE_ID,',
'       S.FRACTION_ID,',
'       S.WFE_NO,',
'       S.OC_SERIAL_NO,',
'       S.REMARKS,',
'       S.SLOT_TYPE_ID,',
'       S.MACHINE_SCHEDULE_ID,',
'       S.OBJECT_CODE,',
'       S.RESERVED_BY,',
'       S.RESERVED_DATE,',
'       S.LINKED_SCHEDULE_SRNO,',
'       S.TIMEOUT_SRNO,',
'       CASE',
'         WHEN S.RADIATION_NO IS NULL THEN',
'          ''f?p=&APP_ID.:63:&APP_SESSION.::NO::P63_SRNO,P63_MACHINE_DESC,P63_MACHINE_ID,P63_VISIT_DATE:'' ||',
'          S.SR_NO || '','' ||',
'          RADIATION.PKG_RADIATION.GET_MACHINE_DESC(S.MACHINE_ID) || '','' ||',
'          S.MACHINE_ID || '','' ||',
'          TO_CHAR(S.VISIT_DATE, ''DD-MON-YYYY HH24:MI'')',
'         ELSE',
'          ''f?p=&APP_ID.:57:&APP_SESSION.::NO::P57_MRNO,P57_RADIATION_NO_2,P57_SCHEDULE_SRNO:'' ||',
'          RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(S.RADIATION_NO) || '','' ||',
'          S.RADIATION_NO || '','' || S.SR_NO',
'       END AS LINK,',
'       CASE S.SLOT_TYPE_ID',
'         WHEN ''P1'' then',
'          ''apex-cal-bluesky''',
'         WHEN ''P2'' then',
'          ''apex-cal-lime''',
'         WHEN ''VS'' then',
'          ''apex-cal-darkblue''',
'         WHEN ''ER'' then',
'          ''apex-cal-orange''',
'         ELSE',
'         --''apex-cal-green''',
'          ''apex-cal-blue''',
'       --''apex-cal-white''',
'       END AS CSS_CLASS',
'  FROM RADIATION.SCHEDULE S',
' WHERE S.MACHINE_ID = :P62_MACHINE_ID;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P62_MACHINE_ID'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (pOptions) {',
'    pOptions.slotMinTime = "07:00:00";                                             // hide slots before minTime',
'    pOptions.slotMaxTime = "23:00:00";                                           // hide slots after maxTime',
'    pOptions.dayHeaderFormat = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };   // week view column headings',
'    pOptions.slotDuration = "00:15:00";                                               // custom slot duration',
'    pOptions.weekNumbers = true;                                                     // show week numbers',
'    pOptions.weekText = "CW";                                                     // heading for week numbers',
'    pOptions.weekNumberCalculation = "ISO";                                                    // use "ISO" week numbers',
'    pOptions.displayEventTime = true;                                                     // show event time ...',
'    pOptions.displayEventEnd = true;                                                    // ... but not the end time',
'    pOptions.disableKeyboardSupport = true;                                                     // disable builtin keyboard navigation',
'    pOptions.windowResize = null;                                                     // suppress automatic switch to list view on small screens',
'    pOptions.defaultView = ''agendaDay'';',
'    //pOptions.initialDate = "2024-03-01";',
'    return pOptions;',
'}',
'',
'',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_03=>'DISPLAY_COLUMN'
,p_attribute_04=>'SR_NO'
,p_attribute_05=>'&LINK.'
,p_attribute_06=>'javascript:createSlot();'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'0'
,p_attribute_21=>'99'
,p_attribute_22=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228144594474690538)
,p_plug_name=>'Performance Type'
,p_region_name=>'performtype'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DPT.PERFORMANCE_TYPE_ID, DPT.DESCIPTION, DPT.ROWID',
'  FROM RADIATION.DEF_PERFORMANCE_TYPE DPT',
' WHERE EXISTS (SELECT 1',
'          FROM RADIATION.MACHINES M',
'         WHERE M.PERFORMANCE_TYPE_ID = DPT.PERFORMANCE_TYPE_ID',
'           AND M.ACTIVE = ''Y'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Performance Type'
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
 p_id=>wwv_flow_imp.id(228144789763690540)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(228144845995690541)
,p_name=>'DESCIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Performance Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>250
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
 p_id=>wwv_flow_imp.id(228144923662690542)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(228144633494690539)
,p_internal_uid=>228144633494690539
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
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(62499127454781029)
,p_interactive_grid_id=>wwv_flow_imp.id(228144633494690539)
,p_static_id=>'624992'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(62499373009781030)
,p_report_id=>wwv_flow_imp.id(62499127454781029)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62499864026781035)
,p_view_id=>wwv_flow_imp.id(62499373009781030)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(228144789763690540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62500732522781039)
,p_view_id=>wwv_flow_imp.id(62499373009781030)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(228144845995690541)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62503405088800115)
,p_view_id=>wwv_flow_imp.id(62499373009781030)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(228144923662690542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228145128417690544)
,p_plug_name=>'Machines'
,p_region_name=>'machines'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>12
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.MACHINE_ID, MC.DESCRIPTION MACHINE_NAME, MC.PERFORMANCE_TYPE_ID',
'  FROM RADIATION.MACHINES MC',
' WHERE ACTIVE = ''Y''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'   AND MC.PERFORMANCE_TYPE_ID = :P62_PERFORMANCE_TYPE_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P62_PERFORMANCE_TYPE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Machines'
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
 p_id=>wwv_flow_imp.id(228145497643690547)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(228145604498690549)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
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
 p_id=>wwv_flow_imp.id(228145728397690550)
,p_name=>'MACHINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Machine(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'read readonly="readonly;"'
,p_is_required=>true
,p_max_length=>100
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(228145299372690545)
,p_internal_uid=>228145299372690545
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
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(62514050597906214)
,p_interactive_grid_id=>wwv_flow_imp.id(228145299372690545)
,p_static_id=>'625141'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(62514248515906214)
,p_report_id=>wwv_flow_imp.id(62514050597906214)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62514771196906219)
,p_view_id=>wwv_flow_imp.id(62514248515906214)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(228145497643690547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62515698774906225)
,p_view_id=>wwv_flow_imp.id(62514248515906214)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(228145604498690549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62516584894906233)
,p_view_id=>wwv_flow_imp.id(62514248515906214)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(228145728397690550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12232651030052334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(57400509896054149)
,p_button_name=>'SendSMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send SMS'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13147863286075803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12233948001052347)
,p_button_name=>'CreateSingleSlot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Single Slot'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12232758290052335)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(57400509896054149)
,p_button_name=>'ExitSMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13148263734075807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12233948001052347)
,p_button_name=>'ExitSingleSlot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28171272390971637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62636442984912407)
,p_button_name=>'ExitLegend'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57400376602054147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'Exit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-window-close-o'
,p_button_cattributes=>'accesskey=''X'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57400012812054144)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_button_cattributes=>'accesskey=''R'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34867830098221008)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'CallToRadiationReports'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Reports'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'accesskey=''S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34867790022221007)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'CallToRadiationMenu'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Menu '
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'accesskey=''S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34867918755221009)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'CallToRadiationAppointmentQueue'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Appointment Queue'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'accesskey=''S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62636558093912408)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'Legend'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Legend'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''L'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57399952810054143)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(57399886695054142)
,p_button_name=>'CancelAppSMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Appointment SMS'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ban'
,p_button_cattributes=>'accesskey=''C'''
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17790208529818147)
,p_branch_name=>'GoTOHomePage'
,p_branch_action=>'f?p=100:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(57400376602054147)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105466593445306)
,p_name=>'P62_MACHINE_DESCRIPTION'
,p_item_sequence=>81
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12232475095052332)
,p_name=>'P62_FROM_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(57400509896054149)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">From Date:</p></b>'
,p_post_element_text=>'<B><FONT COLOR="RED">(HH24:MI)</FONT></B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12232505019052333)
,p_name=>'P62_TO_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(57400509896054149)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">To Date:</p></b>'
,p_post_element_text=>'<B><FONT COLOR="RED">(HH24:MI)</FONT></B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(12233238942052340)
,p_name=>'P62_SUCCESS_MESSAGE'
,p_item_sequence=>91
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12234194740052349)
,p_name=>'P62_SINGLE_SLOT_MACHINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12234053952052348)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPTION, M.MACHINE_ID',
'  FROM RADIATION.MACHINES M',
' WHERE M.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12234213132052350)
,p_name=>'P62_SINGLE_SLOT_VISIT_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12234053952052348)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57400615869054150)
,p_name=>'P62_MACHINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57400509896054149)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPTION, M.MACHINE_ID',
'  FROM RADIATION.MACHINES M',
' WHERE M.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62507312330892606)
,p_name=>'P62_MACHINE_ID'
,p_item_sequence=>71
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62635844987912401)
,p_name=>'P62_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(57400509896054149)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228145042083690543)
,p_name=>'P62_PERFORMANCE_TYPE_ID'
,p_item_sequence=>61
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62506836471892601)
,p_name=>'DAPerformanceType1'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(228144594474690538)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62506922504892602)
,p_event_id=>wwv_flow_imp.id(62506836471892601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P62_PERFORMANCE_TYPE_ID'',_.performtype.PERFORMANCE_TYPE_ID);',
'apex.region("machines").refresh();',
'$s(''P62_MACHINE_ID'',_.machines.MACHINE_ID);',
'$s(''P62_MACHINE_DESCRIPTION'',_.machines.MACHINE_NAME);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62507147780892604)
,p_name=>'DAMachines1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(228145128417690544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62507418506892607)
,p_event_id=>wwv_flow_imp.id(62507147780892604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P62_MACHINE_ID'',_.machines.MACHINE_ID);',
'$s(''P62_MACHINE_DESCRIPTION'',_.machines.MACHINE_NAME);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62507220805892605)
,p_event_id=>wwv_flow_imp.id(62507147780892604)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(228144480444690537)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57400190945054145)
,p_name=>'RefreshPage'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(57400012812054144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57400244080054146)
,p_event_id=>wwv_flow_imp.id(57400190945054145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62636693994912409)
,p_name=>'ShowLegend'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62636558093912408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62636718906912410)
,p_event_id=>wwv_flow_imp.id(62636693994912409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62636442984912407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12232805355052336)
,p_name=>'CancelSMS'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(57399952810054143)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12232950413052337)
,p_event_id=>wwv_flow_imp.id(12232805355052336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.openRegion("cancel");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12233319353052341)
,p_name=>'SendSMS'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12232651030052334)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12233444629052342)
,p_event_id=>wwv_flow_imp.id(12233319353052341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00136.CANCELLED_APPOINTMENT_SMS(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                                      P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                      P_MACHINE_ID        => :P62_MACHINE,',
'                                                      P_ORIGIN_DATE       => :P62_DATE,',
'                                                      P_FROM_TIME         => :P62_FROM_DATE,',
'                                                      P_TO_TIME           => :P62_TO_DATE,',
'                                                      P_OBJECT_CODE       => ''S18APX0049'',',
'                                                      P_TERMINAL          => :GV_USER_MRNO,',
'                                                      P_USER_MRNO         => :GV_TERMINAL,',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'  :P62_SUCCESS_MESSAGE := ''SMS Sent successfully'';',
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
,p_attribute_02=>'P62_MACHINE,P62_DATE,P62_FROM_DATE,P62_TO_DATE'
,p_attribute_03=>'P62_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12233590173052343)
,p_event_id=>wwv_flow_imp.id(12233319353052341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P62_SUCCESS_MESSAGE.'
,p_attribute_02=>'SMS Cancellation '
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13147912372075804)
,p_name=>'createSingleSlotDA1'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13147863286075803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13148010855075805)
,p_event_id=>wwv_flow_imp.id(13147912372075804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_SCHEDULE.GEN_SINGLE_SLOT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                         P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                         P_MACHINE_ID        => :P62_SINGLE_SLOT_MACHINE,',
'                                         P_VISIT_DATE        => :P62_SINGLE_SLOT_VISIT_DATE,',
'                                         P_OBJECT_CODE       => ''S18APX00049'',',
'                                         P_USER_MRNO         => :GV_USER_MRNO,',
'                                         P_TERMINAL          => :GV_TERMINAL,',
'                                         P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                         P_STOP              => L_STOP);',
'',
'  :P62_SUCCESS_MESSAGE := ''Single Slot Created successfully, please refresh the page'';',
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
,p_attribute_02=>'P62_SINGLE_SLOT_MACHINE,P62_SINGLE_SLOT_VISIT_DATE'
,p_attribute_03=>'P62_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13148739441075812)
,p_event_id=>wwv_flow_imp.id(13147912372075804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P62_SUCCESS_MESSAGE.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13148558766075810)
,p_name=>'CloseSingleSlot'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13148263734075807)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13148677077075811)
,p_event_id=>wwv_flow_imp.id(13148558766075810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion("singleslot")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17790361436818148)
,p_name=>'CloseDialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12232758290052335)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17790489106818149)
,p_event_id=>wwv_flow_imp.id(17790361436818148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion("cancel")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18167805557317215)
,p_name=>'DARadiationSchedule'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(228144480444690537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18167914775317216)
,p_event_id=>wwv_flow_imp.id(18167805557317215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P62_MACHINE_ID'',_.machines.MACHINE_ID);',
'$s(''P62_MACHINE_DESCRIPTION'',_.machines.MACHINE_NAME);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18168024823317217)
,p_name=>'DAMachineID'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_MACHINE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18168145965317218)
,p_event_id=>wwv_flow_imp.id(18168024823317217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(228144480444690537)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28168657201971611)
,p_name=>'DADialogClosed'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(228144480444690537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28168748210971612)
,p_event_id=>wwv_flow_imp.id(28168657201971611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("radschedule").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28171301710971638)
,p_name=>'DAExitLegend'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28171272390971637)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28171477800971639)
,p_event_id=>wwv_flow_imp.id(28171301710971638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62636442984912407)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34869161409221021)
,p_name=>'createSlot'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'createSlot'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34869533550221025)
,p_event_id=>wwv_flow_imp.id(34869161409221021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = ''f?p=115:81:'' + apex.item(''pInstance'').getValue() + '':::1:P81_SINGLE_SLOT_MACHINE:'' + apex.item(''P62_MACHINE_ID'').getValue();',
'//var url = ''f?p=''+application+'':''+page+'':''+apex.item(''pInstance'').getValue()+'':::1'';',
'apex.server.process("createSlotProcess", {',
'    x01: url',
'},',
'    {',
'        success: function (pData) {',
'            if (pData.success === true) {',
'                apex.navigation.redirect(pData.url);',
'            } else {',
'                console.log("FALSE");',
'            }',
'        },',
'        error: function (request, status, error) {',
'            console.log("status---" + status + " error----" + error);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34871109679221041)
,p_name=>'New_1'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_REFRESH_SCHEDULE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34871269083221042)
,p_event_id=>wwv_flow_imp.id(34871109679221041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'change'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34869830641221028)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'createSlotProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RESULT  VARCHAR2(32767);',
'  L_APP     NUMBER := V(''APP_ID'');',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  L_RESULT := APEX_UTIL.PREPARE_URL(APEX_APPLICATION.G_X01);',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''success'', TRUE);',
'  APEX_JSON.WRITE(''url'', L_RESULT);',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''success'', FALSE);',
'    APEX_JSON.WRITE(''message'', SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>34869830641221028
);
wwv_flow_imp.component_end;
end;
/

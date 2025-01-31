prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_name=>'test'
,p_alias=>'TEST1'
,p_step_title=>'test'
,p_error_handling_function=>'RADIATION.ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#apps/js/moment.min.js',
'#WORKSPACE_FILES#apps/js/global.v1.0.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function fwdbtn(p1) {',
'    document.getElementById("BTN_FORWARD").click();',
'};',
'',
'function openReport(p1) {',
'    apex.message.alert(p1);',
'}',
'',
'',
'function getObjectDef(pObjectCode, pCallingObjectCode) {',
'    return apex.server.process(''GET_OBJECT_DEFINITION'', { x01: pObjectCode, x02: pCallingObjectCode },',
'        {',
'            dataType: "text"',
'        }',
'    );',
'};',
'function addParamters(objectDef) {',
'    let itemList = [], valueList = [];',
'    for (let i of objectDef.PARAMLIST_DEF) {',
'        //paramList',
'        if ($v(i.FRONTEND_SOURCE)) {',
'            itemList.push(i.PARAM_NAME);',
'            valueList.push($v(i.FRONTEND_SOURCE));',
'        }',
'    }',
'    objectDef.itemList = itemList;',
'    objectDef.valueList = valueList;',
'    return objectDef;',
'};',
'',
'function generateURL(objectDef) {',
'    let itemList, itemValue;',
'    itemList = objectDef.itemList.join('','');',
'    itemValue = objectDef.valueList.join('','');',
'    return apex.server.process(''GEN_URL'', { x01: objectDef.APP_ID, x02: objectDef.PAGE_ID, x03: itemList, x04: itemValue },',
'        {',
'            dataType: "text"',
'        }',
'    );',
'};',
'',
'function getResponseObject(jDataStr) {',
'    try { return JSON.parse(JSON.parse(jDataStr).data); }',
'    catch (e) {',
'        apex.message.alert(jDataStr);',
'    }',
'};',
'',
'',
'function setDateValue(itemName, dateValue = new Date(Date.now()), addMonths) {',
'    let a = dateValue;',
'    if (addMonths) a.setMonth(a.getMonth() + addMonths);',
'    document.getElementById(itemName).valueAsDate = new Date(Date.UTC(a.getFullYear(), a.getMonth(), a.getDate()));',
'}',
'',
'function getDateValue(itemName) {',
'    return document.getElementById(itemName).valueAsDate;',
'}',
'////////////////////////////////////////////////////////////////////',
'// main funciton',
'function appObject(objectCode, callingObjectCode) {',
'    let objectdef = {}, url = {}, redirect;',
'    let p = getObjectDef(objectCode, callingObjectCode);',
'    p.then((obj) => {',
'        objectdef = JSON.parse(obj.data);',
'        if (objectdef.OBJECT_CODE) {',
'            objectdef = addParamters(objectdef);',
'            let u = generateURL(objectdef);',
'            u.then((obj) => {',
'                url = obj.url;',
'                redirect = () => {',
'                    apex.navigation.redirect(url);',
'                };',
'                redirect();',
'                ',
'',
'            });',
'        }',
'        else',
'            apex.message.alert(''Unable to find Apex object code for '' + objectCode);',
'    });',
'};',
'async function getObjectDef(pObjectCode, pCallingObjectCode) {',
'    return apex.server.process(''GET_OBJECT_DEFINITION'', { x01: pObjectCode, x02: pCallingObjectCode },',
'        {',
'            dataType: "json"',
'        }',
'    );',
'}',
'async function generateURL(objectDef) {',
'    let itemList, itemValue;',
'    itemList = Array.isArray(objectDef.itemList) ? objectDef.itemList.join('','') : "";',
'    itemValue = Array.isArray(objectDef.valueList) ? objectDef.valueList.join('','') : "";',
'    let jDataStr = await apex.server.process(''GEN_URL'', { x01: objectDef.APP_ID, x02: objectDef.PAGE_ID, x03: itemList, x04: itemValue },',
'        {',
'            dataType: "text"',
'        }',
'    );//getApiResponse(''GET'', url, param);',
'    return getResponseObject(jDataStr);',
'};',
'function addParamters(objectDef) {',
'    let itemList = [], valueList = []',
'    if (Array.isArray(objectDef.PARAMLIST_DEF)) {',
'        for (let i of objectDef.PARAMLIST_DEF) {',
'            // paramList',
'            if ($v(i.FRONTEND_SOURCE)) {',
'                itemList.push(i.PARAM_NAME)',
'                valueList.push($v(i.FRONTEND_SOURCE))',
'            }',
'        }',
'    }',
'    objectDef.itemList = itemList',
'    objectDef.valueList = valueList',
'    return objectDef',
'};',
'',
'',
'function refreshGridPosition(id) {',
'    let model = apex.region(id).call("getCurrentView");',
'    let rec = model.getSelectedRecords()[0];',
'    apex.region(id).refresh();',
'    waitUntil(() => { model.setSelectedRecords([rec], true); refreshGrid(id); }, model.model);',
'    // setTimeout(() => {',
'    //     model.setSelectedRecords([rec], true);',
'    //     refreshGrid(id);',
'    // }, 1500);',
'}',
'',
'function waitUntil(f, m, n = 0) {',
'    if (m.getTotalRecords() < 1 && n < 10)',
'        setTimeout(() => waitUntil(f, m, ++n), 500);',
'    f();',
'}',
'/////////////////////////////////////////////////////////////////////',
'',
'function highlight_ig_cells() {',
'    // for each cell in marked column',
'    $(''.highlight td.LEGEND_DISPLAY_column'').each(function() {',
'    // get cell text',
'    cellData = $(this).text();',
'    // rules for coloring',
'    if (cellData == ''i'')       ',
'        this.style.backgroundColor = "#80ff00",',
'        this.style.color = "#80ff00";',
'        ',
'    else if (cellData == ''a'')',
'        this.style.backgroundColor = ''#4080ff'',',
'        this.style.color = "#4080ff";',
'    })',
'};'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fcc-btn {',
'  background-color: #199319;',
'  color: white;',
'  padding: 15px 25px;',
'  text-decoration: none;',
'}',
'.white-bold>a {',
'  font-weight: bold;',
'  color: white;',
'}',
'',
'.c-spacing {',
'  margin: 1px 1px 1px 1px;',
'  margin-top: 5px;',
'}',
'',
'.t-ert {',
'  background-color: blueviolet;',
'}'))
,p_step_template=>wwv_flow_imp.id(14468116913908215)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20230828144615'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228143550216690528)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>36
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(516250098588079666)
,p_plug_name=>'Radiotherapy Appointment(s)'
,p_region_name=>'RADQUEUEG1'
,p_parent_plug_id=>wwv_flow_imp.id(228143550216690528)
,p_region_css_classes=>'highlight'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT /*RM.MRNO*/ null MRNO,',
'             /*HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO)*/ null PNAME,',
'             /*RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RD.SITE_ID)*/ null SITE,',
'             /*HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID)*/ null DISP_DOCTOR,',
'             /*TO_CHAR(RS.VISIT_DATE,''DD-MON-YY HH24:MI'')*/ null APPOINTMENT_DATE,',
'             /*RS.FRACTION_ID*/ null FRACTION_ID,',
'             /*RS.OC_SERIAL_NO*/ null OC_SERIAL_NO,',
'             NULL REMAINING_FRACTION,',
'             /*RS.RADIATION_NO*/ null RADIATION_NO,',
'             /*RS.SITE_ID*/ null SITE_ID,',
'             /*HIS.PKG_PATIENT.IS_PATIENT_ADMITTED(RM.MRNO)*/  null IS_PATIENT_ADMITTED,',
'             /*''P''*/ null TREATEMENT_TYPE,',
'             /*RS.MACHINE_ID*/ null MACHINE_ID,',
'             RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                               P_SITE_ID      => RS.SITE_ID,',
'                                                               P_FRACTION_ID  => RS.FRACTION_ID) TOTAL_FRACTION,',
'             NULL ERROR_REASON,',
'             NVL((SELECT ''Y''',
'                   FROM ORDERENTRY.PERFORMANCE_Q Q',
'                  WHERE Q.APPT_SR_NO = RS.SR_NO',
'                    AND Q.RADIATION_NO IS NOT NULL),',
'                 ''N'') ANAESTHESIA_REQUIRED,',
'             NVL(SW.REMARKS, RS.REMARKS) REMARKS,',
'             RS.SR_NO,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => RD.PHYSICIST) AS PHYSICIST_NAME,',
'             RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                             P_SITE_ID      => RD.SITE_ID,',
'                                                             P_WFE_NO       => RD.WFE_NO) AS REQUEST_STATUS,',
'             CASE',
'               WHEN SW.EVENT_ID IS NOT NULL THEN',
'                NVL(QE.SHORT_DESC,',
'                    RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(P_EVENT_ID => SW.EVENT_ID))',
'               ELSE',
'                NULL',
'             END AS APPOINTMENT_STATUS,',
'             DSW.SCHEMA_ID,',
'             DSW.WORKFLOW_TYPE_ID,',
'             DSW.WORK_FLOW_ID,',
'             SW.EVENT_ID,',
'             RADIATION.PKG_WORKFLOW.GET_EVENT_ORDERBY(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                      P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                      P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                      P_EVENT_ID         => SW.EVENT_ID) ORDER_BY,',
'             RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                      P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                      P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID,',
'                                                      P_EVENT_ID         => SW.EVENT_ID) NEXT_EVENT_ID,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => SW.ENTERED_BY) ENTERED_BY,',
'             SW.ENTERED_DATE,',
'             NVL(QE.PERFORMABLE, ''Y''),',
'             QE.BG_COLOUR,',
'             RS.TIMEOUT_SRNO',
'        FROM RADIATION.MACHINES              M,',
'             RADIATION.SCHEDULE              RS,',
'             RADIATION.SCHEDULE_WORKFLOW     SW,',
'             RADIATION.RADIATION_MASTER      RM,',
'             RADIATION.RADIATION_DETAIL      RD,',
'             RADIATION.DEF_QUEUE_EVENTS      QE,',
'             RADIATION.DEF_SCHEDULE_WORKFLOW DSW',
'       WHERE M.MACHINE_ID = :P39_QUEUE_ID',
'         AND RS.MACHINE_ID = M.MACHINE_ID',
'         AND RS.SR_NO = SW.SR_NO(+)',
'         AND RS.WFE_NO = SW.WFE_NO(+)',
'         AND RS.RADIATION_NO = RM.RADIATION_NO',
'         AND RD.RADIATION_NO = RM.RADIATION_NO',
'         AND RD.SITE_ID = RS.SITE_ID',
'         AND QE.QUEUE_ID = :P39_GROUP',
'         AND QE.PERFORMANCE_TYPE_ID = M.PERFORMANCE_TYPE_ID',
'         AND NVL(SW.EVENT_ID,',
'                 RADIATION.Pkg_Workflow.GET_INITIAL_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                             P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                             P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID)) =',
'             QE.EVENT_ID',
'         AND DSW.ORGANIZATION_ID = M.ORGANIZATION_ID',
'         AND DSW.LOCATION_ID = M.LOCATION_ID',
'         AND DSW.PLANNING_ID = RD.PLANNING_ID',
'         AND DSW.PERFORMANCE_TYPE_ID = M.PERFORMANCE_TYPE_ID',
'         AND DSW.ACTIVE = ''Y''',
'         AND QE.ACTIVE = ''Y''',
'         AND EXISTS',
'       (SELECT 1',
'                FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'               WHERE T.MACHINE_ID = M.MACHINE_ID)',
'         AND ( 0 = 0 OR RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                                            P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                                            P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID,',
'                                                                            P_EVENT_ID         => SW.EVENT_ID) =',
'             :P39_EVENT_ID)',
'         AND (:P39_MRNO IS NOT NULL OR RM.MRNO LIKE ''%'' || :P39_MRNO)',
'         AND (:P39_PHYSIST_MRNO IS NULL OR RD.PHYSICIST = :P39_PHYSIST_MRNO)',
'         AND (:P39_DOCTOR_ID IS NULL OR RM.DOCTOR_ID = :P39_DOCTOR_ID)',
'         AND (TO_DATE(RS.VISIT_DATE,''DD-MM-YYYY'') BETWEEN TO_DATE(:P39_FROM_DATE, ''DD-MM-YYYY'') AND',
'             TO_DATE(:P39_TO_DATE, ''DD-MM-YYYY'') OR',
'             (TO_DATE(RS.VISIT_DATE,''DD-MM-YYYY'') BETWEEN TO_DATE((:P39_FROM_DATE - 7),''DD-MM-YYYY'') AND TO_DATE(:P39_FROM_DATE,''DD-MM-YYYY'') AND',
'             NOT EXISTS (SELECT 1',
'                            FROM RADIATION.SCHEDULE_WORKFLOW S',
'                           WHERE S.SR_NO = RS.SR_NO',
'                             AND S.EVENT_ID = 408)))',
'     '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P39_MACHINE_ID,P39_QUEUE_ID,P39_MRNO,P39_PHYSIST_MRNO,P39_DOCTOR_ID,P39_TO_DATE,P39_FROM_DATE,P39_GROUP'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Appointment(s)'
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
 p_id=>wwv_flow_imp.id(516251347132079678)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'MRNO'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(516251416124079679)
,p_name=>'PNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Patient Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(516251500364079680)
,p_name=>'SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Treatment Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(516251663480079681)
,p_name=>'DISP_DOCTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_DOCTOR'
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
 p_id=>wwv_flow_imp.id(516251753970079682)
,p_name=>'APPOINTMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Appointment Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(516251810933079683)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Fraction Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(516251963992079684)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
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
 p_id=>wwv_flow_imp.id(516252054102079685)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
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
 p_id=>wwv_flow_imp.id(516252119026079686)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(516252261625079687)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(516252401610079689)
,p_name=>'TREATEMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATEMENT_TYPE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(516252536867079690)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
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
 p_id=>wwv_flow_imp.id(516252673180079691)
,p_name=>'TOTAL_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_FRACTION'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(516252733928079692)
,p_name=>'ERROR_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_REASON'
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
 p_id=>wwv_flow_imp.id(517114338108724143)
,p_name=>'ANAESTHESIA_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANAESTHESIA_REQUIRED'
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
 p_id=>wwv_flow_imp.id(517114447478724144)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Appointment Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(517114547014724145)
,p_name=>'SR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SR_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517114669072724146)
,p_name=>'PHYSICIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHYSICIST_NAME'
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
 p_id=>wwv_flow_imp.id(517114865860724148)
,p_name=>'APPOINTMENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Appointment Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(517114920802724149)
,p_name=>'SCHEMA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEMA_ID'
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
 p_id=>wwv_flow_imp.id(517114995369724150)
,p_name=>'WORKFLOW_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517115087731724151)
,p_name=>'WORK_FLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_FLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517115195062724152)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(517115313494724153)
,p_name=>'ORDER_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517115448800724154)
,p_name=>'NEXT_EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_EVENT_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(517115495843724155)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517115723127724157)
,p_name=>'NVL(QE.PERFORMABLE,''Y'')'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NVL(QE.PERFORMABLE,''Y'')'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517115783951724158)
,p_name=>'BG_COLOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_COLOUR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517115916514724159)
,p_name=>'TIMEOUT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMEOUT_SRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517116020075724160)
,p_name=>'ENTERED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(517118248654724182)
,p_name=>'REQUEST_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Request Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'c-spacing'
,p_link_target=>'&REPORT_URL.'
,p_link_text=>'&REQUEST_STATUS.'
,p_link_attributes=>' class="t-Button t-Button--primary t-Button--gapLeft  w80";'
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
,p_escape_on_http_output=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(560555700266814988)
,p_name=>'IS_PATIENT_ADMITTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PATIENT_ADMITTED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Is Patient Admitted'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(516250214320079667)
,p_internal_uid=>516250214320079667
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(517123121923724580)
,p_interactive_grid_id=>wwv_flow_imp.id(516250214320079667)
,p_static_id=>'2289489'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(517123301427724580)
,p_report_id=>wwv_flow_imp.id(517123121923724580)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517123835656724585)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(516251347132079678)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517124780510724589)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(516251416124079679)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>293.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517125636306724594)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(516251500364079680)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>251.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517126497332724596)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(516251663480079681)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517127425591724599)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(516251753970079682)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>201.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517128321597724602)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(516251810933079683)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517129235874724607)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(516251963992079684)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517130169354724609)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(516252054102079685)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517131020803724612)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(516252119026079686)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517131919067724614)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(516252261625079687)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517133699160724626)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(516252401610079689)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517134593553724630)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(516252536867079690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517135516350724633)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(516252673180079691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517136392572724635)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(516252733928079692)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517137323519724638)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(517114338108724143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517138199185724640)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(517114447478724144)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>324
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517139153474724642)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(517114547014724145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517139997609724645)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(517114669072724146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517141790109724650)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(517114865860724148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>253.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517142765820724652)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(517114920802724149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517143646397724654)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(517114995369724150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517144568543724656)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(517115087731724151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517145385605724659)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(517115195062724152)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517146326877724662)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(517115313494724153)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517147276609724664)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(517115448800724154)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517148152704724668)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(517115495843724155)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517149804380724672)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(517115723127724157)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517150779913724675)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(517115783951724158)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517151655808724677)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(517115916514724159)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(517267648686798475)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(517116020075724160)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(556979179307672376)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(517118248654724182)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(574592313306943610)
,p_view_id=>wwv_flow_imp.id(517123301427724580)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(560555700266814988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(516315222945462044)
,p_plug_name=>'Radiation Alerts '
,p_parent_plug_id=>wwv_flow_imp.id(516250098588079666)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14489219574908225)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RESULT CLOB;',
'BEGIN',
'  FOR REC IN (SELECT ''<div class="t-Alert t-Alert--horizontal t-Alert--defaultIcons t-Alert--removeHeading js-removeLandmark t-Alert--'' || CASE',
'                        WHEN ALERT_TYPE = ''E'' THEN',
'                         ''danger''',
'                        WHEN ALERT_TYPE = ''W'' THEN',
'                         ''warning''',
'                        ELSE',
'                         ''info''',
'                      END || ''" id="'' || RADIATION_NO || ''-'' || SITE_ID || ''-'' ||',
'                      ALERT_SRNO || ''" role="region" aria-label="Alert Region">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon padding-sm">',
'      <span class="t-Icon " aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content padding-sm">',
'      <div class="t-Alert-body"><span>'' || ALERT_TEXT ||',
'                      ''</span>',
'    <div class="u-pullRight">',
'      ',
'    '' || CASE',
'                        WHEN DISMISS_ALLOWED = ''Y'' THEN',
'                         ''<button type="button" class="t-Button" onclick=dimissAlert('' ||',
'                         RADIATION_NO || '','' || SITE_ID || '','' || ALERT_SRNO ||',
'                         '')>Dismiss</button>''',
'                        ELSE',
'                         NULL',
'                      END ||',
'                      ''<button type="button" class="t-Button" onclick=ackAlert('' ||',
'                      RADIATION_NO || '','' || SITE_ID || '','' || ALERT_SRNO ||',
'                      '')>Acknowledge</button>',
'    </div>',
'    </div>',
'    </div>',
'  </div>',
'</div>'' html',
'                FROM (SELECT RADIATION_NO,',
'                             SITE_ID,',
'                             ALERT_SRNO,',
'                             RA.ALERT_ID,',
'                             RA.ALERT_TEXT ALERT_TEXT,',
'                             A.ALERT_TYPE,',
'                             RA.STATUS_ID,',
'                             NULL SIGN_BY,',
'                             SIGN_DATE,',
'                             CASE',
'                               WHEN A.ALERT_TYPE = ''E'' THEN',
'                                1',
'                               WHEN A.ALERT_TYPE = ''W'' THEN',
'                                2',
'                               WHEN A.ALERT_TYPE = ''I'' THEN',
'                                3',
'                               ELSE',
'                                4',
'                             END PRIORITY,',
'                             A.DISMISS_ALLOWED,',
'                             CASE',
'                               WHEN A.ALERT_TYPE = ''E'' THEN',
'                                ''N''',
'                               ELSE',
'                                ''Y''',
'                             END ACKNOWLEDGE',
'                        FROM RADIATION.RAD_ALERTS RA, RADIATION.DEF_ALERTS A',
'                       WHERE RA.ALERT_ID = A.ALERT_ID',
'                         AND RA.RADIATION_NO = ''SKM001200000231''--:P0_RADIATION_NO',
'                         AND RA.STATUS_ID = ''020'')',
'               ORDER BY 1, PRIORITY) LOOP',
'    L_RESULT := L_RESULT || REC.HTML;',
'  END LOOP;',
'  RETURN L_RESULT;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P0_RADIATION_NO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(516315840923462050)
,p_name=>'Queue'
,p_parent_plug_id=>wwv_flow_imp.id(228143550216690528)
,p_template=>wwv_flow_imp.id(14489219574908225)
,p_display_sequence=>10
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_grid_column_span=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.MACHINE_ID,',
'       NULL           LINK_CLASS,',
'       NULL           ICON_CLASS,',
'       NULL           LINK_ATTR,',
'       NULL           ICON_COLOR_CLASS,',
'       MC.DESCRIPTION LIST_TITLE,',
'       NULL           LIST_BADGE,',
'       MC.DESCRIPTION MACHINE_NAME,',
'       NULL           LIST_TEXT',
'  FROM RADIATION.MACHINES MC',
' WHERE ACTIVE = ''Y''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'   AND MC.PERFORMANCE_TYPE_ID IN',
'       (SELECT QP.PERFORMANCE_TYPE_ID',
'          FROM RADIATION.DEF_QUEUE_PERFORMANCE QP',
'         WHERE QP.QUEUE_ID = :P39_GROUP',
'           AND QP.ACTIVE = ''Y'')',
' ORDER BY MC.MACHINE_TYPE, MC.DESCRIPTION',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P39_GROUP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14565413660908263)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288200752569771636)
,p_query_column_id=>1
,p_column_alias=>'MACHINE_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288197926047771635)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>30
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288198354887771635)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288198717289771636)
,p_query_column_id=>4
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>50
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288199117871771636)
,p_query_column_id=>5
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>60
,p_column_heading=>'Icon Color Class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288199588864771636)
,p_query_column_id=>6
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>70
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288199983324771636)
,p_query_column_id=>7
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>80
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288200329927771636)
,p_query_column_id=>8
,p_column_alias=>'MACHINE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Queue'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288197522879771635)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>90
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(516250347067079668)
,p_plug_name=>'Radiation Queue Filter '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(517116560878724165)
,p_name=>'Image'
,p_template=>wwv_flow_imp.id(14489219574908225)
,p_display_sequence=>26
,p_region_css_classes=>'u-pullRight'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P0_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'         /*#image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } */',
'',
'        /* #image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'        #image img {',
'                display: inline-block;',
'                width: 100px;',
'                height: 100px;',
'                object-fit: cover;',
'                border: 1px solid #D8D4D4;',
'        }',
'',
'        #image img:hover {',
'                box-shadow: 0 0 1px 1px rgba(0, 140, 186, 0.5);',
'        }',
'',
'        #FILE_BLOB {',
'                padding: 0;',
'        }',
'',
'        #report_table_image>tbody>tr>td {',
'                padding: 0;',
'        }',
'</style>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_MRNO'
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
 p_id=>wwv_flow_imp.id(288174825762771558)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288175286869771563)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288175699156771563)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:ROWID::::::::PICTURES'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288192475159771628)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_button_name=>'Populate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Populate'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288190277843771616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(516250098588079666)
,p_button_name=>'Forward'
,p_button_static_id=>'btnforward'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forward'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288189862603771614)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(516250098588079666)
,p_button_name=>'SendBack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Back '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(288190625092771616)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(516250098588079666)
,p_button_name=>'History'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'History'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=112:36:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288191092335771617)
,p_name=>'P39_PATIENT_INFO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'no-padding padding-none'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML_UNSAFE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288192852575771628)
,p_name=>'P39_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_prompt=>'Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT DQ.DESCRIPTION, DQ.QUEUE_ID',
'        FROM RADIATION.DEF_QUEUE DQ',
'       WHERE DQ.ACTIVE = ''Y''',
'         AND EXISTS',
'       (SELECT 1',
'                FROM SECURITY.LISTOFVALUES L',
'               WHERE EXISTS (SELECT 1',
'                        FROM SECURITY.MEMBER M',
'                       WHERE M.USERID =',
'                             NVL(:GV_USER_ID,',
'                                 SYS_CONTEXT(''GLOBAL_CONTEXT'', ''USERID''))',
'                         AND L.GROUPID = M.GROUPID)',
'                 AND L.LOVNAME = ''RADIATION_QUEUE''',
'                 AND L.VALUE = DQ.QUEUE_ID)',
'       ORDER BY 2',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288193225012771629)
,p_name=>'P39_DOCTOR_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_prompt=>'Doctor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.NAME FULL_NAME, DD.DOCTOR_ID',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID =',
'               SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'           AND L.LOCATION_ID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''LOCATION_ID''))',
' ORDER BY DOCTOR_ID',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288193656681771630)
,p_name=>'P39_PHYSIST_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_prompt=>'Physicist'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME, P.PHYSICIST_MRNO EMPLOYEE_CODE',
'  FROM RADIATION.PHYSICISTS P, HRD.VU_INFORMATION I',
' WHERE P.PHYSICIST_MRNO = I.MRNO',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288194089374771630)
,p_name=>'P39_FROM_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288194435815771631)
,p_name=>'P39_TO_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288194848955771633)
,p_name=>'P39_EVENT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288195245870771633)
,p_name=>'P39_MRNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288195671002771633)
,p_name=>'P39_MACHINE_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288196064852771634)
,p_name=>'P39_ORDER_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288196498656771634)
,p_name=>'P39_PERIOD_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_prompt=>'Period Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Today;T,Future;F,Manual;M'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288196839371771634)
,p_name=>'P39_QUEUE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(516250347067079668)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288201160903771637)
,p_name=>'P39_TEMPLATE_ID'
,p_item_sequence=>46
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(288201618745771639)
,p_computation_sequence=>10
,p_computation_item=>'P39_PATIENT_INFO'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  DAT VARCHAR2(4000) := NVL(:RADIATION_QUEUE_DEFAULTS,''!!!!!'');',
'  FDATE VARCHAR2(10) := TO_CHAR(SYSDATE, ''DD-MM-YYYY'');',
'  TDATE VARCHAR2(10) := TO_CHAR(ADD_MONTHS(SYSDATE, 12), ''DD-MM-YYYY'');',
'  FUNCTION GET_VAL(STR IN VARCHAR2, I IN NUMBER) RETURN VARCHAR2 IS',
'    s number;',
'    e number;',
'  begin',
'    s := INSTR(STR, ''!'', 1, i) + 1;',
'    e := INSTR(STR, ''!'', 1, i + 1) - s;',
'    RETURN SUBSTR(STR, s, e);',
'  end;',
'BEGIN',
'  :P0_QUEUE_ID     := NVL(GET_VAL(DAT, 1), ''016'');',
'  :P39_DOCTOR_ID   := GET_VAL(DAT, 2);',
'  :P39_PERIOD_TYPE := NVL(GET_VAL(DAT, 3), ''F'');',
'  :P39_FROM_DATE   := NVL(GET_VAL(DAT, 4), FDATE);',
'  :P39_TO_DATE := NVL(GET_VAL(DAT, 5),',
'                      CASE',
'                        WHEN :P39_PERIOD_TYPE = ''F'' THEN',
'                         TDATE',
'                        ELSE',
'                         FDATE',
'                      END);',
'  RETURN :P39_QUEUE_ID;',
'END;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288205755122771654)
,p_name=>'RefreshRadiationQueue'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288192475159771628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288206220935771655)
,p_event_id=>wwv_flow_imp.id(288205755122771654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(516250098588079666)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288206684295771655)
,p_name=>' PreserveValues'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288207167360771655)
,p_event_id=>wwv_flow_imp.id(288206684295771655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  S VARCHAR2(1) := ''!'';',
'BEGIN',
'  :RADIATION_QUEUE_DEFAULTS := S || :P39_QUEUE_ID || S || :P39_DOCTOR_ID || S ||',
'                               :P39_PERIOD_TYPE || S || :P39_FROM_DATE || S ||',
'                               :P39_TO_DATE || S;',
'END;',
''))
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288207521895771655)
,p_name=>'SetPeriodValue'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_PERIOD_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288208086164771655)
,p_event_id=>wwv_flow_imp.id(288207521895771655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FROM_DATE,P39_TO_DATE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P39_PERIOD_TYPE'
,p_client_condition_expression=>'M'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288208550149771656)
,p_event_id=>wwv_flow_imp.id(288207521895771655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P39_FROM_DATE,P39_TO_DATE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P39_PERIOD_TYPE'
,p_client_condition_expression=>'M'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288209005515771656)
,p_event_id=>wwv_flow_imp.id(288207521895771655)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF (:P39_PERIOD_TYPE = ''T'') THEN',
'    :P39_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P39_TO_DATE   := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'  ELSIF (:P39_PERIOD_TYPE = ''F'') THEN',
'    :P39_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P39_TO_DATE   := TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE), 12), ''DD-MM-YYYY'');',
'  ELSIF (:P39_PERIOD_TYPE = ''M'') THEN',
'    :P39_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P39_TO_DATE   := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P39_PERIOD_TYPE'
,p_attribute_03=>'P39_FROM_DATE,P39_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288209514787771656)
,p_event_id=>wwv_flow_imp.id(288207521895771655)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gridView = apex.region("RADQUEUEG1").call("getViews").grid;',
'',
'if ($v("P39_PERIOD_TYPE") === "T") {',
'    gridView.view$.grid("hideColumn", "APPOINTMENT_DATE");',
'}',
'else {',
'    gridView.view$.grid("showColumn", "APPOINTMENT_DATE");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288209984030771656)
,p_name=>'SetPatientDetails'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(516250098588079666)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288210486352771659)
,p_event_id=>wwv_flow_imp.id(288209984030771656)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P0_MRNO", _.RADQUEUEG1.MRNO);',
'$s("P0_RADIATION_NO", _.RADQUEUEG1.RADIATION_NO);',
'$s("P0_MRNO", _.RADQUEUEG1.MRNO);',
'',
'let ht = `',
'<ol id="PAT-INFO" style="list-style-type: none;">',
'  <li><label style="font-weight: bold;">Patient Name: </label>&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.PATIENT_NAME + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Mrno: </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.MRNO + `</span></li>',
'  <li><label style="font-weight: bold;">Radiation No: </label>&nbsp;<span>`+ _.RADQUEUEG1.RADIATION_NO + `</span></li>',
'  <li><label style="font-weight: bold;">Order No: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ORDER_NO + `</span></li>',
'  <li><label style="font-weight: bold;">Invoice No: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.INVOICE_NO + `</span></li>',
'</ol>`;',
'$s(''P39_PATIENT_INFO'', ht.replaceAll(''undefined'', '''',));',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288204833679771654)
,p_name=>'Forward'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288190277843771616)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288205363925771654)
,p_event_id=>wwv_flow_imp.id(288204833679771654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//variable declaration',
'//refreshGrid(''RADQUEUEG1'');',
'',
'if (!_.RADQUEUEG1.MRNO)',
'    apex.message.alert("Please select a Patient!");',
'try {',
'    let r_rec = _.RADQUEUEG1;',
'    $s("P0_RADIATION_NO", r_rec.RADIATION_NO);',
'    $s(''P39_MRNO'', _.RADQUEUEG1.MRNO);',
'    r_rec.QUEUE_ID = $v("P39_QUEUE_ID");',
'    r_rec.FORWARD_REMARKS = '''';',
'    let response_obj;',
'    if (r_rec.NEXT_EVENT_ID == null) {',
'        throw ''There is no further event, cannot proceed.'';',
'    }',
'    // calling ajax call back',
'    apex.server.process(''VALIDATE_EVENT'', {',
'        x01: r_rec.QUEUE_ID,',
'        x02: r_rec.PERFORMANCE_TYPE_ID,',
'        x03: r_rec.RADIATION,',
'        x04: r_rec.SCHEMA_ID,',
'        x05: r_rec.PURCHASE_TYPE_ID,',
'        x06: r_rec.WORK_FLOW_ID,',
'        x07: r_rec.NEXT_EVENT_ID',
'    },',
'        {',
'            success: function (p_data) {',
'                response_obj = JSON.parse(p_data);',
'                if (response_obj.stop !== ''Y'') {',
'                    $s(''P39_TEMPLATE_ID'', response_obj.template_id);',
'                    forward1(r_rec, response_obj);',
'                } else {',
'                    apex.message.alert(response_obj.alert_text);',
'                }',
'            },',
'            dataType: "text"',
'        }',
'    );',
'}',
'catch (err) {',
'    apex.message.alert(err);',
'}',
'///////////////////////////////////////////////////',
'//             function forward1                //',
'//////////////////////////////////////////////////',
'function forward1(r_rec, response_obj) {',
'    let perform_again = false;',
'    //console.log(response_obj);',
'    try {',
'        if (response_obj.already_performed === ''Y'') {',
'            apex.message.confirm("Next event is already performed, Do you want to perform again?", function (okPressed) {',
'                if (okPressed) {',
'                    perform_again = true;',
'                    console.log(response_obj);',
'                    $(document).on(''trgChngEvnt'', r_rec, () => { change_event(r_rec); });',
'                    let obj = appObject(response_obj.object_code, ''S22APX00035'');',
'                }',
'                else {',
'                    perform_again = false;',
'                    change_event(r_rec);',
'                }',
'            });',
'        }',
'        else {',
'            if (response_obj.object_code) {',
'                //open object',
'                $(document).on(''trgChngEvnt'', r_rec, () => { change_event(r_rec, ''Y''); });',
'                let obj = appObject(response_obj.object_code, ''S22APX00035'');',
'            }',
'            else {',
'                //no need to open object',
'                change_event(r_rec);',
'            }',
'        }',
'    }',
'    catch (err) {',
'        throw err;',
'    }',
'}//forward1',
'///////////////////////////////////////////////////',
'//          function change_event                //',
'//////////////////////////////////////////////////',
'function change_event(r_rec, ifPerformed = ''N'') {',
'    // calling ajax call back',
'    apex.server.process(''CHANGE_EVENT'', {',
'        x01: r_rec.QUEUE_ID,',
'        x02: r_rec.PERFORMANCE_TYPE_ID,',
'        x03: r_rec.RADIATION_NO,',
'        x04: r_rec.NEXT_EVENT_ID,',
'        x05: r_rec.FORWARD_REMARKS,',
'        x06: ifPerformed',
'    },',
'        {',
'            success: function (p_data) {',
'                response_obj1 = JSON.parse(p_data);',
'                if (response_obj1.stop != ''Y'') {',
'                    apex.message.alert(''Appointment forwarded to next event successfully'');',
'                    refreshGridPosition("RADQUEUEG1");',
'                } else {',
'                    apex.message.alert(response_obj1.alert_text);',
'                }',
'            },',
'            dataType: "text"',
'        }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288203013292771647)
,p_name=>'SendBack'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288189862603771614)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288203566318771649)
,p_event_id=>wwv_flow_imp.id(288203013292771647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//variable declaration',
'try {',
'    let r_rec = _.RADQUEUEG1;',
'    r_rec.QUEUE_ID = $v("P39_QUEUE_ID");',
'    r_rec.FORWARD_REMARKS = '''';',
'    let r_obj;',
'',
'    if (!r_rec.EVENT_ID) {',
'        throw ''There is no previous event, cannot proceed.'';',
'    }',
'    // calling ajax call back',
'    apex.server.process(''ValidateEventBack'', {',
'        x01: r_rec.QUEUE_ID,',
'        x02: r_rec.PERFORMANCE_TYPE_ID,',
'        x03: r_rec.RADIATION_NO,',
'        x04: r_rec.SCHEMA_ID,',
'        x05: r_rec.PURCHASE_TYPE_ID,',
'        x06: r_rec.WORK_FLOW_ID,',
'        x07: r_rec.EVENT_ID',
'    },',
'        {',
'            success: function (p_data) {',
'                r_obj = JSON.parse(p_data);',
'                if (r_obj.stop != ''Y'') {',
'                    change_event(r_rec);',
'                } else {',
'                    apex.message.alert(r_obj.alert_text);',
'                }',
'            },',
'            dataType: "text"',
'        }',
'    );',
'}',
'catch (err) {',
'    apex.message.alert(err);',
'}',
'///////////////////////////////////////////////////',
'//          function change_event                //',
'//////////////////////////////////////////////////',
'function change_event(r_rec) {',
'    // calling ajax call back',
'    apex.server.process(''UNDO_EVENT'', {',
'        x01: r_rec.RADIATION_NO,',
'        x02: r_rec.EVENT_ID',
'    },',
'        {',
'            success: function (p_data) {',
'                r_obj1 = JSON.parse(p_data);',
'                if (r_obj1.stop != ''Y'') {',
'                    apex.message.alert(''Appointment send back successfully'');',
'                    refreshGridPosition("ValidateEventBack")',
'                } else {',
'                    apex.message.alert(r_obj1.alert_text);',
'                }',
'            },',
'            dataType: "text"',
'        }',
'    );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288203962950771649)
,p_name=>'RefreshQueue'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_GROUP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288204473681771653)
,p_event_id=>wwv_flow_imp.id(288203962950771649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(516315840923462050)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288191458018771621)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(516250098588079666)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiotherapy Appointment(s) - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>288191458018771621
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288201958154771643)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ValidateEvent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT          VARCHAR2(4000);',
'  L_STOP                CHAR(1) := ''N'';',
'  L_OBJECT_CODE         DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE;',
'  L_QUEUE_ID            RADIATION.DEF_QUEUE.QUEUE_ID%TYPE := APEX_APPLICATION.G_x01;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_QUEUE_EVENT_ALERTS.PERFORMANCE_TYPE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_RADIATION_NO        RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE := APEX_APPLICATION.G_x03;',
'  L_SCHEMA_ID           DEFINITIONS.PR_TYPE_FLOW_EVENT.SCHEMA_ID%TYPE := APEX_APPLICATION.G_x04;',
'  L_WORKFLOW_TYPE_ID    DEFINITIONS.PR_TYPE_FLOW_EVENT.PURCHASE_TYPE_ID%TYPE := APEX_APPLICATION.G_x05;',
'  L_WORK_FLOW_ID        DEFINITIONS.PR_TYPE_FLOW_EVENT.WORK_FLOW_ID%TYPE := APEX_APPLICATION.G_x06;',
'  L_NEXT_EVENT_ID       RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := APEX_APPLICATION.G_x07;',
'  L_MRNO                RADIATION.RADIATION_MASTER.MRNO%TYPE := APEX_APPLICATION.G_x08;',
'  L_TEMPLATE_ID         DEFINITIONS.EVENT_WISE_DETAIL.PARAMETER_VALUE%TYPE;',
'  L_RESULT_JSON         VARCHAR2(4000);',
'  L_ALREADY_PERFORMED   CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  BEGIN',
'    HIS.PKG_CONFIDENTIAL_PATIENT.CONFIDENTIAL_ALLOWED(P_PATIENT_MRNO => L_MRNO,',
'                                                      P_USER_MRNO    => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''USER_MRNO''),',
'                                                      P_OBJECT_CODE  => ''S18APX00035'',',
'                                                      P_TERMINAL     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                      P_EVENT        => ''PARAMBLOCK-FORWARD_EVENT'',',
'                                                      P_ALERT        => L_ALERT_TEXT,',
'                                                      P_STOP         => L_STOP);',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      RAISE EX_CUSTOM;',
'    END IF;',
'    IF :NEXT_EVENT_ID IS NULL THEN',
'      L_ALERT_TEXT := ''There is no further event, cannot proceed.'';',
'      RAISE EX_CUSTOM;',
'    END IF;',
'    IF :NEXT_EVENT_ID = 353 THEN',
'      BEGIN',
'        L_OBJECT_CODE := RADIATION.PKG_WORKFLOW.GET_OBJECT_CODE(P_PERFORMANCE_TYPE_ID => :PERFORMANCE_TYPE_ID);',
'      END;',
'      IF L_OBJECT_CODE IS NULL THEN',
'        L_ALERT_TEXT := ''Object code not defined for this performance type, cannot proceed.'';',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    ELSE',
'      BEGIN',
'        L_OBJECT_CODE := RADIATION.PKG_WORKFLOW.GET_OBJECT_CODE(P_SCHEMA_ID        => :SCHEMA_ID,',
'                                                                P_WORKFLOW_TYPE_ID => :PURCHASE_TYPE_ID,',
'                                                                P_WORK_FLOW_ID     => :WORK_FLOW_ID,',
'                                                                P_EVENT_ID         => :ND_NEXT_EVENT_ID);',
'      END;',
'    END IF;',
'    IF L_OBJECT_CODE IS NOT NULL THEN',
'      IF RADIATION.PKG_WORKFLOW_RADIATION.IS_ALREADY_PERFORMED(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                  ''ORGANIZATION_ID''),',
'                                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                  ''LOCATION_ID''),',
'                                                               P_SCHEDULE_SRNO     => :SR_NO,',
'                                                               P_EVENT_ID          => :NEXT_EVENT_ID) = ''Y'' THEN',
'        L_ALREADY_PERFORMED := ''Y'';',
'      ELSE',
'        L_ALREADY_PERFORMED := ''N'';',
'      END IF;',
'      -- CALL THE PROCEDURE',
'      RADIATION.PKG_S18FRM00133.VALIDATE_EVENT(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                               P_LOCATION_ID         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                               P_QUEUE_ID            => :QUEUE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => :PERFORMANCE_TYPE_ID,',
'                                               P_EVENT_ID            => :NEXT_EVENT_ID,',
'                                               P_MOVE_TYPE           => ''F'',',
'                                               P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                               P_STOP                => L_STOP);',
'      IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    ',
'      RADIATION.PKG_S18FRM00133.PERFORM_EVENT(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''ORGANIZATION_ID''),',
'                                              P_LOCATION_ID         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''LOCATION_ID''),',
'                                              P_SCHEDULE_SRNO       => :SR_NO,',
'                                              P_NEXT_EVENT_ID       => :NEXT_EVENT_ID,',
'                                              P_QUEUE_ID            => :QUEUE_ID,',
'                                              P_PERFORMANCE_TYPE_ID => :PERFORMANCE_TYPE_ID,',
'                                              P_EVENT_ID            => :EVENT_ID,',
'                                              P_REMARKS             => :FORWARD_REMARKS,',
'                                              P_USER_MRNO           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''USER_MRNO''),',
'                                              P_OBJECT_CODE         => ''S18APX00035'',',
'                                              P_TERMINAL            => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''TERMINAL''),',
'                                              P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                              P_STOP                => L_STOP);',
'      IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    ',
'    END IF;',
'  ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --write up json output',
'  APEX_JSON.open_object;',
'  APEX_JSON.write(''already_performed'', L_ALREADY_PERFORMED);',
'  APEX_JSON.write(''object_code'', L_OBJECT_CODE);',
'  APEX_JSON.write(''template_id'', L_TEMPLATE_ID);',
'  APEX_JSON.write(''stop'', ''N'');',
'  APEX_JSON.write(''alert_text'', '''');',
'  APEX_JSON.close_object;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''stop'', ''Y'');',
'    APEX_JSON.write(''alert_text'', L_ALERT_TEXT);',
'    APEX_JSON.close_object;',
'  WHEN OTHERS THEN',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''stop'', ''Y'');',
'    APEX_JSON.write(''alert_text'', SQLERRM);',
'    APEX_JSON.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>288201958154771643
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288202394697771646)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ValidateEventBack'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT          VARCHAR2(4000);',
'  L_STOP                CHAR(1) := ''N'';',
'  L_QUEUE_ID            RADIATION.DEF_QUEUE.QUEUE_ID%TYPE := APEX_APPLICATION.G_x01;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_QUEUE_EVENT_ALERTS.PERFORMANCE_TYPE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_SCHEMA_ID           DEFINITIONS.PR_TYPE_FLOW_EVENT.SCHEMA_ID%TYPE := APEX_APPLICATION.G_x03;',
'  L_WORKFLOW_TYPE_ID    DEFINITIONS.PR_TYPE_FLOW_EVENT.PURCHASE_TYPE_ID%TYPE := APEX_APPLICATION.G_x04;',
'  L_WORK_FLOW_ID        DEFINITIONS.PR_TYPE_FLOW_EVENT.WORK_FLOW_ID%TYPE := APEX_APPLICATION.G_x05;',
'  L_EVENT_ID            RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := APEX_APPLICATION.G_x06;',
'  L_RESULT_JSON         VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  -- CALL THE PROCEDURE',
'  RADIATION.PKG_S18FRM00133.VALIDATE_EVENT(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                           P_LOCATION_ID         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                           P_QUEUE_ID            => L_QUEUE_ID,',
'                                           P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                           P_EVENT_ID            => L_EVENT_ID,',
'                                           P_MOVE_TYPE           => ''B'',',
'                                           P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                           P_STOP                => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  --write up json output',
'  APEX_JSON.open_object;',
'  APEX_JSON.write(''stop'', ''N'');',
'  APEX_JSON.write(''alert_text'', '''');',
'  APEX_JSON.close_object;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''stop'', ''Y'');',
'    APEX_JSON.write(''alert_text'', L_ALERT_TEXT);',
'    APEX_JSON.close_object;',
'  WHEN OTHERS THEN',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''stop'', ''Y'');',
'    APEX_JSON.write(''alert_text'', SQLERRM);',
'    APEX_JSON.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>288202394697771646
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288202638423771646)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UndoEvent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT    VARCHAR2(4000);',
'  L_STOP          CHAR(1) := ''N'';',
'  L_OBJECT_CODE   DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE;',
'  L_SCHEDULE_SRNO RADIATION.SCHEDULE.SR_NO%TYPE := APEX_APPLICATION.G_x01;',
'  L_EVENT_ID      RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := APEX_APPLICATION.G_x02;',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00133.UNDO_EVENT(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''ORGANIZATION_ID''),',
'                                       P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''LOCATION_ID''),',
'                                       P_SCHEDULE_SRNO   => L_SCHEDULE_SRNO,',
'                                       P_EVENT_ID        => L_EVENT_ID,',
'                                       P_USER_MRNO       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''USER_MRNO''),',
'                                       P_OBJECT_CODE     => ''S22APX00035'',',
'                                       P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''TERMINAL''),',
'                                       P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                       P_STOP            => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''stop'', ''Y'');',
'    APEX_JSON.write(''alert_text'', L_ALERT_TEXT);',
'    APEX_JSON.close_object;',
'  ELSE',
'    COMMIT;',
'    --write up json output',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''stop'', ''N'');',
'    APEX_JSON.write(''alert_text'', '''');',
'    APEX_JSON.close_object;',
'  END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>288202638423771646
);
wwv_flow_imp.component_end;
end;
/

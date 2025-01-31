prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'TEST-RAD_APPT'
,p_alias=>'TEST-RAD-APPT'
,p_step_title=>'TEST-RAD_APPT'
,p_error_handling_function=>'RADIATION.ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#apps/js/moment.min.js',
'#WORKSPACE_FILES#apps/js/global.v1.0.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function fwdbtn(p1) {',
'   // document.getElementById("BTN_FORWARD").click();',
'   $(window).trigger(''clickForward'');',
'};',
'',
'function openReport(p1) {',
'    apex.message.alert(p1);',
'}',
'',
'',
'function getObjectDef(pObjectCode, pCallingObjectCode) {',
'    return apex.server.process(''GetObjectDefinition'', { x01: pObjectCode, x02: pCallingObjectCode },',
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
'    return apex.server.process(''GenerateURL'', { x01: objectDef.APP_ID, x02: objectDef.PAGE_ID, x03: itemList, x04: itemValue },',
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
'',
'',
'            });',
'        }',
'        else',
'            apex.message.alert(''Unable to find Apex object code for '' + objectCode);',
'    });',
'};',
'async function getObjectDef(pObjectCode, pCallingObjectCode) {',
'    return apex.server.process(''GetObjectDefinition'', { x01: pObjectCode, x02: pCallingObjectCode },',
'        {',
'            dataType: "json"',
'        }',
'    );',
'}',
'async function generateURL(objectDef) {',
'    let itemList, itemValue;',
'    itemList = Array.isArray(objectDef.itemList) ? objectDef.itemList.join('','') : "";',
'    itemValue = Array.isArray(objectDef.valueList) ? objectDef.valueList.join('','') : "";',
'    let jDataStr = await apex.server.process(''GenerateURL'', { x01: objectDef.APP_ID, x02: objectDef.PAGE_ID, x03: itemList, x04: itemValue },',
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
'    $(''.highlight td.LEGEND_DISPLAY_column'').each(function () {',
'        // get cell text',
'        cellData = $(this).text();',
'        // rules for coloring',
'        if (cellData == ''i'')',
'            this.style.backgroundColor = "#80ff00",',
'                this.style.color = "#80ff00";',
'',
'        else if (cellData == ''a'')',
'            this.style.backgroundColor = ''#4080ff'',',
'                this.style.color = "#4080ff";',
'    })',
'};',
'',
'function opanMachine(p1) {',
'    // alert(p1)',
'    $(''.js-machine-link[is-active]'').removeAttr(''is-active'');',
'    console.log($(''#''+''m''+p1));',
'    $(''#''+''m''+p1).attr(''is-active'','''');',
'    apex.item("P38_ND_MACHINE_ID").setValue(p1);',
'    // alert(''fq'');',
'',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :root{',
'    --ut-body-actions-width : 20rem;',
'}   ',
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
'}',
'',
'.custom-card-1 .apex-item-display-only{',
'    font-weight: inherit;',
'    color: var(--custom-card-1-font-color);',
'}',
'.custom-card-1 .apex-item-display-only.u-danger-text{',
'    color: var(--ut-palette-danger);',
'}',
'.custom-card-1 .t-Form-labelContainer{',
'    background-color: inherit',
'    /* var(--ut-component-background-color); */',
'}',
'.custom-card-1 .t-Form-inputContainer {',
'    background-color: var(--ut-component-highlight-background-color);',
'    font-weight: bold;',
'}',
'.custom-card-1 .t-Form-labelContainer,.custom-card-1 .t-Form-inputContainer{',
'    margin: 1px 1px 1px 1px;',
'    padding-top: var(--custom-card-1-padding);',
'    padding-bottom: var(--custom-card-1-padding);',
'}',
'.custom-card-1 .t-Form-label{',
'    color: var(--custom-card-1-font-color);',
'}',
':root{',
'    --custom-card-1-padding : var(--ut-field-padding-y,.5rem)*.02;',
'    --custom-card-1-font-color : var(--ut-palette-primary);',
'}',
'/* MACHINE LIST CSS */',
'a[is-active] h3{',
'  color: red;',
'}'))
,p_step_template=>wwv_flow_imp.id(14468116913908215)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'00160000005156'
,p_last_upd_yyyymmddhh24miss=>'20230907150210'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10399454020851244)
,p_plug_name=>'Patient Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(294407944608538381)
,p_plug_name=>'Patient Info'
,p_parent_plug_id=>wwv_flow_imp.id(10399454020851244)
,p_region_css_classes=>'custom-card-1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>50
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(811297767561889459)
,p_name=>'Image'
,p_parent_plug_id=>wwv_flow_imp.id(10399454020851244)
,p_template=>wwv_flow_imp.id(14489219574908225)
,p_display_sequence=>10
,p_region_css_classes=>'u-pullRight'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
 p_id=>wwv_flow_imp.id(5912687809288187)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5913088390288187)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5913419853288187)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(522324756899855822)
,p_plug_name=>'Radiation Queue '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>46
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(810431305271244960)
,p_plug_name=>'Radiotherapy Appointment(s)'
,p_region_name=>'RADQUEUEG1'
,p_parent_plug_id=>wwv_flow_imp.id(522324756899855822)
,p_region_css_classes=>'highlight'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM.MRNO MRNO,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PNAME,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RD.SITE_ID) SITE,',
'       HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'       TO_CHAR(RS.VISIT_DATE, ''DD-MON-YY HH24:MI'') APPOINTMENT_DATE,',
'       RS.FRACTION_ID FRACTION_ID,',
'       RS.OC_SERIAL_NO OC_SERIAL_NO,',
'       NULL REMAINING_FRACTION,',
'       RS.RADIATION_NO RADIATION_NO,',
'       RS.SITE_ID SITE_ID,',
'       HIS.PKG_PATIENT.IS_PATIENT_ADMITTED(RM.MRNO) IS_PATIENT_ADMITTED,',
'       ''P'' TREATEMENT_TYPE,',
'       RS.MACHINE_ID MACHINE_ID,',
'       RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                         P_SITE_ID      => RS.SITE_ID,',
'                                                         P_FRACTION_ID  => RS.FRACTION_ID) TOTAL_FRACTION,',
'       NULL ERROR_REASON,',
'       NVL((SELECT ''Y''',
'             FROM ORDERENTRY.PERFORMANCE_Q Q',
'            WHERE Q.APPT_SR_NO = RS.SR_NO',
'              AND Q.RADIATION_NO IS NOT NULL),',
'           ''N'') ANAESTHESIA_REQUIRED,',
'       NVL(SW.REMARKS, RS.REMARKS) REMARKS,',
'       RS.SR_NO,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => RD.PHYSICIST) AS PHYSICIST_NAME,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                       P_SITE_ID      => RD.SITE_ID,',
'                                                       P_WFE_NO       => RD.WFE_NO) AS REQUEST_STATUS,',
'       CASE',
'         WHEN SW.EVENT_ID IS NOT NULL THEN',
'          NVL(QE.SHORT_DESC,',
'              RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(P_EVENT_ID => SW.EVENT_ID))',
'         ELSE',
'          NULL',
'       END AS APPOINTMENT_STATUS,',
'       DSW.SCHEMA_ID,',
'       DSW.WORKFLOW_TYPE_ID,',
'       DSW.WORK_FLOW_ID,',
'       SW.EVENT_ID,',
'       RADIATION.PKG_WORKFLOW.GET_EVENT_ORDERBY(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                P_EVENT_ID         => SW.EVENT_ID) ORDER_BY,',
'       RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID,',
'                                                P_EVENT_ID         => SW.EVENT_ID) NEXT_EVENT_ID,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => SW.ENTERED_BY) ENTERED_BY,',
'       SW.ENTERED_DATE,',
'       NVL(QE.PERFORMABLE, ''Y''),',
'       QE.BG_COLOUR,',
'       RS.TIMEOUT_SRNO,',
'       HIS.PKG_PATIENT.GET_AGE(RM.MRNO) AGE,',
'       HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) GENDER,',
'       RADIATION.PKG_S18FRM00010.GET_SHOW_ALLERGIES(RM.MRNO) ALLERGIES,',
'       HIS.PKG_PATIENT.IS_PATIENT_ADMITTED(RM.MRNO) ADMISSION_NO,',
'       RADIATION.PKG_S18FRM00010.FETCH_FLAGS(RM.MRNO) FLAGS,',
'       ORDERENTRY.PKG_COMMON_UTIL.GET_PATIENT_ISOLATION_STATUS(RM.MRNO, ''S'') ISOLATION_STATUS,',
'       RADIATION.PKG_S18FRM00010.FETCH_DNR(RM.MRNO) DNR,',
'       ''Forward'' forward,',
'       M.PERFORMANCE_TYPE_ID',
'  FROM RADIATION.MACHINES              M,',
'       RADIATION.SCHEDULE              RS,',
'       RADIATION.SCHEDULE_WORKFLOW     SW,',
'       RADIATION.RADIATION_MASTER      RM,',
'       RADIATION.RADIATION_DETAIL      RD,',
'       RADIATION.DEF_QUEUE_EVENTS      QE,',
'       RADIATION.DEF_SCHEDULE_WORKFLOW DSW',
' WHERE M.MACHINE_ID = :P41_ND_MACHINE_ID',
'   AND RS.MACHINE_ID = M.MACHINE_ID',
'   AND RS.SR_NO = SW.SR_NO(+)',
'   AND RS.WFE_NO = SW.WFE_NO(+)',
'   AND RS.RADIATION_NO = RM.RADIATION_NO',
'   AND RD.RADIATION_NO = RM.RADIATION_NO',
'   AND RD.SITE_ID = RS.SITE_ID',
' --  AND QE.QUEUE_ID = :P41_GROUP',
'   AND QE.PERFORMANCE_TYPE_ID = M.PERFORMANCE_TYPE_ID',
'   AND NVL(SW.EVENT_ID,',
'           RADIATION.Pkg_Workflow.GET_INITIAL_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                       P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                       P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID)) =',
'       QE.EVENT_ID',
'   AND DSW.ORGANIZATION_ID = M.ORGANIZATION_ID',
'   AND DSW.LOCATION_ID = M.LOCATION_ID',
'   AND DSW.PLANNING_ID = RD.PLANNING_ID',
'   AND DSW.PERFORMANCE_TYPE_ID = M.PERFORMANCE_TYPE_ID',
'   AND DSW.ACTIVE = ''Y''',
'   AND QE.ACTIVE = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = M.MACHINE_ID)',
'      /*AND ( :P41_EVENT_ID = 0 OR RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                                     P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                                     P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID,',
'                                                                     P_EVENT_ID         => SW.EVENT_ID) =',
'      :P41_EVENT_ID)*/',
'--    AND (:P41_MRNO IS NOT NULL OR RM.MRNO LIKE ''%'' || :P41_MRNO)',
'--    AND (:P41_PHYSIST_MRNO IS NULL OR RD.PHYSICIST = :P41_PHYSIST_MRNO)',
'--    AND (:P41_DOCTOR_ID IS NULL OR RM.DOCTOR_ID = :P41_DOCTOR_ID)',
'--    AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P41_FROM_DATE, ''DD-MM-YYYY'') AND',
'--        TO_DATE(:P41_TO_DATE, ''DD-MM-YYYY''))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P41_ND_MACHINE_ID,P41_QUEUE_ID,P41_CMRNO,P41_PHYSIST_MRNO,P41_DOCTOR_ID,P41_TO_DATE,P41_FROM_DATE,P41_GROUP'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5942942834310704)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FARHANAKRAM'
,p_internal_uid=>5942942834310704
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943007045310705)
,p_db_column_name=>'MRNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943196544310706)
,p_db_column_name=>'PNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943255098310707)
,p_db_column_name=>'SITE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943366954310708)
,p_db_column_name=>'DISP_DOCTOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Disp Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943493040310709)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943584974310710)
,p_db_column_name=>'FRACTION_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fraction Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943676158310711)
,p_db_column_name=>'OC_SERIAL_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Oc Serial No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943764479310712)
,p_db_column_name=>'REMAINING_FRACTION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remaining Fraction'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943802881310713)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5943987773310714)
,p_db_column_name=>'SITE_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944094790310715)
,p_db_column_name=>'IS_PATIENT_ADMITTED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Is Patient Admitted'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944122922310716)
,p_db_column_name=>'TREATEMENT_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Treatement Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944250316310717)
,p_db_column_name=>'MACHINE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944317308310718)
,p_db_column_name=>'TOTAL_FRACTION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Fraction'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944425291310719)
,p_db_column_name=>'ERROR_REASON'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Error Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944533832310720)
,p_db_column_name=>'ANAESTHESIA_REQUIRED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Anaesthesia Required'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944681828310721)
,p_db_column_name=>'REMARKS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944770090310722)
,p_db_column_name=>'SR_NO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sr No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944819299310723)
,p_db_column_name=>'PHYSICIST_NAME'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Physicist Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5944931632310724)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945048005310725)
,p_db_column_name=>'APPOINTMENT_STATUS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Appointment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945195186310726)
,p_db_column_name=>'SCHEMA_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Schema Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945256660310727)
,p_db_column_name=>'WORKFLOW_TYPE_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Workflow Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945398644310728)
,p_db_column_name=>'WORK_FLOW_ID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Work Flow Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945425621310729)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Event Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945515999310730)
,p_db_column_name=>'ORDER_BY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Order By'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945697883310731)
,p_db_column_name=>'NEXT_EVENT_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Next Event Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945763882310732)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945891403310733)
,p_db_column_name=>'ENTERED_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Entered Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5945963015310734)
,p_db_column_name=>'NVL(QE.PERFORMABLE,''Y'')'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nvl(qe.performable,&#x27;y&#x27;)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946066440310735)
,p_db_column_name=>'BG_COLOUR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Bg Colour'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946115897310736)
,p_db_column_name=>'TIMEOUT_SRNO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Timeout Srno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946225025310737)
,p_db_column_name=>'AGE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Age'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946317823310738)
,p_db_column_name=>'GENDER'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946446062310739)
,p_db_column_name=>'ALLERGIES'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Allergies'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946523258310740)
,p_db_column_name=>'ADMISSION_NO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Admission No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946616615310741)
,p_db_column_name=>'FLAGS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Flags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946784313310742)
,p_db_column_name=>'ISOLATION_STATUS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Isolation Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946827631310743)
,p_db_column_name=>'DNR'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Dnr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5946987158310744)
,p_db_column_name=>'FORWARD'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Forward'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5947001717310745)
,p_db_column_name=>'PERFORMANCE_TYPE_ID'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Performance Type Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5999488641315194)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59995'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MRNO:PNAME:SITE:DISP_DOCTOR:APPOINTMENT_DATE:FRACTION_ID:OC_SERIAL_NO:REMAINING_FRACTION:RADIATION_NO:SITE_ID:IS_PATIENT_ADMITTED:TREATEMENT_TYPE:MACHINE_ID:TOTAL_FRACTION:ERROR_REASON:ANAESTHESIA_REQUIRED:REMARKS:SR_NO:PHYSICIST_NAME:REQUEST_STATUS:'
||'APPOINTMENT_STATUS:SCHEMA_ID:WORKFLOW_TYPE_ID:WORK_FLOW_ID:EVENT_ID:ORDER_BY:NEXT_EVENT_ID:ENTERED_BY:ENTERED_DATE:NVL(QE.PERFORMABLE,''Y''):BG_COLOUR:TIMEOUT_SRNO:AGE:GENDER:ALLERGIES:ADMISSION_NO:FLAGS:ISOLATION_STATUS:DNR:FORWARD:PERFORMANCE_TYPE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(810496429628627338)
,p_plug_name=>'Radiation Alerts '
,p_parent_plug_id=>wwv_flow_imp.id(810431305271244960)
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
'                         AND RA.RADIATION_NO = :P0_RADIATION_NO',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(810431553750244962)
,p_plug_name=>'Radiation Queue Filter '
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14506410700908232)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(810497047606627344)
,p_name=>'Machine'
,p_region_name=>'queue'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>36
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'t-MediaList--stack'
,p_grid_column_span=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MACHINE_ID,',
'       null,',
'       DESCRIPTION LIST_TITLE,',
'       NULL LIST_TEXT,',
'       ''js-machine-link'' LINK_CLASS,',
'       ''id=m'' || MACHINE_ID || '' '' || CASE',
'         WHEN ROWNUM = 1 THEN',
'          ''is-active''',
'         else',
'          null',
'       end link_attr,',
'       ''javascript:opanMachine("'' || MACHINE_ID || ''");'' LINK',
'  FROM (SELECT MACHINE_ID, DESCRIPTION',
'          FROM RADIATION.MACHINES MC',
'         WHERE ACTIVE = ''Y''',
'           AND EXISTS (SELECT 1',
'                  FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'                 WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'           AND MC.PERFORMANCE_TYPE_ID IN',
'               (SELECT QP.PERFORMANCE_TYPE_ID',
'                  FROM RADIATION.DEF_QUEUE_PERFORMANCE QP',
'                 WHERE QP.QUEUE_ID = :P41_GROUP',
'                   AND QP.ACTIVE = ''Y'')',
'         ORDER BY MC.MACHINE_TYPE, MC.DESCRIPTION)',
''))
,p_header=>'<!-- <div style="overflow: auto; min-height: 450px; max-height: 450px;"> -->'
,p_footer=>'<!-- </div> -->'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P41_GROUP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14565413660908263)
,p_query_num_rows=>30
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5890486442288138)
,p_query_column_id=>1
,p_column_alias=>'MACHINE_ID'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5891279070288140)
,p_query_column_id=>2
,p_column_alias=>'NULL'
,p_column_display_sequence=>110
,p_column_heading=>'Null'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5892435015288140)
,p_query_column_id=>3
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5890896268288140)
,p_query_column_id=>4
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>60
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5892022886288140)
,p_query_column_id=>5
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>130
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5891617033288140)
,p_query_column_id=>6
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>120
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5892879615288142)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>50
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5908428961288174)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_button_name=>'Populate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Populate'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5906808920288172)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(810431305271244960)
,p_button_name=>'SendBack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Back '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5907268092288173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(810431305271244960)
,p_button_name=>'History'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'History'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=112:36:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423038506851289)
,p_name=>'P41_CGENDER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423112954851290)
,p_name=>'P41_CAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423273285851291)
,p_name=>'P41_CALLERGIES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Allergies'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423314598851292)
,p_name=>'P41_CFLAGS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Flags'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423399936851293)
,p_name=>'P41_ISOLATION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Isolation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423502610851294)
,p_name=>'P41_CDX'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Dx'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10423636029851295)
,p_name=>'P41_CCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85504546781307692)
,p_name=>'P41_RADIATION_QUEUE_DEFAULTS'
,p_item_sequence=>76
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294187166369165315)
,p_name=>'P41_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(810497047606627344)
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
,p_lov_cascade_parent_items=>'P41_CBED_NO'
,p_ajax_items_to_submit=>'P41_CBED_NO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(294203261675165351)
,p_name=>'P41_DOCTOR_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
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
,p_lov_cascade_parent_items=>'P41_CBED_NO'
,p_ajax_items_to_submit=>'P41_CBED_NO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(294203567456165351)
,p_name=>'P41_PHYSIST_MRNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_prompt=>'Physicist'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME, P.PHYSICIST_MRNO EMPLOYEE_CODE',
'  FROM RADIATION.PHYSICISTS P, HRD.VU_INFORMATION I',
' WHERE P.PHYSICIST_MRNO = I.MRNO',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P41_CBED_NO'
,p_ajax_items_to_submit=>'P41_CBED_NO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(294204038705165352)
,p_name=>'P41_FROM_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(294204439497165352)
,p_name=>'P41_TO_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(294204781483165352)
,p_name=>'P41_EVENT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294205253962165354)
,p_name=>'P41_MRNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294205639973165354)
,p_name=>'P41_MACHINE_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294205993101165354)
,p_name=>'P41_ORDER_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294206393914165356)
,p_name=>'P41_PERIOD_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_prompt=>'Period Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Today;T,Future;F,Manual;M'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294206779845165356)
,p_name=>'P41_QUEUE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(810431553750244962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294236025216165418)
,p_name=>'P41_TEMPLATE_ID'
,p_item_sequence=>66
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294432523124538436)
,p_name=>'P41_CBED_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294432586347538437)
,p_name=>'P41_CNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294432749682538438)
,p_name=>'P41_CMRNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(294407944608538381)
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(297451845516491122)
,p_name=>'P41_ND_MACHINE_ID'
,p_item_sequence=>86
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5921635525288196)
,p_name=>'RefreshRadiationQueue'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5908428961288174)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5922115367288198)
,p_event_id=>wwv_flow_imp.id(5921635525288196)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(810431305271244960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5922569790288198)
,p_name=>' PreserveValues'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5923005538288198)
,p_event_id=>wwv_flow_imp.id(5922569790288198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  S VARCHAR2(1) := ''!'';',
'BEGIN',
'  :P41_RADIATION_QUEUE_DEFAULTS := S || :P41_QUEUE_ID || S || :P41_DOCTOR_ID || S ||',
'                               :P41_PERIOD_TYPE || S || :P41_FROM_DATE || S ||',
'                               :P41_TO_DATE || S;',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5923482307288198)
,p_name=>'SetPeriodValue'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PERIOD_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5924953268288199)
,p_event_id=>wwv_flow_imp.id(5923482307288198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_FROM_DATE,P41_TO_DATE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P41_PERIOD_TYPE'
,p_client_condition_expression=>'M'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5925477000288199)
,p_event_id=>wwv_flow_imp.id(5923482307288198)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_FROM_DATE,P41_TO_DATE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P41_PERIOD_TYPE'
,p_client_condition_expression=>'M'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5923930982288198)
,p_event_id=>wwv_flow_imp.id(5923482307288198)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF (:P41_PERIOD_TYPE = ''T'') THEN',
'    :P41_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P41_TO_DATE   := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'  ELSIF (:P41_PERIOD_TYPE = ''F'') THEN',
'    :P41_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P41_TO_DATE   := TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE), 12), ''DD-MM-YYYY'');',
'  ELSIF (:P41_PERIOD_TYPE = ''M'') THEN',
'    :P41_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P41_TO_DATE   := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P41_PERIOD_TYPE'
,p_attribute_03=>'P41_FROM_DATE,P41_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5924476733288198)
,p_event_id=>wwv_flow_imp.id(5923482307288198)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gridView = apex.region("RADQUEUEG1").call("getViews").grid;',
'',
'if ($v("P41_PERIOD_TYPE") === "T") {',
'    gridView.view$.grid("hideColumn", "APPOINTMENT_DATE");',
'}',
'else {',
'    gridView.view$.grid("showColumn", "APPOINTMENT_DATE");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5925868623288199)
,p_name=>'SetPatientDetails'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(810431305271244960)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5926377043288199)
,p_event_id=>wwv_flow_imp.id(5925868623288199)
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
'  <li><label style="font-weight: bold;">Bed Number    : </label>&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.IS_PATIENT_ADMITTED + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Name  : </label>&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.PNAME + `</span></li>',
'  <li><label style="font-weight: bold;">Patient MRNO  : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.MRNO + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Gender: </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.GENDER + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Age   : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.AGE + `</span></li>',
'  <li><label style="font-weight: bold;">Allergies     : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ALLERGIES + `</span></li>',
'  <li><label style="font-weight: bold;">Flags         : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.FLAGS + `</span></li>',
'  <li><label style="font-weight: bold;">Isolation     : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ISOLATION_STATUS + `</span></li>',
'  <li><label style="font-weight: bold;">Code          : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.DNR + `</span></li>',
'</ol>`;',
'$s(''P41_PATIENT_INFO'', ht.replaceAll(''undefined'', '''',));',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5926731550288199)
,p_name=>'Forward'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'clickForward'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5928273545288200)
,p_event_id=>wwv_flow_imp.id(5926731550288199)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(this);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5927235774288200)
,p_event_id=>wwv_flow_imp.id(5926731550288199)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//variable declaration',
'//refreshGrid(''RADQUEUEG1'');',
'debugger;',
'if (!_.RADQUEUEG1.MRNO)',
'    apex.message.alert("Please select a Patient!");',
'try {',
'    let r_rec = _.RADQUEUEG1;',
'    $s("P0_RADIATION_NO", r_rec.RADIATION_NO);',
'    $s(''P0_MRNO'', _.RADQUEUEG1.MRNO);',
'    r_rec.QUEUE_ID = $v("P41_GROUP");',
'',
'    let response_obj;',
'    if (r_rec.NEXT_EVENT_ID == null) {',
'        throw ''There is no further event, cannot proceed.'';',
'    }',
'    // calling ajax call back',
'    apex.server.process(''ValidateEvent'', {',
'        x01: r_rec.QUEUE_ID,',
'        x02: r_rec.PERFORMANCE_TYPE_ID,',
'        x03: r_rec.RADIATION_NO,',
'        x04: r_rec.SCHEMA_ID,',
'        x05: r_rec.WORKFLOW_TYPE_ID,',
'        x06: r_rec.WORK_FLOW_ID,',
'        x07: r_rec.NEXT_EVENT_ID,',
'        x08: _.RADQUEUEG1.MRNO',
'    },',
'        {',
'            success: function (p_data) {',
'                response_obj = JSON.parse(p_data);',
'                if (response_obj.stop !== ''Y'') {',
'                    $s(''P41_TEMPLATE_ID'', response_obj.template_id);',
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
'                    let obj = appObject(response_obj.object_code, ''S18APX00035'');',
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
'                let obj = appObject(response_obj.object_code, ''S18APX00035'');',
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
'    apex.server.process(''ChangeEvent'', {',
'        x01: r_rec.QUEUE_ID,',
'        x02: r_rec.PERFORMANCE_TYPE_ID,',
'        x03: r_rec.RADIATION_NO,',
'        x04: r_rec.NEXT_EVENT_ID,',
'        x06: ifPerformed,',
'        x07: _.RADQUEUEG1.SR_NO',
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
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5927782791288200)
,p_event_id=>wwv_flow_imp.id(5926731550288199)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''RADQUEUEG1'').widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5928629542288200)
,p_name=>'SendBack'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5906808920288172)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5929140055288201)
,p_event_id=>wwv_flow_imp.id(5928629542288200)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//variable declaration',
'try {',
'    let r_rec = _.RADQUEUEG1;',
'    r_rec.QUEUE_ID = $v("P41_QUEUE_ID");',
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
 p_id=>wwv_flow_imp.id(5929526400288201)
,p_name=>'RefreshQueueRegion1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_GROUP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5930034609288201)
,p_event_id=>wwv_flow_imp.id(5929526400288201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(810497047606627344)
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
 p_id=>wwv_flow_imp.id(5930473015288201)
,p_name=>'RefreshQueueRegion2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_QUEUE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5930918220288201)
,p_event_id=>wwv_flow_imp.id(5930473015288201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(810497047606627344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5931360757288201)
,p_name=>'PopulateImage'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5931839141288201)
,p_event_id=>wwv_flow_imp.id(5931360757288201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(811297767561889459)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5920727456288195)
,p_name=>'New'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_ND_MACHINE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5921239553288196)
,p_event_id=>wwv_flow_imp.id(5920727456288195)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(810431305271244960)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5919519712288193)
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
'  L_SCHEDULE_SRNO       RADIATION.SCHEDULE.SR_NO%TYPE := APEX_APPLICATION.G_x09;',
'  L_REMARKS             RADIATION.SCHEDULE.REMARKS%TYPE := APEX_APPLICATION.G_x10;',
'  L_TEMPLATE_ID         DEFINITIONS.EVENT_WISE_DETAIL.PARAMETER_VALUE%TYPE;',
'  L_RESULT_JSON         VARCHAR2(4000);',
'  L_ALREADY_PERFORMED   CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
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
'    IF L_NEXT_EVENT_ID IS NULL THEN',
'      L_ALERT_TEXT := ''There is no further event, cannot proceed.'';',
'      RAISE EX_CUSTOM;',
'    END IF;',
'    IF L_NEXT_EVENT_ID = 353 THEN',
'      BEGIN',
'        L_OBJECT_CODE := RADIATION.PKG_WORKFLOW.GET_OBJECT_CODE(P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID);',
'      END;',
'      IF L_OBJECT_CODE IS NULL THEN',
'        L_ALERT_TEXT := ''Object code not defined for this performance type, cannot proceed.'';',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    ELSE',
'      BEGIN',
'        L_OBJECT_CODE := RADIATION.PKG_WORKFLOW.GET_OBJECT_CODE(P_SCHEMA_ID        => L_SCHEMA_ID,',
'                                                                P_WORKFLOW_TYPE_ID => L_WORKFLOW_TYPE_ID,',
'                                                                P_WORK_FLOW_ID     => L_WORK_FLOW_ID,',
'                                                                P_EVENT_ID         => L_NEXT_EVENT_ID);',
'      END;',
'    END IF;',
'    IF L_OBJECT_CODE IS NOT NULL THEN',
'      IF RADIATION.PKG_WORKFLOW_RADIATION.IS_ALREADY_PERFORMED(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                  ''ORGANIZATION_ID''),',
'                                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                  ''LOCATION_ID''),',
'                                                               P_SCHEDULE_SRNO     => L_SCHEDULE_SRNO,',
'                                                               P_EVENT_ID          => L_NEXT_EVENT_ID) = ''Y'' THEN',
'        L_ALREADY_PERFORMED := ''Y'';',
'      ELSE',
'        L_ALREADY_PERFORMED := ''N'';',
'      END IF;',
'      -- CALL THE PROCEDURE',
'      RADIATION.PKG_S18FRM00133.VALIDATE_EVENT(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                               P_LOCATION_ID         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                               P_QUEUE_ID            => L_QUEUE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                               P_EVENT_ID            => L_NEXT_EVENT_ID,',
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
'                                              P_SCHEDULE_SRNO       => L_SCHEDULE_SRNO,',
'                                              P_NEXT_EVENT_ID       => L_NEXT_EVENT_ID,',
'                                              P_QUEUE_ID            => L_QUEUE_ID,',
'                                              P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                              P_EVENT_ID            => L_NEXT_EVENT_ID,',
'                                              P_REMARKS             => L_REMARKS,',
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
,p_internal_uid=>5919519712288193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5919992798288194)
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
,p_internal_uid=>5919992798288194
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5920324229288194)
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
,p_internal_uid=>5920324229288194
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5918371696288192)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ChangeEvent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT          VARCHAR2(4000);',
'  L_STOP                CHAR(1) := ''N'';',
'  L_OBJECT_CODE         DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE;',
'  L_QUEUE_ID            RADIATION.DEF_QUEUE.QUEUE_ID%TYPE := APEX_APPLICATION.G_x01;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_QUEUE_EVENT_ALERTS.PERFORMANCE_TYPE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_RADIATION_NO        RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE := APEX_APPLICATION.G_x03;',
'  L_NEXT_EVENT_ID       RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := APEX_APPLICATION.G_x04;',
'  L_FORWARD_REMARKS     VARCHAR2(4000) := APEX_APPLICATION.G_x05;',
'  L_IF_PERFORMED        VARCHAR(1) := NVL(APEX_APPLICATION.G_x06, ''N'');',
'  L_SCHEDULE_SRNO       RADIATION.SCHEDULE.SR_NO%TYPE := APEX_APPLICATION.G_x07;',
'  L_RESULT_JSON         VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  IF L_IF_PERFORMED = ''N'' OR',
'     RADIATION.PKG_WORKFLOW_RADIATION.IS_ALREADY_PERFORMED(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                              ''ORGANIZATION_ID''),',
'                                                           P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                              ''LOCATION_ID''),',
'                                                           P_SCHEDULE_SRNO     => L_SCHEDULE_SRNO,',
'                                                           P_EVENT_ID          => L_NEXT_EVENT_ID) = ''Y'' THEN',
'  ',
'    RADIATION.PKG_S18FRM00133.PERFORM_EVENT(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                            P_LOCATION_ID         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                            P_SCHEDULE_SRNO       => L_SCHEDULE_SRNO,',
'                                            P_NEXT_EVENT_ID       => L_NEXT_EVENT_ID,',
'                                            P_QUEUE_ID            => L_QUEUE_ID,',
'                                            P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                            P_EVENT_ID            => NULL,',
'                                            P_REMARKS             => L_FORWARD_REMARKS,',
'                                            P_USER_MRNO           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                            P_OBJECT_CODE         => ''S18FRM00133'',',
'                                            P_TERMINAL            => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                            P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                            P_STOP                => L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      APEX_JSON.open_object;',
'      APEX_JSON.write(''stop'', ''Y'');',
'      APEX_JSON.write(''alert_text'', L_ALERT_TEXT);',
'      APEX_JSON.close_object;',
'    ELSE',
'      COMMIT;',
'      --write up json output',
'      APEX_JSON.open_object;',
'      APEX_JSON.write(''stop'', ''N'');',
'      APEX_JSON.write(''alert_text'', '''');',
'      APEX_JSON.close_object;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5918371696288192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5918768567288192)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetObjectDefinition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_OBJECT_CODE         DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE := APEX_APPLICATION.G_x01;',
'  L_CALLING_OBJECT_CODE DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE := APEX_APPLICATION.G_x02;',
'BEGIN',
'  IF L_OBJECT_CODE IS NULL THEN',
'    RAISE_APPLICATION_ERROR(-20001,''ObjectCode is null, cannot proceed.'');',
'  ELSIF L_CALLING_OBJECT_CODE IS NULL THEN',
'    RAISE_APPLICATION_ERROR(-20001,''Calling ObjectCode is null, cannot proceed.'');',
'  END IF;',
'',
'  IF L_OBJECT_CODE LIKE ''%FRM%'' THEN',
'    BEGIN',
'        SELECT T.OBJECT_CODE',
'        INTO L_OBJECT_CODE',
'        FROM DEFINITIONS.OBJECTS T',
'       WHERE T.OBJECT_TYPE_ID = ''APX''',
'         AND T.NAME = (SELECT S.NAME',
'                         FROM DEFINITIONS.OBJECTS S',
'                        WHERE S.OBJECT_CODE = L_OBJECT_CODE);',
'    EXCEPTION',
'       WHEN OTHERS THEN',
'       NULL;',
'    END;',
'  END IF;',
'  ',
'  FOR REC IN (SELECT (SELECT APP_ID',
'                        FROM DEFINITIONS.SCHEMAS S',
'                       WHERE S.SCHEMA_ID = O.SCHEMA_ID) APP_ID,',
'                     O.PAGE_ID,',
'                     (SELECT APP_ID',
'                        FROM DEFINITIONS.SCHEMAS S',
'                       WHERE S.SCHEMA_ID = OC.SCHEMA_ID) CAPP_ID,',
'                     OC.PAGE_ID CPAGE_ID',
'                FROM DEFINITIONS.OBJECTS O, DEFINITIONS.OBJECTS OC',
'               WHERE O.OBJECT_CODE = L_OBJECT_CODE',
'                 AND OC.OBJECT_CODE = L_CALLING_OBJECT_CODE) LOOP',
'   ',
'    HIS.PKG_JSON_UTIL.RETURN_JSON(HIS.PKG_JSON_UTIL.GET_APX_OBJECT(P_APP_ID          => REC.APP_ID,',
'                                                                 P_PAGE_ID         => REC.PAGE_ID,',
'                                                                 P_CALLING_APP_ID  => REC.CAPP_ID,',
'                                                                 P_CALLING_PAGE_ID => REC.CPAGE_ID));',
'  END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5918768567288192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5919161309288193)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GenerateURL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_URL VARCHAR2(4000);',
'BEGIN',
'  L_URL := APEX_PAGE.GET_URL(p_application => APEX_APPLICATION.G_x01,',
'                             p_page        => APEX_APPLICATION.G_x02,',
'                             p_items       => APEX_APPLICATION.G_x03,',
'                             p_values      => APEX_APPLICATION.G_x04);',
' HIS.PKG_JSON_UTIL.RETURN_JSON(json_object_t(''{"url":"''||L_URL||''"}''));',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5919161309288193
);
wwv_flow_imp.component_end;
end;
/

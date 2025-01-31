prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_name=>'RAD_APPOINTMENT_QUEUE'
,p_alias=>'RADIOTHERAPY-APPOINTMENT-S'
,p_step_title=>'Radiotherapy Appointment(s)'
,p_warn_on_unsaved_changes=>'N'
,p_error_handling_function=>'RADIATION.ERROR_HANDLING'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#apps/js/moment.min.js',
'#WORKSPACE_FILES#apps/js/global.v1.0.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let first_time_perform = true;',
'',
'function ackAlert(p1, p2, p3) {',
'    let response_obj;',
'',
'    if (!p1)',
'        apex.message.alert("Radiation No is null, cannot proceed");',
'    if (!p1)',
'        apex.message.alert("Site Id is null, cannot proceed");',
'    if (!p1)',
'        apex.message.alert("Alert SRNO is null, cannot proceed");',
'',
'',
'    apex.item("P38_ALERT_RAD_NO").setValue(p1);',
'    apex.item("P38_ALERT_RAD_SITE_ID").setValue(p2);',
'    apex.item("P38_ALERT_SRNO").setValue(p3);',
'',
'',
'    apex.server.process(''AcknowledgeRadiationAlert'', {',
'',
'        x01: p1,',
'        x02: p2,',
'        x03: p3,',
'',
'    },',
'        {',
'            dataType: ''text'',',
'            success: function (data) {',
'                var obj = JSON.parse(data);',
'                if (obj.status == "failed") {',
'                    apex.message.alert(obj.message);',
'                }',
'                else',
'                    apex.message.showPageSuccess(obj.message);',
'                apex.region("radalerts").refresh();',
'            }',
'',
'        }',
'    );',
'};',
'',
'function dismissAlert(p1, p2, p3) {',
'    let response_obj;',
'    //alert("P0_MRNO value = " + apex.item("P0_MRNO").getValue());',
'',
'    if (!p1)',
'        apex.message.alert("Radiation No is null, cannot proceed");',
'    if (!p1)',
'        apex.message.alert("Site Id is null, cannot proceed");',
'    if (!p1)',
'        apex.message.alert("Alert SRNO is null, cannot proceed");',
'',
'',
'    apex.item("P38_ALERT_RAD_NO").setValue(p1);',
'    apex.item("P38_ALERT_RAD_SITE_ID").setValue(p2);',
'    apex.item("P38_ALERT_SRNO").setValue(p3);',
'',
'',
'    apex.server.process(''DismissRadiationAlert'', {',
'',
'        x01: p1,',
'        x02: p2,',
'        x03: p3,',
'',
'    },',
'        {',
'            dataType: ''text'',',
'            success: function (data) {',
'                var obj = JSON.parse(data);',
'                if (obj.status == "failed") {',
'                    apex.message.alert(obj.message);',
'                }',
'                else',
'                    apex.message.showPageSuccess(obj.message);',
'                apex.region("radalerts").refresh();',
'            }',
'',
'        }',
'    );',
'};',
'',
'function test() {',
'    ///alert(''test'');',
'}',
'function forward(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) {',
'    let response_obj;',
'',
'    if (!p1)',
'        apex.message.alert("Patient MRNO is null, cannot proceed");',
'    if (!p2)',
'        apex.message.alert("Schedule SR NO is null, cannot proceed");',
'    if (!p3)',
'        apex.message.alert("Site ID is null, cannot proceed");',
'    if (!p4)',
'        apex.message.alert("Radiation No is null, cannot proceed");',
'    if (!p5)',
'        apex.message.alert("Queue ID is null, cannot proceed");',
'',
'    try {',
'        if (p10 == null) {',
'            throw ''There is no further event, cannot proceed.'';',
'        }',
'        // calling ajax call back',
'',
'        apex.server.process(''ValidateEvent'', {',
'',
'            x01: p5,',
'            x02: p6,',
'            x03: p4,',
'            x04: p7,',
'            x05: p8,',
'            x06: p9,',
'            x07: p10,',
'            x08: p1,',
'            x09: p2,',
'            x10: p11,',
'            x11: p12',
'        },',
'            {',
'',
'                success: function (p_data) {',
'                    //console.log(p_data);',
'                    //cosnole.log(''jswon''+JSON.parse(p_data));',
'                    response_obj = JSON.parse(p_data);',
'                    response_obj',
'                    if (response_obj.stop !== ''Y'') {',
'                        $s(''P38_TEMPLATE_ID'', response_obj.template_id);',
'                        const arr = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12];',
'                        //console.log(''test'');',
'                        //console.log(arr[1]);',
'',
'                        forward1(arr, response_obj);',
'                        //apex.region("radpatqueue").refresh();',
'',
'                    } else {',
'                        apex.message.alert(response_obj.alert_text);',
'                        //apex.region("radpatqueue").refresh();',
'                    }',
'                },',
'                dataType: "text"',
'            }',
'        );',
'        //apex.region("radpatqueue").refresh();',
'    }',
'    catch (err) {',
'        apex.message.alert(err);',
'    }',
'',
'};',
'',
'///////////////////////////////////////////////////',
'//             function forward1                //',
'//////////////////////////////////////////////////',
'function forward1(arr, response_obj) {',
'    let perform_again = false;',
'    //console.log(''forward1'');',
'    //console.log(arr[1]);',
'    try {',
'',
'        if (response_obj.already_performed === ''Y'') {',
'            // apex.message.confirm("Next event is already performed, Do you want to perform again?", function (okPressed) {',
'            /*if (okPressed) {',
'                perform_again = true;',
'                console.log(response_obj);',
'                $(document).on(''trgChngEvnt'', arr, () => { change_event(arr); });',
'                let obj = appObject(response_obj.object_code, ''S18APX00037'');',
'            }',
'            else {*/',
'            perform_again = false;',
'            change_event(arr);',
'            //}',
'            //});',
'        }',
'',
'        else {',
'',
'            if (response_obj.object_code) {',
'',
'                //refreshGridPosition("radpatqueue"); ',
'                //open object',
'                $(document).on(''trgChngEvnt'', arr, () => { change_event(arr, ''Y''); });',
'                let obj = appObject(response_obj.object_code, ''S18APX00037'');',
'                //refreshGridPosition("radpatqueue");',
'            }',
'            else {',
'',
'                //no need to open object',
'                change_event(arr);',
'            }',
'        }',
'    }',
'    catch (err) {',
'        throw err;',
'    }',
'}',
'',
'',
'',
'//forward1',
'',
'',
'function sendBack(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) {',
'    let response_obj;',
'    //alert(p2);',
'',
'    try {',
'        if (p10 == null) {',
'            throw ''There is no further event, cannot proceed.'';',
'        }',
'        // calling ajax call back',
'        apex.server.process(''ValidateEventBack'', {',
'',
'            x01: p5,',
'            x02: p6,',
'            x03: p7,',
'            x04: p8,',
'            x05: p9,',
'            x06: p10,',
'            x07: p2',
'        },',
'            {',
'                success: function (p_data) {',
'                    //console.log(p_data);',
'                    //cosnole.log(''jswon''+JSON.parse(p_data));',
'                    response_obj = JSON.parse(p_data);',
'                    response_obj',
'                    if (response_obj.stop !== ''Y'') {',
'                        const arr = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11];',
'                        change_event_back(arr, response_obj);',
'                    } else {',
'                        apex.message.alert(response_obj.alert_text);',
'                    }',
'                },',
'                dataType: "text"',
'            }',
'        );',
'    }',
'    catch (err) {',
'        apex.message.alert(err);',
'    }',
'',
'};',
'',
'',
'',
'',
'///////////////////////////////////////////////////',
'//          function change_event                //',
'//////////////////////////////////////////////////',
'function change_event(arr, ifPerformed = ''N'') {',
'    // calling ajax call back',
'    apex.server.process(''ChangeEvent'', {',
'        x01: arr[4],',
'        x02: arr[5],',
'        x03: arr[3],',
'        x04: arr[9],',
'        x06: ifPerformed,',
'        x05: arr[10],',
'        x07: arr[1]',
'    },',
'        {',
'            success: function (p_data) {',
'                response_obj1 = JSON.parse(p_data);',
'                if (response_obj1.stop != ''Y'') {',
'                    apex.message.alert(''Appointment forwarded to next event successfully'');',
'                    //apex.page.ajaxReload();',
'                    //apex.region("radpatqueue").refresh();',
'                    refreshGridPosition("radpatqueue");',
'                } else {',
'                    apex.message.alert(response_obj1.alert_text);',
'                    //apex.region("radpatqueue").refresh();',
'                    refreshGridPosition("radpatqueue");',
'                }',
'            },',
'            dataType: "text"',
'        }',
'    );',
'}',
'',
'///////////////////////////////////////////////////',
'//          function change_event_back           //',
'//////////////////////////////////////////////////',
'function change_event_back(arr) {',
'    let response_obj;',
'    // calling ajax call back',
'    apex.server.process(''UndoEvent'', {',
'        x01: arr[1],',
'        x02: arr[8],',
'    },',
'        {',
'            success: function (p_data) {',
'                console.log(p_data);',
'                //cosnole.log(''jswon''+JSON.parse(p_data));',
'                response_obj = JSON.parse(p_data);',
'                response_obj',
'                if (response_obj.stop !== ''Y'') {',
'                    apex.message.alert(''Appointment back to previous event successfully'');',
'                    //apex.region("radpatqueue").refresh();',
'                    refreshGridPosition("radpatqueue");',
'                } else {',
'                    apex.message.alert(response_obj.alert_text);',
'                    //apex.region("radpatqueue").refresh();',
'                    refreshGridPosition("radpatqueue");',
'                }',
'            },',
'            dataType: "text"',
'        }',
'    );',
'}',
'',
'function fwdbtn(p1) {',
'    // document.getElementById("BTN_FORWARD").click();',
'    $(window).trigger(''clickForward'');',
'};',
'',
'function history() {',
'    $.event.trigger("eventHistory");',
'};',
'',
'function openRemarksDialog() {',
'    $.event.trigger("eventOpenForwardRemarks");',
'',
'}',
'',
'function openReport(p1) {',
'    apex.message.alert(p1);',
'}',
'',
'',
'async function getObjectDef(pObjectCode, pCallingObjectCode) {',
'    return apex.server.process(''GetObjectDefinition'', { x01: pObjectCode, x02: pCallingObjectCode },',
'        {',
'            dataType: "text"',
'        }',
'    );',
'};',
'async function addParamters(objectDef) {',
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
'    $(''#'' + ''m'' + p1).attr(''is-active'', '''');',
'    apex.item("P38_ND_MACHINE_ID").setValue(p1);',
'    apex.item("P38_ND_SR_NO").setValue('''');',
'    apex.item("P38_CBED_NO").setValue('''');',
'    apex.item("P38_CNAME").setValue('''');',
'    apex.item("P38_CSITE").setValue('''');',
'    apex.item("P38_CTREATMENT_TYPE").setValue('''');',
'    apex.item("P38_CMRNO").setValue('''');',
'    apex.item("P38_CGENDER").setValue('''');',
'    apex.item("P38_CAGE").setValue('''');',
'    apex.item("P38_CALLERGIES").setValue('''');',
'    apex.item("P38_CFLAGS").setValue('''');',
'    apex.item("P38_ISOLATION").setValue('''');',
'    apex.item("P38_CDX").setValue('''');',
'    apex.item("P38_CCODE").setValue('''');',
'    apex.item("P38_CRADIATION_NO").setValue('''');',
'    apex.item("P38_CSITE_ID").setValue('''');',
'    apex.item("P38_CFRACTION_ID").setValue('''');',
'    apex.item("P38_CDOCTOR").setValue('''');',
'    apex.item("P38_CPHYSICIST_NAME").setValue('''');',
'    apex.item("P38_CREQ_STATUS").setValue('''');',
'    apex.item("P38_DOCTOR").setValue('''');',
'    apex.item("P38_PHYSICIST").setValue('''');',
'    apex.item("P38_SRNO").setValue('''');',
'    apex.item("P38_RADIATION_NO").setValue('''');',
'    apex.region("image").refresh();',
'    apex.region("patinfo").refresh();',
'    apex.region("radpatdetail").refresh();',
'    //apex.region("radalerts").refresh();',
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
'}',
'',
'#sticky-containter{',
'    position: sticky;',
'    top: calc(var(--ut-header-height) + 50px);',
'}',
'',
'#sidecontainer{',
'    position: sticky;',
'    top: calc(var(--ut-header-height) + 50px);',
'}',
'',
'',
'',
'/* .appt-list .a-CardView-header{',
'    padding: .5rem;',
'}*/',
'/*.appt-list .a-CardView-items {',
'     column-gap: 1550px; ',
'    row-gap: 1550px;',
'} */',
'',
'.ui-dialog-titlebar-close{',
'   display: none  !important;',
'}',
'',
'',
'',
'',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'',
'',
'',
'#P38_FROM_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P38_GROUP_OLD{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P38_TO_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P38_ND_NEXT_EVENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'',
'',
'#P38_DOCTOR_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P38_PHYSIST_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P38_EVENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P38_FROM_DATE_input{',
'     background-color: #FFFFCC !important;',
'}',
'',
'',
'#P38_TO_DATE_input{',
'     background-color: #FFFFCC !important;',
'}',
'',
'/*#P38_GROUP {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}*/',
'',
'',
'#RADQUEUEG1_control_panel{',
'    display: none  !important;',
'}',
'',
'#radpatqueue_ig_report_settings{',
'    display: none;',
'}',
'',
'/*#groupnew .a-GV-status {',
'',
'    display: none;',
'',
'}*/',
'',
'',
'/*#radmachinenew .a-GV-status {',
'',
'    display: none;',
'',
'}*/',
'',
'/*#radpatalert .a-GV-status {',
'',
'    display: none;',
'',
'}*/',
'',
'',
'/*.a-GV-pageRange{',
'    display:none;',
'}*/',
'',
'/*#radpatqueue .a-GV-status {',
'',
'    display: none;',
'',
'}*/',
'',
'',
'',
'#sidecontainer {',
'    overflow: hidden !important;',
'}',
'',
'',
'.patientCountDisplay {',
' ',
'    font-weight: bold;',
' ',
'    color:#00008B;',
' ',
'    text-align: right;',
' ',
'    margin-right: 5px;',
' ',
'     margin-top: 10px;',
' ',
'}',
'',
' ',
'.patientCountDisplay1 {',
' ',
'    font-weight: bold;',
' ',
'    color:#00008B;',
' ',
'    text-align: right;',
' ',
'    margin-right: 5px;',
' ',
'     margin-top: 10px;',
' ',
'}',
'',
'',
'.patientCountDisplay2 {',
' ',
'    font-weight: bold;',
' ',
'    color:#00008B;',
' ',
'    text-align: right;',
' ',
'    margin-right: 5px;',
' ',
'     margin-top: 10px;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(14468116913908215)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250108135621'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4509653596563110)
,p_plug_name=>'Patient Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(288518144184250247)
,p_plug_name=>'Patient Info'
,p_region_name=>'patinfo'
,p_parent_plug_id=>wwv_flow_imp.id(4509653596563110)
,p_region_css_classes=>'custom-card-1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31854716132964934)
,p_plug_name=>'Patient Radiation Details'
,p_region_name=>'radpatdetail'
,p_parent_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49003520254731318)
,p_plug_name=>'Button Container'
,p_parent_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(805407967137601325)
,p_name=>'Image'
,p_region_name=>'image'
,p_parent_plug_id=>wwv_flow_imp.id(4509653596563110)
,p_template=>wwv_flow_imp.id(14489219574908225)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P38_ND_MRNO;',
'',
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
,p_ajax_items_to_submit=>'P38_ND_MRNO'
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
 p_id=>wwv_flow_imp.id(288292003395877166)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288292413317877167)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(288292853040877167)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:ROWID::::::::PICTURES'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_report_column_width=>500
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17914675036390519)
,p_plug_name=>'Forward Remarks'
,p_region_name=>'fwdrmks'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_point=>'REGION_POSITION_04'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35555639596840501)
,p_plug_name=>'Side Container '
,p_region_name=>'sticky-containter'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>380
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(804607247182339210)
,p_name=>'Machine'
,p_region_name=>'queue'
,p_parent_plug_id=>wwv_flow_imp.id(35555639596840501)
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>999
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'t-MediaList--stack'
,p_display_point=>'SUB_REGIONS'
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
'                 WHERE QP.QUEUE_ID = :P38_GROUP',
'                   AND QP.ACTIVE = ''Y'')',
'         ORDER BY MC.MACHINE_TYPE, MC.DESCRIPTION)',
'',
''))
,p_display_condition_type=>'NEVER'
,p_header=>'<!-- <div style="overflow: auto; min-height: 450px; max-height: 450px;"> -->'
,p_footer=>'<!-- </div> -->'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P38_GROUP_OLD'
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
 p_id=>wwv_flow_imp.id(291534774279202934)
,p_query_column_id=>1
,p_column_alias=>'MACHINE_ID'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4509850574563112)
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
 p_id=>wwv_flow_imp.id(291533638196202923)
,p_query_column_id=>3
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(291534363029202930)
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
 p_id=>wwv_flow_imp.id(4510094828563114)
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
 p_id=>wwv_flow_imp.id(4509932231563113)
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
 p_id=>wwv_flow_imp.id(291533954331202926)
,p_query_column_id=>7
,p_column_alias=>'LINK'
,p_column_display_sequence=>50
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47948686189191618)
,p_plug_name=>'Radiotherapy Appointment(s)'
,p_region_name=>'radpatqueue'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM.MRNO QUEUE_MRNO,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PNAME,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RD.SITE_ID) SITE,',
'       HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'       TO_CHAR(RS.VISIT_DATE, ''HH24:MI'') TIME,',
'       TO_CHAR(RS.VISIT_DATE, ''DD-MON-YY'') DATE1,',
'       TO_CHAR(RS.VISIT_DATE, ''DD-MON-YY HH24:MI'') APPOINTMENT_DATE,',
'       TO_CHAR(RS.FRACTION_ID, ''9D00'') FRACTION_ID,',
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
'    DECODE(',
'    NVL((SELECT ''Y'' ',
'         FROM ORDERENTRY.PERFORMANCE_Q Q',
'         WHERE Q.APPT_SR_NO = RS.SR_NO',
'           AND Q.RADIATION_NO IS NOT NULL),',
'        ''N''),',
'    ''Y'', ''Sed'', ',
'    ''N'', NULL',
') AS ANAESTHESIA_REQUIRED,',
'',
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
'       M.PERFORMANCE_TYPE_ID,',
'       RS.SLOT_TYPE_ID,',
'       RS.ROWID SCHEDULE_ROWID,',
'       ORDERENTRY.PKG_IPD_COMMON.GET_BED_DESC(ORDERENTRY.PKG_IPD_COMMON.GET_BED_ID(RM.MRNO)) BED_ID,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) NAME,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RS.SITE_ID) PAT_INFO_SITE,',
'       HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) PAT_INFO_GENDER,',
'       HIS.PKG_PATIENT.GET_AGE(RM.MRNO) PAT_INFO_AGE,',
'       RADIATION.PKG_S18FRM00010.GET_SHOW_ALLERGIES(RM.MRNO) PAT_INFO_ALLERGIES,',
'       RADIATION.PKG_S18FRM00010.FETCH_FLAGS(RM.MRNO) PAT_INFO_FLAGS,',
'       ORDERENTRY.PKG_COMMON_UTIL.GET_PATIENT_ISOLATION_STATUS(RM.MRNO, ''S'') PAT_INFO_ISOLATION_STATUS,',
'       HIS.PKG_PATIENT.GET_CANCER_STATUS(P_MRNO => RM.MRNO) CANCER_STATUS,',
'       RADIATION.PKG_S18FRM00010.FETCH_DNR(RM.MRNO) PAT_INFO_DNR,',
'       RM.MRNO INFO_MRNO,',
'       RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                         P_SITE_ID      => RS.SITE_ID,',
'                                                         P_FRACTION_ID  => RS.FRACTION_ID) PAT_INFO_FRACTIONS,',
'       (SELECT HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID) ',
'          FROM RADIATION.RADIATION_MASTER M',
'         WHERE M.RADIATION_NO = RM.RADIATION_NO) PAT_INFO_DISP_DOCTOR,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => RD.PHYSICIST) PAT_INFO_PHYSICIST_NAME,',
'       RS.SR_NO PAT_INFO_SR_NO,',
'              (SELECT COUNT(*)',
'             FROM RADIATION.SCHEDULE RS',
'            WHERE RS.MACHINE_ID = NVL(:P38_SELECTED_MACHINE_ID, ''~'')',
'              AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P38_FROM_DATE, ''DD-MM-YYYY'')',
'                                        AND TO_DATE(:P38_TO_DATE, ''DD-MM-YYYY''))',
'              AND RS.RADIATION_NO IS NOT NULL',
'         ) -  ( ',
'           SELECT COUNT(*)',
'             FROM RADIATION.SCHEDULE RS',
'            WHERE RS.MACHINE_ID = NVL(:P38_SELECTED_MACHINE_ID, ''~'')',
'              AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P38_FROM_DATE, ''DD-MM-YYYY'')',
'                                        AND TO_DATE(:P38_TO_DATE, ''DD-MM-YYYY''))',
'              AND EXISTS',
'                 (SELECT 1',
'                    FROM RADIATION.SCHEDULE_WORKFLOW SW_SUB',
'                   WHERE SW_SUB.SR_NO = RS.SR_NO',
'                     AND SW_SUB.EVENT_ID = 408)',
'              AND RS.RADIATION_NO IS NOT NULL',
'         ) AS REMAINING_PATIENTS,',
'         RADIATION.PKG_RADIATION.GET_SITE_TREATMENT_TYPES(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                         P_SITE_ID => RS.SITE_ID) TREATMENT_TYPE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_REQUEST',
'         ',
'  FROM RADIATION.MACHINES              M,',
'       RADIATION.SCHEDULE              RS,',
'       RADIATION.SCHEDULE_WORKFLOW     SW,',
'       RADIATION.RADIATION_MASTER      RM,',
'       RADIATION.RADIATION_DETAIL      RD,',
'       RADIATION.DEF_QUEUE_EVENTS      QE,',
'       RADIATION.DEF_SCHEDULE_WORKFLOW DSW',
' WHERE QE.QUEUE_ID = NVL(:P38_GROUP_ID_QUEUE_NEW, ''~'')',
'   AND M.MACHINE_ID = NVL(:P38_SELECTED_MACHINE_ID, ''~'')',
'   AND RS.MACHINE_ID = M.MACHINE_ID',
'   AND RS.SR_NO = SW.SR_NO(+)',
'   AND RS.WFE_NO = SW.WFE_NO(+)',
'   AND RS.RADIATION_NO = RM.RADIATION_NO',
'   AND RD.RADIATION_NO = RM.RADIATION_NO',
'   AND RD.SITE_ID = RS.SITE_ID',
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
'   AND (:P38_EVENT = 0 OR RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                                   P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                                   P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID,',
'                                                                   P_EVENT_ID         => SW.EVENT_ID) =',
'       :P38_EVENT)',
'   AND (:P38_MRNO IS NOT NULL OR RM.MRNO LIKE ''%'' || :P38_MRNO)',
'   AND (:P38_PHYSIST_MRNO IS NULL OR RD.PHYSICIST = :P38_PHYSIST_MRNO)',
'   AND (:P38_DOCTOR_ID IS NULL OR RM.DOCTOR_ID = :P38_DOCTOR_ID)',
'   AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P38_FROM_DATE, ''DD-MM-YYYY'') AND',
'       TO_DATE(:P38_TO_DATE, ''DD-MM-YYYY'') OR',
'       (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(SYSDATE - 7, ''DD-MM-YYYY'') AND',
'       TO_DATE(SYSDATE, ''DD-MM-YYYY'') AND NOT EXISTS',
'        (SELECT 1',
'            FROM RADIATION.SCHEDULE_WORKFLOW S',
'           WHERE S.SR_NO = RS.SR_NO',
'             AND S.EVENT_ID = 408)));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_GROUP_ID_QUEUE_NEW,P38_EVENT,P38_MRNO,P38_PHYSIST_MRNO,P38_DOCTOR_ID,P38_FROM_DATE,P38_TO_DATE,P38_SELECTED_MACHINE_ID'
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
 p_id=>wwv_flow_imp.id(47948919348191621)
,p_name=>'PNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Patient Name</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
,p_static_id=>'pname'
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
 p_id=>wwv_flow_imp.id(47949080640191622)
,p_name=>'SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Site</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949100606191623)
,p_name=>'DISP_DOCTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_DOCTOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>46
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949235317191624)
,p_name=>'TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>56
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949328285191625)
,p_name=>'DATE1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>66
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949453554191626)
,p_name=>'APPOINTMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Appointment Date</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>24
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_imp.id(47949580976191627)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Fraction</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>26
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(47949673923191628)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>76
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949794498191629)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>86
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949832630191630)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>96
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47949982796191631)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>106
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950052975191632)
,p_name=>'IS_PATIENT_ADMITTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PATIENT_ADMITTED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>116
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950112524191633)
,p_name=>'TREATEMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATEMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>126
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950268595191634)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>136
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950304045191635)
,p_name=>'TOTAL_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_FRACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>146
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950458426191636)
,p_name=>'ERROR_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>156
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950572026191637)
,p_name=>'ANAESTHESIA_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANAESTHESIA_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Sed</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>16
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950663715191638)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Remarks</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>36
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>false
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950794480191639)
,p_name=>'SR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SR_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>176
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'srno'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950855295191640)
,p_name=>'PHYSICIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHYSICIST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>186
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47950907626191641)
,p_name=>'REQUEST_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Request Status</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>5
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(47951020238191642)
,p_name=>'APPOINTMENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Appointment Status</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>6
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(47951168002191643)
,p_name=>'SCHEMA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEMA_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>196
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951279591191644)
,p_name=>'WORKFLOW_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>206
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951342363191645)
,p_name=>'WORK_FLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_FLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>216
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951400232191646)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>226
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951596303191647)
,p_name=>'ORDER_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>236
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951610793191648)
,p_name=>'NEXT_EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>246
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951706906191649)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>256
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47951816501191650)
,p_name=>'ENTERED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>266
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49001837002731301)
,p_name=>'NVL(QE.PERFORMABLE,''Y'')'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NVL(QE.PERFORMABLE,''Y'')'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>276
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49001957953731302)
,p_name=>'BG_COLOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BG_COLOUR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>286
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002034757731303)
,p_name=>'TIMEOUT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMEOUT_SRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>296
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002197328731304)
,p_name=>'AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>306
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002206435731305)
,p_name=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GENDER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>316
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002379415731306)
,p_name=>'ALLERGIES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALLERGIES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>326
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002470516731307)
,p_name=>'ADMISSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMISSION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>336
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002511684731308)
,p_name=>'FLAGS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLAGS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>346
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002656098731309)
,p_name=>'ISOLATION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOLATION_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>356
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002789305731310)
,p_name=>'DNR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DNR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>366
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002815871731311)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>376
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49002919456731312)
,p_name=>'SLOT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLOT_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>386
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49004587704731328)
,p_name=>'SCHEDULE_ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>396
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49005306877731336)
,p_name=>'QUEUE_MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>14
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
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
 p_id=>wwv_flow_imp.id(57456692342878117)
,p_name=>'BED_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BED_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>406
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57456765936878118)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>416
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57456880647878119)
,p_name=>'PAT_INFO_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>426
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57456940061878120)
,p_name=>'PAT_INFO_GENDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_GENDER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>436
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457095527878121)
,p_name=>'PAT_INFO_AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_AGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>446
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457153687878122)
,p_name=>'PAT_INFO_ALLERGIES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_ALLERGIES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>456
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457277411878123)
,p_name=>'PAT_INFO_FLAGS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_FLAGS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>466
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457336579878124)
,p_name=>'PAT_INFO_ISOLATION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_ISOLATION_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>476
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457429097878125)
,p_name=>'CANCER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANCER_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>486
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457500647878126)
,p_name=>'PAT_INFO_DNR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_DNR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>496
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
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
 p_id=>wwv_flow_imp.id(57457669232878127)
,p_name=>'INFO_MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INFO_MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>506
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457721817878128)
,p_name=>'PAT_INFO_FRACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_FRACTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>516
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457817612878129)
,p_name=>'PAT_INFO_DISP_DOCTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_DISP_DOCTOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>526
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57457925893878130)
,p_name=>'PAT_INFO_PHYSICIST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_PHYSICIST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>536
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57458021656878131)
,p_name=>'PAT_INFO_SR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_INFO_SR_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>546
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(132159255611943413)
,p_name=>'REMAINING_PATIENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_PATIENTS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>556
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189050642827356907)
,p_name=>'TREATMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>566
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(278415717184867011)
,p_name=>'STATUS_REQUEST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_REQUEST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>576
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47948718060191619)
,p_internal_uid=>47948718060191619
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_no_data_found_message=>'<b>No Patient(s) Found</b>'
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
 p_id=>wwv_flow_imp.id(49007439188731445)
,p_interactive_grid_id=>wwv_flow_imp.id(47948718060191619)
,p_static_id=>'490075'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(49007641597731445)
,p_report_id=>wwv_flow_imp.id(49007439188731445)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15151686087331)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(49004587704731328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45940844257640)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(49005306877731336)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49009005589731454)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47948919348191621)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49009997329731460)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47949080640191622)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49010856178731465)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47949100606191623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49011742606731468)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(47949235317191624)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49012625706731471)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47949328285191625)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49013546110731474)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47949453554191626)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49014424941731477)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47949580976191627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49015349813731480)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(47949673923191628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49016264071731483)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(47949794498191629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49017187536731486)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(47949832630191630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49018050213731489)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(47949982796191631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49018990583731492)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(47950052975191632)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49019838834731495)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(47950112524191633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49020782876731498)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(47950268595191634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49021636723731501)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(47950304045191635)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49022522873731504)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(47950458426191636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49023479167731507)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(47950572026191637)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>42.04259999999999
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49024355801731509)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(47950663715191638)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49025256966731513)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(47950794480191639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49026091757731516)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(47950855295191640)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49026948455731519)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47950907626191641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49027860739731522)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47951020238191642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49028766147731525)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(47951168002191643)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49029603404731528)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(47951279591191644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49030501679731531)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(47951342363191645)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49031471634731533)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(47951400232191646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49032350912731536)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(47951596303191647)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49033284567731539)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(47951610793191648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49034124222731542)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(47951706906191649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49035090256731545)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(47951816501191650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49035907527731548)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(49001837002731301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49036852710731552)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(49001957953731302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49037726026731555)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(49002034757731303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49038608116731557)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(49002197328731304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49039573779731560)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(49002206435731305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49040453014731563)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(49002379415731306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49041317870731565)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(49002470516731307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49042251580731568)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(49002511684731308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49043143545731571)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(49002656098731309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49044044063731574)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(49002789305731310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49044964750731576)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(49002815871731311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49045894807731579)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(49002919456731312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59819913908400758)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(57456692342878117)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59820867571400763)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(57456765936878118)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59821705614400767)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(57456880647878119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59822609857400769)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(57456940061878120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59823576863400772)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(57457095527878121)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59824434154400775)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(57457153687878122)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59825338404400778)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(57457277411878123)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59826257362400781)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(57457336579878124)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59827110472400784)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(57457429097878125)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59828078897400787)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(57457500647878126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59828979162400790)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(57457669232878127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59829857687400793)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(57457721817878128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59830754448400796)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(57457817612878129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59831695508400799)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(57457925893878130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59832566305400802)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(57458021656878131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(132230603756132129)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(132159255611943413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(212143969434015352)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(189050642827356907)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(283519712780274204)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(278415717184867011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(78140000003)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_execution_seq=>5
,p_name=>'VA_ACK_PATIENT'
,p_column_id=>wwv_flow_imp.id(47949453554191626)
,p_background_color=>'#cefffb'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(47951020238191642)
,p_condition_operator=>'C'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Counter Acknowledged'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(114429000006)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_execution_seq=>15
,p_name=>'ANAESTHESIA_REQUIRED'
,p_column_id=>wwv_flow_imp.id(47950572026191637)
,p_background_color=>'#3cfc07'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(47950572026191637)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Sed'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(118837000000)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_execution_seq=>6.25
,p_name=>'VA_INFECTION_SCREEN'
,p_column_id=>wwv_flow_imp.id(47949453554191626)
,p_background_color=>'#fff5ce'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(47951020238191642)
,p_condition_operator=>'C'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Infection Screening'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(138471000001)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_execution_seq=>5.625
,p_name=>'VA_COMPLETE'
,p_column_id=>wwv_flow_imp.id(47949453554191626)
,p_background_color=>'#3cfc07'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(47951020238191642)
,p_condition_operator=>'C'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Complete'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(10216138178732)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_execution_seq=>10
,p_name=>'VA_SENT_TO_TECH'
,p_column_id=>wwv_flow_imp.id(47949453554191626)
,p_background_color=>'#ffe4d2'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(47951020238191642)
,p_condition_operator=>'C'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Sent to Tech'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(12681571185456)
,p_view_id=>wwv_flow_imp.id(49007641597731445)
,p_execution_seq=>7.5
,p_name=>'VA_FRAT'
,p_column_id=>wwv_flow_imp.id(47949453554191626)
,p_background_color=>'#7ffda9'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(47951020238191642)
,p_condition_operator=>'C'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'FRAT Performed'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121324483441782612)
,p_plug_name=>'Patient Count'
,p_region_name=>'patcount'
,p_parent_plug_id=>wwv_flow_imp.id(47948686189191618)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="patientCountDisplay" class="patientCountDisplay">Total Patient(s): <span id="patientCountDisplay1" class="patientCountDisplay1"> </span></div>',
'<div id="patientCountDisplay" class="patientCountDisplay">Remaining Patient(s): <span id="patientCountDisplay2" class="patientCountDisplay2"> </span></div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49005981840731342)
,p_plug_name=>'GroupNew'
,p_region_name=>'groupnew'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT DQ.DESCRIPTION, DQ.QUEUE_ID, ROWID',
'        FROM RADIATION.DEF_QUEUE DQ',
'       WHERE DQ.ACTIVE = ''Y''',
'         AND EXISTS',
'       (SELECT 1',
'                FROM SECURITY.LISTOFVALUES L',
'               WHERE EXISTS (SELECT 1',
'                        FROM SECURITY.MEMBER M',
'                       WHERE M.USERID = :GV_USER_ID',
'                         AND L.GROUPID = M.GROUPID)',
'                 AND L.LOVNAME = ''RADIATION_QUEUE''',
'                 AND L.VALUE = DQ.QUEUE_ID);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'GroupNew'
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
 p_id=>wwv_flow_imp.id(49006181910731344)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Group</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(49006282398731345)
,p_name=>'QUEUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUEUE_ID'
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
 p_id=>wwv_flow_imp.id(49006401439731347)
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
 p_id=>wwv_flow_imp.id(49006086216731343)
,p_internal_uid=>49006086216731343
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
 p_id=>wwv_flow_imp.id(49257072589894975)
,p_interactive_grid_id=>wwv_flow_imp.id(49006086216731343)
,p_static_id=>'492571'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(49257217370894975)
,p_report_id=>wwv_flow_imp.id(49257072589894975)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49257733020894977)
,p_view_id=>wwv_flow_imp.id(49257217370894975)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(49006181910731344)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49258686649894980)
,p_view_id=>wwv_flow_imp.id(49257217370894975)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(49006282398731345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49415453611642349)
,p_view_id=>wwv_flow_imp.id(49257217370894975)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(49006401439731347)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53432871564072624)
,p_plug_name=>'New'
,p_region_name=>'sidecontainer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49006562425731348)
,p_plug_name=>'Machine'
,p_region_name=>'radmachinenew'
,p_parent_plug_id=>wwv_flow_imp.id(53432871564072624)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MACHINE_ID, DESCRIPTION, ROWID, MC.MACHINE_TYPE || ''-'' ||MC.DESCRIPTION ORDER_BY',
'  FROM RADIATION.MACHINES MC',
' WHERE ACTIVE = ''Y''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'   AND MC.PERFORMANCE_TYPE_ID IN',
'       (SELECT QP.PERFORMANCE_TYPE_ID',
'          FROM RADIATION.DEF_QUEUE_PERFORMANCE QP',
'         WHERE QP.QUEUE_ID = :P38_GROUP_ID_QUEUE_NEW',
'           AND QP.ACTIVE = ''Y'')',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_GROUP_ID_QUEUE_NEW'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Machine'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49421632210662901)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
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
 p_id=>wwv_flow_imp.id(49421738138662902)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Machine</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49421803988662903)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53434630251072642)
,p_name=>'ORDER_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Order By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>102
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
 p_id=>wwv_flow_imp.id(49006711483731350)
,p_internal_uid=>49006711483731350
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
 p_id=>wwv_flow_imp.id(49431243318663969)
,p_interactive_grid_id=>wwv_flow_imp.id(49006711483731350)
,p_static_id=>'494313'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(49431493318663969)
,p_report_id=>wwv_flow_imp.id(49431243318663969)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49431960693663970)
,p_view_id=>wwv_flow_imp.id(49431493318663969)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(49421632210662901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49432820808663973)
,p_view_id=>wwv_flow_imp.id(49431493318663969)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(49421738138662902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(49433757152663975)
,p_view_id=>wwv_flow_imp.id(49431493318663969)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(49421803988662903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(54320138794453430)
,p_view_id=>wwv_flow_imp.id(49431493318663969)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(53434630251072642)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52877323596214618)
,p_plug_name=>'Patient Alert(s)'
,p_region_name=>'radpatalert'
,p_parent_plug_id=>wwv_flow_imp.id(53432871564072624)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       ALERT_SRNO,',
'       RA.ALERT_ID,',
'       RA.ALERT_TEXT ALERT_TEXT,',
'       A.ALERT_TYPE,',
'       RA.STATUS_ID,',
'       NULL SIGN_BY,',
'       SIGN_DATE,',
'       CASE',
'         WHEN A.ALERT_TYPE = ''E'' THEN',
'          1',
'         WHEN A.ALERT_TYPE = ''W'' THEN',
'          2',
'         WHEN A.ALERT_TYPE = ''I'' THEN',
'          3',
'         ELSE',
'          4',
'       END PRIORITY,',
'       A.DISMISS_ALLOWED,',
'       CASE',
'         WHEN A.ALERT_TYPE = ''E'' THEN',
'          ''N''',
'         ELSE',
'          ''Y''',
'       END ACKNOWLEDGE,',
'       RA.ROWID ALERTS_ROWID,',
'          CASE',
'        WHEN (SELECT COUNT(1)',
'              FROM SECURITY.LISTOFVALUES L',
'              WHERE EXISTS (',
'                      SELECT 1',
'                      FROM SECURITY.MEMBER M',
'                      WHERE M.USERID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''USERID'')',
'                        AND L.GROUPID = M.GROUPID)',
'              AND L.LOVNAME = ''RAD_DISMISS_ALERT''',
'              AND L.VALUE = RA.ALERT_ID) > 0 ',
'        THEN ''Y''',
'        ELSE ''N''',
'    END DISMISS_ENABLED',
'  FROM RADIATION.RAD_ALERTS RA, RADIATION.DEF_ALERTS A',
' WHERE RA.ALERT_ID = A.ALERT_ID',
'   AND RA.RADIATION_NO = :P38_ND_RADIATION_NO',
'   AND RA.SITE_ID = :P38_ND_SITE_ID',
'   AND RA.SR_NO = :P38_ND_SR_NO',
'   AND RA.STATUS_ID = ''020''',
'   AND ((:P38_GROUP_ID_QUEUE_NEW IS NULL AND',
'       :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE IS NULL AND',
'       :P38_ND_EVENT_ID IS NULL) OR EXISTS',
'        (SELECT 1',
'           FROM RADIATION.DEF_QUEUE_EVENT_ALERTS EA',
'          WHERE EA.QUEUE_ID = :P38_GROUP_ID_QUEUE_NEW',
'            AND EA.PERFORMANCE_TYPE_ID = :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE',
'            AND EA.EVENT_ID = :P38_ND_EVENT_ID',
'            AND EA.ALERT_ID = RA.ALERT_ID',
'            AND EA.ACTIVE = ''Y''));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_ND_RADIATION_NO,P38_ND_SITE_ID,P38_ND_SR_NO,P38_GROUP_ID_QUEUE_NEW,P38_PERFORMANCE_TYPE_ID_NEW_QUEUE,P38_ND_EVENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Patient Alert(s)'
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
 p_id=>wwv_flow_imp.id(52877827136214623)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52877977386214624)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(52878078377214625)
,p_name=>'ALERT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878105235214626)
,p_name=>'ALERT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878277472214627)
,p_name=>'ALERT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(52878386229214628)
,p_name=>'ALERT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878497447214629)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878571650214630)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878601414214631)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878729624214632)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878842603214633)
,p_name=>'DISMISS_ALLOWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISMISS_ALLOWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52878918998214634)
,p_name=>'ACKNOWLEDGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACKNOWLEDGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52879041640214635)
,p_name=>'ALERTS_ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERTS_ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189051662903356917)
,p_name=>'DISMISS_ENABLED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISMISS_ENABLED'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(52877448530214619)
,p_internal_uid=>52877448530214619
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'<b>No Alert(s) Found</b>'
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
 p_id=>wwv_flow_imp.id(53010033849138871)
,p_interactive_grid_id=>wwv_flow_imp.id(52877448530214619)
,p_static_id=>'530101'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(53010276416138871)
,p_report_id=>wwv_flow_imp.id(53010033849138871)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53010750554138873)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(52877827136214623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53011679110138876)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(52877977386214624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53012568857138879)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(52878078377214625)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53013423464138882)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(52878105235214626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53014383012138884)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(52878277472214627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>400
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53015219407138887)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(52878386229214628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53016193032138889)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(52878497447214629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53017010141138892)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(52878571650214630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53017906005138895)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(52878601414214631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53018879113138897)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(52878729624214632)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53019725345138900)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(52878842603214633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53020655901138903)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(52878918998214634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53021553787138905)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(52879041640214635)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(217565279664015811)
,p_view_id=>wwv_flow_imp.id(53010276416138871)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(189051662903356917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(516434956475567688)
,p_plug_name=>'Radiotherapy Appointment(s)'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51225446896879624)
,p_plug_name=>'Radiation Alerts'
,p_parent_plug_id=>wwv_flow_imp.id(516434956475567688)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>51
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT RADIATION_NO,',
'             SITE_ID,',
'             ALERT_SRNO,',
'             ALERT_ID,',
'             ALERT_TEXT,',
'             ALERT_TYPE,',
'             STATUS_ID,',
'             SIGN_BY,',
'             SIGN_DATE,',
'             DISMISS_ALLOWED,',
'             ACKNOWLEDGE',
'        FROM (SELECT RADIATION_NO,',
'                     SITE_ID,',
'                     ALERT_SRNO,',
'                     RA.ALERT_ID,',
'                     RA.ALERT_TEXT ALERT_TEXT,',
'                     A.ALERT_TYPE,',
'                     RA.STATUS_ID,',
'                     NULL SIGN_BY,',
'                     SIGN_DATE,',
'                     CASE',
'                       WHEN A.ALERT_TYPE = ''E'' THEN',
'                        1',
'                       WHEN A.ALERT_TYPE = ''W'' THEN',
'                        2',
'                       WHEN A.ALERT_TYPE = ''I'' THEN',
'                        3',
'                       ELSE',
'                        4',
'                     END PRIORITY,',
'                     A.DISMISS_ALLOWED,',
'                     CASE',
'                       WHEN A.ALERT_TYPE = ''E'' THEN',
'                        ''N''',
'                       ELSE',
'                        ''Y''',
'                     END ACKNOWLEDGE',
'                FROM RADIATION.RAD_ALERTS RA, RADIATION.DEF_ALERTS A',
'               WHERE RA.ALERT_ID = A.ALERT_ID',
'                 AND RA.RADIATION_NO = :P38_ND_RADIATION_NO',
'                 AND RA.SITE_ID = :P38_ND_SITE_ID',
'                 AND RA.SR_NO = :P38_ND_SR_NO',
'                 AND RA.STATUS_ID = ''020''',
'                 AND ((:P38_GROUP_ID_QUEUE_NEW IS NULL AND',
'                     :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE IS NULL AND',
'                     :P38_ND_EVENT_ID IS NULL) OR EXISTS',
'                      (SELECT 1',
'                         FROM RADIATION.DEF_QUEUE_EVENT_ALERTS EA',
'                        WHERE EA.QUEUE_ID = :P38_GROUP_ID_QUEUE_NEW',
'                          AND EA.PERFORMANCE_TYPE_ID =',
'                              :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE',
'                          AND EA.EVENT_ID = :P38_ND_EVENT_ID',
'                          AND EA.ALERT_ID = RA.ALERT_ID',
'                          AND EA.ACTIVE = ''Y'')));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P38_ND_RADIATION_NO,P38_ND_SITE_ID,P38_ND_SR_NO,P38_PERFORMANCE_TYPE_ID_NEW_QUEUE,P38_ND_EVENT_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation Alerts'
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
 p_id=>wwv_flow_imp.id(51225692951879626)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(51225700114879627)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Site Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
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
 p_id=>wwv_flow_imp.id(51225848888879628)
,p_name=>'ALERT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Alert Srno'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(51225984111879629)
,p_name=>'ALERT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Alert Id'
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
 p_id=>wwv_flow_imp.id(51226077473879630)
,p_name=>'ALERT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Alert Text'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(51226151837879631)
,p_name=>'ALERT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALERT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(51226276725879632)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status Id'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(51226324690879633)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sign By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(51226449435879634)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Sign Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(51226536485879635)
,p_name=>'DISMISS_ALLOWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISMISS_ALLOWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dismiss Allowed'
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
 p_id=>wwv_flow_imp.id(51226630036879636)
,p_name=>'ACKNOWLEDGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACKNOWLEDGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Acknowledge'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(51225524317879625)
,p_internal_uid=>51225524317879625
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(51707847024406674)
,p_interactive_grid_id=>wwv_flow_imp.id(51225524317879625)
,p_static_id=>'517079'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(51708046140406674)
,p_report_id=>wwv_flow_imp.id(51707847024406674)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51708562003406676)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(51225692951879626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51709417819406679)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(51225700114879627)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51710390673406682)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(51225848888879628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51711216000406685)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(51225984111879629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51712117996406688)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(51226077473879630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51713062837406691)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(51226151837879631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51713918878406694)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(51226276725879632)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51714883287406697)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(51226324690879633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51715747505406700)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(51226449435879634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51716652719406703)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(51226536485879635)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51717532263406706)
,p_view_id=>wwv_flow_imp.id(51708046140406674)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(51226630036879636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(804541504846956826)
,p_plug_name=>'Radiotherapy Appointment(s)'
,p_region_name=>'RADQUEUEG1'
,p_parent_plug_id=>wwv_flow_imp.id(516434956475567688)
,p_region_css_classes=>'highlight appt-list rad-custom-card'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>43
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null card,',
'       RM.MRNO MRNO,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PNAME,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => RD.SITE_ID) SITE,',
'       HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'       TO_CHAR(RS.VISIT_DATE, ''HH24:MI'') TIME,',
'       TO_CHAR(RS.VISIT_DATE, ''DD-MON-YY'') DATE1,',
'       TO_CHAR(RS.VISIT_DATE, ''DD-MON-YY HH24:MI'') APPOINTMENT_DATE,',
'       TO_CHAR(RS.FRACTION_ID,''9D00'') FRACTION_ID,',
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
'       M.PERFORMANCE_TYPE_ID,',
'       :P38_GROUP QUEUE_ID,',
'       RS.SLOT_TYPE_ID',
'  FROM RADIATION.MACHINES              M,',
'       RADIATION.SCHEDULE              RS,',
'       RADIATION.SCHEDULE_WORKFLOW     SW,',
'       RADIATION.RADIATION_MASTER      RM,',
'       RADIATION.RADIATION_DETAIL      RD,',
'       RADIATION.DEF_QUEUE_EVENTS      QE,',
'       RADIATION.DEF_SCHEDULE_WORKFLOW DSW',
' WHERE M.MACHINE_ID = :P38_ND_MACHINE_ID',
'   AND RS.MACHINE_ID = M.MACHINE_ID',
'   AND RS.SR_NO = SW.SR_NO(+)',
'   AND RS.WFE_NO = SW.WFE_NO(+)',
'   AND RS.RADIATION_NO = RM.RADIATION_NO',
'   AND RD.RADIATION_NO = RM.RADIATION_NO',
'   AND RD.SITE_ID = RS.SITE_ID',
'   AND QE.QUEUE_ID = :P38_GROUP',
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
'   AND (:P38_EVENT = 0 OR RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                                   P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                                   P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID,',
'                                                                   P_EVENT_ID         => SW.EVENT_ID) =',
'       :P38_EVENT)',
'   AND (:P38_MRNO IS NOT NULL OR RM.MRNO LIKE ''%'' || :P38_MRNO)',
'   AND (:P38_PHYSIST_MRNO IS NULL OR RD.PHYSICIST = :P38_PHYSIST_MRNO)',
'   AND (:P38_DOCTOR_ID IS NULL OR RM.DOCTOR_ID = :P38_DOCTOR_ID)',
'   AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P38_FROM_DATE, ''DD-MM-YYYY'') AND',
'       TO_DATE(:P38_TO_DATE, ''DD-MM-YYYY'') OR',
'       (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(SYSDATE - 7, ''DD-MM-YYYY'') AND',
'       TO_DATE(SYSDATE, ''DD-MM-YYYY'') AND NOT EXISTS',
'        (SELECT 1',
'            FROM RADIATION.SCHEDULE_WORKFLOW S',
'           WHERE S.SR_NO = RS.SR_NO',
'             AND S.EVENT_ID = 408)))',
' ORDER BY 8;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P38_ND_MACHINE_ID,P38_QUEUE_ID,P38_CMRNO,P38_PHYSIST_MRNO,P38_DOCTOR_ID,P38_TO_DATE,P38_FROM_DATE,P38_GROUP_OLD,P38_EVENT'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(6410060693255402)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'50'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FARHANAKRAM'
,p_internal_uid=>6410060693255402
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410169523255403)
,p_db_column_name=>'MRNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'MRNO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410256056255404)
,p_db_column_name=>'PNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410300535255405)
,p_db_column_name=>'SITE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Site'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410462850255406)
,p_db_column_name=>'DISP_DOCTOR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Disp Doctor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410568721255407)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410775532255409)
,p_db_column_name=>'OC_SERIAL_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Oc Serial No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410827565255410)
,p_db_column_name=>'REMAINING_FRACTION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remaining Fraction'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6410985229255411)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411090587255412)
,p_db_column_name=>'SITE_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411182432255413)
,p_db_column_name=>'IS_PATIENT_ADMITTED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Is Patient Admitted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411217869255414)
,p_db_column_name=>'TREATEMENT_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Treatement Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411395547255415)
,p_db_column_name=>'MACHINE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411482382255416)
,p_db_column_name=>'TOTAL_FRACTION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Total Fraction'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411543751255417)
,p_db_column_name=>'ERROR_REASON'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Error Reason'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411686873255418)
,p_db_column_name=>'ANAESTHESIA_REQUIRED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Anaesthesia Required'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411796152255419)
,p_db_column_name=>'REMARKS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411857805255420)
,p_db_column_name=>'SR_NO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sr No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6411921019255421)
,p_db_column_name=>'PHYSICIST_NAME'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Physicist Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412003544255422)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412150824255423)
,p_db_column_name=>'APPOINTMENT_STATUS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Appointment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412277090255424)
,p_db_column_name=>'SCHEMA_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Schema Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412385483255425)
,p_db_column_name=>'WORKFLOW_TYPE_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Workflow Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412480118255426)
,p_db_column_name=>'WORK_FLOW_ID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Work Flow Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412584989255427)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Event Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412657216255428)
,p_db_column_name=>'ORDER_BY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Order By'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412799090255429)
,p_db_column_name=>'NEXT_EVENT_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Next Event Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412828018255430)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6412970755255431)
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
 p_id=>wwv_flow_imp.id(6413001539255432)
,p_db_column_name=>'NVL(QE.PERFORMABLE,''Y'')'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Nvl(qe.performable,&#x27;y&#x27;)'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413169628255433)
,p_db_column_name=>'BG_COLOUR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Bg Colour'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413271374255434)
,p_db_column_name=>'TIMEOUT_SRNO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Timeout Srno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413328508255435)
,p_db_column_name=>'AGE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Age'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413412389255436)
,p_db_column_name=>'GENDER'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413509129255437)
,p_db_column_name=>'ALLERGIES'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Allergies'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413689115255438)
,p_db_column_name=>'ADMISSION_NO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Admission No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413731928255439)
,p_db_column_name=>'FLAGS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Flags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413804269255440)
,p_db_column_name=>'ISOLATION_STATUS'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Isolation Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6413934250255441)
,p_db_column_name=>'DNR'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Dnr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6414023172255442)
,p_db_column_name=>'FORWARD'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Forward'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6414185074255443)
,p_db_column_name=>'PERFORMANCE_TYPE_ID'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Performance Type Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6414350717255445)
,p_db_column_name=>'TIME'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Time'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6414401112255446)
,p_db_column_name=>'DATE1'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Date1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6414288327255444)
,p_db_column_name=>'CARD'
,p_display_order=>450
,p_column_identifier=>'AP'
,p_column_label=>'Radiation Patient List'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'TMPL_PATIENTCARD-RADIATION'
,p_heading_alignment=>'LEFT'
,p_attribute_01=>'#TIME#'
,p_attribute_02=>'#DATE1#'
,p_attribute_03=>'#PNAME#'
,p_attribute_04=>'#MRNO#'
,p_attribute_05=>'#SITE#'
,p_attribute_06=>'#REQUEST_STATUS#'
,p_attribute_07=>'#DISP_DOCTOR#'
,p_attribute_08=>'#PHYSICIST_NAME#'
,p_attribute_09=>'#FRACTION_ID#'
,p_attribute_10=>'#SITE#'
,p_attribute_11=>'#APPOINTMENT_STATUS#'
,p_attribute_12=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" style="width:100px; height: 25px;" class="t-button t-button--primary" onclick="forward(''#MRNO#'', ''#SR_NO#'', ''#SITE#'', ''#RADIATION_NO#'', ''#QUEUE_ID#'', ''#PERFORMANCE_TYPE_ID#'', ''#SCHEMA_ID#'', ''#WORKFLOW_TYPE_ID#'', ''#WORK_FLOW_ID#'''
||', ''#NEXT_EVENT_ID#'', ''#REMARKS#'')">Forward</button>',
'',
'<button type="button" style="width:100px; height: 25px;" class="t-button t-button--primary" onclick="sendBack(''#MRNO#'', ''#SR_NO#'', ''#SITE#'', ''#RADIATION_NO#'', ''#QUEUE_ID#'', ''#PERFORMANCE_TYPE_ID#'', ''#SCHEMA_ID#'', ''#WORKFLOW_TYPE_ID#'', ''#WORK_FLOW_ID#'
||''', ''#NEXT_EVENT_ID#'', ''#REMARKS#'')">Back</button>',
'',
'<button type="button" style="width:100px; height: 25px;" class="t-button t-button--primary" onclick="history()">History</button>',
'',
'<button type="button" style="width:100px; height: 25px;" class="t-button t-button--primary" onclick="openRemarksDialog()">Remarks</button>',
''))
,p_attribute_13=>'#REMARKS#'
,p_attribute_14=>'#RADIATION_NO#'
,p_attribute_15=>'#SR_NO#'
,p_attribute_17=>'#MACHINE_ID#'
,p_attribute_18=>'#PERFORMANCE_TYPE_ID#'
,p_attribute_19=>'#SCHEMA_ID#'
,p_attribute_20=>'#WORKFLOW_TYPE_ID#'
,p_attribute_21=>'#WORK_FLOW_ID#'
,p_attribute_22=>'#NEXT_EVENT_ID#'
,p_attribute_23=>'#QUEUE_ID#'
,p_attribute_24=>'#LINK#'
,p_attribute_25=>'#IS_PATIENT_ADMITTED#'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16631046660318515)
,p_db_column_name=>'QUEUE_ID'
,p_display_order=>460
,p_column_identifier=>'AS'
,p_column_label=>'Queue Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2967406260324120)
,p_db_column_name=>'SLOT_TYPE_ID'
,p_display_order=>470
,p_column_identifier=>'AT'
,p_column_label=>'Slot Type Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38981870369179903)
,p_db_column_name=>'FRACTION_ID'
,p_display_order=>480
,p_column_identifier=>'AU'
,p_column_label=>'Fraction Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6548136393423057)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'65482'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CARD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(804541753325956828)
,p_plug_name=>'Radiation Queue Filter '
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14506410700908232)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(804606629204339204)
,p_plug_name=>'Radiation Alerts '
,p_region_name=>'radalerts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14489219574908225)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RESULT CLOB;',
'BEGIN',
'',
'  IF :P38_ND_MRNO IS NOT NULL THEN',
'  ',
'    FOR REC IN (SELECT ''<div class="t-Alert t-Alert--horizontal t-Alert--defaultIcons t-Alert--removeHeading js-removeLandmark t-Alert--'' || CASE',
'                          WHEN ALERT_TYPE = ''E'' THEN',
'                           ''danger''',
'                          WHEN ALERT_TYPE = ''W'' THEN',
'                           ''warning''',
'                          ELSE',
'                           ''info''',
'                        END || ''" id="'' || RADIATION_NO || ''-'' || SITE_ID || ''-'' ||',
'                        ALERT_SRNO || ''" role="region" aria-label="Alert Region">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon padding-sm">',
'      <span class="t-Icon " aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content padding-sm">',
'      <div class="t-Alert-body"><span>'' || ALERT_TEXT ||',
'                        ''</span>',
'    <div class="u-pullRight">',
'',
'                 '' || CASE',
'                          WHEN DISMISS_ALLOWED = ''Y'' OR',
'                               (ACKNOWLEDGE = ''N'' AND',
'                               (SELECT COUNT(1)',
'                                   FROM SECURITY.LISTOFVALUES L',
'                                  WHERE EXISTS',
'                                  (SELECT 1',
'                                           FROM SECURITY.MEMBER M',
'                                          WHERE M.USERID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''USERID'')',
'                                            AND L.GROUPID = M.GROUPID)',
'                                    AND L.LOVNAME = ''RAD_DISMISS_ALERT''',
'                                    AND L.VALUE = ALERT_ID) > 0) THEN',
'                           ''<button type="button" class="t-Button" onclick=dismissAlert('' || ''"'' ||',
'                           RADIATION_NO || ''"'' || '','' || ''"'' || SITE_ID || ''"'' || '','' || ''"'' ||',
'                           ALERT_SRNO || ''"'' || '')>Dismiss</button>''',
'                          ELSE',
'                           NULL',
'                        END ||',
'                        ''<button type="button" class="t-Button" onclick=ackAlert('' || ''"'' ||',
'                        RADIATION_NO || ''"'' || '','' || ''"'' || SITE_ID || ''"'' || '','' || ''"'' ||',
'                        ALERT_SRNO || ''"'' || '')>Acknowledge</button>',
'                            ',
'                            ',
'',
'    </div>',
'    </div>',
'    </div>',
'  </div>',
'</div>'' html',
'                  FROM (SELECT RADIATION_NO,',
'                               SITE_ID,',
'                               ALERT_SRNO,',
'                               RA.ALERT_ID,',
'                               RA.ALERT_TEXT ALERT_TEXT,',
'                               A.ALERT_TYPE,',
'                               RA.STATUS_ID,',
'                               NULL SIGN_BY,',
'                               SIGN_DATE,',
'                               CASE',
'                                 WHEN A.ALERT_TYPE = ''E'' THEN',
'                                  1',
'                                 WHEN A.ALERT_TYPE = ''W'' THEN',
'                                  2',
'                                 WHEN A.ALERT_TYPE = ''I'' THEN',
'                                  3',
'                                 ELSE',
'                                  4',
'                               END PRIORITY,',
'                               A.DISMISS_ALLOWED,',
'                               CASE',
'                                 WHEN A.ALERT_TYPE = ''E'' THEN',
'                                  ''N''',
'                                 ELSE',
'                                  ''Y''',
'                               END ACKNOWLEDGE',
'                          FROM RADIATION.RAD_ALERTS RA,',
'                               RADIATION.DEF_ALERTS A',
'                         WHERE RA.ALERT_ID = A.ALERT_ID',
'                           AND EXISTS',
'                         (SELECT 1',
'                                  FROM RADIATION.SCHEDULE               S,',
'                                       RADIATION.MACHINES               M,',
'                                       RADIATION.DEF_QUEUE_EVENT_ALERTS EA',
'                                 WHERE S.SR_NO = NVL(:P38_ND_SR_NO, ''~'')',
'                                   AND S.RADIATION_NO = RA.RADIATION_NO',
'                                   AND S.SITE_ID = RA.SITE_ID',
'                                   AND M.MACHINE_ID = S.MACHINE_ID',
'                                   AND M.PERFORMANCE_TYPE_ID =',
'                                       EA.PERFORMANCE_TYPE_ID',
'                                   AND EA.ALERT_ID = RA.ALERT_ID',
'                                   AND EA.ACTIVE = ''Y''',
'                                   AND EA.EVENT_ID = :P38_ND_EVENT_ID',
'                                   AND EA.QUEUE_ID = :P38_GROUP)',
'                           AND RA.STATUS_ID = ''020'')',
'                 ORDER BY 1, PRIORITY) LOOP',
'      L_RESULT := L_RESULT || REC.HTML;',
'    END LOOP;',
'    RETURN L_RESULT;',
'  ELSE',
'    RETURN NULL;',
'  END IF;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P38_ND_SR_NO,P38_ND_MRNO'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(288293537266877171)
,p_button_sequence=>30
,p_button_name=>'Populate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Populate Radiation Patient List using Filters '
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(35556324890840508)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_button_name=>'ReloadAlerts'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reload Radiation Alerts'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17915184921390524)
,p_button_sequence=>120
,p_button_name=>'New_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_image_alt=>'New 1'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34868621427221016)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_button_name=>'RefreshPage'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Appointment Queue'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17761187756646610)
,p_button_sequence=>190
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49004022111731323)
,p_button_sequence=>222
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'Forward'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--gapLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Forw<u>a</u>rd</b>'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''A'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49004187707731324)
,p_button_sequence=>232
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'Sendback'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b><u>S</u>end Back</b>'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''S'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49003365750731316)
,p_button_sequence=>242
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'Remarks'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b><u>R</u>emarks</b>'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'accesskey=''R'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49004308831731326)
,p_button_sequence=>252
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'History'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b><u>P</u>atient Pathway History</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-history'
,p_button_cattributes=>'accesskey=''P'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17916566744390538)
,p_button_sequence=>262
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'ButtonRequestAnesthesia'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Request Anesthesia</b>'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31855538589964942)
,p_button_sequence=>272
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'RadiationReports'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Reports '
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31367541119760146)
,p_button_sequence=>282
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'ClinicalMenu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Physician Menu'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31367435851760145)
,p_button_sequence=>292
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'RadiationMenu'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Menu'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34867611590221006)
,p_button_sequence=>302
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'RadiationSchedule'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Scheduling '
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57455279349878103)
,p_button_sequence=>312
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'RadiationScheduleView'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Schedule View'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121326781301782635)
,p_button_sequence=>322
,p_button_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_button_name=>'PatientVitalSigns'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Patient Monitoring'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189051595887356916)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52877323596214618)
,p_button_name=>'Dismiss'
,p_button_static_id=>'btndismiss'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dismiss'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52879219883214637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52877323596214618)
,p_button_name=>'Ack'
,p_button_static_id=>'btnack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acknowledge'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52879300113214638)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(52877323596214618)
,p_button_name=>'Reload'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reload'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17915447119390527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17914675036390519)
,p_button_name=>'ExitRemarksDialog'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'<span class="fa fa-sign-out" aria-hidden="true"></span>'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2531255526924102)
,p_name=>'P38_ND_MRNO'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2966739038324113)
,p_name=>'P38_P_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(804541504846956826)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4508763686563101)
,p_name=>'P38_CGENDER'
,p_item_sequence=>152
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(4508838134563102)
,p_name=>'P38_CAGE'
,p_item_sequence=>142
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(4508998465563103)
,p_name=>'P38_CALLERGIES'
,p_item_sequence=>72
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(4509039778563104)
,p_name=>'P38_CFLAGS'
,p_item_sequence=>82
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(4509125116563105)
,p_name=>'P38_ISOLATION'
,p_item_sequence=>92
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(4509227790563106)
,p_name=>'P38_CDX'
,p_item_sequence=>102
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(4509361209563107)
,p_name=>'P38_CCODE'
,p_item_sequence=>112
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(16631958914318524)
,p_name=>'P38_ND_SR_NO'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17914705020390520)
,p_name=>'P38_FORWARD_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17914675036390519)
,p_prompt=>'Forward Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>12
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19226964745955304)
,p_name=>'P38_ND_NEXT_EVENT'
,p_item_sequence=>212
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'<b>Forward To</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT DESCRIPTION, ID',
'    FROM (SELECT RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(A.DECISION_ID) DESCRIPTION,',
'                 A.DECISION_ID ID',
'            FROM (SELECT TO_NUMBER(:P38_ND_NEXT_EVENT_ID) DECISION_ID',
'                    FROM DUAL',
'                   WHERE TO_NUMBER(:P38_ND_NEXT_EVENT_ID) IS NOT NULL',
'                  UNION',
'                  SELECT ED.DECISION_ID',
'                    FROM DEFINITIONS.EVENT_DECISION ED',
'                   WHERE ED.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'                     AND ED.PURCHASE_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'                     AND ED.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'                     AND ED.EVENT_ID = :P38_ND_EVENT_ID',
'                  UNION',
'                  SELECT QE.EVENT_ID',
'                    FROM RADIATION.DEF_QUEUE_EVENTS     QE,',
'                         DEFINITIONS.PR_TYPE_FLOW_EVENT FE,',
'                         DEFINITIONS.EVENT              EV',
'                   WHERE QE.QUEUE_ID = :P38_GROUP',
'                     AND QE.EVENT_ID = FE.EVENT_ID',
'                     AND FE.EVENT_ID = EV.EVENT_ID',
'                     AND QE.PERFORMABLE = ''Y''',
'                     AND EV.USER_RUNTIME = ''Y'') A',
'          ',
'           WHERE NOT EXISTS',
'           (SELECT 1',
'                    FROM RADIATION.SCHEDULE_WORKFLOW RDW',
'                   WHERE RDW.SR_NO = :P38_ND_SR_NO',
'                     AND RDW.EVENT_ID = A.DECISION_ID',
'                     AND RDW.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'                     AND RDW.WORKFLOW_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'                     AND RDW.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'                     AND RDW.EVENT_ID = :P38_ND_EVENT_ID));',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P38_ND_NEXT_EVENT_ID,P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_GROUP_OLD,P38_ND_SR_NO'
,p_ajax_items_to_submit=>'P38_ND_NEXT_EVENT_ID,P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_GROUP_OLD,P38_ND_SR_NO'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>60
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19227041725955305)
,p_name=>'P38_ND_SCHEMA_ID'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19227122592955306)
,p_name=>'P38_ND_PURCHASE_TYPE_ID'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19227220543955307)
,p_name=>'P38_ND_WORK_FLOW_ID'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19227371336955308)
,p_name=>'P38_ND_EVENT_ID'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19227490575955309)
,p_name=>'P38_ND_NEXT_EVENT_ID'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19422914460399827)
,p_name=>'P38_ALERT_RAD_NO'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19423025977399828)
,p_name=>'P38_ALERT_RAD_SITE_ID'
,p_item_sequence=>270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19423193589399829)
,p_name=>'P38_ALERT_SRNO'
,p_item_sequence=>280
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31854809156964935)
,p_name=>'P38_REMAINING_FRACTIONS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_prompt=>'<b><p style="color:#00008B">Fraction No</p></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31854968762964936)
,p_name=>'P38_DOCTOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_prompt=>'<b><p style="color:#00008B">Doctor</p></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31855000858964937)
,p_name=>'P38_PHYSICIST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_prompt=>'<b><p style="color:#00008B">Physicist</p></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31855130918964938)
,p_name=>'P38_RADIATION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_prompt=>'<b><p style="color:#00008B">Radiation No</p></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31855279208964939)
,p_name=>'P38_SRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_prompt=>'<b><p style="color:#00008B">SR Number</p></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35556662449840511)
,p_name=>'P38_SITE_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35556790499840512)
,p_name=>'P38_FRACTION_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35556821923840513)
,p_name=>'P38_PERFORMANCE_TYPE_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31854716132964934)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43330930711050231)
,p_name=>'P38_TXT_URL'
,p_item_sequence=>300
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43331788929050239)
,p_name=>'P38_CLEAR_REMOVE_FROM_LIST'
,p_item_sequence=>310
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49006699476731349)
,p_name=>'P38_GROUP'
,p_item_sequence=>320
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49424781065662932)
,p_name=>'P38_PERFORMANCE_TYPE_ID_NEW_QUEUE'
,p_item_sequence=>330
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49425304446662938)
,p_name=>'P38_ND_RADIATION_NO'
,p_item_sequence=>340
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50038411865911040)
,p_name=>'P38_ND_SITE_ID'
,p_item_sequence=>290
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51227389429879643)
,p_name=>'P38_CTOTAL_FRACTRIONS'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Fraction No'
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
 p_id=>wwv_flow_imp.id(51227477429879644)
,p_name=>'P38_CDOCTOR'
,p_item_sequence=>42
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Doctor'
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
 p_id=>wwv_flow_imp.id(51227552191879645)
,p_name=>'P38_CPHYSICIST_NAME'
,p_item_sequence=>122
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Physicist'
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
 p_id=>wwv_flow_imp.id(51227693440879646)
,p_name=>'P38_CRADIATION_NO'
,p_item_sequence=>172
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Doctor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51227766138879647)
,p_name=>'P38_CSITE_ID'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Doctor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51227899495879648)
,p_name=>'P38_CFRACTION_ID'
,p_item_sequence=>202
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Doctor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51227965546879649)
,p_name=>'P38_CSRNO'
,p_item_sequence=>132
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'SR No'
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
 p_id=>wwv_flow_imp.id(52879632489214641)
,p_name=>'P38_ND_ALERT_SRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52877323596214618)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52879724224214642)
,p_name=>'P38_ALERT_SUCCESS_MESSAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52877323596214618)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52879875340214643)
,p_name=>'P38_ALERT_FAILURE_MESSAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52877323596214618)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53127221173499208)
,p_name=>'P38_ND_FRACTION_ID'
,p_item_sequence=>350
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53129013674499226)
,p_name=>'P38_GROUP_ID_QUEUE_NEW'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53430641671072602)
,p_name=>'P38_SELECTED_MACHINE_ID'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53432336905072619)
,p_name=>'P38_ACK_ALLOWED'
,p_item_sequence=>360
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54339385874519541)
,p_name=>'P38_CSITE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Site'
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
 p_id=>wwv_flow_imp.id(55372395454424828)
,p_name=>'P38_IS_AUTHORISE_TO_ENTER_REQUEST_ANAESTHESIA'
,p_item_sequence=>370
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57458295446878133)
,p_name=>'P38_CBED_ID'
,p_item_sequence=>52
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(75180228611765317)
,p_name=>'P38_ISOLATION_ALERT'
,p_item_sequence=>332
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79587172696019501)
,p_name=>'P38_RADIATION_QUEUE_DEFAULTS'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79591442765019544)
,p_name=>'P38_EVENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_prompt=>'<b>Event</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NVL(QE.SHORT_DESC, E.DESCRIPTION) AS DESCRIPTION,',
'                QE.EVENT_ID AS ID',
'  FROM RADIATION.DEF_QUEUE_EVENTS QE, DEFINITIONS.EVENT E',
' WHERE QE.QUEUE_ID = :P38_GROUP',
'   AND E.EVENT_ID = QE.EVENT_ID',
'   AND QE.ACTIVE = ''Y''',
' ORDER BY NVL(QE.SHORT_DESC, E.DESCRIPTION)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(86795612093682144)
,p_name=>'P38_NEW_NEXT_EVENT_ID'
,p_item_sequence=>390
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(121326304233782631)
,p_name=>'P38_REMAINING_PATIENTS'
,p_item_sequence=>400
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189050512252356906)
,p_name=>'P38_CTREATMENT_TYPE'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Treatment Type'
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
 p_id=>wwv_flow_imp.id(189051233154356913)
,p_name=>'P38_DISMISS_ALLOWED'
,p_item_sequence=>410
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(248075664339787009)
,p_name=>'P38_OBJECT_CODE'
,p_item_sequence=>420
,p_item_default=>'S18APX00037'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(255791787710030509)
,p_name=>'P38_CALLER_OBJECT'
,p_item_sequence=>192
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(278415685427867010)
,p_name=>'P38_CREQ_STATUS'
,p_item_sequence=>162
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Request Status'
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
 p_id=>wwv_flow_imp.id(288293960884877173)
,p_name=>'P38_GROUP_OLD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53432871564072624)
,p_prompt=>'<b>Group</b>'
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
'       ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'   '
,p_lov_null_value=>'   '
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288294398462877177)
,p_name=>'P38_DOCTOR_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_prompt=>'<b>Doctor</b>'
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
,p_lov_null_text=>' '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(288294704243877177)
,p_name=>'P38_PHYSIST_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_prompt=>'<b>Physicist</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME, P.PHYSICIST_MRNO EMPLOYEE_CODE',
'  FROM RADIATION.PHYSICISTS P, HRD.VU_INFORMATION I',
' WHERE P.PHYSICIST_MRNO = I.MRNO',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>' '
,p_lov_cascade_parent_items=>'P38_CBED_NO'
,p_ajax_items_to_submit=>'P38_CBED_NO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(288295175492877178)
,p_name=>'P38_FROM_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_item_default=>'RETURN TO_CHAR(SYSDATE, ''dd-mm-yyyy'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'2'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288295576284877178)
,p_name=>'P38_TO_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_item_default=>'RETURN TO_CHAR(SYSDATE, ''dd-mm-yyyy'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
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
,p_attribute_09=>'2'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288295918270877178)
,p_name=>'P38_EVENT_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288296390749877180)
,p_name=>'P38_MRNO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288296776760877180)
,p_name=>'P38_MACHINE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288297530701877182)
,p_name=>'P38_PERIOD_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_prompt=>'Period Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Today;T,Future;F,Manual;M'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288297916632877182)
,p_name=>'P38_QUEUE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(804541753325956828)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288318651130877227)
,p_name=>'P38_TEMPLATE_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288518248304250248)
,p_name=>'P38_CBED_NO'
,p_item_sequence=>62
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288518311527250249)
,p_name=>'P38_CNAME'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(288518474862250250)
,p_name=>'P38_CMRNO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(288518144184250247)
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
 p_id=>wwv_flow_imp.id(291534471431202931)
,p_name=>'P38_ND_MACHINE_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49423340168662918)
,p_name=>'SetCursorPosition'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49423476851662919)
,p_event_id=>wwv_flow_imp.id(49423340168662918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//set the static id field on your interactive grid and put the value on gridID variable',
'var gridID = "groupnew";',
'var ig$ = apex.region(gridID).widget();',
'var grid = ig$.interactiveGrid("getViews", "grid");',
'',
'grid.setSelectedRecords(JSON.parse(localStorage.getItem(''lastSelectedRecord'')));',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288323328202877234)
,p_name=>'RefreshRadiationQueue'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(288293537266877171)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288323856557877234)
,p_event_id=>wwv_flow_imp.id(288323328202877234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288324219997877234)
,p_name=>' PreserveValues'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288324718001877235)
,p_event_id=>wwv_flow_imp.id(288324219997877234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  S VARCHAR2(1) := ''!'';',
'BEGIN',
'  :P38_RADIATION_QUEUE_DEFAULTS := S || :P38_QUEUE_ID || S ||',
'                                   :P38_DOCTOR_ID || S || :P38_PERIOD_TYPE || S ||',
'                                   :P38_FROM_DATE || S || :P38_TO_DATE || S ||',
'                                   :P38_GROUP;',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288325137901877235)
,p_name=>'SetPeriodValue'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_PERIOD_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288325614046877235)
,p_event_id=>wwv_flow_imp.id(288325137901877235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FROM_DATE,P38_TO_DATE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P38_PERIOD_TYPE'
,p_client_condition_expression=>'M'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288326166386877235)
,p_event_id=>wwv_flow_imp.id(288325137901877235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_FROM_DATE,P38_TO_DATE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P38_PERIOD_TYPE'
,p_client_condition_expression=>'M'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288326696181877235)
,p_event_id=>wwv_flow_imp.id(288325137901877235)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF (:P38_PERIOD_TYPE = ''T'') THEN',
'    :P38_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P38_TO_DATE   := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'  ELSIF (:P38_PERIOD_TYPE = ''F'') THEN',
'    :P38_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P38_TO_DATE   := TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE), 12), ''DD-MM-YYYY'');',
'  ELSIF (:P38_PERIOD_TYPE = ''M'') THEN',
'    :P38_FROM_DATE := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'    :P38_TO_DATE   := TO_CHAR(TRUNC(SYSDATE), ''DD-MM-YYYY'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P38_PERIOD_TYPE'
,p_attribute_03=>'P38_FROM_DATE,P38_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288327182435877236)
,p_event_id=>wwv_flow_imp.id(288325137901877235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gridView = apex.region("RADQUEUEG1").call("getViews").grid;',
'',
'if ($v("P38_PERIOD_TYPE") === "T") {',
'    gridView.view$.grid("hideColumn", "APPOINTMENT_DATE");',
'}',
'else {',
'    gridView.view$.grid("showColumn", "APPOINTMENT_DATE");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288327558878877236)
,p_name=>'SetPatientDetails'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804541504846956826)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288328086444877237)
,p_event_id=>wwv_flow_imp.id(288327558878877236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P0_MRNO", _.RADQUEUEG1.MRNO);',
'$s("P0_RADIATION_NO", _.RADQUEUEG1.RADIATION_NO);',
'$s("P0_MRNO", _.RADQUEUEG1.MRNO);',
'',
'let ht = `',
'<ol id="PAT-INFO" style="list-style-type: none;">',
'  <li><label style="font-weight: bold;">Bed Number    : </label>&nbsp;&nbsp;&nbsp;<span>`+ ''100-A'' + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Name  : </label>&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.PNAME + `</span></li>',
'  <li><label style="font-weight: bold;">Patient MRNO  : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.MRNO + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Gender: </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.GENDER + `</span></li>',
'  <li><label style="font-weight: bold;">Patient Age   : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.AGE + `</span></li>',
'  <li><label style="font-weight: bold;">Allergies     : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ALLERGIES + `</span></li>',
'  <li><label style="font-weight: bold;">Flags         : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.FLAGS + `</span></li>',
'  <li><label style="font-weight: bold;">Isolation     : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ISOLATION_STATUS + `</span></li>',
'  <li><label style="font-weight: bold;">Code          : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.DNR + `</span></li>',
'</ol>`;',
'//$s(''P38_PATIENT_INFO'', ht.replaceAll(''undefined'', '''',));',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288322468110877233)
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
 p_id=>wwv_flow_imp.id(16630780565318512)
,p_event_id=>wwv_flow_imp.id(288322468110877233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function forward(p1) {',
'    alert(p1);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(288322963732877233)
,p_event_id=>wwv_flow_imp.id(288322468110877233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'forward1(p1){alert(p1)};',
'if (!_.p1)',
'    apex.message.alert("Please select a Patient!");',
'try {',
'    let r_rec = _.RADQUEUEG1;',
'    $s("P0_RADIATION_NO", r_rec.RADIATION_NO);',
'    $s(''P0_MRNO'', _.RADQUEUEG1.MRNO);',
'    r_rec.QUEUE_ID = $v("P38_GROUP");',
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
'                    $s(''P38_TEMPLATE_ID'', response_obj.template_id);',
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
 p_id=>wwv_flow_imp.id(79588642151019516)
,p_event_id=>wwv_flow_imp.id(288322468110877233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''RADQUEUEG1'').widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(288321578845877232)
,p_name=>'RefreshQueueRegion1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_GROUP_OLD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53432540423072621)
,p_event_id=>wwv_flow_imp.id(288321578845877232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_GROUP_ID_QUEUE_NEW'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P38_GROUP_OLD;'
,p_attribute_07=>'P38_GROUP_OLD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278899566317597601)
,p_event_id=>wwv_flow_imp.id(288321578845877232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vGroupId = $v("P38_GROUP_OLD");',
'',
'var region = document.getElementById(''patcount'');',
'',
'if (vGroupId === ''007'') {',
'',
'    if (region) {',
'',
'        region.style.display = ''block'';',
'',
'    }',
'} else {',
'',
'    if (region) {',
'',
'        region.style.display = ''none'';',
'',
'    }',
'    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79587234034019502)
,p_name=>'RefreshQueueRegion2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_QUEUE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79587322375019503)
,p_event_id=>wwv_flow_imp.id(79587234034019502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804607247182339210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79589795581019527)
,p_event_id=>wwv_flow_imp.id(79587234034019502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6414517872255447)
,p_name=>'SelectCard'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804541504846956826)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16631330233318518)
,p_event_id=>wwv_flow_imp.id(6414517872255447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $s("P0_MRNO", _.RADQUEUEG1.MRNO);',
'// $s("P0_RADIATION_NO", _.RADQUEUEG1.RADIATION_NO);',
'// $s("P0_MRNO", _.RADQUEUEG1.MRNO);',
'',
'// let ht = `',
'// <ol id="PAT-INFO" style="list-style-type: none;">',
'//   <li><label style="font-weight: bold;">Bed Number    : </label>&nbsp;&nbsp;&nbsp;<span>`+ SR_NO + `</span></li>',
'//   <li><label style="font-weight: bold;">Patient Name  : </label>&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.PNAME + `</span></li>',
'//   <li><label style="font-weight: bold;">Patient MRNO  : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.MRNO + `</span></li>',
'//   <li><label style="font-weight: bold;">Patient Gender: </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.GENDER + `</span></li>',
'//   <li><label style="font-weight: bold;">Patient Age   : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.AGE + `</span></li>',
'//   <li><label style="font-weight: bold;">Allergies     : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ALLERGIES + `</span></li>',
'//   <li><label style="font-weight: bold;">Flags         : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.FLAGS + `</span></li>',
'//   <li><label style="font-weight: bold;">Isolation     : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.ISOLATION_STATUS + `</span></li>',
'//   <li><label style="font-weight: bold;">Code          : </label>&nbsp;&nbsp;&nbsp;&nbsp;<span>`+ _.RADQUEUEG1.DNR + `</span></li>',
'// </ol>`;',
'// //$s(''P38_PATIENT_INFO'', ht.replaceAll(''undefined'', '''',));',
'',
'',
'',
'',
'',
'// $s("P38_CBED_NO", $("#001200000107488").html());',
'',
'// $s("P38_CMRNO", ''#SR_NO#'';'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6414675203255448)
,p_event_id=>wwv_flow_imp.id(6414517872255447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let card = $(this.browserEvent.target).parents(''.t-rad-card'');',
'$(''.t-rad-card[is-active]'').removeAttr(''is-active'');',
'$(card).attr(''is-active'', '''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6414849924255450)
,p_event_id=>wwv_flow_imp.id(6414517872255447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_CBED_NO,P38_CNAME,P38_CMRNO,P38_CGENDER,P38_CAGE,P38_CALLERGIES,P38_CFLAGS,P38_ISOLATION,P38_CDX,P38_CCODE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'console.log(this.affectedElements);'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13573473871199533)
,p_name=>'ProcessForward'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn_forward'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16630463623318509)
,p_event_id=>wwv_flow_imp.id(13573473871199533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'TEST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13573757406199536)
,p_event_id=>wwv_flow_imp.id(13573473871199533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//variable declaration',
'//refreshGrid(''RADQUEUEG1'');',
'//   debugger;',
'console.log(''TEST'');',
'if (!_.RADQUEUEG1.MRNO)',
'    apex.message.alert("Please select a Patient!");',
'try {',
'    let r_rec = _.RADQUEUEG1;',
'    $s("P0_RADIATION_NO", r_rec.RADIATION_NO);',
'    $s(''P0_MRNO'', _.RADQUEUEG1.MRNO);',
'    r_rec.QUEUE_ID = $v("P38_GROUP");',
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
'                    $s(''P38_TEMPLATE_ID'', response_obj.template_id);',
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
 p_id=>wwv_flow_imp.id(16631537762318520)
,p_name=>'SetPatientDemographics'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.set'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16632022189318525)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_SR_NO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16631858240318523)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT (SELECT BED_ID FROM DEFINITIONS.BEDS T WHERE T.MRNO = PAT_MRNO) BED_ID,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(PAT_MRNO) NAME,',
'         PAT_MRNO,',
'         HIS.PKG_PATIENT.GET_GENDER(PAT_MRNO) GENDER,',
'         HIS.PKG_PATIENT.GET_AGE(PAT_MRNO) AGE,',
'         RADIATION.PKG_S18FRM00010.GET_SHOW_ALLERGIES(PAT_MRNO) ALLERGIES,',
'         RADIATION.PKG_S18FRM00010.FETCH_FLAGS(PAT_MRNO) FLAGS,',
'         ORDERENTRY.PKG_COMMON_UTIL.GET_PATIENT_ISOLATION_STATUS(PAT_MRNO,',
'                                                                 ''S'') ISOLATION_STATUS,',
'         HIS.PKG_PATIENT.GET_CANCER_STATUS(P_MRNO => PAT_MRNO) CANCER_STATUS,',
'         RADIATION.PKG_S18FRM00010.FETCH_DNR(PAT_MRNO) DNR,',
'         PAT_MRNO',
'    INTO :P38_CBED_NO,',
'         :P38_CNAME,',
'         :P38_CMRNO,',
'         :P38_CGENDER,',
'         :P38_CAGE,',
'         :P38_CALLERGIES,',
'         :P38_CFLAGS,',
'         :P38_ISOLATION,',
'         :P38_CDX,',
'         :P38_CCODE,',
'         :P38_ND_MRNO',
'  ',
'    FROM (SELECT PAT_MRNO',
'            FROM (SELECT RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(P_RADIATION_NO => S.RADIATION_NO) PAT_MRNO',
'                    FROM RADIATION.SCHEDULE S',
'                   WHERE S.SR_NO = :P38_ND_SR_NO))',
'   WHERE ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_03=>'P38_CBED_NO,P38_CNAME,P38_CMRNO,P38_CGENDER,P38_CAGE,P38_CALLERGIES,P38_CFLAGS,P38_ISOLATION,P38_CDX,P38_CCODE,P38_ND_MRNO'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19227849378955313)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF RADIATION.PKG_WORKFLOW_RADIATION.IS_WORKFLOW_INITIALIZED(P_SCHEDULE_SRNO => :P38_ND_SR_NO) THEN',
'    SELECT SW.SCHEMA_ID,',
'           SW.WORKFLOW_TYPE_ID,',
'           SW.WORK_FLOW_ID,',
'           SW.EVENT_ID,',
'           RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                    P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                    P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                    P_EVENT_ID         => SW.EVENT_ID),',
'           S.SITE_ID',
'      INTO :P38_ND_SCHEMA_ID,',
'           :P38_ND_PURCHASE_TYPE_ID,',
'           :P38_ND_WORK_FLOW_ID,',
'           :P38_ND_EVENT_ID,',
'           :P38_ND_NEXT_EVENT_ID,',
'           :P38_ND_SITE_ID',
'      FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'     WHERE SW.SR_NO = S.SR_NO',
'       AND S.SR_NO = :P38_ND_SR_NO',
'       AND S.WFE_NO = SW.WFE_NO;',
'  ELSE',
'    SELECT DSW.SCHEMA_ID,',
'           DSW.WORKFLOW_TYPE_ID,',
'           DSW.WORK_FLOW_ID,',
'           NULL,',
'           RADIATION.PKG_WORKFLOW.GET_INITIAL_EVENT_ID(P_SCHEMA_ID        => DSW.SCHEMA_ID,',
'                                                       P_WORKFLOW_TYPE_ID => DSW.WORKFLOW_TYPE_ID,',
'                                                       P_WORK_FLOW_ID     => DSW.WORK_FLOW_ID),',
'           S.SITE_ID',
'    ',
'      INTO :P38_ND_SCHEMA_ID,',
'           :P38_ND_PURCHASE_TYPE_ID,',
'           :P38_ND_WORK_FLOW_ID,',
'           :P38_ND_EVENT_ID,',
'           :P38_ND_NEXT_EVENT_ID,',
'           :P38_ND_SITE_ID',
'    ',
'      FROM RADIATION.SCHEDULE              S,',
'           RADIATION.RADIATION_DETAIL      D,',
'           RADIATION.MACHINES              M,',
'           RADIATION.DEF_SCHEDULE_WORKFLOW DSW',
'     WHERE S.SR_NO = :P38_ND_SR_NO',
'       AND D.RADIATION_NO = S.RADIATION_NO',
'       AND D.SITE_ID = S.SITE_ID',
'       AND S.MACHINE_ID = M.MACHINE_ID',
'       AND DSW.ORGANIZATION_ID = M.ORGANIZATION_ID',
'       AND DSW.LOCATION_ID = M.LOCATION_ID',
'       AND DSW.PLANNING_ID = D.PLANNING_ID',
'       AND DSW.PERFORMANCE_TYPE_ID = M.PERFORMANCE_TYPE_ID',
'       AND DSW.ACTIVE = ''Y'';',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P38_ND_SCHEMA_ID        := NULL;',
'    :P38_ND_PURCHASE_TYPE_ID := NULL;',
'    :P38_ND_WORK_FLOW_ID     := NULL;',
'    :P38_ND_EVENT_ID         := NULL;',
'    :P38_ND_NEXT_EVENT_ID    := NULL;',
'    :P38_ND_SITE_ID          := NULL;',
'END;',
''))
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_03=>'P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_ND_NEXT_EVENT_ID,P38_ND_SITE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19420920212399807)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT A.DECISION_ID',
'    INTO :P38_ND_NEXT_EVENT',
'    FROM (SELECT TO_NUMBER(:P38_ND_NEXT_EVENT_ID) DECISION_ID',
'            FROM DUAL',
'           WHERE TO_NUMBER(:P38_ND_NEXT_EVENT_ID) IS NOT NULL',
'          UNION',
'          SELECT ED.DECISION_ID',
'            FROM DEFINITIONS.EVENT_DECISION ED',
'           WHERE ED.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'             AND ED.PURCHASE_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'             AND ED.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'             AND ED.EVENT_ID = :P38_ND_EVENT_ID',
'          UNION',
'          SELECT QE.EVENT_ID',
'            FROM RADIATION.DEF_QUEUE_EVENTS     QE,',
'                 DEFINITIONS.PR_TYPE_FLOW_EVENT FE,',
'                 DEFINITIONS.EVENT              EV',
'           WHERE QE.QUEUE_ID = :P38_GROUP',
'             AND QE.EVENT_ID = FE.EVENT_ID',
'             AND FE.EVENT_ID = EV.EVENT_ID',
'             AND QE.PERFORMABLE = ''Y''',
'             AND EV.USER_RUNTIME = ''Y'') A',
'   WHERE NOT EXISTS (SELECT 1',
'            FROM RADIATION.SCHEDULE_WORKFLOW RDW',
'           WHERE RDW.SR_NO = :P38_ND_SR_NO',
'             AND RDW.EVENT_ID = A.DECISION_ID',
'             AND RDW.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'             AND RDW.WORKFLOW_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'             AND RDW.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'             AND RDW.EVENT_ID = :P38_ND_EVENT_ID);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P38_ND_NEXT_EVENT_ID,P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_GROUP_OLD'
,p_attribute_03=>'P38_ND_NEXT_EVENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31855445754964941)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                           P_SITE_ID      => RS.SITE_ID,',
'                                                           P_FRACTION_ID  => RS.FRACTION_ID),',
'         HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => RD.PHYSICIST) AS PHYSICIST_NAME,',
'         RS.SR_NO,',
'         RM.RADIATION_NO,',
'         RD.SITE_ID,',
'         RS.FRACTION_ID,',
'         (SELECT M.PERFORMANCE_TYPE_ID',
'            FROM RADIATION.MACHINES M',
'           WHERE M.MACHINE_ID = RS.MACHINE_ID)',
'  ',
'    INTO :P38_REMAINING_FRACTIONS,',
'         :P38_DOCTOR,',
'         :P38_PHYSICIST,',
'         :P38_SRNO,',
'         :P38_RADIATION_NO,',
'         :P38_SITE_ID,',
'         :P38_FRACTION_ID,',
'         :P38_PERFORMANCE_TYPE_ID',
'    FROM RADIATION.RADIATION_MASTER RM,',
'         RADIATION.RADIATION_DETAIL RD,',
'         RADIATION.SCHEDULE         RS',
'   WHERE RS.SR_NO = :P38_ND_SR_NO',
'     AND RS.RADIATION_NO = RM.RADIATION_NO',
'     AND RD.RADIATION_NO = RM.RADIATION_NO',
'     AND RD.SITE_ID = RS.SITE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_03=>'P38_REMAINING_FRACTIONS,P38_DOCTOR,P38_PHYSICIST,P38_SRNO,P38_RADIATION_NO,P38_SITE_ID,P38_FRACTION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2531339277924103)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(805407967137601325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2532229705924112)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804606629204339204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2683340134380002)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_NEXT_EVENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2967383113324119)
,p_event_id=>wwv_flow_imp.id(16631537762318520)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804606629204339204)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16632486182318529)
,p_name=>'ClearPatientDemographics1'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P38_GROUP IS NULL THEN ',
'RETURN TRUE;',
'ELSE RETURN FALSE;',
'END IF;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16632512394318530)
,p_event_id=>wwv_flow_imp.id(16632486182318529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'ClearPatientInfoPageItems'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_CBED_NO,P38_CNAME,P38_CMRNO,P38_CGENDER,P38_CAGE,P38_CALLERGIES,P38_CFLAGS,P38_ISOLATION,P38_CDX,P38_CCODE,P38_ND_MACHINE_ID,P38_ND_SR_NO,P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_ND_NEXT_EVENT_ID,P38_ND_MRN'
||'O,P38_ALERT_RAD_NO,P38_ALERT_RAD_SITE_ID,P38_ND_ALERT_SRNO,P38_REMAINING_FRACTIONS,P38_DOCTOR,P38_PHYSICIST,P38_SRNO,P38_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17913467551390507)
,p_name=>'CallWorkflowHistory'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17761187756646610)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17913556623390508)
,p_event_id=>wwv_flow_imp.id(17913467551390507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17913652005390509)
,p_event_id=>wwv_flow_imp.id(17913467551390507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = { "P47_SCHEDULE_SRNO": $v("P38_ND_SR_NO") };',
'let object = {',
'    APP_ID: ''115'',',
'    PAGE_ID: ''47'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17914141972390514)
,p_name=>'CustomEventHistory'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'eventHistory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17914349437390516)
,p_event_id=>wwv_flow_imp.id(17914141972390514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17914415089390517)
,p_event_id=>wwv_flow_imp.id(17914141972390514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = { "P47_SCHEDULE_SRNO": $v("P38_ND_SR_NO") };',
'let object = {',
'    APP_ID: ''115'',',
'    PAGE_ID: ''47'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17914808506390521)
,p_name=>'CustomOpenForwardRemarks'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'eventOpenForwardRemarks'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17914922757390522)
,p_event_id=>wwv_flow_imp.id(17914808506390521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17914675036390519)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17915277284390525)
,p_name=>'New_1'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17915184921390524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17915391714390526)
,p_event_id=>wwv_flow_imp.id(17915277284390525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var hiddenValue = apex.item(''P38_ND_EVENT_ID'').getValue();',
'console.log(hiddenValue);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17915618605390529)
,p_name=>'CloseRemarksDialog'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17915447119390527)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17915750120390530)
,p_event_id=>wwv_flow_imp.id(17915618605390529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17914675036390519)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17915989876390532)
,p_name=>'SelectCardFirstRecord'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17916051240390533)
,p_event_id=>wwv_flow_imp.id(17915989876390532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    // Replace ''regionId'' with the Static ID or jQuery Selector of your Interactive Report region',
'    var $report = $("RADQUEUEG1").find(".a-IRR-table tr").eq(1); // 1 for the first record',
'',
'    if ($report.length > 0) {',
'        $report.find("td").eq(0).focus(); // Focus on the first column of the first record',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17916672444390539)
,p_name=>'DARequestAnesthesia'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17916566744390538)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17916722223390540)
,p_event_id=>wwv_flow_imp.id(17916672444390539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm you wish to submit a request for anesthesia?'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-hand-stop-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17916896782390541)
,p_event_id=>wwv_flow_imp.id(17916672444390539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_SCHEDULE.GEN_ANESTHESIA_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                                P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                                P_SCHEDULE_SRNO   => :P38_ND_SR_NO,',
'                                                P_USER_MRNO       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                                P_OBJECT_CODE     => ''S22APX00037'',',
'                                                P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                                P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                                P_STOP            => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  ELSE',
'    COMMIT;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || SQLERRM || ''~~~'');',
'END;',
''))
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17916980651390542)
,p_event_id=>wwv_flow_imp.id(17916672444390539)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Anesthesia request has been successfully generated'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17917053785390543)
,p_event_id=>wwv_flow_imp.id(17916672444390539)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17917377863390546)
,p_name=>'SetDefaultValue'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17917429946390547)
,p_event_id=>wwv_flow_imp.id(17917377863390546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_DATA      VARCHAR2(4000) := NVL(:GV_RADIATION_QUEUE_DEFAULTS, ''!!!!!'');',
'  L_FROM_DATE VARCHAR2(10) := TO_CHAR(SYSDATE, ''DD-MM-YYYY'');',
'  L_TO_DATE   VARCHAR2(10) := TO_CHAR(SYSDATE, ''DD-MM-YYYY'');',
'  FUNCTION GET_VALUE(P_DATA IN VARCHAR2, I IN NUMBER) RETURN VARCHAR2 IS',
'    X NUMBER;',
'    Y NUMBER;',
'  BEGIN',
'    X := INSTR(P_DATA, ''!'', 1, I) + 1;',
'    Y := INSTR(P_DATA, ''!'', 1, I + 1) - X;',
'    RETURN SUBSTR(P_DATA, X, Y);',
'  END;',
'BEGIN',
'  :P38_DOCTOR_ID    := GET_VALUE(L_DATA, 1);',
'  :P38_PHYSIST_MRNO := GET_VALUE(L_DATA, 2);',
'  :P38_FROM_DATE    := NVL(GET_VALUE(L_DATA, 3), L_FROM_DATE);',
'  :P38_TO_DATE      := NVL(GET_VALUE(L_DATA, 4), L_TO_DATE);',
'  :P38_GROUP        := GET_VALUE(L_DATA, 5);',
'END;',
''))
,p_attribute_02=>'GV_RADIATION_QUEUE_DEFAULTS'
,p_attribute_03=>'P38_DOCTOR_ID,P38_PHYSIST_MRNO,P38_FROM_DATE,P38_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17917615778390549)
,p_name=>'SetDefaultValues'
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804541753325956828)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17917736112390550)
,p_event_id=>wwv_flow_imp.id(17917615778390549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_CONCAT VARCHAR2(1) := ''!'';',
'BEGIN',
'  :GV_RADIATION_QUEUE_DEFAULTS := L_CONCAT || :P38_DOCTOR_ID || L_CONCAT ||',
'                                  :P38_PHYSIST_MRNO || L_CONCAT ||',
'                                  :P38_FROM_DATE || L_CONCAT ||',
'                                  :P38_TO_DATE || L_CONCAT || :P38_EVENT_ID;',
'',
'',
'END;',
'',
''))
,p_attribute_02=>'P38_DOCTOR_ID,P38_PHYSIST_MRNO,P38_FROM_DATE,P38_TO_DATE,P38_EVENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19227717467955312)
,p_name=>'SetWokflowFields'
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804541504846956826)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47948297593191614)
,p_event_id=>wwv_flow_imp.id(19227717467955312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(288518144184250247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47948306500191615)
,p_event_id=>wwv_flow_imp.id(19227717467955312)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31854716132964934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47948036516191612)
,p_event_id=>wwv_flow_imp.id(19227717467955312)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(805407967137601325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47948146454191613)
,p_event_id=>wwv_flow_imp.id(19227717467955312)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_NEXT_EVENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19423401219399832)
,p_event_id=>wwv_flow_imp.id(19227717467955312)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804606629204339204)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19421049199399808)
,p_name=>'SetColour'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804541504846956826)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19421137076399809)
,p_event_id=>wwv_flow_imp.id(19421049199399808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(this).closest(''tr'').find(''td'').css({"background-color":"red"});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19421395543399811)
,p_name=>'ClearForwardEvent'
,p_event_sequence=>270
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P38_ND_SR_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19421464639399812)
,p_event_id=>wwv_flow_imp.id(19421395543399811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_NEXT_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19421513114399813)
,p_name=>'ClearWorkflowFields'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19421673752399814)
,p_event_id=>wwv_flow_imp.id(19421513114399813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_NEXT_EVENT_ID,P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_ND_SR_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19421716386399815)
,p_name=>'RefreshPatientQueue'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19421827820399816)
,p_event_id=>wwv_flow_imp.id(19421716386399815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19421914573399817)
,p_event_id=>wwv_flow_imp.id(19421716386399815)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4509653596563110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19422048745399818)
,p_name=>'SetGlobalMRNO'
,p_event_sequence=>300
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804541504846956826)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79589134269019521)
,p_event_id=>wwv_flow_imp.id(19422048745399818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'onclick="test()"'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79589253898019522)
,p_event_id=>wwv_flow_imp.id(19422048745399818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert( "P0_MRNO value = " +  apex.item( "P0_MRNO" ).getValue());'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19422683090399824)
,p_name=>'AcknowledgeAlert'
,p_event_sequence=>310
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ackAlert'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19422743115399825)
,p_event_id=>wwv_flow_imp.id(19422683090399824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''test'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79589314313019523)
,p_name=>'refreshPatientQueue4'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79589444840019524)
,p_event_id=>wwv_flow_imp.id(79589314313019523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47948686189191618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79589544030019525)
,p_name=>'refreshPatientQueue3'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_FROM_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79589650102019526)
,p_event_id=>wwv_flow_imp.id(79589544030019525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47948686189191618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79589824444019528)
,p_name=>'refreshPatientQueue1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_DOCTOR_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(79589970425019529)
,p_event_id=>wwv_flow_imp.id(79589824444019528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47948686189191618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79590009902019530)
,p_name=>'refreshPatientQueue2'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_PHYSIST_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79590105462019531)
,p_event_id=>wwv_flow_imp.id(79590009902019530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47948686189191618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79591523291019545)
,p_name=>'RefreshAppointmentQueue2'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_EVENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79591647382019546)
,p_event_id=>wwv_flow_imp.id(79591523291019545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47948686189191618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79591742223019547)
,p_name=>'QueryQueueByDefaultMachine'
,p_event_sequence=>370
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79591817651019548)
,p_event_id=>wwv_flow_imp.id(79591742223019547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT MACHINE_ID',
'    INTO :P38_ND_MACHINE_ID',
'    FROM (SELECT MACHINE_ID, DESCRIPTION',
'            FROM RADIATION.MACHINES MC',
'           WHERE ACTIVE = ''Y''',
'             AND EXISTS (SELECT 1',
'                    FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'                   WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'             AND MC.PERFORMANCE_TYPE_ID IN',
'                 (SELECT QP.PERFORMANCE_TYPE_ID',
'                    FROM RADIATION.DEF_QUEUE_PERFORMANCE QP',
'                   WHERE QP.QUEUE_ID = :P38_GROUP',
'                     AND QP.ACTIVE = ''Y'')',
'          ',
'           ORDER BY MC.MACHINE_TYPE, MC.DESCRIPTION)',
'   WHERE ROWNUM = 1;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P38_GROUP_OLD'
,p_attribute_03=>'P38_ND_MACHINE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19423242380399830)
,p_name=>'RefreshRadiationAlerts'
,p_event_sequence=>380
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19423338247399831)
,p_event_id=>wwv_flow_imp.id(19423242380399830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804606629204339204)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2683414667380003)
,p_name=>'RefreshMachine'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2683598233380004)
,p_event_id=>wwv_flow_imp.id(2683414667380003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804607247182339210)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2966023660324106)
,p_name=>'submitVal'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ND_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2966156155324107)
,p_event_id=>wwv_flow_imp.id(2966023660324106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P38_ND_MRNO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2967127658324117)
,p_name=>'ClearSRNO'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2967202809324118)
,p_event_id=>wwv_flow_imp.id(2967127658324117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804606629204339204)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4346598340671850)
,p_name=>'ClearDemographics2'
,p_event_sequence=>420
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P38_GROUP IS NOT NULL THEN ',
'RETURN TRUE;',
'ELSE RETURN FALSE;',
'END IF;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5315515472323901)
,p_event_id=>wwv_flow_imp.id(4346598340671850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_SR_NO,P38_CBED_NO,P38_CNAME,P38_CMRNO,P38_CGENDER,P38_CAGE,P38_CALLERGIES,P38_CFLAGS,P38_ISOLATION,P38_CDX,P38_CCODE,P38_ND_MRNO,P38_REMAINING_FRACTIONS,P38_DOCTOR,P38_PHYSICIST,P38_SRNO,P38_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5315683953323902)
,p_event_id=>wwv_flow_imp.id(4346598340671850)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(288518144184250247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5315782544323903)
,p_event_id=>wwv_flow_imp.id(4346598340671850)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5315946887323905)
,p_event_id=>wwv_flow_imp.id(4346598340671850)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7584821320888731)
,p_name=>'refreshRegion'
,p_event_sequence=>430
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(804607247182339210)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7585000322888733)
,p_event_id=>wwv_flow_imp.id(7584821320888731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_MRNO,P38_ND_SR_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7584971138888732)
,p_event_id=>wwv_flow_imp.id(7584821320888731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(805407967137601325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7585333027888736)
,p_event_id=>wwv_flow_imp.id(7584821320888731)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804606629204339204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49003150922731314)
,p_event_id=>wwv_flow_imp.id(7584821320888731)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47948686189191618)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34868729752221017)
,p_name=>'RefreshPage'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34868621427221016)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34868870403221018)
,p_event_id=>wwv_flow_imp.id(34868729752221017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35556496516840509)
,p_name=>'DAReloadAlerts'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(35556324890840508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35556573907840510)
,p_event_id=>wwv_flow_imp.id(35556496516840509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_ALERT_TEXT VARCHAR2(4000);',
'L_STOP       CHAR(1) := ''N'';',
'EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_ALERTS.POPULATE_RAD_ALERTS(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''ORGANIZATION_ID''),',
'                                           P_LOGIN_LOCATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''LOCATION_ID''),',
'                                           P_RADIATION_NO        => :P38_RADIATION_NO,',
'                                           P_SITE_ID             => :P38_SITE_ID,',
'                                           P_SR_NO               => :P38_ND_SR_NO,',
'                                           P_PERFORMANCE_TYPE_ID => :P38_PERFORMANCE_TYPE_ID,',
'                                           P_FRACTION_ID         => :P38_FRACTION_ID,',
'                                           P_ALERT_ID            => NULL,',
'                                           P_USER_MRNO           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''USER_MRNO''),',
'                                           P_TERMINAL            => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                             ''TERMINAL''),',
'                                           P_OBJECT_CODE         => ''S22APX00037'',',
'                                           P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                           P_STOP                => L_STOP);',
'',
'',
'IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'RAISE EX_CUSTOM;',
'ELSE',
'COMMIT;',
'END IF;',
'',
'EXCEPTION',
'WHEN EX_CUSTOM THEN',
'RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'WHEN OTHERS THEN',
'RAISE_APPLICATION_ERROR(-20007, ''~~~'' || SQLERRM || ''~~~'');',
'END;',
''))
,p_attribute_02=>'P38_RADIATION_NO,P38_SITE_ID,P38_ND_SR_NO,P38_FRACTION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35556935120840514)
,p_event_id=>wwv_flow_imp.id(35556496516840509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Radiation alerts reloaded properly'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35557042302840515)
,p_event_id=>wwv_flow_imp.id(35556496516840509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(804541504846956826)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43331096758050232)
,p_name=>'DARadiationMenu'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31367435851760145)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43331148755050233)
,p_event_id=>wwv_flow_imp.id(43331096758050232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := V(''APP_ID'');',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P38_CALLER_OBJECT := ''S18APX00037'';',
'  :P38_TXT_URL       := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' ||',
'                                                                 L_APP ||',
'                                                                 '':46:'' ||',
'                                                                 L_SESSION ||',
'                                                                 ''::NO::P46_PARAM_MRNO,P46_CALLER_PAGE:'' ||',
'                                                                 :P38_ND_MRNO || '','' ||',
'                                                                 :P38_CALLER_OBJECT,',
'                                              P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P38_ND_MRNO,P38_CALLER_OBJECT'
,p_attribute_03=>'P38_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254573885538370329)
,p_event_id=>wwv_flow_imp.id(43331096758050232)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = $v(''P38_TXT_URL''); //$(''#P38_TXT_URL'').val();',
'if (url) {',
'    window.open(url, ''_blank'');',
'} else {',
'    alert("URL is not generated yet");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43331282725050234)
,p_event_id=>wwv_flow_imp.id(43331096758050232)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P38_TXT_URL''));'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43331300592050235)
,p_name=>'DAClinicalMenu'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31367541119760146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43331577674050237)
,p_event_id=>wwv_flow_imp.id(43331300592050235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_URL     VARCHAR2(2000);',
'  L_APP     NUMBER := V(''APP_ID'');',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'',
'BEGIN',
'',
'  L_URL := APEX_UTIL.PREPARE_URL(',
'                                 ',
'                                 P_URL => ''f?p='' || 138 || '':21:'' ||',
'                                          L_SESSION ||',
'                                          '':CONSULT:NO::P21_PATIENT_MRNO:'' ||',
'                                          :P38_ND_MRNO || '':'',',
'                                 ',
'                                 P_CHECKSUM_TYPE => ''SESSION'');',
'',
'  :P38_TXT_URL := L_URL;',
'',
'END;',
''))
,p_attribute_02=>'P38_ND_MRNO'
,p_attribute_03=>'P38_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43331640729050238)
,p_event_id=>wwv_flow_imp.id(43331300592050235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P38_TXT_URL''));    '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43331859897050240)
,p_name=>'DANDSRNO1'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ND_SR_NO'
,p_condition_element=>'P38_ND_SR_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51226885710879638)
,p_event_id=>wwv_flow_imp.id(43331859897050240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4509653596563110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51226913802879639)
,p_name=>'DANDSRNO2'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ND_SR_NO'
,p_condition_element=>'P38_ND_SR_NO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51227079142879640)
,p_event_id=>wwv_flow_imp.id(51226913802879639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4509653596563110)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47948421964191616)
,p_name=>'DARemoveFromList'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_CLEAR_REMOVE_FROM_LIST'
,p_condition_element=>'P38_CLEAR_REMOVE_FROM_LIST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'408'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>600
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47948546538191617)
,p_event_id=>wwv_flow_imp.id(47948421964191616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P38_CBED_NO").setValue('''');',
'apex.item("P38_CNAME").setValue('''');',
'apex.item("P38_CSITE").setValue('''');',
'apex.item("P38_CTREATMENT_TYPE").setValue('''');',
'apex.item("P38_CMRNO").setValue('''');',
'apex.item("P38_CGENDER").setValue('''');',
'apex.item("P38_CAGE").setValue('''');',
'apex.item("P38_CALLERGIES").setValue('''');',
'apex.item("P38_CFLAGS").setValue('''');',
'apex.item("P38_ISOLATION").setValue('''');',
'apex.item("P38_CDX").setValue('''');',
'apex.item("P38_CCODE").setValue('''');',
'apex.item("P38_CREQ_STATUS").setValue('''');',
'apex.item("P38_REMAINING_FRACTIONS").setValue('''');',
'apex.item("P38_DOCTOR").setValue('''');',
'apex.item("P38_PHYSICIST").setValue('''');',
'apex.item("P38_SRNO").setValue('''');',
'apex.item("P38_RADIATION_NO").setValue('''');',
'apex.item("P38_ND_SR_NO").setValue('''');',
'apex.item("P38_ND_MRNO").setValue('''');',
'apex.region("image").refresh();',
'',
'',
''))
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P38_GROUP_OLD'
,p_client_condition_expression=>'007'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49004622769731329)
,p_name=>'DAPatientQueue'
,p_event_sequence=>520
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47948686189191618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49004790396731330)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P38_ND_MRNO'', _.radpatqueue.QUEUE_MRNO);',
'$s(''P38_ND_SR_NO'', _.radpatqueue.SR_NO);',
'$s(''P38_ND_SCHEMA_ID'', _.radpatqueue.SCHEMA_ID);',
'$s(''P38_ND_PURCHASE_TYPE_ID'', _.radpatqueue.WORKFLOW_TYPE_ID);',
'$s(''P38_ND_WORK_FLOW_ID'', _.radpatqueue.WORK_FLOW_ID);',
'$s(''P38_ND_EVENT_ID'', _.radpatqueue.EVENT_ID);',
'$s(''P38_ND_NEXT_EVENT_ID'', _.radpatqueue.NEXT_EVENT_ID);',
'$s(''P38_ND_SITE_ID'', _.radpatqueue.SITE_ID);',
'$s(''P38_ND_RADIATION_NO'', _.radpatqueue.RADIATION_NO);',
'$s(''P38_PERFORMANCE_TYPE_ID_NEW_QUEUE'', _.radpatqueue.PERFORMANCE_TYPE_ID);',
'$s(''P38_ND_MACHINE_ID'', _.radpatqueue.MACHINE_ID);',
'$s(''P38_ND_FRACTION_ID'', _.radpatqueue.FRACTION_ID);',
'$s(''P38_REMAINING_PATIENTS'', _.radpatqueue.REMAINING_PATIENTS);',
'',
'',
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
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57458183529878132)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P38_CBED_ID", _.radpatqueue.BED_ID);',
'$s("P38_CNAME", _.radpatqueue.NAME);',
'$s("P38_CMRNO", _.radpatqueue.INFO_MRNO);',
'$s("P38_CRADIATION_NO", _.radpatqueue.RADIATION_NO);',
'$s("P38_CSITE", _.radpatqueue.PAT_INFO_SITE);',
'$s("P38_CGENDER", _.radpatqueue.PAT_INFO_GENDER);',
'$s("P38_CAGE", _.radpatqueue.PAT_INFO_AGE);',
'$s("P38_CALLERGIES", _.radpatqueue.PAT_INFO_ALLERGIES);',
'$s("P38_CFLAGS", _.radpatqueue.PAT_INFO_FLAGS);',
'$s("P38_ISOLATION", _.radpatqueue.PAT_INFO_ISOLATION_STATUS);',
'$s("P38_CDX", _.radpatqueue.CANCER_STATUS);',
'$s("P38_CCODE", _.radpatqueue.PAT_INFO_DNR);',
'$s("P38_ND_MRNO", _.radpatqueue.INFO_MRNO);',
'$s("P38_CTOTAL_FRACTRIONS", _.radpatqueue.PAT_INFO_FRACTIONS);',
'$s("P38_CDOCTOR", _.radpatqueue.PAT_INFO_DISP_DOCTOR);',
'$s("P38_CPHYSICIST_NAME", _.radpatqueue.PAT_INFO_PHYSICIST_NAME);',
'$s("P38_CSRNO", _.radpatqueue.PAT_INFO_SR_NO);',
'$s("P38_CTREATMENT_TYPE", _.radpatqueue.TREATMENT_TYPE);',
'$s("P38_CREQ_STATUS", _.radpatqueue.STATUS_REQUEST);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49423157715662916)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT (SELECT BED_ID FROM DEFINITIONS.BEDS T WHERE T.MRNO = PAT_MRNO) BED_ID,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(PAT_MRNO) NAME,',
'         PAT_MRNO,',
'         PAT_RAD_NO,',
'         PAT_SITE_ID,',
'         PAT_FARCTION_ID,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(PAT_SITE_ID),',
'         HIS.PKG_PATIENT.GET_GENDER(PAT_MRNO) GENDER,',
'         HIS.PKG_PATIENT.GET_AGE(PAT_MRNO) AGE,',
'         RADIATION.PKG_S18FRM00010.GET_SHOW_ALLERGIES(PAT_MRNO) ALLERGIES,',
'         RADIATION.PKG_S18FRM00010.FETCH_FLAGS(PAT_MRNO) FLAGS,',
'         ORDERENTRY.PKG_COMMON_UTIL.GET_PATIENT_ISOLATION_STATUS(PAT_MRNO,',
'                                                                 ''S'') ISOLATION_STATUS,',
'         HIS.PKG_PATIENT.GET_CANCER_STATUS(P_MRNO => PAT_MRNO) CANCER_STATUS,',
'         RADIATION.PKG_S18FRM00010.FETCH_DNR(PAT_MRNO) DNR,',
'         PAT_MRNO,',
'         RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => PAT_RAD_NO,',
'                                                           P_SITE_ID      => PAT_SITE_ID,',
'                                                           P_FRACTION_ID  => PAT_FARCTION_ID),',
'         (SELECT HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(M.DOCTOR_ID) DISP_DOCTOR',
'            FROM RADIATION.RADIATION_MASTER M',
'           WHERE M.RADIATION_NO = PAT_RAD_NO) DISP_DOCTOR,',
'         (SELECT HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => D.PHYSICIST)',
'            FROM RADIATION.RADIATION_DETAIL D',
'           WHERE D.RADIATION_NO = PAT_RAD_NO',
'             AND D.SITE_ID = PAT_SITE_ID) PHYSICIST_NAME,',
'         :P38_ND_SR_NO',
'    INTO :P38_CBED_NO,',
'         :P38_CNAME,',
'         :P38_CMRNO,',
'         :P38_CRADIATION_NO,',
'         :P38_CSITE_ID,',
'         :P38_CFRACTION_ID,',
'         :P38_CSITE,',
'         :P38_CGENDER,',
'         :P38_CAGE,',
'         :P38_CALLERGIES,',
'         :P38_CFLAGS,',
'         :P38_ISOLATION,',
'         :P38_CDX,',
'         :P38_CCODE,',
'         :P38_ND_MRNO,',
'         :P38_CTOTAL_FRACTRIONS,',
'         :P38_CDOCTOR,',
'         :P38_CPHYSICIST_NAME,',
'         :P38_CSRNO',
'    FROM (SELECT PAT_MRNO, PAT_RAD_NO, PAT_SITE_ID, PAT_FARCTION_ID',
'            FROM (SELECT RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(P_RADIATION_NO => S.RADIATION_NO) PAT_MRNO,',
'                         S.RADIATION_NO PAT_RAD_NO,',
'                         S.SITE_ID PAT_SITE_ID,',
'                         S.FRACTION_ID PAT_FARCTION_ID',
'                    FROM RADIATION.SCHEDULE S',
'                   WHERE S.SR_NO = :P38_ND_SR_NO))',
'   WHERE ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_03=>'P38_CBED_NO,P38_CNAME,P38_CMRNO,P38_CGENDER,P38_CAGE,P38_CALLERGIES,P38_CFLAGS,P38_ISOLATION,P38_CDX,P38_CCODE,P38_ND_MRNO,P38_CRADIATION_NO,P38_CSITE_ID,P38_CFRACTION_ID,P38_CTOTAL_FRACTRIONS,P38_CDOCTOR,P38_CPHYSICIST_NAME,,P38_CSRNO,P38_CSITE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49423214240662917)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                           P_SITE_ID      => RS.SITE_ID,',
'                                                           P_FRACTION_ID  => RS.FRACTION_ID),',
'         HIS.PKG_DOCTOR.GET_DOCTOR_SHORT_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => RD.PHYSICIST) AS PHYSICIST_NAME,',
'         RS.SR_NO,',
'         RM.RADIATION_NO,',
'         RD.SITE_ID,',
'         RS.FRACTION_ID,',
'         (SELECT M.PERFORMANCE_TYPE_ID',
'            FROM RADIATION.MACHINES M',
'           WHERE M.MACHINE_ID = RS.MACHINE_ID)',
'  ',
'    INTO :P38_REMAINING_FRACTIONS,',
'         :P38_DOCTOR,',
'         :P38_PHYSICIST,',
'         :P38_SRNO,',
'         :P38_RADIATION_NO,',
'         :P38_SITE_ID,',
'         :P38_FRACTION_ID,',
'         :P38_PERFORMANCE_TYPE_ID',
'    FROM RADIATION.RADIATION_MASTER RM,',
'         RADIATION.RADIATION_DETAIL RD,',
'         RADIATION.SCHEDULE         RS',
'   WHERE RS.SR_NO = :P38_ND_SR_NO',
'     AND RS.RADIATION_NO = RM.RADIATION_NO',
'     AND RD.RADIATION_NO = RM.RADIATION_NO',
'     AND RD.SITE_ID = RS.SITE_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P38_ND_SR_NO'
,p_attribute_03=>'P38_REMAINING_FRACTIONS,P38_DOCTOR,P38_PHYSICIST,P38_SRNO,P38_RADIATION_NO,P38_SITE_ID,P38_FRACTION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49424559263662930)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT A.DECISION_ID',
'    INTO :P38_ND_NEXT_EVENT',
'    FROM (SELECT TO_NUMBER(:P38_ND_NEXT_EVENT_ID) DECISION_ID',
'            FROM DUAL',
'           WHERE TO_NUMBER(:P38_ND_NEXT_EVENT_ID) IS NOT NULL',
'          UNION',
'          SELECT ED.DECISION_ID',
'            FROM DEFINITIONS.EVENT_DECISION ED',
'           WHERE ED.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'             AND ED.PURCHASE_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'             AND ED.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'             AND ED.EVENT_ID = :P38_ND_EVENT_ID',
'          UNION',
'          SELECT QE.EVENT_ID',
'            FROM RADIATION.DEF_QUEUE_EVENTS     QE,',
'                 DEFINITIONS.PR_TYPE_FLOW_EVENT FE,',
'                 DEFINITIONS.EVENT              EV',
'           WHERE QE.QUEUE_ID = :P38_GROUP',
'             AND QE.EVENT_ID = FE.EVENT_ID',
'             AND FE.EVENT_ID = EV.EVENT_ID',
'             AND QE.PERFORMABLE = ''Y''',
'             AND EV.USER_RUNTIME = ''Y'') A',
'   WHERE NOT EXISTS (SELECT 1',
'            FROM RADIATION.SCHEDULE_WORKFLOW RDW',
'           WHERE RDW.SR_NO = :P38_ND_SR_NO',
'             AND RDW.EVENT_ID = A.DECISION_ID',
'             AND RDW.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'             AND RDW.WORKFLOW_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'             AND RDW.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'             AND RDW.EVENT_ID = :P38_ND_EVENT_ID);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P38_ND_NEXT_EVENT_ID,P38_ND_SCHEMA_ID,P38_ND_PURCHASE_TYPE_ID,P38_ND_WORK_FLOW_ID,P38_ND_EVENT_ID,P38_GROUP'
,p_attribute_03=>'P38_ND_NEXT_EVENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121326475040782632)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TOTAL_COUNT        NUMBER;',
'    V_PERFORMED_COUNT       NUMBER;',
'BEGIN',
'    -- CALCULATE TOTAL PATIENTS',
'    SELECT COUNT(*)',
'      INTO V_TOTAL_COUNT',
'      FROM RADIATION.SCHEDULE RS',
'     WHERE RS.MACHINE_ID = NVL(:P38_SELECTED_MACHINE_ID, ''~'')',
'       AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P38_FROM_DATE, ''DD-MM-YYYY'') ',
'                                     AND TO_DATE(:P38_TO_DATE, ''DD-MM-YYYY''))',
'                                     AND RS.RADIATION_NO IS NOT NULL;',
'',
'    -- CALCULATE PERFORMED PATIENTS',
'    SELECT COUNT(*)',
'      INTO V_PERFORMED_COUNT',
'      FROM RADIATION.SCHEDULE RS',
'      JOIN RADIATION.SCHEDULE_WORKFLOW SW',
'        ON RS.SR_NO = SW.SR_NO',
'       AND RS.WFE_NO = SW.WFE_NO',
'     WHERE RS.MACHINE_ID = NVL(:P38_SELECTED_MACHINE_ID, ''~'')',
'       AND (TRUNC(RS.VISIT_DATE) BETWEEN TO_DATE(:P38_FROM_DATE, ''DD-MM-YYYY'') ',
'                                     AND TO_DATE(:P38_TO_DATE, ''DD-MM-YYYY'')',
'           AND EXISTS',
'              (SELECT 1',
'                 FROM RADIATION.SCHEDULE_WORKFLOW SW_SUB',
'                WHERE SW_SUB.SR_NO = RS.SR_NO',
'                  AND SW_SUB.EVENT_ID = 408))',
'                          AND RS.RADIATION_NO IS NOT NULL;',
'',
'    -- CALCULATE REMAINING PATIENTS',
'    :P38_REMAINING_PATIENTS := V_TOTAL_COUNT - V_PERFORMED_COUNT;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P38_REMAINING_PATIENTS := 0; ',
'END;',
''))
,p_attribute_02=>'P38_SELECTED_MACHINE_ID,P38_FROM_DATE,P38_TO_DATE'
,p_attribute_03=>'P38_REMAINING_PATIENTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(49004838995731331)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(805407967137601325)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49004940545731332)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(288518144184250247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49424462389662929)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ND_NEXT_EVENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52879185665214636)
,p_event_id=>wwv_flow_imp.id(49004622769731329)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("radpatalert").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49421976295662904)
,p_name=>'DAGroup1'
,p_event_sequence=>530
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49005981840731342)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49422079409662905)
,p_event_id=>wwv_flow_imp.id(49421976295662904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P38_GROUP_ID_QUEUE_NEW'', _.groupnew.QUEUE_ID);',
'',
'//apex.region("radpatqueue").refresh();',
'//apex.region("radpatalert").refresh();',
'//apex.region("radmachinenew").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53431973347072615)
,p_name=>'DAGroup2'
,p_event_sequence=>540
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49005981840731342)
,p_bind_type=>'live'
,p_execution_type=>'THROTTLE'
,p_execution_time=>100
,p_execution_immediate=>true
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53432000964072616)
,p_event_id=>wwv_flow_imp.id(53431973347072615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P38_GROUP_ID_QUEUE_NEW'', _.groupnew.QUEUE_ID);',
'',
'apex.region("radpatqueue").refresh();',
'apex.region("radpatalert").refresh();',
'apex.region("radmachinenew").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49422115127662906)
,p_name=>'DAMachine1'
,p_event_sequence=>550
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49006562425731348)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49422287539662907)
,p_event_id=>wwv_flow_imp.id(49422115127662906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$s(''P38_SELECTED_MACHINE_ID'', _.radmachinenew.MACHINE_ID);',
'//apex.region("radpatqueue").refresh();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49423891520662923)
,p_name=>'DARemarks'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49003365750731316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49424165941662926)
,p_event_id=>wwv_flow_imp.id(49423891520662923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("eventOpenForwardRemarks");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49425176695662936)
,p_name=>'DAForward'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49004022111731323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49425234838662937)
,p_event_id=>wwv_flow_imp.id(49425176695662936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let mrno = $v(''P38_ND_MRNO'');',
'let srNo = $v(''P38_ND_SR_NO'');',
'let siteId = $v(''P38_ND_SITE_ID'');',
'let radiationNo = $v(''P38_ND_RADIATION_NO'');',
'let groupId = $v(''P38_GROUP_ID_QUEUE_NEW'');',
'let performanceTypeId = $v(''P38_PERFORMANCE_TYPE_ID_NEW_QUEUE'');',
'let schemaId = $v(''P38_ND_SCHEMA_ID'');',
'let purchaseTypeId = $v(''P38_ND_PURCHASE_TYPE_ID'');',
'let workFlowId = $v(''P38_ND_WORK_FLOW_ID'');',
'let nextEventId = $v(''P38_NEW_NEXT_EVENT_ID'') !== '''' ? $v(''P38_NEW_NEXT_EVENT_ID'') : $v(''P38_ND_NEXT_EVENT_ID'');',
'let forwardRemarks = $v(''P38_FORWARD_REMARKS'');',
'let eventId = $v(''P38_ND_EVENT_ID'');',
'',
'',
'forward(',
'    mrno,',
'    srNo,',
'    siteId,',
'    radiationNo,',
'    groupId,',
'    performanceTypeId,',
'    schemaId,',
'    purchaseTypeId,',
'    workFlowId,',
'    nextEventId,',
'    forwardRemarks,',
'    eventId',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49424227820662927)
,p_name=>'DAHistory'
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49004308831731326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49424351161662928)
,p_event_id=>wwv_flow_imp.id(49424227820662927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("eventHistory");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75178746321765302)
,p_name=>'DAPreForwardIsolationCheck'
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49004022111731323)
,p_bind_type=>'live'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>300
,p_execution_immediate=>false
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75178917701765304)
,p_event_id=>wwv_flow_imp.id(75178746321765302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_CONTACT         CHAR(1) := ''N'';',
'  L_DROPLET         CHAR(1) := ''N'';',
'  L_AIRBORNE        CHAR(1) := ''N'';',
'  L_PROTECTIVE      CHAR(1) := ''N'';',
'  L_ISOLATION_ALERT VARCHAR2(4000);',
'BEGIN',
'',
'  BEGIN',
'    SELECT CONTACT',
'      INTO L_CONTACT',
'      FROM REGISTRATION.PATIENT_ISOLATION_STATUS',
'     WHERE MRNO = :P38_ND_MRNO',
'       AND ROWNUM = 1; -- Limiting to one row, assuming MRNO is unique',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      L_CONTACT := ''N''; -- Set default value if no data found',
'    WHEN OTHERS THEN',
'      L_CONTACT := ''N''; -- Set default value on any other exception',
'  END;',
'',
'  BEGIN',
'    SELECT DROPLET',
'      INTO L_DROPLET',
'      FROM REGISTRATION.PATIENT_ISOLATION_STATUS',
'     WHERE MRNO = :P38_ND_MRNO',
'       AND ROWNUM = 1; -- Limiting to one row, assuming MRNO is unique',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      L_DROPLET := ''N''; -- Set default value if no data found',
'    WHEN OTHERS THEN',
'      L_DROPLET := ''N''; -- Set default value on any other exception',
'  END;',
'',
'  BEGIN',
'    SELECT AIRBORNE',
'      INTO L_AIRBORNE',
'      FROM REGISTRATION.PATIENT_ISOLATION_STATUS',
'     WHERE MRNO = :P38_ND_MRNO',
'       AND ROWNUM = 1; -- Limiting to one row, assuming MRNO is unique',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      L_AIRBORNE := ''N''; -- Set default value if no data found',
'    WHEN OTHERS THEN',
'      L_AIRBORNE := ''N''; -- Set default value on any other exception',
'  END;',
'',
'  BEGIN',
'    SELECT PROTECTIVE',
'      INTO L_PROTECTIVE',
'      FROM REGISTRATION.PATIENT_ISOLATION_STATUS',
'     WHERE MRNO = :P38_ND_MRNO',
'       AND ROWNUM = 1; -- Limiting to one row, assuming MRNO is unique',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      L_PROTECTIVE := ''N''; -- Set default value if no data found',
'    WHEN OTHERS THEN',
'      L_PROTECTIVE := ''N''; -- Set default value on any other exception',
'  END;',
'',
'  -- Constructing the isolation alert message',
'  IF L_CONTACT = ''Y'' OR L_DROPLET = ''Y'' OR L_AIRBORNE = ''Y'' OR',
'     L_PROTECTIVE = ''Y'' THEN',
'    L_ISOLATION_ALERT := ''The patient''''s isolation status includes '';',
'  ',
'    IF L_CONTACT = ''Y'' THEN',
'      L_ISOLATION_ALERT := L_ISOLATION_ALERT || ''Contact, '';',
'    END IF;',
'  ',
'    IF L_DROPLET = ''Y'' THEN',
'      L_ISOLATION_ALERT := L_ISOLATION_ALERT || ''Droplet, '';',
'    END IF;',
'  ',
'    IF L_AIRBORNE = ''Y'' THEN',
'      L_ISOLATION_ALERT := L_ISOLATION_ALERT || ''Airborne, '';',
'    END IF;',
'  ',
'    IF L_PROTECTIVE = ''Y'' THEN',
'      L_ISOLATION_ALERT := L_ISOLATION_ALERT || ''Protective, '';',
'    END IF;',
'  ',
'    L_ISOLATION_ALERT    := RTRIM(L_ISOLATION_ALERT, '', '') || '' measures.'';',
'    :P38_ISOLATION_ALERT := L_ISOLATION_ALERT;',
'  ',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P38_ISOLATION_ALERT := NULL;',
'END;',
''))
,p_attribute_02=>'P38_ND_MRNO'
,p_attribute_03=>'P38_ISOLATION_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51223812880879608)
,p_name=>'DASendBack'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49004187707731324)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121326054073782628)
,p_event_id=>wwv_flow_imp.id(51223812880879608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to send back the selected patient? Please confirm.'
,p_attribute_02=>'System Message'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51223999292879609)
,p_event_id=>wwv_flow_imp.id(51223812880879608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sendBack(',
'    $v(''P38_ND_MRNO''),',
'    $v(''P38_ND_SR_NO''),',
'    $v(''P38_ND_SITE_ID''),',
'    $v(''P38_ND_RADIATION_NO''),',
'    $v(''P38_GROUP_ID_QUEUE_NEW''),',
'    $v(''P38_PERFORMANCE_TYPE_ID_NEW_QUEUE''),',
'    $v(''P38_ND_SCHEMA_ID''),',
'    $v(''P38_ND_PURCHASE_TYPE_ID''),',
'    $v(''P38_ND_WORK_FLOW_ID''),',
'    $v(''P38_ND_NEXT_EVENT_ID''),',
'    $v(''P38_FORWARD_REMARKS'')',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51227112887879641)
,p_name=>'DADialogClosed'
,p_event_sequence=>600
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51227280977879642)
,p_event_id=>wwv_flow_imp.id(51227112887879641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'refreshGridPosition("radpatqueue"); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52879462384214639)
,p_name=>'DAAck'
,p_event_sequence=>610
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52879219883214637)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53126527933499201)
,p_event_id=>wwv_flow_imp.id(52879462384214639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT      NUMBER := 0;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'',
'BEGIN',
'  IF :P38_ND_ALERT_SRNO IS NOT NULL THEN',
'    RADIATION.PKG_ALERTS.ACKNOWLEDGE_ALERT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                           P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                           P_RADIATION_NO      => :P38_ND_RADIATION_NO,',
'                                           P_SITE_ID           => :P38_ND_SITE_ID,',
'                                           P_SR_NO             => :P38_ND_SR_NO,',
'                                           P_ALERT_SRNO        => :P38_ND_ALERT_SRNO,',
'                                           P_REMARKS           => NULL,',
'                                           P_USER_MRNO         => :GV_USER_MRNO,',
'                                           P_TERMINAL          => :GV_TERMINAL,',
'                                           P_OBJECT_CODE       => ''S18APX00037'',',
'                                           P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                           P_STOP              => L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      RAISE EX_CUSTOM;',
'    END IF;',
'  ',
'    :P38_ALERT_SUCCESS_MESSAGE := ''The Patient alert has been acknowledged'';',
'     ',
'  ELSE',
'    :P38_ALERT_FAILURE_MESSAGE := ''There is no Patient alert to acknolwedge'';',
'  END IF;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    :P38_ALERT_FAILURE_MESSAGE := L_ALERT_TEXT;',
'  WHEN OTHERS THEN',
'    :P38_ALERT_FAILURE_MESSAGE := '' LINE NO: '' || $$PLSQL_LINE ||',
'                                  '' ERROR MESSAGE: '' || SQLERRM ||',
'                                  SYS.DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'  ',
'END;',
''))
,p_attribute_02=>'P38_ND_RADIATION_NO,P38_ND_SITE_ID,P38_ND_SR_NO,P38_ND_ALERT_SRNO'
,p_attribute_03=>'P38_ALERT_SUCCESS_MESSAGE,P38_ALERT_FAILURE_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52879929139214644)
,p_name=>'DAAlertSuccessMessage '
,p_event_sequence=>620
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ALERT_SUCCESS_MESSAGE'
,p_condition_element=>'P38_ALERT_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52880059441214645)
,p_event_id=>wwv_flow_imp.id(52879929139214644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P38_ALERT_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52880565063214650)
,p_event_id=>wwv_flow_imp.id(52879929139214644)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("radpatalert").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52880185032214646)
,p_name=>'DAAlertFailureMessage'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ALERT_FAILURE_MESSAGE'
,p_condition_element=>'P38_ALERT_FAILURE_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52880220170214647)
,p_event_id=>wwv_flow_imp.id(52880185032214646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P38_ALERT_FAILURE_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52880330458214648)
,p_name=>'DARadiationAlert'
,p_event_sequence=>640
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(52877323596214618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52880471156214649)
,p_event_id=>wwv_flow_imp.id(52880330458214648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P38_ND_ALERT_SRNO'', _.radpatalert.ALERT_SRNO);',
'$s(''P38_ACK_ALLOWED'', _.radpatalert.ACKNOWLEDGE);',
'$s(''P38_DISMISS_ALLOWED'', _.radpatalert.DISMISS_ENABLED);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53432445482072620)
,p_event_id=>wwv_flow_imp.id(52880330458214648)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P38_ACK_ALLOWED") === "Y") {',
'    apex.item("btnack").enable();',
'}',
'else {',
'    apex.item("btnack").disable();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53126903038499205)
,p_name=>'DAReload'
,p_event_sequence=>650
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52879300113214638)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53127186364499207)
,p_event_id=>wwv_flow_imp.id(53126903038499205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT      NUMBER := 0;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'',
'BEGIN',
'  IF :P38_ND_ALERT_SRNO IS NOT NULL THEN',
'    RADIATION.PKG_ALERTS.POPULATE_RAD_ALERTS(P_ORGANIZATION_ID     => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID   => :GV_LOCATION_ID,',
'                                             P_RADIATION_NO        => :P38_ND_RADIATION_NO,',
'                                             P_SITE_ID             => :P38_ND_SITE_ID,',
'                                             P_SR_NO               => :P38_ND_SR_NO,',
'                                             P_PERFORMANCE_TYPE_ID => :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE,',
'                                             P_FRACTION_ID         => :P38_ND_FRACTION_ID,',
'                                             P_ALERT_ID            => NULL,',
'                                             P_USER_MRNO           => :GV_USER_MRNO,',
'                                             P_TERMINAL            => :GV_TERMINAL,',
'                                             P_OBJECT_CODE         => ''S18APX00037'',',
'                                             P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                             P_STOP                => L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      RAISE EX_CUSTOM;',
'    END IF;',
'  ',
'    :P38_ALERT_SUCCESS_MESSAGE := ''The Patient alert has been reload'';',
'  ',
'  ELSE',
'    :P38_ALERT_FAILURE_MESSAGE := ''There is no Patient alert(s) to reload'';',
'  END IF;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    :P38_ALERT_FAILURE_MESSAGE := L_ALERT_TEXT;',
'  WHEN OTHERS THEN',
'    :P38_ALERT_FAILURE_MESSAGE := '' LINE NO: '' || $$PLSQL_LINE ||',
'                                  '' ERROR MESSAGE: '' || SQLERRM ||',
'                                  SYS.DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'  ',
'END;',
''))
,p_attribute_02=>'P38_ND_RADIATION_NO,P38_ND_SITE_ID,P38_ND_SR_NO,P38_ND_ALERT_SRNO,P38_ND_FRACTION_ID'
,p_attribute_03=>'P38_ALERT_SUCCESS_MESSAGE,P38_ALERT_FAILURE_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181341168254776607)
,p_name=>'DASelectedMAchineID'
,p_event_sequence=>660
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SELECTED_MACHINE_ID'
,p_condition_element=>'P38_SELECTED_MACHINE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'THROTTLE'
,p_execution_time=>500
,p_execution_immediate=>true
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181341248393776608)
,p_event_id=>wwv_flow_imp.id(181341168254776607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("radpatqueue").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181341334569776609)
,p_name=>'DAGroupID'
,p_event_sequence=>670
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_GROUP_ID_QUEUE_NEW'
,p_condition_element=>'P38_GROUP_ID_QUEUE_NEW'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181341418208776610)
,p_event_id=>wwv_flow_imp.id(181341334569776609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("radpatqueue").refresh();',
'apex.region("radpatalert").refresh();',
'apex.region("radmachinenew").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53431386638072609)
,p_name=>'New'
,p_event_sequence=>680
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53431474768072610)
,p_event_id=>wwv_flow_imp.id(53431386638072609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("radpatqueue").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55372118429424826)
,p_name=>'ShowHideRnaesthesiaRequestButton'
,p_event_sequence=>690
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55372242097424827)
,p_event_id=>wwv_flow_imp.id(55372118429424826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT NUMBER := 0;',
'BEGIN',
'  SELECT COUNT(1)',
'    INTO L_COUNT',
'    FROM SECURITY.MEMBER',
'   WHERE USERID = :GV_USER_ID',
'     AND GROUPID = ''G110279''; --AUTHORIZATION_FOR_ANESTHESIA_REQUEST (RADIATION)',
'',
'  IF L_COUNT > 0 THEN',
'    :P38_IS_AUTHORISE_TO_ENTER_REQUEST_ANAESTHESIA := ''Y'';',
'  ELSE',
'    :P38_IS_AUTHORISE_TO_ENTER_REQUEST_ANAESTHESIA := ''N'';',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P38_IS_AUTHORISE_TO_ENTER_REQUEST_ANAESTHESIA := ''N'';',
'END;',
''))
,p_attribute_03=>'P38_IS_AUTHORISE_TO_ENTER_REQUEST_ANAESTHESIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55372411772424829)
,p_event_id=>wwv_flow_imp.id(55372118429424826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17916566744390538)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P38_IS_AUTHORISE_TO_ENTER_REQUEST_ANAESTHESIA'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57455678315878107)
,p_name=>'DAScheduleView'
,p_event_sequence=>700
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(57455279349878103)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57455811340878109)
,p_event_id=>wwv_flow_imp.id(57455678315878107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := V(''APP_ID'');',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P38_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' || L_APP ||',
'                                                           '':57:'' ||',
'                                                           L_SESSION ||',
'                                                           ''::NO::P57_MRNO,P57_RADIATION_NO_2,P57_SCHEDULE_SRNO:'' ||',
'                                                           :P38_ND_MRNO || '','' ||',
'                                                           :P38_ND_RADIATION_NO || '','' ||',
'                                                           :P38_ND_SR_NO,',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P38_ND_MRNO'
,p_attribute_03=>'P38_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57455969863878110)
,p_event_id=>wwv_flow_imp.id(57455678315878107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P38_TXT_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75179447328765309)
,p_name=>'DAContact'
,p_event_sequence=>710
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_H_CONTACT'
,p_condition_element=>'P38_H_CONTACT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75179562032765310)
,p_event_id=>wwv_flow_imp.id(75179447328765309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The patient has isolation status <b>contact</b>'
,p_attribute_02=>'System Alert'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75180303315765318)
,p_name=>'DAIsolationAlert'
,p_event_sequence=>710
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ISOLATION_ALERT'
,p_condition_element=>'P38_ISOLATION_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75180412669765319)
,p_event_id=>wwv_flow_imp.id(75180303315765318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P38_ISOLATION_ALERT.</b>'
,p_attribute_02=>'System Alert'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75179604106765311)
,p_name=>'DADroplet'
,p_event_sequence=>720
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_H_DROPLET'
,p_condition_element=>'P38_H_DROPLET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75179874864765313)
,p_event_id=>wwv_flow_imp.id(75179604106765311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The patient has isolation status <b>droplet</b>'
,p_attribute_02=>'System Alert'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75179906241765314)
,p_name=>'DAAirborne'
,p_event_sequence=>730
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_H_AIRBORNE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75180136761765316)
,p_event_id=>wwv_flow_imp.id(75179906241765314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The patient has isolation status <b>droplet</b>'
,p_attribute_02=>'System Alert'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75180734301765322)
,p_name=>'DAIsoloation'
,p_event_sequence=>740
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ISOLATION'
,p_condition_element=>'P38_ISOLATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75180818375765323)
,p_event_id=>wwv_flow_imp.id(75180734301765322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var isolation = $v(''P38_ISOLATION'');',
'var color;',
'',
'switch (true) {',
'    case isolation.includes(''Contact''):',
'    case isolation.includes(''Airborne''):',
'    case isolation.includes(''Droplet''):',
'    case isolation.includes(''Protective''):',
'        color = ''red'';',
'        break;',
'    default:',
'        color = ''''; ',
'}',
'',
'$(''#P38_ISOLATION'').css(''color'', color);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(86795208821682140)
,p_name=>'SetNextEventId'
,p_event_sequence=>750
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ND_NEXT_EVENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86795309407682141)
,p_event_id=>wwv_flow_imp.id(86795208821682140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get the value from another page item',
'let value = $v("P38_ND_NEXT_EVENT");',
'',
'// Set the value to the desired page item',
'apex.item("P38_NEW_NEXT_EVENT_ID").setValue(value);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121324591212782613)
,p_name=>'DAPatientQueue1'
,p_event_sequence=>760
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47948686189191618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121324613530782614)
,p_event_id=>wwv_flow_imp.id(121324591212782613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view = apex.region("radpatqueue").call("getCurrentView");',
'',
'var model = view.model;',
'',
'var totalRecords = model.getTotalRecords();',
'',
'totalRecords = (totalRecords === 0) ? '''' : totalRecords;',
'',
'$s("patientCountDisplay1", totalRecords);',
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
 p_id=>wwv_flow_imp.id(121326525799782633)
,p_name=>'DARemainingPatients1'
,p_event_sequence=>770
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_REMAINING_PATIENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121326609740782634)
,p_event_id=>wwv_flow_imp.id(121326525799782633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remainingPatients = apex.item("P38_REMAINING_PATIENTS").getValue();',
'',
'$s("patientCountDisplay2", remainingPatients);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121327302347782641)
,p_name=>'DAVitalSigns1'
,p_event_sequence=>780
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(121326781301782635)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121327582290782643)
,p_event_id=>wwv_flow_imp.id(121327302347782641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := 138;',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P38_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' || L_APP ||',
'                                                           '':182:'' ||',
'                                                           L_SESSION ||',
'                                                           ''::NO::P182_P_TXT_PATIENT_MRNO:'' ||',
'                                                           :P38_ND_MRNO,',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P38_ND_MRNO'
,p_attribute_03=>'P38_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121327675872782644)
,p_event_id=>wwv_flow_imp.id(121327302347782641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P38_TXT_URL''));    '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(214933871290443507)
,p_name=>'DATreatmentType'
,p_event_sequence=>790
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_CTREATMENT_TYPE'
,p_condition_element=>'P38_CTREATMENT_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(214933985230443508)
,p_event_id=>wwv_flow_imp.id(214933871290443507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var treatmentType = $v(''P38_CTREATMENT_TYPE'');',
'var color;',
' ',
'switch (true) {',
'    case treatmentType.includes(''Electron''):',
' ',
'        color = ''green'';',
'        break;',
'    default:',
'        color = '''';',
'}',
' ',
'$(''#P38_CTREATMENT_TYPE'').css(''color'', color);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189051089894356911)
,p_name=>'DAAck1'
,p_event_sequence=>800
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_ACK_ALLOWED'
,p_condition_element=>'P38_ACK_ALLOWED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189051177897356912)
,p_event_id=>wwv_flow_imp.id(189051089894356911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P38_ACK_ALLOWED") === "Y") {',
'    apex.item("btnack").enable();',
'}',
'else {',
'    apex.item("btnack").disable();',
'}'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P38_ACK_ALLOWED'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189051391496356914)
,p_name=>'DADismissAllowed'
,p_event_sequence=>810
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_DISMISS_ALLOWED'
,p_condition_element=>'P38_DISMISS_ALLOWED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189051471308356915)
,p_event_id=>wwv_flow_imp.id(189051391496356914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P38_DISMISS_ALLOWED") === "Y") {',
'    apex.item("btndismiss").enable();',
'}',
'else {',
'    apex.item("btndismiss").disable();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189051735187356918)
,p_name=>'DADismiss'
,p_event_sequence=>820
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189051595887356916)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189052038457356921)
,p_event_id=>wwv_flow_imp.id(189051735187356918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT      NUMBER := 0;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'',
'BEGIN',
'  IF :P38_ND_ALERT_SRNO IS NOT NULL THEN',
'    RADIATION.PKG_ALERTS.DISMISS_ALERT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                       P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                       P_RADIATION_NO      => :P38_ND_RADIATION_NO,',
'                                       P_SITE_ID           => :P38_ND_SITE_ID,',
'                                       P_SR_NO             => :P38_ND_SR_NO,',
'                                       P_ALERT_SRNO        => :P38_ND_ALERT_SRNO,',
'                                       P_REMARKS           => NULL,',
'                                       P_USER_MRNO         => :GV_USER_MRNO,',
'                                       P_TERMINAL          => :GV_TERMINAL,',
'                                       P_OBJECT_CODE       => ''S18APX00037'',',
'                                       P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                       P_STOP              => L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      RAISE EX_CUSTOM;',
'    END IF;',
'  ',
'    :P38_ALERT_SUCCESS_MESSAGE := ''The patient alert has been dismissed'';',
'  ',
'  ELSE',
'    :P38_ALERT_FAILURE_MESSAGE := ''There is no Patient alert to dismiss'';',
'  END IF;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    :P38_ALERT_FAILURE_MESSAGE := L_ALERT_TEXT;',
'  WHEN OTHERS THEN',
'    :P38_ALERT_FAILURE_MESSAGE := '' LINE NO: '' || $$PLSQL_LINE ||',
'                                  '' ERROR MESSAGE: '' || SQLERRM ||',
'                                  SYS.DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'  ',
'END;',
''))
,p_attribute_02=>'P38_ND_RADIATION_NO,P38_ND_SITE_ID,P38_ND_SR_NO,P38_ND_ALERT_SRNO'
,p_attribute_03=>'P38_ALERT_SUCCESS_MESSAGE,P38_ALERT_FAILURE_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278899637654597602)
,p_name=>'DAHidePatientCount'
,p_event_sequence=>830
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278899738827597603)
,p_event_id=>wwv_flow_imp.id(278899637654597602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vGroupId = $v("P38_GROUP_OLD");',
'',
'var region = document.getElementById(''patcount'');',
'',
'if (vGroupId === ''007'') {',
'',
'    if (region) {',
'',
'        region.style.display = ''block'';',
'',
'    }',
'',
'} else {',
'',
'    if (region) {',
'',
'        region.style.display = ''none'';',
'',
'    }',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278415982395867013)
,p_name=>'DARequestStatus'
,p_event_sequence=>840
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_CREQ_STATUS'
,p_condition_element=>'P38_CREQ_STATUS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278416084697867014)
,p_event_id=>wwv_flow_imp.id(278415982395867013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var reqStatus = $v(''P38_CREQ_STATUS'');',
'var color;',
'',
'switch (true) {',
'    case reqStatus.includes(''Cancelled''):',
'        color = ''red'';',
'        break;',
'    default:',
'        color = '''';',
'}',
'',
'$(''#P38_CREQ_STATUS'').css(''color'', color);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288319449968877228)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ValidateEvent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT          VARCHAR2(4000);',
'  L_STOP                CHAR(1) := ''N'';',
'  L_OBJECT_CODE         DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE;',
'  L_QUEUE_ID            RADIATION.DEF_QUEUE.QUEUE_ID%TYPE := :P38_GROUP; --APEX_APPLICATION.G_x01;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_QUEUE_EVENT_ALERTS.PERFORMANCE_TYPE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_RADIATION_NO        RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE := APEX_APPLICATION.G_x03;',
'  L_SCHEMA_ID           DEFINITIONS.PR_TYPE_FLOW_EVENT.SCHEMA_ID%TYPE := APEX_APPLICATION.G_x04;',
'  L_WORKFLOW_TYPE_ID    DEFINITIONS.PR_TYPE_FLOW_EVENT.PURCHASE_TYPE_ID%TYPE := APEX_APPLICATION.G_x05;',
'  L_WORK_FLOW_ID        DEFINITIONS.PR_TYPE_FLOW_EVENT.WORK_FLOW_ID%TYPE := APEX_APPLICATION.G_x06;',
'  L_NEXT_EVENT_ID       RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := NVL(APEX_APPLICATION.G_x07,',
'                                                                         :P38_ND_NEXT_EVENT);',
'  L_MRNO                RADIATION.RADIATION_MASTER.MRNO%TYPE := APEX_APPLICATION.G_x08;',
'  L_SCHEDULE_SRNO       RADIATION.SCHEDULE.SR_NO%TYPE := :P38_ND_SR_NO; --APEX_APPLICATION.G_x09;',
'  L_REMARKS             RADIATION.SCHEDULE.REMARKS%TYPE := APEX_APPLICATION.G_x10;',
'  L_TEMPLATE_ID         DEFINITIONS.EVENT_WISE_DETAIL.PARAMETER_VALUE%TYPE;',
'  L_EVENT_ID            RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := NVL(APEX_APPLICATION.G_x11,',
'                                                                         :P38_ND_EVENT_ID);',
'  L_RESULT_JSON         VARCHAR2(32000);',
'  L_ALREADY_PERFORMED   CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_COUNT NUMBER := 0;',
'BEGIN',
'  :LV_PATIENT_MRNO := L_MRNO;',
'  :LV_SR_NO        := L_SCHEDULE_SRNO;',
'  --L_ALERT_TEXT := L_NEXT_EVENT_ID ||''--''|| L_EVENT_ID;',
'  --     RAISE EX_CUSTOM;',
'',
'  IF L_NEXT_EVENT_ID = ''420'' THEN',
'    BEGIN',
'      SELECT RA.ALERT_TEXT',
'        INTO L_ALERT_TEXT',
'        FROM RADIATION.RAD_ALERTS RA, RADIATION.DEF_ALERTS A',
'       WHERE RA.ALERT_ID = A.ALERT_ID',
'         AND RA.RADIATION_NO = :P38_ND_RADIATION_NO',
'         AND RA.SITE_ID = :P38_ND_SITE_ID',
'         AND RA.SR_NO = :P38_ND_SR_NO',
'         AND RA.STATUS_ID = ''020''',
'         AND ((:P38_GROUP_ID_QUEUE_NEW IS NULL AND',
'             :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE IS NULL AND',
'             :P38_ND_EVENT_ID IS NULL) OR EXISTS',
'              (SELECT 1',
'                 FROM RADIATION.DEF_QUEUE_EVENT_ALERTS EA',
'                WHERE EA.QUEUE_ID = :P38_GROUP_ID_QUEUE_NEW',
'                  AND EA.PERFORMANCE_TYPE_ID =',
'                      :P38_PERFORMANCE_TYPE_ID_NEW_QUEUE',
'                  AND EA.EVENT_ID = :P38_ND_EVENT_ID',
'                  AND EA.ALERT_ID = RA.ALERT_ID',
'                  AND EA.ACTIVE = ''Y''))',
'         AND ROWNUM = 1',
'       ORDER BY RA.ALERT_SRNO;',
'    ',
'      IF L_ALERT_TEXT IS NOT NULL THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    EXCEPTION',
'      WHEN EX_CUSTOM THEN',
'        RAISE EX_CUSTOM;',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'',
'  IF L_NEXT_EVENT_ID = ''663'' THEN',
'  ',
'    :P38_OBJECT_CODE := ''S18APX00037'';',
'  ',
'  END IF;',
'',
'  BEGIN',
'    HIS.PKG_CONFIDENTIAL_PATIENT.CONFIDENTIAL_ALLOWED(P_PATIENT_MRNO => L_MRNO,',
'                                                      P_USER_MRNO    => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''USER_MRNO''),',
'                                                      P_OBJECT_CODE  => ''S18APX00037'',',
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
'                                              P_EVENT_ID            => L_EVENT_ID,',
'                                              P_REMARKS             => :P38_FORWARD_REMARKS,',
'                                              P_USER_MRNO           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''USER_MRNO''),',
'                                              P_OBJECT_CODE         => ''S18APX00037'',',
'                                              P_TERMINAL            => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                   ''TERMINAL''),',
'                                              P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                              P_STOP                => L_STOP);',
'      IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    ',
'    END IF;',
'    IF L_NEXT_EVENT_ID IN (''351'', ''352'') THEN',
'      BEGIN',
'        SELECT COUNT(1)',
'          INTO L_COUNT',
'          FROM RADIATION.SCHEDULE_WORKFLOW W',
'         WHERE W.SR_NO = L_SCHEDULE_SRNO',
'           AND W.EVENT_ID = L_NEXT_EVENT_ID;',
'      ',
'        IF L_COUNT > 0 THEN',
'          L_ALREADY_PERFORMED := ''Y'';',
'        ELSE',
'          L_ALREADY_PERFORMED := ''N'';',
'        END IF;',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
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
,p_internal_uid=>288319449968877228
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288319831607877228)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ValidateEventBack'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT          VARCHAR2(4000);',
'  L_STOP                CHAR(1) := ''N'';',
'  L_QUEUE_ID            RADIATION.DEF_QUEUE.QUEUE_ID%TYPE := :P38_GROUP; -- APEX_APPLICATION.G_x01;',
'  L_PERFORMANCE_TYPE_ID RADIATION.DEF_QUEUE_EVENT_ALERTS.PERFORMANCE_TYPE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_SCHEMA_ID           DEFINITIONS.PR_TYPE_FLOW_EVENT.SCHEMA_ID%TYPE := APEX_APPLICATION.G_x03;',
'  L_WORKFLOW_TYPE_ID    DEFINITIONS.PR_TYPE_FLOW_EVENT.PURCHASE_TYPE_ID%TYPE := APEX_APPLICATION.G_x04;',
'  L_WORK_FLOW_ID        DEFINITIONS.PR_TYPE_FLOW_EVENT.WORK_FLOW_ID%TYPE := APEX_APPLICATION.G_x05;',
'  L_NEXT_EVENT_ID       RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := APEX_APPLICATION.G_x06;',
'  L_SCHEDULE_SRNO       RADIATION.SCHEDULE.SR_NO%TYPE := APEX_APPLICATION.G_x07;',
'  L_EVENT_ID            RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE;',
'  L_RESULT_JSON         VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  :LV_PATIENT_MRNO := :P38_ND_MRNO;',
'  :LV_SR_NO        := L_SCHEDULE_SRNO;',
'  BEGIN',
'    SELECT W.EVENT_ID',
'      INTO L_EVENT_ID',
'      FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW W',
'     WHERE S.SR_NO = L_SCHEDULE_SRNO',
'       AND W.SR_NO = S.SR_NO',
'       AND W.WFE_NO = S.WFE_NO;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
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
,p_internal_uid=>288319831607877228
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(288320261243877229)
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
'  L_NEXT_EVENT_ID RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_EVENT_ID      RADIATION.SCHEDULE_WORKFLOW.EVENT_ID%TYPE;',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  BEGIN',
'    SELECT W.EVENT_ID',
'      INTO L_EVENT_ID',
'      FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW W',
'     WHERE S.SR_NO = L_SCHEDULE_SRNO',
'       AND W.SR_NO = S.SR_NO',
'       AND W.WFE_NO = S.WFE_NO;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  IF L_EVENT_ID IS NULL THEN',
'    L_ALERT_TEXT := ''There is no previous event, cannot proceed.'';',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  RADIATION.PKG_S18FRM00133.UNDO_EVENT(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''ORGANIZATION_ID''),',
'                                       P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''LOCATION_ID''),',
'                                       P_SCHEDULE_SRNO   => L_SCHEDULE_SRNO,',
'                                       P_EVENT_ID        => L_EVENT_ID,',
'                                       P_USER_MRNO       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''USER_MRNO''),',
'                                       P_OBJECT_CODE     => ''S18APX00037'',',
'                                       P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''TERMINAL''),',
'                                       P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                       P_STOP            => L_STOP);',
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
,p_internal_uid=>288320261243877229
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79588703191019517)
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
'  L_SCHEDULE_SRNO       RADIATION.SCHEDULE.SR_NO%TYPE := :P38_ND_SR_NO; --APEX_APPLICATION.G_x07;',
'  L_MRNO                RADIATION.RADIATION_MASTER.MRNO%TYPE := :P38_ND_MRNO;',
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
'  IF L_NEXT_EVENT_ID = ''420'' THEN ',
'    BEGIN',
'      SELECT RA.ALERT_TEXT',
'        INTO L_ALERT_TEXT',
'        FROM RADIATION.RAD_ALERTS RA, RADIATION.DEF_ALERTS DA',
'       WHERE DA.ALERT_ID = RA.ALERT_ID',
'         AND DA.ALERT_TYPE = ''E''',
'         AND RA.STATUS_ID = ''020''',
'         AND EXISTS (SELECT 1',
'                FROM RADIATION.SCHEDULE S',
'               WHERE S.SR_NO = L_SCHEDULE_SRNO',
'                 AND S.RADIATION_NO = RA.RADIATION_NO',
'                 AND S.SITE_ID = RA.SITE_ID',
'                 AND S.SR_NO = RA.SR_NO)',
'         AND ROWNUM = 1',
'       ORDER BY RA.ALERT_SRNO;',
'    ',
'      IF L_ALERT_TEXT IS NOT NULL THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    EXCEPTION',
'      WHEN EX_CUSTOM THEN',
'        RAISE EX_CUSTOM;',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'    END IF;',
'  ',
'    BEGIN',
'      HIS.PKG_CONFIDENTIAL_PATIENT.CONFIDENTIAL_ALLOWED(P_PATIENT_MRNO => L_MRNO,',
'                                                        P_USER_MRNO    => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''USER_MRNO''),',
'                                                        P_OBJECT_CODE  => ''S18APX00037'',',
'                                                        P_TERMINAL     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''TERMINAL''),',
'                                                        P_EVENT        => ''PARAMBLOCK-FORWARD_EVENT'',',
'                                                        P_ALERT        => L_ALERT_TEXT,',
'                                                        P_STOP         => L_STOP);',
'    ',
'      IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'      IF L_NEXT_EVENT_ID IS NULL THEN',
'        L_ALERT_TEXT := ''There is no further event, cannot proceed.'';',
'        RAISE EX_CUSTOM;',
'      END IF;',
'    END;',
'    BEGIN',
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
'    END;',
'  ',
'    RADIATION.PKG_S18FRM00133.PERFORM_EVENT(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                            P_LOCATION_ID         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                            P_SCHEDULE_SRNO       => L_SCHEDULE_SRNO,',
'                                            P_NEXT_EVENT_ID       => L_NEXT_EVENT_ID,',
'                                            P_QUEUE_ID            => L_QUEUE_ID,',
'                                            P_PERFORMANCE_TYPE_ID => L_PERFORMANCE_TYPE_ID,',
'                                            P_EVENT_ID            => :P38_ND_EVENT_ID,',
'                                            P_REMARKS             => :P38_FORWARD_REMARKS,',
'                                            P_USER_MRNO           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                            P_OBJECT_CODE         => ''S18APX00037'',',
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
'  --END;',
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
,p_internal_uid=>79588703191019517
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
 p_id=>wwv_flow_imp.id(79588995056019519)
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
'  HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE => L_OBJECT_CODE || L_CALLING_OBJECT_CODE, P_CATEGORY => ''QUEUEAPEX'');',
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
,p_internal_uid=>79588995056019519
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79589082631019520)
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
,p_internal_uid=>79589082631019520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19422801586399826)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AcknowledgeRadiationAlert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT   VARCHAR2(4000);',
'  L_STOP         CHAR(1) := ''N'';',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE := APEX_APPLICATION.G_x01;',
'  L_SITE_ID      RADIATION.RADIATION_DETAIL.SITE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_ALERT_SRNO   RADIATION.RAD_ALERTS.ALERT_SRNO%TYPE := APEX_APPLICATION.G_x03;',
'  L_RESULT_JSON  VARCHAR2(32000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  IF L_ALERT_SRNO IS NULL THEN',
'    L_ALERT_TEXT := ''No message selected, cannot proceed.'';',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  RADIATION.PKG_ALERTS.ACKNOWLEDGE_ALERT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                            ''ORGANIZATION_ID''),',
'                                         P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                            ''LOCATION_ID''),',
'                                         P_RADIATION_NO      => L_RADIATION_NO,',
'                                         P_SITE_ID           => L_SITE_ID,',
'                                         P_ALERT_SRNO        => L_ALERT_SRNO,',
'                                         P_SR_NO             => :P38_ND_SR_NO,',
'                                         P_REMARKS           => NULL,',
'                                         P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                            ''USER_MRNO''),',
'                                         P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                            ''TERMINAL''),',
'                                         P_OBJECT_CODE       => ''S18APX00037'',',
'                                         P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                         P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  apex_json.open_object;',
'  apex_json.write(p_name => ''status'', p_value => ''success'');',
'  APEX_JSON.WRITE(''message'', ''Alert acknowledged successfully.'');',
'  apex_json.close_object;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.open_object;',
'    apex_json.write(p_name => ''status'', p_value => ''failed'');',
'    apex_json.write(p_name => ''message'', p_value => L_ALERT_TEXT);',
'    apex_json.close_object;',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(p_name => ''status'', p_value => ''failed'');',
'    apex_json.write(p_name => ''message'', p_value => SQLERRM);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19422801586399826
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19423573257399833)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DismissRadiationAlert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT   VARCHAR2(4000);',
'  L_STOP         CHAR(1) := ''N'';',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE := APEX_APPLICATION.G_x01;',
'  L_SITE_ID      RADIATION.RADIATION_DETAIL.SITE_ID%TYPE := APEX_APPLICATION.G_x02;',
'  L_ALERT_SRNO   RADIATION.RAD_ALERTS.ALERT_SRNO%TYPE := APEX_APPLICATION.G_x03;',
'  L_RESULT_JSON  VARCHAR2(32000);',
'  EX_CUSTOM EXCEPTION;',
'  L_IS_ALLOWED NUMBER := 0;',
'BEGIN',
'',
'  IF L_ALERT_SRNO IS NULL THEN',
'    L_ALERT_TEXT := ''No message selected, cannot proceed.'';',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  BEGIN',
'    SELECT COUNT(1)',
'      INTO L_IS_ALLOWED',
'      FROM SECURITY.LISTOFVALUES L',
'     WHERE EXISTS (SELECT 1',
'              FROM SECURITY.MEMBER M',
'             WHERE M.USERID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''USERID'')',
'               AND L.GROUPID = M.GROUPID)',
'       AND L.LOVNAME = ''RAD_DISMISS_ALERT''',
'       AND EXISTS (SELECT 1',
'              FROM RADIATION.RAD_ALERTS A',
'             WHERE A.RADIATION_NO = L_RADIATION_NO',
'               AND A.SITE_ID = L_SITE_ID',
'               AND A.ALERT_SRNO = L_ALERT_SRNO);',
'  ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  IF L_IS_ALLOWED = 0 THEN',
'    L_ALERT_TEXT := ''You are not authorized to dismiss alert, cannot proceed.'';',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  RADIATION.PKG_ALERTS.DISMISS_ALERT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''ORGANIZATION_ID''),',
'                                     P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''LOCATION_ID''),',
'                                     P_RADIATION_NO      => L_RADIATION_NO,',
'                                     P_SITE_ID           => L_SITE_ID,',
'                                     P_ALERT_SRNO        => L_ALERT_SRNO,',
'                                     P_SR_NO             => :P38_ND_SR_NO,',
'                                     P_REMARKS           => NULL,',
'                                     P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''USER_MRNO''),',
'                                     P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                        ''TERMINAL''),',
'                                     P_OBJECT_CODE       => ''S18APX00037'',',
'                                     P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                     P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  apex_json.open_object;',
'  apex_json.write( p_name => ''status'', p_value => ''success'');',
'  APEX_JSON.WRITE(''message'', ''Alert dismissed successfully.'');',
'  apex_json.close_object;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_JSON.open_object;',
'    apex_json.write(p_name => ''status'', p_value => ''failed'');',
'    apex_json.write(p_name => ''message'', p_value => L_ALERT_TEXT);',
'    apex_json.close_object;',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(p_name => ''status'', p_value => ''failed'');',
'    apex_json.write(p_name => ''message'', p_value => SQLERRM);',
'    apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19423573257399833
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>'RADIATION_MENU'
,p_alias=>'RADIATION-MENU2'
,p_step_title=>'RADIATION_MENU'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function showError(pItem, pData) {',
'    apex.item(pItem).setFocus();',
'    apex.message.clearErrors();',
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "inline",',
'            pageItem: pItem,',
'            message: pData,',
'            unsafe: false,',
'        },',
'        {',
'            type: "error",',
'            location: "page",',
'            message: pData,',
'            unsafe: false,',
'        },',
'    ]);',
'}',
'',
'function showErrorInline(pItem, pData) {',
'    apex.item(pItem).setFocus();',
'    apex.message.clearErrors();',
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "inline",',
'            pageItem: pItem,',
'            message: pData,',
'            unsafe: false,',
'        }]);',
'}',
'',
'const getLabel = (pItem) => {',
'    let label = $("label[for=''" + pItem + "'']").text().substring(0, $("label[for=''" + pItem + "'']").text().indexOf("("));',
'    return label;',
'}',
'',
'const itemNotNullValidation = (pItem) => {',
'    if (apex.item(pItem).getValue() == "" || apex.item(pItem).getValue() == undefined) {',
'        showError(pItem, "Please enter " + getLabel(pItem));',
'        return false;',
'    }',
'    return true;',
'}',
'',
'const setAllLablesTextColor = () => {',
'    let labels = document.querySelectorAll("#patient-info .t-Form-label");',
'',
'    for (let label of labels) {',
'        let labelID = label.id;',
'        let selector = document.getElementById(labelID);',
'',
'        selector.style.paddingRight = "0.5em";',
'        selector.style.textAlign = "center";',
'        selector.style.fontSize = "1.2em";',
'        selector.style.textAlign = "left";',
'        selector.style.fontWeight = "600";',
'    }',
'}',
'',
'function setGenderIcon() {',
'    if (document.getElementById("P46_GENDER") != null) {',
'        let dg = document.getElementById("P46_GENDER").innerHTML.toLowerCase();',
'        let nl = gl.childNodes;',
'        for (let i = 0; i < nl.length; i++) {',
'            let s = nl[i];',
'            if (dg == "male") {',
'                s.classList.remove("fa-female");',
'                s.classList.add("fa-male");',
'            } else {',
'                s.classList.add("fa-female");',
'                s.classList.remove("fa-male");',
'            }',
'        }',
'    }',
'}',
'',
'const showHideItems = (items, action) => {',
'    for (let item of items) {',
'        if (action === "hide") {',
'            apex.item(item).hide();',
'        }',
'        else if (action === "show") {',
'            apex.item(item).show();',
'        }',
'    }',
'}',
'',
'clearPageItems = () => {',
'    $s("P46_PATIENT_NAME", '''');',
'    $s("P46_AGE", '''');',
'    $s("P46_ADMISSION_NO", '''');',
'    $s("P46_CANCER", '''');',
'    $s("P46_CONSULTANT", '''');',
'    $s("P46_ORDERABLE", '''');',
'    $s("P46_IPD_OPD_EAR", '''');',
'    $s("P46_GENDER", '''');',
'    $s("P46_CONSULTANT_MRNO", '''');',
'    $s("P46_INHOUSE_DOCTOR_ID", '''');',
'    $s("P46_ALLERGIES", '''');',
'    $s("P46_HIS_USERID", '''');',
'    $s("P46_FLAGS", '''');',
'    $s("P46_BED_NO", '''');',
'    $s("P46_PRIMARY_CONSULTANT", '''');',
'    $s("P46_PATIENT_VULNERABILITIES", '''');',
'    $s("P46_CLINICAL_PATHWAY", '''');',
'    $s("P46_LTE", '''');',
'    $s("P46_PATIENT_LOU", '''');',
'    $s("P46_UNIT", '''');',
'    $s("P46_SERVICE_NO", '''');',
'    $s("P46_SERVICE_STATUS", '''');',
'    $s("P46_RANK_ABBREVIATION", '''');',
'    $s("P46_FORMATION", '''');',
'    $s("P46_CLINIC_ID", '''');',
'    $s("P46_CONSULTANT_ID", '''');',
'    $s("P46_DX_STATUS", '''');',
'    $s("P46_CODE_STATUS", '''');',
'    $s("P46_ISOLATION_STATUS", '''');',
'',
'    closeALLdialogPAGES();',
'    closeAllDialog();',
'}',
'',
'clearPageItemsBTNClear = () => {',
'    $s("P46_PATIENT_MRNO", '''');',
'    $s("P46_PATIENT_NAME", '''');',
'    $s("P46_AGE", '''');',
'    $s("P46_ADMISSION_NO", '''');',
'    $s("P46_CANCER", '''');',
'    $s("P46_CONSULTANT", '''');',
'    $s("P46_ORDERABLE", '''');',
'    $s("P46_IPD_OPD_EAR", '''');',
'    $s("P46_GENDER", '''');',
'    $s("P46_CONSULTANT_MRNO", '''');',
'    $s("P46_INHOUSE_DOCTOR_ID", '''');',
'    $s("P46_ALLERGIES", '''');',
'    $s("P46_HIS_USERID", '''');',
'    $s("P46_FLAGS", '''');',
'    $s("P46_BED_NO", '''');',
'    $s("P46_PRIMARY_CONSULTANT", '''');',
'    $s("P46_PATIENT_VULNERABILITIES", '''');',
'    $s("P46_CLINICAL_PATHWAY", '''');',
'    $s("P46_LTE", '''');',
'    $s("P46_PATIENT_LOU", '''');',
'    $s("P46_UNIT", '''');',
'    $s("P46_SERVICE_NO", '''');',
'    $s("P46_SERVICE_STATUS", '''');',
'    $s("P46_RANK_ABBREVIATION", '''');',
'    $s("P46_FORMATION", '''');',
'    $s("P46_CLINIC_ID", '''');',
'    $s("P46_CONSULTANT_ID", '''');',
'    $s("P46_DX_STATUS", '''');',
'    $s("P46_CODE_STATUS", '''');',
'    $s("P46_ISOLATION_STATUS", '''');',
'',
'    closeALLdialogPAGES();',
'    closeAllDialog();',
'}',
'',
'closeALLdialogPAGES = () => {',
'    var iframes = window.parent.document.querySelectorAll(''iframe'');',
'    iframes.forEach(function (iframe) {',
'        try {',
'            iframe.contentWindow.apex.navigation.dialog.close(true);',
'        } catch (e) {',
'        }',
'    });',
'}',
'',
'async function setMRNO() {',
'    return new Promise((resolve, reject) => {',
'        apex.server.process("ProcessSetMRNO", {',
'            pageItems: ["P46_PATIENT_MRNO", "P46_P_CHECK_CONVERTED_MRNO", "P46_P_OBJECT_CODE", "P46_CONSULTANT_CLINIC_ID"]',
'        }, {',
'            success: function (res) {',
'',
'                if (res.MESSAGE) {',
'                    apex.message.alert(res.MESSAGE, function () {',
'                        if (res.STOP === ''Y'') {',
'                            reject();',
'                        } else {',
'                            resolve();',
'                        }',
'                    });',
'                    return;',
'                }',
'',
'                const fieldsToSet = [',
'                    ''P46_PATIENT_MRNO'', ''P46_PATIENT_NAME'', ''P46_AGE'', ''P46_GENDER'', ''P46_BED_NO'',',
'                    ''P46_PRIMARY_CONSULTANT'', ''P46_DX_STATUS'', ''P46_CODE_STATUS'',',
'                    ''P46_ISOLATION_STATUS'', ''P46_ADMISSION_NO'', ''P46_CANCER'',',
'                    ''P46_ORDERABLE'', ''P46_CONSULTANT'', ''P46_ALLERGIES'', ''P46_FLAGS'',',
'                    ''P46_IPD_OPD_EAR'', ''P46_UNIT'', ''P46_SERVICE_NO'', ''P46_SERVICE_STATUS'',',
'                    ''P46_RANK_ABBREVIATION'', ''P46_FORMATION'', ''P46_LTE'', ''P46_CLINIC_ID'', ''P46_CONSULTANT_MRNO''',
'                ];',
'',
'                fieldsToSet.forEach(field => {',
'                    if (res[field] !== undefined) {',
'                        $s(field, res[field]);',
'                    }',
'                });',
'',
'                $s("P46_NEW_MRNO", $v(''P46_PATIENT_MRNO''));',
'',
'                if ([''I'', ''E''].includes(res.P46_IPD_OPD_EAR) || $v("P46_CONSULTANT_CLINIC_ID") !== '''') {',
'                    $s(''P46_INHOUSE_DOCTOR_ID'', res.P46_INHOUSE_DOCTOR_ID);',
'                    $s(''P46_CONSULTANT_MRNO'', res.P46_CONSULTANT_MRNO);',
'                }',
'',
'                if (res.P46_PATIENT_VULNERABE === ''Y'') {',
'                    apex.item("P46_PATIENT_VULNERABILITIES").show(true);',
'                    apex.item("P46_PATIENT_VULNERABILITIES").setValue("Yes");',
'                    $("#P46_PATIENT_VULNERABILITIES").css({ color: ''red'', fontWeight: 500, cursor: ''pointer'' });',
'                    document.getElementById("P46_PATIENT_VULNERABILITIES").style.textDecoration = ''underline'';',
'                } else {',
'                    apex.item("P46_PATIENT_VULNERABILITIES").setValue("None");',
'                    $("#P46_PATIENT_VULNERABILITIES").css({ color: ''black'', fontWeight: 500, cursor: ''auto'' });',
'                    document.getElementById("P46_PATIENT_VULNERABILITIES").style.textDecoration = ''none'';',
'                }',
'',
'                $s("P46_SET_MRNO_VALIDATE", $v("P46_SET_MRNO_VALIDATE") === "N" ? "N" : "Y");',
'',
'                resolve();',
'            },',
'            error: function (res) {',
'                reject();',
'            }',
'        });',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(document).ready(function() {',
'//     // Periodically check the value of the "Display Only" field',
'//     var previousValue = '''';',
'',
'//     // Function to trigger the "Enter" key',
'//     function triggerEnterKey() {',
'//         const enterEvent = new KeyboardEvent(''keydown'', {',
'//             key: ''Enter'',',
'//             keyCode: 13,',
'//             which: 13,',
'//             bubbles: true',
'//         });',
'',
'//         // Dispatch the event to trigger the action',
'//         $(''#P46_PATIENT_MRNO'')[0].dispatchEvent(enterEvent);',
'//     }',
'',
'//     setInterval(function() {',
'//         var value = apex.item(''P46_PATIENT_MRNO'').getValue(); // Get the value of the "Display Only" field',
'',
'//         // Check if the value has changed and if it reaches a length of 14',
'//         if (value.length === 14 && value !== previousValue) {',
'//             // Trigger the "Enter" key simulation behavior',
'//             triggerEnterKey();',
'            ',
'//             // Update the previous value',
'//             previousValue = value;',
'//         }',
'//     }, 500); // Check every 500ms (adjust as necessary)',
'',
'//     // Handle "Enter" key on input event as well',
'//     $(''#P46_PATIENT_MRNO'').on(''input'', function() {',
'//         var value = $(this).val(); // Get the current value of the input field',
'',
'//         // Check if the value reaches a length of 14',
'//         if (value.length === 14) {',
'//             // Trigger the "Enter" key simulation behavior',
'//             triggerEnterKey();',
'//         }',
'//     });',
'// });',
'',
'',
'',
'',
'$(document).ready(function() {',
'    // Periodically check the value of the "Display Only" field',
'    var previousValue = '''';',
' ',
'    setInterval(function() {',
'        var value = apex.item(''P46_PATIENT_MRNO'').getValue(); // Get the value of the "Display Only" field',
'        ',
'        // Check if the value has changed and if it reaches a length of 14',
'        if (value.length === 14 && value !== previousValue) {',
'            // Trigger the "Enter" key simulation behavior',
'            const enterEvent = new KeyboardEvent(''keydown'', {',
'                key: ''Enter'',',
'                keyCode: 13,',
'                which: 13,',
'                bubbles: true',
'            });',
' ',
'            // Dispatch the event to trigger the action',
'            $(''#P46_PATIENT_MRNO'')[0].dispatchEvent(enterEvent);',
'            ',
'            // Update the previous value',
'            previousValue = value;',
'        }',
'    }, 500); // Check every 500ms (adjust as necessary)',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* body {',
'    font-family: Helvetica, Arial, sans-serif;',
'} */',
'',
'.VA_TREATMENT_COUNTER{',
'     background-color: red !important;',
'     color: #ffff !important;',
'}',
' #P46_AGE,#P46_GENDER{',
'	font-size: 12px !important;',
'	font-weight: 600 !important;',
'        border: 0!important ;',
'        background-color: transparent !important;',
'} ',
'.t-Form-label ,.u-checkbox{',
'	color:  #056ac8 !important ;',
'	font-weight: bold !important;',
'}',
'/* #P46_CLINICAL_PATHWAY_LABEL{',
'	',
'        text-align: left !important;',
'} */',
'',
'#P46_CLINICAL_PATHWAY_CONTAINER .col-1{',
'        max-width: 20% !important;',
'}',
'',
'.display_none{',
'	display: none !important;',
'}',
'#patient-info {',
'    /* background-color: #e6e6e6; */',
'    /* border: black; */',
'    font-size: 62.5%;',
'    padding: 1em 2em;',
'}',
'',
'',
'#P46_PATIENT_VULNERABILITIES{',
'	/*cursor: pointer !important;*/',
'    /* margin-inline-start: 69px !important; */',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P46_IMAGE {',
'    min-height: 10rem;',
'}',
'',
'.t-Body-fullContent {',
'    border-bottom: 2px solid #7e7e86;',
'    box-shadow: 0.10rem 0.10rem 0.90rem 0.5rem #898e8d;',
'',
'}',
'',
'#patient-status>div.t-Region-bodyWrap>div.t-Region-body {',
'    padding: 0.1em 0.3em ;',
'}',
'',
'#P46_DX_STATUS,',
'#P46_ISOLATION_STATUS {',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P46_DAYS_SINCE_FIRST_VISIT {',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'    text-align: center;',
'    color: #056ac8 ;',
'    border: none !important;',
'    outline: none !important;',
'}',
'',
'#P46_DAYS_SINCE_FIRST_VISIT_LABEL{',
'    font-size: 0.74rem !important;',
'    /* color: red !important; */',
'}',
'#P46_CODE_STATUS {',
'    color: red;',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P46_PATIENT_NAME {',
'    background-color: darkblue;',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'#P46_PATIENT_NAME_LABEL {',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'/* ',
'  #add-to-list,#patient-allergies{',
'          height: 3rem;',
'          ',
'  } */',
'',
'',
'',
'/********************************Utility Classes********************************************************/',
'.label-bold {',
'    font-weight: bold;',
'}',
'',
'.label-darkblue {',
'    color: darkblue;',
'}',
'',
'.sm-font {',
'    font-weight: 0.5rem;',
'}',
'',
'.md-font {',
'    font-weight: 0.75rem;',
'}',
'',
'/****************************************************************************************/',
'',
'',
'',
'#P46_BED_NO,',
'#P46_PATIENT_LOU,',
'#P46_LTE,',
'#P46_CLINICAL_PATHWAY {',
'    color: red;',
'    font-size: 0.75rem;',
'    font-weight: 500;',
'    border: 0 !important;',
'    background-color: transparent;',
'    box-shadow: none !important;',
'    outline: none !important;',
'}',
'',
'.col-2>.rel-col .col-1 {',
'    max-width: 70%;',
'    flex-basis: auto;',
'',
'}',
'',
'.lov-open {',
'    position: fixed;',
'    height: auto;',
'    width: 500px;',
'    top: 0px;',
'    left: 509.5px;',
'    max-width: 100%;',
'}',
'',
'.lov-close {',
'    position: fixed;',
'    height: auto;',
'    width: 500px;',
'    top: 0px;',
'    left: 509.5px;',
'    max-width: 100%;',
'    display: none;',
'}',
'/*Add Sayed Yasir Mehdi*/',
'/* .t-Dialog--pageId-235 .t-Button--close {',
'    display: none !important;',
'} */',
'',
'#t-Page235 .ui-dialog-titlebar-close {',
'    display: none !important;',
'}',
'',
'#P46_LOGIN{',
'	color: red !important;',
'    font-size: 0.65rem !important;',
'	font-weight: bold !important;',
'	padding-left: 20px !important;',
'}',
'',
'#P46_CLINICAL_PATHWAY{',
'	cursor: pointer !important;',
'	margin-inline-start: 38px !important;',
'	text-decoration: underline !important;',
'}',
'#P46_CLINICAL_PATHWAY_LABEL{',
'	width: 96px !important;',
'}',
'',
'',
'.help{',
'	background: none !important;',
'	color: black !important;',
'	border: none !important;',
'	outline: none !important;',
'	cursor: pointer !important;',
'}',
'',
'/* Style for Webkit-based browsers (Chrome, Safari) */',
'::-webkit-scrollbar {',
'   width: 7px;',
'   height: 7px;',
'}',
'',
'::-webkit-scrollbar-track {',
'  background-color: #fff;',
'}',
'',
'::-webkit-scrollbar-thumb {',
'  background-color: #919191;',
'  border-radius: 5px;',
' ',
'}',
'',
'/****************6-14010*************/',
'/* #patient-info .t-Form-label{',
'padding-right: 0.5em;',
'text-align: left;',
'font-weight: 600;',
'',
'',
'} */',
'/*',
'        // selector.style.paddingRight = "0.5em";',
'        // selector.style.textAlign = "center";',
'        // selector.style.fontSize = "1.2em";',
'        // selector.style.textAlign = "left";',
'// ---------------------------------------------------------------6-14010',
'        // selector.style.fontWeight = "600";*/',
'#P46_DX_STATUS_CONTAINER{',
'    margin-top: -6px !important;',
'    max-height: 28px !important;',
'}',
'#P46_CODE_STATUS_CONTAINER ,',
'#P46_ISOLATION_STATUS_CONTAINER ,',
'#P46_BED_NO_CONTAINER ,',
'#P46_PATIENT_VULNERABILITIES_CONTAINER{',
'  max-height: 28px !important; ',
'  ',
'}',
'',
'.t-Report-colHead{',
'    display: none !important;',
'}',
'',
'#LOGIN{',
'    z-index: 1000;',
'}',
'',
'/* #POPUP_MENU_M{',
'     border: 0.5px solid gray;',
'} */',
'',
'#t_Body_nav{',
'    opacity: 1;',
'}',
'/*',
'////////////////////////////////////////////////////////////////////////////////////////////////////////////////////above this, new code started.///////////////////////////////////',
'*/',
'body {',
'    font-family: Helvetica, Arial, sans-serif;',
'}',
'',
'#patient-info {',
'    /* background-color: #e6e6e6; */',
'    /* border: black; */',
'    font-size: 62.5%;',
'    padding: 1em 2em;',
'}',
'',
'',
'',
'.t-Body-fullContent {',
'    border-bottom: 2px solid #7e7e86;',
'    box-shadow: 0.10rem 0.10rem 0.90rem 0.5rem #898e8d;',
'',
'}',
'',
'#patient-status>div.t-Region-bodyWrap>div.t-Region-body {',
'    padding: 0.5em 0.5em;',
'}',
'',
'#P46_DX_STATUS,',
'#P46_ISOLATION_STATUS {',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P46_CODE_STATUS {',
'    color: red;',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P46_CONSULTANT_MRNO_LABEL {',
'    /* font-size: 1em !important; */',
'    font-weight: 600 !important;',
'}',
'',
'#P46_PATIENT_MRNO {',
'    font-weight: bold;',
'    /* min-width: 7.5rem; */',
'}',
'',
'',
'#P46_PATIENT_MRNO {',
'    font-weight: bold;',
'}',
'',
'#P46_PATIENT_NAME {',
'    background-color: darkblue;',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'',
'/* ',
'  #add-to-list,#patient-allergies{',
'          height: 3rem;',
'          ',
'  } */',
'',
'',
'',
'/********************************Utility Classes********************************************************/',
'.label-bold {',
'    font-weight: bold;',
'}',
'',
'.label-darkblue {',
'    color: darkblue;',
'}',
'',
'.sm-font {',
'    font-weight: 0.5rem;',
'}',
'',
'.md-font {',
'    font-weight: 0.75rem;',
'}',
'',
'/****************************************************************************************/',
'',
'',
'',
'#P46_BED_NO,',
'#P46_PATIENT_LOU,',
'#P46_LTE,',
'#P46_CLINICAL_PATHWAY {',
'    color: red;',
'    font-size: 0.65rem;',
'    font-weight: 500;',
'}',
'',
'.col-2>.rel-col .col-1 {',
'    max-width: 70%;',
'    flex-basis: auto;',
'',
'}',
'',
'.lov-open {',
'    position: fixed;',
'    height: auto;',
'    width: 500px;',
'    top: 0px;',
'    left: 509.5px;',
'    max-width: 100%;',
'}',
'',
'.lov-close {',
'    position: fixed;',
'    height: auto;',
'    width: 500px;',
'    top: 0px;',
'    left: 509.5px;',
'    max-width: 100%;',
'    display: none;',
'}',
'',
'',
'#t-Page235 .ui-dialog-titlebar-close {',
'    display: none !important;',
'}',
'',
'#P46_LOGIN{',
'	color: red !important;',
'    font-size: 0.65rem !important;',
'	font-weight: bold !important;',
'	padding-left: 20px !important;',
'}',
'',
'#P46_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P46_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_CONSULTANT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_ALLERGIES {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_FLAGS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_BED_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_PRIMARY_CONSULTANT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P46_CLINICAL_PATHWAY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_LTE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P46_PATIENT_LOU {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P46_PHYSICIST {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_page_css_classes=>'js-phyMenu'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(79704029778921212)
,p_navigation_list_template_id=>wwv_flow_imp.id(14599686320908280)
,p_nav_list_template_options=>'#DEFAULT#:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250128095015'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81988346557092494)
,p_plug_name=>'Main Order'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LVL AS "level",',
'       NODE_NAME LABEL,',
'       APEX_PAGE.GET_URL(P_APPLICATION => APP_NO,',
'                         P_PAGE        => PAGE_NO,',
'                         P_REQUEST     => NODE_ID) AS TARGET,',
'       ''NO'' IS_CURRENT,',
'       ''#APP_IMAGES#del.gif'' IMAGE,',
'       NODE_ID,',
'       PARENT_NODE_ID',
'  FROM (SELECT SYS_CONNECT_BY_PATH(DECODE(DISPLAY_ORDER,',
'                                          0,',
'                                          NODE_NAME,',
'                                          LPAD(TO_CHAR(DISPLAY_ORDER), 4, ''0'') ||',
'                                          NODE_NAME),',
'                                   ''|'') PATH,',
'               DEPTH INIT_STATE,',
'               LEVEL LVL,',
'               NODE_NAME,',
'               TM.OBJECT_CONSTANT ICON,',
'               TM.OBJECT_SCHEMA_ID || TM.OBJECT_TYPE_ID || TM.OBJECT_ID DATA,',
'               TM.NODE_ID,',
'               TM.OBJECT_SCHEMA_ID OBJECT_ID,',
'               TM.OBJECT_TYPE_ID,',
'               TM.OBJECT_ID,',
'               TM.PARENT_NODE_ID,',
'               138 APP_NO,',
'               10 PAGE_NO',
'          FROM SECURITY.TREE_MENU TM',
'         START WITH PARENT_NODE_ID IS NULL',
'                AND TM.NODE_ID = 1938',
'        CONNECT BY PRIOR NODE_ID = PARENT_NODE_ID)',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'LABEL'
,p_attribute_13=>'NODE_ID'
,p_attribute_14=>'PARENT_NODE_ID'
,p_attribute_16=>'NULL'
,p_attribute_23=>'SQL'
,p_attribute_24=>'TARGET'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(548601639042200287)
,p_name=>'iMage'
,p_region_name=>'image'
,p_template=>wwv_flow_imp.id(14542292946908251)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:margin-bottom-none:margin-left-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_display_point=>'REGION_POSITION_08'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.MRNO, SYS.DBMS_LOB.GETLENGTH(T.IMAGE) AS file_blob',
'   FROM PICTURES.HR_PICTURES T',
'  WHERE MRNO = NVL(:P46_PATIENT_MRNO,:GV_PHYSICAL_LOCATION_ID||''00000000000'');'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'        /* #image img {',
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
'',
'        #image img {',
'                display: inline-block;',
'                width: 100%;',
'                height: 200px;',
'                object-fit: cover;',
'                /*border: 2px solid #D8D4D4; */',
'                /* border-radius: 50%; */',
'                box-shadow: 7px 5px 30px 0px #fff;',
'                margin-top: 3px;',
'                margin-left: 3px;',
'                max-height: 87px !important;',
'        }',
'',
'        #image img:hover {',
'                box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5)',
'        }',
'',
'',
'        /* <div><canvas id="canvas"width="110"height="110"',
'',
'        style=" border-radius: 50%; box-shadow: 7px 5px 30px 0px #888888; margin-top: 3px;  margin-left: 3px;"></canvas></div>#image img:hover {',
'                box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);',
'        } */',
'        #report_table_image {',
'                border: none;',
'        }',
'',
'        #FILE_BLOB {',
'                border: none;',
'                padding: 1em 0.5em;',
'',
'        }',
'',
'',
'',
'        #report_table_image>tbody>tr>td {',
'                border: none;',
'                background: #fff;',
'                padding: 6.2px 2em 0 0.5em !important;',
'        }',
'</style>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P46_PATIENT_MRNO'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_row_count_max=>1
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39248439747065032)
,p_query_column_id=>1
,p_column_alias=>'MRNO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39248022998065028)
,p_query_column_id=>2
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:MRNO::::::::PICTURES'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(551866235763546389)
,p_plug_name=>'Patient Info'
,p_region_name=>'patient-info'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    #patient-info {',
'',
'        font-size: 62.5%;',
'        padding: 1em 2em;',
'    }',
'',
'    .t-Body-fullContent {',
'        border-bottom: 2px solid #7e7e86;',
'        box-shadow: 0.10rem 0.10rem 0.90rem 0.5rem #898e8d;',
'',
'    }',
'',
'    #P46_CONSULTANT_MRNO_LABEL {',
'        font-size: 1em;',
'        font-weight: 600;',
'    }',
'',
'    #P46_PATIENT_MRNO {',
'        font-weight: bold;',
'',
'    }',
'',
'',
'    #P46_PATIENT_NAME {',
'',
'        font-weight: bold;',
'    }',
'',
'    .col-2>.rel-col .col-1 {',
'        max-width: 70%;',
'        flex-basis: auto;',
'',
'    }',
'',
'    .lov-open {',
'        position: fixed;',
'        height: auto;',
'        width: 500px;',
'        top: 0px;',
'        left: 509.5px;',
'        max-width: 100%;',
'    }',
'',
'    .lov-close {',
'        position: fixed;',
'        height: auto;',
'        width: 500px;',
'        top: 0px;',
'        left: 509.5px;',
'        max-width: 100%;',
'        display: none;',
'    }',
'</style>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(581061902496241731)
,p_plug_name=>'Patient Status'
,p_region_name=>'patient-status'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'REGION_POSITION_08'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(584383179877614471)
,p_plug_name=>'Parameters'
,p_region_name=>'parameter'
,p_plug_display_sequence=>80
,p_plug_display_point=>'AFTER_HEADER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(270730325976288330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(548601639042200287)
,p_button_name=>'RadiationSelectPatient'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Select Patient'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-user-md'
,p_grid_new_row=>'Y'
,p_grid_column_span=>12
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(311158852205575324)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(548601639042200287)
,p_button_name=>'Appointments'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--warning:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Appointments'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-calendar-search'
,p_grid_new_row=>'Y'
,p_grid_column_span=>12
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39248821120065033)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(548601639042200287)
,p_button_name=>'Clear'
,p_button_static_id=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
,p_grid_column_span=>7
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(214935846904443527)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(548601639042200287)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--danger:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
,p_grid_new_row=>'N'
,p_grid_column_span=>5
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39247287924065023)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81988346557092494)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--desktopHideIcon:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
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
 p_id=>wwv_flow_imp.id(39246864186065020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(81988346557092494)
,p_button_name=>'EXIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30187128126034414)
,p_name=>'P46_PHYSICIST'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37866578281546324)
,p_name=>'P46_CONSULTANT_MRNO_LABEL'
,p_item_sequence=>370
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37866641380546325)
,p_name=>'P235_TRANS_ID'
,p_item_sequence=>380
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49422565752662910)
,p_name=>'P46_PARAM_MRNO'
,p_item_sequence=>390
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51671262150274026)
,p_name=>'P46_FLAG'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'THIS FLAG IS USE FOR UN REGISTER MRNO '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51671601377274029)
,p_name=>'P46_ALERT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51694764014274070)
,p_name=>'P46_P_CHECK_CONVERTED_MRNO'
,p_item_sequence=>360
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56710906661094692)
,p_name=>'P46_LOGIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(581061902496241731)
,p_prompt=>'Login: '
,p_source=>'Select HIS.PKG_PATIENT.GET_PATIENT_NAME(:GV_USER_MRNO) FROM DUAL ;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234083347824371170)
,p_name=>'P46_PATIENT_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MRNO'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" id="add-to-list" title="Add to your own patient list" aria-label="" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--tiny t-Button--simple"><span aria-hidden="true" class="t-Icon fa fa-plus-circle"></span'
||'></button>',
'',
'',
'',
'',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234083744412371170)
,p_name=>'P46_PATIENT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234084155851371172)
,p_name=>'P46_AGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234084497693371172)
,p_name=>'P46_ADMISSION_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234084964475371172)
,p_name=>'P46_CANCER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234085358930371172)
,p_name=>'P46_CONSULTANT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234085774990371172)
,p_name=>'P46_ORDERABLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234086099098371172)
,p_name=>'P46_IPD_OPD_EAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234086497254371178)
,p_name=>'P46_GENDER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'<span class="fa fa-male" aria-hidden="true"></span>'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234086970805371178)
,p_name=>'P46_CONSULTANT_MRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Oncologist Name'
,p_post_element_text=>'<button type="button" id="change-admitting-consultant" title="Change admitting consultant" aria-label="" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--tiny t-Button--simple"><span aria-hidden="true" class="t-Icon fa fa-user'
||'-md"></span></button>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234087296702371178)
,p_name=>'P46_INHOUSE_DOCTOR_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234087786810371178)
,p_name=>'P46_ALLERGIES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Allergies '
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" id="patient-allergies" title="Patient allergies" aria-label="" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--tiny t-Button--simple"><span aria-hidden="true" class="t-Icon fa fa-external-link"></span></'
||'button>',
'',
'',
'',
'',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234088125985371181)
,p_name=>'P46_HIS_USERID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234088532681371182)
,p_name=>'P46_FLAGS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Flags'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" id="patient-flags" title="Patient flags" aria-label="" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--tiny t-Button--simple"><span aria-hidden="true" class="t-Icon fa fa-flag"></span></button>',
'<!-- <button type="button" id="patient-flags" title="Patient flags" aria-label="" class="t-Button t-Button--noLabel t-Button--icon t-Button--tiny t-Button--link"><span aria-hidden="true" class="t-Icon fa fa-flag"></span></button> -->',
'',
'',
'',
'',
'',
'',
'',
''))
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234088989477371182)
,p_name=>'P46_BED_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234089335775371182)
,p_name=>'P46_PRIMARY_CONSULTANT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Primary Consultant'
,p_post_element_text=>'<button type="button" id="change-primary-consultant" title="Change primary consultant" aria-label="" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--tiny t-Button--simple"><span aria-hidden="true" class="t-Icon fa fa-external'
||'-link"></span></button>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234089766165371182)
,p_name=>'P46_PATIENT_VULNERABILITIES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234090168869371182)
,p_name=>'P46_CLINICAL_PATHWAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234090570258371182)
,p_name=>'P46_LTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234090946526371183)
,p_name=>'P46_PATIENT_LOU'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234091372028371183)
,p_name=>'P46_UNIT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Unit:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234091739181371183)
,p_name=>'P46_SERVICE_NO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Service No:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234092161495371183)
,p_name=>'P46_SERVICE_STATUS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Service Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234092494869371183)
,p_name=>'P46_RANK_ABBREVIATION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Rank:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234092902450371183)
,p_name=>'P46_FORMATION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_prompt=>'Formation:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234093307104371183)
,p_name=>'P46_CLINIC_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234093708561371184)
,p_name=>'P46_CONSULTANT_ID'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(551866235763546389)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DOCTOR_ID',
'      FROM DEFINITIONS.DOCTOR',
'     WHERE DOCTOR_MRNO = :GV_USER_MRNO',
'       AND CONSULTANT = ''Y'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234102586319429759)
,p_name=>'P46_DX_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(581061902496241731)
,p_prompt=>'Dx Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234103044170429760)
,p_name=>'P46_CODE_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(581061902496241731)
,p_prompt=>'Code Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234103463886429760)
,p_name=>'P46_ISOLATION_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(581061902496241731)
,p_prompt=>'Isolation Status: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234115945057457358)
,p_name=>'P46_USER_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234116264425457360)
,p_name=>'P46_PHYSICAL_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234116748863457360)
,p_name=>'P46_PATIENT_VULNERABE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234117077894457360)
,p_name=>'P46_CHECK_PATIENT_ON_PATHWAY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234117514664457360)
,p_name=>'P46_STOP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234117858874457360)
,p_name=>'P46_ERROR_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234118329018457361)
,p_name=>'P46_CONFIRM_MSG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234118727578457361)
,p_name=>'P46_CONSULTANT_CLINIC_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234119105974457361)
,p_name=>'P46_CONSTANT_428'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234119534911457361)
,p_name=>'P46_P_CLINICAL_PATHWAY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_491 varchar2(10);',
'begin',
'  v_const_491 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 491,',
'                                                           P_ORGANIZATION_ID => NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID     => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''N''); ',
'return v_const_491;',
'end;',
'-- declare',
'-- v_const_428 varchar2(10);',
'-- begin',
'-- v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'--                                                         P_ORGANIZATION_ID  => NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'--                                                         P_LOCATION_ID 	   => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')),',
'--                                                         P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'-- return v_const_428;',
'-- end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234119910665457361)
,p_name=>'P46_P_VALIDATE_EMP_DEP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234120299045457361)
,p_name=>'P46_P_CHECK_EMP_DEPENDENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234120713780457362)
,p_name=>'P46_P_MRNO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234121100750457363)
,p_name=>'P46_P_ADMISSION_NO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234121479030457363)
,p_name=>'P46_P_USER_TYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234121862250457363)
,p_name=>'P46_P_SERVICE_INFO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234122319573457363)
,p_name=>'P46_P_CAD_PATIENT_ALERT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234122751112457363)
,p_name=>'P46_P_FUNCTIONALITY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234123118714457364)
,p_name=>'P46_P_DEFAULT_OPENING_OBJECT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234123478081457364)
,p_name=>'P46_P_PAT_TYPE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234123950426457364)
,p_name=>'P46_P_CONSULTANT_DEPARTMENT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234124295061457364)
,p_name=>'P46_P_VALUE_STORE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(234124735740457365)
,p_name=>'P46_LOV_CHECK'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_const_428 varchar2(10);',
'begin',
'v_const_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 428, --Provide constant ID',
'                                                        P_ORGANIZATION_ID  => :GV_ORGANIZATION_ID,',
'                                                        P_LOCATION_ID 	   => :GV_PHYSICAL_LOCATION_ID,',
'                                                        P_DEFAULT_VAL 	   =>  NULL),''$'');   ',
'return v_const_428;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234125144769457365)
,p_name=>'P46_SET_MRNO_VALIDATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234125520710457365)
,p_name=>'P46_P_OBJECT_CODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_use_cache_before_default=>'NO'
,p_item_default=>'S34FRM00021'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234125863222457365)
,p_name=>'P46_GV_MRNO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234126296591457365)
,p_name=>'P46_GV_USER_NAME'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_USER_NAME'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234126681412457365)
,p_name=>'P46_GV_TERMINAL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_TERMINAL'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234127062288457365)
,p_name=>'P46_GV_ORGANIZATION_ID'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_ORGANIZATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234127457133457366)
,p_name=>'P46_GV_LOCATION_ID'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234127919520457366)
,p_name=>'P46_GV_PHYSICAL_LOCATION_ID'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234128303833457372)
,p_name=>'P46_GV_ORDER_LOCATION_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_item_default=>'GV_ORDER_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(254574114020370332)
,p_name=>'P46_CALLER_PAGE'
,p_item_sequence=>400
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(270731032861288337)
,p_name=>'P46_TXT_URL'
,p_item_sequence=>410
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294523986280558248)
,p_name=>'P46_NEW_MRNO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(584383179877614471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39254737757065043)
,p_name=>'LovClosebtn'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle > button'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39255231816065043)
,p_event_id=>wwv_flow_imp.id(39254737757065043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// let btn = document.querySelector("#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-dragg'
||'able-handle > button");',
'// $(btn).trigger("click");',
'console.log("lov close button pressed", $(btn).trigger("click"));',
'let displayValue = document.querySelector("#P46_CLINIC_CONSULTANT").value;',
'console.log("display value is on close lov", displayValue);',
'if (apex.item("P46_PATIENT_MRNO").getValue() != "" && (displayValue == "" || displayValue == undefined || apex.item("P46_CLINIC_CONSULTANT").getValue === "")) {',
'        $("#P46_CLINIC_CONSULTANT_lov_btn").trigger("click");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39253800919065043)
,p_name=>'Patient Allergies'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#patient-allergies'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39254365835065043)
,p_event_id=>wwv_flow_imp.id(39253800919065043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P46_PATIENT_MRNO") === '''') {',
'        apex.message.alert("Please select MRNO.");',
'		$s(''P46_FLAG'' ,''C'')',
'}else {',
'         apex.navigation.redirect("f?p=&APP_ID.:11:&APP_SESSION.::NO:RP::");',
'        // let url = ''f?p=&APP_ID.:11:&APP_SESSION.::NO::P11_P_MRNO:'' + $v("P46_PATIENT_MRNO");',
'        // let url = "f?p=&APP_ID.:11:&APP_SESSION.::NO:RP::";',
'        // let patientAllerties = $("<a>").attr({ href: "javascript:phyMenuDialog(f?p=&APP_ID.:11:&APP_SESSION.::NO::P11_P_MRNO:" + $v("P46_PATIENT_MRNO") + ")", id: "patientAllergiesPhyMenu" });',
'        // console.log(patientAllerties);',
'        // $("#patientAllergiesPhyMenu").trigger("click");',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39273264764065054)
,p_name=>'OPEN_PROFILE'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.st'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39273707391065054)
,p_event_id=>wwv_flow_imp.id(39273264764065054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'openModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''st'');',
'$(''.image_icon'').addClass(''et'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39255614951065044)
,p_name=>'USER_GUIDES'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.guide-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39256121527065044)
,p_event_id=>wwv_flow_imp.id(39255614951065044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UserGuide",',
'        {}, {',
'        success: function (res) {',
'                //apex.message.alert(res.user_mrno+"  "+res.app_id +"      "+res.app_page_id+" "+res.page_url);',
'                //javascript:window.open(''f?p=207:2:''+apex.item(''pInstance'').getValue()+'':::1:P2_USER_NAME,P2_APP_ID,P2_PAGE_ID:''+res.user_mrno +'',''+ res.app_id+'',''+ res.app_page_id ,''_blank'');                ',
'                // javascript:window.open( res.page_url ,''_blank'');',
'                console.log(res.page_url);',
'                apex.navigation.redirect(res.page_url);',
'        },',
'        dataType: ''json''',
'}',
'',
')',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39256575534065044)
,p_name=>'ADD_TO_FAVORITES'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fav-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39257036162065045)
,p_event_id=>wwv_flow_imp.id(39256575534065044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("AddToFavorite",',
'        {}, {',
'        success: function (res) {',
'                apex.message.alert(res.message);',
'        },',
'        dataType: ''json''',
'}',
')'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39257434572065045)
,p_name=>'ClearParent Page Items'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39248821120065033)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309339919687051322)
,p_event_id=>wwv_flow_imp.id(39257434572065045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'clearPageItemsBTNClear();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(311157165991575307)
,p_event_id=>wwv_flow_imp.id(39257434572065045)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(548601639042200287)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39262610857065048)
,p_name=>'onPageLoad'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39263129350065048)
,p_event_id=>wwv_flow_imp.id(39262610857065048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function executeOnPageLoad() {',
'    $(function () {',
'        $(''#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle > button'').css'
||'({ display: ''none'' });',
'',
'        setAllLablesTextColor();',
'',
'',
'        let items = ["P46_UNIT", "P46_SERVICE_NO", "P46_SERVICE_STATUS", "P46_RANK_ABBREVIATION", "P46_FORMATION"];',
'',
'        let constant_val = $v("P46_CONSTANT_428");',
'',
'        if (constant_val == "Y") {',
'            showHideItems(items, "show");',
'',
'        }',
'        else {',
'',
'            showHideItems(items, "hide");',
'        }',
'',
'',
'        if ($v("P46_PATIENT_MRNO").length !== 0 && $v("P46_P_MRNO").length === 0 || $v("P46_PATIENT_MRNO") !== $v("P46_P_MRNO")) {',
'            $s("P46_P_MRNO", $v("P46_PATIENT_MRNO"));',
'            $s("P46_SET_MRNO_VALIDATE", "Y");',
'        }',
'',
'        $(''#P46_DX_STATUS_LABEL, #P46_CODE_STATUS_LABEL, #P46_ISOLATION_STATUS_LABEL'').parent().css({ textAlign: ''start'' });',
'    });',
'}',
'',
'executeOnPageLoad();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39251046141065038)
,p_name=>'When_Change'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_FLAG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39252060231065041)
,p_event_id=>wwv_flow_imp.id(39251046141065038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P46_FLAG'')===''C''){',
'//   $("#CLEAR").trigger("click");',
'$s(''P46_PATIENT_MRNO'' ,'''')',
'$s(''P46_PATIENT_NAME'' ,'''')',
'$s(''P46_AGE'' ,'''')',
'$s(''P46_GENDER'' ,'''')',
'$s(''P46_BED_NO'' ,'''')',
'$s(''P46_DX_STATUS'' ,'''')',
'$s(''P46_CODE_STATUS'' ,'''')',
'$s(''P46_ISOLATION_STATUS'' ,'''')',
'$s(''P46_ADMISSION_NO'' ,'''')',
'$s(''P46_CANCER'' ,'''')',
'$s(''P46_ORDERABLE'' ,'''')',
'$s(''P46_CONSULTANT'' ,'''')',
'$s(''P46_ALLERGIES'' ,'''')',
'$s(''P46_FLAGS'' ,'''')',
'$s(''P46_CONSULTANT_MRNO'' ,'''')',
'$s(''P46_PRIMARY_CONSULTANT'' ,'''')',
'$s(''P46_PATIENT_VULNERABILITIES'' ,'''')',
'',
' apex.navigation.dialog.close(true);',
'apex.item(''P46_PATIENT_MRNO'').setFocus();',
'//   $("#CLEAR").trigger("click");',
'	',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39251513096065039)
,p_event_id=>wwv_flow_imp.id(39251046141065038)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(548601639042200287)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39274167513065054)
,p_name=>'FLAG_FORM'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#patient-flags'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39274629698065054)
,p_event_id=>wwv_flow_imp.id(39274167513065054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Under Development'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49422613532662911)
,p_name=>'DAParamMRNO '
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_PARAM_MRNO'
,p_condition_element=>'P46_PARAM_MRNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>500
,p_execution_immediate=>true
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49422710241662912)
,p_event_id=>wwv_flow_imp.id(49422613532662911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_PATIENT_MRNO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P46_PARAM_MRNO;'
,p_attribute_07=>'P46_PARAM_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49422893297662913)
,p_event_id=>wwv_flow_imp.id(49422613532662911)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_PATIENT_MRNO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(254573959224370330)
,p_name=>'CloseTab'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(214935846904443527)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254574018448370331)
,p_event_id=>wwv_flow_imp.id(254573959224370330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.close();',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P46_CALLER_PAGE'
,p_client_condition_expression=>'S18APX00037'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255791621385030508)
,p_event_id=>wwv_flow_imp.id(254573959224370330)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MHO.REDIRECT'
,p_attribute_01=>'static'
,p_attribute_02=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_attribute_04=>'N'
,p_attribute_07=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P46_CALLER_PAGE'
,p_client_condition_expression=>'S18APX00037'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(270730808721288335)
,p_name=>'DASelectPatient'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(270730325976288330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270730985088288336)
,p_event_id=>wwv_flow_imp.id(270730808721288335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := V(''APP_ID'');',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P46_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' ||',
'                                                         L_APP ||',
'                                                         '':89:'' ||',
'                                                         L_SESSION ||',
'                                                         ''::NO::'',',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_03=>'P46_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270731149061288338)
,p_event_id=>wwv_flow_imp.id(270730808721288335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = $v(''P46_TXT_URL'');',
'',
'',
'if (url && url.trim() !== '''') {',
'',
'    window.open(url, ''_blank'');',
'} else {',
'',
'    console.log("URL is not generated yet");',
'    alert("Select Patient URL has not been generated yet. Please report this to MIS Department");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294523752644558246)
,p_name=>'DAFetchPatient'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_PATIENT_MRNO'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294523867607558247)
,p_event_id=>wwv_flow_imp.id(294523752644558246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ((this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter'' || this.browserEvent.originalEvent.key === ''Tab'') && ($v(''P46_PATIENT_MRNO'') !== '''')) {',
'    clearPageItems();',
'',
'    (async () => {',
'        let lSpinner$;',
'        try {',
'',
'            lSpinner$ = apex.util.showSpinner($("#patient-info"));',
'',
'',
'            $x_disableItem("t_Body_nav", true);',
'',
'            await setMRNO();',
'',
'            apex.region(''image'').refresh();',
'        } catch (err) {',
'',
'            console.error("Error occurred while setting MRNO:", err);',
'        } finally {',
'            if (lSpinner$) {',
'                lSpinner$.remove();',
'            }',
'',
'            $x_disableItem("t_Body_nav", false);',
'        }',
'',
'        if (typeof apex.da.cancel === ''function'') {',
'            apex.da.cancel();',
'        }',
'    })();',
'',
'',
'} else if (this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter'' || this.browserEvent.originalEvent.key === ''Tab'') {',
'    clearPageItems();',
'}',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(309338215181051305)
,p_name=>'DAAlertText'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_ALERT_TEXT'
,p_condition_element=>'P46_ALERT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309338355435051306)
,p_event_id=>wwv_flow_imp.id(309338215181051305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P46_ALERT_TEXT.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(309339686360051319)
,p_name=>'CallFromRadiationAppointmnetQueue'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(309339759507051320)
,p_event_id=>wwv_flow_imp.id(309339686360051319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    if ($v(''P46_PATIENT_MRNO'') !== '''') {',
'',
'        clearPageItems();',
'',
'        (async () => {',
'            let lSpinner$;',
'            try {',
'',
'                lSpinner$ = apex.util.showSpinner($("#patient-info"));',
'',
'',
'                $x_disableItem("t_Body_nav", true);',
'',
'                await setMRNO();',
'',
'                apex.region(''image'').refresh();',
'            } catch (err) {',
'',
'                console.error("Error occurred while setting MRNO:", err);',
'            } finally {',
'                if (lSpinner$) {',
'                    lSpinner$.remove();',
'                }',
'',
'                $x_disableItem("t_Body_nav", false);',
'            }',
'',
'            if (typeof apex.da.cancel === ''function'') {',
'                apex.da.cancel();',
'            }',
'        })();',
'',
'    }',
'},500 ); '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(311158676602575322)
,p_name=>'Refresh'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(311158796304575323)
,p_event_id=>wwv_flow_imp.id(311158676602575322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(548601639042200287)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(311161434998575350)
,p_name=>'DAappointments'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(311158852205575324)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313810346983270104)
,p_event_id=>wwv_flow_imp.id(311161434998575350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MHO.REDIRECT'
,p_attribute_01=>'static'
,p_attribute_02=>'f?p=138:28:&SESSION.::&DEBUG.::P28_TXT_MRNO:&P46_PATIENT_MRNO.'
,p_attribute_04=>'Y'
,p_attribute_05=>'P46_PATIENT_MRNO,P28_TXT_MRNO'
,p_attribute_07=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39250200463065036)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Constants Initialization'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_const_428 varchar2(10);',
'  v_const_442 varchar2(15);',
'  v_const_491 varchar2(10);',
'  v_const_960 varchar2(10);',
'begin',
'  v_const_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428, --Provide constant ID',
'                                                           P_ORGANIZATION_ID => NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID     => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''N'');',
'  -- CALL THE FUNCTION TO GET DEFAULT OPENING OBJECT CODE ',
'  v_const_442 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 442,',
'                                                           P_MRNO            => NVL(:GV_USER_MRNO,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'                                                           P_ORGANIZATION_ID => NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID     => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''S34FRM00036'');',
'',
'  v_const_491 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 491,',
'                                                           P_ORGANIZATION_ID => NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID     => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''N'');',
'',
'  v_const_960 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID      => 960,',
'                                                           P_ORGANIZATION_ID  => NVL(:GV_ORGANIZATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID      => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''N'');',
'',
'  :P46_CONSTANT_428             := v_const_428;',
'  :P46_P_DEFAULT_OPENING_OBJECT := v_const_442;',
'  :P46_P_CLINICAL_PATHWAY       := v_const_491;',
'  :P46_P_CHECK_EMP_DEPENDENT    := v_const_960;',
'',
'                                                          ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>39250200463065036
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(294524044476558249)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessSetMRNO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT             VARCHAR2(4000);',
'  V_STOP                   CHAR(1);',
'  V_EMPLOYEE               VARCHAR2(1) := ''N'';',
'  V_AUTHORIZED_USER        CHAR(1) := ''N'';',
'  V_PASSWORD_FORM_REQ      CHAR(1) := ''N'';',
'  V_ACTIVE                 CHAR(1) := ''N'';',
'  V_MRNO                   REGISTRATION.PATIENT.MRNO%TYPE;',
'  V_EMR_RESTRICTION        VARCHAR2(1) := ''N'';',
'  V_READ_ONLY              VARCHAR2(1) := HIS.PKG_COMMON.DB_READ_ONLY;',
'  L_APP                    NUMBER := V(''APP_ID'');',
'  L_SESSION                NUMBER := V(''APP_SESSION'');',
'  V_COUNT                  NUMBER := 0;',
'  V_ACTUAL_MRNO            VARCHAR2(14);',
'  V_INHOUSE_DOCTOR_ID      VARCHAR2(50);',
'  V_HIS_USERID             VARCHAR2(50);',
'  V_CONSULTANT_MRNO        VARCHAR2(50);',
'  V_CP_ID                  NUMBER;',
'  V_CHECK_USER_AUTHORITY   VARCHAR2(1);',
'  L_URL                    VARCHAR2(2000);',
'  V_PATIENT_INFO           RADIATION.PKG_S18FRM00010.PATIENT_TAB;',
'  V_SHOW_TREATMENT_COUNTER VARCHAR2(1);',
'  V_DAYS                   PLS_INTEGER;',
'  L_ONCOLOGIST_NAME        VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'',
'BEGIN',
'  APEX_JSON.OPEN_OBJECT();',
'',
'  BEGIN',
'    HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                 P_DISP_MRNO  => :P46_PATIENT_MRNO,',
'                 P_MRNO       => V_MRNO,',
'                 P_ALERT_TEXT => V_ALERT_TEXT,',
'                 P_STOP       => V_STOP);',
'  ',
'    IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'      APEX_JSON.WRITE(''STOP'', V_STOP);',
'      APEX_JSON.WRITE(''MESSAGE'', V_ALERT_TEXT);',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'    END IF;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.WRITE(''MESSAGE'', ''Error in HRD.SET_MRNO: '' || SQLERRM);',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'  END;',
'',
'  BEGIN',
'    SELECT NVL(ACTUAL_MRNO, MRNO)',
'      INTO V_ACTUAL_MRNO',
'      FROM REGISTRATION.PATIENT',
'     WHERE MRNO = V_MRNO;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      V_ACTUAL_MRNO := V_MRNO;',
'    WHEN OTHERS THEN',
'      V_ACTUAL_MRNO := V_MRNO;',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.WRITE(''MESSAGE'',',
'                      ''Error retrieving actual MRNO: '' || SQLERRM);',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'  END;',
'',
'  IF V_ACTUAL_MRNO <> V_MRNO THEN',
'    APEX_JSON.WRITE(''MESSAGE'',',
'                    SUBSTR(V_MRNO, -11) || '' actual MRNO is '' ||',
'                    SUBSTR(V_ACTUAL_MRNO, -11));',
'    V_MRNO := V_ACTUAL_MRNO;',
'  END IF;',
'',
'  APEX_JSON.WRITE(''P46_PATIENT_MRNO'', V_MRNO);',
'  APEX_JSON.WRITE(''P46_P_MRNO'', V_MRNO);',
'',
'  BEGIN',
'    IF HIS.PKG_PATIENT.IS_PATIENT_EXPIRED(P_MRNO => V_MRNO) = ''Y'' THEN',
'      APEX_JSON.WRITE(''P46_PATIENT_VULNERABE'', ''Vulnerable Patient'');',
'    ELSIF ORDERENTRY.PKG_S34FRM00140.IS_PATIENT_VULNERABLE(P_MRNO => V_MRNO) = ''Y'' THEN',
'      APEX_JSON.WRITE(''P46_PATIENT_VULNERABE'', ''Y'');',
'      APEX_JSON.WRITE(''P46_PATIENT_VULNERABILITIES'', ''Y'');',
'    ELSE',
'      APEX_JSON.WRITE(''P46_PATIENT_VULNERABE'', ''N'');',
'    END IF;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.WRITE(''MESSAGE'',',
'                      ''Error checking patient vulnerability: '' || SQLERRM);',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'  END;',
'',
'  BEGIN',
'    IF :P46_P_CHECK_CONVERTED_MRNO IN (''R'', ''Y'') AND',
'       HRD.CHECK_EMPLOYEE(V_MRNO) <> ''N'' THEN',
'      HIS.GET_EMP_MRNO(P_TYPE       => ''PAT'',',
'                       P_DISP_MRNO  => V_MRNO,',
'                       P_MRNO       => V_MRNO,',
'                       P_ALERT_TEXT => V_ALERT_TEXT,',
'                       P_STOP       => V_STOP);',
'      APEX_JSON.WRITE(''P46_PATIENT_MRNO'', V_MRNO);',
'      IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'        APEX_JSON.WRITE(''STOP'', V_STOP);',
'        APEX_JSON.WRITE(''MESSAGE'', V_ALERT_TEXT);',
'        APEX_JSON.WRITE(''P46_PATIENT_MRNO'', V_MRNO);',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.WRITE(''MESSAGE'',',
'                      ''Error handling MRNO conversion: '' || SQLERRM);',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'  END;',
'',
'  BEGIN',
'    SELECT COUNT(1)',
'      INTO V_COUNT',
'      FROM REGISTRATION.PATIENT P',
'     WHERE P.MRNO = V_MRNO;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      V_COUNT := 0;',
'    WHEN OTHERS THEN',
'      V_COUNT := 0;',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.WRITE(''MESSAGE'',',
'                      ''Error checking MRNO registration: '' || SQLERRM);',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'  END;',
'',
'  IF V_COUNT = 0 THEN',
'    APEX_JSON.WRITE(''MESSAGE'', ''MRNO '' || V_MRNO || '' is not registered.'');',
'    APEX_JSON.WRITE(''STOP'', ''Y'');',
'    APEX_JSON.CLOSE_OBJECT();',
'    RETURN;',
'  END IF;',
'',
'  BEGIN',
'    RADIATION.PKG_S18FRM00010.QUERY_PATIENT(P_MRNO        => V_MRNO,',
'                                            P_BLOCK_DATA  => V_PATIENT_INFO,',
'                                            P_USER_MRNO   => :GV_USER_MRNO,',
'                                            P_OBJECT_CODE => ''S18FRM00010'',',
'                                            P_TERMINAL    => :GV_TERMINAL,',
'                                            P_ALERT_TEXT  => V_ALERT_TEXT,',
'                                            P_STOP        => V_STOP);',
'  ',
'    IF V_STOP = ''Y'' THEN',
'      RAISE EX_CUSTOM;',
'    END IF;',
'  ',
'    APEX_JSON.WRITE(''MESSAGE'', V_ALERT_TEXT, NULL);',
'    APEX_JSON.WRITE(''STOP'', V_STOP, NULL);',
'  ',
'    FOR X IN 1 .. V_PATIENT_INFO.COUNT LOOP',
'      APEX_JSON.WRITE(''P46_PATIENT_NAME'', V_PATIENT_INFO(x).PATIENT_NAME);',
'      APEX_JSON.WRITE(''P46_AGE'', V_PATIENT_INFO(X).DISP_AGE);',
'      APEX_JSON.WRITE(''P46_GENDER'', V_PATIENT_INFO(X).GENDER);',
'      IF V_PATIENT_INFO(X).IPD_OPD_EAR = ''I'' THEN',
'        APEX_JSON.WRITE(''P46_BED_NO'',',
'                        ORDERENTRY.PKG_IPD_COMMON.GET_BED_DESC(P_BED_ID => V_PATIENT_INFO(X)',
'                                                                           .BED_ID));',
'      ELSE',
'        APEX_JSON.WRITE(''P46_BED_NO'', '''', true);',
'      END IF;',
'      APEX_JSON.WRITE(''P46_PRIMARY_CONSULTANT'',',
'                      V_PATIENT_INFO(X).PRIMARY_CONSULTANT);',
'      APEX_JSON.WRITE(''P46_DX_STATUS'',',
'                      V_PATIENT_INFO(X).CANCER_STATUS_DESC);',
'      APEX_JSON.WRITE(''P46_CODE_STATUS'', V_PATIENT_INFO(X).DNR_STATUS);',
'      APEX_JSON.WRITE(''P46_ISOLATION_STATUS'',',
'                      V_PATIENT_INFO(X).ISOLATION_STATUS);',
'      APEX_JSON.WRITE(''P46_ADMISSION_NO'', V_PATIENT_INFO(X).ADMISSION_NO);',
'      APEX_JSON.WRITE(''P46_CANCER'', V_PATIENT_INFO(X).CANCER);',
'      APEX_JSON.WRITE(''P46_ORDERABLE'', V_PATIENT_INFO(X).ORDERABLE);',
'      APEX_JSON.WRITE(''P46_CONSULTANT'', V_PATIENT_INFO(X).CONSULTANT);',
'      APEX_JSON.WRITE(''P46_ALLERGIES'', V_PATIENT_INFO(X).ALLERGY_DESC);',
'      APEX_JSON.WRITE(''P46_FLAGS'', V_PATIENT_INFO(X).PATIENT_FLAGS);',
'      apex_json.write(''P46_IPD_OPD_EAR'', V_PATIENT_INFO(X).IPD_OPD_EAR);',
'      apex_json.write(''P46_UNIT'', V_PATIENT_INFO(X).UNIT);',
'      apex_json.write(''P46_SERVICE_NO'', V_PATIENT_INFO(X).SERVICE_NO);',
'      apex_json.write(''P46_SERVICE_STATUS'',',
'                      V_PATIENT_INFO(X).SERVICE_STATUS);',
'      apex_json.write(''P46_RANK_ABBREVIATION'',',
'                      V_PATIENT_INFO(X).RANK_ABBREVIATION);',
'      apex_json.write(''P46_FORMATION'', V_PATIENT_INFO(X).FORMATION);',
'      apex_json.write(''P46_LTE'', V_PATIENT_INFO(X).LTE_PROMPT);',
'      apex_json.write(''P46_ADMISSION_NO'', V_PATIENT_INFO(X).ADMISSION_NO);',
'      apex_json.write(''P46_BED_NO'', V_PATIENT_INFO(X).BED_ID);',
'      apex_json.write(''P46_CONSULTANT'', V_PATIENT_INFO(X).CONSULTANT);',
'      apex_json.write(''P46_IPD_OPD_EAR'', V_PATIENT_INFO(X).IPD_OPD_EAR);',
'    ',
'      apex_json.write(''P46_PATIENT_MRNO'', V_MRNO);',
'    END LOOP;',
'  EXCEPTION',
'    WHEN EX_CUSTOM THEN',
'      APEX_JSON.WRITE(''MESSAGE'', V_ALERT_TEXT);',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'    WHEN OTHERS THEN',
'      APEX_JSON.WRITE(''MESSAGE'', SQLERRM);',
'      APEX_JSON.WRITE(''STOP'', ''Y'');',
'      APEX_JSON.CLOSE_OBJECT();',
'      RETURN;',
'  END;',
'',
'  BEGIN',
'    L_ONCOLOGIST_NAME := HIS.PKG_DOCTOR.GET_DOCTOR_NAME(RADIATION.PKG_S18FRM00010.GET_RAD_ONCOLOGIST_ID(V_MRNO),',
'                                                        NULL);',
'    apex_json.write(''P46_CONSULTANT_MRNO'', L_ONCOLOGIST_NAME);',
'  ',
'  END;',
'',
'  APEX_JSON.CLOSE_OBJECT();',
'  RETURN;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>294524044476558249
);
wwv_flow_imp.component_end;
end;
/

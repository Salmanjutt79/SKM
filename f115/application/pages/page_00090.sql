prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
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
 p_id=>90
,p_name=>'RADIATION_MENU_AUTONOMOUS'
,p_alias=>'RADIATION-MENU-AUTONOMOUS'
,p_step_title=>'RADIATION_MENU_AUTONOMOUS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showError(pItem, pData) {',
'',
'        apex.item(pItem).setFocus();',
'        apex.message.clearErrors();',
'        apex.message.showErrors([',
'                {',
'                        type: "error",',
'                        location: "inline",',
'                        pageItem: pItem,',
'                        message: pData,',
'                        unsafe: false,',
'                },',
'                {',
'                        type: "error",',
'                        location: "page",',
'                        message: pData,',
'                        unsafe: false,',
'                },',
'        ]);',
'}',
'',
'function showErrorInline(pItem, pData) {',
'        apex.item(pItem).setFocus();',
'        apex.message.clearErrors();',
'        apex.message.showErrors([',
'                {',
'                        type: "error",',
'                        location: "inline",',
'                        pageItem: pItem,',
'                        message: pData,',
'                        unsafe: false,',
'                }]);',
'}',
'',
'',
'const getLabel = (pItem) => {',
'',
'        let label = $("label[for=''" + pItem + "'']").text().substring(0, $("label[for=''" + pItem + "'']").text().indexOf("("));',
'        return label;',
'}',
'',
'',
'const itemNotNullValidation = (pItem) => {',
'',
'        if (apex.item(pItem).getValue() == "" || apex.item(pItem).getValue() == undefined) {',
'                showError(pItem, "Please enter " + getLabel(pItem));',
'                return false;',
'        }',
'        return true;',
'',
'}',
'',
'const setAllLablesTextColor = () => {',
'',
'        let labels = document.querySelectorAll("#patient-info .t-Form-label");',
'',
'        for (let label of labels) {',
'                let labelID = label.id;',
'                let selector = document.getElementById(labelID);',
'',
'                // if (labelID == "P0_DX_STATUS_LABEL" || labelID == "P0_UNIT_LABEL") {',
'                //         selector.style.paddingRight = "3.5em";',
'',
'                // } else {',
'',
'                //         selector.style.paddingRight = "0.5em";',
'                // };',
'',
'                selector.style.paddingRight = "0.5em";',
'                selector.style.textAlign = "center";',
'                selector.style.fontSize = "1.2em";',
'                selector.style.textAlign = "left";',
'',
'                // selector.classList.add("label-darkblue");',
'                // if (labelID == "P0_CONSULTANT_MRNO_LABEL" || labelID == "P0_ALLERGIES_LABEL" || labelID == "P0_DX_STATUS_LABEL") {',
'                //         selector.style.fontSize = "1em";',
'                // }',
'                // else {',
'                //         selector.style.fontSize = "1.2em";',
'                // }',
'                // selector.style.fontSize = labelID ==  "P0_CONSULTANT_MRNO_LABEL"  ? "1em" : "1.2em";',
'                ',
'                selector.style.fontWeight = "600";',
'',
'        }',
'}',
'',
'',
'',
'function addOwnList() {',
'        console.log("Parameters start");',
'',
'',
'        if (apex.item("P90_PATIENT_MRNO").getValue().trim() == "") {',
'                apex.message.clearErrors();',
'                apex.message.showErrors([',
'                        {',
'                                type: "error",',
'                                location: "inline",',
'                                pageItem: "P90_PATIENT_MRNO",',
'                                message: "Please enter appropriate value of MRNO",',
'                                unsafe: false,',
'                        },',
'                ]);',
'                // showError("P90_PATIENT_MRNO", "Please enter appropriate value of MRNO");',
'                return;',
'        }',
'',
'        let parameters =',
'        {',
'                P90_PATIENT_MRNO: $("#P90_PATIENT_MRNO").val(),',
'                P90_PATIENT_NAME: $("#P90_PATIENT_NAME").val(),',
'',
'        };',
'        console.log(parameters);',
'',
'',
'        apex.server.process(',
'                "ADD_TO_LIST",',
'                {',
'                        x01: apex.item("P90_PATIENT_MRNO").getValue(),',
'                        pageItems: ["P90_PATIENT_NAME"]',
'                },',
'                {',
'                        dataType: "text",',
'                        success: function (pData) {',
'                                let obj = JSON.parse(pData);',
'                                console.log("json object ", obj);',
'',
'                                console.log("Note Master Testing Ajax Callback 2");',
'                                if (obj.p_stop == "N") {',
'                                        // apex.message.clearErrors();',
'                                        //   apex.message.alert(obj.message, function () {',
'                                        //     if (apex.item("P23_APP_ID").getValue() != "") {',
'                                        //       apex.navigation.redirect(',
'                                        //         "f?p=&P23_APP_ID.:&P23_APP_PAGE_ID.:&APP_SESSION.::NO:RP::"',
'                                        //       );',
'                                        //     }',
'                                        //   });',
'                                } else {',
'                                        apex.message.alert(obj.message);',
'                                        // apex.message.clearErrors();',
'                                        // apex.message.showErrors([',
'                                        //         {',
'                                        //                 type: "error",',
'                                        //                 location: ["page"],',
'                                        //                 message: obj.message,',
'                                        //                 unsafe: false,',
'                                        //         },',
'                                        // ]);',
'                                }',
'                        },',
'                        error: function (jqXHR, textStatus, errorThrown) {',
'                                console.log("responseText ", jqXHR.responseText);',
'                                console.log("status ", jqXHR.status);',
'                        },',
'                }',
'        );',
'        console.log("end Testing Ajax Callback ");',
'}',
'',
'',
'',
'',
'function setGenderIcon() {',
'        if (document.getElementById("P90_GENDER") != null) {',
'                let dg = document.getElementById("P90_GENDER").innerHTML.toLowerCase();',
'                let gl = document.querySelector("#P90_GENDER_LABEL");',
'                let nl = gl.childNodes;',
'                for (let i = 0; i < nl.length; i++) {',
'                        let s = nl[i];',
'                        if (dg == "male") {',
'                                s.classList.remove("fa-female");',
'                                s.classList.add("fa-male");',
'                        } else {',
'                                s.classList.add("fa-female");',
'                                s.classList.remove("fa-male");',
'                        }',
'                }',
'        }',
'}',
'',
'',
'',
'const setConsultantLabel = () => {',
'        if (document.getElementById("P90_CONSULTANT_MRNO_LABEL") !== null) {',
'                if ($v("P90_IPD_OPD_EAR") == "I" && $v("P90_PATIENT_MRNO").length !== 0) {',
'                        document.getElementById("P90_CONSULTANT_MRNO_LABEL").innerText = "Admitting Consultant";',
'',
'                }',
'                else {',
'                        document.getElementById("P90_CONSULTANT_MRNO_LABEL").innerText = "Clinic Consultant";',
'                }',
'        }',
'}',
'',
'const showHideItems = (items, action) => {',
'',
'        for (let item of items) {',
'                if (action === "hide") {',
'',
'                        apex.item(item).hide();',
'                }',
'                else if (action === "show") {',
'                        apex.item(item).show();',
'                }',
'        }',
'}',
'',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function () {',
'        apex.item("P90_PATIENT_VULNERABILITIES").hide(true);',
'        setAllLablesTextColor();',
'});',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'#P90_IMAGE {',
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
'    padding: 0.5em 0.5em;',
'}',
'',
'#P90_DX_STATUS,',
'#P90_ISOLATION_STATUS {',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P90_CODE_STATUS {',
'    color: red;',
'    font-size: 0.65rem;',
'    font-weight: bold;',
'}',
'',
'#P90_CONSULTANT_MRNO_LABEL {',
'    /* font-size: 1em !important; */',
'    font-weight: 600 !important;',
'}',
'',
'#P90_PATIENT_MRNO {',
'    font-weight: bold;',
'    /* min-width: 7.5rem; */',
'}',
'',
'',
'#P90_PATIENT_MRNO {',
'    font-weight: bold;',
'}',
'',
'#P90_PATIENT_NAME {',
'    background-color: darkblue;',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'#P90_PATIENT_NAME_LABEL {',
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
'#P90_BED_NO,',
'#P90_PATIENT_LOU,',
'#P90_LTE,',
'#P90_CLINICAL_PATHWAY {',
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
'/*Add Sayed Yasir Mehdi*/',
'/* .t-Dialog--pageId-235 .t-Button--close {',
'    display: none !important;',
'} */',
'',
'#t-Page235 .ui-dialog-titlebar-close {',
'    display: none !important;',
'}',
'',
'#P90_LOGIN{',
'	color: red !important;',
'    font-size: 0.65rem !important;',
'	font-weight: bold !important;',
'	padding-left: 20px !important;',
'}',
'',
'#P90_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P90_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_CONSULTANT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_ALLERGIES {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_FLAGS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_BED_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_PRIMARY_CONSULTANT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P90_CLINICAL_PATHWAY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_LTE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P90_PATIENT_LOU {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P90_PHYSICIST {',
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
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250103114125'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(366479862888114091)
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
 p_id=>wwv_flow_imp.id(833093155373221884)
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
'  WHERE MRNO = NVL(:P90_PATIENT_MRNO,:GV_PHYSICAL_LOCATION_ID||''00000000000'');'))
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
,p_ajax_items_to_submit=>'P90_PATIENT_MRNO'
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
 p_id=>wwv_flow_imp.id(284513131377021644)
,p_query_column_id=>1
,p_column_alias=>'MRNO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(284513440664021644)
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
 p_id=>wwv_flow_imp.id(836357752094567986)
,p_plug_name=>'Patient Info'
,p_region_name=>'patient-info'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'        #patient-info {',
'                /* background-color: #e6e6e6; */',
'                /* border: black; */',
'                font-size: 62.5%;',
'                padding: 1em 2em;',
'        }',
'',
'        .t-Body-fullContent {',
'                border-bottom: 2px solid #7e7e86;',
'                box-shadow: 0.10rem 0.10rem 0.90rem 0.5rem #898e8d;',
'',
'        }',
'',
'        #P90_CONSULTANT_MRNO_LABEL {',
'                font-size: 1em;',
'                font-weight: 600;',
'        }',
'',
'        #P90_PATIENT_MRNO {',
'                font-weight: bold;',
'                /* min-width: 7.5rem; */',
'        }',
'',
'        /* #P0_ALLERGIES {',
'                min-width: 7.5rem;',
'        } */',
'',
'',
'',
'        #P90_PATIENT_NAME {',
'                /* background-color: darkblue;',
'                color: white; */',
'                /* background-color: #e5e5e5; */',
'                /* border: 1px solid #a4afad; */',
'                /* box-shadow: 0.10rem 0.10rem 0.25rem 0.20rem #898e8d; */',
'                font-weight: bold;',
'        }',
'',
'        .col-2>.rel-col .col-1 {',
'                max-width: 70%;',
'                flex-basis: auto;',
'',
'        }',
'',
'        .lov-open {',
'                position: fixed;',
'                height: auto;',
'                width: 500px;',
'                top: 0px;',
'                left: 509.5px;',
'                max-width: 100%;',
'        }',
'',
'        .lov-close {',
'                position: fixed;',
'                height: auto;',
'                width: 500px;',
'                top: 0px;',
'                left: 509.5px;',
'                max-width: 100%;',
'                display: none;',
'        }',
'',
'</style>',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(865553418827263328)
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
 p_id=>wwv_flow_imp.id(868874696208636068)
,p_plug_name=>'Parameters'
,p_region_name=>'parameter'
,p_plug_display_sequence=>80
,p_plug_display_point=>'AFTER_HEADER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284513808264021644)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(833093155373221884)
,p_button_name=>'RadiationSelectPatient'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--stretch:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Select Patient'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-square-selected-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>9
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284514282971021645)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(833093155373221884)
,p_button_name=>'Clear'
,p_button_static_id=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--stretch:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'Y'
,p_grid_column_span=>9
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284514618494021645)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(833093155373221884)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--danger:t-Button--iconLeft:t-Button--stretch:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
,p_grid_new_row=>'Y'
,p_grid_column_span=>9
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284515451751021646)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(366479862888114091)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--desktopHideIcon:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284515880252021646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(366479862888114091)
,p_button_name=>'EXIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(284557022177021683)
,p_branch_name=>'GoTo38Page'
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(284514618494021645)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314679281121056013)
,p_name=>'P90_PHYSICIST'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(322382965080567970)
,p_name=>'P90_CONSULTANT_MRNO_LABEL'
,p_item_sequence=>370
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(322383028179567971)
,p_name=>'90_P235_TRANS_ID'
,p_item_sequence=>380
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(333938952551684556)
,p_name=>'P90_PARAM_MRNO'
,p_item_sequence=>390
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(336173818781295639)
,p_name=>'P90_FLAG'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'THIS FLAG IS USE FOR UN REGISTER MRNO '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(336174158008295642)
,p_name=>'P90_ALERT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(336211150813295716)
,p_name=>'P90_P_CHECK_CONVERTED_MRNO'
,p_item_sequence=>360
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(341211834241116304)
,p_name=>'P90_LOGIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(865553418827263328)
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
 p_id=>wwv_flow_imp.id(518575500819392769)
,p_name=>'P90_PATIENT_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518575897407392769)
,p_name=>'P90_PATIENT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518576308846392771)
,p_name=>'P90_AGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_prompt=>'Age'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518576650688392771)
,p_name=>'P90_ADMISSION_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518577117470392771)
,p_name=>'P90_CANCER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518577511925392771)
,p_name=>'P90_CONSULTANT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518577927985392771)
,p_name=>'P90_ORDERABLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518578252093392771)
,p_name=>'P90_IPD_OPD_EAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518578650249392777)
,p_name=>'P90_GENDER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518579123800392777)
,p_name=>'P90_CONSULTANT_MRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_prompt=>'Clinic Consultant'
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
 p_id=>wwv_flow_imp.id(518579449697392777)
,p_name=>'P90_INHOUSE_DOCTOR_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518579939805392777)
,p_name=>'P90_ALLERGIES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518580278980392780)
,p_name=>'P90_HIS_USERID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518580685676392781)
,p_name=>'P90_FLAGS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518581142472392781)
,p_name=>'P90_BED_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518581488770392781)
,p_name=>'P90_PRIMARY_CONSULTANT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518581919160392781)
,p_name=>'P90_PATIENT_VULNERABILITIES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518582321864392781)
,p_name=>'P90_CLINICAL_PATHWAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518582723253392781)
,p_name=>'P90_LTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518583099521392782)
,p_name=>'P90_PATIENT_LOU'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518583525023392782)
,p_name=>'P90_UNIT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518583892176392782)
,p_name=>'P90_SERVICE_NO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518584314490392782)
,p_name=>'P90_SERVICE_STATUS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518584647864392782)
,p_name=>'P90_RANK_ABBREVIATION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518585055445392782)
,p_name=>'P90_FORMATION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518585460099392782)
,p_name=>'P90_CLINIC_ID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518585861556392783)
,p_name=>'P90_CONSULTANT_ID'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(836357752094567986)
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
 p_id=>wwv_flow_imp.id(518603513899451371)
,p_name=>'P90_DX_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(865553418827263328)
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
 p_id=>wwv_flow_imp.id(518603971750451372)
,p_name=>'P90_CODE_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(865553418827263328)
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
 p_id=>wwv_flow_imp.id(518604391466451372)
,p_name=>'P90_ISOLATION_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(865553418827263328)
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
 p_id=>wwv_flow_imp.id(518618501688478971)
,p_name=>'P90_USER_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518618821056478973)
,p_name=>'P90_PHYSICAL_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518619305494478973)
,p_name=>'P90_PATIENT_VULNERABE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518619634525478973)
,p_name=>'P90_CHECK_PATIENT_ON_PATHWAY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518620071295478973)
,p_name=>'P90_STOP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518620415505478973)
,p_name=>'P90_ERROR_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518620885649478974)
,p_name=>'P90_CONFIRM_MSG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518621284209478974)
,p_name=>'P90_CONSULTANT_CLINIC_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518621662605478974)
,p_name=>'P90_CONSTANT_428'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518622091542478974)
,p_name=>'P90_P_CLINICAL_PATHWAY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518622467296478974)
,p_name=>'P90_P_VALIDATE_EMP_DEP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518622855676478974)
,p_name=>'P90_P_CHECK_EMP_DEPENDENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518623270411478975)
,p_name=>'P90_P_MRNO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518623657381478976)
,p_name=>'P90_P_ADMISSION_NO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518624035661478976)
,p_name=>'P90_P_USER_TYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518624418881478976)
,p_name=>'P90_P_SERVICE_INFO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518624876204478976)
,p_name=>'P90_P_CAD_PATIENT_ALERT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518625307743478976)
,p_name=>'P90_P_FUNCTIONALITY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518625675345478977)
,p_name=>'P90_P_DEFAULT_OPENING_OBJECT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518626034712478977)
,p_name=>'P90_P_PAT_TYPE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518626507057478977)
,p_name=>'P90_P_CONSULTANT_DEPARTMENT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518626851692478977)
,p_name=>'P90_P_VALUE_STORE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518627292371478978)
,p_name=>'P90_LOV_CHECK'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
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
 p_id=>wwv_flow_imp.id(518627701400478978)
,p_name=>'P90_SET_MRNO_VALIDATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518628077341478978)
,p_name=>'P90_P_OBJECT_CODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_use_cache_before_default=>'NO'
,p_item_default=>'S34FRM00021'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518628419853478978)
,p_name=>'P90_GV_MRNO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518628853222478978)
,p_name=>'P90_GV_USER_NAME'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_USER_NAME'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518629238043478978)
,p_name=>'P90_GV_TERMINAL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_TERMINAL'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518629618919478978)
,p_name=>'P90_GV_ORGANIZATION_ID'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_ORGANIZATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518630013764478979)
,p_name=>'P90_GV_LOCATION_ID'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518630476151478979)
,p_name=>'P90_GV_PHYSICAL_LOCATION_ID'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(518630860464478985)
,p_name=>'P90_GV_ORDER_LOCATION_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(868874696208636068)
,p_item_default=>'GV_ORDER_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(539090500819391978)
,p_name=>'P90_CALLER_PAGE'
,p_item_sequence=>400
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(555247419660309983)
,p_name=>'P90_TXT_URL'
,p_item_sequence=>410
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284519437145021651)
,p_name=>'SetMRNO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_PATIENT_MRNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284519960759021651)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT VARCHAR2(4000);',
'  V_STOP       VARCHAR2(1);',
'BEGIN',
'  :P90_STOP := ''N'';',
'  HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'               P_DISP_MRNO  => :P90_PATIENT_MRNO,',
'               P_MRNO       => :P90_PATIENT_MRNO,',
'               P_ALERT_TEXT => V_ALERT_TEXT,',
'               P_STOP       => V_STOP);',
'  IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'    :P90_STOP      := ''Y'';',
'    :P90_ERROR_MSG := V_ALERT_TEXT;',
'    RETURN;',
'  END IF;',
'  :P90_P_MRNO := :P90_PATIENT_MRNO;',
'',
'  IF HIS.PKG_PATIENT.IS_PATIENT_EXPIRED(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'    :P90_PATIENT_VULNERABE := ''N'';',
'  ELSIF ORDERENTRY.PKG_S34FRM00140.IS_PATIENT_VULNERABLE(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'    :P90_PATIENT_VULNERABE := ''Y'';',
'  ELSE',
'    :P90_PATIENT_VULNERABE := ''N'';',
'  END IF;',
'',
'  IF :P90_P_CHECK_CONVERTED_MRNO IN (''R'', ''Y'') AND',
'     HRD.CHECK_EMPLOYEE(:P90_PATIENT_MRNO) <> ''N'' THEN',
'    HIS.GET_EMP_MRNO(P_TYPE       => ''PAT'',',
'                     P_DISP_MRNO  => :P90_PATIENT_MRNO,',
'                     P_MRNO       => :P90_PATIENT_MRNO,',
'                     P_ALERT_TEXT => V_ALERT_TEXT,',
'                     P_STOP       => V_STOP);',
'    IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'      :P90_ALERT := V_ALERT_TEXT;',
'      -- APEX_ERROR.ADD_ERROR(P_MESSAGE          => V_ALERT_TEXT,',
'      --                       P_DISPLAY_LOCATION => apex_error.c_inline_in_notification);',
'      RETURN;',
'    END IF;',
'  END IF;',
'',
'  :P90_CONSULTANT_MRNO := HIS.PKG_DOCTOR.GET_DOCTOR_NAME(RADIATION.PKG_S18FRM00010.GET_RAD_ONCOLOGIST_ID(:P90_PATIENT_MRNO),',
'                                                         NULL);',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO,P90_P_CHECK_CONVERTED_MRNO'
,p_attribute_03=>'P90_PATIENT_MRNO,P90_PATIENT_VULNERABE,P90_ERROR_MSG,P90_STOP,P90_ALERT,P90_P_CHECK_CONVERTED_MRNO,P90_CONSULTANT_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284520453145021651)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P90_ALERT'')!==''''){',
'	apex.message.alert($v(''P90_ALERT'')) ;',
'	apex.da.cancel();',
'}'))
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
 p_id=>wwv_flow_imp.id(284520951180021651)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare ',
'V_COUNT number := 0 ;',
'',
'Begin ',
'      BEGIN',
'        SELECT COUNT(1)',
'          INTO V_COUNT',
'          FROM REGISTRATION.PATIENT P',
'         WHERE P.MRNO = :P90_PATIENT_MRNO;',
'       END;',
'      IF V_COUNT = 0 THEN',
'        --V_ALERT_TEXT',
'		:P90_ALERT :=''MRNO'' ||''  ''||:P90_PATIENT_MRNO|| '' '' || ''is not registered.'';',
'        -- V_ALERT_TEXT := ',
'        -- V_STOP       := ''Y'';',
'        -- RAISE EX_CUSTOM;',
'      END IF;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'P90_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284521474578021652)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P90_ALERT'')!==''''){',
'	apex.message.alert($v(''P90_ALERT'')) ;',
'	$s(''P90_FLAG'' ,''C'')',
'	apex.da.cancel();',
'',
'//    $("#CLEAR").trigger("click");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284524937035021660)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_INFO ORDERENTRY.PKG_S34FRM00021.PATIENT_TAB_APEX;',
'  V_ALERT_TEXT   VARCHAR2(4000);',
'  V_STOP         VARCHAR2(1);',
'BEGIN',
'    -- HRD.SET_MRNO(P_TYPE       => ''PAT'',',
'    --             P_DISP_MRNO  => :P90_PATIENT_MRNO,',
'    --             P_MRNO       => :P90_PATIENT_MRNO,',
'    --             P_ALERT_TEXT => V_ALERT_TEXT,',
'    --             P_STOP       => V_STOP);',
'    -- IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'    -- APEX_ERROR.ADD_ERROR(P_MESSAGE          => V_ALERT_TEXT,',
'    --                       P_DISPLAY_LOCATION => apex_error.c_inline_in_notification);',
'    --  RETURN;                     ',
'    -- END IF; ',
'',
'',
'    	IF HIS.PKG_PATIENT.IS_PATIENT_EXPIRED(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'            :P90_PATIENT_VULNERABE := ''N'';',
'        ELSIF  ORDERENTRY.PKG_S34FRM00140.IS_PATIENT_VULNERABLE(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'        :P90_PATIENT_VULNERABE := ''Y'';',
'            ELSE',
'            :P90_PATIENT_VULNERABE := ''N'';',
'        END IF;',
'',
'	',
'',
'        IF  :P90_PATIENT_VULNERABE  = ''Y'' THEN',
'		:P90_PATIENT_VULNERABILITIES := ''Vulnerable Patient'';',
'	END IF;',
'',
'',
'BEGIN',
'  SELECT *',
'    BULK COLLECT',
'    INTO V_PATIENT_INFO',
'    FROM ORDERENTRY.PKG_S34FRM00021.GET_PATIENT_DATA(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                     P_USER_MRNO   => :GV_USER_MRNO,',
'                                                     P_OBJECT_CODE => ''APEX'',',
'                                                     P_TERMINAL    => USERENV(''TERMINAL''));',
'',
'  FOR X IN 1 .. V_PATIENT_INFO.COUNT LOOP',
'    :P90_PATIENT_NAME           := V_PATIENT_INFO(X).PATIENT_NAME;',
'    :P90_AGE                    := V_PATIENT_INFO(X).DISP_AGE;',
'    :P90_GENDER                 := V_PATIENT_INFO(X).GENDER;',
'    :P90_BED_NO                 := V_PATIENT_INFO(X).BED_ID;',
'    :P90_PRIMARY_CONSULTANT     := V_PATIENT_INFO(X).PRIMARY_CONSULTANT;',
'    :P90_DX_STATUS              := V_PATIENT_INFO(X).CANCER_STATUS_DESC;',
'    :P90_CODE_STATUS            := V_PATIENT_INFO(X).DNR_STATUS;',
'    :P90_ISOLATION_STATUS       := V_PATIENT_INFO(X).ISOLATION_STATUS;',
'    :P90_ADMISSION_NO           := V_PATIENT_INFO(X).ADMISSION_NO;',
'    :P90_CANCER                 := V_PATIENT_INFO(X).CANCER;',
'    :P90_ORDERABLE              := V_PATIENT_INFO(X).ORDERABLE;',
'    :P90_CONSULTANT             := V_PATIENT_INFO(X).CONSULTANT;',
'    :P90_ALLERGIES             := V_PATIENT_INFO(X).ALLERGY_DESC;',
'    :P90_FLAGS                  := V_PATIENT_INFO(X).PATIENT_FLAGS;',
'    ',
'    ',
'  END LOOP;',
'',
'END;',
'END;'))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'P90_PATIENT_MRNO,P90_PATIENT_NAME,P90_AGE,P90_GENDER,P90_BED_NO,P90_PRIMARY_CONSULTANT,P90_DX_STATUS,P90_CODE_STATUS,P90_ISOLATION_STATUS,P90_ADMISSION_NO,P90_CANCER,P90_CONSULTANT,P90_ORDERABLE,P90_FLAGS,P90_ALLERGIES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284525457414021660)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_ERROR_MSG,P90_P_MRNO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const showPatientAlerts = () => {',
'        if ($v("P90_ERROR_MSG").length !== 0) {',
'                apex.message.alert(apex.item("P90_ERROR_MSG").getValue(), function () {',
'                        if ($v("P90_STOP") !== "Y") {',
'                                $s("P90_ERROR_MSG", "");',
'                                // $.event.trigger("CustomEvent1");',
'',
'                        }',
'                        else {',
'                                $s("P90_ERROR_MSG", "");',
'                                return;',
'                        }',
'                });',
'',
'        }',
'}',
'',
'const getPatientAlerts = () => {',
'        if ($v("P90_P_MRNO").length === 0 && $v("P90_PATIENT_MRNO").length !== 0) {',
'                $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                showPatientAlerts();',
'',
'        }',
'        else if ($v("P90_PATIENT_MRNO") !== $v("P90_P_MRNO")) {',
'                if ($v("P90_ERROR_MSG").length !== 0) {',
'                        apex.message.alert(apex.item("P90_ERROR_MSG").getValue(), function () {',
'                                if ($v("P90_STOP") !== "Y") {',
'                                        $s("P90_ERROR_MSG", "");',
'                                        // $s("P90_SET_MRNO_VALIDATE", "N");',
'                                        // $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                                        apex.item("P90_CONSULTANT_MRNO").setValue("", "");',
'                                        apex.item("P90_CONSULTANT_MRNO").refresh();',
'                                        //apex.navigation.redirect("f?p=&APP_ID.:71:&APP_SESSION.:::::");',
'                                        // $.event.trigger("CustomEvent1");',
'                                        //return;',
'',
'                                }',
'                                else {',
'                                        $s("P90_ERROR_MSG", "");',
'                                        return;',
'                                }',
'                        });',
'',
'                } else {',
'                        // $s("P90_SET_MRNO_VALIDATE", "N");',
'                        // $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                        apex.item("P90_CONSULTANT_MRNO").setValue("", "");',
'                        apex.item("P90_CONSULTANT_MRNO").refresh();',
'                        // apex.event.trigger("#P90_CONSULTANT_MRNO", "apexrefresh");',
'                        //apex.navigation.redirect("f?p=&APP_ID.:71:&APP_SESSION.:::::");',
'                }',
'',
'        }',
'',
'}',
'',
'getPatientAlerts();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284525930502021660)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284526413893021661)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_INFO       ORDERENTRY.PKG_S34FRM00021.PATIENT_TAB_APEX;',
'  V_CLINIC_GROUP_ID    REGISTRATION.CLINIC.CLINIC_GROUP_ID%TYPE;',
'  V_PRIMARY_CONSULTANT REGISTRATION.PATIENT_CURRENT_STATUS.PRIMARY_CONSULTANT%TYPE;',
'BEGIN',
'  IF :P90_ERROR_MSG IS NULL THEN',
'    BEGIN',
'      SELECT *',
'        BULK COLLECT',
'        INTO V_PATIENT_INFO',
'        FROM ORDERENTRY.PKG_S34FRM00021.GET_PATIENT_DATA(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                         P_USER_MRNO   => :GV_USER_MRNO,',
'                                                         P_OBJECT_CODE => ''APEX'',',
'                                                         P_TERMINAL    => USERENV(''TERMINAL''));',
'    ',
'      FOR X IN 1 .. V_PATIENT_INFO.COUNT LOOP',
'        :P90_PATIENT_NAME       := V_PATIENT_INFO(X).PATIENT_NAME;',
'        :P90_AGE                := V_PATIENT_INFO(X).DISP_AGE;',
'        :P90_GENDER             := V_PATIENT_INFO(X).GENDER;',
'        :P90_PRIMARY_CONSULTANT := V_PATIENT_INFO(X).PRIMARY_CONSULTANT;',
'        :P90_ADMISSION_NO       := V_PATIENT_INFO(X).ADMISSION_NO;',
'        :P90_IPD_OPD_EAR        := V_PATIENT_INFO(X).IPD_OPD_EAR;',
'      ',
'        IF V_PATIENT_INFO(X).IPD_OPD_EAR = ''I'' THEN',
'          :P90_BED_NO := ORDERENTRY.PKG_IPD_COMMON.GET_BED_DESC(P_BED_ID => V_PATIENT_INFO(X)',
'                                                                            .BED_ID);',
'        ELSE',
'          :P90_BED_NO := NULL;',
'        END IF;',
'      ',
'        :P90_DX_STATUS         := V_PATIENT_INFO(X).CANCER_STATUS_DESC;',
'        :P90_CODE_STATUS       := V_PATIENT_INFO(X).DNR_STATUS;',
'        :P90_ISOLATION_STATUS  := V_PATIENT_INFO(X).ISOLATION_STATUS;',
'        :P90_CANCER            := V_PATIENT_INFO(X).CANCER;',
'        :P90_ORDERABLE         := V_PATIENT_INFO(X).ORDERABLE;',
'        :P90_CONSULTANT        := V_PATIENT_INFO(X).CONSULTANT;',
'        :P90_ALLERGIES         := V_PATIENT_INFO(X).ALLERGY_DESC;',
'        :P90_FLAGS             := V_PATIENT_INFO(X).PATIENT_FLAGS;',
'        :P90_UNIT              := V_PATIENT_INFO(X).UNIT;',
'        :P90_SERVICE_NO        := V_PATIENT_INFO(X).SERVICE_NO;',
'        :P90_SERVICE_STATUS    := V_PATIENT_INFO(X).SERVICE_STATUS;',
'        :P90_RANK_ABBREVIATION := V_PATIENT_INFO(X).RANK_ABBREVIATION;',
'        :P90_FORMATION         := V_PATIENT_INFO(X).FORMATION;',
'        :P90_LTE               := V_PATIENT_INFO(X).LTE_PROMPT;',
'      ',
'        IF :P90_CONSULTANT_CLINIC_ID IS NOT NULL THEN',
'          SELECT INHOUSE_DOCTOR_ID, HIS_USERID, CONSULTANT_MRNO',
'            INTO :P90_INHOUSE_DOCTOR_ID,',
'                 :P90_HIS_USERID,',
'                 :P90_CONSULTANT_MRNO',
'            FROM TABLE(ORDERENTRY.PKG_S34FRM00021.GET_CLINIC_CONSULTANT(P_MRNO      => :P90_PATIENT_MRNO,',
'                                                                        P_CLINIC_ID => :P90_CONSULTANT_CLINIC_ID,',
'                                                                        P_USER_MRNO => NVL(:GV_USER_MRNO,',
'                                                                                           SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                       ''USER_MRNO''))));',
'          :P90_CLINIC_ID            := :P90_CONSULTANT_CLINIC_ID;',
'          :P90_CONSULTANT_CLINIC_ID := NULL;',
'        ELSE',
'          IF V_PATIENT_INFO(X).INHOUSE_DOCTOR_ID IS NOT NULL THEN',
'            :P90_INHOUSE_DOCTOR_ID := V_PATIENT_INFO(X).INHOUSE_DOCTOR_ID;',
'            :P90_CONSULTANT_MRNO   := HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(V_PATIENT_INFO(X)',
'                                                                     .INHOUSE_DOCTOR_ID);',
'          END IF;',
'        END IF;',
'      ',
'        SELECT HIS.PKG_DOCTOR.GET_DOCTOR_NAME(RADIATION.PKG_S18FRM00010.GET_RAD_ONCOLOGIST_ID(:P90_PATIENT_MRNO),',
'                                              NULL)',
'          INTO :P90_CONSULTANT_MRNO',
'          FROM DUAL;',
'      END LOOP;',
'    ',
'    END;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO,P90_STOP,P90_ERROR_MSG,P90_CONSULTANT_CLINIC_ID'
,p_attribute_03=>'P90_PATIENT_NAME,P90_AGE,P90_GENDER,P90_BED_NO,P90_PRIMARY_CONSULTANT,P90_DX_STATUS,P90_CODE_STATUS,P90_ISOLATION_STATUS,P90_ADMISSION_NO,P90_CANCER,P90_CONSULTANT,P90_ORDERABLE,P90_FLAGS,P90_ALLERGIES,P90_INHOUSE_DOCTOR_ID,P90_HIS_USERID,P90_LTE,P90'
||'_PATIENT_LOU,P90_CLINICAL_PATHWAY,P90_PATIENT_VULNERABE,P90_ERROR_MSG,P90_UNIT,P90_SERVICE_NO,P90_SERVICE_STATUS,P90_RANK_ABBREVIATION,P90_FORMATION,P90_IPD_OPD_EAR,P90_CONSULTANT_CLINIC_ID,P90_CONSULTANT_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284526907692021661)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF ORDERENTRY.PKG_COMMON.CHECK_LOU_PATIENT(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                P_USER_MRNO   => :GV_USER_MRNO,',
'                                                P_OBJECT_CODE => ''APEX'',',
'                                                P_TERMINAL    => :GV_TERMINAL,',
'                                                P_LOCATION_ID => :GV_LOCATION_ID) THEN',
':P90_PATIENT_LOU := ''This patient is under conditional registration (LOU)'';',
'ELSE',
':P90_PATIENT_LOU := '''';',
'END IF;',
'',
'IF  :P90_P_CLINICAL_PATHWAY = ''Y'' THEN',
' :P90_CLINICAL_PATHWAY := ORDERENTRY.PKG_CLINICAL_PATHWAYS.IS_PAT_ON_CLINICAL_PATHWAY(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                                                    P_LOCATION_ID => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')));',
'                                                                              ',
'END IF;  '))
,p_attribute_02=>'P90_PATIENT_MRNO,GV_TERMINAL,GV_LOCATION_ID,P90_P_CLINICAL_PATHWAY,P90_STOP,P90N_ERROR_MSG'
,p_attribute_03=>'P90_PATIENT_LOU,P90_CLINICAL_PATHWAY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284521969191021652)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_ERROR_MSG,P90_PATIENT_VULNERABILITIES,P90_CONSULTANT_MRNO_LABEL,P90_CLINICAL_PATHWAY,P90_SET_MRNO_VALIDATE,P90_CONSULTANT_MRNO,P90_ADMISSION_NO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P90_PATIENT_VULNERABE").getValue() == "Y") {',
'        apex.item("P90_PATIENT_VULNERABILITIES").show(true);',
'        apex.item("P90_PATIENT_VULNERABILITIES").setValue("Vulnerable Patient");',
'        $("#P90_PATIENT_VULNERABILITIES").css({ color: ''red'', fontWeight: 500 });',
'',
'}',
'',
'else {',
'        apex.item("P90_PATIENT_VULNERABILITIES").hide(true);',
'}',
'if (document.getElementById("P90_CONSULTANT_MRNO_LABEL") !== null) {',
'        if ($v("P90_IPD_OPD_EAR") == "I") {',
'                $("#P90_CONSULTANT_MRNO_LABEL").text("Admitting Consultant");',
'',
'        }',
'        else {',
'                $("#P90_CONSULTANT_MRNO_LABEL").text("Clinic Consultant");',
'',
'',
'',
'        }',
'}',
'',
'if ($v("P90_P_CLINICAL_PATHWAY") === "Y") {',
'        apex.item("P90_CLINICAL_PATHWAY").show();',
'}',
'else {',
'        apex.item("P90_CLINICAL_PATHWAY").hide();',
'',
'}',
'',
'$s("P90_SET_MRNO_VALIDATE", $v("P90_SET_MRNO_VALIDATE") == "N" ? "N" : "Y");',
'',
'console.log("normal displayValue  " + $v("P90_CONSULTANT_MRNO").length + " P90_SET_MRNO_VALIDATE " + $v("P90_SET_MRNO_VALIDATE") + " P90_CONSULTANT_MRNO " + $v("P90_CONSULTANT_MRNO") + " 21_ADMISSION_NO " + $v("P90_ADMISSION_NO"));',
'',
'if ($v("P90_SET_MRNO_VALIDATE") == "Y") {',
'        if ($v("P90_ADMISSION_NO").length === 0 && apex.item("P90_CONSULTANT_MRNO").isEmpty()) {',
'                $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                $("#P90_CONSULTANT_MRNO_lov_btn").trigger("click");',
'                $(''#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle > butt'
||'on'').css({ display: ''none'' });',
'        }',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284522439076021652)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// apex.message.alert($v(this.triggeringElement)+ '' mrno is '' + $v("P90_P_MRNO"));',
'if ($v(this.triggeringElement) !== $v("P90_P_MRNO")) {',
'	 //$s(''#P235_TRANS_ID'','''');',
'        closeAllDialog();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284522930226021652)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P235_TRANS_ID'','''');'
,p_attribute_02=>'P235_TRANS_ID'
,p_attribute_03=>'P235_TRANS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284523412336021659)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ''Physicist: ''|| HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY)',
'    INTO :P90_PHYSICIST',
'    FROM RADIATION.RAD_PHYSICS P',
'   WHERE P.RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P90_PATIENT_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
'     AND EXISTS (SELECT MAX(PHY_PLAN_ID)',
'            FROM RADIATION.RAD_PHYSICS RP',
'           WHERE RP.PHY_PLAN_ID = P.PHY_PLAN_ID',
'             AND RP.STATUS_ID = ''015'')',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P90_PHYSICIST := NULL;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'P90_PHYSICIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284523959746021659)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :LV_PATIENT_MRNO := :P90_PATIENT_MRNO;',
'  :LV_SR_NO       := NULL;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'LV_PATIENT_MRNO,LV_SR_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284524453502021660)
,p_event_id=>wwv_flow_imp.id(284519437145021651)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833093155373221884)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284527328775021661)
,p_name=>'PatientSelectMRNO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_PATIENT_MRNO'
,p_condition_element=>'P90_PATIENT_MRNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284527861099021662)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT VARCHAR2(4000);',
'  V_STOP       VARCHAR2(1);',
'BEGIN',
'  :P90_STOP := ''N'';',
'  HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'               P_DISP_MRNO  => :P90_PATIENT_MRNO,',
'               P_MRNO       => :P90_PATIENT_MRNO,',
'               P_ALERT_TEXT => V_ALERT_TEXT,',
'               P_STOP       => V_STOP);',
'  IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'    :P90_STOP      := ''Y'';',
'    :P90_ERROR_MSG := V_ALERT_TEXT;',
'    RETURN;',
'  END IF;',
'  :P90_P_MRNO := :P90_PATIENT_MRNO;',
'',
'  IF HIS.PKG_PATIENT.IS_PATIENT_EXPIRED(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'    :P90_PATIENT_VULNERABE := ''N'';',
'  ELSIF ORDERENTRY.PKG_S34FRM00140.IS_PATIENT_VULNERABLE(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'    :P90_PATIENT_VULNERABE := ''Y'';',
'  ELSE',
'    :P90_PATIENT_VULNERABE := ''N'';',
'  END IF;',
'',
'  IF :P90_P_CHECK_CONVERTED_MRNO IN (''R'', ''Y'') AND',
'     HRD.CHECK_EMPLOYEE(:P90_PATIENT_MRNO) <> ''N'' THEN',
'    HIS.GET_EMP_MRNO(P_TYPE       => ''PAT'',',
'                     P_DISP_MRNO  => :P90_PATIENT_MRNO,',
'                     P_MRNO       => :P90_PATIENT_MRNO,',
'                     P_ALERT_TEXT => V_ALERT_TEXT,',
'                     P_STOP       => V_STOP);',
'    IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'      :P90_ALERT := V_ALERT_TEXT;',
'      -- APEX_ERROR.ADD_ERROR(P_MESSAGE          => V_ALERT_TEXT,',
'      --                       P_DISPLAY_LOCATION => apex_error.c_inline_in_notification);',
'      RETURN;',
'    END IF;',
'  END IF;',
'',
'  :P90_CONSULTANT_MRNO := HIS.PKG_DOCTOR.GET_DOCTOR_NAME(RADIATION.PKG_S18FRM00010.GET_RAD_ONCOLOGIST_ID(:P90_PATIENT_MRNO),',
'                                                         NULL);',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO,P90_P_CHECK_CONVERTED_MRNO'
,p_attribute_03=>'P90_PATIENT_MRNO,P90_PATIENT_VULNERABE,P90_ERROR_MSG,P90_STOP,P90_ALERT,P90_P_CHECK_CONVERTED_MRNO,P90_CONSULTANT_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284528338573021662)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P90_ALERT'')!==''''){',
'	apex.message.alert($v(''P90_ALERT'')) ;',
'	apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284528825747021662)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare ',
'V_COUNT number := 0 ;',
'',
'Begin ',
'      BEGIN',
'        SELECT COUNT(1)',
'          INTO V_COUNT',
'          FROM REGISTRATION.PATIENT P',
'         WHERE P.MRNO = :P90_PATIENT_MRNO;',
'       END;',
'      IF V_COUNT = 0 THEN',
'        --V_ALERT_TEXT',
'		:P90_ALERT :=''MRNO'' ||''  ''||:P90_PATIENT_MRNO|| '' '' || ''is not registered.'';',
'        -- V_ALERT_TEXT := ',
'        -- V_STOP       := ''Y'';',
'        -- RAISE EX_CUSTOM;',
'      END IF;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'P90_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284529343700021662)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P90_ALERT'')!==''''){',
'	apex.message.alert($v(''P90_ALERT'')) ;',
'	$s(''P90_FLAG'' ,''C'')',
'	apex.da.cancel();',
'',
'//    $("#CLEAR").trigger("click");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284529810494021663)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_INFO ORDERENTRY.PKG_S34FRM00021.PATIENT_TAB_APEX;',
'  V_ALERT_TEXT   VARCHAR2(4000);',
'  V_STOP         VARCHAR2(1);',
'BEGIN',
'    -- HRD.SET_MRNO(P_TYPE       => ''PAT'',',
'    --             P_DISP_MRNO  => :P90_PATIENT_MRNO,',
'    --             P_MRNO       => :P90_PATIENT_MRNO,',
'    --             P_ALERT_TEXT => V_ALERT_TEXT,',
'    --             P_STOP       => V_STOP);',
'    -- IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'    -- APEX_ERROR.ADD_ERROR(P_MESSAGE          => V_ALERT_TEXT,',
'    --                       P_DISPLAY_LOCATION => apex_error.c_inline_in_notification);',
'    --  RETURN;                     ',
'    -- END IF; ',
'',
'',
'    	IF HIS.PKG_PATIENT.IS_PATIENT_EXPIRED(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'            :P90_PATIENT_VULNERABE := ''N'';',
'        ELSIF  ORDERENTRY.PKG_S34FRM00140.IS_PATIENT_VULNERABLE(P_MRNO => :P90_PATIENT_MRNO) = ''Y'' THEN',
'        :P90_PATIENT_VULNERABE := ''Y'';',
'            ELSE',
'            :P90_PATIENT_VULNERABE := ''N'';',
'        END IF;',
'',
'	',
'',
'        IF  :P90_PATIENT_VULNERABE  = ''Y'' THEN',
'		:P90_PATIENT_VULNERABILITIES := ''Vulnerable Patient'';',
'	END IF;',
'',
'',
'BEGIN',
'  SELECT *',
'    BULK COLLECT',
'    INTO V_PATIENT_INFO',
'    FROM ORDERENTRY.PKG_S34FRM00021.GET_PATIENT_DATA(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                     P_USER_MRNO   => :GV_USER_MRNO,',
'                                                     P_OBJECT_CODE => ''APEX'',',
'                                                     P_TERMINAL    => USERENV(''TERMINAL''));',
'',
'  FOR X IN 1 .. V_PATIENT_INFO.COUNT LOOP',
'    :P90_PATIENT_NAME           := V_PATIENT_INFO(X).PATIENT_NAME;',
'    :P90_AGE                    := V_PATIENT_INFO(X).DISP_AGE;',
'    :P90_GENDER                 := V_PATIENT_INFO(X).GENDER;',
'    :P90_BED_NO                 := V_PATIENT_INFO(X).BED_ID;',
'    :P90_PRIMARY_CONSULTANT     := V_PATIENT_INFO(X).PRIMARY_CONSULTANT;',
'    :P90_DX_STATUS              := V_PATIENT_INFO(X).CANCER_STATUS_DESC;',
'    :P90_CODE_STATUS            := V_PATIENT_INFO(X).DNR_STATUS;',
'    :P90_ISOLATION_STATUS       := V_PATIENT_INFO(X).ISOLATION_STATUS;',
'    :P90_ADMISSION_NO           := V_PATIENT_INFO(X).ADMISSION_NO;',
'    :P90_CANCER                 := V_PATIENT_INFO(X).CANCER;',
'    :P90_ORDERABLE              := V_PATIENT_INFO(X).ORDERABLE;',
'    :P90_CONSULTANT             := V_PATIENT_INFO(X).CONSULTANT;',
'    :P90_ALLERGIES             := V_PATIENT_INFO(X).ALLERGY_DESC;',
'    :P90_FLAGS                  := V_PATIENT_INFO(X).PATIENT_FLAGS;',
'    ',
'    ',
'  END LOOP;',
'',
'END;',
'END;'))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'P90_PATIENT_MRNO,P90_PATIENT_NAME,P90_AGE,P90_GENDER,P90_BED_NO,P90_PRIMARY_CONSULTANT,P90_DX_STATUS,P90_CODE_STATUS,P90_ISOLATION_STATUS,P90_ADMISSION_NO,P90_CANCER,P90_CONSULTANT,P90_ORDERABLE,P90_FLAGS,P90_ALLERGIES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284530370853021663)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_ERROR_MSG,P90_P_MRNO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const showPatientAlerts = () => {',
'        if ($v("P90_ERROR_MSG").length !== 0) {',
'                apex.message.alert(apex.item("P90_ERROR_MSG").getValue(), function () {',
'                        if ($v("P90_STOP") !== "Y") {',
'                                $s("P90_ERROR_MSG", "");',
'                                // $.event.trigger("CustomEvent1");',
'',
'                        }',
'                        else {',
'                                $s("P90_ERROR_MSG", "");',
'                                return;',
'                        }',
'                });',
'',
'        }',
'}',
'',
'const getPatientAlerts = () => {',
'        if ($v("P90_P_MRNO").length === 0 && $v("P90_PATIENT_MRNO").length !== 0) {',
'                $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                showPatientAlerts();',
'',
'        }',
'        else if ($v("P90_PATIENT_MRNO") !== $v("P90_P_MRNO")) {',
'                if ($v("P90_ERROR_MSG").length !== 0) {',
'                        apex.message.alert(apex.item("P90_ERROR_MSG").getValue(), function () {',
'                                if ($v("P90_STOP") !== "Y") {',
'                                        $s("P90_ERROR_MSG", "");',
'                                        // $s("P90_SET_MRNO_VALIDATE", "N");',
'                                        // $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                                        apex.item("P90_CONSULTANT_MRNO").setValue("", "");',
'                                        apex.item("P90_CONSULTANT_MRNO").refresh();',
'                                        //apex.navigation.redirect("f?p=&APP_ID.:71:&APP_SESSION.:::::");',
'                                        // $.event.trigger("CustomEvent1");',
'                                        //return;',
'',
'                                }',
'                                else {',
'                                        $s("P90_ERROR_MSG", "");',
'                                        return;',
'                                }',
'                        });',
'',
'                } else {',
'                        // $s("P90_SET_MRNO_VALIDATE", "N");',
'                        // $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                        apex.item("P90_CONSULTANT_MRNO").setValue("", "");',
'                        apex.item("P90_CONSULTANT_MRNO").refresh();',
'                        // apex.event.trigger("#P90_CONSULTANT_MRNO", "apexrefresh");',
'                        //apex.navigation.redirect("f?p=&APP_ID.:71:&APP_SESSION.:::::");',
'                }',
'',
'        }',
'',
'}',
'',
'getPatientAlerts();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284530891714021663)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284531341435021664)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PATIENT_INFO       ORDERENTRY.PKG_S34FRM00021.PATIENT_TAB_APEX;',
'  V_CLINIC_GROUP_ID    REGISTRATION.CLINIC.CLINIC_GROUP_ID%TYPE;',
'  V_PRIMARY_CONSULTANT REGISTRATION.PATIENT_CURRENT_STATUS.PRIMARY_CONSULTANT%TYPE;',
'BEGIN',
'  IF :P90_ERROR_MSG IS NULL THEN',
'    BEGIN',
'      SELECT *',
'        BULK COLLECT',
'        INTO V_PATIENT_INFO',
'        FROM ORDERENTRY.PKG_S34FRM00021.GET_PATIENT_DATA(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                         P_USER_MRNO   => :GV_USER_MRNO,',
'                                                         P_OBJECT_CODE => ''APEX'',',
'                                                         P_TERMINAL    => USERENV(''TERMINAL''));',
'    ',
'      FOR X IN 1 .. V_PATIENT_INFO.COUNT LOOP',
'        :P90_PATIENT_NAME       := V_PATIENT_INFO(X).PATIENT_NAME;',
'        :P90_AGE                := V_PATIENT_INFO(X).DISP_AGE;',
'        :P90_GENDER             := V_PATIENT_INFO(X).GENDER;',
'        :P90_PRIMARY_CONSULTANT := V_PATIENT_INFO(X).PRIMARY_CONSULTANT;',
'        :P90_ADMISSION_NO       := V_PATIENT_INFO(X).ADMISSION_NO;',
'        :P90_IPD_OPD_EAR        := V_PATIENT_INFO(X).IPD_OPD_EAR;',
'      ',
'        IF V_PATIENT_INFO(X).IPD_OPD_EAR = ''I'' THEN',
'          :P90_BED_NO := ORDERENTRY.PKG_IPD_COMMON.GET_BED_DESC(P_BED_ID => V_PATIENT_INFO(X)',
'                                                                            .BED_ID);',
'        ELSE',
'          :P90_BED_NO := NULL;',
'        END IF;',
'      ',
'        :P90_DX_STATUS         := V_PATIENT_INFO(X).CANCER_STATUS_DESC;',
'        :P90_CODE_STATUS       := V_PATIENT_INFO(X).DNR_STATUS;',
'        :P90_ISOLATION_STATUS  := V_PATIENT_INFO(X).ISOLATION_STATUS;',
'        :P90_CANCER            := V_PATIENT_INFO(X).CANCER;',
'        :P90_ORDERABLE         := V_PATIENT_INFO(X).ORDERABLE;',
'        :P90_CONSULTANT        := V_PATIENT_INFO(X).CONSULTANT;',
'        :P90_ALLERGIES         := V_PATIENT_INFO(X).ALLERGY_DESC;',
'        :P90_FLAGS             := V_PATIENT_INFO(X).PATIENT_FLAGS;',
'        :P90_UNIT              := V_PATIENT_INFO(X).UNIT;',
'        :P90_SERVICE_NO        := V_PATIENT_INFO(X).SERVICE_NO;',
'        :P90_SERVICE_STATUS    := V_PATIENT_INFO(X).SERVICE_STATUS;',
'        :P90_RANK_ABBREVIATION := V_PATIENT_INFO(X).RANK_ABBREVIATION;',
'        :P90_FORMATION         := V_PATIENT_INFO(X).FORMATION;',
'        :P90_LTE               := V_PATIENT_INFO(X).LTE_PROMPT;',
'      ',
'        IF :P90_CONSULTANT_CLINIC_ID IS NOT NULL THEN',
'          SELECT INHOUSE_DOCTOR_ID, HIS_USERID, CONSULTANT_MRNO',
'            INTO :P90_INHOUSE_DOCTOR_ID,',
'                 :P90_HIS_USERID,',
'                 :P90_CONSULTANT_MRNO',
'            FROM TABLE(ORDERENTRY.PKG_S34FRM00021.GET_CLINIC_CONSULTANT(P_MRNO      => :P90_PATIENT_MRNO,',
'                                                                        P_CLINIC_ID => :P90_CONSULTANT_CLINIC_ID,',
'                                                                        P_USER_MRNO => NVL(:GV_USER_MRNO,',
'                                                                                           SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                       ''USER_MRNO''))));',
'          :P90_CLINIC_ID            := :P90_CONSULTANT_CLINIC_ID;',
'          :P90_CONSULTANT_CLINIC_ID := NULL;',
'        ELSE',
'          IF V_PATIENT_INFO(X).INHOUSE_DOCTOR_ID IS NOT NULL THEN',
'            :P90_INHOUSE_DOCTOR_ID := V_PATIENT_INFO(X).INHOUSE_DOCTOR_ID;',
'            :P90_CONSULTANT_MRNO   := HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(V_PATIENT_INFO(X)',
'                                                                     .INHOUSE_DOCTOR_ID);',
'          END IF;',
'        END IF;',
'      ',
'        SELECT HIS.PKG_DOCTOR.GET_DOCTOR_NAME(RADIATION.PKG_S18FRM00010.GET_RAD_ONCOLOGIST_ID(:P90_PATIENT_MRNO),',
'                                              NULL)',
'          INTO :P90_CONSULTANT_MRNO',
'          FROM DUAL;',
'      END LOOP;',
'    ',
'    END;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO,P90_STOP,P90_ERROR_MSG,P90_CONSULTANT_CLINIC_ID'
,p_attribute_03=>'P90_PATIENT_NAME,P90_AGE,P90_GENDER,P90_BED_NO,P90_PRIMARY_CONSULTANT,P90_DX_STATUS,P90_CODE_STATUS,P90_ISOLATION_STATUS,P90_ADMISSION_NO,P90_CANCER,P90_CONSULTANT,P90_ORDERABLE,P90_FLAGS,P90_ALLERGIES,P90_INHOUSE_DOCTOR_ID,P90_HIS_USERID,P90_LTE,P90'
||'_PATIENT_LOU,P90_CLINICAL_PATHWAY,P90_PATIENT_VULNERABE,P90_ERROR_MSG,P90_UNIT,P90_SERVICE_NO,P90_SERVICE_STATUS,P90_RANK_ABBREVIATION,P90_FORMATION,P90_IPD_OPD_EAR,P90_CONSULTANT_CLINIC_ID,P90_CONSULTANT_MRNO'
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
 p_id=>wwv_flow_imp.id(284531832481021664)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF ORDERENTRY.PKG_COMMON.CHECK_LOU_PATIENT(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                P_USER_MRNO   => :GV_USER_MRNO,',
'                                                P_OBJECT_CODE => ''APEX'',',
'                                                P_TERMINAL    => :GV_TERMINAL,',
'                                                P_LOCATION_ID => :GV_LOCATION_ID) THEN',
':P90_PATIENT_LOU := ''This patient is under conditional registration (LOU)'';',
'ELSE',
':P90_PATIENT_LOU := '''';',
'END IF;',
'',
'IF  :P90_P_CLINICAL_PATHWAY = ''Y'' THEN',
' :P90_CLINICAL_PATHWAY := ORDERENTRY.PKG_CLINICAL_PATHWAYS.IS_PAT_ON_CLINICAL_PATHWAY(P_MRNO        => :P90_PATIENT_MRNO,',
'                                                                                    P_LOCATION_ID => NVL(:GV_PHYSICAL_LOCATION_ID,SYS_CONTEXT(''GLOBAL_CONTEXT'',''PHYSICAL_LOCATION_ID'')));',
'                                                                              ',
'END IF;  '))
,p_attribute_02=>'P90_PATIENT_MRNO,GV_TERMINAL,GV_LOCATION_ID,P90_P_CLINICAL_PATHWAY,P90_STOP,P90N_ERROR_MSG'
,p_attribute_03=>'P90_PATIENT_LOU,P90_CLINICAL_PATHWAY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284532321421021664)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_ERROR_MSG,P90_PATIENT_VULNERABILITIES,P90_CONSULTANT_MRNO_LABEL,P90_CLINICAL_PATHWAY,P90_SET_MRNO_VALIDATE,P90_CONSULTANT_MRNO,P90_ADMISSION_NO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P90_PATIENT_VULNERABE").getValue() == "Y") {',
'        apex.item("P90_PATIENT_VULNERABILITIES").show(true);',
'        apex.item("P90_PATIENT_VULNERABILITIES").setValue("Vulnerable Patient");',
'        $("#P90_PATIENT_VULNERABILITIES").css({ color: ''red'', fontWeight: 500 });',
'',
'}',
'',
'else {',
'        apex.item("P90_PATIENT_VULNERABILITIES").hide(true);',
'}',
'if (document.getElementById("P90_CONSULTANT_MRNO_LABEL") !== null) {',
'        if ($v("P90_IPD_OPD_EAR") == "I") {',
'                $("#P90_CONSULTANT_MRNO_LABEL").text("Admitting Consultant");',
'',
'        }',
'        else {',
'                $("#P90_CONSULTANT_MRNO_LABEL").text("Clinic Consultant");',
'',
'',
'',
'        }',
'}',
'',
'if ($v("P90_P_CLINICAL_PATHWAY") === "Y") {',
'        apex.item("P90_CLINICAL_PATHWAY").show();',
'}',
'else {',
'        apex.item("P90_CLINICAL_PATHWAY").hide();',
'',
'}',
'',
'$s("P90_SET_MRNO_VALIDATE", $v("P90_SET_MRNO_VALIDATE") == "N" ? "N" : "Y");',
'',
'console.log("normal displayValue  " + $v("P90_CONSULTANT_MRNO").length + " P90_SET_MRNO_VALIDATE " + $v("P90_SET_MRNO_VALIDATE") + " P90_CONSULTANT_MRNO " + $v("P90_CONSULTANT_MRNO") + " 21_ADMISSION_NO " + $v("P90_ADMISSION_NO"));',
'',
'if ($v("P90_SET_MRNO_VALIDATE") == "Y") {',
'        if ($v("P90_ADMISSION_NO").length === 0 && apex.item("P90_CONSULTANT_MRNO").isEmpty()) {',
'                $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                $("#P90_CONSULTANT_MRNO_lov_btn").trigger("click");',
'                $(''#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle > butt'
||'on'').css({ display: ''none'' });',
'        }',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284532852837021667)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// apex.message.alert($v(this.triggeringElement)+ '' mrno is '' + $v("P90_P_MRNO"));',
'if ($v(this.triggeringElement) !== $v("P90_P_MRNO")) {',
'	 //$s(''#P235_TRANS_ID'','''');',
'        closeAllDialog();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284533365863021667)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE(''P235_TRANS_ID'','''');'
,p_attribute_02=>'P235_TRANS_ID'
,p_attribute_03=>'P235_TRANS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284533880085021667)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT ''Physicist: ''|| HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY)',
'    INTO :P90_PHYSICIST',
'    FROM RADIATION.RAD_PHYSICS P',
'   WHERE P.RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P90_PATIENT_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
'     AND EXISTS (SELECT MAX(PHY_PLAN_ID)',
'            FROM RADIATION.RAD_PHYSICS RP',
'           WHERE RP.PHY_PLAN_ID = P.PHY_PLAN_ID',
'             AND RP.STATUS_ID = ''015'')',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P90_PHYSICIST := NULL;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'P90_PHYSICIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284534324304021672)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :LV_PATIENT_MRNO := :P90_PATIENT_MRNO;',
'  :LV_SR_NO       := NULL;',
'END;',
''))
,p_attribute_02=>'P90_PATIENT_MRNO'
,p_attribute_03=>'LV_PATIENT_MRNO,LV_SR_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284534888546021673)
,p_event_id=>wwv_flow_imp.id(284527328775021661)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833093155373221884)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284535264230021673)
,p_name=>'AddToList'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#add-to-list'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284535701072021673)
,p_event_id=>wwv_flow_imp.id(284535264230021673)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER := 0;',
'BEGIN',
'  IF :P90_PATIENT_MRNO IS NOT NULL THEN',
'    SELECT COUNT(*)',
'      INTO V_COUNT',
'      FROM ORDERENTRY.CONSULTANT_PATIENT_LIST',
'     WHERE MRNO = :P90_PATIENT_MRNO',
'       AND CONSULTANT_MRNO = :GV_USER_MRNO;',
'  ',
'    IF V_COUNT = 0 THEN',
'      BEGIN',
'        INSERT INTO ORDERENTRY.CONSULTANT_PATIENT_LIST',
'          (MRNO, NAME, CONSULTANT_MRNO)',
'        VALUES',
'          (:P90_PATIENT_MRNO, :P90_PATIENT_NAME, :GV_USER_MRNO);',
'      EXCEPTION',
'        WHEN DUP_VAL_ON_INDEX THEN',
'          NULL;',
'      END;',
'      COMMIT;',
'    ELSE',
'    htp.p(''<script language="javascript">'');',
'    htp.p(''alert("This patient is already present in you own list");'');',
'    htp.p(''</script>'');',
'',
'     ',
'      RETURN;',
'    END IF;',
'  ELSE',
'    htp.p(''<script language="javascript">'');',
'    htp.p(''alert("Please enter appropriate value of MRNO");'');',
'    htp.p(''</script>'');',
'   ',
'    RETURN;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284536246281021673)
,p_event_id=>wwv_flow_imp.id(284535264230021673)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addOwnList();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284536613531021673)
,p_name=>'LovClosebtn'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle > button'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284537125225021673)
,p_event_id=>wwv_flow_imp.id(284536613531021673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// let btn = document.querySelector("#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-dragg'
||'able-handle > button");',
'// $(btn).trigger("click");',
'console.log("lov close button pressed", $(btn).trigger("click"));',
'let displayValue = document.querySelector("#P90_CLINIC_CONSULTANT").value;',
'console.log("display value is on close lov", displayValue);',
'if (apex.item("P90_PATIENT_MRNO").getValue() != "" && (displayValue == "" || displayValue == undefined || apex.item("P90_CLINIC_CONSULTANT").getValue === "")) {',
'        $("#P90_CLINIC_CONSULTANT_lov_btn").trigger("click");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284537526865021674)
,p_name=>'ChangeMRNO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284538058605021674)
,p_event_id=>wwv_flow_imp.id(284537526865021674)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_PATIENT_MRNO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'console.log("change event fired");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284538403221021674)
,p_name=>'Patient Allergies'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#patient-allergies'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284538979816021674)
,p_event_id=>wwv_flow_imp.id(284538403221021674)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P90_PATIENT_MRNO") === '''') {',
'        apex.message.alert("Please select MRNO.");',
'		$s(''P90_FLAG'' ,''C'')',
'}else {',
'         apex.navigation.redirect("f?p=&APP_ID.:11:&APP_SESSION.::NO:RP::");',
'        // let url = ''f?p=&APP_ID.:11:&APP_SESSION.::NO::P11_P_MRNO:'' + $v("P90_PATIENT_MRNO");',
'        // let url = "f?p=&APP_ID.:11:&APP_SESSION.::NO:RP::";',
'        // let patientAllerties = $("<a>").attr({ href: "javascript:phyMenuDialog(f?p=&APP_ID.:11:&APP_SESSION.::NO::P11_P_MRNO:" + $v("P90_PATIENT_MRNO") + ")", id: "patientAllergiesPhyMenu" });',
'        // console.log(patientAllerties);',
'        // $("#patientAllergiesPhyMenu").trigger("click");',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284539374223021674)
,p_name=>'OPEN_PROFILE'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.st'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284539823432021674)
,p_event_id=>wwv_flow_imp.id(284539374223021674)
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
 p_id=>wwv_flow_imp.id(284540294739021674)
,p_name=>'USER_GUIDES'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.guide-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284540703114021675)
,p_event_id=>wwv_flow_imp.id(284540294739021674)
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
 p_id=>wwv_flow_imp.id(284541187866021675)
,p_name=>'ADD_TO_FAVORITES'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fav-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284541686530021675)
,p_event_id=>wwv_flow_imp.id(284541187866021675)
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
 p_id=>wwv_flow_imp.id(284542023947021675)
,p_name=>'ClearParent Page Items'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284514282971021645)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284542584818021675)
,p_event_id=>wwv_flow_imp.id(284542023947021675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.CLEAR_PAGE_CACHE(21);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284543034818021676)
,p_event_id=>wwv_flow_imp.id(284542023947021675)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284543503906021676)
,p_event_id=>wwv_flow_imp.id(284542023947021675)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeAllDialog();',
'location.reload();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284543911665021677)
,p_name=>'ShowHidePatientVulner'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284544492799021677)
,p_event_id=>wwv_flow_imp.id(284543911665021677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P90_P_CHECK_CONVERTED_MRNO:=DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 960,',
'                                                                       P_ORGANIZATION_ID => :GV_ORGANIZATION_ID , --GLOBAL.ORGANIZATION_ID,',
'                                                                       P_LOCATION_ID     => :GV_PHYSICAL_LOCATION_ID,  --GLOBAL.PHYSICAL_LOCATION_ID,',
'                                                                       P_DEFAULT_VAL     => ''N''); '))
,p_attribute_03=>'P90_P_CHECK_CONVERTED_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284544908280021677)
,p_event_id=>wwv_flow_imp.id(284543911665021677)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_PATIENT_VULNERABILITIES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284545478416021677)
,p_event_id=>wwv_flow_imp.id(284543911665021677)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_PATIENT_VULNERABILITIES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284545882198021677)
,p_name=>'onPageLoad'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284546331998021677)
,p_event_id=>wwv_flow_imp.id(284545882198021677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function executeOnPageLoad() {',
'        $(function () {',
'                $(''#t_PageBody > div.ui-dialog.ui-dialog-popuplov.ui-dialog--hasTitle.ui-widget.ui-widget-content.ui-front.ui-draggable.ui-resizable > div.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle > butt'
||'on'').css({ display: ''none'' });',
'',
'                setAllLablesTextColor();',
'',
'                // setGenderIcon();',
'',
'                setConsultantLabel();',
'',
'',
'                let items = ["P90_UNIT", "P90_SERVICE_NO", "P90_SERVICE_STATUS", "P90_RANK_ABBREVIATION", "P90_FORMATION"];',
'',
'                let constant_val = $v("P90_CONSTANT_428");',
'',
'                if (constant_val == "Y") {',
'                        showHideItems(items, "show");',
'',
'                }',
'                else {',
'',
'                        showHideItems(items, "hide");',
'                }',
'',
'',
'                if ($v("P90_PATIENT_MRNO").length !== 0 && $v("P90_P_MRNO").length === 0 || $v("P90_PATIENT_MRNO") !== $v("P90_P_MRNO")) {',
'                        $s("P90_P_MRNO", $v("P90_PATIENT_MRNO"));',
'                        $s("P90_SET_MRNO_VALIDATE", "Y");',
'                }',
'',
'                $(''#P90_DX_STATUS_LABEL, #P90_CODE_STATUS_LABEL, #P90_ISOLATION_STATUS_LABEL'').parent().css({ textAlign: ''start'' });',
'        });',
'}',
'',
'executeOnPageLoad();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284546730097021678)
,p_name=>'New'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284547223567021678)
,p_event_id=>wwv_flow_imp.id(284546730097021678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'test'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284547708771021678)
,p_event_id=>wwv_flow_imp.id(284546730097021678)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' apex.message.alert(''testing'');',
'consol.log(this);',
'',
'apex.item(''P90_PATIENT_MRNO'').setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284548184293021678)
,p_name=>'New_1'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284548642747021678)
,p_event_id=>wwv_flow_imp.id(284548184293021678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'testing alert'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284549176861021678)
,p_event_id=>wwv_flow_imp.id(284548184293021678)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P90_PATIENT_MRNO'').trigger(''focusout''); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284549588259021679)
,p_name=>'When_Change'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_FLAG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284550093182021679)
,p_event_id=>wwv_flow_imp.id(284549588259021679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P90_FLAG'')===''C''){',
'//   $("#CLEAR").trigger("click");',
'$s(''P90_PATIENT_MRNO'' ,'''')',
'$s(''P90_PATIENT_NAME'' ,'''')',
'$s(''P90_AGE'' ,'''')',
'$s(''P90_GENDER'' ,'''')',
'$s(''P90_BED_NO'' ,'''')',
'$s(''P90_DX_STATUS'' ,'''')',
'$s(''P90_CODE_STATUS'' ,'''')',
'$s(''P90_ISOLATION_STATUS'' ,'''')',
'$s(''P90_ADMISSION_NO'' ,'''')',
'$s(''P90_CANCER'' ,'''')',
'$s(''P90_ORDERABLE'' ,'''')',
'$s(''P90_CONSULTANT'' ,'''')',
'$s(''P90_ALLERGIES'' ,'''')',
'$s(''P90_FLAGS'' ,'''')',
'$s(''P90_CONSULTANT_MRNO'' ,'''')',
'$s(''P90_PRIMARY_CONSULTANT'' ,'''')',
'$s(''P90_PATIENT_VULNERABILITIES'' ,'''')',
'',
' apex.navigation.dialog.close(true);',
'apex.item(''P90_PATIENT_MRNO'').setFocus();',
'//   $("#CLEAR").trigger("click");',
'	',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284550575221021681)
,p_event_id=>wwv_flow_imp.id(284549588259021679)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(833093155373221884)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284550983309021681)
,p_name=>'FLAG_FORM'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#patient-flags'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284551436470021681)
,p_event_id=>wwv_flow_imp.id(284550983309021681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Under Development'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284551808746021681)
,p_name=>'ClearFields'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284552326564021681)
,p_event_id=>wwv_flow_imp.id(284551808746021681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_PATIENT_MRNO,P90_PATIENT_NAME,P90_AGE,P90_GENDER,P90_CONSULTANT_MRNO,P90_ALLERGIES,P90_FLAGS,P90_BED_NO,P90_PRIMARY_CONSULTANT,P90_CLINICAL_PATHWAY,P90_LTE,P90_PATIENT_LOU,P90_UNIT,P90_SERVICE_NO,P90_SERVICE_STATUS,P90_RANK_ABBREVIATION,P90_FORMA'
||'TION,P90_DX_STATUS,P90_CODE_STATUS,P90_ISOLATION_STATUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284552767184021682)
,p_name=>'DAParamMRNO '
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_PARAM_MRNO'
,p_condition_element=>'P90_PARAM_MRNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>500
,p_execution_immediate=>true
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284553287972021682)
,p_event_id=>wwv_flow_imp.id(284552767184021682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_PATIENT_MRNO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P90_PARAM_MRNO;'
,p_attribute_07=>'P90_PARAM_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284553756521021682)
,p_event_id=>wwv_flow_imp.id(284552767184021682)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_PATIENT_MRNO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284554157478021682)
,p_name=>'CloseTab'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284514618494021645)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284554609460021682)
,p_event_id=>wwv_flow_imp.id(284554157478021682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.close();',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P90_CALLER_PAGE'
,p_client_condition_expression=>'S18APX00037'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284555120284021682)
,p_event_id=>wwv_flow_imp.id(284554157478021682)
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
,p_client_condition_element=>'P90_CALLER_PAGE'
,p_client_condition_expression=>'S18APX00037'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284555558977021683)
,p_name=>'DASelectPatient'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284513808264021644)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284556596776021683)
,p_event_id=>wwv_flow_imp.id(284555558977021683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := V(''APP_ID'');',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P90_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' ||',
'                                                         L_APP ||',
'                                                         '':89:'' ||',
'                                                         L_SESSION ||',
'                                                         ''::NO::'',',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_03=>'P90_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284556079583021683)
,p_event_id=>wwv_flow_imp.id(284555558977021683)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = $v(''P90_TXT_URL'');',
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(284518622276021649)
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
'  :P90_CONSTANT_428             := v_const_428;',
'  :P90_P_DEFAULT_OPENING_OBJECT := v_const_442;',
'  :P90_P_CLINICAL_PATHWAY       := v_const_491;',
'  :P90_P_CHECK_EMP_DEPENDENT    := v_const_960;',
'',
'                                                          ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>284518622276021649
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
 p_id=>wwv_flow_imp.id(284519090911021650)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClearItem'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P90_PATIENT_MRNO := NULL;',
'  :P90_PHYSICIST    := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>284519090911021650
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(284518264477021648)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_TO_LIST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT        NUMBER := 0;',
'  V_PATIENT_MRNO VARCHAR2(14) := APEX_APPLICATION.G_X01;',
'BEGIN',
'    SELECT COUNT(*)',
'      INTO V_COUNT',
'      FROM ORDERENTRY.CONSULTANT_PATIENT_LIST',
'     WHERE MRNO = V_PATIENT_MRNO',
'       AND CONSULTANT_MRNO = :GV_USER_MRNO;',
'  ',
'    IF V_COUNT = 0 THEN',
'      BEGIN',
'        INSERT INTO ORDERENTRY.CONSULTANT_PATIENT_LIST',
'          (MRNO, NAME, CONSULTANT_MRNO)',
'        VALUES',
'          (V_PATIENT_MRNO, :P90_PATIENT_NAME, :GV_USER_MRNO);',
'      EXCEPTION',
'        WHEN DUP_VAL_ON_INDEX THEN',
'          NULL;',
'      END;',
'      COMMIT;',
'      APEX_JSON.OPEN_OBJECT;',
'      APEX_JSON.WRITE(P_NAME => ''p_stop'', P_VALUE => ''N'');',
'      APEX_JSON.WRITE(P_NAME  => ''message'',',
'                      P_VALUE => '''');',
'      APEX_JSON.CLOSE_OBJECT;',
'      RETURN;',
'    ELSE',
'      APEX_JSON.OPEN_OBJECT;',
'      APEX_JSON.WRITE(P_NAME => ''p_stop'', P_VALUE => ''Y'');',
'      APEX_JSON.WRITE(P_NAME  => ''message'',',
'                      P_VALUE => ''This patient is already present in you own list'');',
'      APEX_JSON.CLOSE_OBJECT;',
'    ',
'      RETURN;',
'    END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>284518264477021648
);
wwv_flow_imp.component_end;
end;
/

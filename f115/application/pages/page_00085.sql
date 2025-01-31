prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_name=>'Radiotherapy Prescription (View Request from CT)'
,p_alias=>'RADIOTHERAPY-PRESCRIPTION-VIEW-REQUEST-FROM-CT'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function dialogue() {',
'    js - dialog - size1600x620',
'}',
'',
'function editRadiationDetail() {',
'    /*$s(''P85_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'    if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.item("saveradiationsite").disable();',
'    }',
'    else if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.item("saveradiationsite").disable();',
'    }',
'    else {',
'        apex.item("saveradiationsite").enable();',
'    }*/',
'    apex.theme.openRegion(''radiationsite'')',
'',
'};',
'',
'function deleteRadiationDetail() {',
'   // $s(''P85_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'   // if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.message.alert("Site is signed, cannot proceed");',
'        return;',
'   // }',
'    if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.message.alert("Site is cancelled, cannot proceed");',
'        return;',
'    }',
'    apex.message.confirm(''Please confirm you want to delete Radiotheraphy Site?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationDetail",',
'                {',
'',
'                    pageItems: ["P85_RAD_DETAIL_RADIATION_NO",',
'                        "P85_RAD_DETAIL_ROW_ID",',
'                        "P85_RAD_DETAIL_SITE_ID",',
'                        "P85_RAD_DETAIL_PLANNING_ID",',
'                        "P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'                        "P85_RAD_DETAIL_P1_DOSE",',
'                        "P85_RAD_DETAIL_P1_FRACTION",',
'                        "P85_RAD_DETAIL_P2_DOSE",',
'                        "P85_RAD_DETAIL_P2_FRACTION",',
'                        "P85_RAD_DETAIL_P3_DOSE",',
'                        "P85_RAD_DETAIL_P3_FRACTION",',
'                        "P85_RAD_DETAIL_TOT_DOSE",',
'                        "P85_RAD_TREATMENT_LATER",',
'                        "P85_RAD_ACTIVE",',
'                        "P85_RAD_DETAIL_EVENT_DESC",',
'                        "P85_RAD_DETAIL_SIM_CT_ID",',
'                        "P85_RAD_DETAIL_SETUP_POSITION",',
'                        "P85_RAD_DETAIL_ARM_POSITION",',
'                        "P85_RAD_DETAIL_NECK_POSITION",',
'                        "P85_RAD_DETAIL_POSITION_INSTRUCTION",',
'                        "P85_RAD_DETAIL_ANAESTHESIA",',
'                        "P85_RAD_DETAIL_PATH_REVIEWED",',
'                        "P85_RAD_DETAIL_RAD_REVIEWED",',
'                        "P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'                        "P85_RAD_DETAIL_CT_INSTRUCTIONS"',
'                    ],',
'',
'                    x01: ''DELETE''',
'',
'                },',
'                {',
'                    dataType: ''text'',',
'                    success: function (data) {',
'',
'                        var obj = JSON.parse(data);',
'                        console.log(data);',
'                        console.log(obj);',
'                        if (obj.status == "success") {',
'',
'',
'',
'                            apex.message.alert(obj.response, function () {',
'                            }, {',
'                                title: "Delete",',
'                                style: "danger",',
'                                iconClasses: "fa fa-trash-o fa-2x",',
'                                okLabel: "Ok"',
'                            });',
'                            apex.region(''RAD_DETAIL'').refresh();',
'                            apex.theme.closeRegion(''radiationsite'');',
'',
'                        }',
'                        else {',
'                            apex.message.alert(obj.response, function () {',
'                                //afterLoad();',
'                            }, {',
'                                title: "Error",',
'                                style: "danger",',
'                                iconClasses: "fa fa-warning fa-2x",',
'                                okLabel: "Ok"',
'                            });',
'',
'                        }',
'                    }',
'                });',
'',
'        }',
'    })',
'',
'',
'};',
'',
'function editAccessory() {',
'    apex.theme.openRegion(''radiationAccessorySub'')',
'}',
'',
'function deleteAccessory() {',
'',
'    $s(''P85_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'    if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.message.alert("Site is signed, cannot proceed");',
'        return;',
'    }',
'    if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.message.alert("Site is cancelled, cannot proceed");',
'        return;',
'    }',
'',
'    apex.message.confirm(''Please confirm you want to delete Accessory?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationAccessory",',
'                {',
'',
'                    pageItems: ["P85_RAD_ACC_ACCESSORY_ID",',
'                        "P85_RAD_ACC_REMARKS",',
'                        "P85_RAD_ACC_RADIATION_NO",',
'                        "P85_RAD_DETAIL_PLANNING_ID",',
'                        "P85_RAD_ACC_SITE_ID",',
'                        "P85_RAD_ACC_SRNO",',
'                        "P85_RAD_ACC_PHASE_NO",',
'                        "P85_RAD_ACC_STATUS_ID"',
'                    ],',
'',
'                    x01: ''DELETE''',
'',
'                },',
'                {',
'                    dataType: ''text'',',
'                    success: function (data) {',
'',
'                        var obj = JSON.parse(data);',
'                        console.log(data);',
'                        console.log(obj);',
'                        if (obj.status == "success") {',
'',
'',
'',
'                            apex.message.alert(obj.response, function () {',
'                            }, {',
'                                title: "Delete",',
'                                style: "danger",',
'                                iconClasses: "fa fa-trash-o fa-2x",',
'                                okLabel: "Ok"',
'                            });',
'                            apex.region(''radiationAccessory'').refresh();',
'                            apex.theme.closeRegion(''radiationAccessorySub'');',
'',
'                        }',
'                        else {',
'                            apex.message.alert(obj.response, function () {',
'                                //afterLoad();',
'                            }, {',
'                                title: "Error",',
'                                style: "danger",',
'                                iconClasses: "fa fa-warning fa-2x",',
'                                okLabel: "Ok"',
'                            });',
'',
'                        }',
'                    }',
'                });',
'',
'        }',
'    })',
'',
'',
'};'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-pageRange{',
'    display:none;',
'}',
'',
'',
'',
'#RAD_DETAIL .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#radiationAccessory .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'',
'',
'',
'.fixheader {',
'    line-height: 25px;',
'}',
'',
' .bluearrow {color:#056AC8;}',
'',
'  .redarrow {color:#CB1100;}',
'',
'',
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
'#P85_RAD_DETAIL_P1_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P85_RAD_DETAIL_P1_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P85_RAD_DETAIL_P2_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P85_RAD_DETAIL_P2_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P85_RAD_DETAIL_P3_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P85_RAD_DETAIL_P3_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#report_image_report img{',
'	height: 150px;',
'    width:  100px;',
'',
'}',
'',
'#P85_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
' #P85_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'  #P85_DISP_SEX {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'   #P85_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'    #P85_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'     #P85_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'      #P85_ICDNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'       #P85_ICDNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'        #P85_TREATMENT_INTENT_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'         #P85_SIMULATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'          #P85_DOCTOR_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'           #P85_ANAESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'            #P85_CHEMOTHERAPY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'             #P85_CHEMOTHERAPY_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'              #P85_REQUEST_ENTERED_BY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
' ',
'              #P85_SIGN_BY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'               #P85_STATUS_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
' #P85_RAD_ACC_ACCESSORY_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P85_RAD_ACC_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P85_RAD_DETAIL_SITE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_PLANNING_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P85_RAD_DETAIL_P1_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P85_RAD_DETAIL_P1_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_P2_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_P2_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_P3_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_P3_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_TOT_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_TREATMENT_LATER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_ACTIVE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_EVENT_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_SIM_CT_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_SETUP_POSITION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_ARM_POSITION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_NECK_POSITION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P85_RAD_DETAIL_POSITION_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_PATH_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_RAD_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_CT_INSTRUCTIONS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_SIM_CT_ID_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_SETUP_POSITION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_ARM_POSITION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_NECK_POSITION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_POSITION_INSTRUCTION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_PATH_REVIEWED_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_RAD_REVIEWED_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_CT_INSTRUCTIONS_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P85_RAD_DETAIL_SITE_STATUS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_height=>'1200'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20241010161318'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149958252635195912)
,p_plug_name=>'Radiation Master'
,p_region_name=>'rad_master'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RM.RADIATION_NO,',
'       RADIATION_DATE,',
'       MRNO,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'       RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'       HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'       PRIORITY,',
'       REMARKS,',
'       DOCTOR_ID,',
'       RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'       TREATMENT_INTENT_ID,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'       ICDNO,',
'       RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'       STATUS_REQUEST,',
'       SIGN_BY_REQUEST,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'       REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'       REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'       ANAESTHESIA,',
'       CHEMOTHERAPY,',
'       CHEMOTHERAPY_REMARKS,',
'       RM.SIMULATION_DATE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'       RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO) ACTIVE_REQUEST,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'       SIGN_BY_REQUEST || '')'' SIGN_BY,',
'       ROWID',
'  FROM RADIATION.RADIATION_MASTER RM',
' /*WHERE RM.RADIATION_NO = ''SKM001230000002''--RM.RADIATION_NO',
'   AND RM.MRNO LIKE CASE',
'         WHEN :P85_MRNO IS NOT NULL THEN',
'          ''%'' || :P85_MRNO',
'         ELSE',
'          RM.MRNO',
'       END',
'   AND RM.RADIOTHERAPY_TYPE = ''T''',
' ORDER BY RM.RADIATION_DATE DESC;*/',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P85_MRNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(150123192028050912)
,p_plug_name=>'Patient Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>150
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>    ',
'<!-- <video id="video" width="640" height="480" autoplay></video> --> ',
'<canvas id="canvas"  width="50" height="50" ',
'  style=" border-radius: 50%; box-shadow: 7px 5px 30px 0px #888888; margin-top: 3px;  margin-left: 3px;"></canvas>',
'</div>'))
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(176432677102067914)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P85_MRNO;',
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
,p_ajax_items_to_submit=>'P85_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146549155506900022)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146549527916900023)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146549959581900023)
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
 p_id=>wwv_flow_imp.id(176437319245067961)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>999
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) STATUS_DESC',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P85_MRNO',
'   AND M.RADIATION_NO <> NVL(:P85_RADIATION_NO, ''$'')',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P85_MRNO,P85_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(177166279291616351)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>177166279291616351
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177166407547616352)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177166561475616354)
,p_db_column_name=>'STATUS_DESC'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177166506076616353)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(178256884519632201)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317695'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:STATUS_DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194825083752057846)
,p_plug_name=>'CT Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(227595289754143533)
,p_plug_name=>'Radiotherapy Detail'
,p_region_name=>'RAD_DETAIL'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'       SIM_CT_ID,',
'       RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID),',
'       TREATMENT_TECHNIQUE_ID,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_TECHNIQUE_DESC(RD.TREATMENT_TECHNIQUE_ID),',
'       PLANNING,',
'       PLANNING_ID,',
'       RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING),',
'       NECK_POSITION,',
'       SETUP_POSITION,',
'       ARM_POSITION,',
'       P1_DOSE_FRACTION,',
'       P1_NO_OF_FRACTION,',
'       P2_DOSE_FRACTION,',
'       P2_NO_OF_FRACTION,',
'       P3_DOSE_FRACTION,',
'       P3_NO_OF_FRACTION,',
'       TREATMENT_LATER,',
'       ACTIVE,',
'       POSITION_INSTRUCTION,',
'       WFE_NO,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                       P_SITE_ID      => SITE_ID,',
'                                                       P_WFE_NO       => WFE_NO) EVENT_DESC,',
'       CT_INSTRUCTIONS,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                       P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                       P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                       P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RD.STATUS_ID) STATUS, ',
'       CONCURRENT_BRACHYTHERAPHY,',
'       PATH_REVIEWED,',
'       RAD_REVIEWED,',
'       TREATMENT_TYPE,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_TYPE(P_TREATMENT_TYPE => TREATMENT_TYPE) TREATMENT_TYPE_DESC,',
'       (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'       NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'       NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOTAL_DOSE,',
'       ROWID',
'',
'  FROM RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P85_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P85_PARAM_SITE_ID, RD.SITE_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P85_RADIATION_NO,P85_PARAM_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiotherapy Detail'
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
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(242053791136086520)
,p_heading=>'Phase 1'
,p_label=>'Phase 1'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(242053951367086522)
,p_heading=>'Phase 2'
,p_label=>'Phase 2'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(242054010134086523)
,p_heading=>'Phase 3'
,p_label=>'Phase 3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(176433038005067918)
,p_name=>'RAD_DETAIL_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Detail View'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:$s(''P85_RAD_DETAIL_DML_STATUS'', ''UPDATE'');javascript:$s(''P85_RAD_DETAIL_CT_INSTRUCTIONS'', ''&CT_INSTRUCTIONS.'');javascript:$s(''P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY'', ''&CONCURRENT_BRACHYTHERAPHY.'');javascript:$s(''P85_RAD_DETAIL_RAD_REVIE'
||'WED'', ''&RAD_REVIEWED.'');javascript:$s(''P85_RAD_DETAIL_PATH_REVIEWED'', ''&PATH_REVIEWED.'');javascript:$s(''P85_RAD_DETAIL_POSITION_INSTRUCTION'', ''&POSITION_INSTRUCTION.'');javascript:$s(''P85_RAD_DETAIL_NECK_POSITION'', ''&NECK_POSITION.'');javascript:$s(''P8'
||'5_RAD_DETAIL_ARM_POSITION'', ''&ARM_POSITION.'');javascript:$s(''P85_RAD_DETAIL_SETUP_POSITION'', ''&SETUP_POSITION.'');javascript:$s(''P85_RAD_DETAIL_SIM_CT_ID'', ''&SIM_CT_ID.'');javascript:$s(''P85_RAD_ACTIVE'', ''&ACTIVE.'');javascript:$s(''P85_RAD_TREATMENT_LAT'
||'ER'', ''&TREATMENT_LATER.'');javascript:$s(''P85_RAD_DETAIL_TOT_DOSE'', ''&TOTAL_DOSE.'');javascript:$s(''P85_RAD_DETAIL_P3_FRACTION'', ''&P3_NO_OF_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P3_DOSE'', ''&P3_DOSE_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P2_FRACT'
||'ION'', ''&P2_NO_OF_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P2_DOSE'', ''&P2_DOSE_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_ROW_ID'', ''&ROWID.'');javascript:$s(''P85_RAD_DETAIL_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P85_RAD_DETAIL_SITE_ID'', ''&SITE'
||'_ID.'');javascript:$s(''P85_RAD_DETAIL_PLANNING_ID'', ''&PLANNING_ID.'');javascript:$s(''P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID'', ''&TREATMENT_TYPE.'');javascript:$s(''P85_RAD_DETAIL_P1_DOSE'', ''&P1_DOSE_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P1_FRACTION'', '''
||'&P1_NO_OF_FRACTION.'');javascript:editRadiationDetail();'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(176433144163067919)
,p_name=>'RAD_DETAIL_DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:$s(''P85_RAD_DETAIL_CT_INSTRUCTIONS'', ''&CT_INSTRUCTIONS.'');javascript:$s(''P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY'', ''&CONCURRENT_BRACHYTHERAPHY.'');javascript:$s(''P85_RAD_DETAIL_RAD_REVIEWED'', ''&RAD_REVIEWED.'');javascript:$s(''P85_RAD_DETAIL'
||'_PATH_REVIEWED'', ''&PATH_REVIEWED.'');javascript:$s(''P85_RAD_DETAIL_POSITION_INSTRUCTION'', ''&POSITION_INSTRUCTION.'');javascript:$s(''P85_RAD_DETAIL_NECK_POSITION'', ''&NECK_POSITION.'');javascript:$s(''P85_RAD_DETAIL_ARM_POSITION'', ''&ARM_POSITION.'');javascr'
||'ipt:$s(''P85_RAD_DETAIL_SETUP_POSITION'', ''&SETUP_POSITION.'');javascript:$s(''P85_RAD_DETAIL_SIM_CT_ID'', ''&SIM_CT_ID.'');javascript:$s(''P85_RAD_ACTIVE'', ''&ACTIVE.'');javascript:$s(''P85_RAD_TREATMENT_LATER'', ''&TREATMENT_LATER.'');javascript:$s(''P85_RAD_DETA'
||'IL_TOT_DOSE'', ''&TOTAL_DOSE.'');javascript:$s(''P85_RAD_DETAIL_P3_FRACTION'', ''&P3_NO_OF_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P3_DOSE'', ''&P3_DOSE_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P2_FRACTION'', ''&P2_NO_OF_FRACTION.'');javascript:$s(''P85_RAD_D'
||'ETAIL_P2_DOSE'', ''&P2_DOSE_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_ROW_ID'', ''&ROWID.'');javascript:$s(''P85_RAD_DETAIL_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P85_RAD_DETAIL_SITE_ID'', ''&SITE_ID.'');javascript:$s(''P85_RAD_DETAIL_PLANNING_ID'', ''&'
||'PLANNING_ID.'');javascript:$s(''P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID'', ''&TREATMENT_TYPE.'');javascript:$s(''P85_RAD_DETAIL_P1_DOSE'', ''&P1_DOSE_FRACTION.'');javascript:$s(''P85_RAD_DETAIL_P1_FRACTION'', ''&P1_NO_OF_FRACTION.'');javascript:deleteRadiationDetai'
||'l();'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(184352294056446218)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>false
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
 p_id=>wwv_flow_imp.id(227595490927143535)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(227595524824143536)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Radiotherapy Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>10
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RS.DESCRIPTION, RS.SITE_ID ID',
'  FROM RADIATION.SITE RS',
' WHERE RS.ACTIVE = ''Y''',
' ORDER BY RS.DESCRIPTION',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SITEID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227595676880143537)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(227595807859143538)
,p_name=>'SIM_CT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIM_CT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Simulation/CT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>3
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(96311834010559441)
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227595880695143539)
,p_name=>'RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID)'
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
 p_id=>wwv_flow_imp.id(227596008784143540)
,p_name=>'TREATMENT_TECHNIQUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TECHNIQUE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227596066269143541)
,p_name=>'RADIATION.PKG_RADIATION.GET_TREATMENT_TECHNIQUE_DESC(RD.TREATMENT_TECHNIQUE_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_TREATMENT_TECHNIQUE_DESC(RD.TREATMENT_TECHNIQUE_ID)'
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
 p_id=>wwv_flow_imp.id(227596115327143542)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
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
 p_id=>wwv_flow_imp.id(227596279788143543)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Planning Technique'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>2
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(35570505911688075)
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
 p_id=>wwv_flow_imp.id(227596346596143544)
,p_name=>'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING)'
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
 p_id=>wwv_flow_imp.id(227596504984143545)
,p_name=>'NECK_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Neck Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>1
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(97311712027163862)
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227596560241143546)
,p_name=>'SETUP_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Setup Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>1
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(96363929021776646)
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227596619758143547)
,p_name=>'ARM_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Arm Position'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>1
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION DESCRIPTION, P.POSITION_PREFIX ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''P''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227596716397143548)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(242053791136086520)
,p_use_group_for=>'HEADING'
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
 p_id=>wwv_flow_imp.id(227596891460143549)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(242053791136086520)
,p_use_group_for=>'HEADING'
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
 p_id=>wwv_flow_imp.id(227596917125143550)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(242053951367086522)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227597066773143551)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(242053951367086522)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227597156451143552)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(242054010134086523)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227597267492143553)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(242054010134086523)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227597374744143554)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Treatment  Later'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>true
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227597412539143555)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227597603137143556)
,p_name=>'POSITION_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Positioning  Instructions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(227597627617143557)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(227597757832143558)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Current Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(227597860183143559)
,p_name=>'CT_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Patient Preparation Instructions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(227597951859143560)
,p_name=>'SETUP_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227598030065143561)
,p_name=>'ARM_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(242052956136086512)
,p_name=>'NECK_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(242053018546086513)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'STATUS_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(242053214901086515)
,p_name=>'CONCURRENT_BRACHYTHERAPHY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONCURRENT_BRACHYTHERAPHY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Concurrent Brachytherapy '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(242053400503086516)
,p_name=>'PATH_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATH_REVIEWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Pathology Reviewed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(242053412746086517)
,p_name=>'RAD_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_REVIEWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Radiology Reviewed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(242053570224086518)
,p_name=>'TREATMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(242053687643086519)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Treatment Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(242054706135086529)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total  Dose(cGy)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'TOTAL_DOSE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P85_TOTAL_DOSE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(242056225283086545)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(227595347921143534)
,p_internal_uid=>227595347921143534
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>230
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(242058786766087258)
,p_interactive_grid_id=>wwv_flow_imp.id(227595347921143534)
,p_static_id=>'955714'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(242058988069087258)
,p_report_id=>wwv_flow_imp.id(242058786766087258)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(146508415971906749)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(242056225283086545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(176570095810569157)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(176433038005067918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(176579219506591315)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(176433144163067919)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184383093059742701)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(184352294056446218)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242059387662087263)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(227595490927143535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242060298527087267)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(227595524824143536)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>433
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242061111142087269)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(227595676880143537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242062036387087273)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(227595807859143538)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>218
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242062919650087285)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(227595880695143539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242063878202087291)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(227596008784143540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153.031
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242064808722087293)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(227596066269143541)
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
 p_id=>wwv_flow_imp.id(242065708418087302)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(227596115327143542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242066542106087304)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(227596279788143543)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242067433757087306)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(227596346596143544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242068336647087308)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(227596504984143545)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242069284143087311)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(227596560241143546)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242070188133087317)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(227596619758143547)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242071035773087319)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(227596716397143548)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242071941561087324)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(227596891460143549)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242072811841087328)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(227596917125143550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242073727031087330)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(227597066773143551)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242074614896087336)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(227597156451143552)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242075577379087338)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(227597267492143553)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242076412635087340)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(227597374744143554)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242077338725087343)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(227597412539143555)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242078268759087347)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(227597603137143556)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>228
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242079147752087350)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(227597627617143557)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242080046523087352)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(227597757832143558)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242080944194087354)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(227597860183143559)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242081876046087357)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(227597951859143560)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242082672494087359)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(227598030065143561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242083587702087362)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(242052956136086512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242084422879087366)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(242053018546086513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242086292782087371)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(242053214901086515)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242087205144087375)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(242053400503086516)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242088058444087378)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(242053412746086517)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242088932760087380)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(242053570224086518)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242089869834087383)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(242053687643086519)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(242775208953405655)
,p_view_id=>wwv_flow_imp.id(242058988069087258)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(242054706135086529)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176433210249067920)
,p_plug_name=>'Radiotheraphy Site'
,p_region_name=>'radiationsite'
,p_parent_plug_id=>wwv_flow_imp.id(227595289754143533)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242054729177086530)
,p_plug_name=>'Radiation Accessory '
,p_region_name=>'radiationAccessory'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       SRNO,',
'       PHASE_NO,',
'       ACCESSORY_ID,',
'       RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID),',
'       REMARKS,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID),',
'       ROWID',
'  FROM RADIATION.RAD_ACCESSORIES RA',
' WHERE RA.RADIATION_NO = :P85_RAD_DETAIL_ND_RADIATION_NO',
'   AND RA.SITE_ID = :P85_RAD_DETAIL_ND_SITE_ID',
'   AND RA.TRANS_TYPE = ''RQ''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P85_RAD_DETAIL_ND_RADIATION_NO,P85_RAD_DETAIL_ND_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation Accessory '
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
 p_id=>wwv_flow_imp.id(179039485769362624)
,p_name=>'RAD_ACCESSORY_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Update'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:editAccessory();javascript:$s(''P85_RAD_ACC_ACCESSORY_ID'', ''&ACCESSORY_ID.'');javascript:$s(''P85_RAD_ACC_REMARKS'', ''&REMARKS.'');javascript:$s(''P85_RAD_ACC_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P85_RAD_ACC_SITE_ID'', ''&SITE_ID.'');jav'
||'ascript:$s(''P85_RAD_ACC_SRNO'', ''&SRNO.'');javascript:$s(''P85_RAD_ACC_PHASE_NO'', ''&PHASE_NO.'');javascript:$s(''P85_RAD_ACC_STATUS_ID'', ''&STATUS_ID.'');javascript:$s(''P85_RAD_ACC_DML_STATUS'', ''UPDATE'');'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(179039538029362625)
,p_name=>'RAD_ACCESSORY_DELETE '
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:deleteAccessory();javascript:$s(''P85_RAD_ACC_ACCESSORY_ID'', ''&ACCESSORY_ID.'');javascript:$s(''P85_RAD_ACC_REMARKS'', ''&REMARKS.'');javascript:$s(''P85_RAD_ACC_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P85_RAD_ACC_SITE_ID'', ''&SITE_ID.'');j'
||'avascript:$s(''P85_RAD_ACC_SRNO'', ''&SRNO.'');javascript:$s(''P85_RAD_ACC_PHASE_NO'', ''&PHASE_NO.'');javascript:$s(''P85_RAD_ACC_STATUS_ID'', ''&STATUS_ID.'');javascript:$s(''P85_RAD_ACC_DML_STATUS'', ''DELETE'');'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(242054949680086532)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(242055044391086533)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(242055151886086534)
,p_name=>'SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRNO'
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
 p_id=>wwv_flow_imp.id(242055243381086535)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(242055336943086536)
,p_name=>'ACCESSORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Accessory '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.DESCRIPTION DISP_ACCESSORY, AC.ACCESSORY_ID',
'  FROM RADIATION.ACCESSORIES AC',
' WHERE AC.ACTIVE = ''Y''',
' ORDER BY AC.DESCRIPTION',
''))
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
 p_id=>wwv_flow_imp.id(242055485328086537)
,p_name=>'RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID)'
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
 p_id=>wwv_flow_imp.id(242055592882086538)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(242055660060086539)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
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
 p_id=>wwv_flow_imp.id(242055722367086540)
,p_name=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
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
 p_id=>wwv_flow_imp.id(242055836033086541)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(242054869586086531)
,p_internal_uid=>242054869586086531
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
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
,p_fixed_header_max_height=>230
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(243822331172140817)
,p_interactive_grid_id=>wwv_flow_imp.id(242054869586086531)
,p_static_id=>'973350'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(243822545576140817)
,p_report_id=>wwv_flow_imp.id(243822331172140817)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182291766336455587)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(179039485769362624)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(182294561179463060)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(179039538029362625)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243823030845140820)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(242054949680086532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243823976268140823)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(242055044391086533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243824874509140827)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(242055151886086534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243825788803140829)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(242055243381086535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243826631188140831)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(242055336943086536)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>249
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243827550698140834)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(242055485328086537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243828484218140837)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(242055592882086538)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243829394566140839)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(242055660060086539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243830258969140841)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(242055722367086540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243831181968140843)
,p_view_id=>wwv_flow_imp.id(243822545576140817)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(242055836033086541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179040308603362632)
,p_plug_name=>'Radiotherapy Accessory'
,p_region_name=>'radiationAccessorySub'
,p_parent_plug_id=>wwv_flow_imp.id(242054729177086530)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242057291151086555)
,p_plug_name=>'Control'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146547924642900020)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146545982491900019)
,p_button_sequence=>11
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Sign'
,p_button_static_id=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146546339833900020)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146546744383900020)
,p_button_sequence=>41
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Delete'
,p_button_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_confirm_message=>'<strong>Please confirm</strong> you want to delete the request?'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146547140917900020)
,p_button_sequence=>51
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146547503780900020)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
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
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146488008072899924)
,p_button_sequence=>211
,p_button_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_button_name=>'ChemoPrescription'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'<b>Chemo Prescription</b>'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146526098468900000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_button_name=>'SaveRadiationSite'
,p_button_static_id=>'saveradiationsite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146541917130900016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_button_name=>'SaveRadiationAccessory'
,p_button_static_id=>'saveradiationaccessory'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146525629499900000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_button_name=>'DeleteRadiationSite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Delete '
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146545173026900019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Cancel'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa fa-ban'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146545525550900019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(242057291151086555)
,p_button_name=>'Approve'
,p_button_static_id=>'approve'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa fa-thumbs-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146526453104900001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_button_name=>'ExitSite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(146541516731900016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_button_name=>'ExitRadAccessory'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149959536958195930)
,p_name=>'P85_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149959636257195931)
,p_name=>'P85_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_format_mask=>'DD-MON-RR HH24:MI'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(149959711761195932)
,p_name=>'P85_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149959829269195933)
,p_name=>'P85_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(149959887455195934)
,p_name=>'P85_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(149960033475195935)
,p_name=>'P85_DISP_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Sex:</p></b>'
,p_source=>'DISP_SEX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(149960091218195936)
,p_name=>'P85_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>231
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149960167195195937)
,p_name=>'P85_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>241
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149960301525195938)
,p_name=>'P85_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.NAME FULL_NAME,  DD.DOCTOR_ID',
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
,p_cMaxlength=>7
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
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
 p_id=>wwv_flow_imp.id(149960447320195939)
,p_name=>'P85_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>251
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149960545656195940)
,p_name=>'P85_TREATMENT_INTENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'TREATMENT_INTENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TI.DESCRIPTION, TI.TREATMENT_INTENT_ID',
'  FROM RADIATION.TREATMENT_INTENT TI',
' WHERE TI.ACTIVE = ''Y''',
' ORDER BY TI.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
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
 p_id=>wwv_flow_imp.id(149960617159195941)
,p_name=>'P85_DISP_TREATMENT_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>261
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'DISP_TREATMENT_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149960667021195942)
,p_name=>'P85_ICDNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Diagnosis:</p></b>'
,p_source=>'ICDNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.ICDNO || '' - '' || I.LONG_DESC, I.ICDNO',
'  FROM DEFINITIONS.ICD I',
' WHERE I.ICDNO BETWEEN ''C00'' AND ''D49.99''',
'   AND I.ICD_CHAPTER_ID = ''002''',
'   AND I.ACTIVE = ''Y''',
'   AND I.LONG_DESC IS NOT NULL',
' ORDER BY I.LONG_DESC',
''))
,p_lov_display_null=>'YES'
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149960796162195943)
,p_name=>'P85_DISP_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>321
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'DISP_DIAGNOSIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149960894392195944)
,p_name=>'P85_STATUS_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>271
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'STATUS_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961057198195945)
,p_name=>'P85_SIGN_BY_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>291
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'SIGN_BY_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961144165195946)
,p_name=>'P85_REQUEST_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Entered By:</p></b>'
,p_source=>'REQUEST_ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961217367195947)
,p_name=>'P85_ENTERED_BY_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>281
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'ENTERED_BY_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961335114195948)
,p_name=>'P85_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Anesthesia</p></b>'
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961430926195949)
,p_name=>'P85_CHEMOTHERAPY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Concurrent Chemotherapy</p></b>'
,p_source=>'CHEMOTHERAPY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961518791195950)
,p_name=>'P85_CHEMOTHERAPY_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Chemotherapy Remarks:</p></b>'
,p_source=>'CHEMOTHERAPY_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961645446195951)
,p_name=>'P85_SIMULATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>221
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Radiation Start Date:</p></b>'
,p_source=>'SIMULATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961754670195952)
,p_name=>'P85_STATUS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_source=>'STATUS_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961872846195954)
,p_name=>'P85_SIGN_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'<b><p style="color:#00008B">Sign By:</p></b>'
,p_source=>'SIGN_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149961972040195955)
,p_name=>'P85_ACTIVE_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>301
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'ACTIVE_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149962066352195956)
,p_name=>'P85_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>311
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150001325918196038)
,p_name=>'P85_RAD_DETAIL_STATUS_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150318442741932025)
,p_name=>'P85_RAD_ACC_DML_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150318607658932026)
,p_name=>'P85_RAD_ACC_SITE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150332957753932149)
,p_name=>'P85_TXT_URL'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150333345403932153)
,p_name=>'P85_SIGN_STATUS'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154135058429788831)
,p_name=>'P85_RAD_DETAIL_SITE_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>' <b><p style="color:#00008B">Site Status:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(176472809496068011)
,p_name=>'P85_RAD_DETAIL_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176472920871068012)
,p_name=>'P85_RAD_DETAIL_SITE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RS.DESCRIPTION, RS.SITE_ID ID',
'  FROM RADIATION.SITE RS',
' WHERE RS.ACTIVE = ''Y''',
' ORDER BY RS.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473064551068013)
,p_name=>'P85_RAD_DETAIL_PLANNING_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Planning Technique:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, PLANNING_ID',
'  FROM RADIATION.PLANNING T',
' WHERE ACTIVE = ''Y''',
'   AND T.RADIOTHERAPY_TYPE = ''T''',
'   /*AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP_PLANNING D, RADIATION.DEF_SETUP S',
'         WHERE D.PLANNING_ID = T.PLANNING_ID',
'           AND S.SETUP_ID = D.SETUP_ID',
'           AND (D.ACTIVE = ''Y'' AND S.ACTIVE = ''Y'')',
'           AND EXISTS',
'         (SELECT 1',
'                  FROM RADIATION.RADIATION_MASTER M',
'                 WHERE M.RADIATION_NO = :P85_RAD_DETAIL_RADIATION_NO',
'                   AND S.DOCTOR_ID = M.DOCTOR_ID))*/',
' ORDER BY DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473113834068014)
,p_name=>'P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Treatment Type:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION,T.TREATMENT_TYPE',
'FROM RADIATION.TREATMENT_TYPE T',
'WHERE T.ACTIVE = ''Y''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473201493068015)
,p_name=>'P85_RAD_DETAIL_P1_DOSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Phase 1 Dose(cGy):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473368053068016)
,p_name=>'P85_RAD_DETAIL_P1_FRACTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Phase 1 Fraction(s):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473526834068018)
,p_name=>'P85_RAD_DETAIL_P2_DOSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Phase 2 Dose(cGy):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473696374068019)
,p_name=>'P85_RAD_DETAIL_P2_FRACTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Phase 2 Fraction(s):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176473733868068020)
,p_name=>'P85_RAD_DETAIL_P3_DOSE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Phase 3 Dose(cGy):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474068002068023)
,p_name=>'P85_RAD_DETAIL_P3_FRACTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Phase 3 Fraction(s):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474160369068024)
,p_name=>'P85_RAD_DETAIL_TOT_DOSE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Total Dose (cGy):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474217972068025)
,p_name=>'P85_RAD_TREATMENT_LATER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Treatment Later:</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474299513068026)
,p_name=>'P85_RAD_ACTIVE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Active:</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474447790068027)
,p_name=>'P85_RAD_DETAIL_EVENT_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Current Event:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(176474620779068029)
,p_name=>'P85_RAD_DETAIL_SIM_CT_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Simulation/CT:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_SIM_CT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SC.SIM_CT_ID,',
'       SC.DESCRIPTION,',
'       DECODE(SC.CREATININE_REQUIRED, ''Y'', ''Yes'', ''No'') CREATININE_REQUIRED',
'  FROM RADIATION.SIMULATION_CT SC',
' WHERE SC.ACTIVE = ''Y''',
' ORDER BY SC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474739063068030)
,p_name=>'P85_RAD_DETAIL_SETUP_POSITION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Setup Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_SETUP_POSITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''S''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474861637068031)
,p_name=>'P85_RAD_DETAIL_ARM_POSITION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Arm Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION DESCRIPTION, P.POSITION_PREFIX ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''P''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176474905469068032)
,p_name=>'P85_RAD_DETAIL_NECK_POSITION'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Neck Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_NECK_POSITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION, P.POSITION_ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''N''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176475019121068033)
,p_name=>'P85_RAD_DETAIL_POSITION_INSTRUCTION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Positioning  Instructions:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176475155101068034)
,p_name=>'P85_RAD_DETAIL_PATH_REVIEWED'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176475249067068035)
,p_name=>'P85_RAD_DETAIL_RAD_REVIEWED'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(176475392333068036)
,p_name=>'P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Concurrent Brachytherapy</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176475483557068037)
,p_name=>'P85_RAD_DETAIL_ANAESTHESIA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176475545496068038)
,p_name=>'P85_RAD_DETAIL_CT_INSTRUCTIONS'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_prompt=>'<b><p style="color:#00008B">Patient Preparation Instructions:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176476482548068047)
,p_name=>'P85_RAD_DETAIL_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177231577869616540)
,p_name=>'P85_HISTORY_RADIATION_NO'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177234883738616573)
,p_name=>'P85_PARAM_SITE_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179078573783362710)
,p_name=>'P85_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179095295577362739)
,p_name=>'P85_RAD_ACC_ACCESSORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_prompt=>' <b><p style="color:#00008B">Accessory:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.DESCRIPTION, AC.ACCESSORY_ID',
'  FROM RADIATION.ACCESSORIES AC',
' WHERE AC.ACTIVE = ''Y''',
' ORDER BY AC.DESCRIPTION',
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
 p_id=>wwv_flow_imp.id(179095334647362740)
,p_name=>'P85_RAD_ACC_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_prompt=>' <b><p style="color:#00008B">Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179095495744362741)
,p_name=>'P85_RAD_ACC_RADIATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179095594485362742)
,p_name=>'P85_RAD_ACC_SRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179095644064362743)
,p_name=>'P85_RAD_ACC_PHASE_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179095748817362744)
,p_name=>'P85_RAD_ACC_STATUS_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(179040308603362632)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179107461481362840)
,p_name=>'P85_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179107530216362841)
,p_name=>'P85_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179110810495362873)
,p_name=>'P85_PARAM_RADIATION_NO'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184178073073170630)
,p_name=>'P85_SEURM_CREATININE_ALERT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(176433210249067920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184204047601170731)
,p_name=>'P85_PARAM_MRNO'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184355303386446254)
,p_name=>'P85_UNIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'Unit:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(184355424564446255)
,p_name=>'P85_SERVICE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>171
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'Service No:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(184355484715446256)
,p_name=>'P85_SERVICE_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'Service Status:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(184355582766446257)
,p_name=>'P85_RANK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>191
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'Rank:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(184355686151446258)
,p_name=>'P85_FORMATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>201
,p_item_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_item_source_plug_id=>wwv_flow_imp.id(149958252635195912)
,p_prompt=>'Formation:'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(184419569670446427)
,p_name=>'P85_USER_ROLE'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184420294488446434)
,p_name=>'P85_RADIATION_DETAIL_STATUS_ID'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184422412877446455)
,p_name=>'P85_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890011173058057)
,p_name=>'P85_RAD_DETAIL_SIM_CT_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>'<b><p style="color:#00008B">Simulation/CT:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_SIM_CT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SC.SIM_CT_ID,',
'       SC.DESCRIPTION,',
'       DECODE(SC.CREATININE_REQUIRED, ''Y'', ''Yes'', ''No'') CREATININE_REQUIRED',
'  FROM RADIATION.SIMULATION_CT SC',
' WHERE SC.ACTIVE = ''Y''',
' ORDER BY SC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890085523058058)
,p_name=>'P85_RAD_DETAIL_SETUP_POSITION_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>'<b><p style="color:#00008B">Simulation/CT:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_SETUP_POSITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''S''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890187433058059)
,p_name=>'P85_RAD_DETAIL_ARM_POSITION_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>'<b><p style="color:#00008B">Arm Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION DESCRIPTION, P.POSITION_PREFIX ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''P''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890365374058060)
,p_name=>'P85_RAD_DETAIL_NECK_POSITION_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>'<b><p style="color:#00008B">Neck Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'RAD_REQUEST_NECK_POSITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.POSITION_PREFIX, P.DESCRIPTION, P.POSITION_ID',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''N''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890526852058062)
,p_name=>'P85_RAD_DETAIL_POSITION_INSTRUCTION_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>'<b><p style="color:#00008B">Positioning  Instructions:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(194890596127058063)
,p_name=>'P85_RAD_DETAIL_PATH_REVIEWED_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890775307058064)
,p_name=>'P85_RAD_DETAIL_RAD_REVIEWED_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194890903815058066)
,p_name=>'P85_RAD_DETAIL_CT_INSTRUCTIONS_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(194825083752057846)
,p_prompt=>' <b><p style="color:#00008B">Patient Preparation Instructions:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(242124465381086763)
,p_name=>'P85_TOTAL_DOSE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249737229141833637)
,p_name=>'P85_MSG'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(252383871394721433)
,p_name=>'P85_SIGN_CANCEL'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(252386373557721458)
,p_name=>'P85_ALERT_TEXT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146561686002900129)
,p_name=>'SetRadiationDetailPK'
,p_event_sequence=>1
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(227595289754143533)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146562106737900129)
,p_event_id=>wwv_flow_imp.id(146561686002900129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//console.log(_.RAD_DETAIL); // Check if the RAD_DETAIL object exists',
'//console.log(_.RAD_DETAIL.RADIATION_NO, _.RAD_DETAIL.SITE_ID, _.RAD_DETAIL.STATUS_ID); // Check their values',
'',
'$s(''P85_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P85_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
'$s(''P85_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146563081499900130)
,p_name=>'PopulateRequestMaster'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146563572052900130)
,p_event_id=>wwv_flow_imp.id(146563081499900130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT RM.RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         PRIORITY,',
'         REMARKS,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         TREATMENT_INTENT_ID,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'         REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'         REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'         ANAESTHESIA,',
'         CHEMOTHERAPY,',
'         CHEMOTHERAPY_REMARKS,',
'         RM.SIMULATION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO) ACTIVE_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY,',
'         ROWID',
'    INTO :P85_RADIATION_NO,',
'         :P85_RADIATION_DATE,',
'         :P85_MRNO,',
'         :P85_PATIENT_NAME,',
'         :P85_DISP_AGE,',
'         :P85_DISP_SEX,',
'         :P85_PRIORITY,',
'         :P85_REMARKS,',
'         :P85_DOCTOR_ID,',
'         :P85_DISP_DOCTOR,',
'         :P85_TREATMENT_INTENT_ID,',
'         :P85_DISP_TREATMENT_INTENT,',
'         :P85_ICDNO,',
'         :P85_DISP_DIAGNOSIS,',
'         :P85_STATUS_REQUEST,',
'         :P85_SIGN_BY_REQUEST,',
'         :P85_REQUEST_ENTERED_BY,',
'         :P85_ENTERED_BY_MRNO,',
'         :P85_ANAESTHESIA,',
'         :P85_CHEMOTHERAPY,',
'         :P85_CHEMOTHERAPY_REMARKS,',
'         :P85_SIMULATION_DATE,',
'         :P85_STATUS_DESC,',
'         :P85_ACTIVE_REQUEST,',
'         :P85_SIGN_BY,',
'         :P85_ROWID',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P85_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P85_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P85_MRNO IS NOT NULL THEN',
'            ''%'' || :P85_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''T''',
'   ORDER BY RM.RADIATION_DATE;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P85_PARAM_RADIATION_NO,P85_MRNO'
,p_attribute_03=>'P85_RADIATION_NO,P85_RADIATION_DATE,P85_MRNO,P85_PATIENT_NAME,P85_DISP_AGE,P85_DISP_SEX,P85_PRIORITY,P85_REMARKS,P85_DOCTOR_ID,P85_DISP_DOCTOR,P85_TREATMENT_INTENT_ID,P85_DISP_TREATMENT_INTENT,P85_ICDNO,P85_DISP_DIAGNOSIS,P85_STATUS_REQUEST,P85_SIGN_'
||'BY_REQUEST,P85_REQUEST_ENTERED_BY,P85_ENTERED_BY_MRNO,P85_ANAESTHESIA,P85_CHEMOTHERAPY,P85_CHEMOTHERAPY_REMARKS,P85_SIMULATION_DATE,P85_STATUS_DESC,P85_ACTIVE_REQUEST,P85_SIGN_BY,P85_ROWID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146564033517900130)
,p_event_id=>wwv_flow_imp.id(146563081499900130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176432677102067914)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146564565850900131)
,p_event_id=>wwv_flow_imp.id(146563081499900130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(227595289754143533)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146564909706900132)
,p_name=>'ClearValues'
,p_event_sequence=>2
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146565445907900132)
,p_event_id=>wwv_flow_imp.id(146564909706900132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_DML_STATUS,P85_TXT_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146565855012900132)
,p_name=>'EnableDisableRADDetail'
,p_event_sequence=>2
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(227595289754143533)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146566359379900132)
,p_event_id=>wwv_flow_imp.id(146565855012900132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P85_STATUS_REQUEST") === "015") || ($v("P85_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P85_DOCTOR_ID").disable();',
'    apex.item("P85_TREATMENT_INTENT_ID").disable();',
'    apex.item("P85_ICDNO").disable();',
'    apex.item("P85_CHEMOTHERAPY").disable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P85_ANAESTHESIA").disable();',
'    apex.item("P85_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P85_DOCTOR_ID").enable();',
'    apex.item("P85_TREATMENT_INTENT_ID").enable();',
'    apex.item("P85_ICDNO").enable();',
'    apex.item("P85_CHEMOTHERAPY").enable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P85_ANAESTHESIA").enable();',
'    apex.item("P85_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P85_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P85_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P85_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P85_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'else {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'apex.item("P85_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P85_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P85_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P85_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P85_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P85_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P85_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P85_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P85_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146566799058900133)
,p_name=>'EnableDisableRADDetailClick'
,p_event_sequence=>3
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(227595289754143533)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146567252100900133)
,p_event_id=>wwv_flow_imp.id(146566799058900133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P85_STATUS_REQUEST") === "015") || ($v("P85_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P85_DOCTOR_ID").disable();',
'    apex.item("P85_TREATMENT_INTENT_ID").disable();',
'    apex.item("P85_ICDNO").disable();',
'    apex.item("P85_CHEMOTHERAPY").disable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P85_ANAESTHESIA").disable();',
'    apex.item("P85_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P85_DOCTOR_ID").enable();',
'    apex.item("P85_TREATMENT_INTENT_ID").enable();',
'    apex.item("P85_ICDNO").enable();',
'    apex.item("P85_CHEMOTHERAPY").enable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P85_ANAESTHESIA").enable();',
'    apex.item("P85_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P85_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P85_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P85_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P85_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'else {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'apex.item("P85_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P85_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P85_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P85_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P85_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P85_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P85_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P85_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P85_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146567631258900133)
,p_name=>'RefreshAccessoryRegion'
,p_event_sequence=>4
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(227595289754143533)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146568116421900133)
,p_event_id=>wwv_flow_imp.id(146567631258900133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242054729177086530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146568550589900133)
,p_name=>'SetSingleRecordFields'
,p_event_sequence=>5
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(227595289754143533)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146569005326900134)
,p_event_id=>wwv_flow_imp.id(146568550589900133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P85_RAD_DETAIL_SIM_CT_ID_1'', _.RAD_DETAIL.SIM_CT_ID);',
'$s(''P85_RAD_DETAIL_SETUP_POSITION_1'', _.RAD_DETAIL.SETUP_POSITION);',
'$s(''P85_RAD_DETAIL_ARM_POSITION_1'', _.RAD_DETAIL.ARM_POSITION);',
'$s(''P85_RAD_DETAIL_NECK_POSITION_1'', _.RAD_DETAIL.NECK_POSITION);',
'$s(''P85_RAD_DETAIL_POSITION_INSTRUCTION_1'', _.RAD_DETAIL.POSITION_INSTRUCTION);',
'$s(''P85_RAD_DETAIL_PATH_REVIEWED_1'', _.RAD_DETAIL.PATH_REVIEWED);',
'$s(''P85_RAD_DETAIL_RAD_REVIEWED_1'', _.RAD_DETAIL.RAD_REVIEWED);',
'$s(''P85_RAD_DETAIL_CT_INSTRUCTIONS_1'', _.RAD_DETAIL.CT_INSTRUCTIONS);',
'$s(''P85_RAD_DETAIL_SITE_STATUS'', _.RAD_DETAIL.STATUS);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146569413177900134)
,p_name=>'ExportReport'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146547924642900020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(146569903135900134)
,p_event_id=>wwv_flow_imp.id(146569413177900134)
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
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146570448668900134)
,p_event_id=>wwv_flow_imp.id(146569413177900134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "P_RADIATION_NO": $v("P85_RADIATION_NO"),',
'    "P_LOCATION_ID": $v("GV_PHYSICAL_LOCATION_ID")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00001'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146570812137900134)
,p_name=>'CloseDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146547503780900020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146571351393900135)
,p_event_id=>wwv_flow_imp.id(146570812137900134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146571777889900135)
,p_name=>'SaveRadiationSite'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146526098468900000)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146572236797900135)
,p_event_id=>wwv_flow_imp.id(146571777889900135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P85_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "015" && $v("P85_RAD_DETAIL_DML_STATUS") == ''UPDATE'')) {',
'    apex.message.alert("Site is signed, cannot proceed");',
'    return;',
'}',
'if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "009" && $v("P85_RAD_DETAIL_DML_STATUS") == ''UPDATE'')) {',
'    apex.message.alert("Site is cancelled, cannot proceed");',
'    return;',
'}',
'if ($v("P85_RAD_DETAIL_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationDetail");',
'}',
'else if ($v("P85_RAD_DETAIL_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationDetail");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146572605087900135)
,p_name=>'ExitSiteRegion'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146526453104900001)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146573180781900135)
,p_event_id=>wwv_flow_imp.id(146572605087900135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radiationsite'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146573529584900136)
,p_name=>'SetHistoryRadiationNo'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setradno'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146574058056900136)
,p_event_id=>wwv_flow_imp.id(146573529584900136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_HISTORY_RADIATION_NO'
,p_attribute_01=>'this.triggeringElement.dataset[''radno'']'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146574437798900136)
,p_name=>'SetMRNO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146574903131900136)
,p_event_id=>wwv_flow_imp.id(146574437798900136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'  L_MRNO       VARCHAR2(14);',
'BEGIN',
'  IF :P85_MRNO IS NOT NULL THEN',
'    BEGIN',
'      -- CALL THE PROCEDURE',
'      HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                   P_DISP_MRNO  => :P85_MRNO,',
'                   P_MRNO       => :P85_MRNO,',
'                   P_ALERT_TEXT => L_ALERT_TEXT,',
'                   P_STOP       => L_STOP);',
'    ',
'      IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => L_ALERT_TEXT,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      END IF;',
'    END;',
'  END IF;',
'',
'  IF :P85_MRNO IS NOT NULL AND :P85_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION',
'        INTO :P85_PATIENT_NAME, :P85_DISP_AGE, :P85_DISP_SEX',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P85_MRNO',
'         AND RP.SEX_ID = DS.SEX_ID;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Patient is not registered'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    END;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P85_MRNO'
,p_attribute_03=>'P85_MRNO,P85_PATIENT_NAME,P85_DISP_AGE,P85_DISP_SEX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146575378298900136)
,p_name=>'SetHistoryRadiationNo1'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(176437319245067961)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146575850536900136)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146576330309900137)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P85_HISTORY_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146576829403900137)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_ACC_RADIATION_NO,P85_RADIATION_DATE,P85_MRNO,P85_PATIENT_NAME,P85_DISP_AGE,P85_DISP_SEX,P85_PRIORITY,P85_RAD_ACC_REMARKS,P85_DOCTOR_ID,P85_DISP_DOCTOR,P85_TREATMENT_INTENT_ID,P85_DISP_TREATMENT_INTENT,P85_ICDNO,P85_DISP_DIAGNOSIS,P85_SIGN_BY_'
||'REQUEST,P85_REQUEST_ENTERED_BY,P85_ENTERED_BY_MRNO,P85_ANAESTHESIA,P85_CHEMOTHERAPY,P85_CHEMOTHERAPY_REMARKS,P85_SIMULATION_DATE,P85_STATUS_DESC,P85_ACTIVE_REQUEST,P85_SIGN_BY,P85_STATUS_REQUEST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146577323567900137)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RM.RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         PRIORITY,',
'         REMARKS,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         TREATMENT_INTENT_ID,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'         REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'         REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'         ANAESTHESIA,',
'         CHEMOTHERAPY,',
'         CHEMOTHERAPY_REMARKS,',
'         RM.SIMULATION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY',
'    INTO :P85_RADIATION_NO,',
'         :P85_RADIATION_DATE,',
'         :P85_MRNO,',
'         :P85_PATIENT_NAME,',
'         :P85_DISP_AGE,',
'         :P85_DISP_SEX,',
'         :P85_PRIORITY,',
'         :P85_REMARKS,',
'         :P85_DOCTOR_ID,',
'         :P85_DISP_DOCTOR,',
'         :P85_TREATMENT_INTENT_ID,',
'         :P85_DISP_TREATMENT_INTENT,',
'         :P85_ICDNO,',
'         :P85_DISP_DIAGNOSIS,',
'         :P85_STATUS_REQUEST,',
'         :P85_SIGN_BY_REQUEST,',
'         :P85_REQUEST_ENTERED_BY,',
'         :P85_ENTERED_BY_MRNO,',
'         :P85_ANAESTHESIA,',
'         :P85_CHEMOTHERAPY,',
'         :P85_CHEMOTHERAPY_REMARKS,',
'         :P85_SIMULATION_DATE,',
'         :P85_STATUS_DESC,',
'         :P85_ACTIVE_REQUEST,',
'         :P85_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P85_HISTORY_RADIATION_NO;',
'     /*AND RM.MRNO LIKE CASE',
'           WHEN :P85_MRNO IS NOT NULL THEN',
'            ''%'' || :P85_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''T'';*/',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P85_HISTORY_RADIATION_NO,P85_MRNO'
,p_attribute_03=>'P85_RAD_ACC_RADIATION_NO,P85_RADIATION_DATE,P85_MRNO,P85_PATIENT_NAME,P85_DISP_AGE,P85_DISP_SEX,P85_PRIORITY,P85_RAD_ACC_REMARKS,P85_DOCTOR_ID,P85_DISP_DOCTOR,P85_TREATMENT_INTENT_ID,P85_DISP_TREATMENT_INTENT,P85_ICDNO,P85_DISP_DIAGNOSIS,P85_SIGN_BY_'
||'REQUEST,P85_REQUEST_ENTERED_BY,P85_ENTERED_BY_MRNO,P85_ANAESTHESIA,P85_CHEMOTHERAPY,P85_CHEMOTHERAPY_REMARKS,P85_SIMULATION_DATE,P85_STATUS_DESC,P85_ACTIVE_REQUEST,P85_SIGN_BY,P85_RADIATION_NO,P85_STATUS_REQUEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146577895991900137)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176432677102067914)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146578313936900138)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("refreshImage");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146578809492900138)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(227595289754143533)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146579330997900138)
,p_event_id=>wwv_flow_imp.id(146575378298900136)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P85_STATUS_REQUEST") === "015") || ($v("P85_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P85_DOCTOR_ID").disable();',
'    apex.item("P85_TREATMENT_INTENT_ID").disable();',
'    apex.item("P85_ICDNO").disable();',
'    apex.item("P85_CHEMOTHERAPY").disable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P85_ANAESTHESIA").disable();',
'    apex.item("P85_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P85_DOCTOR_ID").enable();',
'    apex.item("P85_TREATMENT_INTENT_ID").enable();',
'    apex.item("P85_ICDNO").enable();',
'    apex.item("P85_CHEMOTHERAPY").enable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P85_ANAESTHESIA").enable();',
'    apex.item("P85_SIMULATION_DATE").enable();',
'',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146579770430900138)
,p_name=>'RefreshImage'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'refreshImage'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146580266156900139)
,p_event_id=>wwv_flow_imp.id(146579770430900138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//////////////////////////////////////////////////////',
'',
'',
'var canvas = document.getElementById(''canvas'');',
'var context = canvas.getContext(''2d'');',
'',
'canvas.style.display = ''inline-block'';',
'',
'apex.server.process (''GetImage''',
'    ,{',
'          x01: apex.item("P85_MRNO").getValue()',
'    }',
'    ,{ dataType : ''json''',
'    //, async : false',
'    , success : function(pData)',
'        {',
'            const context = canvas.getContext(''2d'');',
'            context.clearRect(0, 0, canvas.width, canvas.height);',
'',
'            var image = new Image();',
'            image.onload = function() {',
'                context.fillStyle = "#000";',
'                context.fillRect(0,0,canvas.width,canvas.height);  ',
'                 context.drawImage(image,   0, 0, image.width,    image.height,     // source rectangle',
'                                            0, 0, canvas.width, canvas.height); // destination rectangle',
'               };',
'',
'               image.src = ''data:image/png;base64,'' +pData.photobase64;',
'         }',
'',
'    }',
'',
'    ).done( function(pData)',
'        {            ',
'            //alert(''Employee No ''+ pData.photobase64);            ',
'        }',
'    );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146580671258900139)
,p_name=>'DeleteRadiationSite'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146525629499900000)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146581155396900139)
,p_event_id=>wwv_flow_imp.id(146580671258900139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.confirm(''Please confirm you want to delete Radiotheraphy Site?'', function (isOk) {',
'    if (isOk) {',
'        apex.server.process("ProcessRadiationDetail",',
'            {',
'',
'                pageItems: ["P85_RAD_DETAIL_RADIATION_NO",',
'                    "P85_RAD_DETAIL_ROW_ID",',
'                    "P85_RAD_DETAIL_SITE_ID",',
'                    "P85_RAD_DETAIL_PLANNING_ID",',
'                    "P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'                    "P85_RAD_DETAIL_P1_DOSE",',
'                    "P85_RAD_DETAIL_P1_FRACTION",',
'                    "P85_RAD_DETAIL_P2_DOSE",',
'                    "P85_RAD_DETAIL_P2_FRACTION",',
'                    "P85_RAD_DETAIL_P3_DOSE",',
'                    "P85_RAD_DETAIL_P3_FRACTION",',
'                    "P85_RAD_DETAIL_TOT_DOSE",',
'                    "P85_RAD_TREATMENT_LATER",',
'                    "P85_RAD_ACTIVE",',
'                    "P85_RAD_DETAIL_EVENT_DESC",',
'                    "P85_RAD_DETAIL_SIM_CT_ID",',
'                    "P85_RAD_DETAIL_SETUP_POSITION",',
'                    "P85_RAD_DETAIL_ARM_POSITION",',
'                    "P85_RAD_DETAIL_NECK_POSITION",',
'                    "P85_RAD_DETAIL_POSITION_INSTRUCTION",',
'                    "P85_RAD_DETAIL_ANAESTHESIA",',
'                    "P85_RAD_DETAIL_PATH_REVIEWED",',
'                    "P85_RAD_DETAIL_RAD_REVIEWED",',
'                    "P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'                    "P85_RAD_DETAIL_CT_INSTRUCTIONS"',
'                ],',
'',
'                x01: ''DELETE''',
'',
'            },',
'            {',
'                dataType: ''text'',',
'                success: function (data) {',
'',
'                    var obj = JSON.parse(data);',
'                    console.log(data);',
'                    console.log(obj);',
'                    if (obj.status == "success") {',
'',
'',
'',
'                        apex.message.alert(obj.response, function () {',
'                        }, {',
'                            title: "Delete",',
'                            style: "danger",',
'                            iconClasses: "fa fa-trash-o fa-2x",',
'                            okLabel: "Ok"',
'                        });',
'                        apex.region(''RAD_DETAIL'').refresh();',
'                        apex.theme.closeRegion(''radiationsite'');',
'',
'                    }',
'                    else {',
'                        apex.message.alert(obj.response, function () {',
'                            //afterLoad();',
'                        }, {',
'                            title: "Error",',
'                            style: "danger",',
'                            iconClasses: "fa fa-warning fa-2x",',
'                            okLabel: "Ok"',
'                        });',
'',
'                    }',
'                }',
'            });',
'',
'    }',
'})',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146581586748900139)
,p_name=>'insertRadiationDetail'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'insertRadiationDetail'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146582050439900140)
,p_event_id=>wwv_flow_imp.id(146581586748900139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P85_RAD_DETAIL_RADIATION_NO",',
'            "P85_RAD_DETAIL_ROW_ID",',
'            "P85_RAD_DETAIL_SITE_ID",',
'            "P85_RAD_DETAIL_PLANNING_ID",',
'            "P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'            "P85_RAD_DETAIL_P1_DOSE",',
'            "P85_RAD_DETAIL_P1_FRACTION",',
'            "P85_RAD_DETAIL_P2_DOSE",',
'            "P85_RAD_DETAIL_P2_FRACTION",',
'            "P85_RAD_DETAIL_P3_DOSE",',
'            "P85_RAD_DETAIL_P3_FRACTION",',
'            "P85_RAD_DETAIL_TOT_DOSE",',
'            "P85_RAD_TREATMENT_LATER",',
'            "P85_RAD_ACTIVE",',
'            "P85_RAD_DETAIL_EVENT_DESC",',
'            "P85_RAD_DETAIL_SIM_CT_ID",',
'            "P85_RAD_DETAIL_SETUP_POSITION",',
'            "P85_RAD_DETAIL_ARM_POSITION",',
'            "P85_RAD_DETAIL_NECK_POSITION",',
'            "P85_RAD_DETAIL_POSITION_INSTRUCTION",',
'            "P85_RAD_DETAIL_ANAESTHESIA",',
'            "P85_RAD_DETAIL_PATH_REVIEWED",',
'            "P85_RAD_DETAIL_RAD_REVIEWED",',
'            "P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'            "P85_RAD_DETAIL_CT_INSTRUCTIONS"',
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
'                apex.region(''RAD_DETAIL'').refresh();',
'                apex.theme.closeRegion(''radiationsite'');',
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
 p_id=>wwv_flow_imp.id(146582493146900140)
,p_name=>'insertRadiationAccessory'
,p_event_sequence=>190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'insertRadiationAccessory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146582948581900140)
,p_event_id=>wwv_flow_imp.id(146582493146900140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P85_RAD_ACC_ACCESSORY_ID",',
'            "P85_RAD_ACC_REMARKS",',
'            "P85_RAD_ACC_RADIATION_NO",',
'            "P85_RAD_DETAIL_PLANNING_ID",',
'            "P85_RAD_ACC_SITE_ID",',
'            "P85_RAD_ACC_SRNO",',
'            "P85_RAD_ACC_PHASE_NO",',
'            "P85_RAD_ACC_STATUS_ID"',
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
'                apex.region(''radiationAccessory'').refresh();',
'                apex.theme.closeRegion(''radiationAccessorySub'');',
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
 p_id=>wwv_flow_imp.id(146583332010900140)
,p_name=>'updateRadiationAccessory'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateRadiationAccessory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146583855955900141)
,p_event_id=>wwv_flow_imp.id(146583332010900140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P85_RAD_ACC_ACCESSORY_ID",',
'            "P85_RAD_ACC_REMARKS",',
'            "P85_RAD_ACC_RADIATION_NO",',
'            "P85_RAD_DETAIL_PLANNING_ID",',
'            "P85_RAD_ACC_SITE_ID",',
'            "P85_RAD_ACC_SRNO",',
'            "P85_RAD_ACC_PHASE_NO",',
'            "P85_RAD_ACC_STATUS_ID"',
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
'                apex.region(''radiationAccessory'').refresh();',
'                apex.theme.closeRegion(''radiationAccessorySub'');',
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
 p_id=>wwv_flow_imp.id(146584295331900141)
,p_name=>'updateRadiationDetail'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateRadiationDetail'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146584717799900142)
,p_event_id=>wwv_flow_imp.id(146584295331900141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P85_RAD_DETAIL_RADIATION_NO",',
'            "P85_RAD_DETAIL_ROW_ID",',
'            "P85_RAD_DETAIL_SITE_ID",',
'            "P85_RAD_DETAIL_PLANNING_ID",',
'            "P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'            "P85_RAD_DETAIL_P1_DOSE",',
'            "P85_RAD_DETAIL_P1_FRACTION",',
'            "P85_RAD_DETAIL_P2_DOSE",',
'            "P85_RAD_DETAIL_P2_FRACTION",',
'            "P85_RAD_DETAIL_P3_DOSE",',
'            "P85_RAD_DETAIL_P3_FRACTION",',
'            "P85_RAD_DETAIL_TOT_DOSE",',
'            "P85_RAD_TREATMENT_LATER",',
'            "P85_RAD_ACTIVE",',
'            "P85_RAD_DETAIL_EVENT_DESC",',
'            "P85_RAD_DETAIL_SIM_CT_ID",',
'            "P85_RAD_DETAIL_SETUP_POSITION",',
'            "P85_RAD_DETAIL_ARM_POSITION",',
'            "P85_RAD_DETAIL_NECK_POSITION",',
'            "P85_RAD_DETAIL_POSITION_INSTRUCTION",',
'            "P85_RAD_DETAIL_ANAESTHESIA",',
'            "P85_RAD_DETAIL_PATH_REVIEWED",',
'            "P85_RAD_DETAIL_RAD_REVIEWED",',
'            "P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'            "P85_RAD_DETAIL_CT_INSTRUCTIONS"',
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
'                apex.region(''RAD_DETAIL'').refresh();',
'                apex.theme.closeRegion(''radiationsite'');',
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
 p_id=>wwv_flow_imp.id(146585152028900142)
,p_name=>'SaveradiationAccessory'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146541917130900016)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146585635970900142)
,p_event_id=>wwv_flow_imp.id(146585152028900142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P85_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") {',
'    apex.message.alert("Site is signed, cannot proceed");',
'    return;',
'}',
'if ($v("P85_RADIATION_DETAIL_STATUS_ID") === "009") {',
'    apex.message.alert("Site is cancelled, cannot proceed");',
'    return;',
'}',
'',
'',
'if ($v("P85_RAD_ACC_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationAccessory");',
'}',
'else if ($v("P85_RAD_ACC_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationAccessory");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146586003622900142)
,p_name=>'Sign'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146545982491900019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(146586508407900143)
,p_event_id=>wwv_flow_imp.id(146586003622900142)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P85_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P85_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146587047948900143)
,p_event_id=>wwv_flow_imp.id(146586003622900142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_app     number := v(''APP_ID'');',
'  l_session number := v(''APP_SESSION'');',
'BEGIN',
'  :P85_SIGN_STATUS := ''S'';',
'  :P85_TXT_URL     := APEX_UTIL.PREPARE_URL(p_url           => ''f?p='' ||',
'                                                               l_app ||',
'                                                               '':43:'' ||',
'                                                               l_session ||',
'                                                               ''::NO::P43_DISP_MRNO,P43_SIGN_STATUS,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO:'' ||',
'                                                               :GV_USER_MRNO || '','' ||',
'                                                               :P85_SIGN_STATUS || '','' ||',
'                                                               :P85_RAD_DETAIL_ND_RADIATION_NO || '','' ||',
'                                                               :P85_RAD_DETAIL_ND_SITE_ID|| '','' ||:P85_MRNO,',
'                                            p_checksum_type => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P85_SIGN_STATUS,P85_RAD_DETAIL_ND_RADIATION_NO,P85_RAD_DETAIL_ND_SITE_ID,P85_MRNO'
,p_attribute_03=>'P85_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146587517115900143)
,p_event_id=>wwv_flow_imp.id(146586003622900142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''url is''+$v(''P85_TXT_URL''));',
'apex.navigation.redirect($v(''P85_TXT_URL''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146587993908900143)
,p_name=>'Approve'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146545525550900019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146588417604900143)
,p_event_id=>wwv_flow_imp.id(146587993908900143)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P85_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P85_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146588990544900144)
,p_event_id=>wwv_flow_imp.id(146587993908900143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_app     number := v(''APP_ID'');',
'  l_session number := v(''APP_SESSION'');',
'BEGIN',
'  :P85_SIGN_STATUS := ''A'';',
'  :P85_TXT_URL     := APEX_UTIL.PREPARE_URL(p_url           => ''f?p='' ||',
'                                                               l_app ||',
'                                                               '':43:'' ||',
'                                                               l_session ||',
'                                                               ''::NO::P43_DISP_MRNO,P43_SIGN_STATUS,P43_RADIATION_NO,P43_SITE_ID:'' ||',
'                                                               :GV_USER_MRNO || '','' ||',
'                                                               :P85_SIGN_STATUS || '','' ||',
'                                                               :P85_RAD_DETAIL_ND_RADIATION_NO || '','' ||',
'                                                               :P85_RAD_DETAIL_ND_SITE_ID,',
'                                            p_checksum_type => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P85_SIGN_STATUS,P85_RAD_DETAIL_ND_RADIATION_NO,P85_RAD_DETAIL_ND_SITE_ID,P85_MRNO'
,p_attribute_03=>'P85_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146589322738900144)
,p_event_id=>wwv_flow_imp.id(146587993908900143)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P85_TXT_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146589735397900144)
,p_name=>'Cancel'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146545173026900019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146590216446900144)
,p_event_id=>wwv_flow_imp.id(146589735397900144)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P85_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P85_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146590751782900144)
,p_event_id=>wwv_flow_imp.id(146589735397900144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_app     number := v(''APP_ID'');',
'  l_session number := v(''APP_SESSION'');',
'BEGIN',
'  :P85_SIGN_STATUS := ''C'';',
'  :P85_TXT_URL     := APEX_UTIL.PREPARE_URL(p_url           => ''f?p='' ||',
'                                                               l_app ||',
'                                                               '':43:'' ||',
'                                                               l_session ||',
'                                                               ''::NO::P43_DISP_MRNO,P43_SIGN_STATUS,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO:'' ||',
'                                                               :GV_USER_MRNO || '','' ||',
'                                                               :P85_SIGN_STATUS || '','' ||',
'                                                               :P85_RAD_DETAIL_ND_RADIATION_NO || '','' ||',
'                                                               :P85_RAD_DETAIL_ND_SITE_ID|| '',''||:P85_MRNO,',
'                                            p_checksum_type => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P85_SIGN_STATUS,P85_RAD_DETAIL_ND_RADIATION_NO,P85_RAD_DETAIL_ND_SITE_ID,P85_MRNO'
,p_attribute_03=>'P85_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146591288648900145)
,p_event_id=>wwv_flow_imp.id(146589735397900144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P85_TXT_URL''));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146591612389900145)
,p_name=>'Clear'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146547140917900020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146592162204900145)
,p_event_id=>wwv_flow_imp.id(146591612389900145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(227595289754143533)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146592664260900145)
,p_event_id=>wwv_flow_imp.id(146591612389900145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(194825083752057846)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146593145273900145)
,p_event_id=>wwv_flow_imp.id(146591612389900145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242054729177086530)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146593637339900145)
,p_event_id=>wwv_flow_imp.id(146591612389900145)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RADIATION_NO,P85_RADIATION_DATE,P85_ICDNO,P85_TREATMENT_INTENT_ID,P85_SIMULATION_DATE,P85_DOCTOR_ID,P85_CHEMOTHERAPY,P85_CHEMOTHERAPY_REMARKS,P85_REQUEST_ENTERED_BY,P85_SIGN_BY_REQUEST,P85_STATUS_DESC,P85_PRIORITY,P85_REMARKS,P85_DISP_DOCTOR,P85_'
||'DISP_TREATMENT_INTENT,P85_STATUS_REQUEST,P85_ENTERED_BY_MRNO,P85_ANAESTHESIA,P85_SIGN_BY,P85_ACTIVE_REQUEST,P85_DISP_DIAGNOSIS,P85_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146594101369900146)
,p_event_id=>wwv_flow_imp.id(146591612389900145)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176437319245067961)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146594654460900146)
,p_event_id=>wwv_flow_imp.id(146591612389900145)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P85_STATUS_REQUEST") === "015") || ($v("P85_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P85_DOCTOR_ID").disable();',
'    apex.item("P85_TREATMENT_INTENT_ID").disable();',
'    apex.item("P85_ICDNO").disable();',
'    apex.item("P85_CHEMOTHERAPY").disable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P85_ANAESTHESIA").disable();',
'    apex.item("P85_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P85_DOCTOR_ID").enable();',
'    apex.item("P85_TREATMENT_INTENT_ID").enable();',
'    apex.item("P85_ICDNO").enable();',
'    apex.item("P85_CHEMOTHERAPY").enable();',
'    apex.item("P85_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P85_ANAESTHESIA").enable();',
'    apex.item("P85_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P85_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'',
'}',
'',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P85_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P85_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P85_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P85_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'else {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146595007489900146)
,p_name=>'ExitRadAccessory'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146541516731900016)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146595568230900147)
,p_event_id=>wwv_flow_imp.id(146595007489900146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radiationAccessorySub'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146595905334900147)
,p_name=>'SetTOTDose1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_P1_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146596408683900147)
,p_event_id=>wwv_flow_imp.id(146595905334900147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P85_RAD_DETAIL_P1_DOSE, 0) * NVL(:P85_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P2_DOSE, 0) * NVL(:P85_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P3_DOSE, 0) * NVL(:P85_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P85_RAD_DETAIL_P1_DOSE,P85_RAD_DETAIL_P1_FRACTION,P85_RAD_DETAIL_P2_DOSE,P85_RAD_DETAIL_P2_FRACTION,P85_RAD_DETAIL_P3_DOSE,P85_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146596889508900147)
,p_name=>'SetTOTDose2'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_P1_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146597336952900148)
,p_event_id=>wwv_flow_imp.id(146596889508900147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P85_RAD_DETAIL_P1_DOSE, 0) * NVL(:P85_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P2_DOSE, 0) * NVL(:P85_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P3_DOSE, 0) * NVL(:P85_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P85_RAD_DETAIL_P1_DOSE,P85_RAD_DETAIL_P1_FRACTION,P85_RAD_DETAIL_P2_DOSE,P85_RAD_DETAIL_P2_FRACTION,P85_RAD_DETAIL_P3_DOSE,P85_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146597768720900148)
,p_name=>'SetTOTDose3'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_P2_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146598282210900148)
,p_event_id=>wwv_flow_imp.id(146597768720900148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P85_RAD_DETAIL_P1_DOSE, 0) * NVL(:P85_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P2_DOSE, 0) * NVL(:P85_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P3_DOSE, 0) * NVL(:P85_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P85_RAD_DETAIL_P1_DOSE,P85_RAD_DETAIL_P1_FRACTION,P85_RAD_DETAIL_P2_DOSE,P85_RAD_DETAIL_P2_FRACTION,P85_RAD_DETAIL_P3_DOSE,P85_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146598660511900148)
,p_name=>'SetTOTDose4'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_P2_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146599116933900148)
,p_event_id=>wwv_flow_imp.id(146598660511900148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P85_RAD_DETAIL_P1_DOSE, 0) * NVL(:P85_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P2_DOSE, 0) * NVL(:P85_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P3_DOSE, 0) * NVL(:P85_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P85_RAD_DETAIL_P1_DOSE,P85_RAD_DETAIL_P1_FRACTION,P85_RAD_DETAIL_P2_DOSE,P85_RAD_DETAIL_P2_FRACTION,P85_RAD_DETAIL_P3_DOSE,P85_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146599584773900149)
,p_name=>'SetTOTDose5'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_P3_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146600058827900149)
,p_event_id=>wwv_flow_imp.id(146599584773900149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P85_RAD_DETAIL_P1_DOSE, 0) * NVL(:P85_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P2_DOSE, 0) * NVL(:P85_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P3_DOSE, 0) * NVL(:P85_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P85_RAD_DETAIL_P1_DOSE,P85_RAD_DETAIL_P1_FRACTION,P85_RAD_DETAIL_P2_DOSE,P85_RAD_DETAIL_P2_FRACTION,P85_RAD_DETAIL_P3_DOSE,P85_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146600419606900149)
,p_name=>'SetTOTDose6'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_P3_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146600954047900149)
,p_event_id=>wwv_flow_imp.id(146600419606900149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P85_RAD_DETAIL_P1_DOSE, 0) * NVL(:P85_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P2_DOSE, 0) * NVL(:P85_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P85_RAD_DETAIL_P3_DOSE, 0) * NVL(:P85_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P85_RAD_DETAIL_P1_DOSE,P85_RAD_DETAIL_P1_FRACTION,P85_RAD_DETAIL_P2_DOSE,P85_RAD_DETAIL_P2_FRACTION,P85_RAD_DETAIL_P3_DOSE,P85_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146601332220900149)
,p_name=>'SerumCreatinineRequired'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_SIM_CT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146601823425900149)
,p_event_id=>wwv_flow_imp.id(146601332220900149)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146602305005900150)
,p_event_id=>wwv_flow_imp.id(146601332220900149)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(100);',
'BEGIN',
'  L_ALERT_TEXT := NULL;',
'  L_STOP       := NULL;',
'  RADIATION.PKG_RADIATION.ORDER_SERUM_CRETININE(:P85_RAD_DETAIL_SIM_CT_ID,',
'                                                :GV_USER_MRNO,',
'                                                L_ALERT_TEXT,',
'                                                L_STOP);',
'',
'  IF L_STOP IS NOT NULL AND :P85_RAD_DETAIL_DML_STATUS = ''CREATE'' THEN',
'    :P85_SEURM_CREATININE_ALERT := L_ALERT_TEXT;',
'  ELSE',
'    :P85_SEURM_CREATININE_ALERT := NULL;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'  ',
'END;',
''))
,p_attribute_02=>'P85_RAD_DETAIL_SIM_CT_ID,P85_RAD_DETAIL_DML_STATUS'
,p_attribute_03=>'P85_SEURM_CREATININE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146602883083900150)
,p_event_id=>wwv_flow_imp.id(146601332220900149)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P85_SEURM_CREATININE_ALERT.'
,p_attribute_06=>'Ok'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P85_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146604171909900151)
,p_name=>'SetUserRole'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146604683044900151)
,p_event_id=>wwv_flow_imp.id(146604171909900151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P85_USER_ROLE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO);'
,p_attribute_07=>'GV_USER_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146605059270900151)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146605510942900151)
,p_event_id=>wwv_flow_imp.id(146605059270900151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P85_MRNO IS NOT NULL THEN',
'  ',
'    :P85_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P85_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P85_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P85_MRNO);',
'      :P85_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P85_MRNO);',
'      :P85_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P85_MRNO);',
'      :P85_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P85_MRNO);',
'      :P85_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P85_MRNO);',
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
,p_attribute_02=>'P85_MRNO'
,p_attribute_03=>'P85_SYSTEM_CONSTANT_ID_428,P85_SERVICE_NO,P85_SERVICE_STATUS,P85_RANK,P85_FORMATION,P85_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146606096492900152)
,p_event_id=>wwv_flow_imp.id(146605059270900151)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P85_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P85_SERVICE_NO").show();',
'    apex.item("P85_SERVICE_STATUS").show();',
'    apex.item("P85_RANK").show();',
'    apex.item("P85_FORMATION").show();',
'    apex.item("P85_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P85_SERVICE_NO").hide();',
'    apex.item("P85_SERVICE_STATUS").hide();',
'    apex.item("P85_RANK").hide();',
'    apex.item("P85_FORMATION").hide();',
'    apex.item("P85_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146606406100900152)
,p_name=>'RefreshRegion'
,p_event_sequence=>420
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146606957646900152)
,p_event_id=>wwv_flow_imp.id(146606406100900152)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176437319245067961)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146607429506900152)
,p_event_id=>wwv_flow_imp.id(146606406100900152)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(227595289754143533)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146607829326900152)
,p_name=>'New'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146545982491900019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146608354745900152)
,p_event_id=>wwv_flow_imp.id(146607829326900152)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'test'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146608776239900153)
,p_name=>'PopulateDemographicsData'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146609240936900153)
,p_event_id=>wwv_flow_imp.id(146608776239900153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P85_MRNO IS NOT NULL OR :P85_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION, TO_CHAR(SYSDATE, ''DD-MON-RR HH24:MI'')',
'        INTO :P85_PATIENT_NAME, :P85_DISP_AGE, :P85_DISP_SEX, :P85_RADIATION_DATE',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P85_MRNO',
'         AND RP.SEX_ID = DS.SEX_ID;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Patient is not registered'',',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'      WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                             P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    END;',
'  END IF;'))
,p_attribute_02=>'P85_MRNO'
,p_attribute_03=>'P85_PATIENT_NAME,P85_DISP_AGE,P85_DISP_SEX,P85_RADIATION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146610528437900153)
,p_name=>'Save'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(146546339833900020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146611004820900154)
,p_event_id=>wwv_flow_imp.id(146610528437900153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P85_RAD_DETAIL_PATH_REVIEWED_1").enable();',
'apex.item("P85_RAD_DETAIL_RAD_REVIEWED_1").enable();',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146611460468900154)
,p_name=>'New_1'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_ND_RADIATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146611958510900154)
,p_event_id=>wwv_flow_imp.id(146611460468900154)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242054729177086530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(146612374923900154)
,p_name=>'New_2'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RAD_DETAIL_ND_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>600
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(146612853176900154)
,p_event_id=>wwv_flow_imp.id(146612374923900154)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242054729177086530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169435273533156505)
,p_name=>'DARadiationNo'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_RADIATION_NO'
,p_bind_type=>'live'
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
 p_id=>wwv_flow_imp.id(169435347040156506)
,p_event_id=>wwv_flow_imp.id(169435273533156505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(227595289754143533)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146507040849899948)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(149958252635195912)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'ProcessDMLRadiationRequest'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RADIATION_MASTER_TAB RADIATION.PKG_S18FRM00128.RADIATION_MASTER_TAB;',
'  L_MRNO                 RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'BEGIN',
'',
'his.message_entry_category(P_MESSAGE => :APEX$ROW_STATUS, P_CATEGORY => ''RADREQUEST'');',
'',
'  IF :P85_MRNO IS NOT NULL THEN',
'    L_MRNO := :P85_MRNO;',
'  END IF;',
'',
'  IF :P85_RADIATION_NO IS NULL THEN',
'    :P85_RADIATION_NO := RADIATION.PKG_RADIATION.GENERATE_RADIATION_NO(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                        ''ORGANIZATION_ID''),',
'                                                                       P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                        ''LOCATION_ID''),',
'                                                                       P_REQUEST_DATE    => NVL(TO_DATE(:P85_RADIATION_DATE,',
'                                                                                                        ''DD-MON-YY HH24:MI''),',
'                                                                                                TO_DATE(SYSDATE,',
'                                                                                                        ''DD-MON-YY HH24:MI'')));',
'  ',
'    :P85_PARAM_MRNO := :P85_MRNO;',
'  END IF;',
'  ',
'  SELECT :P85_RADIATION_NO,',
'         NVL(TO_DATE(:P85_RADIATION_DATE, ''DD-MON-YY HH24:MI''),',
'             TO_DATE(SYSDATE, ''DD-MON-YY HH24:MI'')),',
'         :P85_MRNO,',
'         :P85_PATIENT_NAME,',
'         :P85_DISP_AGE,',
'         :P85_DISP_SEX,',
'         NVL(:P85_PRIORITY, ''S''),',
'         :P85_REMARKS,',
'         :P85_DOCTOR_ID,',
'         :P85_DISP_DOCTOR,',
'         :P85_TREATMENT_INTENT_ID,',
'         :P85_DISP_TREATMENT_INTENT,',
'         :P85_ICDNO,',
'         :P85_DISP_DIAGNOSIS,',
'         NVL(:P85_STATUS_REQUEST, ''020''),',
'         :P85_SIGN_BY_REQUEST,',
'         :P85_REQUEST_ENTERED_BY,',
'         :P85_ENTERED_BY_MRNO,',
'         NVL(:P85_ANAESTHESIA,''N''),',
'         NVL(:P85_CHEMOTHERAPY,''N''),',
'         :P85_CHEMOTHERAPY_REMARKS,',
'         :P85_SIMULATION_DATE,',
'         :P85_STATUS_DESC,',
'         :P85_ACTIVE_REQUEST,',
'         :P85_SIGN_BY',
'    BULK COLLECT',
'    INTO L_RADIATION_MASTER_TAB',
'    FROM DUAL;',
'',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      -----------',
'      -- Insert',
'      -----------',
'      BEGIN',
'        RADIATION.PKG_S18FRM00128.INSERT_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'      ',
'      END;',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        RADIATION.PKG_S18FRM00128.UPDATE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'      END;',
'    WHEN ''D'' THEN',
'    ',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        RADIATION.PKG_S18FRM00128.DELETE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'      END;',
'    ',
'  END CASE;',
'',
'  :P85_PARAM_RADIATION_NO := :P85_RADIATION_NO;',
'  :P85_MRNO               := L_MRNO;',
'',
'  IF :P85_ALERT_TEXT IS NOT NULL THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => :P85_ALERT_TEXT,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Radiation Request created / updated successfully '
,p_internal_uid=>146507040849899948
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(140712133790856643)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearSessionStateOnExit'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(146547503780900020)
,p_internal_uid=>140712133790856643
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168545329115880949)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(227595289754143533)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiotherapy Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>168545329115880949
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(169435780925156510)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(242054729177086530)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiation Accessory  - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>169435780925156510
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146559676791900125)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationMaster'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RM.RADIATION_NO,',
'         TO_CHAR(RADIATION_DATE,''DD-MON-RR HH24:MI''),',
'         MRNO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'         PRIORITY,',
'         REMARKS,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'         TREATMENT_INTENT_ID,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(RM.TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'         ICDNO,',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(RM.ICDNO) DISP_DIAGNOSIS,',
'         STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(REQUEST_ENTERED_BY) || '' ('' ||',
'         REQUEST_ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'         REQUEST_ENTERED_BY ENTERED_BY_MRNO,',
'         ANAESTHESIA,',
'         CHEMOTHERAPY,',
'         CHEMOTHERAPY_REMARKS,',
'         RM.SIMULATION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         RADIATION.PKG_REQUEST.IS_ACTIVE_REQUEST(P_RADIATION_NO => RM.RADIATION_NO),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY',
'    INTO :P85_RADIATION_NO,',
'         :P85_RADIATION_DATE,',
'         :P85_MRNO,',
'         :P85_PATIENT_NAME,',
'         :P85_DISP_AGE,',
'         :P85_DISP_SEX,',
'         :P85_PRIORITY,',
'         :P85_REMARKS,',
'         :P85_DOCTOR_ID,',
'         :P85_DISP_DOCTOR,',
'         :P85_TREATMENT_INTENT_ID,',
'         :P85_DISP_TREATMENT_INTENT,',
'         :P85_ICDNO,',
'         :P85_DISP_DIAGNOSIS,',
'         :P85_STATUS_REQUEST,',
'         :P85_SIGN_BY_REQUEST,',
'         :P85_REQUEST_ENTERED_BY,',
'         :P85_ENTERED_BY_MRNO,',
'         :P85_ANAESTHESIA,',
'         :P85_CHEMOTHERAPY,',
'         :P85_CHEMOTHERAPY_REMARKS,',
'         :P85_SIMULATION_DATE,',
'         :P85_STATUS_DESC,',
'         :P85_ACTIVE_REQUEST,',
'         :P85_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P85_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P85_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P85_MRNO IS NOT NULL THEN',
'            ''%'' || :P85_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''T''',
'   ORDER BY RM.RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>146559676791900125
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146560855663900128)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  P_BLOCK_DATA RADIATION.PKG_S18FRM00128.RAD_MASTER_DETAIL;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  BEGIN',
'    SELECT :P85_RAD_DETAIL_RADIATION_NO RADIATION_NO,',
'           :P85_RAD_DETAIL_SITE_ID SITE_ID,',
'           NULL DISP_SITE,',
'           :P85_RAD_DETAIL_SIM_CT_ID SIM_CT_ID,',
'           NULL DIPS_SIM_CT,',
'           :P85_RAD_DETAIL_TREATMENT_TECHNIQUE_ID TREATMENT_TECHNIQUE_ID,',
'           NULL DISP_TREATMENT_TECHNIQUE,',
'           (SELECT PLANNING_PREFIX',
'              FROM RADIATION.PLANNING',
'             WHERE PLANNING_ID = :P85_RAD_DETAIL_PLANNING_ID) PLANNING,',
'           :P85_RAD_DETAIL_PLANNING_ID PLANNING_ID,',
'           NULL DISP_PLANNING,',
'           :P85_RAD_DETAIL_NECK_POSITION NECK_POSITION,',
'           :P85_RAD_DETAIL_SETUP_POSITION SETUP_POSITION,',
'           :P85_RAD_DETAIL_ARM_POSITION ARM_POSITION,',
'           :P85_RAD_DETAIL_P1_DOSE P1_DOSE_FRACTION,',
'           :P85_RAD_DETAIL_P1_FRACTION P1_NO_OF_FRACTION,',
'           :P85_RAD_DETAIL_P2_DOSE P2_DOSE_FRACTION,',
'           :P85_RAD_DETAIL_P2_FRACTION P2_NO_OF_FRACTION,',
'           :P85_RAD_DETAIL_P3_DOSE P3_DOSE_FRACTION,',
'           :P85_RAD_DETAIL_P3_FRACTION P3_NO_OF_FRACTION,',
'           :P85_RAD_TREATMENT_LATER TREATMENT_LATER,',
'           :P85_RAD_ACTIVE ACTIVE,',
'           :P85_RAD_DETAIL_POSITION_INSTRUCTION POSITION_INSTRUCTION,',
'           NULL WFE_NO,',
'           NULL EVENT_DESC,',
'           :P85_RAD_DETAIL_CT_INSTRUCTIONS CT_INSTRUCTIONS,',
'           NULL SETUP_POSITION_DESC,',
'           NULL ARM_POSITION_DESC,',
'           NULL NECK_POSITION_DESC,',
'           :P85_RAD_DETAIL_STATUS_ID STATUS_ID,',
'           NULL STATUS_DESC,',
'           :P85_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY CONCURRENT_BRACHYTHERAPHY,',
'           :P85_RAD_DETAIL_PATH_REVIEWED PATH_REVIEWED,',
'           :P85_RAD_DETAIL_RAD_REVIEWED RAD_REVIEWED,',
'           NULL TREATMENT_TYPE,',
'           NULL TREATMENT_TYPE_DESC',
'      BULK COLLECT',
'      INTO P_BLOCK_DATA',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00128.INSERT_RADIATION_DETAIL(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'  ',
'    -- Update',
'    RADIATION.PKG_S18FRM00128.UPDATE_RADIATION_DETAIL(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00128.DELETE_RADIATION_DETAIL(P_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'', ''Radiotheraphy Site added successfully.'');',
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
,p_internal_uid=>146560855663900128
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146560454886900126)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationAccessory'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  P_BLOCK_DATA RADIATION.PKG_S18FRM00128.RAD_ACCESSORIES_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'  BEGIN',
'    SELECT :P85_RAD_ACC_RADIATION_NO,',
'           :P85_RAD_ACC_SITE_ID,',
'           :P85_RAD_ACC_SRNO,',
'           :P85_RAD_ACC_PHASE_NO,',
'           :P85_RAD_ACC_ACCESSORY_ID,',
'           NULL                      DISP_ACCESSORY,',
'           :P85_RAD_ACC_REMARKS,',
'           :P85_RAD_ACC_STATUS_ID,',
'           NULL                      STATUS_DESC',
'      BULK COLLECT',
'      INTO P_BLOCK_DATA',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00128.INSERT_RAD_ACCESSORIES(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'  ',
'    -- Update',
'    RADIATION.PKG_S18FRM00128.UPDATE_RAD_ACCESSORIES(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00128.DELETE_RAD_ACCESSORIES(P_BLOCK_DATA);',
'  END IF;',
'',
'  IF L_STATUS IN (''UPDATE'', ''CREATE'') THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', ''Accessory added/updated successfully.'');',
'    APEX_JSON.WRITE(''status'', ''success'');',
'    APEX_JSON.CLOSE_OBJECT;',
'  ELSE',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', ''Accessory deleted successfully.'');',
'    APEX_JSON.WRITE(''status'', ''success'');',
'    APEX_JSON.CLOSE_OBJECT;',
'  END IF;',
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
,p_internal_uid=>146560454886900126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(146560016037900126)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetImage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  L_PHOTO_CLOB CLOB;',
'  L_PHOTO_BLOB BLOB;',
'  V_MRNO       VARCHAR2(50);',
'',
'BEGIN',
'  APEX_JSON.OPEN_OBJECT;',
'',
'  V_MRNO := APEX_APPLICATION.G_X01;',
'',
'  SELECT IMAGE',
'    INTO L_PHOTO_BLOB',
'    FROM PICTURES.HR_PICTURES',
'   WHERE MRNO = V_MRNO;',
'',
'  L_PHOTO_CLOB := APEX_WEB_SERVICE.BLOB2CLOBBASE64(L_PHOTO_BLOB);',
'',
'  APEX_JSON.WRITE(P_NAME => ''photobase64'', P_VALUE => L_PHOTO_CLOB);',
'',
'  APEX_JSON.CLOSE_OBJECT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>146560016037900126
);
wwv_flow_imp.component_end;
end;
/

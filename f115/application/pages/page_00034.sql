prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'Radiotherapy Prescription'
,p_alias=>'RAD-REQUEST'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiotherapy Prescription'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function dialogue() {',
'    js - dialog - size1600x620',
'}',
'',
'function editRadiationDetail() {',
'    apex.theme.openRegion(''radiationsite'')',
'',
'};',
'',
'function deleteRadiationDetail() {',
'    $s(''P34_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'',
'',
'    if ($v("P34_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.message.alert("Site is signed, cannot proceed", function () {',
'        }, {',
'            title: "Error",',
'            style: "warning",',
'            iconClasses: "fa fa-warning fa-2x",',
'            okLabel: "Ok"',
'        });',
'        return;',
'    }',
'',
'',
'',
'    if ($v("P34_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.message.alert("Site is cancelled, cannot proceed", function () {',
'        }, {',
'            title: "Error",',
'            style: "warning",',
'            iconClasses: "fa fa-warning fa-2x",',
'            okLabel: "Ok"',
'        });',
'        return;',
'    }',
'',
'    apex.message.confirm(''Please confirm you want to delete Radiotheraphy Site?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationDetail",',
'                {',
'',
'                    pageItems: ["P34_RAD_DETAIL_RADIATION_NO",',
'                        "P34_RAD_DETAIL_ROW_ID",',
'                        "P34_RAD_DETAIL_SITE_ID",',
'                        "P34_RAD_DETAIL_PLANNING_ID",',
'                        "P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'                        "P34_RAD_DETAIL_P1_DOSE",',
'                        "P34_RAD_DETAIL_P1_FRACTION",',
'                        "P34_RAD_DETAIL_P2_DOSE",',
'                        "P34_RAD_DETAIL_P2_FRACTION",',
'                        "P34_RAD_DETAIL_P3_DOSE",',
'                        "P34_RAD_DETAIL_P3_FRACTION",',
'                        "P34_RAD_DETAIL_TOT_DOSE",',
'                        "P34_RAD_TREATMENT_LATER",',
'                        "P34_RAD_ACTIVE",',
'                        "P34_RAD_DETAIL_EVENT_DESC",',
'                        "P34_RAD_DETAIL_SIM_CT_ID",',
'                        "P34_RAD_DETAIL_SETUP_POSITION",',
'                        "P34_RAD_DETAIL_ARM_POSITION",',
'                        "P34_RAD_DETAIL_NECK_POSITION",',
'                        "P34_RAD_DETAIL_POSITION_INSTRUCTION",',
'                        "P34_RAD_DETAIL_ANAESTHESIA",',
'                        "P34_RAD_DETAIL_PATH_REVIEWED",',
'                        "P34_RAD_DETAIL_RAD_REVIEWED",',
'                        "P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'                        "P34_RAD_DETAIL_CT_INSTRUCTIONS"',
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
'    $s(''P34_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'    if ($v("P34_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.message.alert("Site is signed, cannot proceed");',
'        return;',
'    }',
'    if ($v("P34_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.message.alert("Site is cancelled, cannot proceed");',
'        return;',
'    }',
'',
'    apex.message.confirm(''Please confirm you want to delete Accessory?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationAccessory",',
'                {',
'',
'                    pageItems: ["P34_RAD_ACC_ACCESSORY_ID",',
'                        "P34_RAD_ACC_REMARKS",',
'                        "P34_RAD_ACC_RADIATION_NO",',
'                        "P34_RAD_DETAIL_PLANNING_ID",',
'                        "P34_RAD_ACC_SITE_ID",',
'                        "P34_RAD_ACC_SRNO",',
'                        "P34_RAD_ACC_PHASE_NO",',
'                        "P34_RAD_ACC_STATUS_ID"',
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
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_UNIT").hide();',
'apex.item("P34_SERVICE_NO").hide();',
'apex.item("P34_SERVICE_STATUS").hide();',
'apex.item("P34_RANK").hide();',
'apex.item("P34_FORMATION").hide();',
'',
'',
'$(document).keydown(function (e) {',
'    var self = $('':focus''),',
'        form = self.closest(''form''),',
'        focusable;',
'',
'    focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'')',
'        .filter('':visible'')',
'        .filter(''[tabindex!=-1]'');',
'',
'    function enterKey() {',
'',
'        if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) {',
'',
'',
'            if ($.inArray(self[0], focusable) === -1 || self.is(''a,button'')) {',
'                e.preventDefault();',
'            }',
'',
'            var direction = 1;',
'',
'',
'            if ($("#" + self.attr(''id'') + "_lov_btn").hasClass("a-Button--popupLOV")) {',
'                direction = 1;',
'            }',
'',
'',
'            focusable.eq(focusable.index(self) + (e.shiftKey ? -1 : direction)).focus();',
'            return false;',
'        }',
'    }',
'',
'    enterKey();',
'});',
'',
'',
'',
'/*$(document).keydown(function (e) {',
'',
'    var self = $('':focus''),',
'',
'        form = self.parents(''form:eq(0)''),',
'        focusable;',
'',
'    focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'').filter('':visible'').filter(''[tabindex!=-1]'');',
'',
'    function enterKey() {',
'        if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) {',
'',
'            if ($.inArray(self, focusable) && (!self.is(''a,button''))) {',
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
'',
'',
'            return false;',
'        }',
'    }',
'',
'    if (e.shiftKey) { enterKey() } else {',
'',
'        enterKey();',
'',
'    }',
'});*/',
'',
'//jsFormsBlock_pageReady();',
'',
'apex.page.warnOnUnsavedChanges(false);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'#P34_SIMULATION_DATE_input{',
'     background-color: #FFFFCC !important;',
'}',
'',
'#P34_RAD_DETAIL_P1_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P1_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P2_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P2_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P3_DOSE{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#P34_RAD_DETAIL_P3_FRACTION{',
'     background-color: #cde2f6 !important;',
'}',
'',
'#report_image_report img{',
'	height: 100px;',
'    width:  100px;',
'',
'}',
'',
'#P34_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
' #P34_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'  #P34_DISP_SEX {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'   #P34_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'    #P34_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'     #P34_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'      #P34_ICDNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'       #P34_ICDNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'        #P34_TREATMENT_INTENT_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'         #P34_SIMULATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'          #P34_DOCTOR_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'           #P34_ANAESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'            #P34_CHEMOTHERAPY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'             #P34_CHEMOTHERAPY_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'              #P34_REQUEST_ENTERED_BY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
' ',
'              #P34_SIGN_BY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
'               #P34_STATUS_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' }',
'',
' #P34_RAD_ACC_ACCESSORY_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_RAD_ACC_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_RAD_DETAIL_SITE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_PLANNING_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_RAD_DETAIL_P1_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_RAD_DETAIL_P1_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_P2_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_P2_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_P3_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_P3_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_TOT_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_TREATMENT_LATER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_ACTIVE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_EVENT_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_SIM_CT_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_SETUP_POSITION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_ARM_POSITION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_NECK_POSITION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_RAD_DETAIL_POSITION_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_PATH_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_RAD_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_CT_INSTRUCTIONS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_SIM_CT_ID_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_SETUP_POSITION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_ARM_POSITION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_NECK_POSITION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_POSITION_INSTRUCTION_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_PATH_REVIEWED_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_RAD_REVIEWED_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_CT_INSTRUCTIONS_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'#P34_RAD_DETAIL_SITE_STATUS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
'}',
'',
'',
'#P34_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P34_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P34_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P34_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_height=>'1200'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250130174511'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3470842985296001)
,p_plug_name=>'Radiation Master'
,p_region_name=>'rad_master'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>9
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
'         WHEN :P34_MRNO IS NOT NULL THEN',
'          ''%'' || :P34_MRNO',
'         ELSE',
'          RM.MRNO',
'       END',
'   AND RM.RADIOTHERAPY_TYPE = ''T''',
' ORDER BY RM.RADIATION_DATE DESC;*/',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P34_MRNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3635782378151001)
,p_plug_name=>'Patient Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(29945267452168003)
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
' WHERE MRNO = :P34_MRNO;',
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
,p_ajax_items_to_submit=>'P34_MRNO'
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
 p_id=>wwv_flow_imp.id(29945368782168004)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29945461700168005)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(29945504713168006)
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
 p_id=>wwv_flow_imp.id(29949909595168050)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) STATUS_DESC,',
'       ROWID',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P34_MRNO',
'   AND M.RADIOTHERAPY_TYPE = ''T'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P34_MRNO'
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
 p_id=>wwv_flow_imp.id(295422033248153302)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Radiation No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(295422163996153303)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>MrNo</b></span>'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(295422212161153304)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Status </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(323410609449073913)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(295421998221153301)
,p_internal_uid=>295421998221153301
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
,p_fixed_header_max_height=>205
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    config.initialSelection = true;',
'    return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(295430782946160798)
,p_interactive_grid_id=>wwv_flow_imp.id(295421998221153301)
,p_static_id=>'2954308'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(295430973075160800)
,p_report_id=>wwv_flow_imp.id(295430782946160798)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295431430143160804)
,p_view_id=>wwv_flow_imp.id(295430973075160800)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(295422033248153302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295432320225160807)
,p_view_id=>wwv_flow_imp.id(295430973075160800)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(295422163996153303)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295433281019160810)
,p_view_id=>wwv_flow_imp.id(295430973075160800)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(295422212161153304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(323652301337462723)
,p_view_id=>wwv_flow_imp.id(295430973075160800)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(323410609449073913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48337674102157935)
,p_plug_name=>'CT Details'
,p_region_name=>'ctdetail'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81107880104243622)
,p_plug_name=>'Radiotherapy Detail'
,p_region_name=>'RAD_DETAIL'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
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
' WHERE RD.RADIATION_NO = :P34_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P34_PARAM_SITE_ID, RD.SITE_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P34_RADIATION_NO,P34_PARAM_SITE_ID'
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
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(95566381486186609)
,p_heading=>'<b><p style="color:#8B0000">Phase 1</p></b>'
,p_label=>'Phase 1   '
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(95566541717186611)
,p_heading=>'<b><p style="color:#8B0000">Phase 2</p></b>'
,p_label=>'Phase 2'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(95566600484186612)
,p_heading=>'<b><p style="color:#8B0000">Phase 3</p></b>'
,p_label=>'Phase 3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29945628355168007)
,p_name=>'RAD_DETAIL_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:$s(''P34_RAD_DETAIL_DML_STATUS'', ''UPDATE'');javascript:$s(''P34_RAD_DETAIL_CT_INSTRUCTIONS'', ''&CT_INSTRUCTIONS.'');javascript:$s(''P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY'', ''&CONCURRENT_BRACHYTHERAPHY.'');javascript:$s(''P34_RAD_DETAIL_RAD_REVIE'
||'WED'', ''&RAD_REVIEWED.'');javascript:$s(''P34_RAD_DETAIL_PATH_REVIEWED'', ''&PATH_REVIEWED.'');javascript:$s(''P34_RAD_DETAIL_POSITION_INSTRUCTION'', ''&POSITION_INSTRUCTION.'');javascript:$s(''P34_RAD_DETAIL_NECK_POSITION'', ''&NECK_POSITION.'');javascript:$s(''P3'
||'4_RAD_DETAIL_ARM_POSITION'', ''&ARM_POSITION.'');javascript:$s(''P34_RAD_DETAIL_SETUP_POSITION'', ''&SETUP_POSITION.'');javascript:$s(''P34_RAD_DETAIL_SIM_CT_ID'', ''&SIM_CT_ID.'');javascript:$s(''P34_RAD_ACTIVE'', ''&ACTIVE.'');javascript:$s(''P34_RAD_TREATMENT_LAT'
||'ER'', ''&TREATMENT_LATER.'');javascript:$s(''P34_RAD_DETAIL_TOT_DOSE'', ''&TOTAL_DOSE.'');javascript:$s(''P34_RAD_DETAIL_P3_FRACTION'', ''&P3_NO_OF_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P3_DOSE'', ''&P3_DOSE_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P2_FRACT'
||'ION'', ''&P2_NO_OF_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P2_DOSE'', ''&P2_DOSE_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_ROW_ID'', ''&ROWID.'');javascript:$s(''P34_RAD_DETAIL_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P34_RAD_DETAIL_SITE_ID'', ''&SITE'
||'_ID.'');javascript:$s(''P34_RAD_DETAIL_PLANNING_ID'', ''&PLANNING_ID.'');javascript:$s(''P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID'', ''&TREATMENT_TYPE.'');javascript:$s(''P34_RAD_DETAIL_P1_DOSE'', ''&P1_DOSE_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P1_FRACTION'', '''
||'&P1_NO_OF_FRACTION.'');javascript:editRadiationDetail();'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29945734513168008)
,p_name=>'RAD_DETAIL_DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:$s(''P34_RAD_DETAIL_CT_INSTRUCTIONS'', ''&CT_INSTRUCTIONS.'');javascript:$s(''P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY'', ''&CONCURRENT_BRACHYTHERAPHY.'');javascript:$s(''P34_RAD_DETAIL_RAD_REVIEWED'', ''&RAD_REVIEWED.'');javascript:$s(''P34_RAD_DETAIL'
||'_PATH_REVIEWED'', ''&PATH_REVIEWED.'');javascript:$s(''P34_RAD_DETAIL_POSITION_INSTRUCTION'', ''&POSITION_INSTRUCTION.'');javascript:$s(''P34_RAD_DETAIL_NECK_POSITION'', ''&NECK_POSITION.'');javascript:$s(''P34_RAD_DETAIL_ARM_POSITION'', ''&ARM_POSITION.'');javascr'
||'ipt:$s(''P34_RAD_DETAIL_SETUP_POSITION'', ''&SETUP_POSITION.'');javascript:$s(''P34_RAD_DETAIL_SIM_CT_ID'', ''&SIM_CT_ID.'');javascript:$s(''P34_RAD_ACTIVE'', ''&ACTIVE.'');javascript:$s(''P34_RAD_TREATMENT_LATER'', ''&TREATMENT_LATER.'');javascript:$s(''P34_RAD_DETA'
||'IL_TOT_DOSE'', ''&TOTAL_DOSE.'');javascript:$s(''P34_RAD_DETAIL_P3_FRACTION'', ''&P3_NO_OF_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P3_DOSE'', ''&P3_DOSE_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P2_FRACTION'', ''&P2_NO_OF_FRACTION.'');javascript:$s(''P34_RAD_D'
||'ETAIL_P2_DOSE'', ''&P2_DOSE_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_ROW_ID'', ''&ROWID.'');javascript:$s(''P34_RAD_DETAIL_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P34_RAD_DETAIL_SITE_ID'', ''&SITE_ID.'');javascript:$s(''P34_RAD_DETAIL_PLANNING_ID'', ''&'
||'PLANNING_ID.'');javascript:$s(''P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID'', ''&TREATMENT_TYPE.'');javascript:$s(''P34_RAD_DETAIL_P1_DOSE'', ''&P1_DOSE_FRACTION.'');javascript:$s(''P34_RAD_DETAIL_P1_FRACTION'', ''&P1_NO_OF_FRACTION.'');javascript:deleteRadiationDetai'
||'l();'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(37864884406546307)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81108081277243624)
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
 p_id=>wwv_flow_imp.id(81108115174243625)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Radiotherapy <br> Site </b></span>'
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
 p_id=>wwv_flow_imp.id(81108267230243626)
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
 p_id=>wwv_flow_imp.id(81108398209243627)
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
 p_id=>wwv_flow_imp.id(81108471045243628)
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
 p_id=>wwv_flow_imp.id(81108599134243629)
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
 p_id=>wwv_flow_imp.id(81108656619243630)
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
 p_id=>wwv_flow_imp.id(81108705677243631)
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
 p_id=>wwv_flow_imp.id(81108870138243632)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Planning <br>Technique</b></span>'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81108936946243633)
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
 p_id=>wwv_flow_imp.id(81109095334243634)
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
 p_id=>wwv_flow_imp.id(81109150591243635)
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
 p_id=>wwv_flow_imp.id(81109210108243636)
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
 p_id=>wwv_flow_imp.id(81109306747243637)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(95566381486186609)
,p_use_group_for=>'HEADING'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81109481810243638)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(95566381486186609)
,p_use_group_for=>'HEADING'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81109507475243639)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(95566541717186611)
,p_use_group_for=>'HEADING'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81109657123243640)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(95566541717186611)
,p_use_group_for=>'HEADING'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81109746801243641)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(95566600484186612)
,p_use_group_for=>'HEADING'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81109857842243642)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(95566600484186612)
,p_use_group_for=>'HEADING'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81109965094243643)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b> Treatment <br> Later</b></span>'
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81110002889243644)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Active</b></span>'
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
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(81110193487243645)
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
 p_id=>wwv_flow_imp.id(81110217967243646)
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
 p_id=>wwv_flow_imp.id(81110348182243647)
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
 p_id=>wwv_flow_imp.id(81110450533243648)
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
 p_id=>wwv_flow_imp.id(81110542209243649)
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
 p_id=>wwv_flow_imp.id(81110620415243650)
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
 p_id=>wwv_flow_imp.id(95565546486186601)
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
 p_id=>wwv_flow_imp.id(95565608896186602)
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
 p_id=>wwv_flow_imp.id(95565805251186604)
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
 p_id=>wwv_flow_imp.id(95565990853186605)
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
 p_id=>wwv_flow_imp.id(95566003096186606)
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
 p_id=>wwv_flow_imp.id(95566160574186607)
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
 p_id=>wwv_flow_imp.id(95566277993186608)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br>Type</b></span>'
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
 p_id=>wwv_flow_imp.id(95567296485186618)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total  <br>Dose(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P34_TOTAL_DOSE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95568815633186634)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(81107938271243623)
,p_internal_uid=>81107938271243623
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>260
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'        toolbarGroup = toolbarData.toolbarFind("actions4");',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        label: "Add Radiotheraphy Treatment Site",',
'        action: "addRadiotheraphySite",',
'        icon: "icon-ig-add-row",',
'        iconBeforeLabel: true,',
'        hot: true',
'    });',
'',
'',
'',
'    config.initActions = function (actions) {',
'        actions.add({',
'            name: "addRadiotheraphySite",',
'            action: function () {',
'',
'                if ($v("P34_RADIATION_NO") == null || $v("P34_RADIATION_NO") === "") {',
'                    var alertMessage = ''Please create and save the radiation prescription first before adding the radiotherapy site'';',
'                    apex.item("P34_TXT_ALERT_TEXT").setValue(alertMessage);',
'',
'',
'                    return;',
'                }',
'',
'',
'                apex.item("P34_RAD_DETAIL_RADIATION_NO").setValue($v("P34_RADIATION_NO"));',
'                apex.item("P34_RAD_DETAIL_ROW_ID").setValue('''');',
'                apex.item("P34_RAD_DETAIL_SITE_ID").setValue('''');',
'                apex.item("P34_RAD_DETAIL_PLANNING_ID").setValue('''');',
'                apex.item("P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID").setValue('''');',
'                apex.item("P34_RAD_DETAIL_P1_DOSE").setValue(''0'');',
'                apex.item("P34_RAD_DETAIL_P1_FRACTION").setValue(''0'');',
'                apex.item("P34_RAD_DETAIL_P2_DOSE").setValue(''0'');',
'                apex.item("P34_RAD_DETAIL_P2_FRACTION").setValue(''0'');',
'                apex.item("P34_RAD_DETAIL_P3_DOSE").setValue(''0'');',
'                apex.item("P34_RAD_DETAIL_P3_FRACTION").setValue(''0'');',
'                apex.item("P34_RAD_DETAIL_TOT_DOSE").setValue(''0'');',
'                apex.item("P34_RAD_TREATMENT_LATER").setValue(''Y'');',
'                apex.item("P34_RAD_ACTIVE").setValue(''Y'');',
'                apex.item("P34_RAD_DETAIL_SIM_CT_ID").setValue('''');',
'                apex.item("P34_RAD_DETAIL_SETUP_POSITION").setValue('''');',
'                apex.item("P34_RAD_DETAIL_ARM_POSITION").setValue('''');',
'                apex.item("P34_RAD_DETAIL_NECK_POSITION").setValue('''');',
'                apex.item("P34_RAD_DETAIL_POSITION_INSTRUCTION").setValue('''');',
'                apex.item("P34_RAD_DETAIL_ANAESTHESIA").setValue('''');',
'                apex.item("P34_RAD_DETAIL_PATH_REVIEWED").setValue('''');',
'                apex.item("P34_RAD_DETAIL_RAD_REVIEWED").setValue('''');',
'                apex.item("P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY").setValue('''');',
'                apex.item("P34_RAD_DETAIL_CT_INSTRUCTIONS").setValue('''');',
'                apex.item("P34_SEURM_CREATININE_ALERT").setValue('''');',
'                apex.item("P34_RAD_DETAIL_DML_STATUS").setValue(''CREATE'');',
'',
'                apex.item("saveradiationsite").enable();',
'                apex.theme.openRegion(''radiationsite'');',
'',
'                /*$(''#radiationsite'').css({',
'                    ''width'': ''1500px'',',
'                    ''height'': ''800px''',
'                });*/',
'',
'',
'            }',
'        });',
'    };',
'    config.toolbarData = toolbarData;',
'',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    config.initialSelection = true;',
'',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(95571377116187347)
,p_interactive_grid_id=>wwv_flow_imp.id(81107938271243623)
,p_static_id=>'955714'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(95571578419187347)
,p_report_id=>wwv_flow_imp.id(95571377116187347)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21006322006838)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(95568815633186634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30082686160669246)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(29945628355168007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30091809856691404)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(29945734513168008)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(37895683409842790)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(37864884406546307)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95571978012187352)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(81108081277243624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95572888877187356)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(81108115174243625)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95573701492187358)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(81108267230243626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95574626737187362)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(81108398209243627)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95575510000187374)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(81108471045243628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95576468552187380)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(81108599134243629)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153.031
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95577399072187382)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(81108656619243630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95578298768187391)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(81108705677243631)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95579132456187393)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(81108870138243632)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95580024107187395)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(81108936946243633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95580926997187397)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(81109095334243634)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95581874493187400)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(81109150591243635)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95582778483187406)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(81109210108243636)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95583626123187408)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(81109306747243637)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95584531911187413)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(81109481810243638)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95585402191187417)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(81109507475243639)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>51
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95586317381187419)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(81109657123243640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95587205246187425)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(81109746801243641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95588167729187427)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(81109857842243642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95589002985187429)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(81109965094243643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.984
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95589929075187432)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(81110002889243644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54.968999999999994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95590859109187436)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(81110193487243645)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95591738102187439)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(81110217967243646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95592636873187441)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(81110348182243647)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95593534544187443)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(81110450533243648)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95594466396187446)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(81110542209243649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95595262844187448)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(81110620415243650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95596178052187451)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(95565546486186601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95597013229187455)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(95565608896186602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95598883132187460)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(95565805251186604)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95599795494187464)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(95565990853186605)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95600648794187467)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(95566003096186606)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95601523110187469)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(95566160574186607)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95602460184187472)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(95566277993186608)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112.0312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(96287799303505744)
,p_view_id=>wwv_flow_imp.id(95571578419187347)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(95567296485186618)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29945800599168009)
,p_plug_name=>'Radiotheraphy Site'
,p_region_name=>'radiationsite'
,p_parent_plug_id=>wwv_flow_imp.id(81107880104243622)
,p_region_template_options=>'js-modal:js-draggable:js-resizable:js-dialog-size720x480:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95567319527186619)
,p_plug_name=>'Radiation Accessory '
,p_region_name=>'radiationAccessory'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
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
' WHERE RA.RADIATION_NO = :P34_RAD_DETAIL_ND_RADIATION_NO',
'   AND RA.SITE_ID = :P34_RAD_DETAIL_ND_SITE_ID',
'   AND RA.TRANS_TYPE = ''RQ''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P34_RAD_DETAIL_ND_RADIATION_NO,P34_RAD_DETAIL_ND_SITE_ID'
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
 p_id=>wwv_flow_imp.id(32552076119462713)
,p_name=>'RAD_ACCESSORY_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:editAccessory();javascript:$s(''P34_RAD_ACC_ACCESSORY_ID'', ''&ACCESSORY_ID.'');javascript:$s(''P34_RAD_ACC_REMARKS'', ''&REMARKS.'');javascript:$s(''P34_RAD_ACC_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P34_RAD_ACC_SITE_ID'', ''&SITE_ID.'');jav'
||'ascript:$s(''P34_RAD_ACC_SRNO'', ''&SRNO.'');javascript:$s(''P34_RAD_ACC_PHASE_NO'', ''&PHASE_NO.'');javascript:$s(''P34_RAD_ACC_STATUS_ID'', ''&STATUS_ID.'');javascript:$s(''P34_RAD_ACC_DML_STATUS'', ''UPDATE'');'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32552128379462714)
,p_name=>'RAD_ACCESSORY_DELETE '
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:deleteAccessory();javascript:$s(''P34_RAD_ACC_ACCESSORY_ID'', ''&ACCESSORY_ID.'');javascript:$s(''P34_RAD_ACC_REMARKS'', ''&REMARKS.'');javascript:$s(''P34_RAD_ACC_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P34_RAD_ACC_SITE_ID'', ''&SITE_ID.'');j'
||'avascript:$s(''P34_RAD_ACC_SRNO'', ''&SRNO.'');javascript:$s(''P34_RAD_ACC_PHASE_NO'', ''&PHASE_NO.'');javascript:$s(''P34_RAD_ACC_STATUS_ID'', ''&STATUS_ID.'');javascript:$s(''P34_RAD_ACC_DML_STATUS'', ''DELETE'');'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95567540030186621)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(95567634741186622)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(95567742236186623)
,p_name=>'SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRNO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(95567833731186624)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(95567927293186625)
,p_name=>'ACCESSORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Accessory  </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95568075678186626)
,p_name=>'RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID)'
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
 p_id=>wwv_flow_imp.id(95568183232186627)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Remarks</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(95568250410186628)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
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
 p_id=>wwv_flow_imp.id(95568312717186629)
,p_name=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
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
 p_id=>wwv_flow_imp.id(95568426383186630)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(95567459936186620)
,p_internal_uid=>95567459936186620
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>260
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'        toolbarGroup = toolbarData.toolbarFind("actions4");',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        label: "Add Accessory",',
'        action: "addAccessory",',
'        icon: "icon-ig-add-row",',
'        iconBeforeLabel: true,',
'        hot: true',
'    });',
'',
'',
'',
'    config.initActions = function (actions) {',
'        actions.add({',
'            name: "addAccessory",',
'            action: function () {',
'',
'                if ($v("P34_RADIATION_NO") == null || $v("P34_RADIATION_NO") === "") {',
'                    var alertMessage = ''Please create and save the radiation prescription first before adding the radiotherapy accessory'';',
'                    apex.item("P34_TXT_ALERT_TEXT").setValue(alertMessage);',
'',
'',
'                    return;',
'                }',
'',
'                if ($v("P34_RAD_DETAIL_ND_SITE_ID") == null || $v("P34_RAD_DETAIL_ND_SITE_ID") === "") {',
'                    var alertMessage = ''Please enter the radiotherapy site to proceed with saving the accessory'';',
'                    apex.item("P34_TXT_ALERT_TEXT").setValue(alertMessage);',
'',
'                    return;',
'                }',
'',
'',
'',
'                apex.item("P34_RAD_ACC_RADIATION_NO").setValue($v("P34_RAD_DETAIL_ND_RADIATION_NO"));',
'                apex.item("P34_RAD_ACC_SITE_ID").setValue($v("P34_RAD_DETAIL_ND_SITE_ID"));',
'                apex.item("P34_RAD_ACC_ACCESSORY_ID").setValue('''');',
'                apex.item("P34_RAD_ACC_REMARKS").setValue('''');',
'                apex.item("P34_RAD_ACC_SRNO").setValue('''');',
'                apex.item("P34_RAD_ACC_PHASE_NO").setValue('''');',
'                apex.item("P34_RAD_ACC_STATUS_ID").setValue('''');',
'                apex.item("P34_RAD_ACC_DML_STATUS").setValue(''CREATE'');',
'',
'',
'',
'                apex.item("SaveRadiationAccessory").enable();',
'                apex.theme.openRegion(''radiationAccessorySub'');',
'            }',
'        });',
'    };',
'    config.toolbarData = toolbarData;',
'',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    config.initialSelection = true;',
'',
'    return config;',
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
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(97334921522240906)
,p_interactive_grid_id=>wwv_flow_imp.id(95567459936186620)
,p_static_id=>'973350'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(97335135926240906)
,p_report_id=>wwv_flow_imp.id(97334921522240906)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35804356686555676)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(32552076119462713)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35807151529563149)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(32552128379462714)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97335621195240909)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(95567540030186621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97336566618240912)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(95567634741186622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97337464859240916)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(95567742236186623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97338379153240918)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(95567833731186624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97339221538240920)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(95567927293186625)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163.8125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97340141048240923)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(95568075678186626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97341074568240926)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(95568183232186627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97341984916240928)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(95568250410186628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97342849319240930)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(95568312717186629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(97343772318240932)
,p_view_id=>wwv_flow_imp.id(97335135926240906)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(95568426383186630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32552898953462721)
,p_plug_name=>'Radiotherapy Accessory'
,p_region_name=>'radiationAccessorySub'
,p_parent_plug_id=>wwv_flow_imp.id(95567319527186619)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95569881501186644)
,p_plug_name=>'Control'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295423714312153319)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>150
,p_plug_source=>'<br><br><br><br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(476570281377696490)
,p_plug_name=>'Sign '
,p_region_name=>'signdialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>220
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95569900037186645)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
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
 p_id=>wwv_flow_imp.id(103181434129933506)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Sign'
,p_button_static_id=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423175166493299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4312447855724605)
,p_button_sequence=>31
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423701774493294)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103181717723933509)
,p_button_sequence=>41
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Delete'
,p_button_static_id=>'delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Delete'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3779526987032042)
,p_button_sequence=>51
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New Request'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103181815196933510)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(385423406715493294)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48338756677157946)
,p_button_sequence=>204
,p_button_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_button_name=>'ChemoPrescription'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Chemo Prescription</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-prescription'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776352905032010)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_button_name=>'SaveRadiationAccessory'
,p_button_static_id=>'saveradiationaccessory'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29948722916168038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_button_name=>'SaveRadiationSite'
,p_button_static_id=>'saveradiationsite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(323146328570146273)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(476570281377696490)
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
 p_id=>wwv_flow_imp.id(3474529091296038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29945800599168009)
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
 p_id=>wwv_flow_imp.id(103181998819933511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Cancel'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-ban'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103182040081933512)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(95569881501186644)
,p_button_name=>'Approve'
,p_button_static_id=>'approve'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-thumbs-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29948893726168039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_button_name=>'ExitSite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37649283076270610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_button_name=>'ExitRadAccessory'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(323145923302146272)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_button_name=>'SignRequest'
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
 p_id=>wwv_flow_imp.id(3471075048296003)
,p_name=>'P34_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Radiation No</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3471174347296004)
,p_name=>'P34_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date</p></b>'
,p_format_mask=>'DD-MON-RR HH24:MI'
,p_source=>'RADIATION_DATE'
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
 p_id=>wwv_flow_imp.id(3471249851296005)
,p_name=>'P34_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_cattributes_element=>'readonly="readonly;"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3471367359296006)
,p_name=>'P34_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Patient Name</p></b>'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3471425545296007)
,p_name=>'P34_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Age</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3471571565296008)
,p_name=>'P34_DISP_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Sex</p></b>'
,p_source=>'DISP_SEX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3471629308296009)
,p_name=>'P34_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>214
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3471705285296010)
,p_name=>'P34_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>224
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3471839615296011)
,p_name=>'P34_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Consultant</p></b>'
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
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3471985410296012)
,p_name=>'P34_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>234
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472083746296013)
,p_name=>'P34_TREATMENT_INTENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent</p></b>'
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
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472155249296014)
,p_name=>'P34_DISP_TREATMENT_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>244
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'DISP_TREATMENT_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472205111296015)
,p_name=>'P34_ICDNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Diagnosis</p></b>'
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
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472334252296016)
,p_name=>'P34_DISP_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>304
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'DISP_DIAGNOSIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472432482296017)
,p_name=>'P34_STATUS_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>254
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'STATUS_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472595288296018)
,p_name=>'P34_SIGN_BY_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>274
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'SIGN_BY_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472682255296019)
,p_name=>'P34_REQUEST_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Entered By</p></b>'
,p_source=>'REQUEST_ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_cattributes_element=>'readonly="readonly;"'
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3472755457296020)
,p_name=>'P34_ENTERED_BY_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>264
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'ENTERED_BY_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472873204296021)
,p_name=>'P34_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Anesthesia</p></b>'
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3472969016296022)
,p_name=>'P34_CHEMOTHERAPY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Concurrent Chemotherapy</p></b>'
,p_source=>'CHEMOTHERAPY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3473056881296023)
,p_name=>'P34_CHEMOTHERAPY_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Chemotherapy Remarks</p></b>'
,p_source=>'CHEMOTHERAPY_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3473183536296024)
,p_name=>'P34_SIMULATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Radiation Start Date</p></b>'
,p_source=>'SIMULATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3473292760296025)
,p_name=>'P34_STATUS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Status</p></b>'
,p_source=>'STATUS_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3473410936296027)
,p_name=>'P34_SIGN_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_prompt=>'<b><p style="color:#00008B">Sign By</p></b>'
,p_source=>'SIGN_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(3473510130296028)
,p_name=>'P34_ACTIVE_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>284
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'ACTIVE_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3473604442296029)
,p_name=>'P34_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>294
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3474428771296037)
,p_name=>'P34_RAD_DETAIL_STATUS_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3776116150032008)
,p_name=>'P34_RAD_ACC_DML_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3776281067032009)
,p_name=>'P34_RAD_ACC_SITE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777941187032026)
,p_name=>'P34_TXT_URL'
,p_item_sequence=>230
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
 p_id=>wwv_flow_imp.id(3778328837032030)
,p_name=>'P34_SIGN_STATUS'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7582777198888710)
,p_name=>'P34_RAD_DETAIL_SITE_STATUS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>' <b><p style="color:#00008B">Site Status</p></b>'
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
 p_id=>wwv_flow_imp.id(29945912349168010)
,p_name=>'P34_RAD_DETAIL_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29946023724168011)
,p_name=>'P34_RAD_DETAIL_SITE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Site</p></b>'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'800'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29946167404168012)
,p_name=>'P34_RAD_DETAIL_PLANNING_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Planning Technique</p></b>'
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
'                 WHERE M.RADIATION_NO = :P34_RAD_DETAIL_RADIATION_NO',
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
 p_id=>wwv_flow_imp.id(29946216687168013)
,p_name=>'P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Treatment Type</p></b>'
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
 p_id=>wwv_flow_imp.id(29946304346168014)
,p_name=>'P34_RAD_DETAIL_P1_DOSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Phase 1 Dose(cGy)</p></b>'
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
 p_id=>wwv_flow_imp.id(29946470906168015)
,p_name=>'P34_RAD_DETAIL_P1_FRACTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Phase 1 Fraction(s)</p></b>'
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
 p_id=>wwv_flow_imp.id(29946629687168017)
,p_name=>'P34_RAD_DETAIL_P2_DOSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Phase 2 Dose(cGy)</p></b>'
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
 p_id=>wwv_flow_imp.id(29946799227168018)
,p_name=>'P34_RAD_DETAIL_P2_FRACTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Phase 2 Fraction(s)</p></b>'
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
 p_id=>wwv_flow_imp.id(29946836721168019)
,p_name=>'P34_RAD_DETAIL_P3_DOSE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Phase 3 Dose(cGy)</p></b>'
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
 p_id=>wwv_flow_imp.id(29947170855168022)
,p_name=>'P34_RAD_DETAIL_P3_FRACTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Phase 3 Fraction(s)</p></b>'
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
 p_id=>wwv_flow_imp.id(29947263222168023)
,p_name=>'P34_RAD_DETAIL_TOT_DOSE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Total Dose (cGy)</p></b>'
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
 p_id=>wwv_flow_imp.id(29947320825168024)
,p_name=>'P34_RAD_TREATMENT_LATER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Treatment Later</p></b>'
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
 p_id=>wwv_flow_imp.id(29947402366168025)
,p_name=>'P34_RAD_ACTIVE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Active</p></b>'
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
 p_id=>wwv_flow_imp.id(29947550643168026)
,p_name=>'P34_RAD_DETAIL_EVENT_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Current Event</p></b>'
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
 p_id=>wwv_flow_imp.id(29947723632168028)
,p_name=>'P34_RAD_DETAIL_SIM_CT_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Simulation/CT</p></b>'
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
 p_id=>wwv_flow_imp.id(29947841916168029)
,p_name=>'P34_RAD_DETAIL_SETUP_POSITION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Setup Position</p></b>'
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
 p_id=>wwv_flow_imp.id(29947964490168030)
,p_name=>'P34_RAD_DETAIL_ARM_POSITION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Arm Position</p></b>'
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
 p_id=>wwv_flow_imp.id(29948008322168031)
,p_name=>'P34_RAD_DETAIL_NECK_POSITION'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Neck Position</p></b>'
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
 p_id=>wwv_flow_imp.id(29948121974168032)
,p_name=>'P34_RAD_DETAIL_POSITION_INSTRUCTION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Positioning  Instructions</p></b>'
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
 p_id=>wwv_flow_imp.id(29948257954168033)
,p_name=>'P34_RAD_DETAIL_PATH_REVIEWED'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29948351920168034)
,p_name=>'P34_RAD_DETAIL_RAD_REVIEWED'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-md'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29948495186168035)
,p_name=>'P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
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
 p_id=>wwv_flow_imp.id(29948586410168036)
,p_name=>'P34_RAD_DETAIL_ANAESTHESIA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29948648349168037)
,p_name=>'P34_RAD_DETAIL_CT_INSTRUCTIONS'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_prompt=>'<b><p style="color:#00008B">Patient Preparation Instructions</p></b>'
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
 p_id=>wwv_flow_imp.id(29949585401168046)
,p_name=>'P34_RAD_DETAIL_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30676561302716417)
,p_name=>'P34_HISTORY_RADIATION_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30679867171716450)
,p_name=>'P34_PARAM_SITE_ID'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32551676636462709)
,p_name=>'P34_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32552444914462717)
,p_name=>'P34_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32552513649462718)
,p_name=>'P34_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32552968985462722)
,p_name=>'P34_RAD_ACC_ACCESSORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_prompt=>' <b><p style="color:#00008B">Accessory</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.DESCRIPTION, AC.ACCESSORY_ID',
'  FROM RADIATION.ACCESSORIES AC',
' WHERE AC.ACTIVE = ''Y''',
' ORDER BY AC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'500'
,p_attribute_09=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32553008055462723)
,p_name=>'P34_RAD_ACC_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_prompt=>' <b><p style="color:#00008B">Remarks</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32553169152462724)
,p_name=>'P34_RAD_ACC_RADIATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32553267893462725)
,p_name=>'P34_RAD_ACC_SRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32553317472462726)
,p_name=>'P34_RAD_ACC_PHASE_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32553422225462727)
,p_name=>'P34_RAD_ACC_STATUS_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(32552898953462721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32555793928462750)
,p_name=>'P34_PARAM_RADIATION_NO'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37649031034270608)
,p_name=>'P34_PARAM_MRNO'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37651175926270629)
,p_name=>'P34_SEURM_CREATININE_ALERT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(29945800599168009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37864553103546304)
,p_name=>'P34_USER_ROLE'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37865277921546311)
,p_name=>'P34_RADIATION_DETAIL_STATUS_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37866841476546327)
,p_name=>'P34_UNIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
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
 p_id=>wwv_flow_imp.id(37866962654546328)
,p_name=>'P34_SERVICE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
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
 p_id=>wwv_flow_imp.id(37867022805546329)
,p_name=>'P34_SERVICE_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
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
 p_id=>wwv_flow_imp.id(37867120856546330)
,p_name=>'P34_RANK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
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
 p_id=>wwv_flow_imp.id(37867224241546331)
,p_name=>'P34_FORMATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(3470842985296001)
,p_item_source_plug_id=>wwv_flow_imp.id(3470842985296001)
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
 p_id=>wwv_flow_imp.id(37867396310546332)
,p_name=>'P34_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48337729942157936)
,p_name=>'P34_RAD_DETAIL_SIM_CT_ID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>'<b><p style="color:#00008B">Simulation/CT</p></b>'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48337804292157937)
,p_name=>'P34_RAD_DETAIL_SETUP_POSITION_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>'<b><p style="color:#00008B">Simulation/CT</p></b>'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48337906202157938)
,p_name=>'P34_RAD_DETAIL_ARM_POSITION_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>'<b><p style="color:#00008B">Arm Position</p></b>'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48338084143157939)
,p_name=>'P34_RAD_DETAIL_NECK_POSITION_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>'<b><p style="color:#00008B">Neck Position</p></b>'
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
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48338245621157941)
,p_name=>'P34_RAD_DETAIL_POSITION_INSTRUCTION_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>'<b><p style="color:#00008B">Positioning  Instructions</p></b>'
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
 p_id=>wwv_flow_imp.id(48338314896157942)
,p_name=>'P34_RAD_DETAIL_PATH_REVIEWED_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48338494076157943)
,p_name=>'P34_RAD_DETAIL_RAD_REVIEWED_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(48338622584157945)
,p_name=>'P34_RAD_DETAIL_CT_INSTRUCTIONS_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48337674102157935)
,p_prompt=>' <b><p style="color:#00008B">Patient Preparation Instructions</p></b>'
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
 p_id=>wwv_flow_imp.id(95569448814186640)
,p_name=>'P34_TOTAL_DOSE'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103182212574933514)
,p_name=>'P34_MSG'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105828854827821310)
,p_name=>'P34_SIGN_CANCEL'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105831356990821335)
,p_name=>'P34_ALERT_TEXT'
,p_item_sequence=>190
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
 p_id=>wwv_flow_imp.id(476574187955696511)
,p_name=>'P34_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_prompt=>'<b><p style="color:#00008B">Employee Code</p></b>'
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
 p_id=>wwv_flow_imp.id(476574216166696512)
,p_name=>'P34_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
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
 p_id=>wwv_flow_imp.id(476574308872696513)
,p_name=>'P34_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
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
 p_id=>wwv_flow_imp.id(476574465561696514)
,p_name=>'P34_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
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
 p_id=>wwv_flow_imp.id(476574588960696515)
,p_name=>'P34_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476574672377696516)
,p_name=>'P34_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476574712290696517)
,p_name=>'P34_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476574806488696518)
,p_name=>'P34_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476574976058696519)
,p_name=>'P34_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476575069231696520)
,p_name=>'P34_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476575550013696525)
,p_name=>'P34_TXT_ALERT_TEXT'
,p_item_sequence=>290
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(476575657697696526)
,p_name=>'P34_SUCCESS_MSG'
,p_item_sequence=>280
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(480299051662500891)
,p_name=>'P34_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(476570281377696490)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32552258085462715)
,p_name=>'SetRadiationDetailPK'
,p_event_sequence=>1
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81107880104243622)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32552385957462716)
,p_event_id=>wwv_flow_imp.id(32552258085462715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P34_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P34_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
'$s(''P34_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'',
'',
'apex.region("radiationAccessory").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43328843052050210)
,p_event_id=>wwv_flow_imp.id(32552258085462715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95567319527186619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32555577271462748)
,p_name=>'PopulateRequestMaster'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32555699976462749)
,p_event_id=>wwv_flow_imp.id(32555577271462748)
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
'    INTO :P34_RADIATION_NO,',
'         :P34_RADIATION_DATE,',
'         :P34_MRNO,',
'         :P34_PATIENT_NAME,',
'         :P34_DISP_AGE,',
'         :P34_DISP_SEX,',
'         :P34_PRIORITY,',
'         :P34_REMARKS,',
'         :P34_DOCTOR_ID,',
'         :P34_DISP_DOCTOR,',
'         :P34_TREATMENT_INTENT_ID,',
'         :P34_DISP_TREATMENT_INTENT,',
'         :P34_ICDNO,',
'         :P34_DISP_DIAGNOSIS,',
'         :P34_STATUS_REQUEST,',
'         :P34_SIGN_BY_REQUEST,',
'         :P34_REQUEST_ENTERED_BY,',
'         :P34_ENTERED_BY_MRNO,',
'         :P34_ANAESTHESIA,',
'         :P34_CHEMOTHERAPY,',
'         :P34_CHEMOTHERAPY_REMARKS,',
'         :P34_SIMULATION_DATE,',
'         :P34_STATUS_DESC,',
'         :P34_ACTIVE_REQUEST,',
'         :P34_SIGN_BY,',
'         :P34_ROWID',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P34_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P34_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P34_MRNO IS NOT NULL THEN',
'            ''%'' || :P34_MRNO',
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
,p_attribute_02=>'P34_PARAM_RADIATION_NO,P34_MRNO'
,p_attribute_03=>'P34_RADIATION_NO,P34_RADIATION_DATE,P34_MRNO,P34_PATIENT_NAME,P34_DISP_AGE,P34_DISP_SEX,P34_PRIORITY,P34_REMARKS,P34_DOCTOR_ID,P34_DISP_DOCTOR,P34_TREATMENT_INTENT_ID,P34_DISP_TREATMENT_INTENT,P34_ICDNO,P34_DISP_DIAGNOSIS,P34_STATUS_REQUEST,P34_SIGN_'
||'BY_REQUEST,P34_REQUEST_ENTERED_BY,P34_ENTERED_BY_MRNO,P34_ANAESTHESIA,P34_CHEMOTHERAPY,P34_CHEMOTHERAPY_REMARKS,P34_SIMULATION_DATE,P34_STATUS_DESC,P34_ACTIVE_REQUEST,P34_SIGN_BY,P34_ROWID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3475495264296047)
,p_event_id=>wwv_flow_imp.id(32555577271462748)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29945267452168003)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37648332997270601)
,p_event_id=>wwv_flow_imp.id(32555577271462748)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81107880104243622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32551775962462710)
,p_name=>'ClearValues'
,p_event_sequence=>2
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32551886085462711)
,p_event_id=>wwv_flow_imp.id(32551775962462710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_DML_STATUS,P34_TXT_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37865719338546316)
,p_name=>'EnableDisableRADDetail'
,p_event_sequence=>2
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81107880104243622)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37865836814546317)
,p_event_id=>wwv_flow_imp.id(37865719338546316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P34_STATUS_REQUEST") === "015") || ($v("P34_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P34_DOCTOR_ID").disable();',
'    apex.item("P34_TREATMENT_INTENT_ID").disable();',
'    apex.item("P34_ICDNO").disable();',
'    apex.item("P34_CHEMOTHERAPY").disable();',
'    apex.item("P34_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P34_ANAESTHESIA").disable();',
'    apex.item("P34_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P34_DOCTOR_ID").enable();',
'    apex.item("P34_TREATMENT_INTENT_ID").enable();',
'    apex.item("P34_ICDNO").enable();',
'    apex.item("P34_CHEMOTHERAPY").enable();',
'    apex.item("P34_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P34_ANAESTHESIA").enable();',
'    apex.item("P34_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P34_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'else if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P34_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P34_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P34_USER_ROLE") === "C")) {',
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
'apex.item("P34_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P34_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P34_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P34_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P34_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P34_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P34_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P34_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P34_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
'',
'',
'',
'',
'',
'',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7072880117126515)
,p_name=>'EnableDisableRADDetailClick'
,p_event_sequence=>3
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81107880104243622)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7072963142126516)
,p_event_id=>wwv_flow_imp.id(7072880117126515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P34_STATUS_REQUEST") === "015") || ($v("P34_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P34_DOCTOR_ID").disable();',
'    apex.item("P34_TREATMENT_INTENT_ID").disable();',
'    apex.item("P34_ICDNO").disable();',
'    apex.item("P34_CHEMOTHERAPY").disable();',
'    apex.item("P34_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P34_ANAESTHESIA").disable();',
'    apex.item("P34_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P34_DOCTOR_ID").enable();',
'    apex.item("P34_TREATMENT_INTENT_ID").enable();',
'    apex.item("P34_ICDNO").enable();',
'    apex.item("P34_CHEMOTHERAPY").enable();',
'    apex.item("P34_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P34_ANAESTHESIA").enable();',
'    apex.item("P34_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P34_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'else if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P34_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P34_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P34_USER_ROLE") === "C")) {',
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
'apex.item("P34_RAD_DETAIL_SIM_CT_ID_1").disable();',
'apex.item("P34_RAD_DETAIL_SETUP_POSITION_1").disable();',
'apex.item("P34_RAD_DETAIL_ARM_POSITION_1").disable();',
'apex.item("P34_RAD_DETAIL_NECK_POSITION_1").disable();',
'apex.item("P34_RAD_DETAIL_POSITION_INSTRUCTION_1").disable();',
'apex.item("P34_RAD_DETAIL_PATH_REVIEWED_1").disable();',
'apex.item("P34_RAD_DETAIL_RAD_REVIEWED_1").disable();',
'//apex.item("P34_RAD_DETAIL_ANAESTHESIA_1").disable();',
'apex.item("P34_RAD_DETAIL_CT_INSTRUCTIONS_1").disable();',
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
 p_id=>wwv_flow_imp.id(32552663709462719)
,p_name=>'RefreshAccessoryRegion'
,p_event_sequence=>4
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81107880104243622)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32552760034462720)
,p_event_id=>wwv_flow_imp.id(32552663709462719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95567319527186619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(228143751968690530)
,p_name=>'SetSingleRecordFields'
,p_event_sequence=>5
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(81107880104243622)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228143877720690531)
,p_event_id=>wwv_flow_imp.id(228143751968690530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P34_RAD_DETAIL_SIM_CT_ID_1'', _.RAD_DETAIL.SIM_CT_ID);',
'$s(''P34_RAD_DETAIL_SETUP_POSITION_1'', _.RAD_DETAIL.SETUP_POSITION);',
'$s(''P34_RAD_DETAIL_ARM_POSITION_1'', _.RAD_DETAIL.ARM_POSITION);',
'$s(''P34_RAD_DETAIL_NECK_POSITION_1'', _.RAD_DETAIL.NECK_POSITION);',
'$s(''P34_RAD_DETAIL_POSITION_INSTRUCTION_1'', _.RAD_DETAIL.POSITION_INSTRUCTION);',
'$s(''P34_RAD_DETAIL_PATH_REVIEWED_1'', _.RAD_DETAIL.PATH_REVIEWED);',
'$s(''P34_RAD_DETAIL_RAD_REVIEWED_1'', _.RAD_DETAIL.RAD_REVIEWED);',
'$s(''P34_RAD_DETAIL_CT_INSTRUCTIONS_1'', _.RAD_DETAIL.CT_INSTRUCTIONS);',
'$s(''P34_RAD_DETAIL_SITE_STATUS'', _.RAD_DETAIL.STATUS);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95570004657186646)
,p_name=>'ExportReport'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(95569900037186645)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95570188783186647)
,p_event_id=>wwv_flow_imp.id(95570004657186646)
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
 p_id=>wwv_flow_imp.id(95570331714186649)
,p_event_id=>wwv_flow_imp.id(95570004657186646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "P_RADIATION_NO": $v("P34_RADIATION_NO"),',
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
 p_id=>wwv_flow_imp.id(105831108200821333)
,p_name=>'CloseDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103181815196933510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(105831247403821334)
,p_event_id=>wwv_flow_imp.id(105831108200821333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29949030342168041)
,p_name=>'SaveRadiationSite'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29948722916168038)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29949193074168042)
,p_event_id=>wwv_flow_imp.id(29949030342168041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P34_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "015" && $v("P34_RAD_DETAIL_DML_STATUS") == ''UPDATE'')) {',
'    apex.message.alert("Site is signed, cannot proceed");',
'    return;',
'}',
'if (($v("P34_RADIATION_DETAIL_STATUS_ID") === "009" && $v("P34_RAD_DETAIL_DML_STATUS") == ''UPDATE'')) {',
'    apex.message.alert("Site is cancelled, cannot proceed");',
'    return;',
'}',
'if ($v("P34_RAD_DETAIL_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationDetail");',
'}',
'else if ($v("P34_RAD_DETAIL_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationDetail");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29949727418168048)
,p_name=>'ExitSiteRegion'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29948893726168039)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29949816582168049)
,p_event_id=>wwv_flow_imp.id(29949727418168048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radiationsite'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30676375338716415)
,p_name=>'SetHistoryRadiationNo'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setradno'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30676450776716416)
,p_event_id=>wwv_flow_imp.id(30676375338716415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_HISTORY_RADIATION_NO'
,p_attribute_01=>'this.triggeringElement.dataset[''radno'']'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30676992273716421)
,p_name=>'SetMRNO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30677091922716422)
,p_event_id=>wwv_flow_imp.id(30676992273716421)
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
'  IF :P34_MRNO IS NOT NULL THEN',
'    BEGIN',
'      -- CALL THE PROCEDURE',
'      HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                   P_DISP_MRNO  => :P34_MRNO,',
'                   P_MRNO       => :P34_MRNO,',
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
'  IF :P34_MRNO IS NOT NULL AND :P34_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION',
'        INTO :P34_PATIENT_NAME, :P34_DISP_AGE, :P34_DISP_SEX',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P34_MRNO',
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
,p_attribute_02=>'P34_MRNO'
,p_attribute_03=>'P34_MRNO,P34_PATIENT_NAME,P34_DISP_AGE,P34_DISP_SEX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30678628351716438)
,p_name=>'SetHistoryRadiationNo1'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(29949909595168050)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30679569440716447)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30678746546716439)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P34_HISTORY_RADIATION_NO'', _.history.RADIATION_NO);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30679699473716448)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_ACC_RADIATION_NO,P34_RADIATION_DATE,P34_MRNO,P34_PATIENT_NAME,P34_DISP_AGE,P34_DISP_SEX,P34_PRIORITY,P34_RAD_ACC_REMARKS,P34_DOCTOR_ID,P34_DISP_DOCTOR,P34_TREATMENT_INTENT_ID,P34_DISP_TREATMENT_INTENT,P34_ICDNO,P34_DISP_DIAGNOSIS,P34_SIGN_BY_'
||'REQUEST,P34_REQUEST_ENTERED_BY,P34_ENTERED_BY_MRNO,P34_ANAESTHESIA,P34_CHEMOTHERAPY,P34_CHEMOTHERAPY_REMARKS,P34_SIMULATION_DATE,P34_STATUS_DESC,P34_ACTIVE_REQUEST,P34_SIGN_BY,P34_STATUS_REQUEST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30679424970716446)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
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
'    INTO :P34_RADIATION_NO,',
'         :P34_RADIATION_DATE,',
'         :P34_MRNO,',
'         :P34_PATIENT_NAME,',
'         :P34_DISP_AGE,',
'         :P34_DISP_SEX,',
'         :P34_PRIORITY,',
'         :P34_REMARKS,',
'         :P34_DOCTOR_ID,',
'         :P34_DISP_DOCTOR,',
'         :P34_TREATMENT_INTENT_ID,',
'         :P34_DISP_TREATMENT_INTENT,',
'         :P34_ICDNO,',
'         :P34_DISP_DIAGNOSIS,',
'         :P34_STATUS_REQUEST,',
'         :P34_SIGN_BY_REQUEST,',
'         :P34_REQUEST_ENTERED_BY,',
'         :P34_ENTERED_BY_MRNO,',
'         :P34_ANAESTHESIA,',
'         :P34_CHEMOTHERAPY,',
'         :P34_CHEMOTHERAPY_REMARKS,',
'         :P34_SIMULATION_DATE,',
'         :P34_STATUS_DESC,',
'         :P34_ACTIVE_REQUEST,',
'         :P34_SIGN_BY',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P34_HISTORY_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P34_HISTORY_RADIATION_NO,P34_MRNO'
,p_attribute_03=>'P34_RAD_ACC_RADIATION_NO,P34_RADIATION_DATE,P34_MRNO,P34_PATIENT_NAME,P34_DISP_AGE,P34_DISP_SEX,P34_PRIORITY,P34_RAD_ACC_REMARKS,P34_DOCTOR_ID,P34_DISP_DOCTOR,P34_TREATMENT_INTENT_ID,P34_DISP_TREATMENT_INTENT,P34_ICDNO,P34_DISP_DIAGNOSIS,P34_SIGN_BY_'
||'REQUEST,P34_REQUEST_ENTERED_BY,P34_ENTERED_BY_MRNO,P34_ANAESTHESIA,P34_CHEMOTHERAPY,P34_CHEMOTHERAPY_REMARKS,P34_SIMULATION_DATE,P34_STATUS_DESC,P34_ACTIVE_REQUEST,P34_SIGN_BY,P34_RADIATION_NO,P34_STATUS_REQUEST'
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
 p_id=>wwv_flow_imp.id(3473883395296031)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29945267452168003)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3474174116296034)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("refreshImage");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3474375666296036)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81107880104243622)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37864398970546302)
,p_event_id=>wwv_flow_imp.id(30678628351716438)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P34_STATUS_REQUEST") === "015") || ($v("P34_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P34_DOCTOR_ID").disable();',
'    apex.item("P34_TREATMENT_INTENT_ID").disable();',
'    apex.item("P34_ICDNO").disable();',
'    apex.item("P34_CHEMOTHERAPY").disable();',
'    apex.item("P34_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P34_ANAESTHESIA").disable();',
'    apex.item("P34_SIMULATION_DATE").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P34_DOCTOR_ID").enable();',
'    apex.item("P34_TREATMENT_INTENT_ID").enable();',
'    apex.item("P34_ICDNO").enable();',
'    apex.item("P34_CHEMOTHERAPY").enable();',
'    apex.item("P34_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P34_ANAESTHESIA").enable();',
'    apex.item("P34_SIMULATION_DATE").enable();',
'',
'}',
'',
'',
'',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3473989892296032)
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
 p_id=>wwv_flow_imp.id(3474014305296033)
,p_event_id=>wwv_flow_imp.id(3473989892296032)
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
'          x01: apex.item("P34_MRNO").getValue()',
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
 p_id=>wwv_flow_imp.id(3474701766296040)
,p_name=>'DeleteRadiationSite'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3474529091296038)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3474884331296041)
,p_event_id=>wwv_flow_imp.id(3474701766296040)
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
'                pageItems: ["P34_RAD_DETAIL_RADIATION_NO",',
'                    "P34_RAD_DETAIL_ROW_ID",',
'                    "P34_RAD_DETAIL_SITE_ID",',
'                    "P34_RAD_DETAIL_PLANNING_ID",',
'                    "P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'                    "P34_RAD_DETAIL_P1_DOSE",',
'                    "P34_RAD_DETAIL_P1_FRACTION",',
'                    "P34_RAD_DETAIL_P2_DOSE",',
'                    "P34_RAD_DETAIL_P2_FRACTION",',
'                    "P34_RAD_DETAIL_P3_DOSE",',
'                    "P34_RAD_DETAIL_P3_FRACTION",',
'                    "P34_RAD_DETAIL_TOT_DOSE",',
'                    "P34_RAD_TREATMENT_LATER",',
'                    "P34_RAD_ACTIVE",',
'                    "P34_RAD_DETAIL_EVENT_DESC",',
'                    "P34_RAD_DETAIL_SIM_CT_ID",',
'                    "P34_RAD_DETAIL_SETUP_POSITION",',
'                    "P34_RAD_DETAIL_ARM_POSITION",',
'                    "P34_RAD_DETAIL_NECK_POSITION",',
'                    "P34_RAD_DETAIL_POSITION_INSTRUCTION",',
'                    "P34_RAD_DETAIL_ANAESTHESIA",',
'                    "P34_RAD_DETAIL_PATH_REVIEWED",',
'                    "P34_RAD_DETAIL_RAD_REVIEWED",',
'                    "P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'                    "P34_RAD_DETAIL_CT_INSTRUCTIONS"',
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
 p_id=>wwv_flow_imp.id(32551015255462703)
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
 p_id=>wwv_flow_imp.id(32551167066462704)
,p_event_id=>wwv_flow_imp.id(32551015255462703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P34_RAD_DETAIL_RADIATION_NO",',
'            "P34_RAD_DETAIL_ROW_ID",',
'            "P34_RAD_DETAIL_SITE_ID",',
'            "P34_RAD_DETAIL_PLANNING_ID",',
'            "P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'            "P34_RAD_DETAIL_P1_DOSE",',
'            "P34_RAD_DETAIL_P1_FRACTION",',
'            "P34_RAD_DETAIL_P2_DOSE",',
'            "P34_RAD_DETAIL_P2_FRACTION",',
'            "P34_RAD_DETAIL_P3_DOSE",',
'            "P34_RAD_DETAIL_P3_FRACTION",',
'            "P34_RAD_DETAIL_TOT_DOSE",',
'            "P34_RAD_TREATMENT_LATER",',
'            "P34_RAD_ACTIVE",',
'            "P34_RAD_DETAIL_EVENT_DESC",',
'            "P34_RAD_DETAIL_SIM_CT_ID",',
'            "P34_RAD_DETAIL_SETUP_POSITION",',
'            "P34_RAD_DETAIL_ARM_POSITION",',
'            "P34_RAD_DETAIL_NECK_POSITION",',
'            "P34_RAD_DETAIL_POSITION_INSTRUCTION",',
'            "P34_RAD_DETAIL_ANAESTHESIA",',
'            "P34_RAD_DETAIL_PATH_REVIEWED",',
'            "P34_RAD_DETAIL_RAD_REVIEWED",',
'            "P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'            "P34_RAD_DETAIL_CT_INSTRUCTIONS"',
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
 p_id=>wwv_flow_imp.id(3776616232032013)
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
 p_id=>wwv_flow_imp.id(3776717927032014)
,p_event_id=>wwv_flow_imp.id(3776616232032013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P34_RAD_ACC_ACCESSORY_ID",',
'            "P34_RAD_ACC_REMARKS",',
'            "P34_RAD_ACC_RADIATION_NO",',
'            "P34_RAD_DETAIL_PLANNING_ID",',
'            "P34_RAD_ACC_SITE_ID",',
'            "P34_RAD_ACC_SRNO",',
'            "P34_RAD_ACC_PHASE_NO",',
'            "P34_RAD_ACC_STATUS_ID"',
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
 p_id=>wwv_flow_imp.id(3777230245032019)
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
 p_id=>wwv_flow_imp.id(3777323442032020)
,p_event_id=>wwv_flow_imp.id(3777230245032019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P34_RAD_ACC_ACCESSORY_ID",',
'            "P34_RAD_ACC_REMARKS",',
'            "P34_RAD_ACC_RADIATION_NO",',
'            "P34_RAD_DETAIL_PLANNING_ID",',
'            "P34_RAD_ACC_SITE_ID",',
'            "P34_RAD_ACC_SRNO",',
'            "P34_RAD_ACC_PHASE_NO",',
'            "P34_RAD_ACC_STATUS_ID"',
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
 p_id=>wwv_flow_imp.id(32551453630462707)
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
 p_id=>wwv_flow_imp.id(32551583903462708)
,p_event_id=>wwv_flow_imp.id(32551453630462707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P34_RAD_DETAIL_RADIATION_NO",',
'            "P34_RAD_DETAIL_ROW_ID",',
'            "P34_RAD_DETAIL_SITE_ID",',
'            "P34_RAD_DETAIL_PLANNING_ID",',
'            "P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'            "P34_RAD_DETAIL_P1_DOSE",',
'            "P34_RAD_DETAIL_P1_FRACTION",',
'            "P34_RAD_DETAIL_P2_DOSE",',
'            "P34_RAD_DETAIL_P2_FRACTION",',
'            "P34_RAD_DETAIL_P3_DOSE",',
'            "P34_RAD_DETAIL_P3_FRACTION",',
'            "P34_RAD_DETAIL_TOT_DOSE",',
'            "P34_RAD_TREATMENT_LATER",',
'            "P34_RAD_ACTIVE",',
'            "P34_RAD_DETAIL_EVENT_DESC",',
'            "P34_RAD_DETAIL_SIM_CT_ID",',
'            "P34_RAD_DETAIL_SETUP_POSITION",',
'            "P34_RAD_DETAIL_ARM_POSITION",',
'            "P34_RAD_DETAIL_NECK_POSITION",',
'            "P34_RAD_DETAIL_POSITION_INSTRUCTION",',
'            "P34_RAD_DETAIL_ANAESTHESIA",',
'            "P34_RAD_DETAIL_PATH_REVIEWED",',
'            "P34_RAD_DETAIL_RAD_REVIEWED",',
'            "P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'            "P34_RAD_DETAIL_CT_INSTRUCTIONS"',
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
 p_id=>wwv_flow_imp.id(3776420847032011)
,p_name=>'SaveradiationAccessory'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776352905032010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776502892032012)
,p_event_id=>wwv_flow_imp.id(3776420847032011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P34_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'if ($v("P34_RADIATION_DETAIL_STATUS_ID") === "015") {',
'    apex.message.alert("Site is signed, cannot proceed");',
'    return;',
'}',
'if ($v("P34_RADIATION_DETAIL_STATUS_ID") === "009") {',
'    apex.message.alert("Site is cancelled, cannot proceed");',
'    return;',
'}',
'',
'',
'if ($v("P34_RAD_ACC_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationAccessory");',
'}',
'else if ($v("P34_RAD_ACC_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationAccessory");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3778443463032031)
,p_name=>'DAApprove'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103182040081933512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323409770041073904)
,p_event_id=>wwv_flow_imp.id(3778443463032031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323409821074073905)
,p_event_id=>wwv_flow_imp.id(3778443463032031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P34_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P34_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P34_DISP_MRNO    := (:P34_PATIENT_TYPE ||',
'                         LPAD(:P34_PATIENT_MRNO, 8, ''0''));',
'    :P34_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P34_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P34_PATIENT_MRNO,P34_PATIENT_TYPE,P34_DISP_MRNO,P34_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323409905394073906)
,p_event_id=>wwv_flow_imp.id(3778443463032031)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_SIGN_STATUS").setValue("A");',
'apex.theme.openRegion("signdialog");',
'apex.item("P34_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3778694056032033)
,p_name=>'DACancel'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103181998819933511)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323409469293073901)
,p_event_id=>wwv_flow_imp.id(3778694056032033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323409543378073902)
,p_event_id=>wwv_flow_imp.id(3778694056032033)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P34_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P34_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P34_DISP_MRNO    := (:P34_PATIENT_TYPE ||',
'                         LPAD(:P34_PATIENT_MRNO, 8, ''0''));',
'    :P34_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P34_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P34_PATIENT_MRNO,P34_PATIENT_TYPE,P34_DISP_MRNO,P34_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323409696687073903)
,p_event_id=>wwv_flow_imp.id(3778694056032033)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_SIGN_STATUS").setValue("C");',
'apex.theme.openRegion("signdialog");',
'apex.item("P34_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3780099559032047)
,p_name=>'Clear'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3779526987032042)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323410566022073912)
,p_event_id=>wwv_flow_imp.id(3780099559032047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemsToEnable = [',
'    "P34_DOCTOR_ID",',
'    "P34_TREATMENT_INTENT_ID",',
'    "P34_ICDNO",',
'    "P34_CHEMOTHERAPY",',
'    "P34_CHEMOTHERAPY_REMARKS",',
'    "P34_ANAESTHESIA",',
'    "P34_SIMULATION_DATE",',
'    "save",',
'    "delete",',
'    "sign",',
'    "cancel",',
'    "approve"',
'];',
'',
'itemsToEnable.forEach(function (item) {',
'    apex.item(item).enable();',
'});',
'',
'apex.item("RAD_DETAIL").enable();',
'$("#RAD_DETAIL").css({',
'    "pointer-events": "",',
'    "background": ""',
'});',
'',
'apex.item("radiationAccessory").enable();',
'$("#radiationAccessory").css({',
'    "pointer-events": "",',
'    "background": ""',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4312332159724604)
,p_event_id=>wwv_flow_imp.id(3780099559032047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RADIATION_NO,P34_RADIATION_DATE,P34_ICDNO,P34_TREATMENT_INTENT_ID,P34_SIMULATION_DATE,P34_DOCTOR_ID,P34_CHEMOTHERAPY,P34_CHEMOTHERAPY_REMARKS,P34_REQUEST_ENTERED_BY,P34_SIGN_BY_REQUEST,P34_STATUS_DESC,P34_PRIORITY,P34_REMARKS,P34_DISP_DOCTOR,P34_'
||'DISP_TREATMENT_INTENT,P34_STATUS_REQUEST,P34_ENTERED_BY_MRNO,P34_ANAESTHESIA,P34_SIGN_BY,P34_ACTIVE_REQUEST,P34_DISP_DIAGNOSIS,P34_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314369663900318329)
,p_event_id=>wwv_flow_imp.id(3780099559032047)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81107880104243622)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314369704371318330)
,p_event_id=>wwv_flow_imp.id(3780099559032047)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95567319527186619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37649380306270611)
,p_name=>'ExitRadAccessory'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37649283076270610)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37649495867270612)
,p_event_id=>wwv_flow_imp.id(37649380306270611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radiationAccessorySub'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37649745101270615)
,p_name=>'SetTOTDose1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_P1_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37649801042270616)
,p_event_id=>wwv_flow_imp.id(37649745101270615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P34_RAD_DETAIL_P1_DOSE, 0) * NVL(:P34_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P2_DOSE, 0) * NVL(:P34_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P3_DOSE, 0) * NVL(:P34_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P34_RAD_DETAIL_P1_DOSE,P34_RAD_DETAIL_P1_FRACTION,P34_RAD_DETAIL_P2_DOSE,P34_RAD_DETAIL_P2_FRACTION,P34_RAD_DETAIL_P3_DOSE,P34_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37649926323270617)
,p_name=>'SetTOTDose2'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_P1_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37650022620270618)
,p_event_id=>wwv_flow_imp.id(37649926323270617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P34_RAD_DETAIL_P1_DOSE, 0) * NVL(:P34_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P2_DOSE, 0) * NVL(:P34_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P3_DOSE, 0) * NVL(:P34_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P34_RAD_DETAIL_P1_DOSE,P34_RAD_DETAIL_P1_FRACTION,P34_RAD_DETAIL_P2_DOSE,P34_RAD_DETAIL_P2_FRACTION,P34_RAD_DETAIL_P3_DOSE,P34_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37650181810270619)
,p_name=>'SetTOTDose3'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_P2_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37650220616270620)
,p_event_id=>wwv_flow_imp.id(37650181810270619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P34_RAD_DETAIL_P1_DOSE, 0) * NVL(:P34_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P2_DOSE, 0) * NVL(:P34_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P3_DOSE, 0) * NVL(:P34_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P34_RAD_DETAIL_P1_DOSE,P34_RAD_DETAIL_P1_FRACTION,P34_RAD_DETAIL_P2_DOSE,P34_RAD_DETAIL_P2_FRACTION,P34_RAD_DETAIL_P3_DOSE,P34_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37650310862270621)
,p_name=>'SetTOTDose4'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_P2_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37650426797270622)
,p_event_id=>wwv_flow_imp.id(37650310862270621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P34_RAD_DETAIL_P1_DOSE, 0) * NVL(:P34_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P2_DOSE, 0) * NVL(:P34_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P3_DOSE, 0) * NVL(:P34_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P34_RAD_DETAIL_P1_DOSE,P34_RAD_DETAIL_P1_FRACTION,P34_RAD_DETAIL_P2_DOSE,P34_RAD_DETAIL_P2_FRACTION,P34_RAD_DETAIL_P3_DOSE,P34_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37650548418270623)
,p_name=>'SetTOTDose5'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_P3_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37650681333270624)
,p_event_id=>wwv_flow_imp.id(37650548418270623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P34_RAD_DETAIL_P1_DOSE, 0) * NVL(:P34_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P2_DOSE, 0) * NVL(:P34_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P3_DOSE, 0) * NVL(:P34_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P34_RAD_DETAIL_P1_DOSE,P34_RAD_DETAIL_P1_FRACTION,P34_RAD_DETAIL_P2_DOSE,P34_RAD_DETAIL_P2_FRACTION,P34_RAD_DETAIL_P3_DOSE,P34_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
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
 p_id=>wwv_flow_imp.id(37650747071270625)
,p_name=>'SetTOTDose6'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_P3_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37650857893270626)
,p_event_id=>wwv_flow_imp.id(37650747071270625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P34_RAD_DETAIL_P1_DOSE, 0) * NVL(:P34_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P2_DOSE, 0) * NVL(:P34_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P34_RAD_DETAIL_P3_DOSE, 0) * NVL(:P34_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P34_RAD_DETAIL_P1_DOSE,P34_RAD_DETAIL_P1_FRACTION,P34_RAD_DETAIL_P2_DOSE,P34_RAD_DETAIL_P2_FRACTION,P34_RAD_DETAIL_P3_DOSE,P34_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37650942644270627)
,p_name=>'SerumCreatinineRequired'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_SIM_CT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37651459256270632)
,p_event_id=>wwv_flow_imp.id(37650942644270627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37651048826270628)
,p_event_id=>wwv_flow_imp.id(37650942644270627)
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
'  RADIATION.PKG_RADIATION.ORDER_SERUM_CRETININE(:P34_RAD_DETAIL_SIM_CT_ID,',
'                                                :GV_USER_MRNO,',
'                                                L_ALERT_TEXT,',
'                                                L_STOP);',
'',
'  IF L_STOP IS NOT NULL AND :P34_RAD_DETAIL_DML_STATUS = ''CREATE'' THEN',
'    :P34_SEURM_CREATININE_ALERT := L_ALERT_TEXT;',
'  ELSE',
'    :P34_SEURM_CREATININE_ALERT := NULL;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'  ',
'END;',
''))
,p_attribute_02=>'P34_RAD_DETAIL_SIM_CT_ID,P34_RAD_DETAIL_DML_STATUS'
,p_attribute_03=>'P34_SEURM_CREATININE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37651204978270630)
,p_event_id=>wwv_flow_imp.id(37650942644270627)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P34_SEURM_CREATININE_ALERT.'
,p_attribute_06=>'Ok'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P34_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37652339233270641)
,p_name=>'SetRadiationDetails'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37652439045270642)
,p_event_id=>wwv_flow_imp.id(37652339233270641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P34_RAD_DETAIL_ND_RADIATION_NO'', _.RAD_DETAIL.RADIATION_NO);',
'$s(''P34_RAD_DETAIL_ND_SITE_ID'', _.RAD_DETAIL.SITE_ID);',
'$s(''P34_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
' $("#RAD_DETAIL .a-GV-table tbody .a-GV-row").css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37864640997546305)
,p_name=>'SetUserRole'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37864724315546306)
,p_event_id=>wwv_flow_imp.id(37864640997546305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_USER_ROLE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO);'
,p_attribute_07=>'GV_USER_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37867492750546333)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37867525880546334)
,p_event_id=>wwv_flow_imp.id(37867492750546333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P34_MRNO IS NOT NULL THEN',
'  ',
'    :P34_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P34_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P34_MRNO);',
'      :P34_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P34_MRNO);',
'      :P34_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P34_MRNO);',
'      :P34_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P34_MRNO);',
'      :P34_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P34_MRNO);',
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
,p_attribute_02=>'P34_MRNO'
,p_attribute_03=>'P34_SYSTEM_CONSTANT_ID_428,P34_SERVICE_NO,P34_SERVICE_STATUS,P34_RANK,P34_FORMATION,P34_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37867666019546335)
,p_event_id=>wwv_flow_imp.id(37867492750546333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P34_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P34_SERVICE_NO").show();',
'    apex.item("P34_SERVICE_STATUS").show();',
'    apex.item("P34_RANK").show();',
'    apex.item("P34_FORMATION").show();',
'    apex.item("P34_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P34_SERVICE_NO").hide();',
'    apex.item("P34_SERVICE_STATUS").hide();',
'    apex.item("P34_RANK").hide();',
'    apex.item("P34_FORMATION").hide();',
'    apex.item("P34_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4341938911671804)
,p_name=>'RefreshRegion'
,p_event_sequence=>420
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4342718212671812)
,p_event_id=>wwv_flow_imp.id(4341938911671804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29949909595168050)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4342870900671813)
,p_event_id=>wwv_flow_imp.id(4341938911671804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81107880104243622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6141909860293429)
,p_name=>'PopulateDemographicsData'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6142030167293430)
,p_event_id=>wwv_flow_imp.id(6141909860293429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P34_MRNO IS NOT NULL OR :P34_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION, TO_CHAR(SYSDATE, ''DD-MON-RR HH24:MI'')',
'        INTO :P34_PATIENT_NAME, :P34_DISP_AGE, :P34_DISP_SEX, :P34_RADIATION_DATE',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P34_MRNO',
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
,p_attribute_02=>'P34_MRNO'
,p_attribute_03=>'P34_PATIENT_NAME,P34_DISP_AGE,P34_DISP_SEX,P34_RADIATION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6142555933293435)
,p_name=>'Save'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4312447855724605)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6142626209293436)
,p_event_id=>wwv_flow_imp.id(6142555933293435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_RAD_DETAIL_PATH_REVIEWED_1").enable();',
'apex.item("P34_RAD_DETAIL_RAD_REVIEWED_1").enable();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294521663660558225)
,p_event_id=>wwv_flow_imp.id(6142555933293435)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessDMLRadiationRequest",',
'    {',
'        pageItems: [',
'            "P34_RADIATION_NO",',
'            "P34_RADIATION_DATE",',
'            "P34_MRNO",',
'            "P34_PATIENT_NAME",',
'            "P34_DISP_AGE",',
'            "P34_DISP_SEX",',
'            "P34_PRIORITY",',
'            "P34_REMARKS",',
'            "P34_DOCTOR_ID",',
'            "P34_DISP_DOCTOR",',
'            "P34_TREATMENT_INTENT_ID",',
'            "P34_DISP_TREATMENT_INTENT",',
'            "P34_ICDNO",',
'            "P34_DISP_DIAGNOSIS",',
'            "P34_STATUS_REQUEST",',
'            "P34_SIGN_BY_REQUEST",',
'            "P34_REQUEST_ENTERED_BY",',
'            "P34_ENTERED_BY_MRNO",',
'            "P34_ANAESTHESIA",',
'            "P34_CHEMOTHERAPY",',
'            "P34_CHEMOTHERAPY_REMARKS",',
'            "P34_SIMULATION_DATE",',
'            "P34_STATUS_DESC",',
'            "P34_ACTIVE_REQUEST",',
'            "P34_SIGN_BY"',
'        ],',
'        X01: (!document.getElementById("P34_RADIATION_NO") || document.getElementById("P34_RADIATION_NO").value.trim() === "") ? "C" : "U"',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data, status, xhr) {',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'',
'            var X01 = (!document.getElementById("P34_RADIATION_NO") || document.getElementById("P34_RADIATION_NO").value.trim() === "") ? "C" : "U";',
'',
'            if (obj.status == "success") {',
'                if (X01 === ''C'') {',
'',
'                    var formattedDate = formatDate(obj.radiationDate);',
'',
'                    apex.item("P34_RADIATION_NO").setValue(obj.radiationNo);',
'                    apex.item("P34_RADIATION_DATE").setValue(formattedDate);',
'',
'                    apex.item("P34_RADIATION_NO").refresh();',
'                    apex.item("P34_RADIATION_DATE").refresh();',
'                }',
'',
'                apex.message.alert(obj.response, function () {',
'',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'            else {',
'',
'                apex.message.alert(obj.response, function () {',
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
'',
'',
'',
'function formatDate(dateString) {',
'    var date = new Date(dateString);',
'',
'',
'    if (isNaN(date)) {',
'        return '''';',
'    }',
'',
'',
'    var day = date.getUTCDate();',
'    var month = date.getUTCMonth();',
'    var year = date.getUTCFullYear();',
'    var hours = date.getUTCHours();',
'    var minutes = date.getUTCMinutes();',
'',
'',
'    var monthNames = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];',
'',
'',
'    var yearShort = year.toString().slice(-2);',
'',
'',
'    day = day < 10 ? "0" + day : day;',
'    hours = hours < 10 ? "0" + hours : hours;',
'    minutes = minutes < 10 ? "0" + minutes : minutes;',
'',
'',
'    return day + "-" + monthNames[month] + "-" + yearShort + " " + hours + ":" + minutes;',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43328910989050211)
,p_name=>'New_1'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_ND_RADIATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43329027482050212)
,p_event_id=>wwv_flow_imp.id(43328910989050211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95567319527186619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43329149811050213)
,p_name=>'New_2'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_ND_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>600
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43329213075050214)
,p_event_id=>wwv_flow_imp.id(43329149811050213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95567319527186619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295422308657153305)
,p_name=>'DA_Icd_Lov'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_ICDNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295422432578153306)
,p_event_id=>wwv_flow_imp.id(295422308657153305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295422532312153307)
,p_name=>'DA_DoctorId_Lov'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_DOCTOR_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295422696338153308)
,p_event_id=>wwv_flow_imp.id(295422532312153307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295422988454153311)
,p_name=>'DA_RadDetail_Lov'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_SIM_CT_ID_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295423044494153312)
,p_event_id=>wwv_flow_imp.id(295422988454153311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295423125343153313)
,p_name=>'DA_Setup_Position'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_SETUP_POSITION_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295423206854153314)
,p_event_id=>wwv_flow_imp.id(295423125343153313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295423385029153315)
,p_name=>'DA_Arm_Position'
,p_event_sequence=>570
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_ARM_POSITION_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295423455560153316)
,p_event_id=>wwv_flow_imp.id(295423385029153315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295423517619153317)
,p_name=>'DA_RAD_NECK'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_NECK_POSITION_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295423683991153318)
,p_event_id=>wwv_flow_imp.id(295423517619153317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295422740088153309)
,p_name=>'DA_Treatment_Lov'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_TREATMENT_INTENT_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295422881604153310)
,p_event_id=>wwv_flow_imp.id(295422740088153309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314369194230318324)
,p_name=>'DARadiationDetailSiteId'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RADIATION_DETAIL_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323412180269073928)
,p_event_id=>wwv_flow_imp.id(314369194230318324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P34_USER_ROLE := RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO);'
,p_attribute_03=>'P34_USER_ROLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314369261904318325)
,p_event_id=>wwv_flow_imp.id(314369194230318324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Get user role and status from the page items',
'var userRole = apex.item("P34_USER_ROLE").getValue(); // Get user role',
'var statusId = apex.item("P34_RADIATION_DETAIL_STATUS_ID").getValue(); // Get status ID',
'',
'// If statusId is null, undefined, or empty string, assign it the default value ''020''',
'if (statusId === null || statusId === undefined || statusId === "") {',
'statusId = "020";',
'}',
'',
'// Check if the user is neither Resident nor Consultant, or if the status is Cancelled (''009'')',
'if (!(userRole === "R" || userRole === "C") || statusId === "009") {',
'// User is neither Consultant nor Resident, or status is Cancelled',
'',
'// Disable the radiation detail and accessories regions',
'apex.item("RAD_DETAIL").disable();',
'$("#RAD_DETAIL").css({',
'"pointer-events": "none",',
'"background": "none"',
'});',
'',
'apex.item("radiationAccessory").disable();',
'$("#radiationAccessory").css({',
'"pointer-events": "none",',
'"background": "none"',
'});',
'',
'// Disable the control buttons',
'apex.item("cancel").disable();',
'apex.item("approve").disable();',
'apex.item("sign").disable();',
'apex.item("save").disable();',
'',
'} else {',
'// Check for Entry Status (status ''020'')',
'if (statusId === "020") {',
'// Enable/Disable Block Properties for Radiation Detail and Accessories',
'apex.item("RAD_DETAIL").enable();',
'$("#RAD_DETAIL").css({',
'"pointer-events": "",',
'"background": ""',
'});',
'',
'apex.item("radiationAccessory").enable();',
'$("#radiationAccessory").css({',
'"pointer-events": "",',
'"background": ""',
'});',
'',
'if (userRole === "C") { // If user role is Consultant',
'// Enable/Disable Control Buttons for Consultant',
'apex.item("cancel").enable();',
'apex.item("delete").enable();',
'apex.item("save").enable();',
'',
'if (apex.item("GV_USER_MRNO").getValue() === apex.item("P34_ENTERED_BY_MRNO").getValue()) {',
'// If the user is the one who entered the record, allow SIGN button and hide APPROVE button',
'apex.item("sign").enable();',
'apex.item("approve").disable();',
'} else {',
'// If user is not the one who entered the record, show both SIGN and APPROVE buttons',
'apex.item("sign").enable();',
'apex.item("approve").enable();',
'}',
'} else if (userRole === "R") { // If user role is Resident',
'// Enable/Disable Control Buttons for Resident',
'apex.item("save").enable();',
'apex.item("delete").enable();',
'apex.item("sign").enable();',
'apex.item("approve").disable();',
'apex.item("cancel").enable();',
'}',
'',
'} else if (statusId === "021") { // Resident Signed',
'apex.item("RAD_DETAIL").enable();',
'$("#RAD_DETAIL").css({',
'"pointer-events": "",',
'"background": ""',
'});',
'',
'apex.item("radiationAccessory").enable();',
'$("#radiationAccessory").css({',
'"pointer-events": "",',
'"background": ""',
'});',
'',
'apex.item("sign").disable();',
'',
'if (userRole === "C") { // If user role is Consultant',
'apex.item("cancel").enable();',
'apex.item("delete").enable();',
'apex.item("save").enable();',
'apex.item("approve").enable();',
'} else { // If user role is not Consultant',
'apex.item("cancel").disable();',
'apex.item("delete").disable();',
'apex.item("save").enable();',
'apex.item("approve").disable();',
'}',
'',
'} else if (statusId === "015") { // Consultant Signed',
'apex.item("delete").disable();',
'apex.item("save").disable();',
'apex.item("approve").disable();',
'apex.item("sign").disable();',
'',
'if (userRole === "C") { // If user role is Consultant',
'apex.item("cancel").enable();',
'} else { // If user role is not Consultant',
'apex.item("cancel").disable(); // Corrected to disable the cancel button for non-Consultants',
'}',
'}',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413925211073946)
,p_event_id=>wwv_flow_imp.id(314369194230318324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationMasterStatusRequest = apex.item("P34_STATUS_REQUEST").getValue();',
'',
'',
'if (radiationMasterStatusRequest === null || radiationMasterStatusRequest === undefined || radiationMasterStatusRequest === "") {',
'    radiationMasterStatusRequest = "020";',
'}',
'',
'if (radiationMasterStatusRequest === "020") {',
'    apex.item("rad_master").enable();',
'    $("#rad_master").css({',
'        "pointer-events": "",',
'        "background": ""',
'    });',
'',
'',
'} else {',
'',
'    apex.item("rad_master").disable();',
'    $("#rad_master").css({',
'        "pointer-events": "none",',
'        "background": "none"',
'    });',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314369808211318331)
,p_name=>'DARadSite'
,p_event_sequence=>640
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_DETAIL_SITE_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314369967593318332)
,p_event_id=>wwv_flow_imp.id(314369808211318331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314370056077318333)
,p_name=>'DASign'
,p_event_sequence=>650
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103181434129933506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314370112971318334)
,p_event_id=>wwv_flow_imp.id(314370056077318333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314370243217318335)
,p_event_id=>wwv_flow_imp.id(314370056077318333)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P34_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P34_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P34_DISP_MRNO    := (:P34_PATIENT_TYPE ||',
'                         LPAD(:P34_PATIENT_MRNO, 8, ''0''));',
'    :P34_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P34_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P34_PATIENT_MRNO,P34_PATIENT_TYPE,P34_DISP_MRNO,P34_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314370385784318336)
,p_event_id=>wwv_flow_imp.id(314370056077318333)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_SIGN_STATUS").setValue("S");',
'apex.theme.openRegion("signdialog");',
'apex.item("P34_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314370443579318337)
,p_name=>'DABack'
,p_event_sequence=>660
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(323146328570146273)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314370584657318338)
,p_event_id=>wwv_flow_imp.id(314370443579318337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(476570281377696490)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314370676624318339)
,p_name=>'SetMRNO1'
,p_event_sequence=>670
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_PATIENT_MRNO'
,p_condition_element=>'P34_PATIENT_MRNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314370802452318341)
,p_event_id=>wwv_flow_imp.id(314370676624318339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_PASSWORD,P34_PATIENT_NAME,P34_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314370931357318342)
,p_event_id=>wwv_flow_imp.id(314370676624318339)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P34_PATIENT_TYPE IS NOT NULL AND :P34_PATIENT_MRNO IS NOT NULL THEN',
'    :P34_DISP_MRNO := :P34_PATIENT_TYPE || LPAD(:P34_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P34_PATIENT_TYPE,P34_PATIENT_MRNO'
,p_attribute_03=>'P34_DISP_MRNO'
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
 p_id=>wwv_flow_imp.id(314371090546318343)
,p_event_id=>wwv_flow_imp.id(314370676624318339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P34_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P34_DISP_MRNO);'
,p_attribute_02=>'P34_DISP_MRNO'
,p_attribute_03=>'P34_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314371139973318344)
,p_event_id=>wwv_flow_imp.id(314370676624318339)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_PASSWORD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314371264947318345)
,p_name=>'DASignRequest'
,p_event_sequence=>680
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(323145923302146272)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323414076515073947)
,p_event_id=>wwv_flow_imp.id(314371264947318345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_SUCCESS_MSG").setValue('''');',
'apex.item("P34_TXT_ALERT_TEXT").setValue('''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314371514214318348)
,p_event_id=>wwv_flow_imp.id(314371264947318345)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P34_TXT_ALERT_TEXT := null;',
'  :P34_SUCCESS_MSG    := null;',
'  :P34_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P34_DISP_MRNO,',
'                                          :P34_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P34_TXT_ALERT_TEXT := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P34_VALIDATE'', ''N'');',
'    RETURN;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
'    :P34_TXT_ALERT_TEXT := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P34_DISP_MRNO,P34_PASSWORD'
,p_attribute_03=>'P34_TXT_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314371651865318349)
,p_event_id=>wwv_flow_imp.id(314371264947318345)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ALERT_TEXT  VARCHAR2(4000);',
'P_STOP        VARCHAR2(1);',
'V_RETURN_ITEM VARCHAR2(100);',
'EX_EXCEPTION EXCEPTION;',
'BEGIN',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''N'');',
'IF NVL(:P34_SIGN_STATUS, ''~'') = ''S'' THEN',
'RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'     P_LOCATION_ID     => :GV_LOCATION_ID,',
'     P_RADIATION_NO    => :P34_RADIATION_NO,',
'     P_SITE_ID         => :P34_RAD_DETAIL_ND_SITE_ID,',
'     P_USER_MRNO       => :P34_DISP_MRNO,',
'     P_OBJECT_CODE     => ''S18FRM00128'',',
'     P_TERMINAL        => :GV_TERMINAL,',
'     P_ALERT_TEXT      => V_ALERT_TEXT,',
'     P_STOP            => P_STOP);',
'Apex_Util.Set_Session_State(''P34_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P34_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'RETURN;',
'ELSE',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
':P34_TXT_ALERT_TEXT := NULL;',
':P34_SUCCESS_MSG    := ''Request Signed Successfully'';',
'END IF;',
'',
'ELSIF NVL(:P34_SIGN_STATUS, ''~'') = ''A'' THEN',
'RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'        P_LOCATION_ID     => :GV_LOCATION_ID,',
'        P_RADIATION_NO    => :P34_RADIATION_NO,',
'        P_SITE_ID         => :P34_RAD_DETAIL_ND_SITE_ID,',
'        P_USER_MRNO       => :P34_DISP_MRNO,',
'        P_OBJECT_CODE     => ''S18FRM00128'',',
'        P_TERMINAL        => :GV_TERMINAL,',
'        P_ALERT_TEXT      => V_ALERT_TEXT,',
'        P_STOP            => P_STOP);',
'Apex_Util.Set_Session_State(''P34_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P34_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'RETURN;',
'ELSE',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
':P34_TXT_ALERT_TEXT := NULL;',
':P34_SUCCESS_MSG    := ''Request Approved Successfully'';',
'END IF;',
'ELSE',
'IF NVL(:P34_SIGN_STATUS, ''~'') = ''C'' THEN',
'RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P34_RADIATION_NO,',
'         P_MRNO              => :P34_MRNO,',
'         P_SITE_ID           => :P34_RAD_DETAIL_ND_SITE_ID,',
'         P_USER_MRNO         => :P34_DISP_MRNO,',
'         P_AUTHORIZED_USER   => ''N'',',
'         P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'         P_LOCATION_ID       => :GV_LOCATION_ID,',
'         P_ORDER_LOCATION_ID => :GV_ORDER_LOCATION_ID,',
'         P_OBJECT_CODE       => ''S18FRM00128'',',
'         P_TERMINAL          => :GV_TERMINAL,',
'         P_ALERT_TEXT        => V_ALERT_TEXT,',
'         P_STOP              => P_STOP);',
'Apex_Util.Set_Session_State(''P34_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P34_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'RETURN;',
'ELSE',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
':P34_TXT_ALERT_TEXT := NULL;',
':P34_SUCCESS_MSG    := ''Request Cancelled Successfully'';',
'END IF;',
'END IF;',
'END IF;',
'END;',
''))
,p_attribute_02=>'P34_SIGN_STATUS,P34_RADIATION_NO,P34_RAD_DETAIL_ND_SITE_ID,P34_DISP_MRNO,P34_MRNO'
,p_attribute_03=>'P34_TXT_ALERT_TEXT,P34_LOGIN_MESSAGE,P34_SUCCESS_MSG,P34_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323410433520073911)
,p_event_id=>wwv_flow_imp.id(314371264947318345)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29949909595168050)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413644818073943)
,p_event_id=>wwv_flow_imp.id(314371264947318345)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81107880104243622)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323410013285073907)
,p_name=>'DASuccessMessage'
,p_event_sequence=>690
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_SUCCESS_MSG'
,p_condition_element=>'P34_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323410125702073908)
,p_event_id=>wwv_flow_imp.id(323410013285073907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P34_SUCCESS_MSG.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323410289645073909)
,p_name=>'DAAlertMessage'
,p_event_sequence=>700
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_TXT_ALERT_TEXT'
,p_condition_element=>'P34_TXT_ALERT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323410328671073910)
,p_event_id=>wwv_flow_imp.id(323410289645073909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P34_TXT_ALERT_TEXT.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323411301997073920)
,p_name=>'DARadAccID'
,p_event_sequence=>710
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_RAD_ACC_ACCESSORY_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323411453678073921)
,p_event_id=>wwv_flow_imp.id(323411301997073920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323411511507073922)
,p_name=>'DisableCTGrid'
,p_event_sequence=>720
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323411654549073923)
,p_event_id=>wwv_flow_imp.id(323411511507073922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("ctdetail").disable();',
'$("#ctdetail").css({',
'    "pointer-events": "none",',
'    "background": "none"',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323412449332073931)
,p_name=>'DAPassword'
,p_event_sequence=>730
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323414185566073948)
,p_event_id=>wwv_flow_imp.id(323412449332073931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_SUCCESS_MSG").setValue('''');',
'apex.item("P34_TXT_ALERT_TEXT").setValue('''');',
'apex.item("P34_VALIDATE").setValue(''Y'');',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323414298465073949)
,p_event_id=>wwv_flow_imp.id(323412449332073931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1) := ''N'';',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P34_TXT_ALERT_TEXT := null;',
'  :P34_SUCCESS_MSG    := null;',
'  :P34_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P34_DISP_MRNO,',
'                                          :P34_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P34_TXT_ALERT_TEXT := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P34_VALIDATE'', ''N'');',
'    RETURN;',
'  ELSE',
'    :P34_TXT_ALERT_TEXT := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P34_DISP_MRNO,P34_PASSWORD'
,p_attribute_03=>'P34_TXT_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323414357530073950)
,p_event_id=>wwv_flow_imp.id(323412449332073931)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ALERT_TEXT  VARCHAR2(4000);',
'P_STOP        VARCHAR2(1);',
'V_RETURN_ITEM VARCHAR2(100);',
'EX_EXCEPTION EXCEPTION;',
'BEGIN',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''N'');',
'IF NVL(:P34_SIGN_STATUS, ''~'') = ''S'' THEN',
'RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'     P_LOCATION_ID     => :GV_LOCATION_ID,',
'     P_RADIATION_NO    => :P34_RADIATION_NO,',
'     P_SITE_ID         => :P34_RAD_DETAIL_ND_SITE_ID,',
'     P_USER_MRNO       => :P34_DISP_MRNO,',
'     P_OBJECT_CODE     => ''S18FRM00128'',',
'     P_TERMINAL        => :GV_TERMINAL,',
'     P_ALERT_TEXT      => V_ALERT_TEXT,',
'     P_STOP            => P_STOP);',
'Apex_Util.Set_Session_State(''P34_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P34_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'RETURN;',
'ELSE',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
':P34_TXT_ALERT_TEXT := NULL;',
':P34_SUCCESS_MSG    := ''Request Signed Successfully'';',
'END IF;',
'',
'ELSIF NVL(:P34_SIGN_STATUS, ''~'') = ''A'' THEN',
'RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'        P_LOCATION_ID     => :GV_LOCATION_ID,',
'        P_RADIATION_NO    => :P34_RADIATION_NO,',
'        P_SITE_ID         => :P34_RAD_DETAIL_ND_SITE_ID,',
'        P_USER_MRNO       => :P34_DISP_MRNO,',
'        P_OBJECT_CODE     => ''S18FRM00128'',',
'        P_TERMINAL        => :GV_TERMINAL,',
'        P_ALERT_TEXT      => V_ALERT_TEXT,',
'        P_STOP            => P_STOP);',
'Apex_Util.Set_Session_State(''P34_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P34_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'RETURN;',
'ELSE',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
':P34_TXT_ALERT_TEXT := NULL;',
':P34_SUCCESS_MSG    := ''Request Approved Successfully'';',
'END IF;',
'ELSE',
'IF NVL(:P34_SIGN_STATUS, ''~'') = ''C'' THEN',
'RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P34_RADIATION_NO,',
'         P_MRNO              => :P34_MRNO,',
'         P_SITE_ID           => :P34_RAD_DETAIL_ND_SITE_ID,',
'         P_USER_MRNO         => :P34_DISP_MRNO,',
'         P_AUTHORIZED_USER   => ''N'',',
'         P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'         P_LOCATION_ID       => :GV_LOCATION_ID,',
'         P_ORDER_LOCATION_ID => :GV_ORDER_LOCATION_ID,',
'         P_OBJECT_CODE       => ''S18FRM00128'',',
'         P_TERMINAL          => :GV_TERMINAL,',
'         P_ALERT_TEXT        => V_ALERT_TEXT,',
'         P_STOP              => P_STOP);',
'Apex_Util.Set_Session_State(''P34_LOGIN_MESSAGE'',',
'''V_RETURN_ITEM '' || '' P_STOP '' || P_STOP);',
'IF NVL(P_STOP, ''N'') = ''Y'' THEN',
':P34_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'RETURN;',
'ELSE',
'Apex_Util.Set_Session_State(''P34_VALIDATE'', ''Y'');',
':P34_TXT_ALERT_TEXT := NULL;',
':P34_SUCCESS_MSG    := ''Request Cancelled Successfully'';',
'END IF;',
'END IF;',
'END IF;',
'END;',
''))
,p_attribute_02=>'P34_SIGN_STATUS,P34_RADIATION_NO,P34_RAD_DETAIL_ND_SITE_ID,P34_DISP_MRNO,P34_MRNO'
,p_attribute_03=>'P34_TXT_ALERT_TEXT,P34_LOGIN_MESSAGE,P34_SUCCESS_MSG,P34_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(325201924266513901)
,p_event_id=>wwv_flow_imp.id(323412449332073931)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29949909595168050)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(325202054100513902)
,p_event_id=>wwv_flow_imp.id(323412449332073931)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81107880104243622)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323413071652073937)
,p_name=>'DADeleteRequest'
,p_event_sequence=>740
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103181717723933509)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413195768073938)
,p_event_id=>wwv_flow_imp.id(323413071652073937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm you want to delete this request?'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413339395073940)
,p_event_id=>wwv_flow_imp.id(323413071652073937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P34_RAD_DETAIL_PATH_REVIEWED_1").enable();',
'apex.item("P34_RAD_DETAIL_RAD_REVIEWED_1").enable();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413224222073939)
,p_event_id=>wwv_flow_imp.id(323413071652073937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessDeleteRadiationRequest",',
'    {',
'        pageItems: [',
'            "P34_RADIATION_NO",',
'            "P34_RADIATION_DATE",',
'            "P34_MRNO",',
'            "P34_PATIENT_NAME",',
'            "P34_DISP_AGE",',
'            "P34_DISP_SEX",',
'            "P34_PRIORITY",',
'            "P34_REMARKS",',
'            "P34_DOCTOR_ID",',
'            "P34_DISP_DOCTOR",',
'            "P34_TREATMENT_INTENT_ID",',
'            "P34_DISP_TREATMENT_INTENT",',
'            "P34_ICDNO",',
'            "P34_DISP_DIAGNOSIS",',
'            "P34_STATUS_REQUEST",',
'            "P34_SIGN_BY_REQUEST",',
'            "P34_REQUEST_ENTERED_BY",',
'            "P34_ENTERED_BY_MRNO",',
'            "P34_ANAESTHESIA",',
'            "P34_CHEMOTHERAPY",',
'            "P34_CHEMOTHERAPY_REMARKS",',
'            "P34_SIMULATION_DATE",',
'            "P34_STATUS_DESC",',
'            "P34_ACTIVE_REQUEST",',
'            "P34_SIGN_BY"',
'        ],',
'        X01: "D"',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data, status, xhr) {',
'            var obj = JSON.parse(data);',
'            console.log(data);',
'            console.log(obj);',
'',
'            var X01 = (!document.getElementById("P34_RADIATION_NO") || document.getElementById("P34_RADIATION_NO").value.trim() === "") ? "C" : "U";',
'',
'            if (obj.status == "success") {',
'',
'',
'                apex.message.alert(obj.response, function () {',
'',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'            }',
'            else {',
'',
'                apex.message.alert(obj.response, function () {',
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
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413415629073941)
,p_event_id=>wwv_flow_imp.id(323413071652073937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29949909595168050)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323413500697073942)
,p_event_id=>wwv_flow_imp.id(323413071652073937)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3470842985296001)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3470974601296002)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationMaster'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RM.RADIATION_NO,',
'         TO_CHAR(RADIATION_DATE, ''DD-MON-RR HH24:MI''),',
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
'         NVL(STATUS_REQUEST, ''020''), ',
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
'    INTO :P34_RADIATION_NO,',
'         :P34_RADIATION_DATE,',
'         :P34_MRNO,',
'         :P34_PATIENT_NAME,',
'         :P34_DISP_AGE,',
'         :P34_DISP_SEX,',
'         :P34_PRIORITY,',
'         :P34_REMARKS,',
'         :P34_DOCTOR_ID,',
'         :P34_DISP_DOCTOR,',
'         :P34_TREATMENT_INTENT_ID,',
'         :P34_DISP_TREATMENT_INTENT,',
'         :P34_ICDNO,',
'         :P34_DISP_DIAGNOSIS,',
'         :P34_STATUS_REQUEST,',
'         :P34_SIGN_BY_REQUEST,',
'         :P34_REQUEST_ENTERED_BY,',
'         :P34_ENTERED_BY_MRNO,',
'         :P34_ANAESTHESIA,',
'         :P34_CHEMOTHERAPY,',
'         :P34_CHEMOTHERAPY_REMARKS,',
'         :P34_SIMULATION_DATE,',
'         :P34_STATUS_DESC,',
'         :P34_ACTIVE_REQUEST,',
'         :P34_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P34_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
'     AND RM.MRNO = :P34_MRNO',
'     AND RM.RADIOTHERAPY_TYPE = ''T'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>3470974601296002
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29949358039168044)
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
'    SELECT :P34_RAD_DETAIL_RADIATION_NO RADIATION_NO,',
'           :P34_RAD_DETAIL_SITE_ID SITE_ID,',
'           NULL DISP_SITE,',
'           :P34_RAD_DETAIL_SIM_CT_ID SIM_CT_ID,',
'           NULL DIPS_SIM_CT,',
'           :P34_RAD_DETAIL_TREATMENT_TECHNIQUE_ID TREATMENT_TECHNIQUE_ID,',
'           NULL DISP_TREATMENT_TECHNIQUE,',
'           (SELECT PLANNING_PREFIX',
'              FROM RADIATION.PLANNING',
'             WHERE PLANNING_ID = :P34_RAD_DETAIL_PLANNING_ID) PLANNING,',
'           :P34_RAD_DETAIL_PLANNING_ID PLANNING_ID,',
'           NULL DISP_PLANNING,',
'           :P34_RAD_DETAIL_NECK_POSITION NECK_POSITION,',
'           :P34_RAD_DETAIL_SETUP_POSITION SETUP_POSITION,',
'           :P34_RAD_DETAIL_ARM_POSITION ARM_POSITION,',
'           :P34_RAD_DETAIL_P1_DOSE P1_DOSE_FRACTION,',
'           :P34_RAD_DETAIL_P1_FRACTION P1_NO_OF_FRACTION,',
'           :P34_RAD_DETAIL_P2_DOSE P2_DOSE_FRACTION,',
'           :P34_RAD_DETAIL_P2_FRACTION P2_NO_OF_FRACTION,',
'           :P34_RAD_DETAIL_P3_DOSE P3_DOSE_FRACTION,',
'           :P34_RAD_DETAIL_P3_FRACTION P3_NO_OF_FRACTION,',
'           :P34_RAD_TREATMENT_LATER TREATMENT_LATER,',
'           :P34_RAD_ACTIVE ACTIVE,',
'           :P34_RAD_DETAIL_POSITION_INSTRUCTION POSITION_INSTRUCTION,',
'           NULL WFE_NO,',
'           NULL EVENT_DESC,',
'           :P34_RAD_DETAIL_CT_INSTRUCTIONS CT_INSTRUCTIONS,',
'           NULL SETUP_POSITION_DESC,',
'           NULL ARM_POSITION_DESC,',
'           NULL NECK_POSITION_DESC,',
'           :P34_RAD_DETAIL_STATUS_ID STATUS_ID,',
'           NULL STATUS_DESC,',
'           :P34_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY CONCURRENT_BRACHYTHERAPHY,',
'           :P34_RAD_DETAIL_PATH_REVIEWED PATH_REVIEWED,',
'           :P34_RAD_DETAIL_RAD_REVIEWED RAD_REVIEWED,',
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
,p_internal_uid=>29949358039168044
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(91212767740989392)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDMLRadiationRequest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RADIATION_NO         RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  L_RADIATION_MASTER_TAB RADIATION.PKG_S18FRM00128.RADIATION_MASTER_TAB;',
'  L_MRNO                 RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT NUMBER;',
'BEGIN',
'',
'  IF APEX_APPLICATION.G_X01 IS NULL THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF :P34_MRNO IS NOT NULL THEN',
'    L_MRNO := :P34_MRNO;',
'  END IF;',
'',
'  IF :P34_RADIATION_NO IS NULL THEN',
'    L_RADIATION_NO := RADIATION.PKG_RADIATION.GENERATE_RADIATION_NO(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                                    P_LOCATION_ID     => :GV_LOCATION_ID,',
'                                                                    P_REQUEST_DATE    => NVL(TO_DATE(:P34_RADIATION_DATE,',
'                                                                                                     ''DD-MON-YY HH24:MI''),',
'                                                                                             TO_DATE(SYSDATE,',
'                                                                                                     ''DD-MON-YY HH24:MI'')));',
'  END IF;',
'',
'  SELECT NVL(:P34_RADIATION_NO, L_RADIATION_NO),',
'         NVL(TO_DATE(:P34_RADIATION_DATE, ''DD-MON-YY HH24:MI''),',
'             TO_DATE(SYSDATE, ''DD-MON-YY HH24:MI'')),',
'         :P34_MRNO,',
'         :P34_PATIENT_NAME,',
'         :P34_DISP_AGE,',
'         :P34_DISP_SEX,',
'         NVL(:P34_PRIORITY, ''S''),',
'         :P34_REMARKS,',
'         :P34_DOCTOR_ID,',
'         :P34_DISP_DOCTOR,',
'         :P34_TREATMENT_INTENT_ID,',
'         :P34_DISP_TREATMENT_INTENT,',
'         :P34_ICDNO,',
'         :P34_DISP_DIAGNOSIS,',
'         NVL(:P34_STATUS_REQUEST, ''020''),',
'         :P34_SIGN_BY_REQUEST,',
'         :P34_REQUEST_ENTERED_BY,',
'         NVL(:P34_ENTERED_BY_MRNO,:GV_USER_MRNO),',
'         NVL(:P34_ANAESTHESIA, ''N''),',
'         NVL(:P34_CHEMOTHERAPY, ''N''),',
'         :P34_CHEMOTHERAPY_REMARKS,',
'         :P34_SIMULATION_DATE,',
'         :P34_STATUS_DESC,',
'         :P34_ACTIVE_REQUEST,',
'         :P34_SIGN_BY',
'    BULK COLLECT',
'    INTO L_RADIATION_MASTER_TAB',
'    FROM DUAL;',
'',
'  IF APEX_APPLICATION.G_X01 = ''C'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00128.INSERT_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'    END;',
'  ',
'  ELSIF APEX_APPLICATION.G_X01 = ''U'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00128.UPDATE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'    END;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''radiationNo'', L_RADIATION_NO);',
'  APEX_JSON.WRITE(''radiationDate'', L_RADIATION_MASTER_TAB(1).RADIATION_DATE);',
'  APEX_JSON.WRITE(''response'', ''The request has been saved successfully'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    L_ALERT_TEXT := ''DML status not provided or invalid.'';',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>91212767740989392
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
 p_id=>wwv_flow_imp.id(323412965959073936)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDeleteRadiationRequest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RADIATION_NO         RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  L_RADIATION_MASTER_TAB RADIATION.PKG_S18FRM00128.RADIATION_MASTER_TAB;',
'  L_MRNO                 RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT NUMBER;',
'BEGIN',
'',
'  IF APEX_APPLICATION.G_X01 IS NULL THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF :P34_MRNO IS NOT NULL THEN',
'    L_MRNO := :P34_MRNO;',
'  END IF;',
'',
'  IF :P34_RADIATION_NO IS NULL THEN',
'    L_RADIATION_NO := RADIATION.PKG_RADIATION.GENERATE_RADIATION_NO(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                                    P_LOCATION_ID     => :GV_LOCATION_ID,',
'                                                                    P_REQUEST_DATE    => NVL(TO_DATE(:P34_RADIATION_DATE,',
'                                                                                                     ''DD-MON-YY HH24:MI''),',
'                                                                                             TO_DATE(SYSDATE,',
'                                                                                                     ''DD-MON-YY HH24:MI'')));',
'  END IF;',
'',
'  SELECT NVL(:P34_RADIATION_NO, L_RADIATION_NO),',
'         NVL(TO_DATE(:P34_RADIATION_DATE, ''DD-MON-YY HH24:MI''),',
'             TO_DATE(SYSDATE, ''DD-MON-YY HH24:MI'')),',
'         :P34_MRNO,',
'         :P34_PATIENT_NAME,',
'         :P34_DISP_AGE,',
'         :P34_DISP_SEX,',
'         NVL(:P34_PRIORITY, ''S''),',
'         :P34_REMARKS,',
'         :P34_DOCTOR_ID,',
'         :P34_DISP_DOCTOR,',
'         :P34_TREATMENT_INTENT_ID,',
'         :P34_DISP_TREATMENT_INTENT,',
'         :P34_ICDNO,',
'         :P34_DISP_DIAGNOSIS,',
'         NVL(:P34_STATUS_REQUEST, ''020''),',
'         :P34_SIGN_BY_REQUEST,',
'         :P34_REQUEST_ENTERED_BY,',
'         NVL(:P34_ENTERED_BY_MRNO,:GV_USER_MRNO),',
'         NVL(:P34_ANAESTHESIA, ''N''),',
'         NVL(:P34_CHEMOTHERAPY, ''N''),',
'         :P34_CHEMOTHERAPY_REMARKS,',
'         :P34_SIMULATION_DATE,',
'         :P34_STATUS_DESC,',
'         :P34_ACTIVE_REQUEST,',
'         :P34_SIGN_BY',
'    BULK COLLECT',
'    INTO L_RADIATION_MASTER_TAB',
'    FROM DUAL;',
'',
'  IF APEX_APPLICATION.G_X01 = ''D'' THEN',
'    BEGIN',
'      RADIATION.PKG_S18FRM00128.DELETE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'    END;',
'',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'', ''The request has been deleted successfully'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    L_ALERT_TEXT := ''DML status not provided or invalid.'';',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>323412965959073936
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776878712032015)
,p_process_sequence=>30
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
'    SELECT :P34_RAD_ACC_RADIATION_NO,',
'           :P34_RAD_ACC_SITE_ID,',
'           :P34_RAD_ACC_SRNO,',
'           :P34_RAD_ACC_PHASE_NO,',
'           :P34_RAD_ACC_ACCESSORY_ID,',
'           NULL                      DISP_ACCESSORY,',
'           :P34_RAD_ACC_REMARKS,',
'           :P34_RAD_ACC_STATUS_ID,',
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
,p_internal_uid=>3776878712032015
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3635854532151002)
,p_process_sequence=>40
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
,p_internal_uid=>3635854532151002
);
wwv_flow_imp.component_end;
end;
/

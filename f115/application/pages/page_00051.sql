prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'RAD_FOLLOW_UP'
,p_alias=>'RAD-FOLLOW-UP'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiotherapy Follow Up'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function processFollowUp() {',
'    apex.item("P51_SUCCESS_MSG").setValue('''');',
'    apex.item("P51_ERROR").setValue('''');',
'',
'    let successCount = 0;',
'    let errorOccurred = false;',
'    let errorMessage = '''';',
'',
'    function processServerRequest(processName, params, successCallback, errorCallback) {',
'        apex.server.process(processName, params, {',
'            dataType: ''text'',',
'            success: successCallback,',
'            error: errorCallback',
'        });',
'    }',
'',
'    function processFollowUpMaster() {',
'        const pageItems = [',
'            "P51_RADIATION_NO_1", "P51_SITE_ID_1", "P51_FOLLOWUP_ID",',
'            "P51_LAST_FRACTION_ID", "P51_WEEK_NO_1", "P51_SCHEDULE_SRNO_1",',
'            "P51_CHEMO_LAST_CYCLE", "P51_CHEMO_NEXT_CYCLE", "P51_ORAL_CHEMO_PRESCRIBED_1",',
'            "P51_REMARKS", "P51_SIGN_BY_1", "P51_SIDE_EFFECTS", "P51_DIET",',
'            "P51_GENERAL_MEASURE", "P51_PERSONAL_HYGIENE", "P51_FU_INSTRUCTIONS",',
'            "P51_PAT_FAMILY_EDU", "P51_PAT_FAMILY_EDU_REMARKS", "P51_OC_SERIAL_NO_1"',
'        ];',
'        processServerRequest("ProcessRadiationFollowUpMaster", { pageItems }, handleMasterSuccess, handleError);',
'    }',
'',
'    function processFollowUpDetail(vToxcityId, vToxcityDescription, vGradeId, vGradeDescription, vRemarks) {',
'        const params = {',
'            x01: vToxcityId,',
'            x02: vToxcityDescription,',
'            x03: vGradeId,',
'            x04: vGradeDescription,',
'            x05: vRemarks,',
'            pageItems: ["P51_RADIATION_NO_1", "P51_SITE_ID_1", "P51_FOLLOWUP_ID"]',
'        };',
'        processServerRequest("ProcessRadiationFollowUpDetail", params, handleDetailSuccess, handleError);',
'    }',
'',
'    function handleDetailSuccess(data) {',
'        let obj;',
'        try {',
'            obj = JSON.parse(data);',
'        } catch (e) {',
'            console.error("Invalid JSON response:", data);',
'            errorOccurred = true;',
'            errorMessage += "An error occurred while processing detail: " + data + ''\n'';',
'            return;',
'        }',
'',
'        if (obj.status === "success") {',
'            successCount++;',
'        } else {',
'            errorOccurred = true;',
'            errorMessage += obj.message + ''\n'';',
'        }',
'    }',
'',
'    function handleMasterSuccess() {',
'        if (successCount > 0) {',
'            apex.item("P51_SUCCESS_MSG").setValue(''Radiotherapy Follow Up saved successfully'');',
'        }',
'',
'        if (errorOccurred) {',
'            apex.item("P51_ERROR").setValue(errorMessage);',
'        }',
'    }',
'',
'    function handleError(jqXHR, textStatus) {',
'        errorOccurred = true;',
'        apex.item("P51_ERROR").setValue(errorMessage);',
'        //apex.message.alert("An error occurred: " + textStatus);',
'    }',
'',
'    function processRecords() {',
'        const model = apex.region("radfollowupdtl").widget().interactiveGrid("getViews", "grid").model;',
'',
'        model.forEach(function (r) {',
'            const vToxcityId = model.getValue(r, "TOXICITY_ID");',
'            const vToxcityDescription = model.getValue(r, "TOXICITY_DESC");',
'            const vGradeId = model.getValue(r, "GRADE_ID").v;',
'            const vGradeDescription = model.getValue(r, "GRADE_DESC");',
'            const vRemarks = model.getValue(r, "REMARKS");',
'',
'            processFollowUpDetail(vToxcityId, vToxcityDescription, vGradeId, vGradeDescription, vRemarks);',
'        });',
'',
'        processFollowUpMaster();',
'',
'        apex.region("radfollowup").refresh();',
'        apex.region("radfollowupdtl").widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'    }',
'',
'    processRecords();',
'}',
'',
'',
'function checkGridAndRefresh() {',
'    var gridData = $("#radfollowupdtl").find("tbody tr");',
'',
'    if (gridData.length === 0) {',
'        console.log(''Grid is empty. Refreshing...'');',
'        apex.region("radfollowupdtl").refresh();',
'',
'        setTimeout(checkGridAndRefresh, 100);',
'    } else {',
'        console.log(''Grid contains data. No refresh needed.'');',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_UNIT").hide();',
'apex.item("P51_SERVICE_NO").hide();',
'apex.item("P51_SERVICE_STATUS").hide();',
'apex.item("P51_RANK").hide();',
'apex.item("P51_FORMATION").hide();',
'',
'// Variable to track if Enter key has been pressed',
'let enterPressed = false;',
'',
'// Function to handle Enter key press',
'function handleEnterKey(event) {',
'    // Check if the pressed key is Enter (key code 13) and Enter key has not been pressed before',
'    if (event.keyCode === 13 && !enterPressed) {',
'        // Prevent default Enter key behavior (e.g., form submission)',
'        event.preventDefault();',
'',
'        // Set enterPressed to true to indicate that Enter key has been pressed',
'        enterPressed = true;',
'    }',
'}',
'',
'// Add event listener for keydown event',
'document.addEventListener(''keydown'', handleEnterKey);',
'',
'',
'jsFormsBlock_pageReady();'))
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
'	height: 110px;',
'    width:  80px;',
'',
'}',
'',
'#P51_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P51_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P51_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P51_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radfollowupdtl .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radfollowup .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#P71_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P51_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P51_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P51_CHEMO_LAST_CYCLE1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_CHEMO_NEXT_CYCLE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_ORAL_CHEMO_PRESCRIBED_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_SIDE_EFFECTS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_GENERAL_MEASURE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_FU_INSTRUCTIONS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_DIET {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_PERSONAL_HYGIENE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P51_PAT_FAMILY_EDU_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_height=>'1300'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250115110601'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5319223841323938)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>34
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7076178663126548)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>44
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12044043701367405)
,p_plug_name=>'Follow Up '
,p_region_name=>'radfollowup'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT RADIATION_NO,',
'             SITE_ID,',
'             FOLLOWUP_ID,',
'             LAST_FRACTION_ID,',
'             WEEK_NO,',
'             WEEK_NO WEEK_DESCRIPTION,',
'             SCHEDULE_SRNO,',
'             OC_SERIAL_NO,',
'             TO_CHAR(CHEMO_LAST_CYCLE,''DD-MON-RR HH24:MI'') CHEMO_LAST_CYCLE,',
'             CHEMO_NEXT_CYCLE,',
'             ORAL_CHEMO_PRESCRIBED,',
'             REMARKS,',
'             SIGN_BY,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY) SIGN_BY_NAME,',
'             TO_CHAR(SIGN_DATE,''DD-MON-RR HH24:MI'') SIGN_DATE,',
'             STATUS_ID,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(STATUS_ID) STATUS_DESC,',
'             SIDE_EFFECTS,',
'             DIET,',
'             GENERAL_MEASURE,',
'             PERSONAL_HYGIENE,',
'             FU_INSTRUCTIONS,',
'             PAT_FAMILY_EDU,',
'             PAT_FAMILY_EDU_REMARKS,',
'             ROWID',
'        FROM RADIATION.RAD_FOLLOWUP',
'      WHERE RADIATION_NO = :P51_RAD_DETAIL_ND_RADIATION_NO',
'         AND SITE_ID = :P51_RAD_DETAIL_ND_SITE_ID',
'         AND STATUS_ID <> ''248'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(47678417838927820)
,p_ajax_items_to_submit=>'P51_RAD_DETAIL_ND_RADIATION_NO,P51_RAD_DETAIL_ND_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Follow Up '
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
 p_id=>wwv_flow_imp.id(12044437622367409)
,p_name=>'FOLLOWUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOWUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Follow Up Id</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(12044518957367410)
,p_name=>'LAST_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Last Fraction</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12044610320367411)
,p_name=>'WEEK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DESCRIPTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Week</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12044761544367412)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12044883083367413)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<span style="color: darkblue;"><b>Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12044907829367414)
,p_name=>'SIGN_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Sign By</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045065532367415)
,p_name=>'CHEMO_LAST_CYCLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHEMO_LAST_CYCLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Chemo Cycle'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>24
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
 p_id=>wwv_flow_imp.id(12045110905367416)
,p_name=>'CHEMO_NEXT_CYCLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHEMO_NEXT_CYCLE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Next Chemo Cycle'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045290280367417)
,p_name=>'ORAL_CHEMO_PRESCRIBED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORAL_CHEMO_PRESCRIBED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Oral Chemo Prescribed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(12045355929367418)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(12045496957367419)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(47678793602927823)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045562273367420)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(47678865122927824)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045647099367421)
,p_name=>'WEEK_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045753150367422)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045824911367423)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12045933535367424)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12046017948367425)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12046174379367426)
,p_name=>'SIDE_EFFECTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIDE_EFFECTS'
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
 p_id=>wwv_flow_imp.id(12046243057367427)
,p_name=>'DIET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIET'
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
 p_id=>wwv_flow_imp.id(12046390654367428)
,p_name=>'GENERAL_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GENERAL_MEASURE'
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
 p_id=>wwv_flow_imp.id(12046465298367429)
,p_name=>'PERSONAL_HYGIENE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSONAL_HYGIENE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12046595771367430)
,p_name=>'FU_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FU_INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12046681352367431)
,p_name=>'PAT_FAMILY_EDU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_FAMILY_EDU'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12046745225367432)
,p_name=>'PAT_FAMILY_EDU_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_FAMILY_EDU_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12046881391367433)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12044105069367406)
,p_internal_uid=>12044105069367406
,p_is_editable=>false
,p_lazy_loading=>true
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12482008263881363)
,p_interactive_grid_id=>wwv_flow_imp.id(12044105069367406)
,p_static_id=>'124821'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12482245902881363)
,p_report_id=>wwv_flow_imp.id(12482008263881363)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12484500128881369)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12044437622367409)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12485400464881371)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12044518957367410)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12486356697881373)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12044610320367411)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12487295765881374)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12044761544367412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12488194755881376)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12044883083367413)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
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
 p_id=>wwv_flow_imp.id(12489018292881378)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(12044907829367414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12489971745881380)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(12045065532367415)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>299
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12490804916881382)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12045110905367416)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12491738800881384)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(12045290280367417)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12492667731881385)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(12045355929367418)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12493515240881387)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(12045496957367419)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12494476852881389)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(12045562273367420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12495388799881391)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(12045647099367421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12496227380881393)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(12045753150367422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12497113495881395)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(12045824911367423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12498034352881396)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(12045933535367424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12498964815881398)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(12046017948367425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12499857074881400)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12046174379367426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12500704802881402)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(12046243057367427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12501689184881403)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(12046390654367428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12502593766881405)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(12046465298367429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12503457959881407)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(12046595771367430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12504323135881409)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(12046681352367431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12505257410881411)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(12046745225367432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12506169407881412)
,p_view_id=>wwv_flow_imp.id(12482245902881363)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(12046881391367433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12047520276367440)
,p_plug_name=>'Radiation Follow Up'
,p_parent_plug_id=>wwv_flow_imp.id(12044043701367405)
,p_region_css_classes=>'js-dialog-size900x600'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86794014461682128)
,p_plug_name=>'Follow Up Education'
,p_parent_plug_id=>wwv_flow_imp.id(12044043701367405)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37868855214546347)
,p_plug_name=>'Radiotherapy Follow Up '
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>11
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
'/*WHERE RADIATION_NO = NVL(:P51_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P51_MRNO IS NOT NULL THEN',
'             ''%'' || :P51_MRNO',
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
,p_ajax_items_to_submit=>'P51_RADIATION_NO_1,P51_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(47678018078927816)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P51_MRNO;',
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
,p_ajax_items_to_submit=>'P51_MRNO'
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
 p_id=>wwv_flow_imp.id(47678195179927817)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(47678219743927818)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(47678361282927819)
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
 p_id=>wwv_flow_imp.id(47678417838927820)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_grid_column_span=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RADIATION_NO,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'             PLANNING,',
'             RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'             P1_DOSE_FRACTION,',
'             P1_NO_OF_FRACTION,',
'             P2_DOSE_FRACTION,',
'             P2_NO_OF_FRACTION,',
'             P3_DOSE_FRACTION,',
'             P3_NO_OF_FRACTION,',
'             TREATMENT_LATER,',
'             ACTIVE,',
'             WFE_NO,',
'             RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                             P_SITE_ID      => SITE_ID,',
'                                                             P_WFE_NO       => WFE_NO) EVENT_DESC,',
'             PLANNING_ID,',
'             RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                         P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'             RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                        P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'             RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                       P_SITE_ID      => RD.SITE_ID) -',
'             RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                             P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'             ROWID                                                ',
'        FROM RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P51_RADIATION_NO',
'         AND RD.SITE_ID = NVL(:P51_PARAM_SITE_ID, RD.SITE_ID)',
'         AND RD.STATUS_ID = ''015''',
'         AND RD.ACTIVE = ''Y''',
'         AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                                   P_SITE_ID             => RD.SITE_ID,',
'                                                   P_PERFORMANCE_TYPE_ID => ''019'') = ''Y'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P51_PARAM_SITE_ID,P51_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(31853709753964924)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47678793602927823)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47678865122927824)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47678907508927825)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Radiotherapy Site</b></span>'
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
 p_id=>wwv_flow_imp.id(47679079378927826)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
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
 p_id=>wwv_flow_imp.id(47679138223927827)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
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
 p_id=>wwv_flow_imp.id(47679273146927828)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(47679361619927829)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(47679444484927830)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(47679541313927831)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(47679612675927832)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(47679771938927833)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(47679808638927834)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br>Later</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_item_attributes=>'readonly="readonly;"'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47679970354927835)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Active</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_item_attributes=>'readonly="readonly;"'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47680083696927836)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
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
 p_id=>wwv_flow_imp.id(47680109139927837)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(47680232906927838)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
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
 p_id=>wwv_flow_imp.id(47680386602927839)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(47680451836927840)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Performed Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(47680579841927841)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Remaining<br> Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47678547476927821)
,p_internal_uid=>47678547476927821
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(48283148965086171)
,p_interactive_grid_id=>wwv_flow_imp.id(47678547476927821)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(48283334147086173)
,p_report_id=>wwv_flow_imp.id(48283148965086171)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(33528945101282841)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(31853709753964924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48283718822086174)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47678793602927823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48284683279086177)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47678865122927824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48285591937086180)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47678907508927825)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209.95800000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48286479962086182)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47679079378927826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48287307535086185)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47679138223927827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48288284511086190)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47679273146927828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48289164977086193)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47679361619927829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48290076028086200)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(47679444484927830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48290949506086202)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47679541313927831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48291847935086205)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(47679612675927832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48292783590086208)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47679771938927833)
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
 p_id=>wwv_flow_imp.id(48293642580086210)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(47679808638927834)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.858
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48294557744086214)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(47679970354927835)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62.548
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48295426450086218)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(47680083696927836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48296371745086221)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(47680109139927837)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>144.699
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48297211243086224)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(47680232906927838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48298101634086227)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(47680386602927839)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.901
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48299082450086234)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(47680451836927840)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.27799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48299931511086236)
,p_view_id=>wwv_flow_imp.id(48283334147086173)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(47680579841927841)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.781
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47680622482927842)
,p_plug_name=>'Follow Up Detail'
,p_region_name=>'radfollowupdtl'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'&RESP_COL4.'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT RADIATION_NO,',
'             SITE_ID,',
'             FOLLOWUP_ID,',
'             TOXICITY_ID,',
'             RADIATION.PKG_RADIATION.GET_TOXICITY_NAME(TOXICITY_ID) TOXICITY_DESC,',
'             GRADE_ID,',
'             RADIATION.PKG_RADIATION.GET_GRADE_NAME(GRADE_ID) GRADE_DESC,',
'             REMARKS,',
'             ROWID',
'        FROM RADIATION.RAD_FOLLOWUP_DTL F',
'       WHERE F.RADIATION_NO = :P51_RAD_DETAIL_ND_RADIATION_NO',
'         AND F.SITE_ID = :P51_RAD_DETAIL_ND_SITE_ID',
'         AND F.FOLLOWUP_ID = :P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(12044043701367405)
,p_ajax_items_to_submit=>'P51_RAD_DETAIL_ND_RADIATION_NO,P51_RAD_DETAIL_ND_SITE_ID,P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Follow Up Detail'
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
 p_id=>wwv_flow_imp.id(47680803746927844)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(12045496957367419)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47680910252927845)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(12045562273367420)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47681041047927846)
,p_name=>'FOLLOWUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOWUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FOLLOWUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(12044437622367409)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47681122934927847)
,p_name=>'TOXICITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOXICITY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'TOXICITY_ID'
,p_use_as_row_header=>true
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47681205322927848)
,p_name=>'TOXICITY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOXICITY_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<span style="color: darkblue;"><b>Toxicity</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'TOXICITY_DESC'
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
 p_id=>wwv_flow_imp.id(47681329375927849)
,p_name=>'GRADE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Grade</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT G.DESCRIPTION DESCRIPTION, G.GRADE_ID ID',
'  FROM RADIATION.GRADE G, RADIATION.TOXICITY_GRADE T',
' WHERE T.TOXICITY_ID = :TOXICITY_ID',
'   AND G.GRADE_ID = T.GRADE_ID',
'   AND T.ACTIVE = ''Y''',
' ORDER BY DESCRIPTION',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'TOXICITY_ID'
,p_ajax_items_to_submit=>'TOXICITY_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_static_id=>'GRADE_ID'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47681426874927850)
,p_name=>'GRADE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRADE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'GRADE_DESC'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48334227416157901)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Remarks</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold disable-keyboard-focus'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'REMARKS'
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
 p_id=>wwv_flow_imp.id(48334379976157902)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47680744355927843)
,p_internal_uid=>47680744355927843
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>440
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(48340248162158905)
,p_interactive_grid_id=>wwv_flow_imp.id(47680744355927843)
,p_static_id=>'483403'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(48340416347158905)
,p_report_id=>wwv_flow_imp.id(48340248162158905)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48340965278158908)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47680803746927844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48341812472158910)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47680910252927845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48342755504158913)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47681041047927846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48343650458158919)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47681122934927847)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48344555326158922)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47681205322927848)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>243
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48345480166158924)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47681329375927849)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48346323634158931)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47681426874927850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48347210668158934)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(48334227416157901)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48348181956158937)
,p_view_id=>wwv_flow_imp.id(48340416347158905)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(48334379976157902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48334912894157908)
,p_plug_name=>'Follow Up old'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT RADIATION_NO,',
'             SITE_ID,',
'             FOLLOWUP_ID,',
'             LAST_FRACTION_ID,',
'             WEEK_NO,',
'             WEEK_NO WEEK_DESCRIPTION,',
'             SCHEDULE_SRNO,',
'             OC_SERIAL_NO,',
'             CHEMO_LAST_CYCLE,',
'             CHEMO_NEXT_CYCLE,',
'             ORAL_CHEMO_PRESCRIBED,',
'             REMARKS,',
'             SIGN_BY,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY) SIGN_BY_NAME,',
'             SIGN_DATE,',
'             STATUS_ID,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(STATUS_ID) STATUS_DESC,',
'             SIDE_EFFECTS,',
'             DIET,',
'             GENERAL_MEASURE,',
'             PERSONAL_HYGIENE,',
'             FU_INSTRUCTIONS,',
'             PAT_FAMILY_EDU,',
'             PAT_FAMILY_EDU_REMARKS,',
'             ROWID',
'        FROM RADIATION.RAD_FOLLOWUP',
'       WHERE RADIATION_NO = :P51_RAD_DETAIL_ND_RADIATION_NO',
'         AND SITE_ID = :P51_RAD_DETAIL_ND_SITE_ID',
'         AND STATUS_ID <> ''248'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P51_RAD_DETAIL_ND_RADIATION_NO,P51_RAD_DETAIL_ND_SITE_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Follow Up old'
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
 p_id=>wwv_flow_imp.id(48335124302157910)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(48335224671157911)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(48335337712157912)
,p_name=>'FOLLOWUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOWUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'FOLLOWUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48335475179157913)
,p_name=>'LAST_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FR Id (Last)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(48335518320157914)
,p_name=>'WEEK_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_NO'
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
 p_id=>wwv_flow_imp.id(48335604113157915)
,p_name=>'WEEK_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEEK_DESCRIPTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Week'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(48335796266157916)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
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
 p_id=>wwv_flow_imp.id(48335877830157917)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
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
 p_id=>wwv_flow_imp.id(48335989463157918)
,p_name=>'CHEMO_LAST_CYCLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHEMO_LAST_CYCLE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Chemo Cycle'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48336034028157919)
,p_name=>'CHEMO_NEXT_CYCLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHEMO_NEXT_CYCLE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Next Chemo Cycle'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48336119663157920)
,p_name=>'ORAL_CHEMO_PRESCRIBED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORAL_CHEMO_PRESCRIBED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Oral Chemo Prescribed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(48336202943157921)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(48336378049157922)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
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
 p_id=>wwv_flow_imp.id(48336429014157923)
,p_name=>'SIGN_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sign By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(48336560666157924)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48336678625157925)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(48336754875157926)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(48336880006157927)
,p_name=>'SIDE_EFFECTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIDE_EFFECTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SIDE_EFFECTS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48336911585157928)
,p_name=>'DIET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'DIET'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48337005905157929)
,p_name=>'GENERAL_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GENERAL_MEASURE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'GENERAL_MEASURE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48337107596157930)
,p_name=>'PERSONAL_HYGIENE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSONAL_HYGIENE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PERSONAL_HYGIENE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48337204922157931)
,p_name=>'FU_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FU_INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FU_INSTRUCTIONS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48337391773157932)
,p_name=>'PAT_FAMILY_EDU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_FAMILY_EDU'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PAT_FAMILY_EDU'
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
 p_id=>wwv_flow_imp.id(48337416994157933)
,p_name=>'PAT_FAMILY_EDU_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAT_FAMILY_EDU_REMARKS'
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
 p_id=>wwv_flow_imp.id(50035224698911008)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50035377497911009)
,p_name=>'RAD_FOLLOWUP_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Update'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P51_RAD_FOLLOWUP_DML_STATUS'', ''UPDATE'');javascript:$s(''P51_SIDE_EFFECTS'', ''&SIDE_EFFECTS'');javascript:$s(''P51_SIGN_BY_NAME'', ''&SIGN_BY_NAME.'');javascript:$s(''P51_SIGN_DATE'', ''&SIGN_DATE.'');javascript:$s(''P51_STATUS_DESC'', ''&STATUS_DESC'
||'.'');javascript:$s(''P51_WEEK_DESCRIPTION'', ''&WEEK_DESCRIPTION.'');javascript:$s(''P51_LAST_FRACTION_ID'', ''&LAST_FRACTION_ID.'');javascript:$s(''P51_CHEMO_LAST_CYCLE'', ''&CHEMO_LAST_CYCLE.'');javascript:$s(''P51_CHEMO_NEXT_CYCLE'', ''&CHEMO_NEXT_CYCLE.'');javasc'
||'ript:$s(''P51_ORAL_CHEMO_PRESCRIBED'', ''&ORAL_CHEMO_PRESCRIBED.'');javascript:$s(''P51_REMARKS'', ''&REMARKS.'');javascript:$s(''P51_GENERAL_MEASURE'', ''&GENERAL_MEASURE.'');javascript:$s(''P51_FU_INSTRUCTIONS'', ''&FU_INSTRUCTIONS.'');javascript:$s(''P51_DIET'', ''&'
||'DIET.'');javascript:$s(''P51_PERSONAL_HYGIENE'', ''&PERSONAL_HYGIENE.'');javascript:$s(''P51_PAT_FAMILY_EDU'', ''&PAT_FAMILY_EDU.'');javascript:$s(''P51_PAT_FAMILY_EDU_REMARKS'', ''&PAT_FAMILY_EDU_REMARKS.'');javascript:$s(''P51_RADIATION_NO_1'', ''&RADIATION_NO.'');'
||'javascript:$s(''P51_SITE_ID_1'', ''&SITE_ID.'');javascript:$s(''P51_WEEK_NO_1'', ''&WEEK_NO.'');javascript:$s(''P51_SCHEDULE_SRNO_1'', ''&SCHEDULE_SRNO.'');javascript:$s(''P51_OC_SERIAL_NO_1'', ''&OC_SERIAL_NO.'');javascript:$s(''P51_SIGN_BY_1'', ''&SIGN_BY.'');javascri'
||'pt:$s(''P51_FOLLOWUP_ID'', ''&FOLLOWUP_ID.'');javascript:$s(''P51_STATUS_ID'', ''&STATUS_ID'');javascript:editRadiationFollowupMaster();'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50035447807911010)
,p_name=>'RAD_FOLLOWUP_DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P51_RAD_FOLLOWUP_DML_STATUS'', ''DELETE'');javascript:$s(''P51_SIDE_EFFECTS'', ''&SIDE_EFFECTS'');javascript:$s(''P51_SIGN_BY_NAME'', ''&SIGN_BY_NAME.'');javascript:$s(''P51_SIGN_DATE'', ''&SIGN_DATE.'');javascript:$s(''P51_STATUS_DESC'', ''&STATUS_DESC'
||'.'');javascript:$s(''P51_WEEK_DESCRIPTION'', ''&WEEK_DESCRIPTION.'');javascript:$s(''P51_LAST_FRACTION_ID'', ''&LAST_FRACTION_ID.'');javascript:$s(''P51_CHEMO_LAST_CYCLE'', ''&CHEMO_LAST_CYCLE.'');javascript:$s(''P51_CHEMO_NEXT_CYCLE'', ''&CHEMO_NEXT_CYCLE.'');javasc'
||'ript:$s(''P51_ORAL_CHEMO_PRESCRIBED'', ''&ORAL_CHEMO_PRESCRIBED.'');javascript:$s(''P51_REMARKS'', ''&REMARKS.'');javascript:$s(''P51_GENERAL_MEASURE'', ''&GENERAL_MEASURE.'');javascript:$s(''P51_FU_INSTRUCTIONS'', ''&FU_INSTRUCTIONS.'');javascript:$s(''P51_DIET'', ''&'
||'DIET.'');javascript:$s(''P51_PERSONAL_HYGIENE'', ''&PERSONAL_HYGIENE.'');javascript:$s(''P51_PAT_FAMILY_EDU'', ''&PAT_FAMILY_EDU.'');javascript:$s(''P51_PAT_FAMILY_EDU_REMARKS'', ''&PAT_FAMILY_EDU_REMARKS.'');javascript:$s(''P51_RADIATION_NO_1'', ''&RADIATION_NO.'');'
||'javascript:$s(''P51_SITE_ID_1'', ''&SITE_ID.'');javascript:$s(''P51_WEEK_NO_1'', ''&WEEK_NO.'');javascript:$s(''P51_SCHEDULE_SRNO_1'', ''&SCHEDULE_SRNO.'');javascript:$s(''P51_OC_SERIAL_NO_1'', ''&OC_SERIAL_NO.'');javascript:$s(''P51_SIGN_BY_1'', ''&SIGN_BY.'');javascri'
||'pt:$s(''P51_FOLLOWUP_ID'', ''&FOLLOWUP_ID.'');javascript:$s(''P51_STATUS_ID'', ''&STATUS_ID'');javascript:editRadiationFollowupMaster();'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(48335085897157909)
,p_internal_uid=>48335085897157909
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(48646054958843454)
,p_interactive_grid_id=>wwv_flow_imp.id(48335085897157909)
,p_static_id=>'486461'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(48646293777843454)
,p_report_id=>wwv_flow_imp.id(48646054958843454)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48646752897843455)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(48335124302157910)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48647677713843462)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(48335224671157911)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48648553698843465)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(48335337712157912)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>48
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48649489850843467)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(48335475179157913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48650325059843470)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(48335518320157914)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48651246886843472)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(48335604113157915)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>51.984399999999994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48652073199843475)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(48335796266157916)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48652925007843478)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(48335877830157917)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48653892800843480)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(48335989463157918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117.993
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48654765924843483)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(48336034028157919)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125.99000000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48655624493843490)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(48336119663157920)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.969
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48656590692843495)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(48336202943157921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>148.156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48657498507843498)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(48336378049157922)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48658346042843502)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(48336429014157923)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48659252988843505)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(48336560666157924)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48660191165843509)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(48336678625157925)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48661065921843511)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(48336754875157926)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.9757
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48661925022843514)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(48336880006157927)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48662809817843520)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(48336911585157928)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48663761622843523)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(48337005905157929)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48664639064843526)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(48337107596157930)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48665563439843529)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(48337204922157931)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48666441703843532)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(48337391773157932)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48667392735843534)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(48337416994157933)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50050765521917619)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(50035224698911008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50091621570008508)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(50035377497911009)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58.715
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50097679740021701)
,p_view_id=>wwv_flow_imp.id(48646293777843454)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(50035447807911010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55.7031
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237652420094597321)
,p_plug_name=>'Sign '
,p_region_name=>'signinline'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>110
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5319367512323939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5319223841323938)
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
 p_id=>wwv_flow_imp.id(7076260532126549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7076178663126548)
,p_button_name=>'NewFollowUp'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Follow Up'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5320180507323947)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5319223841323938)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7076307845126550)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7076178663126548)
,p_button_name=>'DisposeFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Follow Up'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290009561276969546)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5319223841323938)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7075637894126543)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5319223841323938)
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
 p_id=>wwv_flow_imp.id(7581865290888701)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7076178663126548)
,p_button_name=>'RadiationMenu'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Radiation Menu'
,p_button_redirect_url=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7075961298126546)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5319223841323938)
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
 p_id=>wwv_flow_imp.id(59953324538141423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237652420094597321)
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
 p_id=>wwv_flow_imp.id(59953776752141423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_button_name=>'SignRadiationFollowUp'
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
 p_id=>wwv_flow_imp.id(5319049705323936)
,p_name=>'P51_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>84
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5319123928323937)
,p_name=>'P51_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>94
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5319747652323943)
,p_name=>'P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'
,p_item_sequence=>104
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5320472565323950)
,p_name=>'P51_SIGN_STATUS'
,p_item_sequence=>134
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6139529280293405)
,p_name=>'P51_TXT_URL'
,p_item_sequence=>144
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6141173782293421)
,p_name=>'P51_RAD_FOLLOWUP_DTL_TOXICITY_ID'
,p_item_sequence=>124
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7585705847888740)
,p_name=>'P51_STATUS_ID'
,p_item_sequence=>334
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7585828472888741)
,p_name=>'P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'
,p_item_sequence=>114
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7586288197888745)
,p_name=>'P51_RAD_FOLLOWUP_DML_STATUS'
,p_item_sequence=>164
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7586708361888750)
,p_name=>'P51_SRNO'
,p_item_sequence=>64
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10108476098634007)
,p_name=>'P51_PARAM_MRNO'
,p_item_sequence=>74
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047168823367436)
,p_name=>'P51_CHEMO_LAST_CYCLE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12047520276367440)
,p_prompt=>'<b><p style="color:#00008B">Chemo Last Cycle:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047281276367437)
,p_name=>'P51_CHEMO_NEXT_CYCLE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12047520276367440)
,p_prompt=>'<b><p style="color:#00008B">Next Chemo Cycle:</p></b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047386225367438)
,p_name=>'P51_ORAL_CHEMO_PRESCRIBED_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12047520276367440)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Oral Chemo Prescribed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047482973367439)
,p_name=>'P51_REMARKS_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12047520276367440)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37869003819546349)
,p_name=>'P51_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(37869100405546350)
,p_name=>'P51_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(47676548006927801)
,p_name=>'P51_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(47676661093927802)
,p_name=>'P51_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
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
 p_id=>wwv_flow_imp.id(47676781256927803)
,p_name=>'P51_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(47676861228927804)
,p_name=>'P51_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">Gender:</p></b>'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(47676901299927805)
,p_name=>'P51_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47677059061927806)
,p_name=>'P51_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DISP_DOCTOR'
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
 p_id=>wwv_flow_imp.id(47677197136927807)
,p_name=>'P51_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
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
 p_id=>wwv_flow_imp.id(47677415804927810)
,p_name=>'P51_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47677585396927811)
,p_name=>'P51_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
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
 p_id=>wwv_flow_imp.id(47677643767927812)
,p_name=>'P51_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
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
 p_id=>wwv_flow_imp.id(47677711010927813)
,p_name=>'P51_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
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
 p_id=>wwv_flow_imp.id(47677834177927814)
,p_name=>'P51_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
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
 p_id=>wwv_flow_imp.id(47677951707927815)
,p_name=>'P51_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(37868855214546347)
,p_item_source_plug_id=>wwv_flow_imp.id(37868855214546347)
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
 p_id=>wwv_flow_imp.id(47678688981927822)
,p_name=>'P51_PARAM_SITE_ID'
,p_item_sequence=>54
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50035682289911012)
,p_name=>'P51_FOLLOWUP_ID'
,p_item_sequence=>184
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50035744596911013)
,p_name=>'P51_LAST_FRACTION_ID'
,p_item_sequence=>194
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50035861290911014)
,p_name=>'P51_WEEK_DESCRIPTION'
,p_item_sequence=>204
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50035972765911015)
,p_name=>'P51_STATUS_DESC'
,p_item_sequence=>214
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036070221911016)
,p_name=>'P51_SIGN_DATE'
,p_item_sequence=>224
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036138541911017)
,p_name=>'P51_SIGN_BY_NAME'
,p_item_sequence=>234
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036229950911018)
,p_name=>'P51_CHEMO_LAST_CYCLE'
,p_item_sequence=>244
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036349229911019)
,p_name=>'P51_CHEMO_NEXT_CYCLE'
,p_item_sequence=>254
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036488367911020)
,p_name=>'P51_ORAL_CHEMO_PRESCRIBED'
,p_item_sequence=>264
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036543707911021)
,p_name=>'P51_REMARKS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12047520276367440)
,p_prompt=>'<b><p style="color:#00008B">Follow Up Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036629443911022)
,p_name=>'P51_SIDE_EFFECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Side Effects</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036760935911023)
,p_name=>'P51_GENERAL_MEASURE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">General Measure</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036832877911024)
,p_name=>'P51_FU_INSTRUCTIONS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">F/U Instructions</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50036997760911025)
,p_name=>'P51_DIET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Diet</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50037021146911026)
,p_name=>'P51_PERSONAL_HYGIENE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Personal Hygiene</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50037154097911027)
,p_name=>'P51_PAT_FAMILY_EDU'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_prompt=>'<b><p style="color:red"> I confirm, that the assessment and plan have been discussed with patient / family and that they have understood and agreed  </p> </b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_colspan=>12
,p_grid_label_column_span=>10
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50037236974911028)
,p_name=>'P51_PAT_FAMILY_EDU_REMARKS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(86794014461682128)
,p_prompt=>'<b><p style="color:#00008B">Patient Education Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50038395205911039)
,p_name=>'P51_ALERT_TEXT'
,p_item_sequence=>154
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50038975637911045)
,p_name=>'P51_RADIATION_NO_1'
,p_item_sequence=>274
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50039080816911046)
,p_name=>'P51_SITE_ID_1'
,p_item_sequence=>284
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50039151619911047)
,p_name=>'P51_WEEK_NO_1'
,p_item_sequence=>294
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50039216945911048)
,p_name=>'P51_SCHEDULE_SRNO_1'
,p_item_sequence=>304
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50039346525911049)
,p_name=>'P51_OC_SERIAL_NO_1'
,p_item_sequence=>314
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50039466480911050)
,p_name=>'P51_SIGN_BY_1'
,p_item_sequence=>324
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57459158485878142)
,p_name=>'P51_SCHEDULE_EVENT_ID'
,p_item_sequence=>174
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80946993541236035)
,p_name=>'P51_SIGN_STATUS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(86795171067682139)
,p_name=>'P51_ACTION'
,p_item_sequence=>344
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237725238170597399)
,p_name=>'P51_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
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
 p_id=>wwv_flow_imp.id(237725266381597400)
,p_name=>'P51_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
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
 p_id=>wwv_flow_imp.id(237725359087597401)
,p_name=>'P51_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
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
 p_id=>wwv_flow_imp.id(237725515776597402)
,p_name=>'P51_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
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
 p_id=>wwv_flow_imp.id(237725639175597403)
,p_name=>'P51_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237725722592597404)
,p_name=>'P51_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237725762505597405)
,p_name=>'P51_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237725856703597406)
,p_name=>'P51_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237726026273597407)
,p_name=>'P51_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237726119446597408)
,p_name=>'P51_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237726600228597413)
,p_name=>'P51_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237726707912597414)
,p_name=>'P51_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(241450101877401779)
,p_name=>'P51_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(237652420094597321)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5318816853323934)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47678417838927820)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5318901995323935)
,p_event_id=>wwv_flow_imp.id(5318816853323934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P51_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P51_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'apex.region("radfollowup").refresh();',
'model = this.data.model;',
'/*for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P51_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'apex.item("P51_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'}*/',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5319412729323940)
,p_name=>'ExportReport'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5319367512323939)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5319506655323941)
,p_event_id=>wwv_flow_imp.id(5319412729323940)
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
 p_id=>wwv_flow_imp.id(5319656077323942)
,p_event_id=>wwv_flow_imp.id(5319412729323940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "P_RADIATION_NO": $v("P51_RADIATION_NO"),',
'    "P_SITE_ID": $v("P51_RAD_DETAIL_ND_SITE_ID"),',
'    "P_FOLLOWUP_ID": $v("P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID"),',
'    "P_LOCATION_ID": $v("GV_PHYSICAL_LOCATION_ID")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00079'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5319863488323944)
,p_name=>'SetFollowUpID'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48334912894157908)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5319999829323945)
,p_event_id=>wwv_flow_imp.id(5319863488323944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'SetRadFollowupId'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', _.radfollowup.FOLLOWUP_ID);',
'//$s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', _.radfollowup.STATUS_ID);',
'var widget = apex.region(''radfollowup'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var followupid = model.getValue(record, ''FOLLOWUP_ID'');',
'    var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', followupid);',
'    $s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', statusid);',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6141036375293420)
,p_event_id=>wwv_flow_imp.id(5319863488323944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'RefreshRadaitionFollowUpDetail'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47680622482927842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7585918225888742)
,p_name=>'SetFollowUpID_1'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48334912894157908)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7586070244888743)
,p_event_id=>wwv_flow_imp.id(7585918225888742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadFollowupId'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', _.radfollowup.FOLLOWUP_ID);',
'//$s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', _.radfollowup.STATUS_ID);',
'',
'var widget = apex.region(''radfollowup'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var followupid = model.getValue(record, ''FOLLOWUP_ID'');',
'    var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', followupid);',
'    $s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', statusid);',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7586104156888744)
,p_event_id=>wwv_flow_imp.id(7585918225888742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'RefreshRadaitionFollowUpDetail'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47680622482927842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6139224108293402)
,p_name=>'Sign'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5320180507323947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60081094119639006)
,p_event_id=>wwv_flow_imp.id(6139224108293402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6139377824293403)
,p_event_id=>wwv_flow_imp.id(6139224108293402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(''#radfollowup'').trigger(''click'');',
'',
'$s(''P51_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P51_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'$s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', _.radfollowup.FOLLOWUP_ID);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57458331359878134)
,p_event_id=>wwv_flow_imp.id(6139224108293402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P51_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P51_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P51_DISP_MRNO    := (:P51_PATIENT_TYPE ||',
'                         LPAD(:P51_PATIENT_MRNO, 8, ''0''));',
'    :P51_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P51_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P51_PATIENT_MRNO,P51_PATIENT_TYPE,P51_DISP_MRNO,P51_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57458454992878135)
,p_event_id=>wwv_flow_imp.id(6139224108293402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signinline");',
'apex.item("P51_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6139405583293404)
,p_event_id=>wwv_flow_imp.id(6139224108293402)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_app     number := v(''APP_ID'');',
'  l_session number := v(''APP_SESSION'');',
'BEGIN',
'  :P51_SIGN_STATUS := ''F'';',
'  :P51_TXT_URL     := APEX_UTIL.PREPARE_URL(p_url           => ''f?p='' ||',
'                                                               l_app ||',
'                                                               '':43:'' ||',
'                                                               l_session ||',
'                                                               ''::NO::P43_DISP_MRNO,P43_SIGN_STATUS,P43_RADIATION_NO,P43_SITE_ID,P43_RAD_MASTER_MRNO,P43_FOLLOWUP_ID:'' ||',
'                                                               :GV_USER_MRNO || '','' ||',
'                                                               :P51_SIGN_STATUS || '','' ||',
'                                                               :P51_RAD_DETAIL_ND_RADIATION_NO || '','' ||',
'                                                               :P51_RAD_DETAIL_ND_SITE_ID || '','' ||',
'                                                               :P51_MRNO || '','' ||',
'                                                               :P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID,',
'                                            p_checksum_type => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P51_SIGN_STATUS'
,p_attribute_03=>'P51_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10109872241634021)
,p_event_id=>wwv_flow_imp.id(6139224108293402)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P51_TXT_URL''));'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6141217406293422)
,p_name=>'DASelectionChangeFollowUpDTL'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47680622482927842)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6141385328293423)
,p_event_id=>wwv_flow_imp.id(6141217406293422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P51_RAD_FOLLOWUP_DTL_TOXICITY_ID'', _.radfollowupdtl.TOXICITY_ID);',
'',
'',
'var widget = apex.region(''radfollowupdtl'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var toxicityid = model.getValue(record, ''TOXICITY_ID'');',
'    $s(''P51_RAD_FOLLOWUP_DTL_TOXICITY_ID'', toxicityid);',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7582041858888703)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7075961298126546)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7582127170888704)
,p_event_id=>wwv_flow_imp.id(7582041858888703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7586397717888746)
,p_name=>'EnableDisableFields'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48334912894157908)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7586452079888747)
,p_event_id=>wwv_flow_imp.id(7586397717888746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''radfollowup'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var followupid = model.getValue(record, ''FOLLOWUP_ID'');',
'    var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', followupid);',
'    $s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', statusid);',
'});',
'',
'if (($v("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "015") || ($v("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "009")) {',
'    apex.item("btnFollowupMasterSave").disable();',
'    apex.item("P51_LAST_FRACTION_ID").disable();',
'    apex.item("P51_WEEK_DESCRIPTION").disable();',
'    apex.item("P51_STATUS_DESC").disable();',
'    apex.item("P51_SIGN_DATE").disable();',
'    apex.item("P51_SIGN_BY_NAME").disable();',
'    apex.item("P51_CHEMO_LAST_CYCLE").disable();',
'    apex.item("P51_ORAL_CHEMO_PRESCRIBED").disable();',
'    apex.item("P51_CHEMO_NEXT_CYCLE").disable();',
'    apex.item("P51_REMARKS").disable();',
'    apex.item("P51_GENERAL_MEASURE").disable();',
'    apex.item("P51_FU_INSTRUCTIONS").disable();',
'    apex.item("P51_DIET").disable();',
'    apex.item("P51_PERSONAL_HYGIENE").disable();',
'    apex.item("P51_PAT_FAMILY_EDU_REMARKS").disable();',
'    apex.item("P51_RADIATION_NO_1").disable();',
'    apex.item("P51_SITE_ID_1").disable();',
'    apex.item("P51_WEEK_NO_1").disable();',
'    apex.item("P51_SCHEDULE_SRNO_1").disable();',
'    apex.item("P51_OC_SERIAL_NO_1").disable();',
'    apex.item("P51_SIGN_BY_1").disable();',
'    apex.item("P51_FOLLOWUP_ID").disable();',
'    apex.item("P51_SIDE_EFFECTS").disable();',
'}',
'else {',
'    apex.item("btnFollowupMasterSave").enable();',
'    apex.item("P51_LAST_FRACTION_ID").enable();',
'    apex.item("P51_WEEK_DESCRIPTION").enable();',
'    apex.item("P51_STATUS_DESC").enable();',
'    apex.item("P51_SIGN_DATE").enable();',
'    apex.item("P51_SIGN_BY_NAME").enable();',
'    apex.item("P51_CHEMO_LAST_CYCLE").enable();',
'    apex.item("P51_ORAL_CHEMO_PRESCRIBED").enable();',
'    apex.item("P51_CHEMO_NEXT_CYCLE").enable();',
'    apex.item("P51_REMARKS").enable();',
'    apex.item("P51_GENERAL_MEASURE").enable();',
'    apex.item("P51_FU_INSTRUCTIONS").enable();',
'    apex.item("P51_DIET").enable();',
'    apex.item("P51_PERSONAL_HYGIENE").enable();',
'    apex.item("P51_PAT_FAMILY_EDU_REMARKS").enable();',
'    apex.item("P51_RADIATION_NO_1").enable();',
'    apex.item("P51_SITE_ID_1").enable();',
'    apex.item("P51_WEEK_NO_1").enable();',
'    apex.item("P51_SCHEDULE_SRNO_1").enable();',
'    apex.item("P51_OC_SERIAL_NO_1").enable();',
'    apex.item("P51_SIGN_BY_1").enable();',
'    apex.item("P51_FOLLOWUP_ID").enable();',
'    apex.item("P51_SIDE_EFFECTS").enable();',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10108005260634003)
,p_name=>'EnableCheckBoxed1'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7076260532126549)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(10108138682634004)
,p_event_id=>wwv_flow_imp.id(10108005260634003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_ORAL_CHEMO_PRESCRIBED_1").enable();',
'apex.item("P51_SIDE_EFFECTS").enable();',
'apex.item("P51_GENERAL_MEASURE").enable();',
'apex.item("P51_FU_INSTRUCTIONS").enable();',
'apex.item("P51_DIET").enable();',
'apex.item("P51_PERSONAL_HYGIENE").enable();',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10108282473634005)
,p_name=>'EnableCheckBoxed2'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7076307845126550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10108389129634006)
,p_event_id=>wwv_flow_imp.id(10108282473634005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_ORAL_CHEMO_PRESCRIBED").enable();',
'apex.item("P51_SIDE_EFFECTS").enable();',
'apex.item("P51_GENERAL_MEASURE").enable();',
'apex.item("P51_FU_INSTRUCTIONS").enable();',
'apex.item("P51_DIET").enable();',
'apex.item("P51_PERSONAL_HYGIENE").enable();',
'apex.item(''P51_ACTION'').setValue(''D'');',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10108790038634010)
,p_name=>'UpdateRadiationFollowUp'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateRadiationFollowUp'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10108856038634011)
,p_event_id=>wwv_flow_imp.id(10108790038634010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationFollowUpMaster",',
'    {',
'        pageItems: ["P51_RADIATION_NO_1",',
'            "P51_SITE_ID_1",',
'            "P51_FOLLOWUP_ID",',
'            "P51_LAST_FRACTION_ID",',
'            "P51_WEEK_NO_1",',
'            "P51_SCHEDULE_SRNO_1",',
'            "P51_CHEMO_LAST_CYCLE",',
'            "P51_CHEMO_NEXT_CYCLE",',
'            "P51_ORAL_CHEMO_PRESCRIBED",',
'            "P51_REMARKS",',
'            "P51_SIGN_BY_1",',
'            "P51_SIDE_EFFECTS",',
'            "P51_DIET",',
'            "P51_GENERAL_MEASURE",',
'            "P51_PERSONAL_HYGIENE",',
'            "P51_FU_INSTRUCTIONS",',
'            "P51_PAT_FAMILY_EDU",',
'            "P51_PAT_FAMILY_EDU_REMARKS",',
'            "P51_OC_SERIAL_NO_1"',
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
'',
'            if (obj.status == "success") {',
'                apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                apex.region(''radfollowup'').refresh();',
'                //apex.theme.closeRegion(''radfollowup1'');',
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31853815076964925)
,p_event_id=>wwv_flow_imp.id(10108790038634010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT F.CHEMO_LAST_CYCLE,',
'         F.CHEMO_NEXT_CYCLE,',
'         F.ORAL_CHEMO_PRESCRIBED,',
'         F.REMARKS',
'    INTO :P51_CHEMO_LAST_CYCLE1,',
'         :P51_CHEMO_NEXT_CYCLE_1,',
'         :P51_ORAL_CHEMO_PRESCRIBED_1,',
'         :P51_REMARKS_1',
'    FROM RADIATION.RAD_FOLLOWUP F',
'   WHERE F.RADIATION_NO = :P51_RAD_DETAIL_ND_RADIATION_NO',
'     AND F.SITE_ID = :P51_RAD_DETAIL_ND_SITE_ID',
'     AND F.FOLLOWUP_ID = :P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P51_RAD_DETAIL_ND_RADIATION_NO,P51_RAD_DETAIL_ND_SITE_ID,P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'
,p_attribute_03=>'P51_CHEMO_LAST_CYCLE1,P51_CHEMO_NEXT_CYCLE_1,P51_ORAL_CHEMO_PRESCRIBED_1,P51_REMARKS_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12027200705304337)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12027696277304338)
,p_event_id=>wwv_flow_imp.id(12027200705304337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_ORAL_CHEMO_PRESCRIBED_1").enable();',
'if (($v("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "015") || ($v("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "009")) {',
'    apex.item("btnFollowupMasterSave").disable();',
'    apex.item("P51_LAST_FRACTION_ID").disable();',
'    apex.item("P51_WEEK_DESCRIPTION").disable();',
'    apex.item("P51_STATUS_DESC").disable();',
'    apex.item("P51_SIGN_DATE").disable();',
'    apex.item("P51_SIGN_BY_NAME").disable();',
'    apex.item("P51_ORAL_CHEMO_PRESCRIBED_1").disable();',
'    apex.item("P51_ORAL_CHEMO_PRESCRIBED").disable();',
'    apex.item("P51_CHEMO_NEXT_CYCLE").disable();',
'    apex.item("P51_REMARKS").disable();',
'    apex.item("P51_GENERAL_MEASURE").disable();',
'    apex.item("P51_FU_INSTRUCTIONS").disable();',
'    apex.item("P51_DIET").disable();',
'    apex.item("P51_PERSONAL_HYGIENE").disable();',
'    apex.item("P51_PAT_FAMILY_EDU_REMARKS").disable();',
'    apex.item("P51_RADIATION_NO_1").disable();',
'    apex.item("P51_SITE_ID_1").disable();',
' apex.item("P51_PAT_FAMILY_EDU").disable();',
'    ',
'    apex.item("P51_WEEK_NO_1").disable();',
'    apex.item("P51_SCHEDULE_SRNO_1").disable();',
'    apex.item("P51_OC_SERIAL_NO_1").disable();',
'    apex.item("P51_SIGN_BY_1").disable();',
'    apex.item("P51_FOLLOWUP_ID").disable();',
'    apex.item("P51_SIDE_EFFECTS").disable();',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'}',
'else {',
'    apex.item("btnFollowupMasterSave").enable();',
'    apex.item("P51_LAST_FRACTION_ID").enable();',
'    apex.item("P51_WEEK_DESCRIPTION").enable();',
'    apex.item("P51_STATUS_DESC").enable();',
'    apex.item("P51_SIGN_DATE").enable();',
'    apex.item("P51_PAT_FAMILY_EDU").enable();',
'    apex.item("P51_SIGN_BY_NAME").enable();',
'    apex.item("P51_CHEMO_LAST_CYCLE").enable();',
'    apex.item("P51_ORAL_CHEMO_PRESCRIBED").enable();',
'    apex.item("P51_CHEMO_NEXT_CYCLE").enable();',
'    apex.item("P51_REMARKS").enable();',
'    apex.item("P51_GENERAL_MEASURE").enable();',
'    apex.item("P51_FU_INSTRUCTIONS").enable();',
'    apex.item("P51_DIET").enable();',
'    apex.item("P51_PERSONAL_HYGIENE").enable();',
'    apex.item("P51_PAT_FAMILY_EDU_REMARKS").enable();',
'    apex.item("P51_RADIATION_NO_1").enable();',
'    apex.item("P51_SITE_ID_1").enable();',
'    apex.item("P51_ORAL_CHEMO_PRESCRIBED_1").enable();',
'  ',
'    apex.item("P51_WEEK_NO_1").enable();',
'    apex.item("P51_SCHEDULE_SRNO_1").enable();',
'    apex.item("P51_OC_SERIAL_NO_1").enable();',
'    apex.item("P51_SIGN_BY_1").enable();',
'    apex.item("P51_FOLLOWUP_ID").enable();',
'    apex.item("P51_SIDE_EFFECTS").enable();',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12046955471367434)
,p_name=>'FolowUPChange'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12044043701367405)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12047041065367435)
,p_event_id=>wwv_flow_imp.id(12046955471367434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', _.radfollowup.STATUS_ID);',
'$s(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', _.radfollowup.FOLLOWUP_ID);',
'$s(''P51_CHEMO_NEXT_CYCLE_1'', _.radfollowup.CHEMO_NEXT_CYCLE);',
'$s(''P51_CHEMO_LAST_CYCLE1'', _.radfollowup.CHEMO_LAST_CYCLE);',
'$s(''P51_REMARKS_1'', _.radfollowup.REMARKS);',
'$s(''P51_ORAL_CHEMO_PRESCRIBED_1'', _.radfollowup.ORAL_CHEMO_PRESCRIBED);',
'',
'//apex.region("radfollowupdtl").refresh();',
'',
'',
'$s(''P51_RAD_FOLLOWUP_DML_STATUS'', ''UPDATE'');',
'$s(''P51_SIDE_EFFECTS'', _.radfollowup.SIDE_EFFECTS);',
'$s(''P51_SIGN_BY_NAME'', _.radfollowup.SIGN_BY_NAME);',
'$s(''P51_SIGN_DATE'', _.radfollowup.SIGN_DATE);',
'$s(''P51_STATUS_DESC'', _.radfollowup.STATUS_DESC);',
'$s(''P51_WEEK_DESCRIPTION'', _.radfollowup.WEEK_DESCRIPTION);',
'$s(''P51_LAST_FRACTION_ID'', _.radfollowup.LAST_FRACTION_ID);',
'$s(''P51_CHEMO_LAST_CYCLE'', _.radfollowup.CHEMO_LAST_CYCLE);',
'$s(''P51_CHEMO_NEXT_CYCLE'', _.radfollowup.CHEMO_NEXT_CYCLE);',
'$s(''P51_ORAL_CHEMO_PRESCRIBED'', _.radfollowup.ORAL_CHEMO_PRESCRIBED);',
'$s(''P51_REMARKS'', _.radfollowup.REMARKS);',
'$s(''P51_GENERAL_MEASURE'', _.radfollowup.GENERAL_MEASURE);',
'$s(''P51_FU_INSTRUCTIONS'', _.radfollowup.FU_INSTRUCTIONS);',
'$s(''P51_DIET'', _.radfollowup.DIET);',
'$s(''P51_PERSONAL_HYGIENE'', _.radfollowup.PERSONAL_HYGIENE);',
'$s(''P51_PAT_FAMILY_EDU'', _.radfollowup.PAT_FAMILY_EDU);',
'$s(''P51_PAT_FAMILY_EDU_REMARKS'', _.radfollowup.PAT_FAMILY_EDU_REMARKS);',
'$s(''P51_RADIATION_NO_1'', _.radfollowup.RADIATION_NO);',
'$s(''P51_SITE_ID_1'', _.radfollowup.SITE_ID);',
'$s(''P51_WEEK_NO_1'', _.radfollowup.WEEK_NO);',
'$s(''P51_SCHEDULE_SRNO_1'', _.radfollowup.SCHEDULE_SRNO);',
'$s(''P51_OC_SERIAL_NO_1'', _.radfollowup.OC_SERIAL_NO);',
'$s(''P51_SIGN_BY_1'', _.radfollowup.SIGN_BY);',
'$s(''P51_FOLLOWUP_ID'', _.radfollowup.FOLLOWUP_ID);',
'$s(''P51_STATUS_ID'', _.radfollowup.STATUS_ID);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86793207513682120)
,p_event_id=>wwv_flow_imp.id(12046955471367434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Retrieve the value of the item',
'var statusId = apex.item("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID").getValue();',
'',
'// Check if the value is not null or undefined',
'if (statusId !== null && statusId !== undefined) {',
'    // Perform the action based on the statusId',
'    if (statusId === ''020'') {',
'        apex.region("radfollowupdtl").widget().interactiveGrid("getActions").set("edit", true);',
'    } else {',
'        apex.region("radfollowupdtl").widget().interactiveGrid("getActions").set("edit", false);',
'    }',
'} else {',
'    // Optionally handle the case where statusId is null or undefined',
'    console.warn("Status ID is null or undefined.");',
'}',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31854350503964930)
,p_name=>'RefreshRegionOnSign'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31854589607964932)
,p_event_id=>wwv_flow_imp.id(31854350503964930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radfollowup'').refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57458567662878136)
,p_name=>'DAExit'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59953324538141423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57458642713878137)
,p_event_id=>wwv_flow_imp.id(57458567662878136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237652420094597321)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57458752451878138)
,p_name=>'DASignFollowUp'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59953776752141423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57458981620878140)
,p_event_id=>wwv_flow_imp.id(57458752451878138)
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
'  :P51_TXT_ALERT_TEXT := null;',
'  :P51_SUCCESS_MSG    := null;',
'  :P51_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P51_DISP_MRNO,',
'                                          :P51_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P51_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''Y'');',
'    :P51_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P51_DISP_MRNO,P51_PASSWORD'
,p_attribute_03=>'P51_SUCCESS_MSG,P51_ERROR,P51_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57459087310878141)
,p_event_id=>wwv_flow_imp.id(57458752451878138)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00131.SIGN_RAD_FOLOWUP(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P51_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P51_RAD_DETAIL_ND_SITE_ID,',
'                                             P_FOLLOWUP_ID       => :P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID,',
'                                             P_SIGN_BY           => :P51_DISP_MRNO,',
'                                             P_SCHEDULE_SRNO     => :P51_SCHEDULE_SRNO_1,',
'                                             P_SCHEDULE_EVENT_ID => :P51_SCHEDULE_EVENT_ID,',
'                                             P_USER_MRNO         => :P51_DISP_MRNO,',
'                                             P_OBJECT_CODE       => ''S18APX00044'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''TERMINAL''),',
'                                             P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                             P_STOP              => P_STOP);',
'',
'  IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'    :P51_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''Y'');',
'    :P51_TXT_ALERT_TEXT := NULL;',
'    :P51_SUCCESS_MSG    := ''Follow Up Signed Properly ...'';',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P51_RAD_DETAIL_ND_RADIATION_NO,P51_RAD_DETAIL_ND_SITE_ID,P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID,P51_DISP_MRNO,P51_SCHEDULE_SRNO_1,P51_SCHEDULE_EVENT_ID,P51_VALIDATE'
,p_attribute_03=>'P51_TXT_ALERT_TEXT,P51_SUCCESS_MSG,P51_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57459648098878147)
,p_event_id=>wwv_flow_imp.id(57458752451878138)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radfollowup'').refresh();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60083347312639029)
,p_event_id=>wwv_flow_imp.id(57458752451878138)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :P51_TXT_ALERT_TEXT := NULL;',
'  :P51_ERROR          := NULL;',
'',
'END;',
''))
,p_attribute_02=>'P51_TXT_ALERT_TEXT,P51_ERROR'
,p_attribute_03=>'P51_TXT_ALERT_TEXT,P51_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60083498425639030)
,p_event_id=>wwv_flow_imp.id(57458752451878138)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("sign_btn").disable();',
'apex.item("save").disable();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60082522845639021)
,p_event_id=>wwv_flow_imp.id(57458752451878138)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237652420094597321)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57459299117878143)
,p_name=>'DASuccessMessage'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_SUCCESS_MSG'
,p_condition_element=>'P51_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57459391325878144)
,p_event_id=>wwv_flow_imp.id(57459299117878143)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P51_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269377524529586903)
,p_event_id=>wwv_flow_imp.id(57459299117878143)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("radfollowup").refresh();',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'',
'    //apex.region("radfollowupdtl").refresh();',
'}, 200); ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57459465898878145)
,p_name=>'DAError'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_ERROR'
,p_condition_element=>'P51_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60082869079639024)
,p_event_id=>wwv_flow_imp.id(57459465898878145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Variable to track if Enter key has been pressed',
'let enterPressed = false;',
'',
'// Function to handle Enter key press',
'function handleEnterKey(event) {',
'    // Check if the pressed key is Enter (key code 13) and Enter key has not been pressed before',
'    if (event.keyCode === 13 && !enterPressed) {',
'        // Prevent default Enter key behavior (e.g., form submission)',
'        event.preventDefault();',
'',
'        // Set enterPressed to true to indicate that Enter key has been pressed',
'        enterPressed = true;',
'    }',
'}',
'',
'// Add event listener for keydown event',
'document.addEventListener(''keydown'', handleEnterKey);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57459568153878146)
,p_event_id=>wwv_flow_imp.id(57459465898878145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P51_ERROR.'
,p_attribute_02=>'System Information '
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57459719422878148)
,p_name=>'DASign@EnterTabKey'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57459969345878150)
,p_event_id=>wwv_flow_imp.id(57459719422878148)
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
'  :P51_TXT_ALERT_TEXT := null;',
'  :P51_SUCCESS_MSG    := null;',
'  :P51_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P51_DISP_MRNO,',
'                                          :P51_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''N'');',
'    :P51_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''Y'');',
'    :P51_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P51_DISP_MRNO,P51_PASSWORD'
,p_attribute_03=>'P51_SUCCESS_MSG,P51_ERROR,P51_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60080518524639001)
,p_event_id=>wwv_flow_imp.id(57459719422878148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ALERT_TEXT  VARCHAR2(4000);',
'  P_STOP        VARCHAR2(1);',
'  V_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00131.SIGN_RAD_FOLOWUP(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P51_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P51_RAD_DETAIL_ND_SITE_ID,',
'                                             P_FOLLOWUP_ID       => :P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID,',
'                                             P_SIGN_BY           => :P51_DISP_MRNO,',
'                                             P_SCHEDULE_SRNO     => :P51_SCHEDULE_SRNO_1,',
'                                             P_SCHEDULE_EVENT_ID => :P51_SCHEDULE_EVENT_ID,',
'                                             P_USER_MRNO         => :P51_DISP_MRNO,',
'                                             P_OBJECT_CODE       => ''S18APX00044'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''TERMINAL''),',
'                                             P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                             P_STOP              => P_STOP);',
'',
'  IF NVL(P_STOP, ''N'') = ''Y'' THEN',
'    :P51_TXT_ALERT_TEXT := V_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P51_VALIDATE'', ''Y'');',
'    :P51_TXT_ALERT_TEXT := NULL;',
'    :P51_SUCCESS_MSG    := ''Follow Up Signed Properly ...'';',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P51_RAD_DETAIL_ND_RADIATION_NO,P51_RAD_DETAIL_ND_SITE_ID,P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID,P51_DISP_MRNO,P51_SCHEDULE_SRNO_1,P51_SCHEDULE_EVENT_ID'
,p_attribute_03=>'P51_TXT_ALERT_TEXT,P51_SUCCESS_MSG,P51_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60080606990639002)
,p_event_id=>wwv_flow_imp.id(57459719422878148)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''radfollowup'').refresh();'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60083223341639028)
,p_event_id=>wwv_flow_imp.id(57459719422878148)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :P51_TXT_ALERT_TEXT := NULL;',
'  :P51_ERROR          := NULL;',
'',
'END;',
''))
,p_attribute_02=>'P51_TXT_ALERT_TEXT,P51_ERROR'
,p_attribute_03=>'P51_TXT_ALERT_TEXT,P51_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60083550102639031)
,p_event_id=>wwv_flow_imp.id(57459719422878148)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("sign_btn").disable();',
'apex.item("save").disable();'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60082418290639020)
,p_event_id=>wwv_flow_imp.id(57459719422878148)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237652420094597321)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P51_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60081192049639007)
,p_name=>'DATxtAlertText'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_TXT_ALERT_TEXT'
,p_condition_element=>'P51_TXT_ALERT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60082635042639022)
,p_event_id=>wwv_flow_imp.id(60081192049639007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Variable to track if Enter key has been pressed',
'let enterPressed = false;',
'',
'// Function to handle Enter key press',
'function handleEnterKey(event) {',
'    // Check if the pressed key is Enter (key code 13) and Enter key has not been pressed before',
'    if (event.keyCode === 13 && !enterPressed) {',
'        // Prevent default Enter key behavior (e.g., form submission)',
'        event.preventDefault();',
'',
'        // Set enterPressed to true to indicate that Enter key has been pressed',
'        enterPressed = true;',
'    }',
'}',
'',
'// Add event listener for keydown event',
'document.addEventListener(''keydown'', handleEnterKey);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60081247382639008)
,p_event_id=>wwv_flow_imp.id(60081192049639007)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P51_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60082044029639016)
,p_name=>'DAPatientMrno'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_PATIENT_MRNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
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
 p_id=>wwv_flow_imp.id(60082212247639018)
,p_event_id=>wwv_flow_imp.id(60082044029639016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P51_ERROR := NULL;',
'  IF :P51_PATIENT_MRNO IS NOT NULL THEN',
'    :P51_DISP_MRNO := :P51_PATIENT_TYPE ||',
'                       LPAD(:P51_PATIENT_MRNO, 8, ''0'');',
'',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P51_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P51_ERROR        := ''This is not an active employee.'';',
'      :P51_PATIENT_MRNO := NULL;',
'      :P51_DISP_MRNO    := NULL;',
'      :P51_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P51_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P51_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P51_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P51_ERROR,P51_PATIENT_MRNO,P51_DISP_MRNO,P51_NAME,P51_PATIENT_TYPE'
,p_attribute_03=>'P51_ERROR,P51_PATIENT_MRNO,P51_DISP_MRNO,P51_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60082161608639017)
,p_event_id=>wwv_flow_imp.id(60082044029639016)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P51_PASSWORD").setFocus();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60083126685639027)
,p_event_id=>wwv_flow_imp.id(60082044029639016)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Variable to track if Enter key has been pressed',
'let enterPressed = false;',
'',
'// Function to handle Enter key press',
'function handleEnterKey(event) {',
'    // Check if the pressed key is Enter (key code 13) and Enter key has not been pressed before',
'    if (event.keyCode === 13 && !enterPressed) {',
'        // Prevent default Enter key behavior (e.g., form submission)',
'        event.preventDefault();',
'',
'        // Set enterPressed to true to indicate that Enter key has been pressed',
'        enterPressed = true;',
'    }',
'}',
'',
'// Add event listener for keydown event',
'document.addEventListener(''keydown'', handleEnterKey);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(86793065309682118)
,p_name=>'DAClick'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47680622482927842)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86793154321682119)
,p_event_id=>wwv_flow_imp.id(86793065309682118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Retrieve the value of the item',
'var statusId = apex.item("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID").getValue();',
'',
'// Check if the value is not null or undefined',
'if (statusId !== null && statusId !== undefined) {',
'    // Perform the action based on the statusId',
'    if (statusId === ''020'') {',
'        apex.region("radfollowupdtl").widget().interactiveGrid("getActions").set("edit", true);',
'    } else {',
'        apex.region("radfollowupdtl").widget().interactiveGrid("getActions").set("edit", false);',
'    }',
'} else {',
'    // Optionally handle the case where statusId is null or undefined',
'    console.warn("Status ID is null or undefined.");',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(86793848658682126)
,p_name=>'DAGradeIdChange'
,p_event_sequence=>270
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(47680622482927842)
,p_triggering_element=>'GRADE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'GRADE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86793937125682127)
,p_event_id=>wwv_flow_imp.id(86793848658682126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var view$ = apex.region("radfollowupdtl").widget().interactiveGrid("getViews").grid.view$',
'',
'view$.grid("gotoCell", view$.grid("getActiveRecordId"), "GRADE_ID");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(86794925740682137)
,p_name=>'ClearPageItemsInCaseOfDispose'
,p_event_sequence=>280
,p_condition_element=>'P51_ACTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'D'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86795044757682138)
,p_event_id=>wwv_flow_imp.id(86794925740682137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'').setValue(null);',
'apex.item(''P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'').setValue(null);',
'apex.item(''P51_CHEMO_NEXT_CYCLE_1'').setValue(null);',
'apex.item(''P51_CHEMO_LAST_CYCLE1'').setValue(null);',
'apex.item(''P51_REMARKS_1'').setValue(null);',
'apex.item(''P51_ORAL_CHEMO_PRESCRIBED_1'').setValue(null);',
'apex.item(''P51_RAD_FOLLOWUP_DML_STATUS'').setValue(null);',
'apex.item(''P51_SIDE_EFFECTS'').setValue(null);',
'apex.item(''P51_SIGN_BY_NAME'').setValue(null);',
'apex.item(''P51_SIGN_DATE'').setValue(null);',
'apex.item(''P51_STATUS_DESC'').setValue(null);',
'apex.item(''P51_WEEK_DESCRIPTION'').setValue(null);',
'apex.item(''P51_LAST_FRACTION_ID'').setValue(null);',
'apex.item(''P51_CHEMO_LAST_CYCLE'').setValue(null);',
'apex.item(''P51_CHEMO_NEXT_CYCLE'').setValue(null);',
'apex.item(''P51_ORAL_CHEMO_PRESCRIBED'').setValue(null);',
'apex.item(''P51_REMARKS'').setValue(null);',
'apex.item(''P51_GENERAL_MEASURE'').setValue(null);',
'apex.item(''P51_FU_INSTRUCTIONS'').setValue(null);',
'apex.item(''P51_DIET'').setValue(null);',
'apex.item(''P51_PERSONAL_HYGIENE'').setValue(null);',
'apex.item(''P51_PAT_FAMILY_EDU'').setValue(null);',
'apex.item(''P51_PAT_FAMILY_EDU_REMARKS'').setValue(null);',
'apex.item(''P51_RADIATION_NO_1'').setValue(null);',
'apex.item(''P51_SITE_ID_1'').setValue(null);',
'apex.item(''P51_WEEK_NO_1'').setValue(null);',
'apex.item(''P51_SCHEDULE_SRNO_1'').setValue(null);',
'apex.item(''P51_OC_SERIAL_NO_1'').setValue(null);',
'apex.item(''P51_SIGN_BY_1'').setValue(null);',
'apex.item(''P51_FOLLOWUP_ID'').setValue(null);',
'apex.item(''P51_STATUS_ID'').setValue(null);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(248076451810787017)
,p_name=>'DANewFollowUp'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7076260532126549)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(248076592022787018)
,p_event_id=>wwv_flow_imp.id(248076451810787017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_SUCCESS_MSG").setValue('''');',
'apex.item("P51_ERROR").setValue('''');',
'',
'apex.server.process("ProcessCreateFollowup",',
'    {',
'        pageItems: [',
'            "P51_RAD_DETAIL_ND_RADIATION_NO",',
'            "P51_RAD_DETAIL_ND_SITE_ID",',
'            "P51_SRNO",',
'            "P51_ORAL_CHEMO_PRESCRIBED_1",',
'            "P51_REMARKS"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P51_SUCCESS_MSG").setValue(obj.message);',
'',
'',
'            } else {',
'                apex.item("P51_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(248076686679787019)
,p_name=>'DADisposeFollowUp'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7076307845126550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(248076959739787022)
,p_event_id=>wwv_flow_imp.id(248076686679787019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Please confirm if you would like to dispose of this follow-up?</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(248077045125787023)
,p_event_id=>wwv_flow_imp.id(248076686679787019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P51_SUCCESS_MSG").setValue('''');',
'apex.item("P51_ERROR").setValue('''');',
'',
'apex.server.process("ProcessDisposeFollowup",',
'    {',
'        pageItems: [',
'            "P51_RAD_DETAIL_ND_RADIATION_NO",',
'            "P51_RAD_DETAIL_ND_SITE_ID",',
'            "P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P51_SUCCESS_MSG").setValue(obj.message);',
'',
'                apex.region("radfollowup").refresh();',
'                //apex.region("radfollowupdtl").refresh();',
'',
'',
'            } else {',
'                apex.item("P51_ERROR").setValue(obj.message);',
'                //alert(''error'');',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(248077260410787025)
,p_name=>'DASave'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7075637894126543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(248077302199787026)
,p_event_id=>wwv_flow_imp.id(248077260410787025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'processFollowUp();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269377726946586905)
,p_name=>'EnableDisable'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_STATUS_DESC'
,p_condition_element=>'P51_STATUS_DESC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Entry'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269377898538586906)
,p_event_id=>wwv_flow_imp.id(269377726946586905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_ORAL_CHEMO_PRESCRIBED_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269377928752586907)
,p_event_id=>wwv_flow_imp.id(269377726946586905)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_ORAL_CHEMO_PRESCRIBED_1'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P51_STATUS_DESC'
,p_client_condition_expression=>'Signed'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(270732145471288348)
,p_name=>'DANdRadFollowUpID'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'
,p_condition_element=>'P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(270732295039288349)
,p_event_id=>wwv_flow_imp.id(270732145471288348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTimeout(checkGridAndRefresh, 100);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290009661563969547)
,p_name=>'DARefresh'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(290009561276969546)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290009721932969548)
,p_event_id=>wwv_flow_imp.id(290009661563969547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'const gridIds = [',
'    ''raddetail'',',
'    ''radfollowup'',',
'    ''radfollowupdtl''',
'];',
'',
'',
'function refreshGrid(gridId, callback) {',
'    apex.region(gridId).refresh();',
'    setTimeout(callback, 200);',
'}',
'',
'',
'function refreshGridsSequentially() {',
'    refreshGrid(gridIds[0], function () {',
'        refreshGrid(gridIds[1], function () {',
'            refreshGrid(gridIds[2], function () {',
'            });',
'        });',
'    });',
'}',
'',
'refreshGridsSequentially();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10109957221634022)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeWorkflowParam'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT S.SITE_ID,',
'         S.RADIATION_NO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(S.RADIATION_NO) MRNO',
'    INTO :P51_PARAM_SITE_ID, :P51_RADIATION_NO, :P51_PARAM_MRNO',
'    FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'   WHERE SW.SR_NO = S.SR_NO',
'     AND S.SR_NO = :P51_SRNO',
'     AND S.WFE_NO = SW.WFE_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10109957221634022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37868995093546348)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadFollowUp'
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
'    INTO :P51_RADIATION_NO,',
'         :P51_RADIATION_DATE,',
'         :P51_MRNO,',
'         :P51_PATIENT_NAME,',
'         :P51_DISP_AGE,',
'         :P51_DISP_GENDER,',
'         :P51_DOCTOR_ID,',
'         :P51_DISP_DOCTOR,',
'         :P51_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE MRNO = :P51_MRNO',
'     AND RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P51_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
'        ',
'     AND RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>37868995093546348
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7585696259888739)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationFollowUpMaster'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00131.RAD_F_U_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  SELECT :P51_RADIATION_NO_1         RADIATION_NO,',
'         :P51_SITE_ID_1              SITE_ID,',
'         :P51_FOLLOWUP_ID            FOLLOWUP_ID,',
'         :P51_LAST_FRACTION_ID       LAST_FRACTION_ID,',
'         :P51_WEEK_NO_1              WEEK_NO,',
'         NULL                        WEEK_DESCRIPTION,',
'         :P51_SCHEDULE_SRNO_1        SCHEDULE_SRNO,',
'         :P51_OC_SERIAL_NO_1         OC_SERIAL_NO,',
'         TO_DATE(:P51_CHEMO_LAST_CYCLE,''DD-MON-YYYY HH24:MI'')       CHEMO_LAST_CYCLE,',
'         :P51_CHEMO_NEXT_CYCLE       CHEMO_NEXT_CYCLE,',
'         :P51_ORAL_CHEMO_PRESCRIBED_1  ORAL_CHEMO_PRESCRIBED,',
'         :P51_REMARKS                REMARKS,',
'         NULL                        SIGN_BY,',
'         NULL                        SIGN_BY_NAME,',
'         NULL                        SIGN_DATE,',
'         NULL                        STATUS_ID,',
'         NULL                        STATUS_DESC,',
'         :P51_SIDE_EFFECTS           SIDE_EFFECTS,',
'         :P51_DIET                   DIET,',
'         :P51_GENERAL_MEASURE        GENERAL_MEASURE,',
'         :P51_PERSONAL_HYGIENE       PERSONAL_HYGIENE,',
'         :P51_FU_INSTRUCTIONS        FU_INSTRUCTIONS,',
'         :P51_PAT_FAMILY_EDU         PAT_FAMILY_EDU,',
'         :P51_PAT_FAMILY_EDU_REMARKS PAT_FAMILY_EDU_REMARKS',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
' ',
'    RADIATION.PKG_S18FRM00131.UPDATE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'   ',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'',',
'                  ''Radiotheraphy Followup Saved successfully.'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
' ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7585696259888739
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(269377650928586904)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationFollowUpDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_F_U_DTL_TAB RADIATION.PKG_S18FRM00131.RAD_F_U_DTL_TAB;',
'  L_ALERT_TEXT      VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_TOXCITY_ID          RADIATION.RAD_FOLLOWUP_DTL.TOXICITY_ID%TYPE := APEX_APPLICATION.G_X01;',
'  L_TOXCITY_DESCRIPTION RADIATION.TOXICITY.DESCRIPTION%TYPE := APEX_APPLICATION.G_X02;',
'  L_GRADE_ID            RADIATION.RAD_FOLLOWUP_DTL.GRADE_ID%TYPE := APEX_APPLICATION.G_X03;',
'  L_GRADE_DESCRIPTION   RADIATION.GRADE.DESCRIPTION%TYPE := APEX_APPLICATION.G_X04;',
'  L_REMARKS             RADIATION.RAD_FOLLOWUP_DTL.REMARKS%TYPE := APEX_APPLICATION.G_X05;',
'',
'BEGIN',
'',
'  SELECT :P51_RADIATION_NO_1   RADIATION_NO,',
'         :P51_SITE_ID_1        SITE_ID,',
'         :P51_FOLLOWUP_ID      FOLLOWUP_ID,',
'         L_TOXCITY_ID          TOXICITY_ID,',
'         L_TOXCITY_DESCRIPTION TOXICITY_DESC,',
'         L_GRADE_ID            GRADE_ID,',
'         L_GRADE_DESCRIPTION   GRADE_DESC,',
'         L_REMARKS             REMARKS',
'    BULK COLLECT',
'    INTO L_RAD_F_U_DTL_TAB',
'    FROM DUAL;',
'',
'  -----------',
'  -- UPDATE',
'  -----------',
'  BEGIN',
'    RADIATION.PKG_S18FRM00131.UPDATE_RAD_FOLLOWUP_DTL(L_RAD_F_U_DTL_TAB);',
'  END;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM);',
'    APEX_JSON.CLOSE_OBJECT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>269377650928586904
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50038188449911037)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateFollowup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00131.NEW_RAD_FOLLOWUP(P_ORGANIZATION_ID       => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID     => :GV_LOCATION_ID,',
'                                             P_RADIATION_NO          => :P51_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID               => :P51_RAD_DETAIL_ND_SITE_ID,',
'                                             P_SCHEDULE_SRNO         => :P51_SRNO,',
'                                             P_ORAL_CHEMO_PRESCRIBED => :P51_ORAL_CHEMO_PRESCRIBED,',
'                                             P_REMARKS               => :P51_REMARKS,',
'                                             P_USER_MRNO             => :GV_USER_MRNO,',
'                                             P_OBJECT_CODE           => ''S18APX00044'',',
'                                             P_TERMINAL              => :GV_TERMINAL,',
'                                             P_ALERT_TEXT            => L_ALERT_TEXT,',
'                                             P_STOP                  => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The radiotherapy follow-up has been successfully created'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(7076260532126549)
,p_internal_uid=>50038188449911037
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50038279248911038)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeFollowup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00131.DISPOSE_RAD_FOLLOWUP(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                                 P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                 P_RADIATION_NO      => :P51_RAD_DETAIL_ND_RADIATION_NO,',
'                                                 P_SITE_ID           => :P51_RAD_DETAIL_ND_SITE_ID,',
'                                                 P_FOLLOWUP_ID       => :P51_RAD_FOLLOWUP_ND_FOLLOWUP_ID,',
'                                                 P_USER_MRNO         => :GV_USER_MRNO,',
'                                                 P_OBJECT_CODE       => ''S18APX00044'',',
'                                                 P_TERMINAL          => :GV_TERMINAL,',
'                                                 P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                 P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The radiotherapy follow-up has been successfully disposed'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(7076307845126550)
,p_internal_uid=>50038279248911038
);
wwv_flow_imp.component_end;
end;
/

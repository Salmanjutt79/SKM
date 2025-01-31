prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_name=>'RAD_HDR_PERFORMANCE'
,p_alias=>'RAD-HDR-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function dialogue() {',
'    js - dialog - size1600x620',
'}',
'',
'function editRadiationDetail() {',
'    //$s(''P71_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'    if ($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.item("saveradiationsite").disable();',
'    }',
'    else if ($v("P71_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.item("saveradiationsite").disable();',
'    }',
'    else {',
'        apex.item("saveradiationsite").enable();',
'    }',
'    apex.theme.openRegion(''radiationsite'')',
'',
'};',
'',
'function deleteRadiationDetail() {',
'    //$s(''P71_RADIATION_DETAIL_STATUS_ID'', _.raddetail.STATUS_ID);',
'    if ($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") {',
'        apex.message.alert("Site is signed, cannot proceed");',
'        return;',
'    }',
'    if ($v("P71_RADIATION_DETAIL_STATUS_ID") === "009") {',
'        apex.message.alert("Site is cancelled, cannot proceed");',
'        return;',
'    }',
'    apex.message.confirm(''Please confirm you want to delete Radiotheraphy Site?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationDetail",',
'                {',
'',
'                    pageItems: ["P71_RAD_DETAIL_RADIATION_NO",',
'                        "P71_RAD_DETAIL_ROW_ID",',
'                        "P71_RAD_DETAIL_SITE_ID",',
'                        "P71_RAD_DETAIL_PLANNING_ID",',
'                        "P71_RAD_MACHINE_ID",',
'                        "P71_RAD_DETAIL_DOSE_PER_FRACTION",',
'                        "P71_RAD_DETAIL_NO_OF_FRACTION",',
'                        "P71_RAD_DETAIL_TOT_DOSE",',
'                        "P71_RAD_ACTIVE",',
'                        "P71_RAD_DETAIL_EVENT_DESC",',
'                        "P71_RAD_DETAIL_PATH_REVIEWED",',
'                        "P71_RAD_DETAIL_RAD_REVIEWED"',
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
'                            apex.region(''raddetail'').refresh();',
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
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P80_UNIT").hide();',
'apex.item("P80_SERVICE_NO").hide();',
'apex.item("P80_SERVICE_STATUS").hide();',
'apex.item("P80_RANK").hide();',
'apex.item("P80_FORMATION").hide();',
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
'',
'',
'',
'#report_image_report img{',
'	height: 120px;',
'    width:  100px;',
'',
'}',
'',
'',
'',
'#on_trt_site .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'',
'#fractionhist .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#P80_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_DOCTOR_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_DISP_SITE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_EVENT_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PHYSICIST_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_SPECIAL_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PLAN_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_MACHINE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_FRACTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_FRACTION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_STATUS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P80_FIRST_TECH {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_OC_SERIAL_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P80_SCHEDULE_SRNO_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_SIGN_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_SECOND_TECH {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_INSERTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_EXAM_SPEC_VAGINUM {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_IMP_INSERTION_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_IMPLANT_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PLANNING {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_APPLICATOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_APPLICATOR_SIZE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P80_PRESCRIPTION_POINT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_DWELL_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_NO_CHANNEL_USED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_DOSE_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_ANAESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_PERFORMED_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P80_PLAN_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_PHY_PLAN_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P80_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PATIENT_TYPE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P80_PATIENT_MRNO_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P80_PASSWORD_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#fractionhist .a-GV-status {',
'',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_height=>'1300'
,p_dialog_width=>'1800'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250109213200'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27023480108378618)
,p_plug_name=>'Plan Detail'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27023938397378623)
,p_plug_name=>'Fraction'
,p_parent_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27024803481378632)
,p_plug_name=>'Implant Insertion'
,p_parent_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27025001485378634)
,p_plug_name=>'Physics Plan'
,p_parent_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27026272278378646)
,p_plug_name=>'Performance'
,p_parent_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27072480187402303)
,p_plug_name=>'Fraction History'
,p_region_name=>'fractionhist'
,p_parent_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT S.RADIATION_NO,',
'         S.SITE_ID,',
'         S.FRACTION_Id,',
'         S.VISIT_DATE FRACTION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(''020'') STATUS,',
'         0 AS DOSE',
'    FROM RADIATION.SCHEDULE S',
'   WHERE S.SR_NO = :P80_SCHEDULE_SRNO',
'     AND NOT EXISTS (SELECT 1',
'            FROM RADIATION.RAD_PERFORMANCE RP',
'           WHERE RP.RADIATION_NO = S.RADIATION_NO',
'             AND RP.SITE_ID = S.SITE_ID',
'             AND RP.FRACTION_ID = S.FRACTION_ID)',
'  UNION ALL',
'  SELECT RP.RADIATION_NO,',
'         RP.SITE_ID,',
'         RP.FRACTION_ID,',
'         RP.FRACTION_DATE,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(RP.STATUS_ID),',
'         CASE',
'           WHEN RP.STATUS_ID = ''015'' THEN',
'            RP.PERFORMED_DOSE',
'           ELSE',
'            0',
'         END AS DOSE',
'    FROM RADIATION.RAD_PERFORMANCE RP',
'   WHERE RP.RADIATION_NO = :P80_RADIATION_NO',
'     AND RP.SITE_ID = :P80_SITE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P80_SCHEDULE_SRNO,P80_RADIATION_NO,P80_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Fraction History'
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
 p_id=>wwv_flow_imp.id(27072691320402305)
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
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(27072794931402306)
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
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(27072898661402307)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction Id</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27072940800402308)
,p_name=>'FRACTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<b>Fraction Date</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(27073075281402309)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27073266458402311)
,p_name=>'DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose <br> (cGy)</b></span>'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(27072503523402304)
,p_internal_uid=>27072503523402304
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
,p_fixed_header_max_height=>300
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
 p_id=>wwv_flow_imp.id(27091263234457873)
,p_interactive_grid_id=>wwv_flow_imp.id(27072503523402304)
,p_static_id=>'270913'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(27091453425457873)
,p_report_id=>wwv_flow_imp.id(27091263234457873)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27091982753457876)
,p_view_id=>wwv_flow_imp.id(27091453425457873)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(27072691320402305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27092890042457880)
,p_view_id=>wwv_flow_imp.id(27091453425457873)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(27072794931402306)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27093757246457883)
,p_view_id=>wwv_flow_imp.id(27091453425457873)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(27072898661402307)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27094606272457886)
,p_view_id=>wwv_flow_imp.id(27091453425457873)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(27072940800402308)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27095500295457888)
,p_view_id=>wwv_flow_imp.id(27091453425457873)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(27073075281402309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(27104726056467034)
,p_view_id=>wwv_flow_imp.id(27091453425457873)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(27073266458402311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(283122733944484224)
,p_plug_name=>'Control'
,p_parent_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(191023695428593581)
,p_plug_name=>'Brachytherapy Performance'
,p_region_name=>'rad_master'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT M.RADIATION_NO,',
'             M.RADIATION_DATE,',
'             M.MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'             M.DOCTOR_ID,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'             RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DISP_SITE,',
'             RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                             P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'             RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                             P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'             RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                             P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'             D.POSITION_INSTRUCTION,',
'             RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => D.RADIATION_NO,',
'                                                             P_SITE_ID      => D.SITE_ID,',
'                                                             P_WFE_NO       => D.WFE_NO) EVENT_DESC',
'        FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'       WHERE M.RADIATION_NO = D.RADIATION_NO'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P80_MRNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(191188634821448581)
,p_plug_name=>'Patient Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>144
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
 p_id=>wwv_flow_imp.id(217498119895465583)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P80_MRNO;',
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
,p_ajax_items_to_submit=>'P80_MRNO'
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
 p_id=>wwv_flow_imp.id(166954434685315620)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(166953648756315615)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(166954029466315620)
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
 p_id=>wwv_flow_imp.id(217502762038465630)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>9999
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) STATUS_DESC',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P80_MRNO',
'   ---AND M.RADIATION_NO <> NVL(:P34_RADIATION_NO, ''$'')',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P80_MRNO'
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
 p_id=>wwv_flow_imp.id(218231722085014020)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>218231722085014020
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
 p_id=>wwv_flow_imp.id(187534784000427018)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>1
,p_column_identifier=>'F'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187534987259427020)
,p_db_column_name=>'STATUS_DESC'
,p_display_order=>2
,p_column_identifier=>'H'
,p_column_label=>'Status '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(187534956274427019)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(219322327313029870)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317695'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:STATUS_DESC:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273143336344721192)
,p_plug_name=>'Sign '
,p_region_name=>'signreg'
,p_region_css_classes=>'js-dialog-size1200x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>154
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72063434672598891)
,p_plug_name=>'First Technologist'
,p_parent_plug_id=>wwv_flow_imp.id(273143336344721192)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72063540222598892)
,p_plug_name=>'Second Technologist'
,p_parent_plug_id=>wwv_flow_imp.id(273143336344721192)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27281263981772524)
,p_button_sequence=>9
,p_button_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_button_name=>'SignHDRPerformance'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(166926492540315564)
,p_button_sequence=>11
,p_button_plug_id=>wwv_flow_imp.id(283122733944484224)
,p_button_name=>'Sign'
,p_button_static_id=>'signbtn'
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
 p_id=>wwv_flow_imp.id(166926864097315564)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_imp.id(283122733944484224)
,p_button_name=>'Save'
,p_button_static_id=>'savebtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27285098981772526)
,p_button_sequence=>46
,p_button_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(166925673727315564)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_imp.id(283122733944484224)
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
 p_id=>wwv_flow_imp.id(166924813774315563)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(283122733944484224)
,p_button_name=>'Create'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(166925256781315563)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(283122733944484224)
,p_button_name=>'Dispose'
,p_button_static_id=>'approve'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27023554685378619)
,p_name=>'P80_PHYSICIST_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_prompt=>'<b><p style="color:#00008B">Physicist Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27023623106378620)
,p_name=>'P80_SPECIAL_INSTRUCTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_prompt=>'<b><p style="color:#00008B">Special Instruction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27023712350378621)
,p_name=>'P80_PLAN_REMARKS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_prompt=>'<b><p style="color:#00008B">Plan Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27023883504378622)
,p_name=>'P80_MACHINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27023480108378618)
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024082580378624)
,p_name=>'P80_FRACTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">Fraction Id:</p></b>'
,p_format_mask=>'99.99'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024161497378625)
,p_name=>'P80_FRACTION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">Fraction Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024210313378626)
,p_name=>'P80_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024322928378627)
,p_name=>'P80_FIRST_TECH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">First Technologist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024405313378628)
,p_name=>'P80_OC_SERIAL_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">Order Key:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024591184378629)
,p_name=>'P80_SCHEDULE_SRNO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">SRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024693483378630)
,p_name=>'P80_SIGN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27024708460378631)
,p_name=>'P80_SECOND_TECH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27023938397378623)
,p_prompt=>'<b><p style="color:#00008B">Second Technologist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025114457378635)
,p_name=>'P80_INSERTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Insertion Id</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025211398378636)
,p_name=>'P80_EXAM_SPEC_VAGINUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Examination on spec. and per vaginum</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025388781378637)
,p_name=>'P80_IMP_INSERTION_TIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Insertion Time:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025407097378638)
,p_name=>'P80_IMPLANT_REMARKS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Implant Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025571703378639)
,p_name=>'P80_PLANNING'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Planning:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025667563378640)
,p_name=>'P80_APPLICATOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Applicator:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025751562378641)
,p_name=>'P80_APPLICATOR_SIZE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27024803481378632)
,p_prompt=>'<b><p style="color:#00008B">Applicator Size:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27025935463378643)
,p_name=>'P80_PRESCRIPTION_POINT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27025001485378634)
,p_prompt=>'<b><p style="color:#00008B">Prescription Point</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27026053342378644)
,p_name=>'P80_DWELL_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27025001485378634)
,p_prompt=>'<b><p style="color:#00008B">Dwell Time</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27026146401378645)
,p_name=>'P80_NO_CHANNEL_USED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27025001485378634)
,p_prompt=>'<b><p style="color:#00008B">No Channel Used</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27026384381378647)
,p_name=>'P80_DOSE_FRACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27026272278378646)
,p_prompt=>'<b><p style="color:#00008B">Planned Dose:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27026496055378648)
,p_name=>'P80_PERFORMED_DOSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27026272278378646)
,p_prompt=>'<b><p style="color:#00008B">Performed Dose:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27026522247378649)
,p_name=>'P80_ANAESTHESIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27026272278378646)
,p_prompt=>'<b><p style="color:#00008B">Anesthesia</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>' (p_attributes): onclick="return false;"'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27026638833378650)
,p_name=>'P80_REMARKS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27026272278378646)
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27072213174402301)
,p_name=>'P80_PLAN_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27026272278378646)
,p_prompt=>'<b><p style="color:#00008B">Plan Id:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27072342380402302)
,p_name=>'P80_PHY_PLAN_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27026272278378646)
,p_prompt=>'<b><p style="color:#00008B">Physics Plan Id:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27073527561402314)
,p_name=>'P80_HIST_FRACTION_ID'
,p_item_sequence=>264
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27074338755402322)
,p_name=>'P80_STATUS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27072480187402303)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27075651233402335)
,p_name=>'P80_SCHEDULE_EVENT_ID'
,p_item_sequence=>274
,p_use_cache_before_default=>'NO'
,p_item_default=>'353'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27076055107402339)
,p_name=>'P80_SIGN_SUCCESS'
,p_item_sequence=>116
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075233542598910)
,p_name=>'P80_PATIENT_TYPE_1'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'disable-keyboard-focus'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075303326598911)
,p_name=>'P80_PATIENT_MRNO_1'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075410876598912)
,p_name=>'P80_NAME_1'
,p_item_sequence=>26
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'disable-keyboard-focus'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075511993598913)
,p_name=>'P80_PASSWORD_1'
,p_item_sequence=>36
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075645396598914)
,p_name=>'P80_DISP_MRNO_1'
,p_item_sequence=>56
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075775227598915)
,p_name=>'P80_USER_MRNO_1'
,p_item_sequence=>66
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075853948598916)
,p_name=>'P80_LOGIN_DATE_1'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72075908996598917)
,p_name=>'P80_LOCATION_ID_1'
,p_item_sequence=>86
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72076077711598918)
,p_name=>'P80_LOGIN_MESSAGE_1'
,p_item_sequence=>96
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72076138562598919)
,p_name=>'P80_VALIDATE_1'
,p_item_sequence=>106
,p_item_plug_id=>wwv_flow_imp.id(72063540222598892)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159081415312816238)
,p_name=>'P80_SCHEDULE_SRNO'
,p_item_sequence=>244
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159081505936816239)
,p_name=>'P80_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159081605917816240)
,p_name=>'P80_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
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
 p_id=>wwv_flow_imp.id(159081711783816241)
,p_name=>'P80_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159081851159816242)
,p_name=>'P80_DISP_SITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
,p_source=>'DISP_SITE'
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
 p_id=>wwv_flow_imp.id(159081999415816243)
,p_name=>'P80_SETUP_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_source=>'SETUP_POSITION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159082003493816244)
,p_name=>'P80_ARM_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>174
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_source=>'ARM_POSITION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159082137681816245)
,p_name=>'P80_NECK_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_source=>'NECK_POSITION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(159082244818816246)
,p_name=>'P80_POSITION_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_source=>'POSITION_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159082337235816247)
,p_name=>'P80_EVENT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_source=>'EVENT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187627980247858855)
,p_name=>'P80_ON_TRT_RAD_NO'
,p_item_sequence=>214
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187628032495858856)
,p_name=>'P80_ON_TRT_SITE_ID'
,p_item_sequence=>224
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187629101020858866)
,p_name=>'P80_RADIATION_DETAIL_STATUS_ID'
,p_item_sequence=>234
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191060079392593684)
,p_name=>'P80_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(191060178691593685)
,p_name=>'P80_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_format_mask=>'DD-MON-RR HH24:MI'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(191060254195593686)
,p_name=>'P80_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191060371703593687)
,p_name=>'P80_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(191060429889593688)
,p_name=>'P80_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(191060843959593692)
,p_name=>'P80_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>7
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(191060989754593693)
,p_name=>'P80_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218357309625014220)
,p_name=>'P80_HISTORY_RADIATION_NO'
,p_item_sequence=>124
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(218360615494014253)
,p_name=>'P80_PARAM_SITE_ID'
,p_item_sequence=>134
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220233193236760520)
,p_name=>'P80_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>154
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220233261971760521)
,p_name=>'P80_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>164
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220236542250760553)
,p_name=>'P80_PARAM_RADIATION_NO'
,p_item_sequence=>174
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225329779356568411)
,p_name=>'P80_PARAM_MRNO'
,p_item_sequence=>184
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225455845820844008)
,p_name=>'P80_UNIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(225455966998844009)
,p_name=>'P80_SERVICE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(225456027149844010)
,p_name=>'P80_SERVICE_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(225456125200844011)
,p_name=>'P80_RANK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(225456228585844012)
,p_name=>'P80_FORMATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(191023695428593581)
,p_item_source_plug_id=>wwv_flow_imp.id(191023695428593581)
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
 p_id=>wwv_flow_imp.id(225545301425844107)
,p_name=>'P80_USER_ROLE'
,p_item_sequence=>194
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225548144632844135)
,p_name=>'P80_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>204
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253496539291016332)
,p_name=>'P80_SUCCESS_MESSAGE'
,p_item_sequence=>10009
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253496697200016333)
,p_name=>'P80_ERROR_MESSAGE'
,p_item_sequence=>10019
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273158101159721282)
,p_name=>'P80_TXT_ALERT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273143336344721192)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273158208843721283)
,p_name=>'P80_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273143336344721192)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273160228186721277)
,p_name=>'P80_PATIENT_TYPE'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_prompt=>'<b>Employee Code:</b>'
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
 p_id=>wwv_flow_imp.id(273160256397721278)
,p_name=>'P80_PATIENT_MRNO'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
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
 p_id=>wwv_flow_imp.id(273160349103721279)
,p_name=>'P80_NAME'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
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
 p_id=>wwv_flow_imp.id(273160505792721280)
,p_name=>'P80_PASSWORD'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273160629191721281)
,p_name=>'P80_DISP_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273160712608721282)
,p_name=>'P80_USER_MRNO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273160752521721283)
,p_name=>'P80_LOGIN_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273160846719721284)
,p_name=>'P80_LOCATION_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273161016289721285)
,p_name=>'P80_LOGIN_MESSAGE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273161109462721286)
,p_name=>'P80_VALIDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(72063434672598891)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276881602808525648)
,p_name=>'P80_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273143336344721192)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(283250197136484443)
,p_name=>'P80_TOTAL_DOSE'
,p_item_sequence=>84
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290862960897231317)
,p_name=>'P80_MSG'
,p_item_sequence=>94
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(293509603150119113)
,p_name=>'P80_SIGN_CANCEL'
,p_item_sequence=>104
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(293512105313119138)
,p_name=>'P80_ALERT_TEXT'
,p_item_sequence=>114
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166964620998315646)
,p_name=>'PopulateRequestMaster'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166965684079315650)
,p_event_id=>wwv_flow_imp.id(166964620998315646)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217498119895465583)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166972455719315655)
,p_name=>'CloseDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(166925673727315564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166972954791315655)
,p_event_id=>wwv_flow_imp.id(166972455719315655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166975166272315659)
,p_name=>'SetHistoryRadiationNo'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setradno'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166975614037315659)
,p_event_id=>wwv_flow_imp.id(166975166272315659)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_HISTORY_RADIATION_NO'
,p_attribute_01=>'this.triggeringElement.dataset[''radno'']'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166976090536315659)
,p_name=>'SetMRNO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166976543303315660)
,p_event_id=>wwv_flow_imp.id(166976090536315659)
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
'  IF :P80_MRNO IS NOT NULL THEN',
'    BEGIN',
'      -- CALL THE PROCEDURE',
'      HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                   P_DISP_MRNO  => :P80_MRNO,',
'                   P_MRNO       => :P80_MRNO,',
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
'  IF :P80_MRNO IS NOT NULL AND :P80_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION',
'        INTO :P80_PATIENT_NAME, :P80_DISP_AGE, :P80_DISP_GENDER',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P80_MRNO',
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
,p_attribute_02=>'P80_MRNO'
,p_attribute_03=>'P80_MRNO,P80_PATIENT_NAME,P80_DISP_GENDER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166976964418315660)
,p_name=>'SetHistoryRadiationNo1'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(217502762038465630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166979987078315662)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166980491492315663)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P80_HISTORY_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166980918554315663)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RADIATION_DATE,P80_MRNO,P80_PATIENT_NAME,P80_DISP_AGE,P80_DOCTOR_ID,P80_DISP_DOCTOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166977476175315661)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT M.RADIATION_NO,',
'         M.RADIATION_DATE,',
'         M.MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'         M.DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'         SITE_ID,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DISP_SITE,',
'         RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                         P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'         RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                         P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'         RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                         P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'         D.POSITION_INSTRUCTION,',
'         RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => D.RADIATION_NO,',
'                                                         P_SITE_ID      => D.SITE_ID,',
'                                                         P_WFE_NO       => D.WFE_NO) EVENT_DESC',
'  ',
'    INTO :P80_RADIATION_NO,',
'         :P80_RADIATION_DATE,',
'         :P80_MRNO,',
'         :P80_PATIENT_NAME,',
'         :P80_DISP_AGE,',
'         :P80_DISP_GENDER,',
'         :P80_DISP_DOCTOR,',
'         :P80_DOCTOR_ID,',
'         :P80_DISP_INTENT,',
'         :P80_SITE_ID,',
'         :P80_DISP_SITE,',
'         :P80_SETUP_POSITION_DESC,',
'         :P80_ARM_POSITION_DESC,',
'         :P80_NECK_POSITION_DESC,',
'         :P80_POSITION_INSTRUCTION,',
'         :P80_EVENT_DESC',
'  ',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.RADIATION_NO = :P80_HISTORY_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_HISTORY_RADIATION_NO'
,p_attribute_03=>'P80_RADIATION_NO,P80_PATIENT_NAME,P80_MRNO,P80_PATIENT_NAME,P80_DISP_AGE,P80_DISP_GENDER,P80_DISP_DOCTOR,P80_DOCTOR_ID,P80_DISP_INTENT,P80_SITE_ID,P80_DISP_SITE,P80_SETUP_POSITION_DESC,P80_ARM_POSITION_DESC,P80_NECK_POSITION_DESC,P80_POSITION_INSTRUC'
||'TION,P80_EVENT_DESC,P80_RADIATION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166977984131315661)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217498119895465583)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166978495648315661)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("refreshImage");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166979412834315662)
,p_event_id=>wwv_flow_imp.id(166976964418315660)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if (($v("P80_STATUS_REQUEST") === "015") || ($v("P80_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P80_DOCTOR_ID").disable();',
'    apex.item("P80_TREATMENT_INTENT_ID").disable();',
'    apex.item("P80_ICDNO").disable();',
'    apex.item("P80_ND_CHEMOTHERAPY").disable();',
'    apex.item("P80_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P80_ANESTHESIA").disable();',
'    apex.item("P80_SIMULATION_DATE").disable();',
'    apex.item("P80_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P80_DOCTOR_ID").enable();',
'    apex.item("P80_TREATMENT_INTENT_ID").enable();',
'    apex.item("P80_ICDNO").enable();',
'    apex.item("P80_ND_CHEMOTHERAPY").enable();',
'    apex.item("P80_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P80_ANESTHESIA").enable();',
'    apex.item("P80_REQ_REMARKS").enable();',
'    apex.item("P80_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P80_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P80_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P80_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P80_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P80_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P80_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P80_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P80_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'    apex.item("save").disable();',
'',
'}',
'',
'else {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").disable();',
'    apex.item("save").disable();',
'',
'}',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166982254001315664)
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
 p_id=>wwv_flow_imp.id(166982762399315664)
,p_event_id=>wwv_flow_imp.id(166982254001315664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P80_RAD_DETAIL_RADIATION_NO",',
'            "P80_RAD_DETAIL_ROW_ID",',
'            "P80_RAD_DETAIL_SITE_ID",',
'            "P80_RAD_DETAIL_PLANNING_ID",',
'            "P80_RAD_MACHINE_ID",',
'            "P80_RAD_DETAIL_DOSE_PER_FRACTION",',
'            "P80_RAD_DETAIL_NO_OF_FRACTION",',
'            "P80_RAD_DETAIL_TOT_DOSE",',
'            "P80_RAD_ACTIVE",',
'            "P80_RAD_DETAIL_EVENT_DESC",',
'            "P80_RAD_DETAIL_PATH_REVIEWED",',
'            "P80_RAD_DETAIL_RAD_REVIEWED"',
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
'                apex.region(''raddetail'').refresh();',
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
 p_id=>wwv_flow_imp.id(166983198658315664)
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
 p_id=>wwv_flow_imp.id(166983604703315665)
,p_event_id=>wwv_flow_imp.id(166983198658315664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P80_RAD_DETAIL_RADIATION_NO",',
'            "P80_RAD_DETAIL_ROW_ID",',
'            "P80_RAD_DETAIL_SITE_ID",',
'            "P80_RAD_DETAIL_PLANNING_ID",',
'            "P80_RAD_MACHINE_ID",',
'            "P80_RAD_DETAIL_DOSE_PER_FRACTION",',
'            "P80_RAD_DETAIL_NO_OF_FRACTION",',
'            "P80_RAD_DETAIL_TOT_DOSE",',
'            "P80_RAD_ACTIVE",',
'            "P80_RAD_DETAIL_EVENT_DESC",',
'            "P80_RAD_DETAIL_PATH_REVIEWED",',
'            "P80_RAD_DETAIL_RAD_REVIEWED"',
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
'                apex.region(''raddetail'').refresh();',
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
 p_id=>wwv_flow_imp.id(166991673437315668)
,p_name=>'SetTOTDose1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_DOSE_PER_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166992128893315668)
,p_event_id=>wwv_flow_imp.id(166991673437315668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P80_RAD_DETAIL_DOSE_PER_FRACTION, 0) * NVL(:P80_RAD_DETAIL_NO_OF_FRACTION, 0));'
,p_attribute_07=>'P80_RAD_DETAIL_DOSE_PER_FRACTION,P80_RAD_DETAIL_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166992590081315669)
,p_name=>'SetTOTDose2'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166993022722315669)
,p_event_id=>wwv_flow_imp.id(166992590081315669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P80_RAD_DETAIL_DOSE_PER_FRACTION, 0) * NVL(:P80_RAD_DETAIL_NO_OF_FRACTION, 0));'
,p_attribute_07=>'P80_RAD_DETAIL_DOSE_PER_FRACTION,P80_RAD_DETAIL_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166993400411315669)
,p_name=>'SetTOTDose3'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_P2_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166993989004315669)
,p_event_id=>wwv_flow_imp.id(166993400411315669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P80_RAD_DETAIL_P1_DOSE, 0) * NVL(:P80_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P2_DOSE, 0) * NVL(:P80_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P3_DOSE, 0) * NVL(:P80_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P80_RAD_DETAIL_P1_DOSE,P80_RAD_DETAIL_P1_FRACTION,P80_RAD_DETAIL_P2_DOSE,P80_RAD_DETAIL_P2_FRACTION,P80_RAD_DETAIL_P3_DOSE,P80_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166994354807315669)
,p_name=>'SetTOTDose4'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_P2_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166994858156315670)
,p_event_id=>wwv_flow_imp.id(166994354807315669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P80_RAD_DETAIL_P1_DOSE, 0) * NVL(:P80_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P2_DOSE, 0) * NVL(:P80_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P3_DOSE, 0) * NVL(:P80_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P80_RAD_DETAIL_P1_DOSE,P80_RAD_DETAIL_P1_FRACTION,P80_RAD_DETAIL_P2_DOSE,P80_RAD_DETAIL_P2_FRACTION,P80_RAD_DETAIL_P3_DOSE,P80_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166995255270315670)
,p_name=>'SetTOTDose5'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_P3_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166995752059315670)
,p_event_id=>wwv_flow_imp.id(166995255270315670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P80_RAD_DETAIL_P1_DOSE, 0) * NVL(:P80_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P2_DOSE, 0) * NVL(:P80_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P3_DOSE, 0) * NVL(:P80_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P80_RAD_DETAIL_P1_DOSE,P80_RAD_DETAIL_P1_FRACTION,P80_RAD_DETAIL_P2_DOSE,P80_RAD_DETAIL_P2_FRACTION,P80_RAD_DETAIL_P3_DOSE,P80_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166996101018315670)
,p_name=>'SetTOTDose6'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_P3_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166996691865315672)
,p_event_id=>wwv_flow_imp.id(166996101018315670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P80_RAD_DETAIL_P1_DOSE, 0) * NVL(:P80_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P2_DOSE, 0) * NVL(:P80_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P80_RAD_DETAIL_P3_DOSE, 0) * NVL(:P80_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P80_RAD_DETAIL_P1_DOSE,P80_RAD_DETAIL_P1_FRACTION,P80_RAD_DETAIL_P2_DOSE,P80_RAD_DETAIL_P2_FRACTION,P80_RAD_DETAIL_P3_DOSE,P80_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166997099320315672)
,p_name=>'SerumCreatinineRequired'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_RAD_DETAIL_SIM_CT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166997532645315672)
,p_event_id=>wwv_flow_imp.id(166997099320315672)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166998030572315672)
,p_event_id=>wwv_flow_imp.id(166997099320315672)
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
'  RADIATION.PKG_RADIATION.ORDER_SERUM_CRETININE(:P80_RAD_DETAIL_SIM_CT_ID,',
'                                                :GV_USER_MRNO,',
'                                                L_ALERT_TEXT,',
'                                                L_STOP);',
'',
'  IF L_STOP IS NOT NULL AND :P80_RAD_DETAIL_DML_STATUS = ''CREATE'' THEN',
'    :P80_SEURM_CREATININE_ALERT := L_ALERT_TEXT;',
'  ELSE',
'    :P80_SEURM_CREATININE_ALERT := NULL;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'  ',
'END;',
''))
,p_attribute_02=>'P80_RAD_DETAIL_SIM_CT_ID'
,p_attribute_03=>'P80_SEURM_CREATININE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166998585000315672)
,p_event_id=>wwv_flow_imp.id(166997099320315672)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P80_SEURM_CREATININE_ALERT.'
,p_attribute_06=>'Ok'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P80_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166998942859315672)
,p_name=>'SetUserRole'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(166999460971315673)
,p_event_id=>wwv_flow_imp.id(166998942859315672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_USER_ROLE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO);'
,p_attribute_07=>'GV_USER_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(166999867212315673)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167000354373315673)
,p_event_id=>wwv_flow_imp.id(166999867212315673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P80_MRNO IS NOT NULL THEN',
'  ',
'    :P80_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P80_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P80_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P80_MRNO);',
'      :P80_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P80_MRNO);',
'      :P80_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P80_MRNO);',
'      :P80_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P80_MRNO);',
'      :P80_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P80_MRNO);',
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
,p_attribute_02=>'P80_MRNO'
,p_attribute_03=>'P80_SYSTEM_CONSTANT_ID_428,P80_SERVICE_NO,P80_SERVICE_STATUS,P80_RANK,P80_FORMATION,P80_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167000806492315674)
,p_event_id=>wwv_flow_imp.id(166999867212315673)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P80_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P80_SERVICE_NO").show();',
'    apex.item("P80_SERVICE_STATUS").show();',
'    apex.item("P80_RANK").show();',
'    apex.item("P80_FORMATION").show();',
'    apex.item("P80_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P80_SERVICE_NO").hide();',
'    apex.item("P80_SERVICE_STATUS").hide();',
'    apex.item("P80_RANK").hide();',
'    apex.item("P80_FORMATION").hide();',
'    apex.item("P80_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167001278986315674)
,p_name=>'RefreshRegion'
,p_event_sequence=>420
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167001771987315674)
,p_event_id=>wwv_flow_imp.id(167001278986315674)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217502762038465630)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167002694922315675)
,p_name=>'PopulateDemographicsData'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167003165386315675)
,p_event_id=>wwv_flow_imp.id(167002694922315675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P80_MRNO IS NOT NULL OR :P80_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION, TO_CHAR(SYSDATE, ''DD-MON-RR HH24:MI'')',
'        INTO :P80_PATIENT_NAME, :P80_DISP_AGE, :P80_DISP_GENDER, :P80_RADIATION_DATE',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P80_MRNO',
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
,p_attribute_02=>'P80_MRNO'
,p_attribute_03=>'P80_PATIENT_NAME,P80_DISP_AGE,P80_RADIATION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167003590711315676)
,p_name=>'DisableFieldsButtonsRadMaster'
,p_event_sequence=>460
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167004068285315677)
,p_event_id=>wwv_flow_imp.id(167003590711315676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167005355159315677)
,p_name=>'SetMRNO1'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167006361382315678)
,p_event_id=>wwv_flow_imp.id(167005355159315677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_PASSWORD,P80_PATIENT_NAME,P80_DISP_MRNO,P80_ND_SUCCESS_MESSAGE,P80_ERROR_MESSAGE,P80_ND_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167006849436315678)
,p_event_id=>wwv_flow_imp.id(167005355159315677)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P80_PATIENT_TYPE IS NOT NULL AND :P80_PATIENT_MRNO IS NOT NULL THEN',
'    :P80_DISP_MRNO := :P80_PATIENT_TYPE || LPAD(:P80_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_PATIENT_TYPE,P80_PATIENT_MRNO'
,p_attribute_03=>'P80_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167007319874315678)
,p_event_id=>wwv_flow_imp.id(167005355159315677)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P80_ERROR := NULL;',
'  IF :P80_PATIENT_MRNO IS NOT NULL THEN',
'    :P80_DISP_MRNO := :P80_PATIENT_TYPE || LPAD(:P80_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P80_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P80_ERROR        := ''This is not an active employee.'';',
'      :P80_PATIENT_MRNO := NULL;',
'      :P80_DISP_MRNO    := NULL;',
'      :P80_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P80_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P80_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P80_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_PATIENT_MRNO,P80_PATIENT_TYPE'
,p_attribute_03=>'P80_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167005835756315678)
,p_event_id=>wwv_flow_imp.id(167005355159315677)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P80_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P80_DISP_MRNO);'
,p_attribute_02=>'P80_DISP_MRNO'
,p_attribute_03=>'P80_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167007780412315680)
,p_name=>'DASuccessMsg'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_SUCCESS_MSG'
,p_condition_element=>'P80_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167008273589315684)
,p_event_id=>wwv_flow_imp.id(167007780412315680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P80_SUCCESS_MSG.<b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P80_SUCCESS_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167008603414315684)
,p_name=>'DAErrorMsg'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_ERROR_MESSAGE'
,p_condition_element=>'P80_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167009103105315684)
,p_event_id=>wwv_flow_imp.id(167008603414315684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P80_ERROR_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P80_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27073660594402315)
,p_name=>'DAFractionHistory'
,p_event_sequence=>540
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27072480187402303)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27073764109402316)
,p_event_id=>wwv_flow_imp.id(27073660594402315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P80_HIST_FRACTION_ID'', _.fractionhist.FRACTION_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27074577129402324)
,p_name=>'DASignHDRPerformance'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(166926492540315564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27077006599402349)
,p_event_id=>wwv_flow_imp.id(27074577129402324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_PATIENT_MRNO_1,P80_PASSWORD_1,P80_NAME_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27074640138402325)
,p_event_id=>wwv_flow_imp.id(27074577129402324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P80_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P80_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P80_DISP_MRNO    := (:P80_PATIENT_TYPE ||',
'                         LPAD(:P80_PATIENT_MRNO, 8, ''0''));',
'    :P80_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P80_DISP_MRNO);',
'    :P80_PATIENT_TYPE_1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P80_PATIENT_MRNO,P80_PATIENT_TYPE,P80_DISP_MRNO,P80_NAME,P80_PATIENT_TYPE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27074768357402326)
,p_event_id=>wwv_flow_imp.id(27074577129402324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P80_VALIDATE").setValue(''N'');',
'apex.item("P80_VALIDATE_1").setValue(''N'');',
'apex.item("P80_SIGN_SUCCESS").setValue(''N'');',
'apex.item("P80_SUCCESS_MSG").setValue('''');',
'apex.item("P80_ERROR").setValue('''');',
'apex.item("P80_SIGN_SUCCESS").setValue(''N'');',
'',
'apex.theme.openRegion("signreg");',
'apex.item("P80_PASSWORD").setFocus();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27074991565402328)
,p_name=>'CloseSignRegion'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27285098981772526)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27075082725402329)
,p_event_id=>wwv_flow_imp.id(27074991565402328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(273143336344721192)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27075379183402332)
,p_name=>'DASignHDRPerformance1'
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27281263981772524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005323613969504)
,p_event_id=>wwv_flow_imp.id(27075379183402332)
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
'  :P80_TXT_ALERT_TEXT := null;',
'  :P80_SUCCESS_MSG    := null;',
'  :P80_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P80_DISP_MRNO,',
'                                          :P80_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P80_ERROR := ''The First Technologist password is incorrect'';',
'    RETURN;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P80_VALIDATE'', ''Y'');',
'    :P80_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P80_DISP_MRNO,P80_PASSWORD'
,p_attribute_03=>'P80_TXT_ALERT_TEXT,P80_ERROR_MESSAGE,P80_VALIDATE,P80_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005418495969505)
,p_event_id=>wwv_flow_imp.id(27075379183402332)
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
'  IF :P80_VALIDATE = ''Y'' THEN',
'    :P80_TXT_ALERT_TEXT := null;',
'    :P80_SUCCESS_MSG    := null;',
'    :P80_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P80_DISP_MRNO_1,',
'                                            :P80_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P80_ERROR := ''The Second Technologist password is incorrect'';',
'      RETURN;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P80_VALIDATE_1'', ''Y'');',
'      :P80_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_VALIDATE,GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P80_DISP_MRNO_1,P80_PASSWORD_1'
,p_attribute_03=>'P80_TXT_ALERT_TEXT,P80_ERROR_MESSAGE,P80_VALIDATE_1,P80_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005574005969506)
,p_event_id=>wwv_flow_imp.id(27075379183402332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P80_VALIDATE = ''Y'' AND :P80_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00159.SIGN_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                 P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                 P_RADIATION_NO      => :P80_RADIATION_NO,',
'                                                 P_SITE_ID           => :P80_SITE_ID,',
'                                                 P_FRACTION_ID       => :P80_FRACTION_ID,',
'                                                 P_SCHEDULE_SRNO     => :P80_SCHEDULE_SRNO,',
'                                                 P_SCHEDULE_EVENT_ID => :P80_SCHEDULE_EVENT_ID,',
'                                                 P_FIRST_TECH        => :P80_DISP_MRNO,',
'                                                 P_SECOND_TECH       => :P80_DISP_MRNO_1,',
'                                                 P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''USER_MRNO''),',
'                                                 P_OBJECT_CODE       => ''S18APX00069'',',
'                                                 P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                 P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                 P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P80_ERROR := L_ALERT_TEXT;',
'      :P80_SIGN_SUCCESS := ''N'';',
'    ELSE',
'      :P80_SUCCESS_MSG := ''The Brachytherapy procedure has been properly signed.'';',
'      :P80_SIGN_SUCCESS := ''Y'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_VALIDATE,P80_VALIDATE_1,P80_RADIATION_NO,P80_SITE_ID,P80_FRACTION_ID,P80_SCHEDULE_SRNO,P80_SCHEDULE_EVENT_ID,P80_DISP_MRNO,P80_DISP_MRNO_1'
,p_attribute_03=>'P80_SIGN_SUCCESS,P80_ERROR'
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
 p_id=>wwv_flow_imp.id(290005690673969507)
,p_event_id=>wwv_flow_imp.id(27075379183402332)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005750377969508)
,p_event_id=>wwv_flow_imp.id(27075379183402332)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => P.STATUS_ID),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY1),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY2),',
'         P.STATUS_ID, TO_CHAR(P.SIGN_DATE, ''DD-MON-YYYY HH24:MI'')',
'  ',
'    INTO :P80_STATUS, :P80_FIRST_TECH, :P80_SECOND_TECH, :P80_STATUS_ID, :P80_SIGN_DATE',
'    FROM RADIATION.RAD_PERFORMANCE    P,',
'         RADIATION.RAD_IMPLANT_INSERT I,',
'         RADIATION.RAD_PHYSICS        RF',
'   WHERE P.RADIATION_NO = :P80_RADIATION_NO',
'     AND P.SITE_ID = :P80_SITE_ID',
'     AND P.FRACTION_ID = :P80_HIST_FRACTION_ID',
'     AND P.RADIATION_NO = I.RADIATION_NO',
'     AND P.SITE_ID = I.SITE_ID',
'     AND P.IMP_INSERTION_ID = I.INSERTION_ID',
'     AND RF.RADIATION_NO = P.RADIATION_NO',
'     AND RF.SITE_ID = P.SITE_ID',
'     AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_RADIATION_NO,P80_SITE_ID,P80_HIST_FRACTION_ID'
,p_attribute_03=>'P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_STATUS_ID,P80_SIGN_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P80_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005851365969509)
,p_event_id=>wwv_flow_imp.id(27075379183402332)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P80_STATUS_ID") === "015") {',
'    apex.item("savebtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.theme.closeRegion(''signreg'');',
'}',
'else {',
'    apex.item("savebtn").enable();',
'    apex.item("signbtn").enable();',
'}',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P80_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27076306383402342)
,p_name=>'SetMRNO11'
,p_event_sequence=>580
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_PATIENT_MRNO_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27076487916402343)
,p_event_id=>wwv_flow_imp.id(27076306383402342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_NAME_1,P80_PASSWORD_1,P80_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27076591864402344)
,p_event_id=>wwv_flow_imp.id(27076306383402342)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P80_PATIENT_TYPE_1 IS NOT NULL AND :P80_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P80_DISP_MRNO_1 := :P80_PATIENT_TYPE_1 || LPAD(:P80_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_PATIENT_TYPE_1,P80_PATIENT_MRNO_1'
,p_attribute_03=>'P80_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27076678123402345)
,p_event_id=>wwv_flow_imp.id(27076306383402342)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P80_ERROR := NULL;',
'  IF :P80_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P80_DISP_MRNO_1 := :P80_PATIENT_TYPE_1 ||',
'                        LPAD(:P80_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P80_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P80_ERROR          := ''This is not an active employee.'';',
'      :P80_PATIENT_MRNO_1 := NULL;',
'      :P80_DISP_MRNO_1    := NULL;',
'      :P80_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P80_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P80_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P80_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_PATIENT_MRNO_1,P80_PATIENT_TYPE_1'
,p_attribute_03=>'P80_DISP_MRNO_1,P80_ERROR_MESSAGE,P80_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27076755526402346)
,p_event_id=>wwv_flow_imp.id(27076306383402342)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P80_ERROR.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P80_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27076828949402347)
,p_event_id=>wwv_flow_imp.id(27076306383402342)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P80_NAME_1:= his.pkg_patient.GET_PATIENT_NAME(:P80_DISP_MRNO_1);'
,p_attribute_02=>'P80_DISP_MRNO_1'
,p_attribute_03=>'P80_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54535764539908249)
,p_event_id=>wwv_flow_imp.id(27076306383402342)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P80_PASSWORD_1").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54534355837908235)
,p_name=>'DAEnterKeyPAssword'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_PASSWORD_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54534533304908237)
,p_event_id=>wwv_flow_imp.id(54534355837908235)
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
'  :P80_TXT_ALERT_TEXT := null;',
'  :P80_SUCCESS_MSG    := null;',
'  :P80_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P80_DISP_MRNO,',
'                                          :P80_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P80_ERROR := ''The First Technologist password is incorrect'';',
'    RETURN;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P80_VALIDATE'', ''Y'');',
'    :P80_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P80_DISP_MRNO,P80_PASSWORD'
,p_attribute_03=>'P80_TXT_ALERT_TEXT,P80_ERROR_MESSAGE,P80_VALIDATE,P80_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54534634556908238)
,p_event_id=>wwv_flow_imp.id(54534355837908235)
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
'  IF :P80_VALIDATE = ''Y'' THEN',
'    :P80_TXT_ALERT_TEXT := null;',
'    :P80_SUCCESS_MSG    := null;',
'    :P80_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P80_DISP_MRNO_1,',
'                                            :P80_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P80_ERROR := ''The Second Technologist password is incorrect'';',
'      RETURN;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P80_VALIDATE_1'', ''Y'');',
'      :P80_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_VALIDATE,GV_USER_MRNO,GV_TERMINAL,GV_LOCATION_ID,P80_DISP_MRNO_1,P80_PASSWORD_1'
,p_attribute_03=>'P80_TXT_ALERT_TEXT,P80_ERROR_MESSAGE,P80_VALIDATE_1,P80_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54534706793908239)
,p_event_id=>wwv_flow_imp.id(54534355837908235)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P80_VALIDATE = ''Y'' AND :P80_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00159.SIGN_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                 P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                 P_RADIATION_NO      => :P80_RADIATION_NO,',
'                                                 P_SITE_ID           => :P80_SITE_ID,',
'                                                 P_FRACTION_ID       => :P80_FRACTION_ID,',
'                                                 P_SCHEDULE_SRNO     => :P80_SCHEDULE_SRNO,',
'                                                 P_SCHEDULE_EVENT_ID => :P80_SCHEDULE_EVENT_ID,',
'                                                 P_FIRST_TECH        => :P80_DISP_MRNO,',
'                                                 P_SECOND_TECH       => :P80_DISP_MRNO_1,',
'                                                 P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''USER_MRNO''),',
'                                                 P_OBJECT_CODE       => ''S18APX00069'',',
'                                                 P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                 P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                 P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P80_ERROR := L_ALERT_TEXT;',
'      :P80_SIGN_SUCCESS := ''N'';',
'    ELSE',
'      :P80_SUCCESS_MSG := ''The Brachytherapy procedure has been properly signed.'';',
'      :P80_SIGN_SUCCESS := ''Y'';',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P80_VALIDATE,P80_VALIDATE_1,P80_RADIATION_NO,P80_SITE_ID,P80_FRACTION_ID,P80_SCHEDULE_SRNO,P80_SCHEDULE_EVENT_ID,P80_DISP_MRNO,P80_DISP_MRNO_1'
,p_attribute_03=>'P80_SIGN_SUCCESS,P80_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005226714969503)
,p_event_id=>wwv_flow_imp.id(54534355837908235)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54534863690908240)
,p_event_id=>wwv_flow_imp.id(54534355837908235)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => P.STATUS_ID),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY1),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY2),',
'         P.STATUS_ID, TO_CHAR(P.SIGN_DATE, ''DD-MON-YYYY HH24:MI'')',
'  ',
'    INTO :P80_STATUS, :P80_FIRST_TECH, :P80_SECOND_TECH, :P80_STATUS_ID, :P80_SIGN_DATE',
'    FROM RADIATION.RAD_PERFORMANCE    P,',
'         RADIATION.RAD_IMPLANT_INSERT I,',
'         RADIATION.RAD_PHYSICS        RF',
'   WHERE P.RADIATION_NO = :P80_RADIATION_NO',
'     AND P.SITE_ID = :P80_SITE_ID',
'     AND P.FRACTION_ID = :P80_HIST_FRACTION_ID',
'     AND P.RADIATION_NO = I.RADIATION_NO',
'     AND P.SITE_ID = I.SITE_ID',
'     AND P.IMP_INSERTION_ID = I.INSERTION_ID',
'     AND RF.RADIATION_NO = P.RADIATION_NO',
'     AND RF.SITE_ID = P.SITE_ID',
'     AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_RADIATION_NO,P80_SITE_ID,P80_HIST_FRACTION_ID'
,p_attribute_03=>'P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_STATUS_ID,P80_SIGN_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P80_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54534908521908241)
,p_event_id=>wwv_flow_imp.id(54534355837908235)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P80_STATUS_ID") === "015") {',
'    apex.item("savebtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.theme.closeRegion(''signreg'');',
'}',
'else {',
'    apex.item("savebtn").enable();',
'    apex.item("signbtn").enable();',
'}',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P80_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54535031415908242)
,p_name=>'DAPasswordSetFocus@Enter'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54535293408908244)
,p_event_id=>wwv_flow_imp.id(54535031415908242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P80_PATIENT_MRNO_1").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253495383757016320)
,p_name=>'DAHistFractionId'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_HIST_FRACTION_ID'
,p_condition_element=>'P80_HIST_FRACTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253497035688016337)
,p_event_id=>wwv_flow_imp.id(253495383757016320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P80_FRACTION_ID         := NULL;',
'  :P80_FRACTION_DATE       := NULL;',
'  :P80_STATUS              := NULL;',
'  :P80_FIRST_TECH          := NULL;',
'  :P80_SECOND_TECH         := NULL;',
'  :P80_OC_SERIAL_NO        := NULL;',
'  :P80_SCHEDULE_SRNO_1     := NULL;',
'  :P80_SIGN_DATE           := NULL;',
'  :P80_PHYSICIST_REMARKS   := NULL;',
'  :P80_SPECIAL_INSTRUCTION := NULL;',
'  :P80_PLAN_REMARKS        := NULL;',
'  :P80_MACHINE             := NULL;',
'  :P80_INSERTION_ID        := NULL;',
'  :P80_EXAM_SPEC_VAGINUM   := NULL;',
'  :P80_IMP_INSERTION_TIME  := NULL;',
'  :P80_IMPLANT_REMARKS     := NULL;',
'  :P80_PLANNING            := NULL;',
'  :P80_APPLICATOR          := NULL;',
'  :P80_APPLICATOR_SIZE     := NULL;',
'  :P80_PRESCRIPTION_POINT  := NULL;',
'  :P80_DWELL_TIME          := NULL;',
'  :P80_NO_CHANNEL_USED     := NULL;',
'  :P80_DOSE_FRACTION       := NULL;',
'  :P80_ANAESTHESIA         := NULL;',
'  :P80_PERFORMED_DOSE      := NULL;',
'  :P80_REMARKS             := NULL;',
'  :P80_PLAN_ID             := NULL;',
'  :P80_PHY_PLAN_ID         := NULL;',
'  :P80_STATUS_ID           := NULL;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_FRACTION_ID,P80_FRACTION_DATE,P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_OC_SERIAL_NO,P80_SCHEDULE_SRNO_1,P80_SIGN_DATE,P80_PHYSICIST_REMARKS,P80_SPECIAL_INSTRUCTION,P80_PLAN_REMARKS,P80_MACHINE,P80_INSERTION_ID,P80_EXAM_SPEC_VAGINUM,P80_IMP_I'
||'NSERTION_TIME,P80_IMPLANT_REMARKS,P80_PLANNING,P80_APPLICATOR,P80_APPLICATOR_SIZE,P80_PRESCRIPTION_POINT,P80_DWELL_TIME,P80_NO_CHANNEL_USED,P80_DOSE_FRACTION,P80_ANAESTHESIA,P80_PERFORMED_DOSE,P80_REMARKS,P80_PLAN_ID,P80_PHY_PLAN_ID,P80_STATUS_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253495262820016319)
,p_event_id=>wwv_flow_imp.id(253495383757016320)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT P.FRACTION_ID,',
'         TO_CHAR(P.FRACTION_DATE, ''DD-MON-YYYY HH24:MI''), ',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => P.STATUS_ID),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY1),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY2),',
'         P.OC_SERIAL_NO,',
'         P.SCHEDULE_SRNO,',
'         TO_CHAR(P.SIGN_DATE, ''DD-MON-YYYY HH24:MI''), ',
'         RF.REMARKS PHYSICIST_REMARKS,',
'         (SELECT D.SPECIAL_INSTRUCTION',
'            FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS D',
'           WHERE D.RADIATION_NO = P.RADIATION_NO',
'             AND D.SITE_ID = P.SITE_ID',
'             AND D.PHASE_NO = TRUNC(P.FRACTION_ID)',
'             AND D.SUB_SITE_ID = 1',
'             AND D.FRACTION_NO =',
'                 (P.FRACTION_ID - TRUNC(P.FRACTION_ID)) * 100) SPECIAL_INSTRUCTION,',
'         (SELECT RP.INSTRUCTIONS',
'            FROM RADIATION.RAD_PLAN RP',
'           WHERE RP.RADIATION_NO = P.RADIATION_NO',
'             AND RP.SITE_ID = P.SITE_ID',
'             AND RP.PLAN_ID = P.PLAN_ID) PLAN_REMARKS,',
'         RADIATION.PKG_RADIATION.GET_MACHINE_DESC(RF.MACHINE_ID) MACHINE,',
'         P.IMP_INSERTION_ID INSERTION_ID,',
'         I.EXAM_SPEC_VAGINUM,',
'         I.SIGN_DATE,',
'         I.REMARKS IMPLANT_REMARKS,',
'         (SELECT P.DESCRIPTION',
'            FROM RADIATION.PLANNING P',
'           WHERE P.PLANNING_ID = I.PLANNING_ID),',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_DESC(APPLICATOR_ID) APPLICATOR,',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_SIZE_DESC(APPLICATOR_ID,',
'                                                          APPLICATOR_SIZE_ID) APPLICATOR_SIZE,',
'         (SELECT PP.DESCRIPTION',
'            FROM RADIATION.PRESCRIPTION_POINT PP',
'           WHERE PP.PRESCRIPTION_POINT_ID = RF.PRESCRIPTION_POINT_ID) PRESCRIPTION_POINT,',
'         RF.DWELL_TIME,',
'         RF.NO_CHANNEL_USED,',
'         P.DOSE_FRACTION,',
'         (SELECT ANAESTHESIA',
'            FROM RADIATION.RADIATION_MASTER',
'           WHERE RADIATION_NO = P.RADIATION_NO) ANAESTHESIA,',
'         P.PERFORMED_DOSE,',
'         P.REMARKS,',
'         P.PLAN_ID,',
'         P.PHY_PLAN_ID,',
'         P.STATUS_ID',
'  ',
'    INTO :P80_FRACTION_ID,',
'         :P80_FRACTION_DATE,',
'         :P80_STATUS,',
'         :P80_FIRST_TECH,',
'         :P80_SECOND_TECH,',
'         :P80_OC_SERIAL_NO,',
'         :P80_SCHEDULE_SRNO_1,',
'         :P80_SIGN_DATE,',
'         :P80_PHYSICIST_REMARKS,',
'         :P80_SPECIAL_INSTRUCTION,',
'         :P80_PLAN_REMARKS,',
'         :P80_MACHINE,',
'         :P80_INSERTION_ID,',
'         :P80_EXAM_SPEC_VAGINUM,',
'         :P80_IMP_INSERTION_TIME,',
'         :P80_IMPLANT_REMARKS,',
'         :P80_PLANNING,',
'         :P80_APPLICATOR,',
'         :P80_APPLICATOR_SIZE,',
'         :P80_PRESCRIPTION_POINT,',
'         :P80_DWELL_TIME,',
'         :P80_NO_CHANNEL_USED,',
'         :P80_DOSE_FRACTION,',
'         :P80_ANAESTHESIA,',
'         :P80_PERFORMED_DOSE,',
'         :P80_REMARKS,',
'         :P80_PLAN_ID,',
'         :P80_PHY_PLAN_ID,',
'         :P80_STATUS_ID',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE   P,',
'         RADIATION.RAD_IMPLANT_INSERT I,',
'         RADIATION.RAD_PHYSICS        RF',
'   WHERE P.RADIATION_NO = :P80_RADIATION_NO',
'     AND P.SITE_ID = NVL(:P80_SITE_ID, ''~'')',
'     AND P.FRACTION_ID = :P80_HIST_FRACTION_ID',
'     AND P.RADIATION_NO = I.RADIATION_NO',
'     AND P.SITE_ID = I.SITE_ID',
'     AND P.IMP_INSERTION_ID = I.INSERTION_ID',
'     AND RF.RADIATION_NO = P.RADIATION_NO',
'     AND RF.SITE_ID = P.SITE_ID',
'     AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_RADIATION_NO,P80_SITE_ID,P80_HIST_FRACTION_ID'
,p_attribute_03=>'P80_FRACTION_ID,P80_FRACTION_DATE,P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_OC_SERIAL_NO,P80_SCHEDULE_SRNO_1,P80_SIGN_DATE,P80_PHYSICIST_REMARKS,P80_SPECIAL_INSTRUCTION,P80_PLAN_REMARKS,P80_MACHINE,P80_INSERTION_ID,P80_EXAM_SPEC_VAGINUM,P80_IMP_I'
||'NSERTION_TIME,P80_IMPLANT_REMARKS,P80_PLANNING,P80_APPLICATOR,P80_APPLICATOR_SIZE,P80_PRESCRIPTION_POINT,P80_DWELL_TIME,P80_NO_CHANNEL_USED,P80_DOSE_FRACTION,P80_ANAESTHESIA,P80_PERFORMED_DOSE,P80_REMARKS,P80_PLAN_ID,P80_PHY_PLAN_ID,P80_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253495700943016324)
,p_name=>'ClearPageItems'
,p_event_sequence=>620
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253495883557016325)
,p_event_id=>wwv_flow_imp.id(253495700943016324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P80_FRACTION_ID,P80_FRACTION_DATE,P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_OC_SERIAL_NO,P80_SCHEDULE_SRNO_1,P80_SIGN_DATE,P80_PHYSICIST_REMARKS,P80_SPECIAL_INSTRUCTION,P80_PLAN_REMARKS,P80_MACHINE,P80_INSERTION_ID,P80_EXAM_SPEC_VAGINUM,P80_IMP_I'
||'NSERTION_TIME,P80_IMPLANT_REMARKS,P80_PLANNING,P80_APPLICATOR,P80_APPLICATOR_SIZE,P80_PRESCRIPTION_POINT,P80_DWELL_TIME,P80_NO_CHANNEL_USED,P80_DOSE_FRACTION,P80_ANAESTHESIA,P80_PERFORMED_DOSE,P80_REMARKS,P80_PLAN_ID,P80_PHY_PLAN_ID,P80_STATUS_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253495990182016326)
,p_name=>'DAStatusID'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253496086402016327)
,p_event_id=>wwv_flow_imp.id(253495990182016326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P80_STATUS_ID") === "015") {',
'    apex.item("savebtn").disable();',
'    apex.item("signbtn").disable();',
'}',
'else {',
'    apex.item("savebtn").enable();',
'    apex.item("signbtn").enable();',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253496153747016328)
,p_name=>'DADispose'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(166925256781315563)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253496216487016329)
,p_event_id=>wwv_flow_imp.id(253496153747016328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Please confirm if you would like to dispose of this brachytherapy performance?</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253496325175016330)
,p_event_id=>wwv_flow_imp.id(253496153747016328)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P80_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P80_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessDisposeHDRPerformance",',
'    {',
'        pageItems: [',
'            "P80_RADIATION_NO",',
'            "P80_SITE_ID",',
'            "P80_FRACTION_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P80_SUCCESS_MESSAGE").setValue(obj.message);',
'                //apex.region("fractionhist").refresh();',
'',
'',
'            } else {',
'                apex.item("P80_ERROR_MESSAGE").setValue(obj.message);',
'                return; ',
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
 p_id=>wwv_flow_imp.id(253497183740016338)
,p_event_id=>wwv_flow_imp.id(253496153747016328)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P80_FRACTION_ID         := NULL;',
'  :P80_FRACTION_DATE       := NULL;',
'  :P80_STATUS              := NULL;',
'  :P80_FIRST_TECH          := NULL;',
'  :P80_SECOND_TECH         := NULL;',
'  :P80_OC_SERIAL_NO        := NULL;',
'  :P80_SCHEDULE_SRNO_1     := NULL;',
'  :P80_SIGN_DATE           := NULL;',
'  :P80_PHYSICIST_REMARKS   := NULL;',
'  :P80_SPECIAL_INSTRUCTION := NULL;',
'  :P80_PLAN_REMARKS        := NULL;',
'  :P80_MACHINE             := NULL;',
'  :P80_INSERTION_ID        := NULL;',
'  :P80_EXAM_SPEC_VAGINUM   := NULL;',
'  :P80_IMP_INSERTION_TIME  := NULL;',
'  :P80_IMPLANT_REMARKS     := NULL;',
'  :P80_PLANNING            := NULL;',
'  :P80_APPLICATOR          := NULL;',
'  :P80_APPLICATOR_SIZE     := NULL;',
'  :P80_PRESCRIPTION_POINT  := NULL;',
'  :P80_DWELL_TIME          := NULL;',
'  :P80_NO_CHANNEL_USED     := NULL;',
'  :P80_DOSE_FRACTION       := NULL;',
'  :P80_ANAESTHESIA         := NULL;',
'  :P80_PERFORMED_DOSE      := NULL;',
'  :P80_REMARKS             := NULL;',
'  :P80_PLAN_ID             := NULL;',
'  :P80_PHY_PLAN_ID         := NULL;',
'  :P80_STATUS_ID           := NULL;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_FRACTION_ID,P80_FRACTION_DATE,P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_OC_SERIAL_NO,P80_SCHEDULE_SRNO_1,P80_SIGN_DATE,P80_PHYSICIST_REMARKS,P80_SPECIAL_INSTRUCTION,P80_PLAN_REMARKS,P80_MACHINE,P80_INSERTION_ID,P80_EXAM_SPEC_VAGINUM,P80_IMP_I'
||'NSERTION_TIME,P80_IMPLANT_REMARKS,P80_PLANNING,P80_APPLICATOR,P80_APPLICATOR_SIZE,P80_PRESCRIPTION_POINT,P80_DWELL_TIME,P80_NO_CHANNEL_USED,P80_DOSE_FRACTION,P80_ANAESTHESIA,P80_PERFORMED_DOSE,P80_REMARKS,P80_PLAN_ID,P80_PHY_PLAN_ID,P80_STATUS_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P80_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253497424570016341)
,p_event_id=>wwv_flow_imp.id(253496153747016328)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT P.FRACTION_ID,',
'         TO_CHAR(P.FRACTION_DATE,''DD-MON-YYYY HH24:MI''), ',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => P.STATUS_ID),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY1),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY2),',
'         P.OC_SERIAL_NO,',
'         P.SCHEDULE_SRNO,',
'         TO_CHAR(P.SIGN_DATE, ''DD-MON-YYYY HH24:MI''), ',
'         RF.REMARKS PHYSICIST_REMARKS,',
'         (SELECT D.SPECIAL_INSTRUCTION',
'            FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS D',
'           WHERE D.RADIATION_NO = P.RADIATION_NO',
'             AND D.SITE_ID = P.SITE_ID',
'             AND D.PHASE_NO = TRUNC(P.FRACTION_ID)',
'             AND D.SUB_SITE_ID = 1',
'             AND D.FRACTION_NO =',
'                 (P.FRACTION_ID - TRUNC(P.FRACTION_ID)) * 100) SPECIAL_INSTRUCTION,',
'         (SELECT RP.INSTRUCTIONS',
'            FROM RADIATION.RAD_PLAN RP',
'           WHERE RP.RADIATION_NO = P.RADIATION_NO',
'             AND RP.SITE_ID = P.SITE_ID',
'             AND RP.PLAN_ID = P.PLAN_ID) PLAN_REMARKS,',
'         RADIATION.PKG_RADIATION.GET_MACHINE_DESC(RF.MACHINE_ID) MACHINE,',
'         P.IMP_INSERTION_ID INSERTION_ID,',
'         I.EXAM_SPEC_VAGINUM,',
'         I.SIGN_DATE,',
'         I.REMARKS IMPLANT_REMARKS,',
'         (SELECT P.DESCRIPTION',
'            FROM RADIATION.PLANNING P',
'           WHERE P.PLANNING_ID = I.PLANNING_ID),',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_DESC(APPLICATOR_ID) APPLICATOR,',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_SIZE_DESC(APPLICATOR_ID,',
'                                                          APPLICATOR_SIZE_ID) APPLICATOR_SIZE,',
'         (SELECT PP.DESCRIPTION',
'            FROM RADIATION.PRESCRIPTION_POINT PP',
'           WHERE PP.PRESCRIPTION_POINT_ID = RF.PRESCRIPTION_POINT_ID) PRESCRIPTION_POINT,',
'         RF.DWELL_TIME,',
'         RF.NO_CHANNEL_USED,',
'         P.DOSE_FRACTION,',
'         (SELECT ANAESTHESIA',
'            FROM RADIATION.RADIATION_MASTER',
'           WHERE RADIATION_NO = P.RADIATION_NO) ANAESTHESIA,',
'         P.PERFORMED_DOSE,',
'         P.REMARKS,',
'         P.PLAN_ID,',
'         P.PHY_PLAN_ID,',
'         P.STATUS_ID',
'  ',
'    INTO :P80_FRACTION_ID,',
'         :P80_FRACTION_DATE,',
'         :P80_STATUS,',
'         :P80_FIRST_TECH,',
'         :P80_SECOND_TECH,',
'         :P80_OC_SERIAL_NO,',
'         :P80_SCHEDULE_SRNO_1,',
'         :P80_SIGN_DATE,',
'         :P80_PHYSICIST_REMARKS,',
'         :P80_SPECIAL_INSTRUCTION,',
'         :P80_PLAN_REMARKS,',
'         :P80_MACHINE,',
'         :P80_INSERTION_ID,',
'         :P80_EXAM_SPEC_VAGINUM,',
'         :P80_IMP_INSERTION_TIME,',
'         :P80_IMPLANT_REMARKS,',
'         :P80_PLANNING,',
'         :P80_APPLICATOR,',
'         :P80_APPLICATOR_SIZE,',
'         :P80_PRESCRIPTION_POINT,',
'         :P80_DWELL_TIME,',
'         :P80_NO_CHANNEL_USED,',
'         :P80_DOSE_FRACTION,',
'         :P80_ANAESTHESIA,',
'         :P80_PERFORMED_DOSE,',
'         :P80_REMARKS,',
'         :P80_PLAN_ID,',
'         :P80_PHY_PLAN_ID,',
'         :P80_STATUS_ID',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE   P,',
'         RADIATION.RAD_IMPLANT_INSERT I,',
'         RADIATION.RAD_PHYSICS        RF',
'   WHERE P.RADIATION_NO = :P80_RADIATION_NO',
'     AND P.SITE_ID = NVL(:P80_SITE_ID, ''~'')',
'     AND P.FRACTION_ID = :P80_HIST_FRACTION_ID',
'     AND P.RADIATION_NO = I.RADIATION_NO',
'     AND P.SITE_ID = I.SITE_ID',
'     AND P.IMP_INSERTION_ID = I.INSERTION_ID',
'     AND RF.RADIATION_NO = P.RADIATION_NO',
'     AND RF.SITE_ID = P.SITE_ID',
'     AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_RADIATION_NO,P80_SITE_ID,P80_HIST_FRACTION_ID'
,p_attribute_03=>'P80_FRACTION_ID,P80_FRACTION_DATE,P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_OC_SERIAL_NO,P80_SCHEDULE_SRNO_1,P80_SIGN_DATE,P80_PHYSICIST_REMARKS,P80_SPECIAL_INSTRUCTION,P80_PLAN_REMARKS,P80_MACHINE,P80_INSERTION_ID,P80_EXAM_SPEC_VAGINUM,P80_IMP_I'
||'NSERTION_TIME,P80_IMPLANT_REMARKS,P80_PLANNING,P80_APPLICATOR,P80_APPLICATOR_SIZE,P80_PRESCRIPTION_POINT,P80_DWELL_TIME,P80_NO_CHANNEL_USED,P80_DOSE_FRACTION,P80_ANAESTHESIA,P80_PERFORMED_DOSE,P80_REMARKS,P80_PLAN_ID,P80_PHY_PLAN_ID,P80_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P80_ERROR_MESSAGE'
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
 p_id=>wwv_flow_imp.id(253496786307016334)
,p_name=>'DASuccessMessage'
,p_event_sequence=>650
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_SUCCESS_MESSAGE'
,p_condition_element=>'P80_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253496826709016335)
,p_event_id=>wwv_flow_imp.id(253496786307016334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P80_SUCCESS_MESSAGE.</b>'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253497783511016344)
,p_name=>'DACreate'
,p_event_sequence=>660
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(166924813774315563)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253497906548016346)
,p_event_id=>wwv_flow_imp.id(253497783511016344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P80_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P80_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessCreateHDRPerformance",',
'    {',
'        pageItems: [',
'            "P80_RADIATION_NO",',
'            "P80_SITE_ID",',
'            "P80_FRACTION_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P80_SUCCESS_MESSAGE").setValue(obj.message);',
'                //apex.region("fractionhist").refresh();',
'',
'',
'            } else {',
'                apex.item("P80_ERROR_MESSAGE").setValue(obj.message);',
'                return; ',
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
 p_id=>wwv_flow_imp.id(253498122082016348)
,p_event_id=>wwv_flow_imp.id(253497783511016344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253498002176016347)
,p_event_id=>wwv_flow_imp.id(253497783511016344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT P.FRACTION_ID,',
'         TO_CHAR(P.FRACTION_DATE,''DD-MON-YYYY HH24:MI''), ',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => P.STATUS_ID),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY1),',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(P.SIGN_BY2),',
'         P.OC_SERIAL_NO,',
'         P.SCHEDULE_SRNO,',
'         TO_CHAR(P.SIGN_DATE,''DD-MON-YYYY HH24:MI''), ',
'         RF.REMARKS PHYSICIST_REMARKS,',
'         (SELECT D.SPECIAL_INSTRUCTION',
'            FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS D',
'           WHERE D.RADIATION_NO = P.RADIATION_NO',
'             AND D.SITE_ID = P.SITE_ID',
'             AND D.PHASE_NO = TRUNC(P.FRACTION_ID)',
'             AND D.SUB_SITE_ID = 1',
'             AND D.FRACTION_NO =',
'                 (P.FRACTION_ID - TRUNC(P.FRACTION_ID)) * 100) SPECIAL_INSTRUCTION,',
'         (SELECT RP.INSTRUCTIONS',
'            FROM RADIATION.RAD_PLAN RP',
'           WHERE RP.RADIATION_NO = P.RADIATION_NO',
'             AND RP.SITE_ID = P.SITE_ID',
'             AND RP.PLAN_ID = P.PLAN_ID) PLAN_REMARKS,',
'         RADIATION.PKG_RADIATION.GET_MACHINE_DESC(RF.MACHINE_ID) MACHINE,',
'         P.IMP_INSERTION_ID INSERTION_ID,',
'         I.EXAM_SPEC_VAGINUM,',
'         I.SIGN_DATE,',
'         I.REMARKS IMPLANT_REMARKS,',
'         (SELECT P.DESCRIPTION',
'            FROM RADIATION.PLANNING P',
'           WHERE P.PLANNING_ID = I.PLANNING_ID),',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_DESC(APPLICATOR_ID) APPLICATOR,',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_SIZE_DESC(APPLICATOR_ID,',
'                                                          APPLICATOR_SIZE_ID) APPLICATOR_SIZE,',
'         (SELECT PP.DESCRIPTION',
'            FROM RADIATION.PRESCRIPTION_POINT PP',
'           WHERE PP.PRESCRIPTION_POINT_ID = RF.PRESCRIPTION_POINT_ID) PRESCRIPTION_POINT,',
'         RF.DWELL_TIME,',
'         RF.NO_CHANNEL_USED,',
'         P.DOSE_FRACTION,',
'         (SELECT ANAESTHESIA',
'            FROM RADIATION.RADIATION_MASTER',
'           WHERE RADIATION_NO = P.RADIATION_NO) ANAESTHESIA,',
'         P.PERFORMED_DOSE,',
'         P.REMARKS,',
'         P.PLAN_ID,',
'         P.PHY_PLAN_ID,',
'         P.STATUS_ID',
'  ',
'    INTO :P80_FRACTION_ID,',
'         :P80_FRACTION_DATE,',
'         :P80_STATUS,',
'         :P80_FIRST_TECH,',
'         :P80_SECOND_TECH,',
'         :P80_OC_SERIAL_NO,',
'         :P80_SCHEDULE_SRNO_1,',
'         :P80_SIGN_DATE,',
'         :P80_PHYSICIST_REMARKS,',
'         :P80_SPECIAL_INSTRUCTION,',
'         :P80_PLAN_REMARKS,',
'         :P80_MACHINE,',
'         :P80_INSERTION_ID,',
'         :P80_EXAM_SPEC_VAGINUM,',
'         :P80_IMP_INSERTION_TIME,',
'         :P80_IMPLANT_REMARKS,',
'         :P80_PLANNING,',
'         :P80_APPLICATOR,',
'         :P80_APPLICATOR_SIZE,',
'         :P80_PRESCRIPTION_POINT,',
'         :P80_DWELL_TIME,',
'         :P80_NO_CHANNEL_USED,',
'         :P80_DOSE_FRACTION,',
'         :P80_ANAESTHESIA,',
'         :P80_PERFORMED_DOSE,',
'         :P80_REMARKS,',
'         :P80_PLAN_ID,',
'         :P80_PHY_PLAN_ID,',
'         :P80_STATUS_ID',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE   P,',
'         RADIATION.RAD_IMPLANT_INSERT I,',
'         RADIATION.RAD_PHYSICS        RF',
'   WHERE P.RADIATION_NO = :P80_RADIATION_NO',
'     AND P.SITE_ID = NVL(:P80_SITE_ID, ''~'')',
'     AND P.FRACTION_ID = :P80_HIST_FRACTION_ID',
'     AND P.RADIATION_NO = I.RADIATION_NO',
'     AND P.SITE_ID = I.SITE_ID',
'     AND P.IMP_INSERTION_ID = I.INSERTION_ID',
'     AND RF.RADIATION_NO = P.RADIATION_NO',
'     AND RF.SITE_ID = P.SITE_ID',
'     AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P80_RADIATION_NO,P80_SITE_ID,P80_HIST_FRACTION_ID'
,p_attribute_03=>'P80_FRACTION_ID,P80_FRACTION_DATE,P80_STATUS,P80_FIRST_TECH,P80_SECOND_TECH,P80_OC_SERIAL_NO,P80_SCHEDULE_SRNO_1,P80_SIGN_DATE,P80_PHYSICIST_REMARKS,P80_SPECIAL_INSTRUCTION,P80_PLAN_REMARKS,P80_MACHINE,P80_INSERTION_ID,P80_EXAM_SPEC_VAGINUM,P80_IMP_I'
||'NSERTION_TIME,P80_IMPLANT_REMARKS,P80_PLANNING,P80_APPLICATOR,P80_APPLICATOR_SIZE,P80_PRESCRIPTION_POINT,P80_DWELL_TIME,P80_NO_CHANNEL_USED,P80_DOSE_FRACTION,P80_ANAESTHESIA,P80_PERFORMED_DOSE,P80_REMARKS,P80_PLAN_ID,P80_PHY_PLAN_ID,P80_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P80_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253498228743016349)
,p_name=>'DASave'
,p_event_sequence=>670
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(166926864097315564)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253498343504016350)
,p_event_id=>wwv_flow_imp.id(253498228743016349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P80_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P80_ERROR_MESSAGE").setValue('''');',
'',
'apex.server.process("ProcessUpdateHDRPerformance",',
'    {',
'        pageItems: [',
'            "P80_RADIATION_NO",',
'            "P80_SITE_ID",',
'            "P80_FRACTION_ID",',
'            "P80_PERFORMED_DOSE",',
'            "P80_REMARKS",',
'            "P80_ANAESTHESIA"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P80_SUCCESS_MESSAGE").setValue(obj.message);',
'',
'',
'            } else {',
'                apex.item("P80_ERROR_MESSAGE").setValue(obj.message);',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290005059731969501)
,p_name=>'DAError'
,p_event_sequence=>680
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P80_ERROR'
,p_condition_element=>'P80_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290005164773969502)
,p_event_id=>wwv_flow_imp.id(290005059731969501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P80_ERROR.</P80_ERROR>'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(166963413514315643)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormHDRPerformanceHeader'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT M.RADIATION_NO,',
'         M.RADIATION_DATE,',
'         M.MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'         M.DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'         SITE_ID,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DISP_SITE,',
'         RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                         P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'         RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                         P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'         RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                         P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'         D.POSITION_INSTRUCTION,',
'         RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => D.RADIATION_NO,',
'                                                         P_SITE_ID      => D.SITE_ID,',
'                                                         P_WFE_NO       => D.WFE_NO) EVENT_DESC',
'  ',
'    INTO :P80_RADIATION_NO,',
'         :P80_PATIENT_NAME,',
'         :P80_MRNO,',
'         :P80_PATIENT_NAME,',
'         :P80_DISP_AGE,',
'         :P80_DISP_GENDER,',
'         :P80_DISP_DOCTOR,',
'         :P80_DOCTOR_ID,',
'         :P80_DISP_INTENT,',
'         :P80_SITE_ID,',
'         :P80_DISP_SITE,',
'         :P80_SETUP_POSITION_DESC,',
'         :P80_ARM_POSITION_DESC,',
'         :P80_NECK_POSITION_DESC,',
'         :P80_POSITION_INSTRUCTION,',
'         :P80_EVENT_DESC',
'  ',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.RADIATION_NO = NVL(:P80_RADIATION_NO, radiation.pkg_request.get_active_radiation_no(p_mrno => :P80_MRNO,',
'                                                           p_radiotherapy_type => ''B''))',
'     AND M.RADIOTHERAPY_TYPE = ''B''',
'     AND (:P80_SCHEDULE_SRNO IS NULL OR EXISTS (SELECT SITE_ID',
'            FROM RADIATION.SCHEDULE',
'           WHERE SR_NO = :P80_SCHEDULE_SRNO',
'             AND SITE_ID = D.SITE_ID))',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>166963413514315643
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27074099909402319)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateHDRPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00159.CREATE_NEW_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_RADIATION_NO      => :P80_RADIATION_NO,',
'                                                   P_SITE_ID           => :P80_SITE_ID,',
'                                                   P_SCHEDULE_SRNO     => :P80_SCHEDULE_SRNO,',
'                                                   P_OBJECT_CODE       => ''S18APX00069'',',
'                                                   P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''TERMINAL''),',
'                                                   P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''USER_MRNO''),',
'                                                   P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                   P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The brachytherapy procedure has been successfully disposed'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(166924813774315563)
,p_internal_uid=>27074099909402319
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27074279533402321)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeHDRPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00159.DELETE_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P80_RADIATION_NO,',
'                                               P_SITE_ID           => :P80_SITE_ID,',
'                                               P_FRACTION_ID       => :P80_FRACTION_ID,',
'                                               P_OBJECT_CODE       => ''S18APX00069'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The brachytherapy procedure has been successfully disposed'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(166925256781315563)
,p_internal_uid=>27074279533402321
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27075139246402330)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessUpdateHDRPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PERFORM_TAB RADIATION.PKG_S18FRM00159.RAD_PERFORM_TAB;',
'  L_ALERT_TEXT      VARCHAR2(4000) := NULL;',
'  L_STOP            CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'',
'BEGIN',
'',
'  SELECT :P80_RADIATION_NO RADIATION_NO,',
'         :P80_SITE_ID SITE_ID,',
'         TO_NUMBER(:P80_FRACTION_ID, ''99.99'') FRACTION_ID,',
'         NULL ENTRY_DATE,',
'         NULL MACHINE_ID,',
'         NULL FRACTION_DATE,',
'         NULL DOSE_FRACTION,',
'         TO_NUMBER(:P80_PERFORMED_DOSE) PERFORMED_DOSE,',
'         NULL SCHEDULE_SRNO,',
'         NULL OC_SERIAL_NO,',
'         NULL SIGN_BY1,',
'         NULL SIGN_BY2,',
'         NULL SIGN_DATE,',
'         NULL STATUS_ID,',
'         NULL STATUS,',
'         :P80_REMARKS REMARKS,',
'         NULL PLAN_ID,',
'         NULL PHY_PLAN_ID,',
'         NULL SIMULATION_ID,',
'         NULL PLAN_CHECK_ID,',
'         :P80_ANAESTHESIA ANAESTHESIA,',
'         NULL SPECIAL_INSTRUCTION,',
'         NULL MACHINE,',
'         NULL PLAN_REMARKS,',
'         NULL PHYSICIST_REMARKS,',
'         NULL INSERTION_ID,',
'         NULL APPLICATOR,',
'         NULL APPLICATOR_SIZE,',
'         NULL EXAM_SPEC_VAGINUM,',
'         NULL IMPLANT_REMARKS,',
'         NULL PRESCRIPTION_POINT,',
'         NULL NO_CHANNEL_USED,',
'         NULL DWELL_TIME,',
'         NULL PLANNING,',
'         NULL IMP_INSERTION_TIME',
'    BULK COLLECT',
'    INTO L_RAD_PERFORM_TAB',
'    FROM DUAL;',
'',
'  -----------',
'  -- Update',
'  -----------',
'  BEGIN',
'    RADIATION.PKG_S18FRM00159.UPDATE_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'  END;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The brachytherapy procedure has been successfully saved'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(166926864097315564)
,p_internal_uid=>27075139246402330
);
wwv_flow_imp.component_end;
end;
/

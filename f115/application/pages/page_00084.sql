prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_name=>'RAD_CT_PERFORMANCE_MENU'
,p_alias=>'RAD-CT-PERFORMANCE-MENU'
,p_page_mode=>'MODAL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function editAcc() {',
'    apex.theme.openRegion(''radaccsub'');',
'}',
'',
'function deleteAcc() {',
'    if ($v("P84_STATUS_ID") === "015") {',
'        apex.message.alert("CT is signed, cannot proceed");',
'        return;',
'    }',
'    if ($v("P84_STATUS_ID") === "248") {',
'        apex.message.alert("CT is disposed, cannot proceed");',
'        return;',
'    }',
'',
'    apex.message.confirm(''Please confirm you want to delete Accessory?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationAccessory",',
'                {',
'                    pageItems: [',
'                        "P84_ACC_ACCESSORY_ID",',
'                        "P84_ACC_REMARKS",',
'                        "P84_ACC_SRNO",',
'                        "P84_ACC_PHASE_NO",',
'                        "P84_ACC_SITE_ID",',
'                        "P84_ACC_RADIATION_NO"',
'                    ],',
'                    x01: ''DELETE''',
'                },',
'                {',
'                    dataType: ''text'',',
'                    success: function (data) {',
'                        var obj = JSON.parse(data);',
'                        console.log(data);',
'                        console.log(obj);',
'                        if (obj.status == "success") {',
'                            apex.message.alert(obj.response, function () {}, {',
'                                title: "Delete",',
'                                style: "danger",',
'                                iconClasses: "fa fa-trash-o fa-2x",',
'                                okLabel: "Ok"',
'                            });',
'                            apex.region(''radacc'').refresh();',
'                        } else {',
'                            apex.message.alert(obj.response, function () {}, {',
'                                title: "Error",',
'                                style: "danger",',
'                                iconClasses: "fa fa-warning fa-2x",',
'                                okLabel: "Ok"',
'                            });',
'                        }',
'                    }',
'                });',
'        }',
'    });',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#report_image_report img {',
'    height: 100px;',
'    width: 100px;',
'}',
'',
'.popup_lov {',
'    background-color: #FFFFCC !important;',
'}',
'',
'#P84_MRNO {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PATIENT_NAME_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_SEX {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_AGE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_RADIATION_NO_2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_RADIATION_DATE_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_CONSULTANT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_TREATMENT_INTENT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_ANAESTHESIA {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_INSTRUCITON {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_CONTRAST {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_CONTRAST_ID {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_CONTRAST_QTY {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_CONTRAST_UNIT {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_CONTRAST_GIVEN_BY {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_SETUP_POSITION {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_NECK_POSITION {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_ARM_POSITION {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_POSITION_INSTRUCTION {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_ACC_ACCESSORY_ID {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_ACC_REMARKS {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PATIENT_TYPE1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PATIENT_MRNO1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_NAME1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PASSWORD1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_MESSAGE1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PATIENT_TYPE2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PATIENT_MRNO2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_NAME2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_PASSWORD2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_MESSAGE2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_SCHEDULE_DATE_SHOW {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_SCHEDULE_DATE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_DISP_NAME_SIGN_BY_1 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_DISP_NAME_SIGN_BY_2 {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'#P84_SIGN_DATE {',
'    font-size: 0.80rem;',
'    font-weight: bold;',
'}',
'',
'.a-GV-pageRange {',
'    display: none;',
'}',
'',
'#CT_HIST .a-GV-status {',
'    display: none;',
'}',
'',
'#RDS .a-GV-status {',
'    display: none;',
'}',
'',
'#CT_PER .a-GV-status {',
'    display: none;',
'}',
'',
'#radacc .a-GV-status {',
'    display: none;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20241115145713'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157305917462657521)
,p_plug_name=>'Sign_Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157647848069879537)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160571091798461139)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'RDS'
,p_parent_plug_id=>wwv_flow_imp.id(157647848069879537)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'SITE_ID,',
'RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'PLANNING,',
'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'P1_DOSE_FRACTION,',
'P1_NO_OF_FRACTION,',
'P2_DOSE_FRACTION,',
'P2_NO_OF_FRACTION,',
'P3_DOSE_FRACTION,',
'P3_NO_OF_FRACTION,',
'TREATMENT_LATER,',
'ACTIVE,',
'WFE_NO,',
'RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                             P_SITE_ID      => SITE_ID,',
'                                             P_WFE_NO       => WFE_NO) EVENT_DESC,',
'NVL((SELECT C.STATUS_ID',
'   FROM RADIATION.RAD_CT_PERFORMANCE C',
'  WHERE C.RADIATION_NO = RD.RADIATION_NO',
'    AND C.SITE_ID = RD.SITE_ID',
'    AND ROWNUM = 1),',
' ''020'') CT_STATUS,',
'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION',
'(NVL((SELECT C.STATUS_ID',
'FROM RADIATION.RAD_CT_PERFORMANCE C',
'WHERE C.RADIATION_NO =',
'RD.RADIATION_NO',
'AND C.SITE_ID =',
'RD.SITE_ID',
'AND ROWNUM = 1),''020'')) STATUS_DESC,',
'(SELECT NVL(M.ANAESTHESIA,''N'')',
'FROM RADIATION.RADIATION_MASTER M',
'WHERE M.RADIATION_NO = RD.RADIATION_NO) ANAESTHESIA,',
'RD.CT_INSTRUCTIONS,',
'(NVL(P1_DOSE_FRACTION, 0) * NVL(RD.P1_NO_OF_FRACTION, 0) +',
'NVL(RD.P2_DOSE_FRACTION, 0) * NVL(RD.P2_NO_OF_FRACTION, 0) +',
'NVL(RD.P3_DOSE_FRACTION, 0) * NVL(RD.P3_NO_OF_FRACTION, 0)) TOTAL_DOSE,',
'(SELECT DESCRIPTION',
'FROM RADIATION.TREATMENT_TYPE',
'WHERE TREATMENT_TYPE = RD.TREATMENT_TYPE) TREATMENT_TYPE_DESC',
'FROM RADIATION.RADIATION_DETAIL RD',
'WHERE RD.RADIATION_NO = :P84_RADIATION_NO_2',
'AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                   P_SITE_ID             => RD.SITE_ID,',
'                                   P_PERFORMANCE_TYPE_ID => ''003'') = ''Y'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P84_RADIATION_NO_2'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(157647568221879534)
,p_heading=>'Phase 1'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(157647650095879535)
,p_heading=>'Phase 2'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(157647759964879536)
,p_heading=>'Phase 3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157645498075879513)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157645627078879514)
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
,p_value_css_classes=>'u-bold'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157645695944879515)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Radiotherapy Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157645749841879516)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Planning'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157645908282879517)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Planning Technique'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157646043556879518)
,p_name=>'P1 dose Fraction'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157647568221879534)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(157646057960879519)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157647568221879534)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(157646217235879520)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157647650095879535)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(157646343327879521)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157647650095879535)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(157646359014879522)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157647759964879536)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(157646497506879523)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157647759964879536)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(157646644164879524)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Treatment <br>Later'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(157646668619879525)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Active'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157646839216879526)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Wfe No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157646848378879527)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Current Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157647022526879528)
,p_name=>'CT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ct Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157647075974879529)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157647151250879530)
,p_name=>'ANAESTHESIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANAESTHESIA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Anaesthesia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157647271293879531)
,p_name=>'CT_INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ct Instructions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(157647422839879532)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Dose'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157647509367879533)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Treatment Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>160
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
 p_id=>wwv_flow_imp.id(155618971953181262)
,p_internal_uid=>155618971953181262
,p_is_editable=>false
,p_lazy_loading=>true
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(157651804197880475)
,p_interactive_grid_id=>wwv_flow_imp.id(155618971953181262)
,p_static_id=>'101801'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(157652027594880475)
,p_report_id=>wwv_flow_imp.id(157651804197880475)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157652530757880476)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(157645498075879513)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157653441593880478)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(157645627078879514)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157654287052880480)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(157645695944879515)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>370
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157655229111880482)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(157645749841879516)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157656139506880484)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(157645908282879517)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157657032479880486)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(157646043556879518)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157657897532880488)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(157646057960879519)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
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
 p_id=>wwv_flow_imp.id(157658821346880489)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(157646217235879520)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157659670178880491)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(157646343327879521)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157660632340880493)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(157646359014879522)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157661538225880495)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(157646497506879523)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157662347372880497)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(157646644164879524)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157663297264880499)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(157646668619879525)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157664170398880500)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(157646839216879526)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157665079469880502)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(157646848378879527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157666040644880504)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(157647022526879528)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157666895105880506)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(157647075974879529)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157667781241880508)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(157647151250879530)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157668711988880510)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(157647271293879531)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157669550985880512)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(157647422839879532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157670495525880513)
,p_view_id=>wwv_flow_imp.id(157652027594880475)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(157647509367879533)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157648024961879538)
,p_plug_name=>'CT Performance MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157309888519657561)
,p_plug_name=>'CT Performance'
,p_parent_plug_id=>wwv_flow_imp.id(157648024961879538)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157648091962879539)
,p_plug_name=>'CT_PERFORMANCE_DT'
,p_region_name=>'CT_PER'
,p_parent_plug_id=>wwv_flow_imp.id(157309888519657561)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT rc.rowid,',
'             RD.RADIATION_NO,',
'             RD.SITE_ID,',
'             SIM_CT_ID,',
'             RADIATION.PKG_RADIATION.GET_SIMULATION_CT_DESC(RD.SIM_CT_ID) DIPS_SIM_CT,',
'             NECK_POSITION,',
'             SETUP_POSITION,',
'             ARM_POSITION,',
'             POSITION_INSTRUCTION,',
'             RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                             P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'             RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                             P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'             RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                             P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'             RC.CT_SRNO,',
'             RC.PHASE_NO,',
'             RC.TRANS_DATE,',
'             RC.OC_SERIAL_NO,',
'             NVL(RC.SCHEDULE_SRNO, :P84_SCHEDULE_SRNO) SCHEDULE_SRNO,',
'--   NVL(RC.SCHEDULE_DATE,',
'--      (SELECT S.VISIT_DATE',
'--         FROM RADIATION.SCHEDULE S',
'--        WHERE S.SR_NO = :P84_SCHEDULE_SRNO)) SCHEDULE_DATE,',
'              NVL(TO_CHAR(RC.SCHEDULE_DATE,''DD-MM-RR HH24:MI''),',
'                 (SELECT TO_CHAR(S.VISIT_DATE,''DD-MM-RR HH24:MI'')',
'                    FROM RADIATION.SCHEDULE S',
'                   WHERE S.SR_NO = :P84_SCHEDULE_SRNO)) SCHEDULE_DATE,',
'          ',
'             RC.PERFORMANCE_ID,',
'             NVL(RC.STATUS_ID, ''020'') STATUS_ID,',
'             RC.SIGN_BY_1,',
'             RC.SIGN_BY_2,',
'             TO_CHAR(RC.SIGN_DATE,''DD-MM-RR HH24:MI'') SIGN_DATE,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_1) DISP_NAME_SIGN_BY_1,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_2) DISP_NAME_SIGN_BY_2,',
'             NVL(RC.CONTRAST, ''N'') CONTRAST,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(NVL(RC.STATUS_ID,',
'                                                                ''020'')) STATUS_DESC,',
'             CONTRAST_ID,',
'             (SELECT R.CONTRAST_DESC',
'                FROM RADIOLOGY.RADIOLOGY_CONTRAST R',
'               WHERE R.CONTRAST_ID = RC.CONTRAST_ID) CONTRAST_DESC,',
'             CONTRAST_QTY,',
'             CONTRAST_UNIT_ID,',
'             (SELECT T.DESCRIPTION',
'                FROM DEFINITIONS.UNIT T',
'               WHERE T.UNIT_ID = RC.CONTRAST_UNIT_ID) CONTRAST_UNIT,',
'             CONTRAST_GIVEN_BY,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(CONTRAST_GIVEN_BY) CONTRAST_GIVEN_NAME,',
'             RC.FROM_FRACTION_ID,',
'             RC.TO_FRACTION_ID',
'        FROM RADIATION.RAD_CT_PERFORMANCE RC, RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P84_RADIATION_NO_2',
'         AND RD.SITE_ID =:P84_SITE_ID',
'         AND RD.RADIATION_NO = RC.RADIATION_NO(+)',
'         AND RD.SITE_ID = RC.SITE_ID(+)',
'         AND RC.STATUS_ID <> ''248'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P84_RADIATION_NO_2,P84_SITE_ID,P84_SCHEDULE_SRNO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CT_PERFORMANCE_DT'
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
 p_id=>wwv_flow_imp.id(157305686246657519)
,p_heading=>'Fraction'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157648317661879541)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157648412582879542)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Site Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157648463047879543)
,p_name=>'SIM_CT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIM_CT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sim Ct Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(157648548111879544)
,p_name=>'DIPS_SIM_CT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIPS_SIM_CT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Dips Sim Ct'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157648731480879545)
,p_name=>'NECK_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Neck Position'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157648765871879546)
,p_name=>'SETUP_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Setup Position'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157648942359879547)
,p_name=>'ARM_POSITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Arm Position'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157648974885879548)
,p_name=>'POSITION_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSITION_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Position Instruction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(157649118300879549)
,p_name=>'SETUP_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SETUP_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Setup Position Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157649184861879550)
,p_name=>'ARM_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ARM_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Arm Position Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157649323756879551)
,p_name=>'NECK_POSITION_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NECK_POSITION_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Neck Position Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157649377919879552)
,p_name=>'CT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157649534857879553)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Phase No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157649583834879554)
,p_name=>'TRANS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Trans Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157649669170879555)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oc Serial No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(157649948181879558)
,p_name=>'PERFORMANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Performance Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157650218569879560)
,p_name=>'SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sign By 1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(157650309818879561)
,p_name=>'SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sign By 2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(157650391925879562)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Sign Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(157719849117097413)
,p_name=>'DISP_NAME_SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME_SIGN_BY_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Disp Name Sign By 1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157719957175097414)
,p_name=>'DISP_NAME_SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_NAME_SIGN_BY_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Disp Name Sign By 2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157720176458097416)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157720338635097417)
,p_name=>'CONTRAST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contrast Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(157720373165097418)
,p_name=>'CONTRAST_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contrast Desc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(157720499013097419)
,p_name=>'CONTRAST_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Contrast Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157720624435097420)
,p_name=>'CONTRAST_UNIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_UNIT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contrast Unit Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>5
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
 p_id=>wwv_flow_imp.id(157720655692097421)
,p_name=>'CONTRAST_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contrast Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(157720748204097422)
,p_name=>'CONTRAST_GIVEN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_GIVEN_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contrast Given By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(157720925661097423)
,p_name=>'CONTRAST_GIVEN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST_GIVEN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Contrast Given Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157721017707097424)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'From'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157305686246657519)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157721141689097425)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(157305686246657519)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(157723651969097451)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(157723777885097452)
,p_name=>'SCHEDULE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Schedule Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>14
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
 p_id=>wwv_flow_imp.id(157723866218097453)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'STATUS_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157723985276097454)
,p_name=>'CONTRAST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRAST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contrast'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(176972476174035359)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(157648175144879540)
,p_internal_uid=>157648175144879540
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(157726366943097687)
,p_interactive_grid_id=>wwv_flow_imp.id(157648175144879540)
,p_static_id=>'102547'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(157726583982097687)
,p_report_id=>wwv_flow_imp.id(157726366943097687)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157727082188097688)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(157648317661879541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157727977047097690)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(157648412582879542)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157728887745097691)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(157648463047879543)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157729788479097693)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(157648548111879544)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157730680060097695)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(157648731480879545)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157731642577097697)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(157648765871879546)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157732500162097699)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(157648942359879547)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157733349276097701)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(157648974885879548)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157734344041097702)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(157649118300879549)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157735152076097704)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(157649184861879550)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157736146477097706)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(157649323756879551)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157736965831097708)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(157649377919879552)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157737895372097709)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(157649534857879553)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157738812718097711)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(157649583834879554)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157739649104097713)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(157649669170879555)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157742399542097720)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(157649948181879558)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157744227242097723)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(157650218569879560)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157745125221097725)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(157650309818879561)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157745892363097727)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(157650391925879562)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157746747230097729)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(157719849117097413)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157747684087097730)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(157719957175097414)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157749483288097734)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(157720176458097416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157750362031097736)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(157720338635097417)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157751298684097737)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(157720373165097418)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157752228934097739)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(157720499013097419)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157753123299097741)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(157720624435097420)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157753958426097743)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(157720655692097421)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157754910479097745)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(157720748204097422)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157755769141097747)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(157720925661097423)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157756673782097749)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(157721017707097424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157757594761097751)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(157721141689097425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157825639735195581)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(157723651969097451)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157826479305195583)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(157723777885097452)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157827438987195585)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(157723866218097453)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(157828260442195587)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(157723985276097454)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(177616424282945747)
,p_view_id=>wwv_flow_imp.id(157726583982097687)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(176972476174035359)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157721510031097429)
,p_plug_name=>'Patient Preparation'
,p_parent_plug_id=>wwv_flow_imp.id(157648024961879538)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_region_attributes=>'style="height:150px"'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157721610968097430)
,p_plug_name=>'Patient_preparation_dt'
,p_parent_plug_id=>wwv_flow_imp.id(157721510031097429)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157721717284097431)
,p_plug_name=>'Contrast'
,p_parent_plug_id=>wwv_flow_imp.id(157648024961879538)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157305576063657518)
,p_plug_name=>'contrast_dt'
,p_parent_plug_id=>wwv_flow_imp.id(157721717284097431)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157721770940097432)
,p_plug_name=>'Position'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>80
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157305833868657520)
,p_plug_name=>'PositionDT'
,p_parent_plug_id=>wwv_flow_imp.id(157721770940097432)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157721858599097433)
,p_plug_name=>'Accessories'
,p_region_name=>'ACS_MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>90
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178835186020421817)
,p_plug_name=>'Accessories'
,p_region_name=>'radacc'
,p_parent_plug_id=>wwv_flow_imp.id(157721858599097433)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       RADIATION_NO,',
'       SITE_ID,',
'       SRNO,',
'       PHASE_NO,',
'       ACCESSORY_ID,',
'       RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID) DISP_ACCESSORY,',
'       REMARKS,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID) STATUS_DESC',
'  FROM RADIATION.RAD_ACCESSORIES RA',
' WHERE RA.RADIATION_NO = :P84_RADIATION_NO_2',
'   AND RA.SITE_ID = :P84_SITE_ID',
'   AND RA.TRANS_TYPE = ''CT''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P84_RADIATION_NO_2,P84_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Accessories'
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
 p_id=>wwv_flow_imp.id(178835491630421820)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>24
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178835551874421821)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>34
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178835650961421822)
,p_name=>'SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>44
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178835840638421823)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>54
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178835858773421824)
,p_name=>'ACCESSORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>64
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178836030603421825)
,p_name=>'DISP_ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_ACCESSORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Accessory'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(178836092291421826)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(178836245013421827)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>74
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178836257947421828)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>5
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(178836382049421829)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>94
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178836446724421830)
,p_name=>'RAD_ACCESSORY_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Update'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:editAcc(); javascript:$s(''P84_ACC_REMARKS'', ''&REMARKS.''); javascript:$s(''P84_ACC_RADIATION_NO'', ''&RADIATION_NO.''); javascript:$s(''P84_ACC_SITE_ID'', ''&SITE_ID.''); javascript:$s(''P84_ACC_PHASE_NO'', ''&PHASE_NO.''); javascript:$s(''P84_ACC_SRNO'''
||', ''&SRNO.''); javascript:$s(''P84_RAD_ACC_DML_STATUS'', ''UPDATE'');'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178836573843421831)
,p_name=>'RAD_ACCESSORY_DELETE '
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:deleteAcc(); javascript:$s(''P84_ACC_REMARKS'', ''&REMARKS.''); javascript:$s(''P84_ACC_RADIATION_NO'', ''&RADIATION_NO.''); javascript:$s(''P84_ACC_SITE_ID'', ''&SITE_ID.''); javascript:$s(''P84_ACC_PHASE_NO'', ''&PHASE_NO.''); javascript:$s(''P84_ACC_SRN'
||'O'', ''&SRNO.''); javascript:$s(''P84_RAD_ACC_DML_STATUS'', ''DELETE'');'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(178836702546421832)
,p_name=>'CalltoSign'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>6
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:Y,::'
,p_link_text=>'<span class="t-Icon fa fa-circle-arrow-in-east" aria-hidden="true"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(178835310265421818)
,p_internal_uid=>178835310265421818
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
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
,p_fixed_header=>'PAGE'
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
'    config.initActions = function (actions) {',
'        actions.add({',
'            name: "addAccessory",',
'            action: function () {',
'                apex.item("P84_ACC_RADIATION_NO").setValue($v("P84_RADIATION_NO_2"));',
'                apex.item("P84_ACC_SITE_ID").setValue($v("P84_SITE_ID"));',
'                apex.item("P84_ACC_ACCESSORY_ID").setValue('''');',
'                apex.item("P84_ACC_REMARKS").setValue('''');',
'                apex.item("P84_ACC_SRNO").setValue('''');',
'                apex.item("P84_ACC_PHASE_NO").setValue('''');',
'                apex.item("P84_RAD_ACC_DML_STATUS").setValue(''CREATE'');',
'',
'                if ($v("P84_STATUS_ID") === "015") {',
'                    apex.item("saveradiationaccessory").disable();',
'                }',
'                else if ($v("P84_STATUS_ID") === "248") {',
'                    apex.item("saveradiationaccessory").disable();',
'                }',
'',
'                apex.theme.openRegion(''radaccsub'');',
'            }',
'        });',
'    };',
'',
'    config.toolbarData = toolbarData;',
'    // Return the options',
'    return config;',
'}',
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
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(178863736027603897)
,p_interactive_grid_id=>wwv_flow_imp.id(178835310265421818)
,p_static_id=>'313920'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(178863886834603897)
,p_report_id=>wwv_flow_imp.id(178863736027603897)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178864397264603898)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(178835491630421820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178865298178603901)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(178835551874421821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178866227657603903)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(178835650961421822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178867072564603905)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(178835840638421823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178867972759603908)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(178835858773421824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178868933886603910)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(178836030603421825)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>364.438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178869770732603912)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(178836092291421826)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>281.438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178870696202603915)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(178836245013421827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178871610444603917)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(178836257947421828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178872495459603920)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(178836382049421829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178873411508603923)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(178836446724421830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.43799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178874310841603925)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(178836573843421831)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.43799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(178918437364118232)
,p_view_id=>wwv_flow_imp.id(178863886834603897)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(178836702546421832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63.80199999999999
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178836837041421833)
,p_plug_name=>'Radiotherapy Accessory'
,p_region_name=>'radaccsub'
,p_parent_plug_id=>wwv_flow_imp.id(178835186020421817)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157978656398316023)
,p_plug_name=>'Radiation History'
,p_region_name=>'CT_HIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'             TO_CHAR(RADIATION_DATE,''DD-MON-RR HH24:MI'') RADIATION_DATE,',
'             MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'             DOCTOR_ID,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID),',
'             RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT,',
'             ROWID',
'',
'          ',
'FROM RADIATION.RADIATION_MASTER M',
'WHERE M.RADIATION_NO = NVL(:P84_RADIATION_NO_2, ''~'')',
'AND M.MRNO =:P84_MRNO',
'AND M.RADIOTHERAPY_TYPE = ''T''',
'AND M.STATUS_REQUEST = ''015''',
'AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'--ORDER BY RADIATION_DATE DESC',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P84_SCHEDULE_SRNO,P84_MRNO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation History'
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
 p_id=>wwv_flow_imp.id(147333932696371514)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157980167005316038)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation No'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157980340272316039)
,p_name=>'RADIATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157980381133316040)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mrno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157980455385316041)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157980583380316042)
,p_name=>'DISP_AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_AGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disp Age'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(157980685669316043)
,p_name=>'DISP_SEX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SEX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Disp Sex'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157980776687316044)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Doctor Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>7
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
 p_id=>wwv_flow_imp.id(157980931896316045)
,p_name=>'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Radiation.pkg Radiation.get Doctor Name(doctor Id)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157981024059316046)
,p_name=>'DISP_TREATMENT_INTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_TREATMENT_INTENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Disp Treatment Intent'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(157980084149316037)
,p_internal_uid=>157980084149316037
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(158866283496611411)
,p_interactive_grid_id=>wwv_flow_imp.id(157980084149316037)
,p_static_id=>'113946'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(158866543521611411)
,p_report_id=>wwv_flow_imp.id(158866283496611411)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(147600640970694124)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(147333932696371514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158867022794611413)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(157980167005316038)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.6719
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158867931600611415)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(157980340272316039)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158868839837611417)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(157980381133316040)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158869701019611420)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(157980455385316041)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158870564704611422)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(157980583380316042)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158871505768611424)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(157980685669316043)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158872436115611426)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(157980776687316044)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158873235733611428)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(157980931896316045)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158874056765611431)
,p_view_id=>wwv_flow_imp.id(158866543521611411)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(157981024059316046)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161474583960790466)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>160
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164668338392012088)
,p_plug_name=>'CT Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(191095313618531424)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'FROM PICTURES.HR_PICTURES',
'WHERE MRNO = :P84_MRNO;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
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
 p_id=>wwv_flow_imp.id(147540373165661981)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(147538975561661973)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(147539950336661981)
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
 p_id=>wwv_flow_imp.id(289901932357516558)
,p_plug_name=>'Sign'
,p_region_name=>'sign_rg'
,p_region_css_classes=>'js-dialog-size1200x450'
,p_region_template_options=>'js-dialog-autoheight:t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>150
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289903503909516573)
,p_plug_name=>'First Technician'
,p_parent_plug_id=>wwv_flow_imp.id(289901932357516558)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(289903611001516574)
,p_plug_name=>'Second Technician'
,p_parent_plug_id=>wwv_flow_imp.id(289901932357516558)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147542123350661984)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_button_name=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-sign-in'
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147545350832661987)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_button_name=>'back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147528534399661946)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'Report'
,p_button_static_id=>'fetch_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147528980293661946)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:openModal("sign_rg")'
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147529376886661947)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'Save'
,p_button_static_id=>'save_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147529784546661947)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147520647174661934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_button_name=>'SaveRadAcc'
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
 p_id=>wwv_flow_imp.id(147530196227661947)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'Create'
,p_button_static_id=>'create_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create/New'
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147530528196661947)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'Dispose'
,p_button_static_id=>'dis_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_button_position=>'DELETE'
,p_confirm_message=>'Are you sure, you want to dispose this plan...'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147530948675661951)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(161474583960790466)
,p_button_name=>'ViewRequest'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Request'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147521037479661934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_button_name=>'ExitRadAcc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157306545108657530)
,p_name=>'P84_SCHEDULE_DATE_SHOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_prompt=>'<b><p style="color:#00008B">Appointment:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157306668818657531)
,p_name=>'P84_DISP_NAME_SIGN_BY_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_prompt=>'<b><p style="color:#00008B">First Technologist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157306821571657532)
,p_name=>'P84_DISP_NAME_SIGN_BY_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_prompt=>'<b><p style="color:#00008B">Second Technologist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157306918206657533)
,p_name=>'P84_SIGN_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157307251221657537)
,p_name=>'P84_SC_SRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157307612536657540)
,p_name=>'P84_SETUP_POSITION_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157307714745657541)
,p_name=>'P84_SIM_CT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157307790070657542)
,p_name=>'P84_DIPS_SIM_CT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157307831439657543)
,p_name=>'P84_ARM_POSITION_DESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157307989401657544)
,p_name=>'P84_NECK_POSITION_DESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
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
 p_id=>wwv_flow_imp.id(157308095830657545)
,p_name=>'P84_CT_SRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308149997657546)
,p_name=>'P84_PHASE_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308319205657547)
,p_name=>'P84_TRANS_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308394390657548)
,p_name=>'P84_OC_SERIAL_NO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308522803657549)
,p_name=>'P84_PERFORMANCE_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308559572657550)
,p_name=>'P84_STATUS_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308659894657551)
,p_name=>'P84_SIGN_BY_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308735105657552)
,p_name=>'P84_SIGN_BY_2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157308920729657553)
,p_name=>'P84_STATUS_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157309000078657554)
,p_name=>'P84_CONTRAST_DESC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157309129240657555)
,p_name=>'P84_CONTRAST_UNIT_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157309179630657556)
,p_name=>'P84_CONTRAST_GIVEN_NAME'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157309278228657557)
,p_name=>'P84_FROM_FRACTION_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157309381452657558)
,p_name=>'P84_TO_FRACTION_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157310574921657570)
,p_name=>'P84_SCHEDULE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(157305917462657521)
,p_prompt=>'Appointment'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(RS.VISIT_DATE, ''DD-MM-RR HH24:MI'') VISIT_DATE,',
'       RS.SR_NO SR_NO',
'  FROM RADIATION.SCHEDULE RS, RADIATION.MACHINES M',
' WHERE RS.MACHINE_ID = M.MACHINE_ID',
'   AND RS.RADIATION_NO = :P84_RADIATION_NO_2',
'   AND M.PERFORMANCE_TYPE_ID = :P84_PERFORMANCE_TYPE_ID',
' ORDER BY RS.VISIT_DATE',
''))
,p_lov_cascade_parent_items=>'P84_RADIATION_NO_2,P84_PERFORMANCE_TYPE_ID'
,p_ajax_items_to_submit=>'P84_RADIATION_NO_2,P84_PERFORMANCE_TYPE_ID'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>100
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'SR_NO:P84_SCHEDULE_SRNO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157345783391657718)
,p_name=>'P84_SETUP_POSITION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(157305833868657520)
,p_prompt=>'<b><p style="color:#00008B">Setup Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION,P.POSITION_PREFIX',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''S''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'350'
,p_attribute_09=>'150'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157345916355657719)
,p_name=>'P84_NECK_POSITION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(157305833868657520)
,p_prompt=>'<b><p style="color:#00008B">Neck Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION,P.POSITION_PREFIX',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''N''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157346020934657720)
,p_name=>'P84_ARM_POSITION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(157305833868657520)
,p_prompt=>'<b><p style="color:#00008B">Arm Position:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION,P.POSITION_PREFIX',
'  FROM RADIATION.POSITION P',
' WHERE P.POSITION_TYPE = ''P''',
'   AND P.ACTIVE = ''Y''',
' ORDER BY P.DESCRIPTION'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157346076765657721)
,p_name=>'P84_POSITION_INSTRUCTION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(157305833868657520)
,p_prompt=>'<b><p style="color:#00008B">Positioning Instruction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157385963134657847)
,p_name=>'P84_PERFORMANCE_TYPE_ID'
,p_item_sequence=>140
,p_item_default=>'003'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157762754980097618)
,p_name=>'P84_CONTRAST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(157305576063657518)
,p_prompt=>'<b><p style="color:#00008B">Contrast:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:No;N,Intravenously;I,Orally;O,Rectally;R'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157762861344097619)
,p_name=>'P84_CONTRAST_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(157305576063657518)
,p_prompt=>'<b><p style="color:#00008B">Contrast Given:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CONTRASTLOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RC.CONTRAST_DESC,RC.CONTRAST_ML, RC.CONTRAST_ID',
'FROM RADIOLOGY.RADIOLOGY_CONTRAST RC',
'WHERE RC.ACTIVE = ''Y'''))
,p_cSize=>37
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'500'
,p_attribute_09=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157762945100097620)
,p_name=>'P84_CONTRAST_QTY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(157305576063657518)
,p_prompt=>'<b><p style="color:#00008B">Quantity:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157763065155097621)
,p_name=>'P84_CONTRAST_UNIT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(157305576063657518)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157763147706097622)
,p_name=>'P84_CONTRAST_GIVEN_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(157305576063657518)
,p_prompt=>'<b><p style="color:#00008B">Given By:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CONTRASTGIVENBY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT I.NAME, I.DESIGNATION, I.DEPARTMENT, I.MRNO',
'  FROM DEFINITIONS.OBJECTS          O,',
'       SECURITY.GROUPS_OBJECT_RIGHT GR,',
'       SECURITY.MEMBER              M,',
'       SECURITY.USERS               U,',
'       HRD.VU_INFORMATION           I',
' WHERE GR.GROUPID = M.GROUPID',
'   AND O.OBJECT_CODE = ''S18FRM00130''',
'   AND GR.SCHEMA_ID = O.SCHEMA_ID',
'   AND GR.OBJECT_TYPE_ID = O.OBJECT_TYPE_ID',
'   AND GR.OBJECT_ID = O.OBJECT_ID',
'   AND U.USERID = M.USERID',
'   AND U.MRNO = I.MRNO',
'   AND GR.UPDATE_ALLOWED_YN = ''Y''',
'   AND I.DUTY_LOCATION_ID = :GV_LOCATION_ID',
'   AND EXISTS (SELECT 1',
'          FROM DEFINITIONS.DEPARTMENT D',
'         WHERE D.DEPARTMENT_NATURE_ID IN (''122'', ''020'')',
'           AND D.DEPARTMENT_ID = I.DEPARTMENT_ID)',
'   AND I.ACTIVE = ''Y''',
' ORDER BY 1, 2, 3',
''))
,p_cSize=>37
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'1500'
,p_attribute_09=>'700'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157803312402097772)
,p_name=>'P84_SCHEDULE_SRNO'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160675859402461415)
,p_name=>'P84_DOCTOR_ID'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160695009428205444)
,p_name=>'P84_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161597503972790752)
,p_name=>'P84_DISP_MRNO1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161603549188790755)
,p_name=>'P84_DISP_MRNO2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169379188566219608)
,p_name=>'P84_SCHEDULE_EVENT_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169379263045219609)
,p_name=>'P84_ALERT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178886636309422056)
,p_name=>'P84_ACC_ACCESSORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_prompt=>'<b><p style="color:#00008B">Accessory:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ACCESSORYLOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.ACCESSORY_ID,',
'       AC.DESCRIPTION DISP_ACCESSORY,',
'       CASE',
'         WHEN AC.OBJECT_CODE IS NOT NULL THEN',
'          ''020''',
'         ELSE',
'          ''015''',
'       END STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(CASE',
'                                                        WHEN AC.OBJECT_CODE IS NOT NULL THEN',
'                                                         ''020''',
'                                                        ELSE',
'                                                         ''015''',
'                                                      END) STATUS_DESC',
'  FROM RADIATION.ACCESSORIES AC',
' WHERE AC.ACTIVE = ''Y''',
'  AND AC.accessory_type = ''P''',
' ORDER BY AC.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178886761999422057)
,p_name=>'P84_ACC_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178886870154422059)
,p_name=>'P84_ACC_SRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178887039021422060)
,p_name=>'P84_ACC_PHASE_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178887110997422061)
,p_name=>'P84_ACC_SITE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178887169461422062)
,p_name=>'P84_ACC_RADIATION_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178887756776422067)
,p_name=>'P84_RAD_ACC_DML_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(178836837041421833)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687021958316134)
,p_name=>'P84_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687098902316135)
,p_name=>'P84_PATIENT_NAME_1'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687249856316136)
,p_name=>'P84_SEX'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Sex:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687323702316137)
,p_name=>'P84_AGE'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687464973316138)
,p_name=>'P84_UNIT'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'Unit:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687583660316139)
,p_name=>'P84_SERVICE_NO'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'Service No:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687636103316140)
,p_name=>'P84_SERVICE_STATUS'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'Service Status:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687747602316141)
,p_name=>'P84_RANK'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'Rank:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687809894316142)
,p_name=>'P84_FORMATION'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'Formation:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687895358316143)
,p_name=>'P84_RADIATION_NO_2'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188687992548316144)
,p_name=>'P84_RADIATION_DATE_1'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188688164040316145)
,p_name=>'P84_CONSULTANT'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188688224491316146)
,p_name=>'P84_TREATMENT_INTENT'
,p_item_sequence=>1139
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188688289500316147)
,p_name=>'P84_SITE_DISP'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188688391413316148)
,p_name=>'P84_STATUS'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188688567111316149)
,p_name=>'P84_SITE_ID'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195692352167495092)
,p_name=>'P84_ANAESTHESIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(157721610968097430)
,p_item_default=>'N'
,p_pre_element_text=>'<span style=''margin-top:1.25em;margin-right:2.25em;'' ><b><p style="color:#00008B">Anesthesia</span></p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'is-readonly'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195692669416495095)
,p_name=>'P84_INSTRUCITON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(157721610968097430)
,p_prompt=>'<b><p style="color:#00008B">Instruction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>11
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-bottom-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288241826384518573)
,p_name=>'P84_ERROR_MESSAGE'
,p_item_sequence=>1189
,p_item_plug_id=>wwv_flow_imp.id(164668338392012088)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288259847563518639)
,p_name=>'P84_TXT_URL'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288263646296518677)
,p_name=>'P84_SIGNED'
,p_item_sequence=>180
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290033236726516887)
,p_name=>'P84_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290033364946516888)
,p_name=>'P84_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290033439451516889)
,p_name=>'P84_PATIENT_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290033585390516890)
,p_name=>'P84_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_prompt=>'Name1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:red"'
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'null'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290033646483516891)
,p_name=>'P84_PASSWORD1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290033817720516892)
,p_name=>'P84_MESSAGE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(289903503909516573)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290045107749516905)
,p_name=>'P84_MRNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290045200699516906)
,p_name=>'P84_PATIENT_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290045267013516907)
,p_name=>'P84_PATIENT_MRNO2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290045346737516908)
,p_name=>'P84_NAME2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="readonly,color:red"'
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290045503779516909)
,p_name=>'P84_PASSWORD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(290045644489516910)
,p_name=>'P84_MESSAGE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(289903611001516574)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294884607587033540)
,p_name=>'P84_SUCCESS_MESSAGE'
,p_item_sequence=>190
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(471396106672093465)
,p_name=>'P84_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(289901932357516558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147556112778662064)
,p_name=>'ReturnToDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147545350832661987)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147556691015662156)
,p_event_id=>wwv_flow_imp.id(147556112778662064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(289901932357516558)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147556992639662157)
,p_name=>'sign_btn'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147542123350661984)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147557922876662158)
,p_event_id=>wwv_flow_imp.id(147556992639662157)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'USERPASSWORD   VARCHAR2(25) := :p84_PASSWORD1;',
'USERPASSWORD2  VARCHAR2(25) := :p84_PASSWORD2;',
'CURRENTCHAR    NUMBER(4);',
'NEWPASSWORD    SECURITY.USERS.PASSWORD%TYPE := '' '';',
'NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'SAVEDPASSWORD  SECURITY.USERS.PASSWORD%TYPE;',
'SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'V_PW_FLAG      SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'LOGIN          NUMBER;',
'',
'BEGIN',
':p84_MESSAGE1 := NULL;',
':p84_MESSAGE2 := NULL;',
'IF :p84_PATIENT_MRNO1 IS NULL THEN',
':p84_MESSAGE1 := ''Please enter First Technologist Employee Code'';',
'RETURN;',
'ELSIF :p84_PATIENT_MRNO2 IS NULL THEN',
':p84_MESSAGE2 := ''Please enter Second Technologist Employee Code'';',
'RETURN;',
'ELSIF :p84_PASSWORD1 IS NULL THEN',
':p84_MESSAGE1 := ''Please enter Fisrt Technologist Password'';',
'RETURN;',
'ELSIF :p84_PASSWORD2 IS NULL THEN',
':p84_MESSAGE2 := ''Please enter Second Technologist Password'';',
'RETURN;',
'ELSE',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p84_DISP_MRNO1',
' AND ACTIVE = ''Y'';',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD2, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p84_DISP_MRNO2',
' AND ACTIVE = ''Y'';',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'',
'IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'END LOOP;',
'',
'FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'CURRENTCHAR  := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'CURRENTCHAR  := (((CURRENTCHAR * 10) + 100) / 2.5);',
'NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'END LOOP;',
'NewPassword  := RTRIM(LTRIM(NEWPASSWORD));',
'NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'',
'ELSE',
'NewPassword  := his.get_enc_pass(UserPassword);',
'NEWPASSWORD2 := his.get_enc_pass(USERPASSWORD2);',
'END IF;',
'',
'IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/',
'THEN',
':p84_MESSAGE1 := ''Incorrect Password'';',
'RETURN;',
'ELSIF NEWPASSWORD2 <> SAVEDPASSWORD2 THEN',
':p84_MESSAGE2 := ''Incorrect Password'';',
'RETURN;',
'ELSE',
'',
'--END IF;',
'',
'--IF F_IS_AUTHORIZED(:p84_MRNO1, :p84_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:p84_MRNO2, :p84_PASSWORD2, ''2'') THEN',
'',
'DECLARE',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00130.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                              P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                              P_RADIATION_NO      => :p84_RADIATION_NO_2,',
'                                              P_SITE_ID           => :p84_SITE_ID,',
'                                              P_CT_SRNO           => :p84_CT_SRNO,',
'                                              P_SCHEDULE_SRNO     => :p84_SCHEDULE_SRNO,',
'                                              P_SCHEDULE_EVENT_ID => :p84_SCHEDULE_EVENT_ID,',
'                                              P_USER_MRNO         => :Gv_USER_MRNO,',
'                                              P_FIRST_TECH        => :p84_DISP_MRNO1,',
'                                              P_SECOND_TECH       => :p84_DISP_MRNO2,',
'                                              P_OBJECT_CODE       => ''S18APX00048'',',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                              P_STOP              => V_STOP);',
'',
'IF NVL(V_stop, ''N'') = ''Y'' THEN',
'  :p84_MESSAGE1 := V_alert_text;',
'  RETURN;',
'ELSE',
'  :p84_MESSAGE1 := ''Record SIGNED Properly ...'';',
'  :P84_SIGNED   := ''Y'';',
'END IF;',
'END;',
'END IF;',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_attribute_02=>'P84_PASSWORD1,P84_PASSWORD2,P84_PATIENT_MRNO1,P84_PATIENT_MRNO2,P84_SCHEDULE_EVENT_ID,P84_DISP_MRNO1,P84_DISP_MRNO2,P84_SITE_ID,P84_CT_SRNO'
,p_attribute_03=>'P84_MESSAGE1,P84_MESSAGE2,P84_SIGNED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147558463982662159)
,p_event_id=>wwv_flow_imp.id(147556992639662157)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C.STATUS_ID',
'    INTO :P84_STATUS_ID',
'    FROM RADIATION.RAD_CT_PERFORMANCE C',
'   WHERE C.RADIATION_NO = :P84_RADIATION_NO_2',
'     AND C.SITE_ID = :P84_SITE_ID',
'     AND C.CT_SRNO = :P84_CT_SRNO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P84_RADIATION_NO_2,P84_SITE_ID,P84_CT_SRNO'
,p_attribute_03=>'P84_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147557489304662157)
,p_event_id=>wwv_flow_imp.id(147556992639662157)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157648091962879539)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P84_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147558930089662160)
,p_event_id=>wwv_flow_imp.id(147556992639662157)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P84_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147559344874662160)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_DISP_MRNO1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147559805291662172)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P84_DISP_MRNO1 IS NOT NULL THEN',
'    :P84_PATIENT_TYPE1 := substr(:P84_DISP_MRNO1, 1, 6);',
'    :P84_PATIENT_MRNO1 := LTRIM(SUBSTR(:P84_DISP_MRNO1, 7), ''0'');',
'    :P84_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P84_DISP_MRNO1);',
'--  END IF;',
'END;',
'-- BEGIN',
'--   IF :P84_DISP_MRNO2 IS NOT NULL THEN',
'--     :P84_PATIENT_TYPE2 := substr(:P84_DISP_MRNO2, 1, 6);',
'--     :P84_PATIENT_MRNO2 := LTRIM(SUBSTR(:P84_DISP_MRNO2, 7), ''0'');',
'--     :P84_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P84_DISP_MRNO2);',
'--   END IF;',
'-- END;',
'',
''))
,p_attribute_02=>'P84_DISP_MRNO1'
,p_attribute_03=>'P84_PATIENT_TYPE1,P84_PATIENT_MRNO1,P84_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147560310600662172)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_PASSWORD1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147560817018662172)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P84_PATIENT_TYPE1 IS NOT NULL AND :P84_PATIENT_MRNO1 IS NOT NULL THEN',
':P84_DISP_MRNO1 := :P84_PATIENT_TYPE1 ||LPAD(:P84_PATIENT_MRNO1, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P84_DISP_MRNO1,P84_PATIENT_TYPE1,P84_PATIENT_MRNO1'
,p_attribute_03=>'P84_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147561338375662172)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P84_ERROR := NULL;',
'  IF :P84_PATIENT_MRNO1 IS NOT NULL THEN',
'    :P84_DISP_MRNO1 := :P84_PATIENT_TYPE1 || LPAD(:P84_PATIENT_MRNO1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P84_DISP_MRNO1), ''N'') = ''N'' THEN',
'      :P84_ERROR        := ''This is not an active employee.'';',
'      :P84_PATIENT_MRNO1 := NULL;',
'      :P84_DISP_MRNO1    := NULL;',
'      :P84_NAME1        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P84_NAME1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P84_DISP_MRNO1',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P84_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P84_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P84_ERROR_MESSAGE,P84_PATIENT_MRNO1,P84_PATIENT_TYPE1,P84_DISP_MRNO1,P84_NAME1'
,p_attribute_03=>'P84_ERROR_MESSAGE,P84_PATIENT_MRNO1,P84_PATIENT_TYPE1,P84_DISP_MRNO1,P84_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147561826031662173)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P84_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P84_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147562396463662173)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P84_NAME1:= his.pkg_patient.GET_PATIENT_NAME(:P84_DISP_MRNO1);'
,p_attribute_02=>'P84_DISP_MRNO1'
,p_attribute_03=>'P84_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P84_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147562894515662173)
,p_event_id=>wwv_flow_imp.id(147559344874662160)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_NAME1'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P84_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147563246907662173)
,p_name=>'Get-Patient-Code_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_PATIENT_MRNO2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.type === ''load'' ||',
'    (this.browserEvent.key === ''Enter'' || this.browserEvent.key === ''Tab'')',
''))
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147566241262662179)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P84_ERROR := NULL;',
'  IF :P84_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P84_DISP_MRNO2 := :P84_PATIENT_TYPE2 || LPAD(:P84_PATIENT_MRNO2, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P84_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P84_ERROR        := ''This is not an active employee.'';',
'      :P84_PATIENT_MRNO2 := NULL;',
'      :P84_DISP_MRNO2    := NULL;',
'      :P84_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P84_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P84_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P84_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P84_ERROR_MESSAGE,P84_PATIENT_MRNO2,P84_PATIENT_TYPE2,P84_DISP_MRNO2,P84_NAME2'
,p_attribute_03=>'P84_ERROR_MESSAGE,P84_PATIENT_MRNO2,P84_PATIENT_TYPE2,P84_DISP_MRNO2,P84_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147566774554662179)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P84_DISP_MRNO2 IS NOT NULL THEN',
'    :P84_PATIENT_TYPE2 := substr(:P84_DISP_MRNO2, 1, 6);',
'    :P84_PATIENT_MRNO2 := LTRIM(SUBSTR(:P84_DISP_MRNO2, 7), ''0'');',
'    :P84_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P84_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P84_DISP_MRNO2'
,p_attribute_03=>'P84_PATIENT_TYPE2,P84_PATIENT_MRNO2,P84_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147567224510662179)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147563743750662175)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P84_PATIENT_TYPE2 IS NOT NULL AND :P84_PATIENT_MRNO2 IS NOT NULL THEN',
':P84_DISP_MRNO2 := :P84_PATIENT_TYPE2 ||LPAD(:P84_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P84_DISP_MRNO1,P84_PATIENT_TYPE1,P84_PATIENT_MRNO1'
,p_attribute_03=>'P84_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147564282649662175)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P84_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P84_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147564764912662177)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P84_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P84_DISP_MRNO2);'
,p_attribute_02=>'P84_DISP_MRNO2'
,p_attribute_03=>'P84_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P84_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147565283647662178)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P84_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147565776305662178)
,p_event_id=>wwv_flow_imp.id(147563246907662173)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P84_PASSWORD2'').setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147567667559662179)
,p_name=>'ClearItems'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147568108328662206)
,p_event_id=>wwv_flow_imp.id(147567667559662179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P84_MESSAGE1,P84_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147568669785662206)
,p_event_id=>wwv_flow_imp.id(147567667559662179)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P84_UNIT").hide();',
'apex.item("P84_SERVICE_NO").hide();',
'apex.item("P84_SERVICE_STATUS").hide();',
'apex.item("P84_RANK").hide();',
'apex.item("P84_FORMATION").hide();',
'apex.item("P84_NAME2").disable();',
'apex.item("P84_NAME1").disable();',
'//apex.item("P84_ANAESTHESIA").disable();',
'apex.item("P84_INSTRUCITON").disable();',
'apex.item("P84_SCHEDULE_DATE_SHOW").disable();',
'',
'apex.item("P84_CONTRAST").setValue('''');',
'apex.item("P84_CONTRAST_GIVEN_BY").setValue('''');',
'apex.item("P84_CONTRAST_QTY").setValue('''');',
'apex.item("P84_CONTRAST_UNIT").setValue('''');',
'apex.item("P84_CONTRAST_GIVEN_NAME").setValue('''');',
'apex.item("P84_CONTRAST_ID").setValue('''');',
'apex.item("P84_NECK_POSITION").setValue('''');',
'apex.item("P84_ARM_POSITION").setValue('''');',
'apex.item("P84_POSITION_INSTRUCTION").setValue('''');',
'apex.item("P84_SETUP_POSITION").setValue('''');',
'',
'',
'',
'',
'//  alert($v("P40_RADIATION_NO_2"));',
'//  alert($v("P40_MASTER_SITE_ID"));',
'//  alert($v("P40_SCHEDULE_SRNO_1"));',
'//  alert($v("P40_SCHEDULE_EVENT_ID"));',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147569124128662206)
,p_event_id=>wwv_flow_imp.id(147567667559662179)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P84_MRNO          := :LV_PATIENT_MRNO;',
'  :P84_SCHEDULE_SRNO := :LV_SR_NO;',
'END;',
''))
,p_attribute_02=>'LV_PATIENT_MRNO,LV_SR_NO'
,p_attribute_03=>'P84_MRNO,P84_SCHEDULE_SRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147569568472662206)
,p_name=>'close_dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147529784546661947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147570035874662207)
,p_event_id=>wwv_flow_imp.id(147569568472662206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':LV_PATIENT_MRNO := NULL;',
':LV_SR_NO := NULL;'))
,p_attribute_02=>'LV_PATIENT_MRNO,LV_SR_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147570593883662207)
,p_event_id=>wwv_flow_imp.id(147569568472662206)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147570949094662207)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147571419653662209)
,p_event_id=>wwv_flow_imp.id(147570949094662207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// IF :CT_PERFORMANCE.STATUS_ID = ''015'' THEN	// 	SET_BLOCK_PROPERTY(''CT_PERFORMANCE'', INSERT_ALLOWED, PROPERTY_FALSE);    // SET_BLOCK_PROPERTY(''CT_PERFORMANCE'', UPDATE_ALLOWED, PROPERTY_FALSE);    // SET_BLOCK_PROPERTY(''RADIATION_ACCESSORIES'', INSER'
||'T_ALLOWED, PROPERTY_FALSE);    // SET_BLOCK_PROPERTY(''RADIATION_ACCESSORIES'', UPDATE_ALLOWED, PROPERTY_FALSE);    // SET_ITEM_PROPERTY(''SAVE'', ENABLED, PROPERTY_FALSE);    // SET_ITEM_PROPERTY(''SIGN'', ENABLED, PROPERTY_FALSE);    // SET_ITEM_PROPERTY'
||'(''DELETE'', ENABLED, PROPERTY_FALSE);	// ELSE	// 	SET_BLOCK_PROPERTY(''CT_PERFORMANCE'', INSERT_ALLOWED, PROPERTY_TRUE);    // SET_BLOCK_PROPERTY(''CT_PERFORMANCE'', UPDATE_ALLOWED, PROPERTY_TRUE);    // SET_BLOCK_PROPERTY(''RADIATION_ACCESSORIES'', INSERT_'
||'ALLOWED, PROPERTY_TRUE);    // SET_BLOCK_PROPERTY(''RADIATION_ACCESSORIES'', UPDATE_ALLOWED, PROPERTY_TRUE);    // SET_ITEM_PROPERTY(''SAVE'', ENABLED, PROPERTY_TRUE);    // SET_ITEM_PROPERTY(''SIGN'', ENABLED, PROPERTY_TRUE);    // SET_ITEM_PROPERTY(''DELE'
||'TE'', ENABLED, PROPERTY_TRUE);	// END IF;',
'',
'if ($v("P84_STATUS_ID")==''015'')',
'{',
'    apex.item("P84_CONTRAST").disable();',
'    apex.item("P84_CONTRAST_GIVEN_BY").disable();',
'    apex.item("P84_CONTRAST_ID").disable();',
'    apex.item("P84_CONTRAST_QTY").disable();',
'    apex.item("P84_CONTRAST_UNIT").disable();',
'    apex.item("P84_SETUP_POSITION").disable();',
'    apex.item("P84_NECK_POSITION").disable();',
'    apex.item("P84_ARM_POSITION").disable();',
'    apex.item("P84_POSITION_INSTRUCTION").disable();',
'',
'    apex.item("sign_btn").disable();',
'    apex.item("save_btn").disable();',
'    //apex.region("ACS").call("getActions").set("edit", false);',
'    }',
'    else{',
'    apex.item("sign_btn").enable();',
'    apex.item("save_btn").enable();',
'    apex.item("P84_CONTRAST").enable();',
'    apex.item("P84_CONTRAST_GIVEN_BY").enable();',
'    apex.item("P84_CONTRAST_ID").enable();',
'    apex.item("P84_CONTRAST_QTY").enable();',
'    apex.item("P84_CONTRAST_UNIT").enable();',
'    apex.item("P84_SETUP_POSITION").enable();',
'    apex.item("P84_NECK_POSITION").enable();',
'    apex.item("P84_ARM_POSITION").enable();',
'    apex.item("P84_POSITION_INSTRUCTION").enable();',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147571828191662211)
,p_name=>'Sign_btn_OpenRG'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147528980293661946)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147572394101662214)
,p_event_id=>wwv_flow_imp.id(147571828191662211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P84_MRNO1         := :GV_USER_MRNO;',
'    :P84_PATIENT_TYPE1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P84_PATIENT_TYPE2:= SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P84_PATIENT_MRNO1    := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'   -- :P84_PATIENT_MRNO1    := LPAD(:P84_PATIENT_MRNO1, 8, ''0'');',
'    :P84_DISP_MRNO1 := (:P84_PATIENT_TYPE1 ||LPAD(:P84_PATIENT_MRNO1, 8, ''0''));',
'    :P84_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P84_DISP_MRNO1);',
'    :P84_DISP_MRNO2:=null;',
'  END;',
'',
''))
,p_attribute_02=>'P84_MRNO1,P84_DISP_MRNO1,P84_NAME1,P84_PATIENT_MRNO1'
,p_attribute_03=>'P84_MRNO1,P84_PATIENT_TYPE1,P84_PATIENT_TYPE2,P84_DISP_MRNO1,P84_DISP_MRNO2,P84_NAME1,P84_PATIENT_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147572882476662214)
,p_event_id=>wwv_flow_imp.id(147571828191662211)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' SELECT S.SITE_ID,',
'       NVL(RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                P_EVENT_ID         => SW.EVENT_ID),408)',
'                                                --,       S.SITE_ID',
'  INTO :P84_SITE_ID,',
'       :P84_SCHEDULE_EVENT_ID',
'       --,       :P38_ND_SITE_ID',
'  FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'WHERE SW.SR_NO = S.SR_NO',
'   AND S.SR_NO = :P84_SCHEDULE_SRNO',
'   AND S.WFE_NO = SW.WFE_NO;',
'',
'EXCEPTION WHEN  NO_DATA_FOUND THEN NULL;',
'END;',
''))
,p_attribute_02=>'P84_SCHEDULE_SRNO'
,p_attribute_03=>'P84_SITE_ID,P84_SCHEDULE_EVENT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147573334906662214)
,p_event_id=>wwv_flow_imp.id(147571828191662211)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign_rg");',
'apex.item("P84_PASSWORD1").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147573773790662215)
,p_name=>'CTPerformanceChangeDA'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(157648091962879539)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147574290483662220)
,p_event_id=>wwv_flow_imp.id(147573773790662215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    try{',
'    apex.item("P84_CONTRAST").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST"));',
'    apex.item("P84_CONTRAST_ID").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_ID"));',
'    apex.item("P84_CONTRAST_QTY").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_QTY"));',
'    apex.item("P84_CONTRAST_UNIT").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_UNIT"));',
'    apex.item("P84_CONTRAST_GIVEN_BY").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_GIVEN_BY"));',
'    apex.item("P84_SETUP_POSITION").setValue(model.getValue(this.data.selectedRecords[i], "SETUP_POSITION"));',
'    apex.item("P84_NECK_POSITION").setValue(model.getValue(this.data.selectedRecords[i], "NECK_POSITION"));',
'    apex.item("P84_ARM_POSITION").setValue(model.getValue(this.data.selectedRecords[i], "ARM_POSITION"));',
'    apex.item("P84_POSITION_INSTRUCTION").setValue(model.getValue(this.data.selectedRecords[i], "POSITION_INSTRUCTION"));',
'    apex.item("P84_SCHEDULE_DATE").setValue(model.getValue(this.data.selectedRecords[i], "SCHEDULE_DATE"));',
'    apex.item("P84_DISP_NAME_SIGN_BY_1").setValue(model.getValue(this.data.selectedRecords[i], "DISP_NAME_SIGN_BY_1"));',
'    apex.item("P84_DISP_NAME_SIGN_BY_2").setValue(model.getValue(this.data.selectedRecords[i], "DISP_NAME_SIGN_BY_2"));',
'    apex.item("P84_SIGN_DATE").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_DATE"));',
'    apex.item("P84_CT_SRNO").setValue(model.getValue(this.data.selectedRecords[i], "CT_SRNO"));',
'    apex.item("P84_STATUS_ID").setValue(model.getValue(this.data.selectedRecords[i], "STATUS_ID"));',
'    apex.item("P84_SCHEDULE_DATE_SHOW").setValue(model.getValue(this.data.selectedRecords[i], "SCHEDULE_DATE"));',
'    apex.item("P84_CONTRAST_UNIT").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_UNIT"));',
'    apex.item("P84_CONTRAST_UNIT_ID").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_UNIT_ID"));',
'',
'',
'     } catch {',
'   ',
'alert(''exception'')',
'     }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147574703036662220)
,p_event_id=>wwv_flow_imp.id(147573773790662215)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178835186020421817)
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
 p_id=>wwv_flow_imp.id(147575107867662220)
,p_name=>'RadiationDetailDAChange'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(160571091798461139)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147575680087662224)
,p_event_id=>wwv_flow_imp.id(147575107867662220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P84_ANAESTHESIA").setValue(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P84_INSTRUCITON").setValue(model.getValue(this.data.selectedRecords[i],"CT_INSTRUCTIONS"));',
'apex.item("P84_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'',
'',
'}',
'apex.region("CT_PER").refresh();',
'//apex.region("ACS").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147334245698371517)
,p_event_id=>wwv_flow_imp.id(147575107867662220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157648091962879539)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147576078459662225)
,p_name=>'SaveBTNDA'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147529376886661947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147576542263662233)
,p_event_id=>wwv_flow_imp.id(147576078459662225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UpdateCTPerformance",',
'    {',
'        pageItems: [',
'            "P84_RADIATION_NO_2",',
'            "P84_SITE_ID",',
'            "P84_SIM_CT_ID",',
'            "P84_DIPS_SIM_CT",',
'            "P84_NECK_POSITION",',
'            "P84_SETUP_POSITION",',
'            "P84_ARM_POSITION",',
'            "P84_POSITION_INSTRUCTION",',
'            "P84_SETUP_POSITION_DESC",',
'            "P84_ARM_POSITION_DESC",',
'            "P84_NECK_POSITION_DESC",',
'            "P84_CT_SRNO",',
'            "P84_PHASE_NO",',
'            "P84_TRANS_DATE",',
'            "P84_OC_SERIAL_NO",',
'            "P84_SCHEDULE_SRNO",',
'            "P84_SCHEDULE_DATE",',
'            "P84_PERFORMANCE_ID",',
'            "P84_STATUS_ID",',
'            "P84_SIGN_BY_1",',
'            "P84_SIGN_BY_2",',
'            "P84_SIGN_DATE",',
'            "P84_DISP_NAME_SIGN_BY_1",',
'            "P84_DISP_NAME_SIGN_BY_2",',
'            "P84_CONTRAST",',
'            "P84_STATUS_DESC",',
'            "P84_CONTRAST_ID",',
'            "P84_CONTRAST_DESC",',
'            "P84_CONTRAST_QTY",',
'            "P84_CONTRAST_UNIT_ID",',
'            "P84_CONTRAST_UNIT",',
'            "P84_CONTRAST_GIVEN_BY",',
'            "P84_CONTRAST_GIVEN_NAME",',
'            "P84_FROM_FRACTION_ID",',
'            "P84_TO_FRACTION_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P84_SUCCESS_MESSAGE").setValue(obj.message); ',
'            } else {',
'                apex.item("P84_ERROR_MESSAGE").setValue(obj.message); ',
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
 p_id=>wwv_flow_imp.id(147576975408662233)
,p_name=>'ReportBtnDA'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147528534399661946)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147577480894662233)
,p_event_id=>wwv_flow_imp.id(147576975408662233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_RADIATION_NO": $v("P84_RADIATION_NO_2"),"P_USER_NAME": $v("GV_USER_NAME"),"P_TERMINAL": $v("GV_TERMINAL")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00031'',',
'    "METHOD": ''S0'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147577840457662233)
,p_name=>'PerformanceHistoryDA'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(157978656398316023)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147578383746662234)
,p_event_id=>wwv_flow_imp.id(147577840457662233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P84_RADIATION_NO_2'', _.CT_HIST.RADIATION_NO);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147578897957662234)
,p_event_id=>wwv_flow_imp.id(147577840457662233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT * ',
'INTO :P84_RADIATION_NO_2,',
':P84_RADIATION_DATE_1,:P84_MRNO,:P84_PATIENT_NAME_1,:P84_AGE,:P84_SEX',
'--,:P84_SERVICE_NO,:P84_SERVICE_STATUS,:P84_RANK,:P84_SERVICE_STATUS,:P84_UNIT',
',:P84_DOCTOR_ID',
',:P84_CONSULTANT,:P84_TREATMENT_INTENT',
',:P84_SITE_ID',
'--,:P84_SITE_DISP,:P84_SETUP_POSITION_DESC,:P84_ARM_POSITION_DESC,:P84_NECK_POSITION_DESC,:P84_POSITION_INSTRUCTION,:P84_STATUS,:P84_STATUS_ID   ',
'FROM',
'(',
'SELECT M.RADIATION_NO,',
'             TO_CHAR(RADIATION_DATE,''DD-MON-RR HH24:MI'') RADIATION_DATE,',
'             MRNO,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'             DOCTOR_ID,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID),',
'             RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT',
',D.SITE_ID',
'          ',
'FROM RADIATION.RADIATION_DETAIL D,RADIATION.RADIATION_MASTER M',
'WHERE M.RADIATION_NO = (CASE',
'                   WHEN :P84_SCHEDULE_SRNO IS NOT NULL THEN',
'                    (SELECT S.RADIATION_NO',
'                       FROM RADIATION.SCHEDULE S',
'                      WHERE SR_NO = :P84_SCHEDULE_SRNO)',
'                   ELSE',
'                    :P84_RADIATION_NO_2',
'                 END)',
' AND M.MRNO LIKE CASE',
'       WHEN  :P84_MRNO IS NOT NULL THEN',
'        ''%'' ||  :P84_MRNO',
'       ELSE',
'        M.MRNO',
'     END',
'AND M.RADIOTHERAPY_TYPE = ''T''',
'AND D.RADIATION_NO=M.RADIATION_NO  ',
'AND M.STATUS_REQUEST = ''015''',
'AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'ORDER BY RADIATION_DATE DESC',
') T',
'WHERE ROWNUM=1;',
'',
'',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
''))
,p_attribute_02=>'P84_RADIATION_NO_2,P84_MRNO,P84_SCHEDULE_SRNO'
,p_attribute_03=>'P84_RADIATION_DATE_1,P84_MRNO,P84_PATIENT_NAME_1,P84_AGE,P84_SEX,P84_DOCTOR_ID,P84_CONSULTANT,P84_TREATMENT_INTENT,P84_SITE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147579393689662234)
,p_event_id=>wwv_flow_imp.id(147577840457662233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("RDS").refresh();',
'apex.region("CT_PER").refresh();',
'//apex.region("ACS").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147579736119662234)
,p_name=>'ExitRadAcc'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147521037479661934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147580278372662234)
,p_event_id=>wwv_flow_imp.id(147579736119662234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radaccsub'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147580682843662235)
,p_name=>'SaveRadAcc'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147520647174661934)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147581145539662235)
,p_event_id=>wwv_flow_imp.id(147580682843662235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P84_STATUS_ID") === "015") {',
'    apex.message.alert("CT is signed, cannot proceed");',
'    return;',
'}',
'if ($v("P84_STATUS_ID") === "248") {',
'    apex.message.alert("CT is disposed, cannot proceed");',
'    return;',
'}',
'',
'',
'if ($v("P84_RAD_ACC_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationAccessory");',
'}',
'else if ($v("P84_RAD_ACC_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationAccessory");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147581545516662235)
,p_name=>'insertRadiationAccessory'
,p_event_sequence=>240
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'insertRadiationAccessory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147582044228662235)
,p_event_id=>wwv_flow_imp.id(147581545516662235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P84_ACC_ACCESSORY_ID",',
'            "P84_ACC_REMARKS",',
'            "P84_ACC_SRNO",',
'            "P84_ACC_PHASE_NO",',
'            "P84_ACC_SITE_ID",',
'            "P84_ACC_RADIATION_NO"',
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
'                apex.region(''radacc'').refresh();',
'                apex.theme.closeRegion(''radaccsub'');',
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
 p_id=>wwv_flow_imp.id(147582447026662235)
,p_name=>'updateRadiationAccessory'
,p_event_sequence=>250
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateRadiationAccessory'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147582904643662236)
,p_event_id=>wwv_flow_imp.id(147582447026662235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P84_ACC_ACCESSORY_ID",',
'            "P84_ACC_REMARKS",',
'            "P84_ACC_SRNO",',
'            "P84_ACC_PHASE_NO",',
'            "P84_ACC_SITE_ID",',
'            "P84_ACC_RADIATION_NO"',
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
'                apex.region(''radacc'').refresh();',
'                apex.theme.closeRegion(''radaccsub'');',
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
 p_id=>wwv_flow_imp.id(147583312929662237)
,p_name=>'DAPassword1'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_PASSWORD1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147583892592662237)
,p_event_id=>wwv_flow_imp.id(147583312929662237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P84_PATIENT_MRNO2'').setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147584259520662237)
,p_name=>'DASign@Password'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_PASSWORD2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147585219115662239)
,p_event_id=>wwv_flow_imp.id(147584259520662237)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'USERPASSWORD   VARCHAR2(25) := :p84_PASSWORD1;',
'USERPASSWORD2  VARCHAR2(25) := :p84_PASSWORD2;',
'CURRENTCHAR    NUMBER(4);',
'NEWPASSWORD    SECURITY.USERS.PASSWORD%TYPE := '' '';',
'NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'SAVEDPASSWORD  SECURITY.USERS.PASSWORD%TYPE;',
'SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'V_PW_FLAG      SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'LOGIN          NUMBER;',
'',
'BEGIN',
'',
'',
':P84_ERROR_MESSAGE := NULL;',
':P84_ERROR_MESSAGE := NULL;',
'IF :P84_PATIENT_MRNO1 IS NULL THEN',
':P84_ERROR_MESSAGE := ''Please enter First Technologist Employee Code'';',
'RETURN;',
'ELSIF :p84_PATIENT_MRNO2 IS NULL THEN',
':P84_ERROR_MESSAGE := ''Please enter Second Technologist Employee Code'';',
'RETURN;',
'ELSIF :p84_PASSWORD1 IS NULL THEN',
':P84_ERROR_MESSAGE := ''Please enter Fisrt Technologist Password'';',
'RETURN;',
'ELSIF :p84_PASSWORD2 IS NULL THEN',
':P84_ERROR_MESSAGE := ''Please enter Second Technologist Password'';',
'RETURN;',
'ELSE',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p84_DISP_MRNO1',
' AND ACTIVE = ''Y'';',
'EXCEPTION',
'WHEN OTHERS THEN',
':P84_ERROR_MESSAGE := sqlerrm;',
'END;',
'',
'',
'',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD2, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p84_DISP_MRNO2',
' AND ACTIVE = ''Y'';',
'EXCEPTION',
'WHEN OTHERS THEN',
':P84_ERROR_MESSAGE := sqlerrm;',
'END;',
'',
'',
'',
'IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'END LOOP;',
'',
'FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'CURRENTCHAR  := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'CURRENTCHAR  := (((CURRENTCHAR * 10) + 100) / 2.5);',
'NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'END LOOP;',
'NewPassword  := RTRIM(LTRIM(NEWPASSWORD));',
'NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'',
'ELSE',
'NewPassword  := his.get_enc_pass(UserPassword);',
'NEWPASSWORD2 := his.get_enc_pass(USERPASSWORD2);',
'END IF;',
'',
'IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/',
'THEN',
':P84_ERROR_MESSAGE := ''First Technologist password is incorrect'';',
'RETURN;',
'ELSIF NEWPASSWORD2 <> SAVEDPASSWORD2 THEN',
':P84_ERROR_MESSAGE := ''Second Technologist password is incorrect'';',
'RETURN;',
'ELSE',
'',
'--END IF;',
'',
'--IF F_IS_AUTHORIZED(:p84_MRNO1, :p84_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:p84_MRNO2, :p84_PASSWORD2, ''2'') THEN',
'',
'DECLARE',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00130.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                              P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                              P_RADIATION_NO      => :p84_RADIATION_NO_2,',
'                                              P_SITE_ID           => :p84_SITE_ID,',
'                                              P_CT_SRNO           => :p84_CT_SRNO,',
'                                              P_SCHEDULE_SRNO     => :p84_SCHEDULE_SRNO,',
'                                              P_SCHEDULE_EVENT_ID => :p84_SCHEDULE_EVENT_ID,',
'                                              P_USER_MRNO         => :Gv_USER_MRNO,',
'                                              P_FIRST_TECH        => :p84_DISP_MRNO1,',
'                                              P_SECOND_TECH       => :p84_DISP_MRNO2,',
'                                              P_OBJECT_CODE       => ''S18APX00048'',',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                              P_STOP              => V_STOP);',
'',
'IF NVL(V_stop, ''N'') = ''Y'' THEN',
'  :P84_ERROR_MESSAGE := V_alert_text;',
'  RETURN;',
'ELSE',
'  :P84_SUCCESS_MESSAGE := ''Record SIGNED Properly ...'';',
'  :P84_SIGNED   := ''Y'';',
'END IF;',
'END;',
'END IF;',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
':P84_ERROR_MESSAGE := sqlerrm;',
'END;',
''))
,p_attribute_02=>'P84_PASSWORD1,P84_PASSWORD2,P84_PATIENT_MRNO1,P84_PATIENT_MRNO2,P84_SCHEDULE_EVENT_ID,P84_DISP_MRNO1,P84_DISP_MRNO2,P84_SITE_ID,P84_CT_SRNO'
,p_attribute_03=>'P84_MESSAGE1,P84_MESSAGE2,P84_SIGNED,P84_ERROR_MESSAGE,P84_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147585785106662239)
,p_event_id=>wwv_flow_imp.id(147584259520662237)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C.STATUS_ID',
'    INTO :P84_STATUS_ID',
'    FROM RADIATION.RAD_CT_PERFORMANCE C',
'   WHERE C.RADIATION_NO = :P84_RADIATION_NO_2',
'     AND C.SITE_ID = :P84_SITE_ID',
'     AND C.CT_SRNO = :P84_CT_SRNO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
':P84_ERROR_MESSAGE := sqlerrm;',
'END;',
''))
,p_attribute_02=>'P84_RADIATION_NO_2,P84_SITE_ID,P84_CT_SRNO'
,p_attribute_03=>'P84_STATUS_ID,P84_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147586258439662239)
,p_event_id=>wwv_flow_imp.id(147584259520662237)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(157648091962879539)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P84_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147584757040662238)
,p_event_id=>wwv_flow_imp.id(147584259520662237)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P84_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147586654037662239)
,p_name=>'DAViewRequest'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147530948675661951)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147587198816662239)
,p_event_id=>wwv_flow_imp.id(147586654037662239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := 115;',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P84_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' || L_APP ||',
'                                                           '':85:'' ||',
'                                                           L_SESSION ||',
'                                                           ''::NO::P85_MRNO,P85_RADIATION_NO,P85_PARAM_RADIATION_NO:'' ||',
'                                                           :P84_MRNO || '','' ||',
'                                                           :P84_RADIATION_NO_2 || '','' ||',
'                                                           :P84_RADIATION_NO_2,',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P84_MRNO,P84_RADIATION_NO_2'
,p_attribute_03=>'P84_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147587645030662241)
,p_event_id=>wwv_flow_imp.id(147586654037662239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P84_TXT_URL''));    '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147588099598662241)
,p_name=>'DAErrorMessage'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_ERROR_MESSAGE'
,p_condition_element=>'P84_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147588537788662241)
,p_event_id=>wwv_flow_imp.id(147588099598662241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P84_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147588916131662241)
,p_name=>'DASuccessMessage'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_SUCCESS_MESSAGE'
,p_condition_element=>'P84_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147589480054662241)
,p_event_id=>wwv_flow_imp.id(147588916131662241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P84_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147554955475662055)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateNewProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
' -- L_SR_NO RADIATION.SCHEDULE.SR_NO%TYPE;',
' -- L_MRNO  RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'',
'BEGIN',
'',
' -- L_MRNO  := :P84_MRNO;',
'---  L_SR_NO := :P84_SCHEDULE_SRNO;',
'',
'  RADIATION.PKG_S18FRM00130.CREATE_NEW_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                            P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                            P_RADIATION_NO      => :P84_RADIATION_NO_2,',
'                                            P_SITE_ID           => :P84_SITE_ID,',
'                                            P_CT_SRNO           => :P84_CT_SRNO,',
'                                            P_OBJECT_CODE       => ''S18APX00048'',',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  --:P84_MRNO          := L_MRNO;',
'  ---:P84_SCHEDULE_SRNO := L_SR_NO;',
'',
'  /*IF nvl(L_STOP, ''N'') <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P84_ALERT'', ''CT created successfully'');',
'  END IF;*/',
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
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(147530196227661947)
,p_process_success_message=>'CT created successfully'
,p_internal_uid=>147554955475662055
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147555304397662055)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposePerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
' -- L_SR_NO RADIATION.SCHEDULE.SR_NO%TYPE;',
' --- L_MRNO  RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'BEGIN',
'',
' -- L_MRNO  := :P84_MRNO;',
' -- L_SR_NO := :P84_SCHEDULE_SRNO;',
'',
'  RADIATION.PKG_S18FRM00130.DISPOSE_RAD_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                             P_SIGN_FLAG         => NULL,',
'                                             P_SIGN_BY           => :P84_MRNO1,',
'                                             P_RADIATION_NO      => :P84_RADIATION_NO_2,',
'                                             P_SITE_ID           => :P84_SITE_ID,',
'                                             P_CT_SRNO           => :P84_CT_SRNO,',
'                                             P_OBJECT_CODE       => ''S18APX00039'',',
'                                             P_TERMINAL          => :GV_TERMINAL,',
'                                             P_USER_MRNO         => :GV_USER_MRNO,',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
' -- :P84_MRNO          := L_MRNO;',
'  --:P84_SCHEDULE_SRNO := L_SR_NO;',
'',
'  /*IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P84_ALERT'',',
'                                ''Performance Disposed successfully'');',
'  END IF;*/',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(147530528196661947)
,p_process_success_message=>'CT Disposed successfully'
,p_internal_uid=>147555304397662055
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147507503635661868)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(157648091962879539)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'CT_PERFORMANCE_DT - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>147507503635661868
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147334076288371515)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearSessionState'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(147529784546661947)
,p_internal_uid=>147334076288371515
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147554122951662053)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParameter'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P84_MRNO          := NULL;',
'  :P84_SCHEDULE_SRNO := NULL;',
'  ',
'  /*IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P84_MRNO          := :P46_PATIENT_MRNO;',
'    :P84_SCHEDULE_SRNO := NULL;',
'  END IF;*/',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>147554122951662053
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
 p_id=>wwv_flow_imp.id(147553788269662053)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'when-new-form-instance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PERFORMANCE_TYPE_ID',
'    INTO :P84_PERFORMANCE_TYPE_ID',
'    FROM RADIATION.SCHEDULE RS, RADIATION.MACHINES M',
'   WHERE RS.MACHINE_ID = M.MACHINE_ID',
'     AND RS.SR_NO = :P84_SCHEDULE_SRNO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;',
'',
'',
'BEGIN',
'  SELECT S.SITE_ID,',
'         RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                  P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                  P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                  P_EVENT_ID         => SW.EVENT_ID)',
'',
'    INTO :P84_SITE_ID, :P84_SCHEDULE_EVENT_ID',
'    FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'   WHERE SW.SR_NO = S.SR_NO',
'     AND S.SR_NO = :P84_SCHEDULE_SRNO',
'     AND S.WFE_NO = SW.WFE_NO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>147553788269662053
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147553418325662052)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT *',
'    INTO :P84_RADIATION_NO_2,',
'         :P84_RADIATION_DATE_1,',
'         :P84_MRNO,',
'         :P84_PATIENT_NAME_1,',
'         :P84_AGE,',
'         :P84_SEX,',
'         :P84_DOCTOR_ID,',
'         :P84_CONSULTANT,',
'         :P84_TREATMENT_INTENT',
'    FROM (SELECT RADIATION_NO,',
'                 TO_CHAR(RADIATION_DATE, ''DD-MON-RR HH24:MI'') RADIATION_DATE,',
'                 MRNO,',
'                 RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'                 RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'                 HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_SEX,',
'                 DOCTOR_ID,',
'                 RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID),',
'                 RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT',
'          ',
'            FROM RADIATION.RADIATION_MASTER M',
'           WHERE M.RADIATION_NO = ',
'                    RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P84_MRNO,',
'                                                                  P_RADIOTHERAPY_TYPE => ''T'')',
'             AND M.MRNO LIKE CASE',
'                   WHEN :P84_MRNO IS NOT NULL THEN',
'                    ''%'' || :P84_MRNO',
'                   ELSE',
'                    M.MRNO',
'                 END',
'             AND M.RADIOTHERAPY_TYPE = ''T''',
'             AND M.STATUS_REQUEST = ''015''',
'             AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'           ORDER BY RADIATION_DATE DESC) T',
'   WHERE ROWNUM = 1;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>147553418325662052
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147554502234662053)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UpdateCTPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_COUNT NUMBER;',
'  V_STOP  VARCHAR2(1);',
'  EX EXCEPTION;',
'  V_ERROR VARCHAR2(200);',
'  V_TIMER NUMBER;',
'  bk_data RADIATION.PKG_S18FRM00130.TAB_CT_PERFORMANCE;',
'BEGIN',
'  his.message_entry_category(P_CATEGORY => ''CT_contrast'',',
'                             P_MESSAGE  => :P84_CONTRAST_ID);',
'  SELECT :P84_RADIATION_NO_2 RADIATION_NO,',
'         :P84_SITE_ID SITE_ID,',
'         :P84_SIM_CT_ID SIM_CT_ID,',
'         :P84_DIPS_SIM_CT DIPS_SIM_CT,',
'         :P84_NECK_POSITION NECK_POSITION,',
'         :P84_SETUP_POSITION SETUP_POSITION,',
'         :P84_ARM_POSITION ARM_POSITION,',
'         :P84_POSITION_INSTRUCTION POSITION_INSTRUCTION,',
'         :P84_SETUP_POSITION_DESC SETUP_POSITION_DESC,',
'         :P84_ARM_POSITION_DESC ARM_POSITION_DESC,',
'         :P84_NECK_POSITION_DESC NECK_POSITION_DESC,',
'         :P84_CT_SRNO CT_SRNO,',
'         :P84_PHASE_NO PHASE_NO,',
'         TO_DATE(TO_CHAR(SYSDATE, ''DD-MM-YYYY HH12:MI:SS AM''),',
'                 ''DD-MM-YYYY HH12:MI:SS AM'') TRANS_DATE,',
'         :P84_OC_SERIAL_NO OC_SERIAL_NO,',
'         NVL(:P84_SCHEDULE_SRNO, :LV_SR_NO) SCHEDULE_SRNO,',
'         TO_DATE(''25-09-24 09:30'', ''DD-MM-YY HH24:MI'') SCHEDULE_DATE,',
'         :P84_PERFORMANCE_ID PERFORMANCE_ID,',
'         :P84_STATUS_ID STATUS_ID,',
'         :P84_SIGN_BY_1 SIGN_BY_1,',
'         :P84_SIGN_BY_2 SIGN_BY_2,',
'         TO_DATE(:P84_SIGN_DATE, ''DD-MM-YY HH24:MI'') SIGN_BY_2,',
'         :P84_DISP_NAME_SIGN_BY_1 DISP_NAME_SIGN_BY_1,',
'         :P84_DISP_NAME_SIGN_BY_2 DISP_NAME_SIGN_BY_2,',
'         :P84_CONTRAST CONTRAST,',
'         :P84_STATUS_DESC STATUS_DESC,',
'         :P84_CONTRAST_ID CONTRAST_ID,',
'         :P84_CONTRAST_DESC CONTRAST_DESC,',
'         :P84_CONTRAST_QTY CONTRAST_QTY,',
'         :P84_CONTRAST_UNIT_ID CONTRAST_UNIT_ID,',
'         :P84_CONTRAST_UNIT CONTRAST_UNIT,',
'         :P84_CONTRAST_GIVEN_BY CONTRAST_GIVEN_BY,',
'         :P84_CONTRAST_GIVEN_NAME CONTRAST_GIVEN_NAME,',
'         :P84_FROM_FRACTION_ID FROM_FRACTION_ID,',
'         :P84_TO_FRACTION_ID TO_FRACTION_ID',
'    BULK COLLECT',
'    INTO bk_data',
'    FROM DUAL;',
'  RADIATION.PKG_S18FRM00130.UPDATE_CT_PERFORMANCE(bk_data);',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''CT saved successfully'');',
'  APEX_JSON.CLOSE_OBJECT;',
'exception',
'  when EX then',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => sqlerrm);',
'    APEX_JSON.CLOSE_OBJECT;',
'    RETURN;',
'  when others then',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => sqlerrm);',
'    APEX_JSON.CLOSE_OBJECT;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>147554502234662053
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147555794174662056)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationAccessory'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT                 NUMBER;',
'  L_RAD_ACCESSORIES_TAB RADIATION.PKG_S18FRM00130.RAD_ACCESSORIES_TAB;',
'  L_STATUS              VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'  BEGIN',
'    SELECT :P84_ACC_RADIATION_NO RADIATION_NO,',
'           :P84_ACC_SITE_ID SITE_ID,',
'           :P84_ACC_SRNO SRNO,',
'           :P84_ACC_PHASE_NO PHASE_NO,',
'           :P84_ACC_ACCESSORY_ID ACCESSORY_ID,',
'           NULL DISP_ACCESSORY,',
'           :P84_ACC_REMARKS REMARKS,',
'           (SELECT CASE WHEN AC.OBJECT_CODE IS NOT NULL THEN ''020'' ELSE ''015'' END',
'              FROM RADIATION.ACCESSORIES AC',
'             WHERE AC.ACCESSORY_ID = :P84_ACC_ACCESSORY_ID) STATUS_ID,',
'           NULL STATUS_DESC',
'      BULK COLLECT',
'      INTO L_RAD_ACCESSORIES_TAB',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00130.INSERT_RAD_ACCESSORIES(L_RAD_ACCESSORIES_TAB);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'  ',
'    -- Update',
'    RADIATION.PKG_S18FRM00130.UPDATE_RAD_ACCESSORIES(L_RAD_ACCESSORIES_TAB);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00130.DELETE_RAD_ACCESSORIES(L_RAD_ACCESSORIES_TAB);',
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
,p_internal_uid=>147555794174662056
);
wwv_flow_imp.component_end;
end;
/

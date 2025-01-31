prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_name=>'CT Performance'
,p_alias=>'CT-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'CT Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function editAcc() {',
'    apex.theme.openRegion(''radaccsub'')',
'',
'};',
'',
'',
'function deleteAcc() {',
'',
'    if ($v("P55_STATUS_ID") === "015") {',
'        apex.message.alert("CT is signed, cannot proceed");',
'        return;',
'    }',
'    if ($v("P55_STATUS_ID") === "248") {',
'        apex.message.alert("CT is disposed, cannot proceed");',
'        return;',
'    }',
'',
'    apex.message.confirm(''Please confirm you want to delete Accessory?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationAccessory",',
'                {',
'',
'                    pageItems: ["P55_ACC_ACCESSORY_ID",',
'                        "P55_ACC_REMARKS",',
'                        "P55_ACC_SRNO",',
'                        "P55_ACC_PHASE_NO",',
'                        "P55_ACC_SITE_ID",',
'                        "P55_ACC_RADIATION_NO"',
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
'                            apex.region(''radacc'').refresh();',
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
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P55_SCHEDULE_DATE").hide();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'#report_image_report img{',
'	height: 100px;',
'    width:  100px;',
'',
'}',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'#P55_MRNO  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_PATIENT_NAME_1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_SEX  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_AGE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_RADIATION_NO_2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_RADIATION_DATE_1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_CONSULTANT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_TREATMENT_INTENT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_ANAESTHESIA  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_INSTRUCITON  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_CONTRAST  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_CONTRAST_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_CONTRAST_QTY  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_CONTRAST_UNIT  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_CONTRAST_GIVEN_BY  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_SETUP_POSITION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_NECK_POSITION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_ARM_POSITION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_POSITION_INSTRUCTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_ACC_ACCESSORY_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_ACC_REMARKS  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_PATIENT_TYPE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_PATIENT_MRNO1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_NAME1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_PASSWORD1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_MESSAGE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_PATIENT_TYPE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_PATIENT_MRNO2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_NAME2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P55_PASSWORD2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_MESSAGE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_SCHEDULE_DATE_SHOW  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_SCHEDULE_DATE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_DISP_NAME_SIGN_BY_1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_DISP_NAME_SIGN_BY_2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P55_SIGN_DATE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'.a-GV-pageRange{',
'    display:none;',
'}',
'',
'#CT_HIST .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#RDS .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#CT_PER .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radacc .a-GV-status {',
'',
'    display: none;',
'',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20241021094316'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9834170837995809)
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
 p_id=>wwv_flow_imp.id(10176101445217825)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13099345173799427)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'RDS'
,p_parent_plug_id=>wwv_flow_imp.id(10176101445217825)
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
'WHERE RD.RADIATION_NO = :P55_RADIATION_NO_2',
'AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                   P_SITE_ID             => RD.SITE_ID,',
'                                   P_PERFORMANCE_TYPE_ID => ''003'') = ''Y'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P55_RADIATION_NO_2'
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
 p_id=>wwv_flow_imp.id(10175821597217822)
,p_heading=>'<span style="color: darkblue;"><b>Phase 1</b></span>'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(10175903471217823)
,p_heading=>'<span style="color: darkblue;"><b>Phase 2</b></span>'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(10176013340217824)
,p_heading=>'<span style="color: darkblue;"><b>Phase 3</b></span>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10173751451217801)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10173880454217802)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10173949320217803)
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
 p_id=>wwv_flow_imp.id(10174003217217804)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Planning</b></span>'
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
 p_id=>wwv_flow_imp.id(10174161658217805)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Planning Technique</b></span>'
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
 p_id=>wwv_flow_imp.id(10174296932217806)
,p_name=>'P1 dose Fraction'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(10175821597217822)
,p_use_group_for=>'BOTH'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10174311336217807)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(10175821597217822)
,p_use_group_for=>'BOTH'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10174470611217808)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(10175903471217823)
,p_use_group_for=>'BOTH'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10174596703217809)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(10175903471217823)
,p_use_group_for=>'BOTH'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10174612390217810)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(10176013340217824)
,p_use_group_for=>'BOTH'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10174750882217811)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(10176013340217824)
,p_use_group_for=>'BOTH'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10174897540217812)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br> Later</b></span>'
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
 p_id=>wwv_flow_imp.id(10174921995217813)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10175092592217814)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10175101754217815)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Event</b></span>'
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
 p_id=>wwv_flow_imp.id(10175275902217816)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10175329350217817)
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
 p_id=>wwv_flow_imp.id(10175404626217818)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10175524669217819)
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
 p_id=>wwv_flow_imp.id(10175676215217820)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total <br> Dose (cGy)</b></span>'
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
 p_id=>wwv_flow_imp.id(10175762743217821)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br> Type</b></span>'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8147225328519550)
,p_internal_uid=>8147225328519550
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
 p_id=>wwv_flow_imp.id(10180057573218763)
,p_interactive_grid_id=>wwv_flow_imp.id(8147225328519550)
,p_static_id=>'101801'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10180280970218763)
,p_report_id=>wwv_flow_imp.id(10180057573218763)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10180784133218764)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10173751451217801)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10181694969218766)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10173880454217802)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10182540428218768)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10173949320217803)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>352
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10183482487218770)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10174003217217804)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10184392882218772)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10174161658217805)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10185285855218774)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10174296932217806)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10186150908218776)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10174311336217807)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10187074722218777)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10174470611217808)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10187923554218779)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10174596703217809)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10188885716218781)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10174612390217810)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10189791601218783)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(10174750882217811)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10190600748218785)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(10174897540217812)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10191550640218787)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(10174921995217813)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10192423774218788)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(10175092592217814)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10193332845218790)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(10175101754217815)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10194294020218792)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(10175275902217816)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10195148481218794)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(10175329350217817)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10196034617218796)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(10175404626217818)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10196965364218798)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(10175524669217819)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10197804361218800)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(10175676215217820)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10198748901218801)
,p_view_id=>wwv_flow_imp.id(10180280970218763)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10175762743217821)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10176278337217826)
,p_plug_name=>'CT Performance MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9838141894995849)
,p_plug_name=>'CT Performance'
,p_parent_plug_id=>wwv_flow_imp.id(10176278337217826)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10176345338217827)
,p_plug_name=>'CT_PERFORMANCE_DT'
,p_region_name=>'CT_PER'
,p_parent_plug_id=>wwv_flow_imp.id(9838141894995849)
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
'             NVL(RC.SCHEDULE_SRNO, :P55_SCHEDULE_SRNO) SCHEDULE_SRNO,',
'--   NVL(RC.SCHEDULE_DATE,',
'--      (SELECT S.VISIT_DATE',
'--         FROM RADIATION.SCHEDULE S',
'--        WHERE S.SR_NO = :P55_SCHEDULE_SRNO)) SCHEDULE_DATE,',
'              NVL(TO_CHAR(RC.SCHEDULE_DATE,''DD-MM-RR HH24:MI''),',
'                 (SELECT TO_CHAR(S.VISIT_DATE,''DD-MM-RR HH24:MI'')',
'                    FROM RADIATION.SCHEDULE S',
'                   WHERE S.SR_NO = :P55_SCHEDULE_SRNO)) SCHEDULE_DATE,',
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
'       WHERE RD.RADIATION_NO = :P55_RADIATION_NO_2',
'         AND RD.SITE_ID =:P55_SITE_ID',
'         AND RD.RADIATION_NO = RC.RADIATION_NO(+)',
'         AND RD.SITE_ID = RC.SITE_ID(+)',
'         AND RC.STATUS_ID <> ''248'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P55_RADIATION_NO_2,P55_SITE_ID,P55_SCHEDULE_SRNO'
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
 p_id=>wwv_flow_imp.id(9833939621995807)
,p_heading=>'<span style="color: darkblue;"><b>Fraction</b></span>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10176571037217829)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10176665958217830)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10176716423217831)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10176801487217832)
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
 p_id=>wwv_flow_imp.id(10176984856217833)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10177019247217834)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10177195735217835)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10177228261217836)
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
 p_id=>wwv_flow_imp.id(10177371676217837)
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
 p_id=>wwv_flow_imp.id(10177438237217838)
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
 p_id=>wwv_flow_imp.id(10177577132217839)
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
 p_id=>wwv_flow_imp.id(10177631295217840)
,p_name=>'CT_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CT_SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
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
 p_id=>wwv_flow_imp.id(10177788233217841)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10177837210217842)
,p_name=>'TRANS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<span style="color: darkblue;"><b>Date</b></span>'
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
,p_item_attributes=>'u-bold readonly="readonly;"'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10177922546217843)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10178201557217846)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10178471945217848)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10178563194217849)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10178645301217850)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10248102492435701)
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
 p_id=>wwv_flow_imp.id(10248210550435702)
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
 p_id=>wwv_flow_imp.id(10248429833435704)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
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
 p_id=>wwv_flow_imp.id(10248592010435705)
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
 p_id=>wwv_flow_imp.id(10248626540435706)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10248752388435707)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10248877810435708)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10248909067435709)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10249001579435710)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10249179036435711)
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
 p_id=>wwv_flow_imp.id(10249271082435712)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>From</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(9833939621995807)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(10249395064435713)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>To</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(9833939621995807)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(10251905344435739)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Schedule Srno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'u-bold'
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(10252031260435740)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10252119593435741)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10252238651435742)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29500729549373647)
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
 p_id=>wwv_flow_imp.id(10176428520217828)
,p_internal_uid=>10176428520217828
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
 p_id=>wwv_flow_imp.id(10254620318435975)
,p_interactive_grid_id=>wwv_flow_imp.id(10176428520217828)
,p_static_id=>'102547'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10254837357435975)
,p_report_id=>wwv_flow_imp.id(10254620318435975)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10255335563435976)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10176571037217829)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10256230422435978)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10176665958217830)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10257141120435979)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10176716423217831)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10258041854435981)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10176801487217832)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10258933435435983)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10176984856217833)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10259895952435985)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10177019247217834)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10260753537435987)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10177195735217835)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10261602651435989)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10177228261217836)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10262597416435990)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10177371676217837)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10263405451435992)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10177438237217838)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10264399852435994)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10177577132217839)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10265219206435996)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(10177631295217840)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10266148747435997)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(10177788233217841)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10267066093435999)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(10177837210217842)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10267902479436001)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(10177922546217843)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10270652917436008)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(10178201557217846)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10272480617436011)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(10178471945217848)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10273378596436013)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(10178563194217849)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10274145738436015)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(10178645301217850)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10275000605436017)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(10248102492435701)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10275937462436018)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(10248210550435702)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10277736663436022)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(10248429833435704)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10278615406436024)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(10248592010435705)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10279552059436025)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(10248626540435706)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10280482309436027)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(10248752388435707)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10281376674436029)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(10248877810435708)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10282211801436031)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(10248909067435709)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10283163854436033)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(10249001579435710)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10284022516436035)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(10249179036435711)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10284927157436037)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(10249271082435712)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10285848136436039)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(10249395064435713)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10353893110533869)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(10251905344435739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10354732680533871)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(10252031260435740)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10355692362533873)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(10252119593435741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10356513817533875)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(10252238651435742)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30144677658284035)
,p_view_id=>wwv_flow_imp.id(10254837357435975)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(29500729549373647)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10249763406435717)
,p_plug_name=>'Patient Preparation'
,p_parent_plug_id=>wwv_flow_imp.id(10176278337217826)
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
 p_id=>wwv_flow_imp.id(10249864343435718)
,p_plug_name=>'Patient_preparation_dt'
,p_parent_plug_id=>wwv_flow_imp.id(10249763406435717)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10249970659435719)
,p_plug_name=>'Contrast'
,p_parent_plug_id=>wwv_flow_imp.id(10176278337217826)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9833829438995806)
,p_plug_name=>'contrast_dt'
,p_parent_plug_id=>wwv_flow_imp.id(10249970659435719)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10250024315435720)
,p_plug_name=>'Position'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>80
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9834087243995808)
,p_plug_name=>'PositionDT'
,p_parent_plug_id=>wwv_flow_imp.id(10250024315435720)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10250111974435721)
,p_plug_name=>'Accessories'
,p_region_name=>'ACS_MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>90
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31363439395760105)
,p_plug_name=>'Accessories'
,p_region_name=>'radacc'
,p_parent_plug_id=>wwv_flow_imp.id(10250111974435721)
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
' WHERE RA.RADIATION_NO = :P55_RADIATION_NO_2',
'   AND RA.SITE_ID = :P55_SITE_ID',
'   AND RA.TRANS_TYPE = ''CT''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P55_RADIATION_NO_2,P55_SITE_ID'
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
 p_id=>wwv_flow_imp.id(31363745005760108)
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
 p_id=>wwv_flow_imp.id(31363805249760109)
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
 p_id=>wwv_flow_imp.id(31363904336760110)
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
 p_id=>wwv_flow_imp.id(31364094013760111)
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
 p_id=>wwv_flow_imp.id(31364112148760112)
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
 p_id=>wwv_flow_imp.id(31364283978760113)
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
 p_id=>wwv_flow_imp.id(31364345666760114)
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
 p_id=>wwv_flow_imp.id(31364498388760115)
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
 p_id=>wwv_flow_imp.id(31364511322760116)
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
 p_id=>wwv_flow_imp.id(31364635424760117)
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
 p_id=>wwv_flow_imp.id(31364700099760118)
,p_name=>'RAD_ACCESSORY_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Update'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:editAcc();javascript:$s(''P55_ACC_REMARKS'', ''&REMARKS.'');javascript:$s(''P55_ACC_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P55_ACC_SITE_ID'', ''&SITE_ID.'');javascript:$s(''P55_ACC_PHASE_NO'', ''&PHASE_NO.'');javascript:$s(''P55_ACC_SRNO'', ''&S'
||'RNO.'');javascript:$s(''P55_RAD_ACC_DML_STATUS'', ''UPDATE'');'
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
 p_id=>wwv_flow_imp.id(31364827218760119)
,p_name=>'RAD_ACCESSORY_DELETE '
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:deleteAcc();javascript:$s(''P55_ACC_REMARKS'', ''&REMARKS.'');javascript:$s(''P55_ACC_RADIATION_NO'', ''&RADIATION_NO.'');javascript:$s(''P55_ACC_SITE_ID'', ''&SITE_ID.'');javascript:$s(''P55_ACC_PHASE_NO'', ''&PHASE_NO.'');javascript:$s(''P55_ACC_SRNO'', '''
||'&SRNO.'');javascript:$s(''P55_RAD_ACC_DML_STATUS'', ''DELETE'');'
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
 p_id=>wwv_flow_imp.id(31364955921760120)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(31363563640760106)
,p_internal_uid=>31363563640760106
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
'',
'',
'    config.initActions = function (actions) {',
'        actions.add({',
'            name: "addAccessory",',
'            action: function () {',
'                apex.item("P55_ACC_RADIATION_NO").setValue($v("P55_RADIATION_NO_2"));',
'                apex.item("P55_ACC_SITE_ID").setValue($v("P55_SITE_ID"));',
'                apex.item("P55_ACC_ACCESSORY_ID").setValue('''');',
'                apex.item("P55_ACC_REMARKS").setValue('''');',
'                apex.item("P55_ACC_SRNO").setValue('''');',
'                apex.item("P55_ACC_PHASE_NO").setValue('''');',
'                apex.item("P55_RAD_ACC_DML_STATUS").setValue(''CREATE'');',
'',
'',
'                if ($v("P55_STATUS_ID") === "015") {',
'                    apex.item("saveradiationaccessory").disable();',
'                }',
'                else if ($v("P55_STATUS_ID") === "248") {',
'                    apex.item("saveradiationaccessory").disable();',
'                }',
'',
'',
'                apex.theme.openRegion(''radaccsub'');',
'            }',
'        });',
'    };',
'    config.toolbarData = toolbarData;',
'    // Return the options',
'    return config;',
'',
'',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(31391989402942185)
,p_interactive_grid_id=>wwv_flow_imp.id(31363563640760106)
,p_static_id=>'313920'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31392140209942185)
,p_report_id=>wwv_flow_imp.id(31391989402942185)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31392650639942186)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31363745005760108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31393551553942189)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31363805249760109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31394481032942191)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31363904336760110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31395325939942193)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31364094013760111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31396226134942196)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31364112148760112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31397187261942198)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(31364283978760113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>364.438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31398024107942200)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(31364345666760114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>281.438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31398949577942203)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(31364498388760115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31399863819942205)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(31364511322760116)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31400748834942208)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(31364635424760117)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31401664883942211)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31364700099760118)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.43799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31402564216942213)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(31364827218760119)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.43799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31446690739456520)
,p_view_id=>wwv_flow_imp.id(31392140209942185)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(31364955921760120)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63.80199999999999
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31365090416760121)
,p_plug_name=>'Radiotherapy Accessory'
,p_region_name=>'radaccsub'
,p_parent_plug_id=>wwv_flow_imp.id(31363439395760105)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10506909773654311)
,p_plug_name=>'CT Performance History'
,p_region_name=>'CT_HIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>9999
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
'             RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_TREATMENT_INTENT',
'',
'          ',
'FROM RADIATION.RADIATION_MASTER M',
'WHERE M.RADIATION_NO = NVL(:P55_RADIATION_NO_2, ''~'')',
'AND M.MRNO =:P55_MRNO',
'AND M.RADIOTHERAPY_TYPE = ''T''',
'AND M.STATUS_REQUEST = ''015''',
'AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'--ORDER BY RADIATION_DATE DESC',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P55_SCHEDULE_SRNO,P55_MRNO'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CT Performance History'
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
 p_id=>wwv_flow_imp.id(10508420380654326)
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
 p_id=>wwv_flow_imp.id(10508593647654327)
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
 p_id=>wwv_flow_imp.id(10508634508654328)
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
 p_id=>wwv_flow_imp.id(10508708760654329)
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
 p_id=>wwv_flow_imp.id(10508836755654330)
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
 p_id=>wwv_flow_imp.id(10508939044654331)
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
 p_id=>wwv_flow_imp.id(10509030062654332)
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
 p_id=>wwv_flow_imp.id(10509185271654333)
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
 p_id=>wwv_flow_imp.id(10509277434654334)
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
 p_id=>wwv_flow_imp.id(10508337524654325)
,p_internal_uid=>10508337524654325
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
 p_id=>wwv_flow_imp.id(11394536871949699)
,p_interactive_grid_id=>wwv_flow_imp.id(10508337524654325)
,p_static_id=>'113946'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(11394796896949699)
,p_report_id=>wwv_flow_imp.id(11394536871949699)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11395276169949701)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10508420380654326)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.6719
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11396184975949703)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10508593647654327)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397093212949705)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10508634508654328)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397954394949708)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10508708760654329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11398818079949710)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10508836755654330)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11399759143949712)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10508939044654331)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11400689490949714)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10509030062654332)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11401489108949716)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10509185271654333)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11402310140949719)
,p_view_id=>wwv_flow_imp.id(11394796896949699)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10509277434654334)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14002837336128754)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>160
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17196591767350376)
,p_plug_name=>'CT Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(43623566993869712)
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
'WHERE MRNO = :P55_MRNO;',
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
 p_id=>wwv_flow_imp.id(9806508933646253)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9806990098646253)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9807394870646253)
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
 p_id=>wwv_flow_imp.id(142430185732854846)
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
 p_id=>wwv_flow_imp.id(142431757284854861)
,p_plug_name=>'First Technician'
,p_parent_plug_id=>wwv_flow_imp.id(142430185732854846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142431864376854862)
,p_plug_name=>'Second Technician'
,p_parent_plug_id=>wwv_flow_imp.id(142430185732854846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9808805634646254)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(142431757284854861)
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
 p_id=>wwv_flow_imp.id(9811742120646256)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(142431864376854862)
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
 p_id=>wwv_flow_imp.id(9792562084646245)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
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
 p_id=>wwv_flow_imp.id(9792984693646245)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
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
 p_id=>wwv_flow_imp.id(9793324845646245)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
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
 p_id=>wwv_flow_imp.id(9793773983646246)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
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
 p_id=>wwv_flow_imp.id(31365814539760129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31365090416760121)
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
 p_id=>wwv_flow_imp.id(9794168641646246)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
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
 p_id=>wwv_flow_imp.id(9794580975646246)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
,p_button_name=>'Dispose'
,p_button_static_id=>'dis_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_button_position=>'DELETE'
,p_confirm_message=>'<b>Are you sure, you want to dispose this CT Sheet?</b>'
,p_icon_css_classes=>'fa-remove'
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
 p_id=>wwv_flow_imp.id(9837880925995846)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(14002837336128754)
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
 p_id=>wwv_flow_imp.id(31365912493760130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31365090416760121)
,p_button_name=>'ExitRadAcc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9833437745995802)
,p_name=>'P55_SETUP_POSITION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9834087243995808)
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
 p_id=>wwv_flow_imp.id(9833570709995803)
,p_name=>'P55_NECK_POSITION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9834087243995808)
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
 p_id=>wwv_flow_imp.id(9833675288995804)
,p_name=>'P55_ARM_POSITION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9834087243995808)
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
 p_id=>wwv_flow_imp.id(9833731119995805)
,p_name=>'P55_POSITION_INSTRUCTION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9834087243995808)
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
 p_id=>wwv_flow_imp.id(9834214224995810)
,p_name=>'P55_SCHEDULE_DATE_SHOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Appointment:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
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
 p_id=>wwv_flow_imp.id(9834337934995811)
,p_name=>'P55_DISP_NAME_SIGN_BY_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">First Technologist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9834490687995812)
,p_name=>'P55_DISP_NAME_SIGN_BY_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Second Technologist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9834587322995813)
,p_name=>'P55_SIGN_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9834920337995817)
,p_name=>'P55_SC_SRNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835007071995818)
,p_name=>'P55_PERFORMANCE_TYPE_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835281652995820)
,p_name=>'P55_SETUP_POSITION_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835383861995821)
,p_name=>'P55_SIM_CT_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835459186995822)
,p_name=>'P55_DIPS_SIM_CT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835500555995823)
,p_name=>'P55_ARM_POSITION_DESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835658517995824)
,p_name=>'P55_NECK_POSITION_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835764946995825)
,p_name=>'P55_CT_SRNO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835819113995826)
,p_name=>'P55_PHASE_NO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9835988321995827)
,p_name=>'P55_TRANS_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836063506995828)
,p_name=>'P55_OC_SERIAL_NO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836191919995829)
,p_name=>'P55_PERFORMANCE_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836228688995830)
,p_name=>'P55_STATUS_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836329010995831)
,p_name=>'P55_SIGN_BY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836404221995832)
,p_name=>'P55_SIGN_BY_2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836589845995833)
,p_name=>'P55_STATUS_DESC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836669194995834)
,p_name=>'P55_CONTRAST_DESC'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836798356995835)
,p_name=>'P55_CONTRAST_UNIT_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836848746995836)
,p_name=>'P55_CONTRAST_GIVEN_NAME'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9836947344995837)
,p_name=>'P55_FROM_FRACTION_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9837050568995838)
,p_name=>'P55_TO_FRACTION_ID'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9838244037995850)
,p_name=>'P55_SCHEDULE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9834170837995809)
,p_prompt=>'Appointment'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'APPOINTMENTLOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(RS.VISIT_DATE,''DD-MM-RR HH24:MI'') VISIT_DATE,TO_CHAR(RS.VISIT_DATE,''DD-MM-RR HH24:MI'') APP_TIME, RS.SR_NO',
'  FROM RADIATION.SCHEDULE RS, RADIATION.MACHINES M',
' WHERE RS.MACHINE_ID = M.MACHINE_ID',
'   AND RS.RADIATION_NO = :P55_RADIATION_NO_2',
'   AND M.PERFORMANCE_TYPE_ID = :P55_PERFORMANCE_TYPE_ID',
' ORDER BY RS.VISIT_DATE'))
,p_cSize=>100
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
,p_attribute_10=>'SR_NO:P55_SCHEDULE_SRNO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10252356339435743)
,p_name=>'P55_SCHEDULE_SRNO'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10252674629435746)
,p_name=>'P55_CONTRAST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9833829438995806)
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
 p_id=>wwv_flow_imp.id(10252780993435747)
,p_name=>'P55_CONTRAST_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9833829438995806)
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
 p_id=>wwv_flow_imp.id(10252864749435748)
,p_name=>'P55_CONTRAST_QTY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9833829438995806)
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
 p_id=>wwv_flow_imp.id(10252984804435749)
,p_name=>'P55_CONTRAST_UNIT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9833829438995806)
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
 p_id=>wwv_flow_imp.id(10253067355435750)
,p_name=>'P55_CONTRAST_GIVEN_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9833829438995806)
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
 p_id=>wwv_flow_imp.id(13144096368799464)
,p_name=>'P55_DOCTOR_ID'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13163246394543493)
,p_name=>'P55_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14054988254128768)
,p_name=>'P55_DISP_MRNO1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14057822144128768)
,p_name=>'P55_DISP_MRNO2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21828232503557579)
,p_name=>'P55_SCHEDULE_EVENT_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21828306982557580)
,p_name=>'P55_ALERT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31365172883760122)
,p_name=>'P55_ACC_ACCESSORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
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
 p_id=>wwv_flow_imp.id(31365298573760123)
,p_name=>'P55_ACC_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
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
 p_id=>wwv_flow_imp.id(31365406728760125)
,p_name=>'P55_ACC_SRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31365575595760126)
,p_name=>'P55_ACC_PHASE_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31365647571760127)
,p_name=>'P55_ACC_SITE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31365706035760128)
,p_name=>'P55_ACC_RADIATION_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31366293350760133)
,p_name=>'P55_RAD_ACC_DML_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31365090416760121)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41155258924654183)
,p_name=>'P55_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155335868654184)
,p_name=>'P55_PATIENT_NAME_1'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155486822654185)
,p_name=>'P55_SEX'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155560668654186)
,p_name=>'P55_AGE'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155701939654187)
,p_name=>'P55_UNIT'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155820626654188)
,p_name=>'P55_SERVICE_NO'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155873069654189)
,p_name=>'P55_SERVICE_STATUS'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41155984568654190)
,p_name=>'P55_RANK'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41156046860654191)
,p_name=>'P55_FORMATION'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41156132324654192)
,p_name=>'P55_RADIATION_NO_2'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41156229514654193)
,p_name=>'P55_RADIATION_DATE_1'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41156401006654194)
,p_name=>'P55_CONSULTANT'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41156461457654195)
,p_name=>'P55_TREATMENT_INTENT'
,p_item_sequence=>1139
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
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
 p_id=>wwv_flow_imp.id(41156526466654196)
,p_name=>'P55_SITE_DISP'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41156628379654197)
,p_name=>'P55_STATUS'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41156804077654198)
,p_name=>'P55_SITE_ID'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48183655817833221)
,p_name=>'P55_ANAESTHESIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10249864343435718)
,p_item_default=>'N'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style=''margin-top:1.25em;margin-right:2.25em;'' ><b><p style="color:#00008B">Anesthesia</span></p></b>',
'',
''))
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'is-readonly'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-left-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48183973066833224)
,p_name=>'P55_INSTRUCITON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10249864343435718)
,p_prompt=>'<b><p style="color:#00008B">Instructions</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140708891500856610)
,p_name=>'P55_TXT_URL'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140710063350856622)
,p_name=>'P55_ERROR_MESSAGE'
,p_item_sequence=>1189
,p_item_plug_id=>wwv_flow_imp.id(17196591767350376)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140712690233856648)
,p_name=>'P55_SIGNED'
,p_item_sequence=>180
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142490721007854903)
,p_name=>'P55_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142490849227854904)
,p_name=>'P55_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
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
 p_id=>wwv_flow_imp.id(142490923732854905)
,p_name=>'P55_PATIENT_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
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
 p_id=>wwv_flow_imp.id(142491069671854906)
,p_name=>'P55_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
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
 p_id=>wwv_flow_imp.id(142491130764854907)
,p_name=>'P55_PASSWORD1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142491302001854908)
,p_name=>'P55_MESSAGE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(142431757284854861)
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
 p_id=>wwv_flow_imp.id(142499380704854918)
,p_name=>'P55_MRNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142499473654854919)
,p_name=>'P55_PATIENT_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
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
 p_id=>wwv_flow_imp.id(142499539968854920)
,p_name=>'P55_PATIENT_MRNO2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
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
 p_id=>wwv_flow_imp.id(142499619692854921)
,p_name=>'P55_NAME2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
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
 p_id=>wwv_flow_imp.id(142499776734854922)
,p_name=>'P55_PASSWORD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142499917444854923)
,p_name=>'P55_MESSAGE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(142431864376854862)
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
 p_id=>wwv_flow_imp.id(147333651524371511)
,p_name=>'P55_SUCCESS_MESSAGE'
,p_item_sequence=>190
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(323854959436431484)
,p_name=>'P55_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142430185732854846)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9827967854646264)
,p_name=>'ReturnToDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9811742120646256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9828464116646264)
,p_event_id=>wwv_flow_imp.id(9827967854646264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142430185732854846)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9828865211646264)
,p_name=>'sign_btn'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9808805634646254)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140712814966856650)
,p_event_id=>wwv_flow_imp.id(9828865211646264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'USERPASSWORD   VARCHAR2(25) := :p55_PASSWORD1;',
'USERPASSWORD2  VARCHAR2(25) := :p55_PASSWORD2;',
'CURRENTCHAR    NUMBER(4);',
'NEWPASSWORD    SECURITY.USERS.PASSWORD%TYPE := '' '';',
'NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'SAVEDPASSWORD  SECURITY.USERS.PASSWORD%TYPE;',
'SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'V_PW_FLAG      SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'LOGIN          NUMBER;',
'',
'BEGIN',
':p55_MESSAGE1 := NULL;',
':p55_MESSAGE2 := NULL;',
'IF :p55_PATIENT_MRNO1 IS NULL THEN',
':p55_MESSAGE1 := ''Please enter First Technologist Employee Code'';',
'RETURN;',
'ELSIF :p55_PATIENT_MRNO2 IS NULL THEN',
':p55_MESSAGE2 := ''Please enter Second Technologist Employee Code'';',
'RETURN;',
'ELSIF :p55_PASSWORD1 IS NULL THEN',
':p55_MESSAGE1 := ''Please enter Fisrt Technologist Password'';',
'RETURN;',
'ELSIF :p55_PASSWORD2 IS NULL THEN',
':p55_MESSAGE2 := ''Please enter Second Technologist Password'';',
'RETURN;',
'ELSE',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p55_DISP_MRNO1',
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
'WHERE MRNO = :p55_DISP_MRNO2',
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
':p55_MESSAGE1 := ''Incorrect Password'';',
'RETURN;',
'ELSIF NEWPASSWORD2 <> SAVEDPASSWORD2 THEN',
':p55_MESSAGE2 := ''Incorrect Password'';',
'RETURN;',
'ELSE',
'',
'--END IF;',
'',
'--IF F_IS_AUTHORIZED(:p55_MRNO1, :p55_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:p55_MRNO2, :p55_PASSWORD2, ''2'') THEN',
'',
'DECLARE',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00130.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                              P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                              P_RADIATION_NO      => :p55_RADIATION_NO_2,',
'                                              P_SITE_ID           => :p55_SITE_ID,',
'                                              P_CT_SRNO           => :p55_CT_SRNO,',
'                                              P_SCHEDULE_SRNO     => :p55_SCHEDULE_SRNO,',
'                                              P_SCHEDULE_EVENT_ID => :p55_SCHEDULE_EVENT_ID,',
'                                              P_USER_MRNO         => :Gv_USER_MRNO,',
'                                              P_FIRST_TECH        => :p55_DISP_MRNO1,',
'                                              P_SECOND_TECH       => :p55_DISP_MRNO2,',
'                                              P_OBJECT_CODE       => ''S18APX00048'',',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                              P_STOP              => V_STOP);',
'',
'IF NVL(V_stop, ''N'') = ''Y'' THEN',
'  :p55_MESSAGE1 := V_alert_text;',
'  RETURN;',
'ELSE',
'  :p55_MESSAGE1 := ''Record SIGNED Properly ...'';',
'  :P55_SIGNED   := ''Y'';',
'END IF;',
'END;',
'END IF;',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_attribute_02=>'P55_PASSWORD1,P55_PASSWORD2,P55_PATIENT_MRNO1,P55_PATIENT_MRNO2,P55_SCHEDULE_EVENT_ID,P55_DISP_MRNO1,P55_DISP_MRNO2,P55_SITE_ID,P55_CT_SRNO'
,p_attribute_03=>'P55_MESSAGE1,P55_MESSAGE2,P55_SIGNED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147332686468371501)
,p_event_id=>wwv_flow_imp.id(9828865211646264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C.STATUS_ID',
'    INTO :P55_STATUS_ID',
'    FROM RADIATION.RAD_CT_PERFORMANCE C',
'   WHERE C.RADIATION_NO = :P55_RADIATION_NO_2',
'     AND C.SITE_ID = :P55_SITE_ID',
'     AND C.CT_SRNO = :P55_CT_SRNO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P55_RADIATION_NO_2,P55_SITE_ID,P55_CT_SRNO'
,p_attribute_03=>'P55_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140709993183856621)
,p_event_id=>wwv_flow_imp.id(9828865211646264)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10176345338217827)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147332791552371502)
,p_event_id=>wwv_flow_imp.id(9828865211646264)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9830242020646265)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_DISP_MRNO1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9830728302646265)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P55_DISP_MRNO1 IS NOT NULL THEN',
'    :P55_PATIENT_TYPE1 := substr(:P55_DISP_MRNO1, 1, 6);',
'    :P55_PATIENT_MRNO1 := LTRIM(SUBSTR(:P55_DISP_MRNO1, 7), ''0'');',
'    :P55_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P55_DISP_MRNO1);',
'--  END IF;',
'END;',
'-- BEGIN',
'--   IF :P55_DISP_MRNO2 IS NOT NULL THEN',
'--     :P55_PATIENT_TYPE2 := substr(:P55_DISP_MRNO2, 1, 6);',
'--     :P55_PATIENT_MRNO2 := LTRIM(SUBSTR(:P55_DISP_MRNO2, 7), ''0'');',
'--     :P55_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P55_DISP_MRNO2);',
'--   END IF;',
'-- END;',
'',
''))
,p_attribute_02=>'P55_DISP_MRNO1'
,p_attribute_03=>'P55_PATIENT_TYPE1,P55_PATIENT_MRNO1,P55_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9831205177646265)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_PASSWORD1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9831760507646265)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_PATIENT_TYPE1 IS NOT NULL AND :P55_PATIENT_MRNO1 IS NOT NULL THEN',
':P55_DISP_MRNO1 := :P55_PATIENT_TYPE1 ||LPAD(:P55_PATIENT_MRNO1, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P55_DISP_MRNO1,P55_PATIENT_TYPE1,P55_PATIENT_MRNO1'
,p_attribute_03=>'P55_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9832288008646265)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P55_ERROR := NULL;',
'  IF :P55_PATIENT_MRNO1 IS NOT NULL THEN',
'    :P55_DISP_MRNO1 := :P55_PATIENT_TYPE1 || LPAD(:P55_PATIENT_MRNO1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P55_DISP_MRNO1), ''N'') = ''N'' THEN',
'      :P55_ERROR        := ''This is not an active employee.'';',
'      :P55_PATIENT_MRNO1 := NULL;',
'      :P55_DISP_MRNO1    := NULL;',
'      :P55_NAME1        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P55_NAME1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P55_DISP_MRNO1',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P55_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P55_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P55_ERROR_MESSAGE,P55_PATIENT_MRNO1,P55_PATIENT_TYPE1,P55_DISP_MRNO1,P55_NAME1'
,p_attribute_03=>'P55_ERROR_MESSAGE,P55_PATIENT_MRNO1,P55_PATIENT_TYPE1,P55_DISP_MRNO1,P55_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9832779042646265)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P55_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P55_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9833258750646266)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P55_NAME1:= his.pkg_patient.GET_PATIENT_NAME(:P55_DISP_MRNO1);'
,p_attribute_02=>'P55_DISP_MRNO1'
,p_attribute_03=>'P55_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P55_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9833718722646266)
,p_event_id=>wwv_flow_imp.id(9830242020646265)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_NAME1'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P55_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9834102590646266)
,p_name=>'Get-Patient-Code_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_PATIENT_MRNO2'
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
 p_id=>wwv_flow_imp.id(9834670432646266)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P55_ERROR := NULL;',
'  IF :P55_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P55_DISP_MRNO2 := :P55_PATIENT_TYPE2 || LPAD(:P55_PATIENT_MRNO2, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P55_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P55_ERROR        := ''This is not an active employee.'';',
'      :P55_PATIENT_MRNO2 := NULL;',
'      :P55_DISP_MRNO2    := NULL;',
'      :P55_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P55_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P55_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P55_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P55_ERROR_MESSAGE,P55_PATIENT_MRNO2,P55_PATIENT_TYPE2,P55_DISP_MRNO2,P55_NAME2'
,p_attribute_03=>'P55_ERROR_MESSAGE,P55_PATIENT_MRNO2,P55_PATIENT_TYPE2,P55_DISP_MRNO2,P55_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9835119700646266)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P55_DISP_MRNO2 IS NOT NULL THEN',
'    :P55_PATIENT_TYPE2 := substr(:P55_DISP_MRNO2, 1, 6);',
'    :P55_PATIENT_MRNO2 := LTRIM(SUBSTR(:P55_DISP_MRNO2, 7), ''0'');',
'    :P55_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P55_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P55_DISP_MRNO2'
,p_attribute_03=>'P55_PATIENT_TYPE2,P55_PATIENT_MRNO2,P55_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9835647100646267)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9836153151646267)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P55_PATIENT_TYPE2 IS NOT NULL AND :P55_PATIENT_MRNO2 IS NOT NULL THEN',
':P55_DISP_MRNO2 := :P55_PATIENT_TYPE2 ||LPAD(:P55_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P55_DISP_MRNO1,P55_PATIENT_TYPE1,P55_PATIENT_MRNO1'
,p_attribute_03=>'P55_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9836626861646267)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P55_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P55_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9837149445646267)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P55_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P55_DISP_MRNO2);'
,p_attribute_02=>'P55_DISP_MRNO2'
,p_attribute_03=>'P55_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P55_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9837658630646267)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P55_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55369809596424803)
,p_event_id=>wwv_flow_imp.id(9834102590646266)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P55_PASSWORD2'').setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9838059698646267)
,p_name=>'ClearItems'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9838517382646268)
,p_event_id=>wwv_flow_imp.id(9838059698646267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_MESSAGE1,P55_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10508244212654324)
,p_event_id=>wwv_flow_imp.id(9838059698646267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P55_UNIT").hide();',
'apex.item("P55_SERVICE_NO").hide();',
'apex.item("P55_SERVICE_STATUS").hide();',
'apex.item("P55_RANK").hide();',
'apex.item("P55_FORMATION").hide();',
'apex.item("P55_NAME2").disable();',
'apex.item("P55_NAME1").disable();',
'//apex.item("P55_ANAESTHESIA").disable();',
'apex.item("P55_INSTRUCITON").disable();',
'apex.item("P55_SCHEDULE_DATE_SHOW").disable();',
'',
'apex.item("P55_CONTRAST").setValue('''');',
'apex.item("P55_CONTRAST_GIVEN_BY").setValue('''');',
'apex.item("P55_CONTRAST_QTY").setValue('''');',
'apex.item("P55_CONTRAST_UNIT").setValue('''');',
'apex.item("P55_CONTRAST_GIVEN_NAME").setValue('''');',
'apex.item("P55_CONTRAST_ID").setValue('''');',
'apex.item("P55_NECK_POSITION").setValue('''');',
'apex.item("P55_ARM_POSITION").setValue('''');',
'apex.item("P55_POSITION_INSTRUCTION").setValue('''');',
'apex.item("P55_SETUP_POSITION").setValue('''');',
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
 p_id=>wwv_flow_imp.id(38983167927179916)
,p_event_id=>wwv_flow_imp.id(9838059698646267)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P55_MRNO          := :LV_PATIENT_MRNO;',
'  :P55_SCHEDULE_SRNO := :LV_SR_NO;',
'END;',
''))
,p_attribute_02=>'LV_PATIENT_MRNO,LV_SR_NO'
,p_attribute_03=>'P55_MRNO,P55_SCHEDULE_SRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9839449191646268)
,p_name=>'close_dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9793773983646246)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140710515656856627)
,p_event_id=>wwv_flow_imp.id(9839449191646268)
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
 p_id=>wwv_flow_imp.id(9839912576646268)
,p_event_id=>wwv_flow_imp.id(9839449191646268)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9840342353646268)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9840848980646268)
,p_event_id=>wwv_flow_imp.id(9840342353646268)
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
'if ($v("P55_STATUS_ID")==''015'')',
'{',
'    apex.item("P55_CONTRAST").disable();',
'    apex.item("P55_CONTRAST_GIVEN_BY").disable();',
'    apex.item("P55_CONTRAST_ID").disable();',
'    apex.item("P55_CONTRAST_QTY").disable();',
'    apex.item("P55_CONTRAST_UNIT").disable();',
'    apex.item("P55_SETUP_POSITION").disable();',
'    apex.item("P55_NECK_POSITION").disable();',
'    apex.item("P55_ARM_POSITION").disable();',
'    apex.item("P55_POSITION_INSTRUCTION").disable();',
'',
'    apex.item("sign_btn").disable();',
'    apex.item("save_btn").disable();',
'    //apex.region("ACS").call("getActions").set("edit", false);',
'    }',
'    else{',
'    apex.item("sign_btn").enable();',
'    apex.item("save_btn").enable();',
'    apex.item("P55_CONTRAST").enable();',
'    apex.item("P55_CONTRAST_GIVEN_BY").enable();',
'    apex.item("P55_CONTRAST_ID").enable();',
'    apex.item("P55_CONTRAST_QTY").enable();',
'    apex.item("P55_CONTRAST_UNIT").enable();',
'    apex.item("P55_SETUP_POSITION").enable();',
'    apex.item("P55_NECK_POSITION").enable();',
'    apex.item("P55_ARM_POSITION").enable();',
'    apex.item("P55_POSITION_INSTRUCTION").enable();',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9842187078646269)
,p_name=>'Sign_btn_OpenRG'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9792984693646245)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9842620541646269)
,p_event_id=>wwv_flow_imp.id(9842187078646269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P55_MRNO1         := :GV_USER_MRNO;',
'    :P55_PATIENT_TYPE1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P55_PATIENT_TYPE2:= SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P55_PATIENT_MRNO1    := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'   -- :P55_PATIENT_MRNO1    := LPAD(:P55_PATIENT_MRNO1, 8, ''0'');',
'    :P55_DISP_MRNO1 := (:P55_PATIENT_TYPE1 ||LPAD(:P55_PATIENT_MRNO1, 8, ''0''));',
'    :P55_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P55_DISP_MRNO1);',
'    :P55_DISP_MRNO2:=null;',
'  END;',
'',
''))
,p_attribute_02=>'P55_MRNO1,P55_DISP_MRNO1,P55_NAME1,P55_PATIENT_MRNO1'
,p_attribute_03=>'P55_MRNO1,P55_PATIENT_TYPE1,P55_PATIENT_TYPE2,P55_DISP_MRNO1,P55_DISP_MRNO2,P55_NAME1,P55_PATIENT_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509813501654340)
,p_event_id=>wwv_flow_imp.id(9842187078646269)
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
'  INTO :P55_SITE_ID,',
'       :P55_SCHEDULE_EVENT_ID',
'       --,       :P38_ND_SITE_ID',
'  FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'WHERE SW.SR_NO = S.SR_NO',
'   AND S.SR_NO = :P55_SCHEDULE_SRNO',
'   AND S.WFE_NO = SW.WFE_NO;',
'',
'EXCEPTION WHEN  NO_DATA_FOUND THEN NULL;',
'END;',
''))
,p_attribute_02=>'P55_SCHEDULE_SRNO'
,p_attribute_03=>'P55_SITE_ID,P55_SCHEDULE_EVENT_ID'
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
 p_id=>wwv_flow_imp.id(9843119363646269)
,p_event_id=>wwv_flow_imp.id(9842187078646269)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P55_ERROR_MESSAGE").setValue('''');',
'apex.item("P55_SUCCESS_MESSAGE").setValue('''');',
'',
'apex.theme.openRegion("sign_rg");',
'apex.item("P55_PASSWORD1").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48184069588833225)
,p_name=>'CTPerformanceChangeDA'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10176345338217827)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48184115091833226)
,p_event_id=>wwv_flow_imp.id(48184069588833225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    try{',
'    apex.item("P55_CONTRAST").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST"));',
'    apex.item("P55_CONTRAST_ID").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_ID"));',
'    apex.item("P55_CONTRAST_QTY").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_QTY"));',
'    apex.item("P55_CONTRAST_UNIT").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_UNIT"));',
'    apex.item("P55_CONTRAST_GIVEN_BY").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_GIVEN_BY"));',
'    apex.item("P55_SETUP_POSITION").setValue(model.getValue(this.data.selectedRecords[i], "SETUP_POSITION"));',
'    apex.item("P55_NECK_POSITION").setValue(model.getValue(this.data.selectedRecords[i], "NECK_POSITION"));',
'    apex.item("P55_ARM_POSITION").setValue(model.getValue(this.data.selectedRecords[i], "ARM_POSITION"));',
'    apex.item("P55_POSITION_INSTRUCTION").setValue(model.getValue(this.data.selectedRecords[i], "POSITION_INSTRUCTION"));',
'    apex.item("P55_SCHEDULE_DATE").setValue(model.getValue(this.data.selectedRecords[i], "SCHEDULE_DATE"));',
'    apex.item("P55_DISP_NAME_SIGN_BY_1").setValue(model.getValue(this.data.selectedRecords[i], "DISP_NAME_SIGN_BY_1"));',
'    apex.item("P55_DISP_NAME_SIGN_BY_2").setValue(model.getValue(this.data.selectedRecords[i], "DISP_NAME_SIGN_BY_2"));',
'    apex.item("P55_SIGN_DATE").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_DATE"));',
'    apex.item("P55_CT_SRNO").setValue(model.getValue(this.data.selectedRecords[i], "CT_SRNO"));',
'    apex.item("P55_STATUS_ID").setValue(model.getValue(this.data.selectedRecords[i], "STATUS_ID"));',
'    apex.item("P55_SCHEDULE_DATE_SHOW").setValue(model.getValue(this.data.selectedRecords[i], "SCHEDULE_DATE"));',
'    apex.item("P55_CONTRAST_UNIT").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_UNIT"));',
'    apex.item("P55_CONTRAST_UNIT_ID").setValue(model.getValue(this.data.selectedRecords[i], "CONTRAST_UNIT_ID"));',
'',
'     } catch {',
'   ',
'alert(''exception'')',
'     }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38983240786179917)
,p_event_id=>wwv_flow_imp.id(48184069588833225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31363439395760105)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10252478988435744)
,p_name=>'RadiationDetailDAChange'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13099345173799427)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10252509506435745)
,p_event_id=>wwv_flow_imp.id(10252478988435744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P55_ANAESTHESIA").setValue(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P55_INSTRUCITON").setValue(model.getValue(this.data.selectedRecords[i],"CT_INSTRUCTIONS"));',
'apex.item("P55_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'',
'',
'}',
'apex.region("CT_PER").refresh();',
'//apex.region("ACS").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9837159487995839)
,p_name=>'SaveBTNDA'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9793324845646245)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9837219767995840)
,p_event_id=>wwv_flow_imp.id(9837159487995839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UpdateCTPerformance",',
'    {',
'        pageItems: [',
'            "P55_RADIATION_NO_2",',
'            "P55_SITE_ID",',
'            "P55_SIM_CT_ID",',
'            "P55_DIPS_SIM_CT",',
'            "P55_NECK_POSITION",',
'            "P55_SETUP_POSITION",',
'            "P55_ARM_POSITION",',
'            "P55_POSITION_INSTRUCTION",',
'            "P55_SETUP_POSITION_DESC",',
'            "P55_ARM_POSITION_DESC",',
'            "P55_NECK_POSITION_DESC",',
'            "P55_CT_SRNO",',
'            "P55_PHASE_NO",',
'            "P55_TRANS_DATE",',
'            "P55_OC_SERIAL_NO",',
'            "P55_SCHEDULE_SRNO",',
'            "P55_SCHEDULE_DATE",',
'            "P55_PERFORMANCE_ID",',
'            "P55_STATUS_ID",',
'            "P55_SIGN_BY_1",',
'            "P55_SIGN_BY_2",',
'            "P55_SIGN_DATE",',
'            "P55_DISP_NAME_SIGN_BY_1",',
'            "P55_DISP_NAME_SIGN_BY_2",',
'            "P55_CONTRAST",',
'            "P55_STATUS_DESC",',
'            "P55_CONTRAST_ID",',
'            "P55_CONTRAST_DESC",',
'            "P55_CONTRAST_QTY",',
'            "P55_CONTRAST_UNIT_ID",',
'            "P55_CONTRAST_UNIT",',
'            "P55_CONTRAST_GIVEN_BY",',
'            "P55_CONTRAST_GIVEN_NAME",',
'            "P55_FROM_FRACTION_ID",',
'            "P55_TO_FRACTION_ID",',
'            "P55_SCHEDULE_DATE_SHOW"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P55_SUCCESS_MESSAGE").setValue(obj.message); ',
'            } else {',
'                apex.item("P55_ERROR_MESSAGE").setValue(obj.message); ',
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
 p_id=>wwv_flow_imp.id(9837358650995841)
,p_name=>'ReportBtnDA'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9792562084646245)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9837441797995842)
,p_event_id=>wwv_flow_imp.id(9837358650995841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_RADIATION_NO": $v("P55_RADIATION_NO_2"),"P_USER_NAME": $v("GV_USER_NAME"),"P_TERMINAL": $v("GV_TERMINAL")};',
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
 p_id=>wwv_flow_imp.id(10509381341654335)
,p_name=>'PerformanceHistoryDA'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10506909773654311)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509413265654336)
,p_event_id=>wwv_flow_imp.id(10509381341654335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P55_RADIATION_NO_2").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509568487654337)
,p_event_id=>wwv_flow_imp.id(10509381341654335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT * ',
'INTO :P55_RADIATION_NO_2,',
':P55_RADIATION_DATE_1,:P55_MRNO,:P55_PATIENT_NAME_1,:P55_AGE,:P55_SEX',
'--,:P55_SERVICE_NO,:P55_SERVICE_STATUS,:P55_RANK,:P55_SERVICE_STATUS,:P55_UNIT',
',:P55_DOCTOR_ID',
',:P55_CONSULTANT,:P55_TREATMENT_INTENT',
',:P55_SITE_ID',
'--,:P55_SITE_DISP,:P55_SETUP_POSITION_DESC,:P55_ARM_POSITION_DESC,:P55_NECK_POSITION_DESC,:P55_POSITION_INSTRUCTION,:P55_STATUS,:P55_STATUS_ID   ',
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
'                   WHEN :P55_SCHEDULE_SRNO IS NOT NULL THEN',
'                    (SELECT S.RADIATION_NO',
'                       FROM RADIATION.SCHEDULE S',
'                      WHERE SR_NO = :P55_SCHEDULE_SRNO)',
'                   ELSE',
'                    :P55_RADIATION_NO_2',
'                 END)',
' AND M.MRNO LIKE CASE',
'       WHEN  :P55_MRNO IS NOT NULL THEN',
'        ''%'' ||  :P55_MRNO',
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
,p_attribute_02=>'P55_RADIATION_NO_2,P55_MRNO,P55_SCHEDULE_SRNO'
,p_attribute_03=>'P55_RADIATION_DATE_1,P55_MRNO,P55_PATIENT_NAME_1,P55_AGE,P55_SEX,P55_DOCTOR_ID,P55_CONSULTANT,P55_TREATMENT_INTENT,P55_SITE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10509659211654338)
,p_event_id=>wwv_flow_imp.id(10509381341654335)
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
 p_id=>wwv_flow_imp.id(31366033355760131)
,p_name=>'ExitRadAcc'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31365912493760130)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31366157499760132)
,p_event_id=>wwv_flow_imp.id(31366033355760131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radaccsub'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31366328046760134)
,p_name=>'SaveRadAcc'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31365814539760129)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31366474144760135)
,p_event_id=>wwv_flow_imp.id(31366328046760134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P55_STATUS_ID") === "015") {',
'    apex.message.alert("CT is signed, cannot proceed");',
'    return;',
'}',
'if ($v("P55_STATUS_ID") === "248") {',
'    apex.message.alert("CT is disposed, cannot proceed");',
'    return;',
'}',
'',
'',
'if ($v("P55_RAD_ACC_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationAccessory");',
'}',
'else if ($v("P55_RAD_ACC_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationAccessory");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31366543802760136)
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
 p_id=>wwv_flow_imp.id(31366663629760137)
,p_event_id=>wwv_flow_imp.id(31366543802760136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P55_ACC_ACCESSORY_ID",',
'            "P55_ACC_REMARKS",',
'            "P55_ACC_SRNO",',
'            "P55_ACC_PHASE_NO",',
'            "P55_ACC_SITE_ID",',
'            "P55_ACC_RADIATION_NO"',
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
 p_id=>wwv_flow_imp.id(31366737480760138)
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
 p_id=>wwv_flow_imp.id(31366882404760139)
,p_event_id=>wwv_flow_imp.id(31366737480760138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationAccessory",',
'    {',
'        pageItems: ["P55_ACC_ACCESSORY_ID",',
'            "P55_ACC_REMARKS",',
'            "P55_ACC_SRNO",',
'            "P55_ACC_PHASE_NO",',
'            "P55_ACC_SITE_ID",',
'            "P55_ACC_RADIATION_NO"',
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
 p_id=>wwv_flow_imp.id(55369633551424801)
,p_name=>'DAPassword1'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_PASSWORD1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55369785941424802)
,p_event_id=>wwv_flow_imp.id(55369633551424801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P55_PATIENT_MRNO2'').setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55369933314424804)
,p_name=>'DASign@Password'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_PASSWORD2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55370309507424808)
,p_event_id=>wwv_flow_imp.id(55369933314424804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'USERPASSWORD   VARCHAR2(25) := :p55_PASSWORD1;',
'USERPASSWORD2  VARCHAR2(25) := :p55_PASSWORD2;',
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
':P55_ERROR_MESSAGE := NULL;',
':P55_ERROR_MESSAGE := NULL;',
'IF :P55_PATIENT_MRNO1 IS NULL THEN',
':P55_ERROR_MESSAGE := ''Please enter First Technologist Employee Code'';',
'RETURN;',
'ELSIF :p55_PATIENT_MRNO2 IS NULL THEN',
':P55_ERROR_MESSAGE := ''Please enter Second Technologist Employee Code'';',
'RETURN;',
'ELSIF :p55_PASSWORD1 IS NULL THEN',
':P55_ERROR_MESSAGE := ''Please enter Fisrt Technologist Password'';',
'RETURN;',
'ELSIF :p55_PASSWORD2 IS NULL THEN',
':P55_ERROR_MESSAGE := ''Please enter Second Technologist Password'';',
'RETURN;',
'ELSE',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p55_DISP_MRNO1',
' AND ACTIVE = ''Y'';',
'EXCEPTION',
'WHEN OTHERS THEN',
':P55_ERROR_MESSAGE := sqlerrm;',
'END;',
'',
'',
'',
'BEGIN',
'SELECT PASSWORD, NEW_PASSWORD_FLAG',
'INTO SAVEDPASSWORD2, V_PW_FLAG',
'FROM SECURITY.USERS',
'WHERE MRNO = :p55_DISP_MRNO2',
' AND ACTIVE = ''Y'';',
'EXCEPTION',
'WHEN OTHERS THEN',
':P55_ERROR_MESSAGE := sqlerrm;',
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
':P55_ERROR_MESSAGE := ''First Technologist password is incorrect'';',
'RETURN;',
'ELSIF NEWPASSWORD2 <> SAVEDPASSWORD2 THEN',
':P55_ERROR_MESSAGE := ''Second Technologist password is incorrect'';',
'RETURN;',
'ELSE',
'',
'--END IF;',
'',
'--IF F_IS_AUTHORIZED(:p55_MRNO1, :p55_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:p55_MRNO2, :p55_PASSWORD2, ''2'') THEN',
'',
'DECLARE',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00130.SIGN_CT_PERFORMANCE(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                              P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                              P_RADIATION_NO      => :p55_RADIATION_NO_2,',
'                                              P_SITE_ID           => :p55_SITE_ID,',
'                                              P_CT_SRNO           => :p55_CT_SRNO,',
'                                              P_SCHEDULE_SRNO     => :p55_SCHEDULE_SRNO,',
'                                              P_SCHEDULE_EVENT_ID => :p55_SCHEDULE_EVENT_ID,',
'                                              P_USER_MRNO         => :Gv_USER_MRNO,',
'                                              P_FIRST_TECH        => :p55_DISP_MRNO1,',
'                                              P_SECOND_TECH       => :p55_DISP_MRNO2,',
'                                              P_OBJECT_CODE       => ''S18APX00048'',',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                              P_STOP              => V_STOP);',
'',
'IF NVL(V_stop, ''N'') = ''Y'' THEN',
'  :P55_ERROR_MESSAGE := V_alert_text;',
'  RETURN;',
'ELSE',
'  :P55_SUCCESS_MESSAGE := ''Record SIGNED Properly ...'';',
'  :P55_SIGNED   := ''Y'';',
'END IF;',
'END;',
'END IF;',
'END IF;',
'EXCEPTION',
'WHEN OTHERS THEN',
':P55_ERROR_MESSAGE := sqlerrm;',
'END;',
''))
,p_attribute_02=>'P55_PASSWORD1,P55_PASSWORD2,P55_PATIENT_MRNO1,P55_PATIENT_MRNO2,P55_SCHEDULE_EVENT_ID,P55_DISP_MRNO1,P55_DISP_MRNO2,P55_SITE_ID,P55_CT_SRNO'
,p_attribute_03=>'P55_MESSAGE1,P55_MESSAGE2,P55_SIGNED,P55_ERROR_MESSAGE,P55_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55370490199424809)
,p_event_id=>wwv_flow_imp.id(55369933314424804)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT C.STATUS_ID',
'    INTO :P55_STATUS_ID',
'    FROM RADIATION.RAD_CT_PERFORMANCE C',
'   WHERE C.RADIATION_NO = :P55_RADIATION_NO_2',
'     AND C.SITE_ID = :P55_SITE_ID',
'     AND C.CT_SRNO = :P55_CT_SRNO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
':P55_ERROR_MESSAGE := sqlerrm;',
'END;',
''))
,p_attribute_02=>'P55_RADIATION_NO_2,P55_SITE_ID,P55_CT_SRNO'
,p_attribute_03=>'P55_STATUS_ID,P55_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140712737492856649)
,p_event_id=>wwv_flow_imp.id(55369933314424804)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10176345338217827)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140712348963856645)
,p_event_id=>wwv_flow_imp.id(55369933314424804)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_SIGNED'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140708627258856608)
,p_name=>'DAViewRequest'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9837880925995846)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140708778783856609)
,p_event_id=>wwv_flow_imp.id(140708627258856608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_APP     NUMBER := 115;',
'  L_SESSION NUMBER := V(''APP_SESSION'');',
'BEGIN',
'  :P55_TXT_URL := APEX_UTIL.PREPARE_URL(P_URL           => ''f?p='' || L_APP ||',
'                                                           '':85:'' ||',
'                                                           L_SESSION ||',
'                                                           ''::NO::P85_MRNO,P85_RADIATION_NO,P85_PARAM_RADIATION_NO:'' ||',
'                                                           :P55_MRNO || '','' ||',
'                                                           :P55_RADIATION_NO_2 || '','' ||',
'                                                           :P55_RADIATION_NO_2,',
'                                        P_CHECKSUM_TYPE => ''SESSION'');',
'END;',
''))
,p_attribute_02=>'P55_MRNO,P55_RADIATION_NO_2'
,p_attribute_03=>'P55_TXT_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140708941022856611)
,p_event_id=>wwv_flow_imp.id(140708627258856608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect($v(''P55_TXT_URL''));    '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140710103379856623)
,p_name=>'DAErrorMessage'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_ERROR_MESSAGE'
,p_condition_element=>'P55_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140710279028856624)
,p_event_id=>wwv_flow_imp.id(140710103379856623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P55_ERROR_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147333767354371512)
,p_name=>'DASuccessMessage'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_SUCCESS_MESSAGE'
,p_condition_element=>'P55_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147333846539371513)
,p_event_id=>wwv_flow_imp.id(147333767354371512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P55_SUCCESS_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9837754262995845)
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
' -- L_MRNO  := :P55_MRNO;',
'---  L_SR_NO := :P55_SCHEDULE_SRNO;',
'',
'  RADIATION.PKG_S18FRM00130.CREATE_NEW_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                            P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                            P_RADIATION_NO      => :P55_RADIATION_NO_2,',
'                                            P_SITE_ID           => :P55_SITE_ID,',
'                                            P_CT_SRNO           => :P55_CT_SRNO,',
'                                            P_OBJECT_CODE       => ''S18APX00048'',',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  --:P55_MRNO          := L_MRNO;',
'  ---:P55_SCHEDULE_SRNO := L_SR_NO;',
'',
'  /*IF nvl(L_STOP, ''N'') <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P55_ALERT'', ''CT created successfully'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(9794168641646246)
,p_process_success_message=>'CT created successfully'
,p_internal_uid=>9837754262995845
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
 p_id=>wwv_flow_imp.id(10288637929985980)
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
' -- L_MRNO  := :P55_MRNO;',
' -- L_SR_NO := :P55_SCHEDULE_SRNO;',
'',
'  RADIATION.PKG_S18FRM00130.DISPOSE_RAD_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                             P_SIGN_FLAG         => NULL,',
'                                             P_SIGN_BY           => :P55_MRNO1,',
'                                             P_RADIATION_NO      => :P55_RADIATION_NO_2,',
'                                             P_SITE_ID           => :P55_SITE_ID,',
'                                             P_CT_SRNO           => :P55_CT_SRNO,',
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
' -- :P55_MRNO          := L_MRNO;',
'  --:P55_SCHEDULE_SRNO := L_SR_NO;',
'',
'  /*IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P55_ALERT'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(9794580975646246)
,p_process_success_message=>'CT Disposed successfully'
,p_internal_uid=>10288637929985980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29500469060373644)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10176345338217827)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'CT_PERFORMANCE_DT - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29500469060373644
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9818319793646260)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParameter'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P55_MRNO          := NULL;',
'  :P55_SCHEDULE_SRNO := NULL;',
'  ',
'  /*IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P55_MRNO          := :P46_PATIENT_MRNO;',
'    :P55_SCHEDULE_SRNO := NULL;',
'  END IF;*/',
'',
'  IF :LV_PATIENT_MRNO IS NOT NULL THEN',
'    :P55_MRNO          := :LV_PATIENT_MRNO;',
'    :P55_SCHEDULE_SRNO := :LV_SR_NO;',
'  END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9818319793646260
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9817996439646259)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'when-new-form-instance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PERFORMANCE_TYPE_ID',
'    INTO :P55_PERFORMANCE_TYPE_ID',
'    FROM RADIATION.SCHEDULE RS, RADIATION.MACHINES M',
'   WHERE RS.MACHINE_ID = M.MACHINE_ID',
'     AND RS.SR_NO = :P55_SCHEDULE_SRNO;',
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
'    INTO :P55_SITE_ID, :P55_SCHEDULE_EVENT_ID',
'    FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'   WHERE SW.SR_NO = S.SR_NO',
'     AND S.SR_NO = :P55_SCHEDULE_SRNO',
'     AND S.WFE_NO = SW.WFE_NO;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9817996439646259
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9817538440646259)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT *',
'    INTO :P55_RADIATION_NO_2,',
'         :P55_RADIATION_DATE_1,',
'         :P55_MRNO,',
'         :P55_PATIENT_NAME_1,',
'         :P55_AGE,',
'         :P55_SEX,',
'         :P55_DOCTOR_ID,',
'         :P55_CONSULTANT,',
'         :P55_TREATMENT_INTENT',
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
'           WHERE M.RADIATION_NO = (CASE',
'                   WHEN :P55_SCHEDULE_SRNO IS NOT NULL THEN',
'                    (SELECT S.RADIATION_NO',
'                       FROM RADIATION.SCHEDULE S',
'                      WHERE SR_NO = :P55_SCHEDULE_SRNO)',
'                   ELSE',
'                    RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P55_MRNO,',
'                                                                  P_RADIOTHERAPY_TYPE => ''T'')',
'                 END)',
'             AND M.MRNO LIKE CASE',
'                   WHEN :P55_MRNO IS NOT NULL THEN',
'                    ''%'' || :P55_MRNO',
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
,p_internal_uid=>9817538440646259
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9835181357995819)
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
'',
'  SELECT :P55_RADIATION_NO_2 RADIATION_NO,',
'         :P55_SITE_ID SITE_ID,',
'         :P55_SIM_CT_ID SIM_CT_ID,',
'         :P55_DIPS_SIM_CT DIPS_SIM_CT,',
'         :P55_NECK_POSITION NECK_POSITION,',
'         :P55_SETUP_POSITION SETUP_POSITION,',
'         :P55_ARM_POSITION ARM_POSITION,',
'         :P55_POSITION_INSTRUCTION POSITION_INSTRUCTION,',
'         :P55_SETUP_POSITION_DESC SETUP_POSITION_DESC,',
'         :P55_ARM_POSITION_DESC ARM_POSITION_DESC,',
'         :P55_NECK_POSITION_DESC NECK_POSITION_DESC,',
'         :P55_CT_SRNO CT_SRNO,',
'         :P55_PHASE_NO PHASE_NO,',
'         TO_DATE(TO_CHAR(SYSDATE, ''DD-MM-YYYY HH12:MI:SS AM''),',
'                 ''DD-MM-YYYY HH12:MI:SS AM'') TRANS_DATE,',
'         :P55_OC_SERIAL_NO OC_SERIAL_NO,',
'         NVL(:P55_SCHEDULE_SRNO, :LV_SR_NO) SCHEDULE_SRNO,',
'         TO_DATE(:P55_SCHEDULE_DATE_SHOW, ''DD-MM-YY HH24:MI'') SCHEDULE_DATE,',
'         :P55_PERFORMANCE_ID PERFORMANCE_ID,',
'         :P55_STATUS_ID STATUS_ID,',
'         :P55_SIGN_BY_1 SIGN_BY_1,',
'         :P55_SIGN_BY_2 SIGN_BY_2,',
'         TO_DATE(:P55_SIGN_DATE, ''DD-MM-YY HH24:MI'') SIGN_BY_2,',
'         :P55_DISP_NAME_SIGN_BY_1 DISP_NAME_SIGN_BY_1,',
'         :P55_DISP_NAME_SIGN_BY_2 DISP_NAME_SIGN_BY_2,',
'         :P55_CONTRAST CONTRAST,',
'         :P55_STATUS_DESC STATUS_DESC,',
'         :P55_CONTRAST_ID CONTRAST_ID,',
'         :P55_CONTRAST_DESC CONTRAST_DESC,',
'         :P55_CONTRAST_QTY CONTRAST_QTY,',
'         :P55_CONTRAST_UNIT_ID CONTRAST_UNIT_ID,',
'         :P55_CONTRAST_UNIT CONTRAST_UNIT,',
'         :P55_CONTRAST_GIVEN_BY CONTRAST_GIVEN_BY,',
'         :P55_CONTRAST_GIVEN_NAME CONTRAST_GIVEN_NAME,',
'         :P55_FROM_FRACTION_ID FROM_FRACTION_ID,',
'         :P55_TO_FRACTION_ID TO_FRACTION_ID',
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
,p_internal_uid=>9835181357995819
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31366927003760140)
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
'    SELECT :P55_ACC_RADIATION_NO RADIATION_NO,',
'           :P55_ACC_SITE_ID SITE_ID,',
'           :P55_ACC_SRNO SRNO,',
'           :P55_ACC_PHASE_NO PHASE_NO,',
'           :P55_ACC_ACCESSORY_ID ACCESSORY_ID,',
'           NULL DISP_ACCESSORY,',
'           :P55_ACC_REMARKS REMARKS,',
'           (SELECT CASE WHEN AC.OBJECT_CODE IS NOT NULL THEN ''020'' ELSE ''015'' END',
'              FROM RADIATION.ACCESSORIES AC',
'             WHERE AC.ACCESSORY_ID = :P55_ACC_ACCESSORY_ID) STATUS_ID,',
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
,p_internal_uid=>31366927003760140
);
wwv_flow_imp.component_end;
end;
/

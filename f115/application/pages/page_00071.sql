prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'RAD_HDR_REQUEST'
,p_alias=>'RAD-HDR-REQUEST1'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_HDR_REQUEST'
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
'$(document).keydown(function (e) {',
'    // Set self as the current item in focus',
'    var self = $('':focus''),',
'        // Set the form by the current item in focus',
'        form = self.parents(''form:eq(0)''),',
'        focusable;',
'',
'    // Array of Indexable/Tab-able items',
'    focusable = form.find(''input,a,select,button,textarea,div[contenteditable=true],input[type="checkbox"],input[type="email"]'').filter('':visible'').filter(''[tabindex!=-1]'');',
'',
'    function enterKey() {',
'        if (e.which === 13 && !self.is(''textarea,div[contenteditable=true],#P65_QUERY_NEW,#exe_btn_new'')) { // [Enter] key',
'            // If not a regular hyperlink/button/textarea',
'            // console.log(focusable);',
'            // console.log(self);',
'            if ($.inArray(self, focusable) && (!self.is(''a,button''))) {',
'                // Then prevent the default [Enter] key behaviour from submitting the form',
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
'            // Otherwise follow the link/button as by design, or put new line in textarea',
'            // Focus on the next item (either previous or next depending on shift)',
'',
'            return false;',
'        }',
'    }',
'    // We need to capture the [Shift] key and check the [Enter] key either way.',
'    if (e.shiftKey) { enterKey() } else {',
'',
'        enterKey();',
'',
'    }',
'});'))
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
'	height: 130px;',
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
'#P71_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_DISP_SEX {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_ICDNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_TREATMENT_INTENT_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_SIMULATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_DOCTOR_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_REQUEST_ENTERED_BY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_SIGN_BY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_STATUS_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_DETAIL_SITE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_MACHINE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_DETAIL_DOSE_PER_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_DETAIL_NO_OF_FRACTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P71_RAD_DETAIL_TOT_DOSE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_DETAIL_EVENT_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_ACTIVE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_DETAIL_PATH_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P71_RAD_DETAIL_RAD_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_ANESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P71_REQ_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_ND_CHEMOTHERAPY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_ND_CHEMOTHERAPY_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
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
'#P71_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P71_RAD_DETAIL_PLANNING_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_page_component_map=>'02'
,p_last_updated_by=>'OWAIS'
,p_last_upd_yyyymmddhh24miss=>'20240429113048'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20636572656111536)
,p_plug_name=>'On Treatment Site(s)'
,p_region_name=>'on_trt_site'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>7
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT M.RADIATION_NO RADIATION_NO,',
'        M.MRNO,',
'        D.SITE_ID,',
'        RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DISP_SITE,',
'        RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => D.RADIATION_NO,',
'                                                        P_SITE_ID      => D.SITE_ID,',
'                                                        P_WFE_NO       => D.WFE_NO) EVENT_DESC,',
'        NVL(RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => D.RADIATION_NO,',
'                                                      P_SITE_ID      => D.SITE_ID,',
'                                                      P_PHASE_NO     => NULL),',
'            0) AS TOTAL_FRACTIONS,',
'        RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => D.RADIATION_NO,',
'                                                        P_SITE_ID      => D.SITE_ID,',
'                                                        P_PHASE_NO     => NULL) AS PERFORMED_FRACTIONS,',
'        D.ACTIVE,',
'        NVL((SELECT ''Y''',
'              FROM RADIATION.RADIATION_DETAIL_LINK DL',
'             WHERE DL.LINKED_RADIATION_NO = D.RADIATION_NO',
'               AND DL.LINKED_SITE_ID = D.SITE_ID',
'               AND DL.LINK_TYPE = ''TB''),',
'            ''N'') LINK_WITH,',
'        (SELECT DL.AFTER_FRACTION_ID',
'           FROM RADIATION.RADIATION_DETAIL_LINK DL',
'          WHERE DL.LINKED_RADIATION_NO = D.RADIATION_NO',
'            AND DL.LINKED_SITE_ID = D.SITE_ID',
'            AND DL.LINK_TYPE = ''TB'') PERFORM_AFTER_FRACTION_NO,',
'        D.ROWID',
'   FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'  WHERE M.MRNO =',
'        RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(P_RADIATION_NO => :P71_RADIATION_NO)',
'    AND D.RADIATION_NO = M.RADIATION_NO',
'    AND M.RADIOTHERAPY_TYPE = ''T''',
'    AND D.STATUS_ID = ''015''',
'    AND M.STATUS_DISCHARGE = ''020''',
'    AND D.ACTIVE = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P71_RADIATION_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'On Treatment Site(s)'
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
 p_id=>wwv_flow_imp.id(20668334223543212)
,p_heading=>' <b><p style="color:#8B0000">Fraction(s)</p></b>'
,p_label=>' <b><p style="color:#8B0000">Fraction(s)</p></b>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20667247984543201)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(20667305037543202)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
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
 p_id=>wwv_flow_imp.id(20667474386543203)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20667584767543204)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Site'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(20667677440543205)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Current Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(20667727127543206)
,p_name=>'TOTAL_FRACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_FRACTIONS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Fractions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(20668334223543212)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(20667845484543207)
,p_name=>'PERFORMED_FRACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMED_FRACTIONS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Performed Fractions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(20668334223543212)
,p_use_group_for=>'HEADING'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(20667969577543208)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
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
 p_id=>wwv_flow_imp.id(20668025894543209)
,p_name=>'LINK_WITH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_WITH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Link With'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20668142852543210)
,p_name=>'PERFORM_AFTER_FRACTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_AFTER_FRACTION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Perform After Fraction No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.PHASE_NO + (FRACTION / 100) FRACTION_ID_DESC, B.PHASE_NO + (FRACTION / 100) FRACTION_ID',
'  FROM RADIATION.RADIATION_BOOST_PLAN B,',
'       (SELECT LEVEL FRACTION FROM DUAL CONNECT BY LEVEL < 100) F',
' WHERE B.RADIATION_NO = :P71_ON_TRT_RAD_NO',
'   AND B.SITE_ID = :P71_ON_TRT_SITE_ID',
'   AND F.FRACTION <= B.NO_OF_FRACTION',
'   AND NOT EXISTS',
' (SELECT 1',
'          FROM RADIATION.RAD_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = B.RADIATION_NO',
'           AND RP.SITE_ID = B.SITE_ID',
'           AND RP.FRACTION_ID = B.PHASE_NO + (FRACTION / 100))',
' ORDER BY 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P71_ON_TRT_RAD_NO,P71_ON_TRT_SITE_ID'
,p_ajax_items_to_submit=>'P71_ON_TRT_RAD_NO,P71_ON_TRT_SITE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20668299153543211)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(20637900824111550)
,p_internal_uid=>20637900824111550
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_fixed_header_max_height=>198
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(20673149120544081)
,p_interactive_grid_id=>wwv_flow_imp.id(20637900824111550)
,p_static_id=>'206732'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(20673360400544081)
,p_report_id=>wwv_flow_imp.id(20673149120544081)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20673808715544082)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(20667247984543201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128.729
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20674789546544084)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(20667305037543202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20675645181544086)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(20667474386543203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20676568961544089)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(20667584767543204)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>261.708
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20677415310544091)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(20667677440543205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196.812
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20678323848544093)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(20667727127543206)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154.89566662693025
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20679265727544096)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(20667845484543207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152.895667342186
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20680145944544098)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(20667969577543208)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20681065156544101)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(20668025894543209)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.68799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20681923326544103)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(20668142852543210)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165.31266603088378
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20682838900544105)
,p_view_id=>wwv_flow_imp.id(20673360400544081)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(20668299153543211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24125018809278095)
,p_plug_name=>'Brachytherapy Request'
,p_region_name=>'rad_master'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
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
' '))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P71_MRNO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24289958202133095)
,p_plug_name=>'Patient Image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>125
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
 p_id=>wwv_flow_imp.id(50599443276150097)
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
' WHERE MRNO = :P71_MRNO;',
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
,p_ajax_items_to_submit=>'P71_MRNO'
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
 p_id=>wwv_flow_imp.id(20674987155982122)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20675368899982123)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20675737378982123)
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
 p_id=>wwv_flow_imp.id(50604085419150144)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) STATUS_DESC',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P71_MRNO',
'   AND M.RADIATION_NO <> NVL(:P34_RADIATION_NO, ''$'')',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
'   AND M.RADIATION_NO <> :P71_RADIATION_NO',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P71_MRNO,P71_RADIATION_NO'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(51333045465698534)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>51333045465698534
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20636107381111532)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>1
,p_column_identifier=>'F'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20636310640111534)
,p_db_column_name=>'STATUS_DESC'
,p_display_order=>2
,p_column_identifier=>'H'
,p_column_label=>'Status '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20636279655111533)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Mrno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52423650693714384)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'317695'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:STATUS_DESC:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82577455442169927)
,p_plug_name=>'Anesthesia / Chemotherapy'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82577578646169928)
,p_plug_name=>'Anesthesia'
,p_parent_plug_id=>wwv_flow_imp.id(82577455442169927)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82577838488169931)
,p_plug_name=>'Chemotherapy'
,p_parent_plug_id=>wwv_flow_imp.id(82577455442169927)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101762055928225716)
,p_plug_name=>'Radiotherapy Detail'
,p_region_name=>'raddetail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RD.RADIATION_NO,',
'       SITE_ID,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'       SIM_CT_ID,',
'       TREATMENT_TECHNIQUE_ID,',
'       PLANNING,',
'       PLANNING_ID,',
'       RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING),',
'       ACTIVE,',
'       WFE_NO,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                       P_SITE_ID      => SITE_ID,',
'                                                       P_WFE_NO       => WFE_NO) EVENT_DESC,',
'       STATUS_ID SITE_STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RD.STATUS_ID),',
'       RD.ISOTOPE_ID,',
'       RADIATION.PKG_RADIATION.GET_DISP_ISOTOPE(RD.ISOTOPE_ID),',
'       RD.MACHINE_ID,',
'       RADIATION.PKG_RADIATION.GET_MACHINE_DESC(RD.MACHINE_ID) DISP_MACHINE,',
'       ENTERED_BY,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(ENTERED_BY) || '' ('' || ENTERED_BY || '')'' REQUEST_ENTERED_BY,',
'       DOSE_FRACTION,',
'       NO_OF_FRACTION,',
'       PATH_REVIEWED,',
'       RAD_REVIEWED,',
'       RD.ROWID,',
'       NVL(DOSE_FRACTION, 0) * NVL(NO_OF_FRACTION, 0) TOT_DOSE,',
'       RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO) USER_ROLE',
'  FROM RADIATION.RADIATION_DETAIL RD--, RADIATION.RADIATION_MASTER M',
' WHERE RD.RADIATION_NO = :P71_RADIATION_NO',
'  -- AND M.RADIATION_NO = RD.RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P71_PARAM_SITE_ID, RD.SITE_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P71_RADIATION_NO,P71_PARAM_SITE_ID'
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
 p_id=>wwv_flow_imp.id(116220557310168703)
,p_heading=>'Phase 1'
,p_label=>'Phase 1'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(116220717541168705)
,p_heading=>'Phase 2'
,p_label=>'Phase 2'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(116220776308168706)
,p_heading=>'Phase 3'
,p_label=>'Phase 3'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20635173245111522)
,p_name=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RD.STATUS_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RD.STATUS_ID)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20635296733111523)
,p_name=>'ISOTOPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOTOPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20635357047111524)
,p_name=>'RADIATION.PKG_RADIATION.GET_DISP_ISOTOPE(RD.ISOTOPE_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DISP_ISOTOPE(RD.ISOTOPE_ID)'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20635411192111525)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Machine '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>6
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPTION, M.MACHINE_ID',
'  FROM RADIATION.MACHINES M',
' WHERE M.MACHINE_TYPE = ''T''',
'   AND M.PERFORMANCE_TYPE_ID = ''005''',
'   AND M.ACTIVE = ''Y''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = M.MACHINE_ID)',
' ORDER BY M.DESCRIPTION'))
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
 p_id=>wwv_flow_imp.id(20635518546111526)
,p_name=>'DISP_MACHINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_MACHINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20635628073111527)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
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
 p_id=>wwv_flow_imp.id(20635779283111528)
,p_name=>'REQUEST_ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_ENTERED_BY'
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
 p_id=>wwv_flow_imp.id(20635801102111529)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose Per Fraction'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(20635914581111530)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No Of Fraction'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(20636456803111535)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Dose (cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(20670053056543229)
,p_name=>'SITE_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'siteStatusID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20991839239094602)
,p_name=>'USER_ROLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ROLE'
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
 p_id=>wwv_flow_imp.id(20992465262094608)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50599804179150101)
,p_name=>'RAD_DETAIL_EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Update'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript: $s(''P71_RAD_DETAIL_DML_STATUS'', ''UPDATE''); javascript: $s(''P71_RAD_DETAIL_RADIATION_NO'', ''&RADIATION_NO.''); javascript: $s(''P71_RAD_DETAIL_SITE_ID'', ''&SITE_ID.''); javascript: $s(''P71_RAD_DETAIL_PLANNING_ID'', ''&PLANNING_ID.''); javascript: '
||'$s(''P71_RAD_MACHINE_ID'', ''&MACHINE_ID.''); javascript: $s(''P71_RAD_DETAIL_DOSE_PER_FRACTION'', ''&DOSE_FRACTION.''); javascript: $s(''P71_RAD_DETAIL_NO_OF_FRACTION'', ''&NO_OF_FRACTION.''); javascript: $s(''P71_RAD_DETAIL_TOT_DOSE'', ''&TOT_DOSE.''); javascript:'
||' $s(''P71_RAD_ACTIVE'', ''&ACTIVE.''); javascript: $s(''P71_RAD_DETAIL_PATH_REVIEWED'', ''&PATH_REVIEWED.''); javascript: $s(''P71_RAD_DETAIL_RAD_REVIEWED'', ''&RAD_REVIEWED.''); $s(''P71_RADIATION_DETAIL_STATUS_ID'', ''&SITE_STATUS_ID.'');javascript: editRadiationD'
||'etail();'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(50599910337150102)
,p_name=>'RAD_DETAIL_DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript: $s(''P34_RAD_DETAIL_DML_STATUS'', ''UPDATE''); javascript: $s(''P71_RAD_DETAIL_RADIATION_NO'', ''&RADIATION_NO.''); javascript: $s(''P71_RAD_DETAIL_SITE_ID'', ''&SITE_ID.''); javascript: $s(''P71_RAD_DETAIL_PLANNING_ID'', ''&PLANNING_ID.''); javascript: '
||'$s(''P71_RAD_MACHINE_ID'', ''&MACHINE_ID.''); javascript: $s(''P71_RAD_DETAIL_DOSE_PER_FRACTION'', ''&DOSE_FRACTION.''); javascript: $s(''P71_RAD_DETAIL_NO_OF_FRACTION'', ''&NO_OF_FRACTION.''); javascript: $s(''P71_RAD_DETAIL_TOT_DOSE'', ''&TOT_DOSE.''); javascript:'
||' $s(''P71_RAD_ACTIVE'', ''&ACTIVE.''); javascript: $s(''P71_RAD_DETAIL_PATH_REVIEWED'', ''&PATH_REVIEWED.''); javascript: $s(''P71_RAD_DETAIL_RAD_REVIEWED'', ''&RAD_REVIEWED.''); $s(''P71_RADIATION_DETAIL_STATUS_ID'', ''&SITE_STATUS_ID.'');javascript: deleteRadiatio'
||'nDetail();'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101762257101225718)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(101762290998225719)
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
 p_id=>wwv_flow_imp.id(101762443054225720)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(101762574033225721)
,p_name=>'SIM_CT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIM_CT_ID'
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
 p_id=>wwv_flow_imp.id(101762774958225723)
,p_name=>'TREATMENT_TECHNIQUE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TECHNIQUE_ID'
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
 p_id=>wwv_flow_imp.id(101762881501225725)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
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
 p_id=>wwv_flow_imp.id(101763045962225726)
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
 p_id=>wwv_flow_imp.id(101763112770225727)
,p_name=>'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING)'
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
 p_id=>wwv_flow_imp.id(101764178713225738)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Active'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(101764393791225740)
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
 p_id=>wwv_flow_imp.id(101764524006225741)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Current Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(116220166677168699)
,p_name=>'PATH_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATH_REVIEWED'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(116220178920168700)
,p_name=>'RAD_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_REVIEWED'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(101762114095225717)
,p_internal_uid=>101762114095225717
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
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
'                apex.item("P71_RAD_DETAIL_RADIATION_NO").setValue($v("P71_RADIATION_NO"));',
'                apex.item("P71_RAD_DETAIL_ROW_ID").setValue('''');',
'                apex.item("P71_RAD_DETAIL_SITE_ID").setValue('''');',
'                apex.item("P71_RAD_DETAIL_PLANNING_ID").setValue('''');',
'                apex.item("P71_RAD_MACHINE_ID").setValue('''');',
'                apex.item("P71_RAD_DETAIL_DOSE_PER_FRACTION").setValue(''0'');',
'                apex.item("P71_RAD_DETAIL_NO_OF_FRACTION").setValue(''0'');',
'                apex.item("P71_RAD_DETAIL_TOT_DOSE").setValue(''0'');',
'                apex.item("P71_RAD_DETAIL_EVENT_DESC").setValue('''');',
'                apex.item("P71_RAD_ACTIVE").setValue(''Y'');',
'                apex.item("P71_RAD_DETAIL_PATH_REVIEWED").setValue('''');',
'                apex.item("P71_RAD_DETAIL_RAD_REVIEWED").setValue('''');',
'                apex.item("P71_RAD_DETAIL_DML_STATUS").setValue(''CREATE'');',
'',
'',
'                if ($v("P71_USER_ROLE") === "O") {',
'                    apex.item("saveradiationsite").disable();',
'                }',
'                else {',
'                    apex.item("saveradiationsite").enable();',
'                }',
'',
'',
'',
'                apex.theme.openRegion(''radiationsite'');',
'',
'            }',
'        });',
'    };',
'',
'    config.defaultGridViewOptions = {',
'',
'        pagination: {',
'',
'            scroll: false,',
'',
'            showRange: false,',
'',
'            showPageLinks: false,',
'',
'            maxLinks: 0,',
'',
'            firstAndLastButtons: false',
'',
'        }',
'    }',
'',
'',
'    config.toolbarData = toolbarData;',
'    // Return the options',
'    return config;',
'',
'',
'',
'}',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(116225552940169441)
,p_interactive_grid_id=>wwv_flow_imp.id(101762114095225717)
,p_static_id=>'955714'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(116225754243169441)
,p_report_id=>wwv_flow_imp.id(116225552940169441)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20807024274442281)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(20635173245111522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20807935778442283)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(20635296733111523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20808827045442286)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(20635357047111524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20809757788442289)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(20635411192111525)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>216.33300000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20810607452442291)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(20635518546111526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20811567696442294)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(20635628073111527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20812424832442296)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(20635779283111528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20813383311442299)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(20635801102111529)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>207.29199999999997
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20814268524442301)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(20635914581111530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>172.29199999999997
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
 p_id=>wwv_flow_imp.id(20862037057542178)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(20636456803111535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175.29199999999997
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20894505335232192)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(20670053056543229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21147444032998655)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(20991839239094602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21195563101194434)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(20992465262094608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50736861984651340)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(50599804179150101)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50745985680673498)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(50599910337150102)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116226153836169446)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(101762257101225718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116227064701169450)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(101762290998225719)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>225
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116227877316169452)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(101762443054225720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116228802561169456)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(101762574033225721)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>218
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116230644376169474)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(101762774958225723)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153.031
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116232474592169485)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101762881501225725)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116233308280169487)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(101763045962225726)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>177
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116234199931169489)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(101763112770225727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116244104899169526)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(101764178713225738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116245913926169533)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(101764393791225740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116246812697169535)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(101764524006225741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>190.72899999999998
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116253971318169558)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(116220166677168699)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116254824618169561)
,p_view_id=>wwv_flow_imp.id(116225754243169441)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(116220178920168700)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50599976423150103)
,p_plug_name=>'Radiotheraphy Site'
,p_region_name=>'radiationsite'
,p_parent_plug_id=>wwv_flow_imp.id(101762055928225716)
,p_region_css_classes=>'js-dialog-size800x600'
,p_region_template_options=>'js-modal:js-draggable:js-resizable:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116224057325168738)
,p_plug_name=>'Control'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>55
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(177699341562455900)
,p_plug_name=>'Sign '
,p_region_name=>'signinline'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>500
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20718590607982164)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Report'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20718917066982164)
,p_button_sequence=>11
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Sign'
,p_button_static_id=>'sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20719316989982164)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Save'
,p_button_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20719730631982164)
,p_button_sequence=>41
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Delete'
,p_button_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_confirm_message=>'<strong>Please confirm</strong> you want to delete the request?'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20720170556982164)
,p_button_sequence=>51
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20720521024982165)
,p_button_sequence=>61
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
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
 p_id=>wwv_flow_imp.id(20699165671982152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_button_name=>'SaveRadiationSite'
,p_button_static_id=>'saveradiationsite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22104566764781716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(177699341562455900)
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
 p_id=>wwv_flow_imp.id(20699579192982152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50599976423150103)
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
 p_id=>wwv_flow_imp.id(20720920133982165)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Cancel'
,p_button_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-ban'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20721334372982165)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(116224057325168738)
,p_button_name=>'Approve'
,p_button_static_id=>'approve'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-thumbs-o-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20699941079982152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_button_name=>'ExitSite'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22104991869781717)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_button_name=>'SignHDRRequest'
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
 p_id=>wwv_flow_imp.id(20669067667543219)
,p_name=>'P71_ON_TRT_RAD_NO'
,p_item_sequence=>225
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20669119915543220)
,p_name=>'P71_ON_TRT_SITE_ID'
,p_item_sequence=>235
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20670188440543230)
,p_name=>'P71_RADIATION_DETAIL_STATUS_ID'
,p_item_sequence=>245
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20670574609543234)
,p_name=>'P71_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20992870949094612)
,p_name=>'P71_SIGN_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126240853278108)
,p_name=>'P71_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126340152278109)
,p_name=>'P71_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126415656278110)
,p_name=>'P71_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126533164278111)
,p_name=>'P71_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126591350278112)
,p_name=>'P71_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126737370278113)
,p_name=>'P71_DISP_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126795113278114)
,p_name=>'P71_PRIORITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>194
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'PRIORITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24126871090278115)
,p_name=>'P71_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>204
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127005420278116)
,p_name=>'P71_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127151215278117)
,p_name=>'P71_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>214
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127249551278118)
,p_name=>'P71_TREATMENT_INTENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>94
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127321054278119)
,p_name=>'P71_DISP_TREATMENT_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>224
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'DISP_TREATMENT_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127370916278120)
,p_name=>'P71_ICDNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_prompt=>'<b><p style="color:#00008B">Diagnosis: </p></b>'
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
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(24127500057278121)
,p_name=>'P71_DISP_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>284
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'DISP_DIAGNOSIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127598287278122)
,p_name=>'P71_STATUS_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>234
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'STATUS_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127761093278123)
,p_name=>'P71_SIGN_BY_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>254
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'SIGN_BY_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127848060278124)
,p_name=>'P71_REQUEST_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>164
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_prompt=>'<b><p style="color:#00008B">Entered By:</p></b>'
,p_source=>'REQUEST_ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24127921262278125)
,p_name=>'P71_ENTERED_BY_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>244
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'ENTERED_BY_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128039009278126)
,p_name=>'P71_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>123
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_default=>'N'
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128134821278127)
,p_name=>'P71_CHEMOTHERAPY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_default=>'N'
,p_source=>'CHEMOTHERAPY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128222686278128)
,p_name=>'P71_CHEMOTHERAPY_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'CHEMOTHERAPY_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128349341278129)
,p_name=>'P71_SIMULATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_prompt=>'<b><p style="color:#00008B">Radiation Start Date:</p></b>'
,p_source=>'SIMULATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128458565278130)
,p_name=>'P71_STATUS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>184
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_source=>'STATUS_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128576741278132)
,p_name=>'P71_SIGN_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>174
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_prompt=>'<b><p style="color:#00008B">Sign By:</p></b>'
,p_source=>'SIGN_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128675935278133)
,p_name=>'P71_ACTIVE_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>264
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'ACTIVE_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24128770247278134)
,p_name=>'P71_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>274
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_imp.id(50646242162150163)
,p_name=>'P71_RAD_DETAIL_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50646353537150164)
,p_name=>'P71_RAD_DETAIL_SITE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50646497217150165)
,p_name=>'P71_RAD_DETAIL_PLANNING_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Planning Technique</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, PLANNING_ID',
'  FROM RADIATION.PLANNING T',
' WHERE ACTIVE = ''Y''',
'   AND T.RADIOTHERAPY_TYPE = ''B''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP_PLANNING D, RADIATION.DEF_SETUP S',
'         WHERE D.PLANNING_ID = T.PLANNING_ID',
'           AND S.SETUP_ID = D.SETUP_ID',
'           AND (D.ACTIVE = ''Y'' AND S.ACTIVE = ''Y'')',
'           AND S.DOCTOR_ID = :P71_DOCTOR_ID)',
' ORDER BY DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P71_DOCTOR_ID'
,p_ajax_items_to_submit=>'P71_DOCTOR_ID'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50646546500150166)
,p_name=>'P71_RAD_MACHINE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Machine</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DESCRIPTION, M.MACHINE_ID',
'  FROM RADIATION.MACHINES M',
' WHERE M.MACHINE_TYPE = ''T''',
'   AND M.PERFORMANCE_TYPE_ID = ''005''',
'   AND M.ACTIVE = ''Y''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = M.MACHINE_ID)',
' ORDER BY M.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50646634159150167)
,p_name=>'P71_RAD_DETAIL_DOSE_PER_FRACTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Dose Per Fraction</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50646800719150168)
,p_name=>'P71_RAD_DETAIL_NO_OF_FRACTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">No of Fraction(s)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50647593035150176)
,p_name=>'P71_RAD_DETAIL_TOT_DOSE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Total Dose (cGy)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50647732179150178)
,p_name=>'P71_RAD_ACTIVE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Active</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50647880456150179)
,p_name=>'P71_RAD_DETAIL_EVENT_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Current Event</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50648587767150186)
,p_name=>'P71_RAD_DETAIL_PATH_REVIEWED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#8B0000">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-md'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50648681733150187)
,p_name=>'P71_RAD_DETAIL_RAD_REVIEWED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#8B0000">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-md'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50649915214150199)
,p_name=>'P71_RAD_DETAIL_ROW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50599976423150103)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51398397044698584)
,p_name=>'P71_HISTORY_RADIATION_NO'
,p_item_sequence=>105
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51401702913698617)
,p_name=>'P71_PARAM_SITE_ID'
,p_item_sequence=>115
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53274280656444884)
,p_name=>'P71_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>135
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53274349391444885)
,p_name=>'P71_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>145
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53277629670444917)
,p_name=>'P71_PARAM_RADIATION_NO'
,p_item_sequence=>175
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58370866776252775)
,p_name=>'P71_PARAM_MRNO'
,p_item_sequence=>185
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58522007281528432)
,p_name=>'P71_UNIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
 p_id=>wwv_flow_imp.id(58522128459528433)
,p_name=>'P71_SERVICE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
 p_id=>wwv_flow_imp.id(58522188610528434)
,p_name=>'P71_SERVICE_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
 p_id=>wwv_flow_imp.id(58522286661528435)
,p_name=>'P71_RANK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
 p_id=>wwv_flow_imp.id(58522390046528436)
,p_name=>'P71_FORMATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(24125018809278095)
,p_item_source_plug_id=>wwv_flow_imp.id(24125018809278095)
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
 p_id=>wwv_flow_imp.id(58586388845528471)
,p_name=>'P71_USER_ROLE'
,p_item_sequence=>195
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58589232052528499)
,p_name=>'P71_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>215
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82577690254169929)
,p_name=>'P71_REQ_REMARKS'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(82577578646169928)
,p_prompt=>'<b><p style="color:#00008B">Request Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82577750915169930)
,p_name=>'P71_ANESTHESIA'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(82577578646169928)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#8B0000">Anesthesia</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82577989563169932)
,p_name=>'P71_ND_CHEMOTHERAPY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82577838488169931)
,p_prompt=>'<b><p style="color:#8B0000">Chemotherapy</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82578065568169933)
,p_name=>'P71_ND_CHEMOTHERAPY_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82577838488169931)
,p_prompt=>'<b><p style="color:#00008B">Chemotherapy Remarks</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116291284556168807)
,p_name=>'P71_TOTAL_DOSE'
,p_item_sequence=>65
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123904048316915681)
,p_name=>'P71_MSG'
,p_item_sequence=>75
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126550690569803477)
,p_name=>'P71_SIGN_CANCEL'
,p_item_sequence=>85
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126553192732803502)
,p_name=>'P71_ALERT_TEXT'
,p_item_sequence=>95
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771115578455976)
,p_name=>'P71_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
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
 p_id=>wwv_flow_imp.id(177771143789455977)
,p_name=>'P71_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
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
 p_id=>wwv_flow_imp.id(177771236495455978)
,p_name=>'P71_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
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
 p_id=>wwv_flow_imp.id(177771393184455979)
,p_name=>'P71_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771516583455980)
,p_name=>'P71_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771600000455981)
,p_name=>'P71_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771639913455982)
,p_name=>'P71_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771734111455983)
,p_name=>'P71_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771903681455984)
,p_name=>'P71_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177771996854455985)
,p_name=>'P71_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177772477636455990)
,p_name=>'P71_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177772585320455991)
,p_name=>'P71_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181495979285260356)
,p_name=>'P71_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(177699341562455900)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20728442201982173)
,p_name=>'PopulateRequestMaster'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20728968199982174)
,p_event_id=>wwv_flow_imp.id(20728442201982173)
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
'    INTO :P71_RADIATION_NO,',
'         :P71_RADIATION_DATE,',
'         :P71_MRNO,',
'         :P71_PATIENT_NAME,',
'         :P71_DISP_AGE,',
'         :P71_DISP_SEX,',
'         :P71_PRIORITY,',
'         :P71_REMARKS,',
'         :P71_DOCTOR_ID,',
'         :P71_DISP_DOCTOR,',
'         :P71_TREATMENT_INTENT_ID,',
'         :P71_DISP_TREATMENT_INTENT,',
'         :P71_ICDNO,',
'         :P71_DISP_DIAGNOSIS,',
'         :P71_STATUS_REQUEST,',
'         :P71_SIGN_BY_REQUEST,',
'         :P71_REQUEST_ENTERED_BY,',
'         :P71_ENTERED_BY_MRNO,',
'         :P71_ANAESTHESIA,',
'         :P71_CHEMOTHERAPY,',
'         :P71_CHEMOTHERAPY_REMARKS,',
'         :P71_SIMULATION_DATE,',
'         :P71_STATUS_DESC,',
'         :P71_ACTIVE_REQUEST,',
'         :P71_SIGN_BY,',
'         :P71_ROWID',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P71_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P71_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P71_MRNO IS NOT NULL THEN',
'            ''%'' || :P71_MRNO',
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
,p_attribute_02=>'P71_PARAM_RADIATION_NO,P71_MRNO'
,p_attribute_03=>'P71_RADIATION_NO,P71_RADIATION_DATE,P71_MRNO,P71_PATIENT_NAME,P71_DISP_AGE,P71_DISP_SEX,P71_PRIORITY,P71_REMARKS,P71_DOCTOR_ID,P71_DISP_DOCTOR,P71_TREATMENT_INTENT_ID,P71_DISP_TREATMENT_INTENT,P71_ICDNO,P71_DISP_DIAGNOSIS,P71_STATUS_REQUEST,P71_SIGN_'
||'BY_REQUEST,P71_REQUEST_ENTERED_BY,P71_ENTERED_BY_MRNO,P71_ANAESTHESIA,P71_ND_CHEMOTHERAPY,P71_ND_CHEMOTHERAPY_REMARKS,P71_SIMULATION_DATE,P71_STATUS_DESC,P71_ACTIVE_REQUEST,P71_SIGN_BY,P71_ROWID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20729437929982174)
,p_event_id=>wwv_flow_imp.id(20728442201982173)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50599443276150097)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20729937892982174)
,p_event_id=>wwv_flow_imp.id(20728442201982173)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101762055928225716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20746976256982181)
,p_name=>'SetRadiationDetailPK'
,p_event_sequence=>1
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(101762055928225716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20747402633982181)
,p_event_id=>wwv_flow_imp.id(20746976256982181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P71_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P71_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'$s(''P71_RADIATION_DETAIL_STATUS_ID'', _.raddetail.SITE_STATUS_ID);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20670388000543232)
,p_name=>'SetSiteStatusID'
,p_event_sequence=>2
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(101762055928225716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20670490410543233)
,p_event_id=>wwv_flow_imp.id(20670388000543232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P71_RADIATION_DETAIL_STATUS_ID'', _.raddetail.SITE_STATUS_ID);',
'$s(''P71_USER_ROLE'', _.raddetail.USER_ROLE);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20747836865982181)
,p_name=>'EnableDisableRADDetail'
,p_event_sequence=>4
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(101762055928225716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20748375603982182)
,p_event_id=>wwv_flow_imp.id(20747836865982181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
 p_id=>wwv_flow_imp.id(20748716004982182)
,p_name=>'EnableDisableRADDetailClick'
,p_event_sequence=>5
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(101762055928225716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20749219529982182)
,p_event_id=>wwv_flow_imp.id(20748716004982182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
 p_id=>wwv_flow_imp.id(20991973759094603)
,p_name=>'setFieldsThroughLoop'
,p_event_sequence=>6
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(101762055928225716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20992003009094604)
,p_event_id=>wwv_flow_imp.id(20991973759094603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'    apex.item("P71_RADIATION_DETAIL_STATUS_ID").setValue(model.getValue(this.data.selectedRecords[i], "SITE_STATUS_ID"));',
'    apex.item("P71_USER_ROLE").setValue(model.getValue(this.data.selectedRecords[i], "USER_ROLE"));',
'',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20731236113982175)
,p_name=>'ExportReport'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20718590607982164)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20731720102982175)
,p_event_id=>wwv_flow_imp.id(20731236113982175)
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
,p_attribute_02=>'GV_ORDER_LOCATION_ID,GV_CONNECTED_SERVER,GV_USER_MRNO,GV_TERMINAL,GV_PHYSICAL_LOCATION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20732240406982175)
,p_event_id=>wwv_flow_imp.id(20731236113982175)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {',
'    "P_RADIATION_NO": $v("P71_RADIATION_NO"),',
'    "P_LOCATION_ID": $v("GV_PHYSICAL_LOCATION_ID")',
'};',
'let object = {',
'    "OBJECTCODE": ''S18REP00066'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20732627555982175)
,p_name=>'CloseDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20720521024982165)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20733151640982175)
,p_event_id=>wwv_flow_imp.id(20732627555982175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20733531118982175)
,p_name=>'SaveRadiationSite'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20699165671982152)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20734056393982176)
,p_event_id=>wwv_flow_imp.id(20733531118982175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P71_RADIATION_DETAIL_STATUS_ID'', _.RAD_DETAIL.STATUS_ID);',
'$s(''P71_RADIATION_DETAIL_STATUS_ID'', ''&SITE_STATUS_ID.'');',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015" && $v("P71_RAD_DETAIL_DML_STATUS") == ''UPDATE'')) {',
'    apex.message.alert("Site is signed, cannot proceed");',
'    return;',
'}',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "009" && $v("P71_RAD_DETAIL_DML_STATUS") == ''UPDATE'')) {',
'    apex.message.alert("Site is cancelled, cannot proceed");',
'    return;',
'}',
'if ($v("P71_RAD_DETAIL_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertRadiationDetail");',
'}',
'else if ($v("P71_RAD_DETAIL_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateRadiationDetail");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20734495219982176)
,p_name=>'ExitSiteRegion'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20699941079982152)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20734976130982176)
,p_event_id=>wwv_flow_imp.id(20734495219982176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radiationsite'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20735310195982176)
,p_name=>'SetHistoryRadiationNo'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setradno'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20735823538982176)
,p_event_id=>wwv_flow_imp.id(20735310195982176)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_HISTORY_RADIATION_NO'
,p_attribute_01=>'this.triggeringElement.dataset[''radno'']'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20736275836982176)
,p_name=>'SetMRNO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20736719575982177)
,p_event_id=>wwv_flow_imp.id(20736275836982176)
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
'  IF :P71_MRNO IS NOT NULL THEN',
'    BEGIN',
'      -- CALL THE PROCEDURE',
'      HRD.SET_MRNO(P_TYPE       => ''PATIENT'',',
'                   P_DISP_MRNO  => :P71_MRNO,',
'                   P_MRNO       => :P71_MRNO,',
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
'  IF :P71_MRNO IS NOT NULL AND :P71_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION',
'        INTO :P71_PATIENT_NAME, :P71_DISP_AGE, :P71_DISP_SEX',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P71_MRNO',
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
,p_attribute_02=>'P71_MRNO'
,p_attribute_03=>'P71_MRNO,P71_PATIENT_NAME,P71_DISP_AGE,P71_DISP_SEX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20737144981982177)
,p_name=>'SetHistoryRadiationNo1'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(50604085419150144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20737676046982177)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_HISTORY_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20738190770982177)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P71_HISTORY_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20738674006982177)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RADIATION_DATE,P71_MRNO,P71_PATIENT_NAME,P71_DISP_AGE,P71_DISP_SEX,P71_PRIORITY,P71_DOCTOR_ID,P71_DISP_DOCTOR,P71_TREATMENT_INTENT_ID,P71_DISP_TREATMENT_INTENT,P71_ICDNO,P71_DISP_DIAGNOSIS,P71_SIGN_BY_REQUEST,P71_REQUEST_ENTERED_BY,P71_ENTERED_BY'
||'_MRNO,P71_ANAESTHESIA,P71_ND_CHEMOTHERAPY,P71_ND_CHEMOTHERAPY_REMARKS,P71_SIMULATION_DATE,P71_STATUS_DESC,P71_ACTIVE_REQUEST,P71_SIGN_BY,P71_STATUS_REQUEST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20739172627982178)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
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
'    INTO :P71_RADIATION_NO,',
'         :P71_RADIATION_DATE,',
'         :P71_MRNO,',
'         :P71_PATIENT_NAME,',
'         :P71_DISP_AGE,',
'         :P71_DISP_SEX,',
'         :P71_PRIORITY,',
'         :P71_REQ_REMARKS,',
'         :P71_DOCTOR_ID,',
'         :P71_DISP_DOCTOR,',
'         :P71_TREATMENT_INTENT_ID,',
'         :P71_DISP_TREATMENT_INTENT,',
'         :P71_ICDNO,',
'         :P71_DISP_DIAGNOSIS,',
'         :P71_STATUS_REQUEST,',
'         :P71_SIGN_BY_REQUEST,',
'         :P71_REQUEST_ENTERED_BY,',
'         :P71_ENTERED_BY_MRNO,',
'         :P71_ANESTHESIA,',
'         :P71_ND_CHEMOTHERAPY,',
'         :P71_ND_CHEMOTHERAPY_REMARKS,',
'         :P71_SIMULATION_DATE,',
'         :P71_STATUS_DESC,',
'         :P71_ACTIVE_REQUEST,',
'         :P71_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P71_HISTORY_RADIATION_NO;',
'     /*AND RM.MRNO LIKE CASE',
'           WHEN :P71_MRNO IS NOT NULL THEN',
'            ''%'' || :P71_MRNO',
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
,p_attribute_02=>'P71_HISTORY_RADIATION_NO,P71_MRNO'
,p_attribute_03=>'P71_RADIATION_DATE,P71_MRNO,P71_PATIENT_NAME,P71_DISP_AGE,P71_DISP_SEX,P71_PRIORITY,P71_DOCTOR_ID,P71_DISP_DOCTOR,P71_TREATMENT_INTENT_ID,P71_DISP_TREATMENT_INTENT,P71_ICDNO,P71_DISP_DIAGNOSIS,P71_SIGN_BY_REQUEST,P71_REQUEST_ENTERED_BY,P71_ENTERED_BY'
||'_MRNO,P71_ANAESTHESIA,P71_ND_CHEMOTHERAPY,P71_ND_CHEMOTHERAPY_REMARKS,P71_SIMULATION_DATE,P71_STATUS_DESC,P71_ACTIVE_REQUEST,P71_SIGN_BY,P71_RADIATION_NO,P71_STATUS_REQUEST,P71_REQ_REMARKS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20739669770982178)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50599443276150097)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20740170560982178)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("refreshImage");'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20740691333982178)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101762055928225716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20741146696982178)
,p_event_id=>wwv_flow_imp.id(20737144981982177)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
 p_id=>wwv_flow_imp.id(20742454261982179)
,p_name=>'DeleteRadiationSite'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20699579192982152)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20742980645982179)
,p_event_id=>wwv_flow_imp.id(20742454261982179)
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
'                pageItems: ["P71_RAD_DETAIL_RADIATION_NO",',
'                    "P71_RAD_DETAIL_ROW_ID",',
'                    "P71_RAD_DETAIL_SITE_ID",',
'                    "P71_RAD_DETAIL_PLANNING_ID",',
'                    "P71_RAD_DETAIL_TREATMENT_TECHNIQUE_ID",',
'                    "P71_RAD_DETAIL_P1_DOSE",',
'                    "P71_RAD_DETAIL_P1_FRACTION",',
'                    "P71_RAD_DETAIL_P2_DOSE",',
'                    "P71_RAD_DETAIL_P2_FRACTION",',
'                    "P71_RAD_DETAIL_P3_DOSE",',
'                    "P71_RAD_DETAIL_P3_FRACTION",',
'                    "P71_RAD_DETAIL_TOT_DOSE",',
'                    "P71_RAD_TREATMENT_LATER",',
'                    "P71_RAD_ACTIVE",',
'                    "P71_RAD_DETAIL_EVENT_DESC",',
'                    "P71_RAD_DETAIL_SIM_CT_ID",',
'                    "P71_RAD_DETAIL_SETUP_POSITION",',
'                    "P71_RAD_DETAIL_ARM_POSITION",',
'                    "P71_RAD_DETAIL_NECK_POSITION",',
'                    "P71_RAD_DETAIL_POSITION_INSTRUCTION",',
'                    "P71_RAD_DETAIL_ANAESTHESIA",',
'                    "P71_RAD_DETAIL_PATH_REVIEWED",',
'                    "P71_RAD_DETAIL_RAD_REVIEWED",',
'                    "P71_RAD_DETAIL_CONCURRENT_BRACHYTHERAPHY",',
'                    "P71_RAD_DETAIL_CT_INSTRUCTIONS"',
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
'                        apex.region(''raddetail'').refresh();',
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
 p_id=>wwv_flow_imp.id(20743377405982179)
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
 p_id=>wwv_flow_imp.id(20743895642982180)
,p_event_id=>wwv_flow_imp.id(20743377405982179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P71_RAD_DETAIL_RADIATION_NO",',
'            "P71_RAD_DETAIL_ROW_ID",',
'            "P71_RAD_DETAIL_SITE_ID",',
'            "P71_RAD_DETAIL_PLANNING_ID",',
'            "P71_RAD_MACHINE_ID",',
'            "P71_RAD_DETAIL_DOSE_PER_FRACTION",',
'            "P71_RAD_DETAIL_NO_OF_FRACTION",',
'            "P71_RAD_DETAIL_TOT_DOSE",',
'            "P71_RAD_ACTIVE",',
'            "P71_RAD_DETAIL_EVENT_DESC",',
'            "P71_RAD_DETAIL_PATH_REVIEWED",',
'            "P71_RAD_DETAIL_RAD_REVIEWED"',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20746075651982181)
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
 p_id=>wwv_flow_imp.id(20746571346982181)
,p_event_id=>wwv_flow_imp.id(20746075651982181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationDetail",',
'    {',
'        pageItems: ["P71_RAD_DETAIL_RADIATION_NO",',
'            "P71_RAD_DETAIL_ROW_ID",',
'            "P71_RAD_DETAIL_SITE_ID",',
'            "P71_RAD_DETAIL_PLANNING_ID",',
'            "P71_RAD_MACHINE_ID",',
'            "P71_RAD_DETAIL_DOSE_PER_FRACTION",',
'            "P71_RAD_DETAIL_NO_OF_FRACTION",',
'            "P71_RAD_DETAIL_TOT_DOSE",',
'            "P71_RAD_ACTIVE",',
'            "P71_RAD_DETAIL_EVENT_DESC",',
'            "P71_RAD_DETAIL_PATH_REVIEWED",',
'            "P71_RAD_DETAIL_RAD_REVIEWED"',
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
 p_id=>wwv_flow_imp.id(20751471679982183)
,p_name=>'SignRequest'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20718917066982164)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20670945313543238)
,p_event_id=>wwv_flow_imp.id(20751471679982183)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P71_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P71_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P71_DISP_MRNO    := (:P71_PATIENT_TYPE ||',
'                         LPAD(:P71_PATIENT_MRNO, 8, ''0''));',
'    :P71_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P71_DISP_MRNO);',
'    :P71_SIGN_STATUS  := ''S'';',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P71_PATIENT_MRNO,P71_PATIENT_TYPE,P71_DISP_MRNO,P71_NAME,P71_SIGN_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20671034880543239)
,p_event_id=>wwv_flow_imp.id(20751471679982183)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signinline");',
'apex.item("P71_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20753311686982184)
,p_name=>'Approve'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20721334372982165)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20993128408094615)
,p_event_id=>wwv_flow_imp.id(20753311686982184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P71_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P71_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P71_DISP_MRNO    := (:P71_PATIENT_TYPE ||',
'                         LPAD(:P71_PATIENT_MRNO, 8, ''0''));',
'    :P71_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P71_DISP_MRNO);',
'    :P71_SIGN_STATUS  := ''A'';',
'  END;'))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P71_PATIENT_MRNO,P71_PATIENT_TYPE,P71_DISP_MRNO,P71_NAME,P71_SIGN_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20993283162094616)
,p_event_id=>wwv_flow_imp.id(20753311686982184)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signinline");',
'apex.item("P71_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20755242951982184)
,p_name=>'Cancel'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20720920133982165)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20992900093094613)
,p_event_id=>wwv_flow_imp.id(20755242951982184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P71_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P71_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P71_DISP_MRNO    := (:P71_PATIENT_TYPE ||',
'                         LPAD(:P71_PATIENT_MRNO, 8, ''0''));',
'    :P71_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P71_DISP_MRNO);',
'    :P71_SIGN_STATUS  := ''C'';',
'  END;',
'',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P71_PATIENT_MRNO,P71_PATIENT_TYPE,P71_DISP_MRNO,P71_NAME,P71_SIGN_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20993081834094614)
,p_event_id=>wwv_flow_imp.id(20755242951982184)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signinline");',
'apex.item("P71_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20757123589982185)
,p_name=>'Clear'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20720170556982164)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20757610896982185)
,p_event_id=>wwv_flow_imp.id(20757123589982185)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101762055928225716)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20670699715543235)
,p_event_id=>wwv_flow_imp.id(20757123589982185)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20636572656111536)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20759142785982186)
,p_event_id=>wwv_flow_imp.id(20757123589982185)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RADIATION_NO,P71_RADIATION_DATE,P71_ICDNO,P71_TREATMENT_INTENT_ID,P71_SIMULATION_DATE,P71_DOCTOR_ID,P71_ND_CHEMOTHERAPY,P71_ND_CHEMOTHERAPY_REMARKS,P71_REQUEST_ENTERED_BY,P71_SIGN_BY_REQUEST,P71_STATUS_DESC,P71_PRIORITY,P71_REMARKS,P71_DISP_DOCTO'
||'R,P71_DISP_TREATMENT_INTENT,P71_STATUS_REQUEST,P71_ENTERED_BY_MRNO,P71_ANAESTHESIA,P71_SIGN_BY,P71_ACTIVE_REQUEST,P71_DISP_DIAGNOSIS,P71_HISTORY_RADIATION_NO,P71_ANESTHESIA,P71_REQ_REMARKS'
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
 p_id=>wwv_flow_imp.id(20759632353982186)
,p_event_id=>wwv_flow_imp.id(20757123589982185)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50604085419150144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20670727127543236)
,p_event_id=>wwv_flow_imp.id(20757123589982185)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50599443276150097)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20760198261982186)
,p_event_id=>wwv_flow_imp.id(20757123589982185)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
 p_id=>wwv_flow_imp.id(20761408961982187)
,p_name=>'SetTOTDose1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_DOSE_PER_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20761951645982187)
,p_event_id=>wwv_flow_imp.id(20761408961982187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P71_RAD_DETAIL_DOSE_PER_FRACTION, 0) * NVL(:P71_RAD_DETAIL_NO_OF_FRACTION, 0));'
,p_attribute_07=>'P71_RAD_DETAIL_DOSE_PER_FRACTION,P71_RAD_DETAIL_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20762335232982187)
,p_name=>'SetTOTDose2'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20762810222982187)
,p_event_id=>wwv_flow_imp.id(20762335232982187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P71_RAD_DETAIL_DOSE_PER_FRACTION, 0) * NVL(:P71_RAD_DETAIL_NO_OF_FRACTION, 0));'
,p_attribute_07=>'P71_RAD_DETAIL_DOSE_PER_FRACTION,P71_RAD_DETAIL_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20763237143982187)
,p_name=>'SetTOTDose3'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_P2_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20763707978982188)
,p_event_id=>wwv_flow_imp.id(20763237143982187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P71_RAD_DETAIL_P1_DOSE, 0) * NVL(:P71_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P2_DOSE, 0) * NVL(:P71_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P3_DOSE, 0) * NVL(:P71_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P71_RAD_DETAIL_P1_DOSE,P71_RAD_DETAIL_P1_FRACTION,P71_RAD_DETAIL_P2_DOSE,P71_RAD_DETAIL_P2_FRACTION,P71_RAD_DETAIL_P3_DOSE,P71_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20764127310982188)
,p_name=>'SetTOTDose4'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_P2_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20764619975982188)
,p_event_id=>wwv_flow_imp.id(20764127310982188)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P71_RAD_DETAIL_P1_DOSE, 0) * NVL(:P71_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P2_DOSE, 0) * NVL(:P71_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P3_DOSE, 0) * NVL(:P71_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P71_RAD_DETAIL_P1_DOSE,P71_RAD_DETAIL_P1_FRACTION,P71_RAD_DETAIL_P2_DOSE,P71_RAD_DETAIL_P2_FRACTION,P71_RAD_DETAIL_P3_DOSE,P71_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20765091432982188)
,p_name=>'SetTOTDose5'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_P3_DOSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20765533414982188)
,p_event_id=>wwv_flow_imp.id(20765091432982188)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P71_RAD_DETAIL_P1_DOSE, 0) * NVL(:P71_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P2_DOSE, 0) * NVL(:P71_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P3_DOSE, 0) * NVL(:P71_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P71_RAD_DETAIL_P1_DOSE,P71_RAD_DETAIL_P1_FRACTION,P71_RAD_DETAIL_P2_DOSE,P71_RAD_DETAIL_P2_FRACTION,P71_RAD_DETAIL_P3_DOSE,P71_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20765992149982189)
,p_name=>'SetTOTDose6'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_P3_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20766492788982189)
,p_event_id=>wwv_flow_imp.id(20765992149982189)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_RAD_DETAIL_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'RETURN  (NVL(:P71_RAD_DETAIL_P1_DOSE, 0) * NVL(:P71_RAD_DETAIL_P1_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P2_DOSE, 0) * NVL(:P71_RAD_DETAIL_P2_FRACTION, 0) +',
'       NVL(:P71_RAD_DETAIL_P3_DOSE, 0) * NVL(:P71_RAD_DETAIL_P3_FRACTION, 0)) ;',
'    '))
,p_attribute_07=>'P71_RAD_DETAIL_P1_DOSE,P71_RAD_DETAIL_P1_FRACTION,P71_RAD_DETAIL_P2_DOSE,P71_RAD_DETAIL_P2_FRACTION,P71_RAD_DETAIL_P3_DOSE,P71_RAD_DETAIL_P3_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20766844260982189)
,p_name=>'SerumCreatinineRequired'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_RAD_DETAIL_SIM_CT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20767300965982189)
,p_event_id=>wwv_flow_imp.id(20766844260982189)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20767801513982189)
,p_event_id=>wwv_flow_imp.id(20766844260982189)
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
'  RADIATION.PKG_RADIATION.ORDER_SERUM_CRETININE(:P71_RAD_DETAIL_SIM_CT_ID,',
'                                                :GV_USER_MRNO,',
'                                                L_ALERT_TEXT,',
'                                                L_STOP);',
'',
'  IF L_STOP IS NOT NULL AND :P71_RAD_DETAIL_DML_STATUS = ''CREATE'' THEN',
'    :P71_SEURM_CREATININE_ALERT := L_ALERT_TEXT;',
'  ELSE',
'    :P71_SEURM_CREATININE_ALERT := NULL;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'  ',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_SIM_CT_ID,P71_RAD_DETAIL_DML_STATUS'
,p_attribute_03=>'P71_SEURM_CREATININE_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20768363087982189)
,p_event_id=>wwv_flow_imp.id(20766844260982189)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P71_SEURM_CREATININE_ALERT.'
,p_attribute_06=>'Ok'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P71_SEURM_CREATININE_ALERT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20769647919982190)
,p_name=>'SetUserRole'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20770153470982190)
,p_event_id=>wwv_flow_imp.id(20769647919982190)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_USER_ROLE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO);'
,p_attribute_07=>'GV_USER_MRNO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20770554331982190)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20771088651982191)
,p_event_id=>wwv_flow_imp.id(20770554331982190)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P71_MRNO IS NOT NULL THEN',
'  ',
'    :P71_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P71_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P71_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P71_MRNO);',
'      :P71_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P71_MRNO);',
'      :P71_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P71_MRNO);',
'      :P71_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P71_MRNO);',
'      :P71_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P71_MRNO);',
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
,p_attribute_02=>'P71_MRNO'
,p_attribute_03=>'P71_SYSTEM_CONSTANT_ID_428,P71_SERVICE_NO,P71_SERVICE_STATUS,P71_RANK,P71_FORMATION,P71_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20771582210982191)
,p_event_id=>wwv_flow_imp.id(20770554331982190)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P71_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P71_SERVICE_NO").show();',
'    apex.item("P71_SERVICE_STATUS").show();',
'    apex.item("P71_RANK").show();',
'    apex.item("P71_FORMATION").show();',
'    apex.item("P71_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P71_SERVICE_NO").hide();',
'    apex.item("P71_SERVICE_STATUS").hide();',
'    apex.item("P71_RANK").hide();',
'    apex.item("P71_FORMATION").hide();',
'    apex.item("P71_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20771946353982191)
,p_name=>'RefreshRegion'
,p_event_sequence=>420
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20772403061982191)
,p_event_id=>wwv_flow_imp.id(20771946353982191)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(50604085419150144)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20772988978982191)
,p_event_id=>wwv_flow_imp.id(20771946353982191)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(101762055928225716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20775109936982192)
,p_name=>'PopulateDemographicsData'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20775698241982192)
,p_event_id=>wwv_flow_imp.id(20775109936982192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  IF :P71_MRNO IS NOT NULL OR :P71_RADIATION_NO IS NULL THEN',
'    BEGIN',
'      SELECT DISTINCT RP.NAME,',
'                      SUBSTR(REGISTRATION.AGEFUNC(DOB, SYSDATE), 1, 2) AGE,',
'                      DS.DESCRIPTION, TO_CHAR(SYSDATE, ''DD-MON-RR HH24:MI'')',
'        INTO :P71_PATIENT_NAME, :P71_DISP_AGE, :P71_DISP_SEX, :P71_RADIATION_DATE',
'        FROM REGISTRATION.PATIENT RP, DEFINITIONS.SEX DS',
'       WHERE MRNO = :P71_MRNO',
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
,p_attribute_02=>'P71_MRNO'
,p_attribute_03=>'P71_PATIENT_NAME,P71_DISP_AGE,P71_DISP_SEX,P71_RADIATION_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20776029241982192)
,p_name=>'DisableFieldsButtonsRadMaster'
,p_event_sequence=>460
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20776519697982193)
,p_event_id=>wwv_flow_imp.id(20776029241982192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
 p_id=>wwv_flow_imp.id(20669270095543221)
,p_name=>'DAOnTRTSite'
,p_event_sequence=>480
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(20636572656111536)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20669379533543222)
,p_event_id=>wwv_flow_imp.id(20669270095543221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P71_ON_TRT_RAD_NO'', _.on_trt_site.RADIATION_NO);',
'$s(''P71_ON_TRT_SITE_ID'', _.on_trt_site.SITE_ID);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20671142356543240)
,p_name=>'SetMRNO1'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20671202908543241)
,p_event_id=>wwv_flow_imp.id(20671142356543240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PASSWORD,P71_PATIENT_NAME,P71_DISP_MRNO,P71_SUCCESS_MSG,P71_ND_SUCCESS_MESSAGE,P71_ERROR,P71_ND_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20671350654543242)
,p_event_id=>wwv_flow_imp.id(20671142356543240)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P71_PATIENT_TYPE IS NOT NULL AND :P71_PATIENT_MRNO IS NOT NULL THEN',
'    :P71_DISP_MRNO := :P71_PATIENT_TYPE || LPAD(:P71_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P71_PATIENT_TYPE,P71_PATIENT_MRNO'
,p_attribute_03=>'P71_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20671428420543243)
,p_event_id=>wwv_flow_imp.id(20671142356543240)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P71_ERROR := NULL;',
'  IF :P71_PATIENT_MRNO IS NOT NULL THEN',
'    :P71_DISP_MRNO := :P71_PATIENT_TYPE || LPAD(:P71_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P71_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P71_ERROR        := ''This is not an active employee.'';',
'      :P71_PATIENT_MRNO := NULL;',
'      :P71_DISP_MRNO    := NULL;',
'      :P71_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P71_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P71_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P71_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P71_PATIENT_MRNO,P71_PATIENT_TYPE'
,p_attribute_03=>'P71_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20671615983543245)
,p_event_id=>wwv_flow_imp.id(20671142356543240)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P71_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P71_DISP_MRNO);'
,p_attribute_02=>'P71_DISP_MRNO'
,p_attribute_03=>'P71_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20671703275543246)
,p_name=>'DASuccessMsg'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_SUCCESS_MSG'
,p_condition_element=>'P71_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20671821452543247)
,p_event_id=>wwv_flow_imp.id(20671703275543246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P71_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20671943636543248)
,p_name=>'DAErrorMsg'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_ERROR'
,p_condition_element=>'P71_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20672071836543249)
,p_event_id=>wwv_flow_imp.id(20671943636543248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P71_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20992689166094610)
,p_name=>'CloseRegion'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22104566764781716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20992714743094611)
,p_event_id=>wwv_flow_imp.id(20992689166094610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(177699341562455900)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20993525920094619)
,p_name=>'SignHDRRequest'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22104991869781717)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20993609482094620)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
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
'  :P71_TXT_ALERT_TEXT := null;',
'  :P71_SUCCESS_MSG    := null;',
'  :P71_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P71_DISP_MRNO,',
'                                          :P71_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P71_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P71_VALIDATE'', ''Y'');',
'    :P71_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_DISP_MRNO,P71_PASSWORD'
,p_attribute_03=>'P71_SUCCESS_MSG,P71_ERROR,P71_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20993711183094621)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P71_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                   P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                   P_RADIATION_NO    => :P71_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID         => :P71_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_USER_MRNO       => :P71_DISP_MRNO,',
'                                                   P_OBJECT_CODE     => ''S18APX00041'',',
'                                                   P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                   P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                                   P_STOP            => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P71_ERROR    := L_ALERT_TEXT;',
'      :P71_VALIDATE := ''N'';',
'    ELSE',
'      :P71_SUCCESS_MSG := ''Brachytherapy request signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID,P71_DISP_MRNO,P71_VALIDATE'
,p_attribute_03=>'P71_ERROR,P71_VALIDATE,P71_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_SIGN_STATUS'
,p_client_condition_expression=>'S'
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
 p_id=>wwv_flow_imp.id(20994124387094625)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P71_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                   P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                   P_RADIATION_NO    => :P71_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID         => :P71_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_USER_MRNO       => :P71_DISP_MRNO,',
'                                                   P_OBJECT_CODE     => ''S18APX00041'',',
'                                                   P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                   P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                                   P_STOP            => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P71_ERROR    := L_ALERT_TEXT;',
'      :P71_VALIDATE := ''N'';',
'    ELSE',
'      :P71_SUCCESS_MSG := ''Brachytherapy request approved successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID,P71_DISP_MRNO,P71_VALIDATE'
,p_attribute_03=>'P71_ERROR,P71_VALIDATE,P71_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_SIGN_STATUS'
,p_client_condition_expression=>'A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20994234342094626)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P71_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P71_RAD_DETAIL_ND_RADIATION_NO,',
'                                                     P_MRNO              => :P71_MRNO,',
'                                                     P_SITE_ID           => :P71_RAD_DETAIL_ND_SITE_ID,',
'                                                     P_USER_MRNO         => :P71_DISP_MRNO,',
'                                                     P_AUTHORIZED_USER   => ''N'',',
'                                                     P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''ORGANIZATION_ID''),',
'                                                     P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''LOCATION_ID''),',
'                                                     P_ORDER_LOCATION_ID => ''001'',/*SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''ORDER_LOCATION_ID''),*/',
'                                                     P_OBJECT_CODE       => ''S18FRM00153'',--''S18APX00041'',',
'                                                     P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''TERMINAL''),',
'                                                     P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                     P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P71_ERROR    := L_ALERT_TEXT;',
'      :P71_VALIDATE := ''N'';',
'    ELSE',
'      :P71_SUCCESS_MSG := ''Brachytherapy request cancelled successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID,P71_DISP_MRNO,P71_VALIDATE,P71_MRNO'
,p_attribute_03=>'P71_ERROR,P71_VALIDATE,P71_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_SIGN_STATUS'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29496551778373605)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''rad_master'').refresh();',
'apex.region(''raddetail'').refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29496470743373604)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY',
'    INTO :P71_STATUS_REQUEST,',
'         :P71_SIGN_BY_REQUEST,',
'         :P71_STATUS_DESC,',
'         :P71_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P71_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P71_RADIATION_NO'
,p_attribute_03=>'P71_STATUS_REQUEST,P71_SIGN_BY_REQUEST,P71_STATUS_DESC,P71_SIGN_BY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29496703411373607)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT STATUS_ID',
'    INTO :P71_RADIATION_DETAIL_STATUS_ID',
'  ',
'    FROM RADIATION.RADIATION_DETAIL D',
'   WHERE D.RADIATION_NO = :P71_RAD_DETAIL_ND_RADIATION_NO',
'     AND D.SITE_ID = :P71_RAD_DETAIL_ND_SITE_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P71_RADIATION_DETAIL_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20994388234094627)
,p_event_id=>wwv_flow_imp.id(20993525920094619)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
'',
'',
'',
'',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28864287190953949)
,p_name=>'DAUserRole'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_USER_ROLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28864348457953950)
,p_event_id=>wwv_flow_imp.id(28864287190953949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
 p_id=>wwv_flow_imp.id(29497715988373617)
,p_name=>'DAPassword'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29497991035373619)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
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
'  :P71_TXT_ALERT_TEXT := null;',
'  :P71_SUCCESS_MSG    := null;',
'  :P71_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P71_DISP_MRNO,',
'                                          :P71_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P71_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P71_VALIDATE'', ''Y'');',
'    :P71_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_DISP_MRNO,P71_PASSWORD'
,p_attribute_03=>'P71_SUCCESS_MSG,P71_ERROR,P71_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498020515373620)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P71_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_REQUEST.SIGN_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                   P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                   P_RADIATION_NO    => :P71_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID         => :P71_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_USER_MRNO       => :P71_DISP_MRNO,',
'                                                   P_OBJECT_CODE     => ''S18APX00041'',',
'                                                   P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                   P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                                   P_STOP            => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P71_ERROR    := L_ALERT_TEXT;',
'      :P71_VALIDATE := ''N'';',
'    ELSE',
'      :P71_SUCCESS_MSG := ''Brachytherapy request signed successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID,P71_DISP_MRNO,P71_VALIDATE'
,p_attribute_03=>'P71_ERROR,P71_VALIDATE,P71_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498137848373621)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P71_VALIDATE = ''Y'' THEN',
'    BEGIN',
'    ',
'      RADIATION.PKG_REQUEST.APPROVE_RADIATION_REQUEST(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                   P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                   P_RADIATION_NO    => :P71_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID         => :P71_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_USER_MRNO       => :P71_DISP_MRNO,',
'                                                   P_OBJECT_CODE     => ''S18APX00041'',',
'                                                   P_TERMINAL        => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                   P_ALERT_TEXT      => L_ALERT_TEXT,',
'                                                   P_STOP            => L_STOP);',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P71_ERROR    := L_ALERT_TEXT;',
'      :P71_VALIDATE := ''N'';',
'    ELSE',
'      :P71_SUCCESS_MSG := ''Brachytherapy request approved successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID,P71_DISP_MRNO,P71_VALIDATE'
,p_attribute_03=>'P71_ERROR,P71_VALIDATE,P71_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_SIGN_STATUS'
,p_client_condition_expression=>'A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498220770373622)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P71_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      RADIATION.PKG_REQUEST.CANCEL_RADIATION_REQUEST(P_RADIATION_NO      => :P71_RAD_DETAIL_ND_RADIATION_NO,',
'                                                     P_MRNO              => :P71_MRNO,',
'                                                     P_SITE_ID           => :P71_RAD_DETAIL_ND_SITE_ID,',
'                                                     P_USER_MRNO         => :P71_DISP_MRNO,',
'                                                     P_AUTHORIZED_USER   => ''N'',',
'                                                     P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''ORGANIZATION_ID''),',
'                                                     P_LOCATION_ID       => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''LOCATION_ID''),',
'                                                     P_ORDER_LOCATION_ID => ''001'',/*SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''ORDER_LOCATION_ID''),*/',
'                                                     P_OBJECT_CODE       => ''S18FRM00153'',--''S18APX00041'',',
'                                                     P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                        ''TERMINAL''),',
'                                                     P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                     P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P71_ERROR    := L_ALERT_TEXT;',
'      :P71_VALIDATE := ''N'';',
'    ELSE',
'      :P71_SUCCESS_MSG := ''Brachytherapy request cancelled successfully'';',
'    ',
'    END IF;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID,P71_DISP_MRNO,P71_VALIDATE,P71_MRNO'
,p_attribute_03=>'P71_ERROR,P71_VALIDATE,P71_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_SIGN_STATUS'
,p_client_condition_expression=>'C'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498334364373623)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''rad_master'').refresh();',
'apex.region(''raddetail'').refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498483573373624)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT STATUS_REQUEST,',
'         SIGN_BY_REQUEST,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RM.STATUS_REQUEST) STATUS_DESC,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_REQUEST) || '' ('' ||',
'         SIGN_BY_REQUEST || '')'' SIGN_BY',
'    INTO :P71_STATUS_REQUEST,',
'         :P71_SIGN_BY_REQUEST,',
'         :P71_STATUS_DESC,',
'         :P71_SIGN_BY',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P71_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P71_RADIATION_NO'
,p_attribute_03=>'P71_STATUS_REQUEST,P71_SIGN_BY_REQUEST,P71_STATUS_DESC,P71_SIGN_BY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498554242373625)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT STATUS_ID',
'    INTO :P71_RADIATION_DETAIL_STATUS_ID',
'  ',
'    FROM RADIATION.RADIATION_DETAIL D',
'   WHERE D.RADIATION_NO = :P71_RAD_DETAIL_ND_RADIATION_NO',
'     AND D.SITE_ID = :P71_RAD_DETAIL_ND_SITE_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P71_RAD_DETAIL_ND_RADIATION_NO,P71_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P71_RADIATION_DETAIL_STATUS_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29498672888373626)
,p_event_id=>wwv_flow_imp.id(29497715988373617)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P71_STATUS_REQUEST") === "015") || ($v("P71_STATUS_REQUEST") === "009")) {',
'    apex.item("delete").disable();',
'    apex.item("save").disable();',
'    apex.item("P71_DOCTOR_ID").disable();',
'    apex.item("P71_TREATMENT_INTENT_ID").disable();',
'    apex.item("P71_ICDNO").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY").disable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").disable();',
'    apex.item("P71_ANESTHESIA").disable();',
'    apex.item("P71_SIMULATION_DATE").disable();',
'    apex.item("P71_REQ_REMARKS").disable();',
'}',
'else {',
'',
'    apex.item("delete").enable();',
'    apex.item("save").enable();',
'    apex.item("P71_DOCTOR_ID").enable();',
'    apex.item("P71_TREATMENT_INTENT_ID").enable();',
'    apex.item("P71_ICDNO").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY").enable();',
'    apex.item("P71_ND_CHEMOTHERAPY_REMARKS").enable();',
'    apex.item("P71_ANESTHESIA").enable();',
'    apex.item("P71_REQ_REMARKS").enable();',
'    apex.item("P71_SIMULATION_DATE").enable();',
'',
'}',
'',
'// Entry Status',
'if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "C")) {',
'',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "020") && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID").length == 0) && ($v("P71_USER_ROLE") === "R")) {',
'    apex.item("cancel").disable();',
'    apex.item("approve").disable();',
'    apex.item("sign").enable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Resident Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "021") && ($v("P71_USER_ROLE") === "C")) {',
'    apex.item("cancel").enable();',
'    apex.item("approve").enable();',
'    apex.item("sign").disable();',
'    apex.item("save").enable();',
'',
'}',
'',
'//  Consultant Signed',
'else if (($v("P71_RADIATION_DETAIL_STATUS_ID") === "015") && ($v("P71_USER_ROLE") === "C")) {',
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
'',
'',
'',
'',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P71_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20673826143982119)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24125018809278095)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'ProcessDMLRadiationRequest'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RADIATION_MASTER_TAB RADIATION.PKG_S18FRM00153.RADIATION_MASTER_TAB;',
'  L_MRNO                 RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'BEGIN',
'',
'  IF :P71_MRNO IS NOT NULL THEN',
'    L_MRNO := :P71_MRNO;',
'  END IF;',
'',
'  IF :P71_RADIATION_NO IS NULL THEN',
'    :P71_RADIATION_NO := RADIATION.PKG_RADIATION.GENERATE_RADIATION_NO(P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                        ''ORGANIZATION_ID''),',
'                                                                       P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                        ''LOCATION_ID''),',
'                                                                       P_REQUEST_DATE    => NVL(TO_DATE(:P71_RADIATION_DATE,',
'                                                                                                        ''DD-MON-YY HH24:MI''),',
'                                                                                                TO_DATE(SYSDATE,',
'                                                                                                        ''DD-MON-YY HH24:MI'')));',
'  ',
'    :P71_PARAM_MRNO := :P71_MRNO;',
'  END IF;',
'',
'  SELECT :P71_RADIATION_NO RADIATION_NO,',
'         NVL(TO_DATE(:P71_RADIATION_DATE, ''DD-MON-YY HH24:MI''),',
'             TO_DATE(SYSDATE, ''DD-MON-YY HH24:MI'')) RADIATION_DATE,',
'         :P71_MRNO MRNO,',
'         :P71_PATIENT_NAME PATIENT_NAME,',
'         :P71_DISP_AGE DISP_AGE,',
'         :P71_DISP_SEX DISP_GENDER,',
'         NVL(:P71_PRIORITY, ''S'') PRIORITY,',
'         :P71_REQ_REMARKS REMARKS,',
'         :P71_DOCTOR_ID DOCTOR_ID,',
'         :P71_DISP_DOCTOR DISP_DOCTOR,',
'         :P71_TREATMENT_INTENT_ID TREATMENT_INTENT_ID,',
'         :P71_DISP_TREATMENT_INTENT DISP_TREATMENT_INTENT,',
'         :P71_ICDNO ICDNO,',
'         :P71_DISP_DIAGNOSIS DISP_DIAGNOSIS,',
'         NVL(:P71_STATUS_REQUEST, ''020'') STATUS_REQUEST,',
'         :P71_SIGN_BY_REQUEST SIGN_BY_REQUEST,',
'         :P71_REQUEST_ENTERED_BY REQUEST_ENTERED_BY,',
'         :P71_ENTERED_BY_MRNO ENTERED_BY_MRNO,',
'         NVL(:P71_ANESTHESIA, ''N'') ANAESTHESIA,',
'         NVL(:P71_ND_CHEMOTHERAPY, ''N'') CHEMOTHERAPY,',
'         :P71_ND_CHEMOTHERAPY_REMARKS CHEMOTHERAPY_REMARKS,',
'         :P71_SIMULATION_DATE SIMULATION_DATE,',
'         :P71_STATUS_DESC STATUS_DESC,',
'         :P71_ACTIVE_REQUEST ACTIVE_REQUEST',
'  ',
'    BULK COLLECT',
'    INTO L_RADIATION_MASTER_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      -----------',
'      -- Insert',
'      -----------',
'      BEGIN',
'        RADIATION.PKG_S18FRM00153.INSERT_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'      ',
'      END;',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      BEGIN',
'        RADIATION.PKG_S18FRM00153.UPDATE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'      END;',
'    WHEN ''D'' THEN',
'    ',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        RADIATION.PKG_S18FRM00153.DELETE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'      END;',
'    ',
'  END CASE;',
'',
'  :P71_PARAM_RADIATION_NO := :P71_RADIATION_NO;',
'  :P71_MRNO               := L_MRNO;',
'',
'  IF :P71_ALERT_TEXT IS NOT NULL THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => :P71_ALERT_TEXT,',
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
,p_internal_uid=>20673826143982119
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
 p_id=>wwv_flow_imp.id(20668861116543217)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20636572656111536)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'On Treatment Site(s) - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT               NUMBER := 0;',
'  L_RAD_REQ_HISTORY_TAB RADIATION.PKG_S18FRM00153.RAD_REQ_HISTORY_TAB;',
'',
'BEGIN',
'',
'  SELECT :RADIATION_NO,',
'         :MRNO,',
'         :SITE_ID,',
'         :DISP_SITE,',
'         :EVENT_DESC,',
'         :TOTAL_FRACTIONS,',
'         :PERFORMED_FRACTIONS,',
'         :ACTIVE,',
'         :LINK_WITH,',
'         :PERFORM_AFTER_FRACTION_NO',
'  ',
'    BULK COLLECT',
'    INTO L_RAD_REQ_HISTORY_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'    ',
'      NULL;',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      RADIATION.PKG_S18FRM00153.UPDATE_RAD_REQ_HISTORY(L_RAD_REQ_HISTORY_TAB,',
'                                                       :RADIATION_NO,',
'                                                       :SITE_ID);',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      NULL;',
'    ',
'  END CASE;',
'',
'  :P2_PAGE_STATE := ''KEEP_CURSOR'';',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20668861116543217
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20992378270094607)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(101762055928225716)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Radiotherapy Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20992378270094607
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20728017021982172)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P71_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>20728017021982172
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20726465366982170)
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
'         SIGN_BY_REQUEST || '')'' SIGN_BY,',
'         RADIATION.PKG_REQUEST.GET_USER_ROLE(P_USER_MRNO => :GV_USER_MRNO)',
'    INTO :P71_RADIATION_NO,',
'         :P71_RADIATION_DATE,',
'         :P71_MRNO,',
'         :P71_PATIENT_NAME,',
'         :P71_DISP_AGE,',
'         :P71_DISP_SEX,',
'         :P71_PRIORITY,',
'         :P71_REQ_REMARKS,',
'         :P71_DOCTOR_ID,',
'         :P71_DISP_DOCTOR,',
'         :P71_TREATMENT_INTENT_ID,',
'         :P71_DISP_TREATMENT_INTENT,',
'         :P71_ICDNO,',
'         :P71_DISP_DIAGNOSIS,',
'         :P71_STATUS_REQUEST,',
'         :P71_SIGN_BY_REQUEST,',
'         :P71_REQUEST_ENTERED_BY,',
'         :P71_ENTERED_BY_MRNO,',
'         :P71_ANESTHESIA,',
'         :P71_ND_CHEMOTHERAPY,',
'         :P71_ND_CHEMOTHERAPY_REMARKS,',
'         :P71_SIMULATION_DATE,',
'         :P71_STATUS_DESC,',
'         :P71_ACTIVE_REQUEST,',
'         :P71_SIGN_BY,',
'         :P71_USER_MRNO',
'  ',
'    FROM RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO =',
'         NVL(:P71_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P71_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''B''))',
'     AND RM.MRNO LIKE CASE',
'           WHEN :P71_MRNO IS NOT NULL THEN',
'            ''%'' || :P71_MRNO',
'           ELSE',
'            RM.MRNO',
'         END',
'     AND RM.RADIOTHERAPY_TYPE = ''B''',
'   ORDER BY RM.RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>20726465366982170
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20727683604982171)
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
'  P_BLOCK_DATA RADIATION.PKG_S18FRM00153.RAD_MASTER_DETAIL;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  BEGIN',
'    SELECT :P71_RAD_DETAIL_RADIATION_NO RADIATION_NO,',
'           :P71_RAD_DETAIL_SITE_ID SITE_ID,',
'           NULL DISP_SITE,',
'           NULL SIM_CT_ID,',
'           NULL TREATMENT_TECHNIQUE_ID,',
'           (SELECT PLANNING_PREFIX',
'              FROM RADIATION.PLANNING',
'             WHERE PLANNING_ID = :P71_RAD_DETAIL_PLANNING_ID) PLANNING,',
'           :P71_RAD_DETAIL_PLANNING_ID PLANNING_ID,',
'           NULL DISP_PLANNING,',
'           :P71_RAD_ACTIVE ACTIVE,',
'           NULL WFE_NO,',
'           NULL EVENT_DESC,',
'           ''020'' STATUS_ID,',
'           NULL STATUS_DESC,',
'           NULL ISOTOPE_ID,',
'           NULL DISP_ISOTOPE,',
'           :P71_RAD_MACHINE_ID MACHINE_ID,',
'           NULL DISP_MACHINE,',
'           :GV_USER_MRNO ENTERED_BY,',
'           NULL REQUEST_ENTERED_BY,',
'           :P71_RAD_DETAIL_DOSE_PER_FRACTION DOSE_FRACTION,',
'           :P71_RAD_DETAIL_NO_OF_FRACTION NO_OF_FRACTION,',
'           NULL SIGN_BY,',
'           :P71_RAD_DETAIL_PATH_REVIEWED PATH_REVIEWED,',
'           :P71_RAD_DETAIL_RAD_REVIEWED RAD_REVIEWED',
'    ',
'      BULK COLLECT',
'      INTO P_BLOCK_DATA',
'      FROM DUAL;',
'  ',
'  END;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00153.INSERT_RADIATION_DETAIL(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'  ',
'    -- Update',
'    RADIATION.PKG_S18FRM00153.UPDATE_RADIATION_DETAIL(P_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00153.DELETE_RADIATION_DETAIL(P_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'',
'  CASE L_STATUS',
'    WHEN ''CREATE'' THEN',
'      APEX_JSON.WRITE(''response'', ''Radiotheraphy Site added successfully.'');',
'    WHEN ''UPDATE'' THEN',
'      APEX_JSON.WRITE(''response'',',
'                      ''Radiotheraphy Site updated successfully.'');',
'    WHEN ''DELETE'' THEN',
'      APEX_JSON.WRITE(''response'',',
'                      ''Radiotheraphy Site deleted successfully.'');',
'  END CASE;',
'',
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
,p_internal_uid=>20727683604982171
);
wwv_flow_imp.component_end;
end;
/

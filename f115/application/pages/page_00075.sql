prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
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
 p_id=>75
,p_name=>'RAD_HDR_PLAN'
,p_alias=>'RAD-HDR-PLAN'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_HDR_PLAN'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function resize() {',
'    if ($(window).width() < 739) {',
'        $("#default").toggleClass(''classold classnew'');',
'    }',
'    else {',
'        $("#default").toggleClass(''classold classold'');',
'    }',
'}',
'$(window).on("resize", resize);',
'',
'',
'',
'function editSpecialInstruction() {',
'',
'    apex.theme.openRegion(''regspecinstr'');',
'',
'};',
'',
'function insertSpecialInstruction() {',
'',
'    apex.server.process("processSpecialInstruction",',
'        {',
'',
'            pageItems: ["P74_FRACTION_NO",',
'                "P74_NEW_SPECIAL_INSTRUCTION",',
'                "P74_SPEC_INS_RADIATION_NO",',
'                "P74_SPEC_INS_SITE_ID",',
'                "P74_SPEC_INS_PHASE_NO"',
'            ],',
'',
'            x01: ''CREATE''',
'',
'        },',
'        {',
'            dataType: ''text'',',
'            success: function (data) {',
'',
'                var obj = JSON.parse(data);',
'                console.log(data);',
'                console.log(obj);',
'                if (obj.status == "success") {',
'                    apex.message.alert(obj.response, function () {',
'                    }, {',
'                        title: "Success",',
'                        style: "success",',
'                        iconClasses: "fa fa-check fa-2x",',
'                        okLabel: "Ok"',
'                    });',
'                    apex.region(''specinstr'').refresh();',
'                    apex.theme.closeRegion(''regspecinstr'');',
'                }',
'                else {',
'                    apex.message.alert(obj.response, function () {',
'                        //afterLoad();',
'                    }, {',
'                        title: "Error",',
'                        style: "warning",',
'                        iconClasses: "fa fa-warning fa-2x",',
'                        okLabel: "Ok"',
'                    });',
'                }',
'            }',
'        }',
'    )',
'};',
'',
'function updateSpecialInstruction() {',
'',
'    apex.server.process("processSpecialInstruction",',
'        {',
'',
'            pageItems: ["P74_FRACTION_NO",',
'                "P74_NEW_SPECIAL_INSTRUCTION",',
'                "P74_SPEC_INS_RADIATION_NO",',
'                "P74_SPEC_INS_SITE_ID",',
'                "P74_SPEC_INS_PHASE_NO"',
'            ],',
'',
'            x01: ''UPDATE''',
'',
'        },',
'        {',
'            dataType: ''text'',',
'            success: function (data) {',
'',
'                var obj = JSON.parse(data);',
'                console.log(data);',
'                console.log(obj);',
'                if (obj.status == "success") {',
'                    apex.message.alert(obj.response, function () {',
'                    }, {',
'                        title: "Success",',
'                        style: "success",',
'                        iconClasses: "fa fa-check fa-2x",',
'                        okLabel: "Ok"',
'                    });',
'                    apex.region(''specinstr'').refresh();',
'                    apex.theme.closeRegion(''regspecinstr'');',
'                }',
'                else {',
'                    apex.message.alert(obj.response, function () {',
'                        //afterLoad();',
'                    }, {',
'                        title: "Error",',
'                        style: "warning",',
'                        iconClasses: "fa fa-warning fa-2x",',
'                        okLabel: "Ok"',
'                    });',
'                }',
'            }',
'        }',
'    )',
'};',
'',
'function deleteSpecialInstruction() {',
'',
'    apex.message.confirm(''Please confirm you want to delete Special Instruction?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("processSpecialInstruction",',
'                {',
'',
'                    pageItems: ["P74_FRACTION_NO",',
'                        "P74_NEW_SPECIAL_INSTRUCTION",',
'                        "P74_SPEC_INS_RADIATION_NO",',
'                        "P74_SPEC_INS_SITE_ID",',
'                        "P74_SPEC_INS_PHASE_NO"',
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
'                            apex.region(''specinstr'').refresh();',
'                            apex.theme.closeRegion(''regspecinstr'');',
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
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P65_UNIT").hide();',
'apex.item("P65_SERVICE_NO").hide();',
'apex.item("P65_SERVICE_STATUS").hide();',
'apex.item("P65_RANK").hide();',
'apex.item("P65_FORMATION").hide();',
'',
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
'',
'',
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radplanchecklist .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#radcheckdtl .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'/*#radchecklistdtl .a-GV-table td, #radchecklistdtl .a-GV-table th {',
'',
'    white-space: normal;',
'',
'}*/',
'',
'#radhdrplan .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#report_image_report img{',
'	height: 150px;',
'    width:  100px;',
'',
'}',
'',
'#specinstr .a-GV-status {',
'',
'    display: none;',
'',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OWAIS'
,p_last_upd_yyyymmddhh24miss=>'20240307150409'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23747849648715341)
,p_plug_name=>'<b><p style="color:#8B0000">Plan Sign</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>74
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45355906909210843)
,p_plug_name=>'<b><p style="color:#8B0000">Dose</p></b>'
,p_region_template_options=>'t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>54
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46273556756621836)
,p_plug_name=>'<b><p style="color:#8B0000">Brachytherapy Implant Insertion</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>14
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67843863296154403)
,p_plug_name=>'<b><p style="color:#8B0000">HDR Plan Remarks</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>384
,p_plug_grid_column_span=>6
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68046417444978695)
,p_plug_name=>'Brachytherapy Plan'
,p_region_name=>'radhdrplan'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>44
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RP.RADIATION_NO,',
'       RP.SITE_ID,',
'       RP.FROM_FRACTION_ID,',
'       RP.TO_FRACTION_ID,',
'       RP.PLAN_ID AS PLAN_ID,',
'       RP.PI_DOCTOR_ID1,',
'       RP.PTV_COVERAGE,',
'       RP.DOSE_TO_OAR,',
'       RP.CI,',
'       RP.INSTRUCTIONS,',
'       RP.STATUS_ID AS STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RP.STATUS_ID) AS STATUS_DESC,',
'       RP.FREQUENCY_ID,',
'       (SELECT DTF.DESCRIPTION',
'          FROM RADIATION.DEF_TREATMENT_FREQUENCY DTF',
'         WHERE DTF.FREQUENCY_ID = RP.FREQUENCY_ID) AS FREQUENCY_DESC,',
'       RP.SIGN_DATE AS SIGN_DATE,',
'       RP.SIGN_BY_CONSULTANT1,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RP.SIGN_BY_CONSULTANT1) AS SIGN_BY_CONSULT1_DESC,',
'       RP.SIGN_BY_CONSULTANT2,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RP.SIGN_BY_CONSULTANT2) AS SIGN_BY_CONSULT2_DESC,',
'       RP.SIGN_BY_PHYSICIST1,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RP.SIGN_BY_PHYSICIST1) AS SIGN_BY_PHYS1_DESC,',
'       RP.SIGN_BY_PHYSICIST2,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RP.SIGN_BY_PHYSICIST2) AS SIGN_BY_PHYS2_DESC,',
'       I.INSERTION_ID INSERTION_ID,',
'       (SELECT A.DESCRIPTION',
'          FROM RADIATION.APPLICATOR A',
'         WHERE A.APPLICATOR_ID = I.APPLICATOR_ID) APPLICATOR,',
'       (SELECT S.DESCRIPTION',
'          FROM RADIATION.APPLICATOR_SIZE S',
'         WHERE S.APPLICATOR_ID = I.APPLICATOR_ID',
'           AND S.APPLICATOR_SIZE_ID = I.APPLICATOR_SIZE_ID) APPLICATOR_SIZE,',
'       I.EXAM_SPEC_VAGINUM,',
'       I.REMARKS IMPLANT_REMARKS,',
'       (SELECT P.DESCRIPTION',
'          FROM RADIATION.PLANNING P',
'         WHERE P.PLANNING_ID = I.PLANNING_ID) DISP_PLLANNING,',
'       TO_CHAR(I.SIGN_DATE, ''DD-MM-RRRR HH24:MI'') IMPLANT_SIGN_DATE,',
'       I.PLANNING_ID,',
'       RP.DOCUMENT_ID,',
'       PATH_REVIEWED,',
'       RAD_REVIEWED,',
'       RP.IMPLANT_ADEQUACY,',
'       RP.TRT_DECISION,',
'       RP.ROWID',
'  FROM RADIATION.RAD_PLAN RP, RADIATION.RAD_IMPLANT_INSERT I',
' WHERE RP.RADIATION_NO = :P75_RAD_DETAIL_ND_RADIATION_NO',
'   AND RP.SITE_ID = :P75_RAD_DETAIL_ND_SITE_ID',
'   AND RP.STATUS_ID <> ''248''',
'   AND RP.RADIATION_NO = I.RADIATION_NO',
'   AND RP.SITE_ID = I.SITE_ID',
'   AND RP.INSERTION_ID = I.INSERTION_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P75_RAD_DETAIL_ND_RADIATION_NO,P75_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Brachytherapy Plan'
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
 p_id=>wwv_flow_imp.id(46272332358621823)
,p_heading=>'<b><p style="color:#8B0000">Fraction Id</p></b>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23744389454715306)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>Plan Id</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(23744454597715307)
,p_name=>'PI_DOCTOR_ID1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PI_DOCTOR_ID1'
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
 p_id=>wwv_flow_imp.id(23744522252715308)
,p_name=>'PTV_COVERAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PTV_COVERAGE'
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
 p_id=>wwv_flow_imp.id(23744641258715309)
,p_name=>'DOSE_TO_OAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_TO_OAR'
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
 p_id=>wwv_flow_imp.id(23744730809715310)
,p_name=>'CI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CI'
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
 p_id=>wwv_flow_imp.id(23744861163715311)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
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
 p_id=>wwv_flow_imp.id(23744928239715312)
,p_name=>'FREQUENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_ID'
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
 p_id=>wwv_flow_imp.id(23745041602715313)
,p_name=>'FREQUENCY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_DESC'
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
 p_id=>wwv_flow_imp.id(23745121464715314)
,p_name=>'SIGN_BY_CONSULTANT1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULTANT1'
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
 p_id=>wwv_flow_imp.id(23745282849715315)
,p_name=>'SIGN_BY_CONSULT1_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULT1_DESC'
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
 p_id=>wwv_flow_imp.id(23745363540715316)
,p_name=>'SIGN_BY_CONSULTANT2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULTANT2'
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
 p_id=>wwv_flow_imp.id(23745470734715317)
,p_name=>'SIGN_BY_CONSULT2_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULT2_DESC'
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
 p_id=>wwv_flow_imp.id(23745552326715318)
,p_name=>'SIGN_BY_PHYSICIST1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYSICIST1'
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
 p_id=>wwv_flow_imp.id(23745675635715319)
,p_name=>'SIGN_BY_PHYS1_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYS1_DESC'
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
 p_id=>wwv_flow_imp.id(23745779822715320)
,p_name=>'SIGN_BY_PHYSICIST2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYSICIST2'
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
 p_id=>wwv_flow_imp.id(23745836059715321)
,p_name=>'SIGN_BY_PHYS2_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYS2_DESC'
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
 p_id=>wwv_flow_imp.id(23746034601715323)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
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
 p_id=>wwv_flow_imp.id(23746128367715324)
,p_name=>'DOCUMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENT_ID'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(23746243696715325)
,p_name=>'PATH_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATH_REVIEWED'
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
 p_id=>wwv_flow_imp.id(23746353413715326)
,p_name=>'RAD_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_REVIEWED'
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
 p_id=>wwv_flow_imp.id(23746455343715327)
,p_name=>'IMPLANT_ADEQUACY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPLANT_ADEQUACY'
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
 p_id=>wwv_flow_imp.id(23746591702715328)
,p_name=>'TRT_DECISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRT_DECISION'
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
 p_id=>wwv_flow_imp.id(23746610921715329)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23746767841715330)
,p_name=>'DISP_PLLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45353020459210814)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>From</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(46272332358621823)
,p_use_group_for=>'BOTH'
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
 p_id=>wwv_flow_imp.id(45353125077210815)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b>To </b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_imp.id(46272332358621823)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'toFractionId'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45354160822210826)
,p_name=>'INSERTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERTION_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(45354273117210827)
,p_name=>'APPLICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATOR'
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
 p_id=>wwv_flow_imp.id(45354428841210828)
,p_name=>'APPLICATOR_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATOR_SIZE'
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
 p_id=>wwv_flow_imp.id(45354457334210829)
,p_name=>'EXAM_SPEC_VAGINUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXAM_SPEC_VAGINUM'
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
 p_id=>wwv_flow_imp.id(45354582030210830)
,p_name=>'IMPLANT_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPLANT_REMARKS'
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
 p_id=>wwv_flow_imp.id(45354738792210832)
,p_name=>'IMPLANT_SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPLANT_SIGN_DATE'
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
 p_id=>wwv_flow_imp.id(68046730636978698)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(68046795607978699)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(68048759737978719)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b>Date</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>16
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68049154717978723)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b>Status</b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68313227516817416)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(68046520720978696)
,p_internal_uid=>68046520720978696
,p_is_editable=>false
,p_lazy_loading=>false
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>275
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(68053575291985456)
,p_interactive_grid_id=>wwv_flow_imp.id(68046520720978696)
,p_static_id=>'220773'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(68053829244985456)
,p_report_id=>wwv_flow_imp.id(68053575291985456)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23787812514747975)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(23744389454715306)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126.08600000000001
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23788716252747977)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(23744454597715307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23789680944747980)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(23744522252715308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23790587189747982)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(23744641258715309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23791466459747985)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(23744730809715310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23792379737747987)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(23744861163715311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23793293006747990)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(23744928239715312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23794169772747995)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(23745041602715313)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23795055409747999)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(23745121464715314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23795972165748003)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(23745282849715315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23796810480748007)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(23745363540715316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23797752346748011)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(23745470734715317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23798657529748015)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(23745552326715318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23799582710748020)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(23745675635715319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23800447293748024)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(23745779822715320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23801368088748027)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(23745836059715321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23803133789748036)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(23746034601715323)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23804099144748040)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(23746128367715324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23804917301748044)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(23746243696715325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23805851987748048)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(23746353413715326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23806733264748052)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(23746455343715327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23807651181748056)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(23746591702715328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23808425343748060)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(23746610921715329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23825985182764921)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(23746767841715330)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46122659604747504)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(45353020459210814)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46123563752747508)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(45353125077210815)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46133380866747556)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(45354160822210826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46134267339747559)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(45354273117210827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46135233365747564)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(45354428841210828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46136108992747569)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(45354457334210829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46136951884747573)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(45354582030210830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46138755535747583)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(45354738792210832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68054317755985459)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(68046730636978698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68055175824985464)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(68046795607978699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68073241256985518)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(68048759737978719)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68076813880985529)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(68049154717978723)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68537555302218688)
,p_view_id=>wwv_flow_imp.id(68053829244985456)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(68313227516817416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46270149189621802)
,p_plug_name=>'Brachytherapy Plan Sub Region'
,p_parent_plug_id=>wwv_flow_imp.id(68046417444978695)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68049606867978727)
,p_plug_name=>'<b><p style="color:#8B0000">Current Machine</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>374
,p_plug_new_grid_row=>false
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82578122005169934)
,p_plug_name=>'<b><p style="color:#8B0000">Treatment Decision</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>64
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105799898336659659)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P75_MRNO,:P75_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P75_MRNO'
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
 p_id=>wwv_flow_imp.id(105799951621659660)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>105799951621659660
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105800056098659661)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105800208642659662)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'MRNO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105800312210659663)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(106333456710388715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'172056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:REQUEST_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111423116273043715)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>84
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113180071094846325)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>94
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143972747646266124)
,p_plug_name=>'Brachytherapy Plan'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>8
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
'          ROWID,',
'          ANAESTHESIA,',
'          REMARKS,',
'          HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => DOCTOR_ID) DOCTOR_MRNO',
'     FROM RADIATION.RADIATION_MASTER M;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P75_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(153781910510647593)
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
' WHERE MRNO = :P75_MRNO;',
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
,p_ajax_items_to_submit=>'P75_MRNO'
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
 p_id=>wwv_flow_imp.id(23484870782600905)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(23485217622600905)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(23485679471600905)
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
 p_id=>wwv_flow_imp.id(153782310270647597)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'       PLANNING,',
'       RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'       P1_DOSE_FRACTION,',
'       P1_NO_OF_FRACTION,',
'       P2_DOSE_FRACTION,',
'       P2_NO_OF_FRACTION,',
'       P3_DOSE_FRACTION,',
'       P3_NO_OF_FRACTION,',
'       TREATMENT_LATER,',
'       ACTIVE,',
'       WFE_NO,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                       P_SITE_ID      => SITE_ID,',
'                                                       P_WFE_NO       => WFE_NO) EVENT_DESC,',
'       PLANNING_ID,',
'       RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                   P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'       RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                  P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'       RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                 P_SITE_ID      => RD.SITE_ID) -',
'       RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                       P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'       (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'       NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'       NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOT_DOSE,',
'       RD.DOSE_FRACTION DOSE_FRACTION,',
'       RD.NO_OF_FRACTION,',
'       NVL((SELECT ''N''',
'             FROM RADIATION.RAD_PLAN RP',
'            WHERE RP.RADIATION_NO = RD.RADIATION_NO',
'              AND RP.SITE_ID = RD.SITE_ID',
'              AND RP.PLAN_TYPE = ''I''',
'              AND RP.STATUS_ID <> ''020''',
'              AND ROWNUM = 1),',
'           ''Y'') PLANNING_UPD_ALLOWED',
'  FROM RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P75_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P75_PARAM_SITE_ID, RD.SITE_ID)',
'   AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                             P_SITE_ID             => RD.SITE_ID,',
'                                             P_PERFORMANCE_TYPE_ID => ''014'') = ''Y''',
'   AND ((:P75_SCHEDULE_SRNO IS NOT NULL AND EXISTS',
'        (SELECT 1',
'            FROM RADIATION.SCHEDULE S',
'           WHERE S.SR_NO = :P75_SCHEDULE_SRNO',
'             AND S.RADIATION_NO = RD.RADIATION_NO',
'             AND S.SITE_ID = RD.SITE_ID)) OR',
'       (:P75_SCHEDULE_SRNO IS NULL AND RD.SITE_ID = :P75_SCHEDULE_SRNO) OR',
'       (:P75_SCHEDULE_SRNO IS NULL AND :P75_SCHEDULE_SRNO IS NULL AND',
'       RD.SITE_ID = RD.SITE_ID));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P75_PARAM_SITE_ID,P75_PHASE_RADIATION_NO,P75_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(23285070776337622)
,p_name=>'PLANNING_UPD_ALLOWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_UPD_ALLOWED'
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
 p_id=>wwv_flow_imp.id(67650332196281243)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose Fraction'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(67650358234281244)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No Of Fraction(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(105802430245659684)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Dose(cGy)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(153782686034647600)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(153782757554647601)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(153782799940647602)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(153782971810647603)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
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
 p_id=>wwv_flow_imp.id(153783030655647604)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Planning Technique'
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
 p_id=>wwv_flow_imp.id(153783165578647605)
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
 p_id=>wwv_flow_imp.id(153783254051647606)
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
 p_id=>wwv_flow_imp.id(153783336916647607)
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
 p_id=>wwv_flow_imp.id(153783433745647608)
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
 p_id=>wwv_flow_imp.id(153783505107647609)
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
 p_id=>wwv_flow_imp.id(153783664370647610)
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
 p_id=>wwv_flow_imp.id(153783701070647611)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
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
 p_id=>wwv_flow_imp.id(153783862786647612)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
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
 p_id=>wwv_flow_imp.id(153783976128647613)
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
 p_id=>wwv_flow_imp.id(153784001571647614)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(153784125338647615)
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
 p_id=>wwv_flow_imp.id(153784279034647616)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(153784344268647617)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(153784472273647618)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(153782439908647598)
,p_internal_uid=>153782439908647598
,p_is_editable=>false
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
,p_fixed_header_max_height=>158
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(154387041396805948)
,p_interactive_grid_id=>wwv_flow_imp.id(153782439908647598)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(154387226578805950)
,p_report_id=>wwv_flow_imp.id(154387041396805948)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23600352839650446)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(23285070776337622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67840337863154129)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(67650332196281243)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104.85900000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67841206320154132)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(67650358234281244)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123.84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(106474954463835140)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(105802430245659684)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.957
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154387611253805951)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(153782686034647600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154388575710805954)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(153782757554647601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154389484368805957)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(153782799940647602)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>255.99200000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154390372393805959)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(153782971810647603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154391199966805962)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(153783030655647604)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.973
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154392176942805967)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(153783165578647605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154393057408805970)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(153783254051647606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154393968459805977)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(153783336916647607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154394841937805979)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(153783433745647608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154395740366805982)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(153783505107647609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154396676021805985)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(153783664370647610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154397535011805987)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(153783701070647611)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154398450175805991)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(153783862786647612)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154399318881805995)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(153783976128647613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154400264176805998)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(153784001571647614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.402
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154401103674806001)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(153784125338647615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154401994065806004)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(153784279034647616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.94399999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154402974881806011)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(153784344268647617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154403823942806013)
,p_view_id=>wwv_flow_imp.id(154387226578805950)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(153784472273647618)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200286044765696295)
,p_plug_name=>'Sign '
,p_region_name=>'signhdrplan'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>114
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23541479745600957)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_imp.id(111423116273043715)
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
 p_id=>wwv_flow_imp.id(23541865036600957)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_imp.id(111423116273043715)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23542696953600957)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(113180071094846325)
,p_button_name=>'CreatePlan'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Plan'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23543078322600958)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(113180071094846325)
,p_button_name=>'DisposePlan'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Plan'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23541064922600957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(23747849648715341)
,p_button_name=>'SignConsultant'
,p_button_static_id=>'SignConsultant'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23748743780715350)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(113180071094846325)
,p_button_name=>'TreatmentAbort'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Treatment Abort'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23748665742715349)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(23747849648715341)
,p_button_name=>'SignPhysicist'
,p_button_static_id=>'SignPhysicist'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23496307839600921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(200286044765696295)
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
 p_id=>wwv_flow_imp.id(23496738820600921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_button_name=>'SignHDRPlan'
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
 p_id=>wwv_flow_imp.id(23285113198337623)
,p_name=>'P75_ND_ANAESTHESIA'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#8B0000">Anesthesia</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>' (p_attributes): onclick="return false;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23285593284337627)
,p_name=>'P75_PERFORMED_NO_OF_FRACTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#8B0000">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Performed </p></b><b><p style="color:#00008B">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Fraction(s)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23285706225337629)
,p_name=>'P75_PLAN_DOSE_FRACTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#8B0000">&ensp;&ensp;&ensp;Plan </p></b><b><p style="color:#00008B">&ensp;&ensp;Dose(s)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23285842314337630)
,p_name=>'P75_PLAN_FRACTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#8B0000">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Plan </p></b><b><p style="color:#00008B">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Fraction(s)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23285920745337631)
,p_name=>'P75_PLAN_TOT_DOSE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Plan </p></b><b><p style="color:#00008B">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp; Total Dose(cGy)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23746805731715331)
,p_name=>'P75_PHASE_RADIATION_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23746975821715332)
,p_name=>'P75_PHASE_SITE_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747064107715333)
,p_name=>'P75_PHASE_PLAN_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747188765715334)
,p_name=>'P75_PHASE_PHASE_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747326682715336)
,p_name=>'P75_PLAN_ID'
,p_item_sequence=>324
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747466669715337)
,p_name=>'P75_DOSE_TO_OAR'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(46270149189621802)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Dose To OAR</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747590186715338)
,p_name=>'P75_PTV_COVERAGE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(46270149189621802)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Ptv Coverage</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747682170715339)
,p_name=>'P75_PATH_REVIEWED'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(46270149189621802)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747768576715340)
,p_name=>'P75_RAD_REVIEWED'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_imp.id(46270149189621802)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747953654715342)
,p_name=>'P75_TRT_DECISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82578122005169934)
,p_item_default=>'Y'
,p_prompt=>'<b><p style="color:#00008B">Treatment Decision:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Procced to Treat;Y,Do not Treat;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23748083151715343)
,p_name=>'P75_IMPLANT_ADEQUACY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(82578122005169934)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Implant Adequacy</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23748272222715345)
,p_name=>'P75_SIGN_BY_CONSULTANT1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23747849648715341)
,p_prompt=>'<b><p style="color:#00008B">Primary Consultant:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23748379980715346)
,p_name=>'P75_SIGN_BY_CONSULTANT1_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23747849648715341)
,p_prompt=>'Sign By Consultant1 Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23748475951715347)
,p_name=>'P75_SIGN_BY_PHYSICIST1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(23747849648715341)
,p_prompt=>'<b><p style="color:#00008B">Primary Physicist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23748558599715348)
,p_name=>'P75_SIGN_BY_PHYSICIST1_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(23747849648715341)
,p_prompt=>'Sign By Physicist1 Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24157544816501301)
,p_name=>'P75_ALERT'
,p_item_sequence=>344
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24157682979501302)
,p_name=>'P75_SUCCESS_MESSAGE'
,p_item_sequence=>354
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24158688431501312)
,p_name=>'P75_SIGN_FLAG'
,p_item_sequence=>364
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24159658567501322)
,p_name=>'P75_DOCTOR_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_source=>'DOCTOR_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24159983169501325)
,p_name=>'P75_SIGN_BY_CONSULTANT1_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24160017283501326)
,p_name=>'P75_SIGN_BY_PHYSICIST1_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24160197928501327)
,p_name=>'P75_FIRST_CONSULTANT_MRNO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(24160208299501328)
,p_name=>'P75_FIRST_PHYSICIST_MRNO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24160316880501329)
,p_name=>'P75_FINAL_SIGN_SUCCESS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45393683414210880)
,p_name=>'P75_PLAN_ID_ND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67843863296154403)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Plan ID:</p></b>'
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
 p_id=>wwv_flow_imp.id(46297268238621832)
,p_name=>'P75_PERFORMED_DOSE_FRACTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45355906909210843)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#8B0000">Performed </p></b><b><p style="color:#00008B">&ensp;&ensp;Dose(s)</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46297311497621833)
,p_name=>'P75_IMPLANT_REMARKS'
,p_item_sequence=>52
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#00008B">Implant Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46310264355621880)
,p_name=>'P75_IMPLANT_INSERTION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#00008B">Insertion Id:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46310424191621881)
,p_name=>'P75_IMP_INSERTION_TIME'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#00008B">Insertion Time:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46310482683621882)
,p_name=>'P75_PLANNING'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#00008B">Planning:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46310581448621883)
,p_name=>'P75_APPLICATOR'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#00008B">Applicator:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46310695496621884)
,p_name=>'P75_APPLICATOR_SIZE'
,p_item_sequence=>42
,p_item_plug_id=>wwv_flow_imp.id(46273556756621836)
,p_prompt=>'<b><p style="color:#00008B">Applicator Size:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46323541982621865)
,p_name=>'P75_PLAN_REMARKS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(46270149189621802)
,p_prompt=>'<b><p style="color:#00008B">Instruction / Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>11
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46332090310621895)
,p_name=>'P75_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>284
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46826957883938566)
,p_name=>'P75_ND_IMPLANT_INSERTION_ID'
,p_item_sequence=>294
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46827045109938567)
,p_name=>'P75_PHY_PLAN_ID'
,p_item_sequence=>304
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46827604409938572)
,p_name=>'P75_CHECK_SIGN'
,p_item_sequence=>314
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67689087154281317)
,p_name=>'P75_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67689205005281318)
,p_name=>'P75_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68118208416978818)
,p_name=>'P75_CURRENT_MACHINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(68049606867978727)
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68158306115978834)
,p_name=>'P75_SCHEDULE_SRNO'
,p_item_sequence=>244
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68423581862817540)
,p_name=>'P75_CT_SRNO'
,p_item_sequence=>254
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68423656645817541)
,p_name=>'P75_CT_SCHEDULE_DATE'
,p_item_sequence=>264
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68424102523817545)
,p_name=>'P75_SCHEDULE_EVENT_ID'
,p_item_sequence=>274
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82578248988169935)
,p_name=>'P75_REQUEST_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82578122005169934)
,p_prompt=>'<b><p style="color:#00008B">Request Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106000626209659901)
,p_name=>'P75_PARAM_RADIATION_NO'
,p_item_sequence=>134
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106001602589659911)
,p_name=>'P75_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>224
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106392116467157072)
,p_name=>'P75_QUERY_NEW'
,p_item_sequence=>234
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111685599376044000)
,p_name=>'P75_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>154
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111685673599044001)
,p_name=>'P75_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>164
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111686297323044007)
,p_name=>'P75_RAD_PLAN_CHECK_ID'
,p_item_sequence=>174
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111687022236044014)
,p_name=>'P75_SIGN_STATUS'
,p_item_sequence=>184
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113952837868608809)
,p_name=>'P75_RAD_PLAN_CHECK_DML_STATUS'
,p_item_sequence=>214
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113953258032608814)
,p_name=>'P75_PARAM_SR_NO'
,p_item_sequence=>124
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116475025769354071)
,p_name=>'P75_PARAM_MRNO'
,p_item_sequence=>144
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144084350422266291)
,p_name=>'P75_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(144084447008266292)
,p_name=>'P75_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>3
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
 p_id=>wwv_flow_imp.id(153891894609647743)
,p_name=>'P75_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
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
 p_id=>wwv_flow_imp.id(153892007696647744)
,p_name=>'P75_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_prompt=>'<b><p style="color:#00008B">Patient Name:</p></b>'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>3
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
 p_id=>wwv_flow_imp.id(153892127859647745)
,p_name=>'P75_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
 p_id=>wwv_flow_imp.id(153892207831647746)
,p_name=>'P75_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
 p_id=>wwv_flow_imp.id(153892247902647747)
,p_name=>'P75_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153892405664647748)
,p_name=>'P75_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(153892543739647749)
,p_name=>'P75_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(153892762407647752)
,p_name=>'P75_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153892931999647753)
,p_name=>'P75_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
 p_id=>wwv_flow_imp.id(153892990370647754)
,p_name=>'P75_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
 p_id=>wwv_flow_imp.id(153893057613647755)
,p_name=>'P75_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153893180780647756)
,p_name=>'P75_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
 p_id=>wwv_flow_imp.id(153893298310647757)
,p_name=>'P75_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(143972747646266124)
,p_item_source_plug_id=>wwv_flow_imp.id(143972747646266124)
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
 p_id=>wwv_flow_imp.id(154045238652647886)
,p_name=>'P75_PARAM_SITE_ID'
,p_item_sequence=>104
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156404944876631103)
,p_name=>'P75_ALERT_TEXT'
,p_item_sequence=>204
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200302814164696343)
,p_name=>'P75_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
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
 p_id=>wwv_flow_imp.id(200302842375696344)
,p_name=>'P75_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
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
 p_id=>wwv_flow_imp.id(200302935081696345)
,p_name=>'P75_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
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
 p_id=>wwv_flow_imp.id(200303091770696346)
,p_name=>'P75_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
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
 p_id=>wwv_flow_imp.id(200303215169696347)
,p_name=>'P75_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200303298586696348)
,p_name=>'P75_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200303338499696349)
,p_name=>'P75_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200303432697696350)
,p_name=>'P75_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200303602267696351)
,p_name=>'P75_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200303695440696352)
,p_name=>'P75_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200304176222696357)
,p_name=>'P75_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200304283906696358)
,p_name=>'P75_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(204027677871500723)
,p_name=>'P75_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(200286044765696295)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23552601844600966)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(153782310270647597)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23553193515600967)
,p_event_id=>wwv_flow_imp.id(23552601844600966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $s(''P75_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'// $s(''P75_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P75_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'apex.item("P75_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'}',
'//apex.region("radplanchecklist").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23553630632600967)
,p_event_id=>wwv_flow_imp.id(23552601844600966)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68046417444978695)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23554092329600967)
,p_name=>'SignFirstConsultant'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23541064922600957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23554526009600968)
,p_event_id=>wwv_flow_imp.id(23554092329600967)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_PASSWORD,P75_FIRST_CONSULTANT_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24101616165176717)
,p_event_id=>wwv_flow_imp.id(23554092329600967)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_SIGN_BY_CONSULTANT1_STATUS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23555048134600968)
,p_event_id=>wwv_flow_imp.id(23554092329600967)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P75_PATIENT_MRNO   := LPAD(SUBSTR(:P75_DOCTOR_MRNO, 7), 8, ''0'');',
'    :P75_PATIENT_TYPE   := SUBSTR(:P75_DOCTOR_MRNO, 0, 6);',
'    :P75_DISP_MRNO      := (:P75_PATIENT_TYPE ||',
'                           LPAD(:P75_PATIENT_MRNO, 8, ''0''));',
'    :P75_NAME           := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P75_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'P75_DOCTOR_MRNO'
,p_attribute_03=>'P75_PATIENT_MRNO,P75_PATIENT_TYPE,P75_DISP_MRNO,P75_NAME'
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
 p_id=>wwv_flow_imp.id(23555555966600968)
,p_event_id=>wwv_flow_imp.id(23554092329600967)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signhdrplan");',
'apex.item("P75_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23555989563600968)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23541865036600957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23556444785600968)
,p_event_id=>wwv_flow_imp.id(23555989563600968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23556848026600968)
,p_name=>'HistoryDA'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(105799898336659659)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23557300621600968)
,p_event_id=>wwv_flow_imp.id(23556848026600968)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P75_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23557860002600969)
,p_event_id=>wwv_flow_imp.id(23556848026600968)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'         ANAESTHESIA,',
'         HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => DOCTOR_ID) DOCTOR_MRNO',
'    INTO :P75_RADIATION_NO,',
'         :P75_RADIATION_DATE,',
'         :P75_MRNO,',
'         :P75_PATIENT_NAME,',
'         :P75_DISP_AGE,',
'         :P75_DISP_GENDER,',
'         :P75_DOCTOR_ID,',
'         :P75_DISP_DOCTOR,',
'         :P75_DISP_INTENT,',
'         :P75_ND_ANAESTHESIA,',
'         :P75_DOCTOR_MRNO',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = NVL(:P75_PARAM_RADIATION_NO, RADIATION_NO)',
'     AND MRNO LIKE CASE',
'           WHEN :P75_MRNO IS NOT NULL THEN',
'            ''%'' || :P75_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P75_PARAM_RADIATION_NO'
,p_attribute_03=>'P75_PHASE_RADIATION_NO,P75_RADIATION_DATE,P75_MRNO,P75_PATIENT_NAME,P75_DISP_AGE,P75_DISP_GENDER,P75_DOCTOR_ID,P75_DISP_DOCTOR,P75_DISP_INTENT,P75_ND_ANAESTHESIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23558360963600969)
,p_event_id=>wwv_flow_imp.id(23556848026600968)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153781910510647593)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23558824222600969)
,p_event_id=>wwv_flow_imp.id(23556848026600968)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153782310270647597)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23559203448600969)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23559744863600969)
,p_event_id=>wwv_flow_imp.id(23559203448600969)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P75_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P75_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P75_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P75_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P75_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P75_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
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
,p_attribute_02=>'P75_SERVICE_NO,P75_SERVICE_STATUS,P75_RANK,P75_FORMATION,P75_UNIT'
,p_attribute_03=>'P75_SYSTEM_CONSTANT_ID_428'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23560274294600970)
,p_event_id=>wwv_flow_imp.id(23559203448600969)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P75_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P75_SERVICE_NO").show();',
'    apex.item("P75_SERVICE_STATUS").show();',
'    apex.item("P75_RANK").show();',
'    apex.item("P75_FORMATION").show();',
'    apex.item("P75_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P75_SERVICE_NO").hide();',
'    apex.item("P75_SERVICE_STATUS").hide();',
'    apex.item("P75_RANK").hide();',
'    apex.item("P75_FORMATION").hide();',
'    apex.item("P75_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23560633988600970)
,p_name=>'DASuccessMessage'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_SUCCESS_MSG'
,p_condition_element=>'P75_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23561181823600970)
,p_event_id=>wwv_flow_imp.id(23560633988600970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P75_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23561542838600970)
,p_name=>'DAError'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_ERROR'
,p_condition_element=>'P75_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23562001476600970)
,p_event_id=>wwv_flow_imp.id(23561542838600970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P75_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23562424933600970)
,p_name=>'EnableDisableDA'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23562919502600971)
,p_event_id=>wwv_flow_imp.id(23562424933600970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P75_SIGN_STATUS") === "015") || ($v("P75_SIGN_STATUS") === "248")) {',
'    apex.item("save").disable();',
'    apex.item("SignConsultant").disable();',
'    apex.item("SignPhysicist").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'    apex.item("P75_DOSE_TO_OAR").disable();',
'    apex.item("P75_PTV_COVERAGE").disable();',
'    apex.item("P75_PLAN_REMARKS").disable();',
'    apex.item("P75_PATH_REVIEWED").disable();',
'    apex.item("P75_RAD_REVIEWED").disable();',
'    apex.item("P75_TRT_DECISION").disable();',
'    apex.item("P75_IMPLANT_ADEQUACY").disable();',
'',
'}',
'else {',
'    apex.item("save").enable();',
'    apex.item("SignConsultant").enable();',
'    apex.item("SignPhysicist").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'    apex.item("P75_DOSE_TO_OAR").enable();',
'    apex.item("P75_PTV_COVERAGE").enable();',
'    apex.item("P75_PLAN_REMARKS").enable();',
'    apex.item("P75_PATH_REVIEWED").enable();',
'    apex.item("P75_RAD_REVIEWED").enable();',
'    apex.item("P75_TRT_DECISION").enable();',
'    apex.item("P75_IMPLANT_ADEQUACY").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23563372381600971)
,p_name=>'SetMRNO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23565819761600972)
,p_event_id=>wwv_flow_imp.id(23563372381600971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_NAME,P75_PASSWORD,P75_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23566300019600972)
,p_event_id=>wwv_flow_imp.id(23563372381600971)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P75_PATIENT_TYPE IS NOT NULL AND :P75_PATIENT_MRNO IS NOT NULL THEN',
'    :P75_DISP_MRNO := :P75_PATIENT_TYPE || LPAD(:P75_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P75_PATIENT_TYPE,P75_PATIENT_MRNO'
,p_attribute_03=>'P75_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23563821409600971)
,p_event_id=>wwv_flow_imp.id(23563372381600971)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P75_ERROR := NULL;',
'  IF :P75_PATIENT_MRNO IS NOT NULL THEN',
'    :P75_DISP_MRNO := :P75_PATIENT_TYPE || LPAD(:P75_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P75_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P75_ERROR        := ''This is not an active employee.'';',
'      :P75_PATIENT_MRNO := NULL;',
'      :P75_DISP_MRNO    := NULL;',
'      :P75_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P75_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P75_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P75_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P75_PATIENT_MRNO,P75_PATIENT_TYPE'
,p_attribute_03=>'P75_DISP_MRNO,P75_ERROR,P75_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23564313704600971)
,p_event_id=>wwv_flow_imp.id(23563372381600971)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P75_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P75_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23564895497600971)
,p_event_id=>wwv_flow_imp.id(23563372381600971)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P75_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P75_DISP_MRNO);'
,p_attribute_02=>'P75_DISP_MRNO'
,p_attribute_03=>'P75_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23565329402600971)
,p_event_id=>wwv_flow_imp.id(23563372381600971)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_PASSWORD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23566731627600972)
,p_name=>'DAHDRPlan'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68046417444978695)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23567276381600972)
,p_event_id=>wwv_flow_imp.id(23566731627600972)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P75_PLAN_REMARKS'', _.radhdrplan.RAD_PLAN_REMARKS);',
'$s(''P75_PLAN_ID'', _.radhdrplan.PLAN_ID);',
'$s(''P75_CURRENT_MACHINE'', _.radhdrplan.MACHINE_DESC);',
'$s(''P75_IMPLANT_REMARKS'', _.radhdrplan.IMPLANT_REMARKS);',
'$s(''P75_IMPLANT_INSERTION_ID'', _.radhdrplan.INSERTION_ID);',
'$s(''P75_IMP_INSERTION_TIME'', _.radhdrplan.IMPLANT_SIGN_DATE);',
'$s(''P75_PLANNING'', _.radhdrplan.DISP_PLLANNING);',
'$s(''P75_APPLICATOR'', _.radhdrplan.APPLICATOR);',
'$s(''P75_APPLICATOR_SIZE'', _.radhdrplan.APPLICATOR_SIZE);',
'$s(''P75_ND_IMPLANT_INSERTION_ID'', _.radhdrplan.INSERTION_ID);',
'$s(''P75_PHY_PLAN_ID'', _.radhdrplan.RAD_PLAN_ID);',
'$s(''P75_SIGN_STATUS'', _.radhdrplan.STATUS_ID);',
'$s(''P75_DOSE_TO_OAR'', _.radhdrplan.DOSE_TO_OAR);',
'$s(''P75_PTV_COVERAGE'', _.radhdrplan.PTV_COVERAGE);',
'$s(''P75_PLAN_REMARKS'', _.radhdrplan.INSTRUCTIONS);',
'$s(''P75_PATH_REVIEWED'', _.radhdrplan.PATH_REVIEWED);',
'$s(''P75_RAD_REVIEWED'', _.radhdrplan.RAD_REVIEWED);',
'$s(''P75_SIGN_BY_CONSULTANT1'', _.radhdrplan.SIGN_BY_CONSULTANT1);',
'$s(''P75_SIGN_BY_CONSULTANT1_NAME'', _.radhdrplan.SIGN_BY_CONSULT1_DESC);',
'$s(''P75_SIGN_BY_PHYSICIST1'', _.radhdrplan.SIGN_BY_PHYSICIST1);',
'$s(''P75_SIGN_BY_PHYSICIST1_NAME'', _.radhdrplan.SIGN_BY_PHYS1_DESC);',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23567724760600972)
,p_event_id=>wwv_flow_imp.id(23566731627600972)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P75_SIGN_STATUS") === "015") || ($v("P75_SIGN_STATUS") === "248")) {',
'    apex.item("save").disable();',
'    apex.item("SignConsultant").disable();',
'    apex.item("SignPhysicist").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'    apex.item("P75_DOSE_TO_OAR").disable();',
'    apex.item("P75_PTV_COVERAGE").disable();',
'    apex.item("P75_PLAN_REMARKS").disable();',
'    apex.item("P75_PATH_REVIEWED").disable();',
'    apex.item("P75_RAD_REVIEWED").disable();',
'    apex.item("P75_TRT_DECISION").disable();',
'    apex.item("P75_IMPLANT_ADEQUACY").disable();',
'',
'}',
'else {',
'    apex.item("save").enable();',
'    apex.item("SignConsultant").enable();',
'    apex.item("SignPhysicist").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'    apex.item("P75_DOSE_TO_OAR").enable();',
'    apex.item("P75_PTV_COVERAGE").enable();',
'    apex.item("P75_PLAN_REMARKS").enable();',
'    apex.item("P75_PATH_REVIEWED").enable();',
'    apex.item("P75_RAD_REVIEWED").enable();',
'    apex.item("P75_TRT_DECISION").enable();',
'    apex.item("P75_IMPLANT_ADEQUACY").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23747206613715335)
,p_event_id=>wwv_flow_imp.id(23566731627600972)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RPD.RADIATION_NO,',
'         ',
'         RPD.SITE_ID,',
'         ',
'         RPD.PLAN_ID,',
'         ',
'         RPD.PHASE_NO,',
'         ',
'         NVL(RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RPD.RADIATION_NO,',
'                                                        P_SITE_ID      => RPD.SITE_ID),',
'             0) AS PERFORMED_DOSE_FRACTION,',
'         ',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RPD.RADIATION_NO,',
'                                                         P_SITE_ID      => RPD.SITE_ID) AS PERFORMED_NO_OF_FRACTION,',
'         ',
'         RPD.PLAN_DOSE AS PLAN_DOSE_FRACTION,',
'         ',
'         RPD.PHASE_NO AS PLAN_NO_OF_FRACTION,',
'         ',
'         NVL(RPD.PLAN_DOSE, 0) * NVL(RPD.PHASE_NO, 0)',
'  ',
'    INTO :P75_PHASE_RADIATION_NO,',
'         :P75_PHASE_SITE_ID,',
'         :P75_PHASE_PLAN_ID,',
'         :P75_PHASE_PHASE_NO,',
'         :P75_PERFORMED_DOSE_FRACTION,',
'         :P75_PERFORMED_NO_OF_FRACTION,',
'         :P75_PLAN_DOSE_FRACTION,',
'         :P75_PLAN_FRACTION,',
'         :P75_PLAN_TOT_DOSE',
'    FROM RADIATION.RAD_PLAN_DETAIL RPD',
'   WHERE RPD.RADIATION_NO = :P75_RAD_DETAIL_ND_RADIATION_NO',
'     AND RPD.SITE_ID = :P75_RAD_DETAIL_ND_SITE_ID',
'     AND RPD.PLAN_ID = :P75_PLAN_ID',
'     AND RPD.PHASE_NO = (SELECT MAX(PD.PHASE_NO)',
'                           FROM RADIATION.RAD_PLAN_DETAIL PD',
'                          WHERE PD.RADIATION_NO = RPD.RADIATION_NO',
'                            AND PD.SITE_ID = RPD.SITE_ID',
'                            AND PD.PLAN_ID = RPD.PLAN_ID);',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P75_RAD_DETAIL_ND_RADIATION_NO,P75_RAD_DETAIL_ND_SITE_ID,P75_PLAN_ID'
,p_attribute_03=>'P75_PHASE_RADIATION_NO,P75_PHASE_SITE_ID,P75_PHASE_PLAN_ID,P75_PHASE_PHASE_NO,P75_PERFORMED_DOSE_FRACTION,P75_PERFORMED_NO_OF_FRACTION,P75_PLAN_DOSE_FRACTION,P75_PLAN_FRACTION,P75_PLAN_TOT_DOSE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23568695909600973)
,p_name=>'DATXTAlertText'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_TXT_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23569192160600973)
,p_event_id=>wwv_flow_imp.id(23568695909600973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P75_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23569552506600973)
,p_name=>'SetMRNO1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_PATIENT_MRNO_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23570083389600973)
,p_event_id=>wwv_flow_imp.id(23569552506600973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_NAME_1,P75_PASSWORD_1,P75_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23570590063600973)
,p_event_id=>wwv_flow_imp.id(23569552506600973)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P75_PATIENT_TYPE_1 IS NOT NULL AND :P75_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P75_DISP_MRNO_1 := :P75_PATIENT_TYPE_1 || LPAD(:P75_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P75_PATIENT_TYPE_1,P75_PATIENT_MRNO_1'
,p_attribute_03=>'P75_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23571017363600974)
,p_event_id=>wwv_flow_imp.id(23569552506600973)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P75_ERROR := NULL;',
'  IF :P75_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P75_DISP_MRNO_1 := :P75_PATIENT_TYPE_1 || LPAD(:P75_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P75_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P75_ERROR        := ''This is not an active employee.'';',
'      :P75_PATIENT_MRNO_1 := NULL;',
'      :P75_DISP_MRNO_1    := NULL;',
'      :P75_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P75_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P75_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P75_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P75_PATIENT_MRNO_1,P75_PATIENT_TYPE_1'
,p_attribute_03=>'P75_DISP_MRNO_1,P75_ERROR,P75_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23571551851600974)
,p_event_id=>wwv_flow_imp.id(23569552506600973)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&&P75_ERROR.'
,p_attribute_02=>'System Message'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P75_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23572062375600974)
,p_event_id=>wwv_flow_imp.id(23569552506600973)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P75_NAME_1:= his.pkg_patient.GET_PATIENT_NAME(:P75_DISP_MRNO_1);'
,p_attribute_02=>'P75_DISP_MRNO_1'
,p_attribute_03=>'P75_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23574284137600975)
,p_name=>'SignHDRPlan'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23496738820600921)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23575751998600975)
,p_event_id=>wwv_flow_imp.id(23574284137600975)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT  VARCHAR2(4000);',
'  L_STOP        VARCHAR2(1);',
'  L_RETURN_ITEM VARCHAR2(100);',
'  EX_EXCEPTION EXCEPTION;',
'BEGIN',
'  :P75_TXT_ALERT_TEXT := null;',
'  :P75_SUCCESS_MSG    := null;',
'  :P75_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P75_DISP_MRNO,',
'                                          :P75_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P75_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P75_VALIDATE'', ''Y'');',
'    IF :P75_SIGN_BY_CONSULTANT1_STATUS = ''N'' THEN',
'      :P75_FIRST_CONSULTANT_MRNO := :P75_DISP_MRNO;',
'      Apex_Util.Set_Session_State(''P75_SIGN_BY_CONSULTANT1_STATUS'', ''Y'');',
'      :P75_SUCCESS_MSG := ''Plan is signed by consultant successfully'';',
'    END IF;',
'    IF :P75_SIGN_BY_CONSULTANT1_STATUS = ''Y'' AND',
'       :P75_SIGN_BY_PHYSICIST1_STATUS = ''N'' THEN',
'      :P75_FIRST_PHYSICIST_MRNO := :P75_DISP_MRNO;',
'      Apex_Util.Set_Session_State(''P75_SIGN_BY_PHYSICIST1_STATUS'', ''Y'');',
'    END IF;',
'    :P75_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P75_DISP_MRNO,P75_PASSWORD,P75_SIGN_BY_CONSULTANT1_STATUS,P75_SIGN_BY_PHYSICIST1_STATUS'
,p_attribute_03=>'P75_SUCCESS_MSG,P75_ERROR,P75_VALIDATE,P75_FIRST_CONSULTANT_MRNO,P75_FIRST_PHYSICIST_MRNO,P75_SIGN_BY_CONSULTANT1_STATUS,P75_SIGN_BY_PHYSICIST1_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23576281988600976)
,p_event_id=>wwv_flow_imp.id(23574284137600975)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P75_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P75_SIGN_BY_CONSULTANT1_STATUS = ''Y'' AND',
'         :P75_SIGN_BY_PHYSICIST1_STATUS = ''Y'' THEN',
'        BEGIN',
'          -- Finalize Plan Sign',
'          HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',',
'                          NVL(:GV_ORDER_LOCATION_ID, ''001''));',
'          RADIATION.PKG_S18FRM00157.SIGN_RAD_PLAN_APPROVAL(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                              ''ORGANIZATION_ID''),',
'                                                           P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                              ''LOCATION_ID''),',
'                                                           P_SIGN_BYC1         => :P75_FIRST_CONSULTANT_MRNO,',
'                                                           P_SIGN_BYP1         => :P75_FIRST_PHYSICIST_MRNO,',
'                                                           P_SIGN_BYC2         => NULL,',
'                                                           P_SIGN_BYP2         => NULL,',
'                                                           P_RADIATION_NO      => :P75_RAD_DETAIL_ND_RADIATION_NO,',
'                                                           P_SITE_ID           => :P75_RAD_DETAIL_ND_SITE_ID,',
'                                                           P_PLAN_ID           => :P75_PLAN_ID,',
'                                                           P_SCHEDULE_EVENT_ID => NULL, --- Not usable in HDR plan sign ',
'                                                           P_OBJECT_CODE       => ''S18APX00064'',',
'                                                           P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                              ''TERMINAL''),',
'                                                           P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                              ''USER_MRNO''),',
'                                                           P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                           P_STOP              => L_STOP);',
'        ',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P75_ERROR := L_ALERT_TEXT;',
'        ELSE',
'          :P75_FINAL_SIGN_SUCCESS := ''Y'';',
'          :P75_SUCCESS_MSG        := ''Brachytheraphy Plan signed properly'';',
'        END IF;',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P75_RAD_DETAIL_ND_RADIATION_NO,P75_RAD_DETAIL_ND_SITE_ID,P75_ND_IMPLANT_INSERTION_ID,P75_PHY_PLAN_ID,P75_DISP_MRNO,P75_VALIDATE,P75_SIGN_BY_CONSULTANT1_STATUS,P75_SIGN_BY_PHYSICIST1_STATUS,P75_FIRST_CONSULTANT_MRNO,P75_FIRST_PHYSICIST_MRNO'
,p_attribute_03=>'P75_ERROR,P75_SUCCESS_MSG,P75_FINAL_SIGN_SUCCESS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P75_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23575215201600975)
,p_event_id=>wwv_flow_imp.id(23574284137600975)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radhdrplan'').refresh();',
'',
'if (($v("P75_SIGN_STATUS") === "015") || ($v("P75_SIGN_STATUS") === "248")) {',
'    apex.item("save").disable();',
'    apex.item("SignConsultant").disable();',
'    apex.item("SignPhysicist").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'    apex.item("P75_DOSE_TO_OAR").disable();',
'    apex.item("P75_PTV_COVERAGE").disable();',
'    apex.item("P75_PLAN_REMARKS").disable();',
'    apex.item("P75_PATH_REVIEWED").disable();',
'    apex.item("P75_RAD_REVIEWED").disable();',
'    apex.item("P75_TRT_DECISION").disable();',
'    apex.item("P75_IMPLANT_ADEQUACY").disable();',
'',
'}',
'else {',
'    apex.item("save").enable();',
'    apex.item("SignConsultant").enable();',
'    apex.item("SignPhysicist").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'    apex.item("P75_DOSE_TO_OAR").enable();',
'    apex.item("P75_PTV_COVERAGE").enable();',
'    apex.item("P75_PLAN_REMARKS").enable();',
'    apex.item("P75_PATH_REVIEWED").enable();',
'    apex.item("P75_RAD_REVIEWED").enable();',
'    apex.item("P75_TRT_DECISION").enable();',
'    apex.item("P75_IMPLANT_ADEQUACY").enable();',
'',
'}'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P75_FINAL_SIGN_SUCCESS'
,p_client_condition_expression=>'Y'
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
 p_id=>wwv_flow_imp.id(23576630705600976)
,p_name=>'CloseRegion'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23496307839600921)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23577103391600976)
,p_event_id=>wwv_flow_imp.id(23576630705600976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200286044765696295)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24157760615501303)
,p_name=>'DATreatmentAbort'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23748743780715350)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24157978041501305)
,p_event_id=>wwv_flow_imp.id(24157760615501303)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm you want to proceed for treatment abort?'
,p_attribute_02=>'System Message'
,p_attribute_06=>'Yes '
,p_attribute_07=>'Back'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24157848397501304)
,p_event_id=>wwv_flow_imp.id(24157760615501303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_REQUEST.RAD_TREATMENT_ABORT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_SIGN_BY           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_RADIATION_NO      => :P75_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P75_RAD_DETAIL_ND_SITE_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00064'',',
'                                            P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''TERMINAL''),',
'                                            P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P75_ALERT := L_ALERT_TEXT;',
'  ELSE',
'    :P75_SUCCESS_MESSAGE := ''Treatment aborted successfully'';',
'  END IF;',
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
,p_attribute_02=>'P75_RAD_DETAIL_ND_RADIATION_NO,P75_RAD_DETAIL_ND_SITE_ID'
,p_attribute_03=>'P75_ALERT,P75_SUCCESS_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24158181117501307)
,p_name=>'DAAlert'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_ALERT'
,p_condition_element=>'P75_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24158259682501308)
,p_event_id=>wwv_flow_imp.id(24158181117501307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P75_ALERT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24158338691501309)
,p_name=>'DASuccessMessage1'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_SUCCESS_MESSAGE'
,p_condition_element=>'P75_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24158460853501310)
,p_event_id=>wwv_flow_imp.id(24158338691501309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P75_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24158837674501314)
,p_name=>'DAPlanDOseFraction'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_PLAN_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24158999917501315)
,p_event_id=>wwv_flow_imp.id(24158837674501314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_PLAN_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P75_PLAN_DOSE_FRACTION, 0) * NVL(:P75_PLAN_FRACTION, 0));'
,p_attribute_07=>'P75_PLAN_DOSE_FRACTION,P75_PLAN_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24159479977501320)
,p_name=>'DAPlanFraction'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P75_PLAN_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24159538946501321)
,p_event_id=>wwv_flow_imp.id(24159479977501320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_PLAN_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P75_PLAN_DOSE_FRACTION, 0) * NVL(:P75_PLAN_FRACTION, 0));'
,p_attribute_07=>'P75_PLAN_DOSE_FRACTION,P75_PLAN_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24160446587501330)
,p_name=>'SignFirstPhysicist'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23748665742715349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24160566908501331)
,p_event_id=>wwv_flow_imp.id(24160446587501330)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_PASSWORD,P75_FIRST_PHYSICIST_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24101700473176718)
,p_event_id=>wwv_flow_imp.id(24160446587501330)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P75_SIGN_BY_PHYSICIST1_STATUS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24160639463501332)
,p_event_id=>wwv_flow_imp.id(24160446587501330)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P75_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'  :P75_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'  :P75_DISP_MRNO    := (:P75_PATIENT_TYPE ||',
'                       LPAD(:P75_PATIENT_MRNO, 8, ''0''));',
'  :P75_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:GV_USER_MRNO);',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P75_PATIENT_MRNO,P75_PATIENT_TYPE,P75_DISP_MRNO,P75_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24160757596501333)
,p_event_id=>wwv_flow_imp.id(24160446587501330)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signhdrplan");',
'apex.item("P75_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24101203358176713)
,p_name=>'DACreatePlan'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23542696953600957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24101399544176714)
,p_event_id=>wwv_flow_imp.id(24101203358176713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P75_DOSE_TO_OAR").enable();',
'apex.item("P75_PTV_COVERAGE").enable();',
'apex.item("P75_PATH_REVIEWED").enable();',
'apex.item("P75_RAD_REVIEWED").enable();',
'apex.item("P75_IMPLANT_ADEQUACY").enable();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24101401551176715)
,p_name=>'DADisposePlan'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23543078322600958)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24101539513176716)
,p_event_id=>wwv_flow_imp.id(24101401551176715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P75_DOSE_TO_OAR").enable();',
'apex.item("P75_PTV_COVERAGE").enable();',
'apex.item("P75_PATH_REVIEWED").enable();',
'apex.item("P75_RAD_REVIEWED").enable();',
'apex.item("P75_IMPLANT_ADEQUACY").enable();',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23551063894600965)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateRadiationHDRPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P75_MRNO;',
'  L_RADIATION_NO := :P75_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00157.CREATE_NEW_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_RADIATION_NO      => :P75_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P75_RAD_DETAIL_ND_SITE_ID,',
'                                            P_PLAN_ID           => :P75_PLAN_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00064'',',
'                                            P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''TERMINAL''),',
'                                            P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P75_PARAM_MRNO         := L_MRNO;',
'  :P75_PARAM_RADIATION_NO := L_RADIATION_NO;',
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
,p_process_when_button_id=>wwv_flow_imp.id(23542696953600957)
,p_process_success_message=>'New Brachytherapy plan created successfully'
,p_internal_uid=>23551063894600965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23551474219600965)
,p_process_sequence=>2
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeRadiationHDRPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P75_MRNO;',
'  L_RADIATION_NO := :P75_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00157.DISPOSE_RAD_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                             P_SIGN_FLAG         => :P75_SIGN_FLAG,',
'                                             P_SIGN_BY           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''USER_MRNO''),',
'                                             P_RADIATION_NO      => :P75_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P75_RAD_DETAIL_ND_SITE_ID,',
'                                             P_PLAN_ID           => :P75_PLAN_ID,',
'                                             P_OBJECT_CODE       => ''S18APX00064'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''TERMINAL''),',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''USER_MRNO''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P75_PARAM_MRNO         := L_MRNO;',
'  :P75_PARAM_RADIATION_NO := L_RADIATION_NO;',
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
,p_process_when_button_id=>wwv_flow_imp.id(23543078322600958)
,p_process_success_message=>'Brachytherapy plan disposed successfully'
,p_internal_uid=>23551474219600965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24158788072501313)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationPhase'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PHASE_TAB RADIATION.PKG_S18FRM00157.RAD_PHASE_TAB;',
'  L_MRNO          RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO  RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P75_MRNO;',
'  L_RADIATION_NO := :P75_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  SELECT :P75_PHASE_RADIATION_NO       RADIATION_NO,',
'         :P75_PHASE_SITE_ID            SITE_ID,',
'         :P75_PHASE_PLAN_ID            PLAN_ID,',
'         :P75_PHASE_PHASE_NO           PHASE_NO,',
'         :P75_PERFORMED_DOSE_FRACTION  PERFORMED_DOSE_FRACTION,',
'         :P75_PERFORMED_NO_OF_FRACTION PERFORMED_NO_OF_FRACTION,',
'         :P75_PLAN_DOSE_FRACTION       PLAN_DOSE_FRACTION,',
'         :P75_PLAN_FRACTION            PLAN_NO_OF_FRACTION',
'  ',
'    BULK COLLECT',
'    INTO L_RAD_PHASE_TAB',
'    FROM DUAL;',
'',
'  -----------',
'  -- Update',
'  -----------',
'  BEGIN',
'    RADIATION.PKG_S18FRM00157.UPDATE_RAD_PHASE(L_RAD_PHASE_TAB);',
'  END;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23541479745600957)
,p_internal_uid=>24158788072501313
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23551893094600965)
,p_process_sequence=>4
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessHDRPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PLAN_APPROVAL_TAB RADIATION.PKG_S18FRM00157.RAD_PLAN_APPROVAL_TAB;',
'  L_MRNO                  RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO          RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P75_MRNO;',
'  L_RADIATION_NO := :P75_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  IF :P75_PLAN_ID IS NOT NULL THEN',
'    SELECT :P75_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P75_RAD_DETAIL_ND_SITE_ID SITE_ID,',
'           NULL FROM_FRACTION_ID,',
'           NULL TO_FRACTION_ID,',
'           :P75_PLAN_ID PLAN_ID,',
'           NULL PI_DOCTOR_ID,',
'           :P75_PTV_COVERAGE PTV_COVERAGE,',
'           :P75_DOSE_TO_OAR DOSE_TO_OAR,',
'           NULL CI,',
'           :P75_PLAN_REMARKS INSTRUCTIONS,',
'           NULL STATUS_ID,',
'           NULL STATUS_DESC,',
'           ''001'' FREQUENCY_ID,',
'           NULL FREQUENCY_DESC,',
'           NULL SIGN_DATE,',
'           NULL SIGN_BY_C1,',
'           NULL SIGN_BY_C1_DESC,',
'           NULL SIGN_BY_C2,',
'           NULL SIGN_BY_C2_DESC,',
'           NULL SIGN_BY_P1,',
'           NULL SIGN_BY_P1_DESC,',
'           NULL SIGN_BY_P2,',
'           NULL SIGN_BY_P2_DESC,',
'           NULL INSERTION_ID,',
'           NULL APPLICATOR,',
'           NULL APPLICATOR_SIZE,',
'           NULL EXAM_SPEC_VAGINUM,',
'           NULL IMPLANT_REMARKS,',
'           NULL PLANNING,',
'           NULL IMP_INSERTION_TIME,',
'           NULL PLANNING_ID,',
'           NULL DOCUMENT_ID,',
'           :P75_PATH_REVIEWED PATH_REVIEWED,',
'           :P75_RAD_REVIEWED RAD_REVIEWED,',
'           :P75_IMPLANT_ADEQUACY IMPLANT_ADEQUACY,',
'           :P75_TRT_DECISION TRT_DECISION',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_PLAN_APPROVAL_TAB',
'      FROM DUAL;',
'  ',
'    BEGIN',
'      RADIATION.PKG_S18FRM00157.UPDATE_RAD_PLAN_APPROVAL(L_RAD_PLAN_APPROVAL_TAB);',
'    END;',
'  ',
'  END IF;',
'',
'  :P75_PARAM_MRNO         := L_MRNO;',
'  :P75_PARAM_RADIATION_NO := L_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23541479745600957)
,p_process_success_message=>'Brachytherapy plan updated successfully'
,p_internal_uid=>23551893094600965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23550626764600964)
,p_process_sequence=>2
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P75_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>23550626764600964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23550285565600964)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormHDRCTPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  --:P75_MRNO := NVL(:P75_MRNO, :P75_PARAM_MRNO);',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTEN,',
'         ANAESTHESIA,',
'         HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => DOCTOR_ID) DOCTOR_MRNO',
'    INTO :P75_RADIATION_NO,',
'         :P75_RADIATION_DATE,',
'         :P75_MRNO,',
'         :P75_PATIENT_NAME,',
'         :P75_DISP_AGE,',
'         :P75_DISP_GENDER,',
'         :P75_DOCTOR_ID,',
'         :P75_DISP_DOCTOR,',
'         :P75_DISP_INTENT,',
'         :P75_ND_ANAESTHESIA,',
'         :P75_DOCTOR_MRNO',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P75_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => NVL(:P75_MRNO,',
'                                                                                      :P75_PARAM_MRNO),',
'                                                           P_RADIOTHERAPY_TYPE => ''B''))',
'     AND MRNO LIKE CASE',
'           WHEN :P75_MRNO IS NOT NULL THEN',
'            ''%'' || :P75_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>23550285565600964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23549806666600964)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'processSpecialInstruction'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00156.RADIATION_INSTRUCTION_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  SELECT :P75_SPEC_INS_RADIATION_NO RADIATION_NO,',
'         :P75_SPEC_INS_SITE_ID SITE_ID,',
'         :P75_SPEC_INS_PHASE_NO PHASE_NO,',
'         :P75_FRACTION_NO FRACTION_NO,',
'         :P75_NEW_SPECIAL_INSTRUCTION SPECIAL_INSTRUCTION,',
'         ''N'' PORT_FILM_REQUIRED,',
'         NULL SPECIAL_MESSAGE',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00156.INSERT_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    -- Update',
'    RADIATION.PKG_S18FRM00156.UPDATE_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00156.DELETE_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  IF L_STATUS = ''CREATE'' THEN',
'    APEX_JSON.WRITE(''response'',',
'                    ''Special Instructions created successfully.'');',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    APEX_JSON.WRITE(''response'',',
'                    ''Special Instructions updated successfully.'');',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    APEX_JSON.WRITE(''response'',',
'                    ''Special Instructions deleted successfully.'');',
'  END IF;',
'  APEX_JSON.WRITE(''status'', ''success'');',
'',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT || SQLERRM);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT || SQLERRM);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>23549806666600964
);
wwv_flow_imp.component_end;
end;
/

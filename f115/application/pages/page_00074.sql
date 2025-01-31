prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'RAD_HDR_PHYSICS'
,p_alias=>'RAD-HDR-PHYSICS'
,p_page_mode=>'MODAL'
,p_warn_on_unsaved_changes=>'N'
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
'try {',
'    jsFormsBlock_pageReady();',
'} catch (error) {',
'    console.error("An error occurred while executing jsFormsBlock_pageReady:", error);',
'}',
'',
'',
'apex.jQuery(function() {',
'',
'  apex.theme42.util.configAPEXMsgs({',
'',
'    autoDismiss: true,',
'',
'    duration: .5  // duration is optional (Default is 3000 milliseconds)',
'',
'  });',
'',
'});',
'',
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
'});',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#specinstr_ig_toolbar{',
'    display:none;',
'}',
'[data-action="edit"]{',
'    display:none !important;',
'}',
' ',
'/* [data-action="save"]{',
'    display:none !important;',
'} */',
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
'#history .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
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
'#radhdrphy .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#report_image_report img{',
'	height: 120px;',
'    width:  100px;',
'',
'}',
'',
'#specinstr .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#P74_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P74_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P74_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P74_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_IMPLANT_INSERTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_IMP_INSERTION_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_IMP_INSERTION_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P74_PLANNING {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_APPLICATOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_APPLICATOR_SIZE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_CURRENT_MACHINE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P74_PLAN_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PLAN_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_IMPLANT_EXAMINATION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_IMPLANT_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PHY_MACHINE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PRESCRIPTION_POINT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PHYSICIST_NOTES {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_NO_CHANNEL_USED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_DWELL_TIME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_FRACTION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_NEW_SPECIAL_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P74_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'.t-Alert-message:contains("rows selected") {',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250124172407'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21871671236609950)
,p_plug_name=>'<b><p style="color:#8B0000">Implant Insertion Examination/Remarks</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>54
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22787048866020920)
,p_plug_name=>'Special Instruction'
,p_region_name=>'specinstr'
,p_region_css_classes=>'forms-block'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>64
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       PHASE_NO,',
'       FRACTION_NO,',
'       SPECIAL_INSTRUCTION,',
'       PORT_FILM_REQUIRED,',
'       SPECIAL_MESSAGE,',
'       SUB_SITE_ID, ',
'       rowid ',
'  FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS T',
' WHERE T.RADIATION_NO = :P74_RAD_DETAIL_ND_RADIATION_NO',
'   AND T.SITE_ID = :P74_RAD_DETAIL_ND_SITE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Special Instruction'
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
 p_id=>wwv_flow_imp.id(22787247900020922)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'RADIATION_NO'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_static_id=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(22787397837020923)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'SITE_ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_static_id=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(22787408743020924)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Phase No </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PHASE_NO'
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
 p_id=>wwv_flow_imp.id(22787565460020925)
,p_name=>'FRACTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Fraction  No </b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'450'
,p_attribute_10=>'PHASE_NO:PHASE_NO'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(23348372558684205)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22787694277020926)
,p_name=>'SPECIAL_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Special Instruction</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22787784675020927)
,p_name=>'PORT_FILM_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORT_FILM_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22787845774020928)
,p_name=>'SPECIAL_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(182185919054912335)
,p_name=>'SUB_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUB_SITE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sub Site Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(182186099388912336)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(254455244557107413)
,p_name=>'DEL'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
,p_use_as_row_header=>false
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(22787191797020921)
,p_internal_uid=>22787191797020921
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>190
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(23090176090311494)
,p_interactive_grid_id=>wwv_flow_imp.id(22787191797020921)
,p_static_id=>'230902'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(23090314380311494)
,p_report_id=>wwv_flow_imp.id(23090176090311494)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23090897017311496)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(22787247900020922)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23091799999311499)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(22787397837020923)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23092692010311503)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(22787408743020924)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23093534161311506)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(22787565460020925)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23094418057311509)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(22787694277020926)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>171
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23095372738311512)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(22787784675020927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23096261933311515)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(22787845774020928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(254693569350688590)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(254455244557107413)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264455176454884607)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(182185919054912335)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264470206456902052)
,p_view_id=>wwv_flow_imp.id(23090314380311494)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(182186099388912336)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22788639703020936)
,p_plug_name=>'Special Instruction'
,p_region_name=>'regspecinstr'
,p_parent_plug_id=>wwv_flow_imp.id(22787048866020920)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22789321084020943)
,p_plug_name=>'<b><p style="color:#8B0000">Brachytherapy Implant Insertion</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44359627623553510)
,p_plug_name=>'<b><p style="color:#8B0000">HDR Plan Remarks</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>24
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44562181772377802)
,p_plug_name=>'Brachytherapy Physics Plan'
,p_region_name=>'radhdrphy'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>44
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RP.RADIATION_NO,',
'         RP.SITE_ID,',
'         RP.PHY_PLAN_ID,',
'         RP.FROM_FRACTION_ID,',
'         RP.TO_FRACTION_ID,',
'         RP.SIGN_BY,',
'         TO_CHAR(RP.SIGN_DATE, ''DD-MM-RRRR HH24:MI'') SIGN_DATE,',
'         RP.STATUS_ID,',
'         RP.SCHEDULE_SRNO,',
'         RP.OC_SERIAL_NO,',
'         RP.PRESCRIPTION_POINT_ID,',
'         (SELECT DESCRIPTION',
'            FROM RADIATION.PRESCRIPTION_POINT',
'           WHERE PRESCRIPTION_POINT_ID = RP.PRESCRIPTION_POINT_ID) PRESCRIPTION_POINT,',
'         RP.NO_CHANNEL_USED,',
'         RP.DWELL_TIME,',
'         RP.REMARKS PHYSICIST_NOTES,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(RP.STATUS_ID) STATUS_DESC,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(RP.SIGN_BY) SIGN_BY_NAME,',
'         P.PLAN_ID RAD_PLAN_ID,',
'         P.INSTRUCTIONS RAD_PLAN_REMARKS,',
'         I.INSERTION_ID INSERTION_ID,',
'         (SELECT A.DESCRIPTION',
'            FROM RADIATION.APPLICATOR A',
'           WHERE A.APPLICATOR_ID = I.APPLICATOR_ID) APPLICATOR,',
'         RADIATION.PKG_RADIATION.GET_APPLICATOR_SIZE_DESC(I.APPLICATOR_ID,',
'                                                          I.APPLICATOR_SIZE_ID) APPLICATOR_SIZE,',
'         I.EXAM_SPEC_VAGINUM,',
'         I.REMARKS IMPLANT_REMARKS,',
'         (SELECT P.DESCRIPTION',
'            FROM RADIATION.PLANNING P',
'           WHERE P.PLANNING_ID = I.PLANNING_ID) DISP_PLANNING,',
'         TO_CHAR(I.SIGN_DATE, ''DD-MM-RRRR HH24:MI'') IMPLANT_SIGN_DATE,',
'         NVL(RP.MACHINE_ID,',
'             (SELECT D.MACHINE_ID',
'                FROM RADIATION.RADIATION_DETAIL D',
'               WHERE D.RADIATION_NO = :P74_RAD_DETAIL_ND_SITE_ID',
'                 AND D.SITE_ID = :P74_RAD_DETAIL_ND_SITE_ID)) AS MACHINE_ID,',
'         NVL(RADIATION.PKG_RADIATION.GET_MACHINE_DESC(P_MACHINE_ID => RP.MACHINE_ID),',
'             (SELECT RADIATION.PKG_RADIATION.GET_MACHINE_DESC(D.MACHINE_ID)',
'                FROM RADIATION.RADIATION_DETAIL D',
'               WHERE D.RADIATION_NO = :P74_RAD_DETAIL_ND_SITE_ID',
'                 AND D.SITE_ID = :P74_RAD_DETAIL_ND_SITE_ID)) AS MACHINE_DESC,',
'         RP.ROWID ROW_ID',
'    FROM RADIATION.RAD_PLAN           P,',
'         RADIATION.RAD_IMPLANT_INSERT I,',
'         RADIATION.RAD_PHYSICS        RP',
'   WHERE I.RADIATION_NO = P.RADIATION_NO',
'     AND I.SITE_ID = P.SITE_ID',
'     AND I.RADIATION_NO = :P74_RAD_DETAIL_ND_RADIATION_NO',
'     AND I.SITE_ID = :P74_RAD_DETAIL_ND_SITE_ID',
'     AND I.INSERTION_ID = P.INSERTION_ID',
'     AND RP.RADIATION_NO(+) = I.RADIATION_NO',
'     AND RP.SITE_ID(+) = I.SITE_ID',
'     AND RP.INSERTION_ID(+) = I.INSERTION_ID',
'     AND RP.PLAN_ID(+) = P.PLAN_ID',
'     AND RP.STATUS_ID <> ''248'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Brachytherapy Physics Plan'
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
 p_id=>wwv_flow_imp.id(22788096686020930)
,p_heading=>'<b><p style="color:#8B0000">Fraction Id</p></b>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21868687739609920)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21868784786609921)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>From</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(22788096686020930)
,p_use_group_for=>'BOTH'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21868889404609922)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>To</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(22788096686020930)
,p_use_group_for=>'BOTH'
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
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21868919721609923)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869050421609924)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869109209609925)
,p_name=>'PRESCRIPTION_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_POINT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869208224609926)
,p_name=>'PRESCRIPTION_POINT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_POINT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869375370609927)
,p_name=>'NO_CHANNEL_USED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_CHANNEL_USED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869415552609928)
,p_name=>'DWELL_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DWELL_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869510072609929)
,p_name=>'PHYSICIST_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHYSICIST_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21869683923609930)
,p_name=>'SIGN_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Sign By</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(21869925149609933)
,p_name=>'INSERTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870037444609934)
,p_name=>'APPLICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870193168609935)
,p_name=>'APPLICATOR_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATOR_SIZE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870221661609936)
,p_name=>'EXAM_SPEC_VAGINUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXAM_SPEC_VAGINUM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870346357609937)
,p_name=>'IMPLANT_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPLANT_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870503119609939)
,p_name=>'IMPLANT_SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPLANT_SIGN_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870656227609940)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870722605609941)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21870801224609942)
,p_name=>'ROW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_ID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21871022842609944)
,p_name=>'RAD_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21871103592609945)
,p_name=>'RAD_PLAN_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_PLAN_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21871262004609946)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44562494964377805)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44562559935377806)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44563866397377819)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44564524065377826)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(44564919045377830)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44828991844216523)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(44562285048377803)
,p_internal_uid=>44562285048377803
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
,p_fixed_header_max_height=>220
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(44569339619384563)
,p_interactive_grid_id=>wwv_flow_imp.id(44562285048377803)
,p_static_id=>'220773'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(44569593572384563)
,p_report_id=>wwv_flow_imp.id(44569339619384563)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22637520010146606)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(21868687739609920)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22638423932146611)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(21868784786609921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22639328080146615)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(21868889404609922)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22640271763146621)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(21868919721609923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22641199070146625)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(21869050421609924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22642087642146629)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(21869109209609925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22642955672146633)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(21869208224609926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22643887589146637)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(21869375370609927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22644792759146641)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(21869415552609928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22645699889146646)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(21869510072609929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22646560913146651)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(21869683923609930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22649145194146663)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(21869925149609933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22650031667146666)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(21870037444609934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22650997693146671)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(21870193168609935)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22651873320146676)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(21870221661609936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22652716212146680)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(21870346357609937)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22654519863146690)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(21870503119609939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22655466883146694)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(21870656227609940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22656378017146699)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(21870722605609941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22677860696157674)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(21870801224609942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22767079413928282)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(21871022842609944)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22767924988928285)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(21871103592609945)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22768862673928288)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(21871262004609946)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44570082083384566)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(44562494964377805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44570940152384571)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(44562559935377806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44582634182384606)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(44563866397377819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44589005584384625)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(44564524065377826)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44592578208384636)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(44564919045377830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>158
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45053319629617795)
,p_view_id=>wwv_flow_imp.id(44569593572384563)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(44828991844216523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22785913517020909)
,p_plug_name=>'Brachytherapy Physics Plan Sub Region'
,p_parent_plug_id=>wwv_flow_imp.id(44562181772377802)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44565371195377834)
,p_plug_name=>'<b><p style="color:#8B0000">Current Machine</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>34
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82315662664058766)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'        M.RADIATION_DATE, ',
'       ROWID, ',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P74_MRNO,:P74_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P74_MRNO'
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
 p_id=>wwv_flow_imp.id(254454187861107402)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Radiation No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(254454237119107403)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(254454320502107404)
,p_name=>'REQUEST_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(255792475302030516)
,p_name=>'RADIATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Radiation Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(255792553702030517)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(254454093500107401)
,p_internal_uid=>254454093500107401
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
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
 p_id=>wwv_flow_imp.id(254461260411125167)
,p_interactive_grid_id=>wwv_flow_imp.id(254454093500107401)
,p_static_id=>'2544613'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(254461456671125180)
,p_report_id=>wwv_flow_imp.id(254461260411125167)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(254461812763125295)
,p_view_id=>wwv_flow_imp.id(254461456671125180)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(254454187861107402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(254462705578125308)
,p_view_id=>wwv_flow_imp.id(254461456671125180)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(254454237119107403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(254463637225125312)
,p_view_id=>wwv_flow_imp.id(254461456671125180)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(254454320502107404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(257093994576069815)
,p_view_id=>wwv_flow_imp.id(254461456671125180)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(255792475302030516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(257094875683069819)
,p_view_id=>wwv_flow_imp.id(254461456671125180)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(255792553702030517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87938880600442822)
,p_plug_name=>'Control1'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>84
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89695835422245432)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>74
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120488511973665231)
,p_plug_name=>'Brachytherapy Physics Planning'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>9
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
'          REMARKS',
'     FROM RADIATION.RADIATION_MASTER M;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P74_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(130297674838046700)
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
' WHERE MRNO = :P74_MRNO;',
''))
,p_display_condition_type=>'NEVER'
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
,p_ajax_items_to_submit=>'P74_MRNO'
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
 p_id=>wwv_flow_imp.id(22524485750943652)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22524865376943652)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22525241812943653)
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
 p_id=>wwv_flow_imp.id(130298074598046704)
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
'       RD.NO_OF_FRACTION',
'  FROM RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P74_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P74_PARAM_SITE_ID, RD.SITE_ID)',
'   AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                             P_SITE_ID             => RD.SITE_ID,',
'                                             P_PERFORMANCE_TYPE_ID => ''016'') = ''Y''',
'   AND ((:P74_SCHEDULE_SRNO IS NOT NULL AND EXISTS',
'        (SELECT 1',
'            FROM RADIATION.SCHEDULE S',
'           WHERE S.SR_NO = :P74_SCHEDULE_SRNO',
'             AND S.RADIATION_NO = RD.RADIATION_NO',
'             AND S.SITE_ID = RD.SITE_ID)) OR',
'       (:P74_SCHEDULE_SRNO IS NULL AND RD.SITE_ID = :P74_SCHEDULE_SRNO) OR',
'       (:P74_SCHEDULE_SRNO IS NULL AND :P74_SCHEDULE_SRNO IS NULL AND',
'       RD.SITE_ID = RD.SITE_ID));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P74_PARAM_SITE_ID,P74_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(44166096523680350)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose Fraction</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44166122561680351)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>No Of <br> Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(82318194573058791)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total <br>Dose(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130298450362046707)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130298521882046708)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130298564268046709)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<span style="color: darkblue;"><b>Site</b></span>'
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
 p_id=>wwv_flow_imp.id(130298736138046710)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130298794983046711)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Planning <br>Technique</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(130298929906046712)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299018379046713)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299101244046714)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299198073046715)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299269435046716)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299428698046717)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299465398046718)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299627114046719)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299740456046720)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130299765899046721)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
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
 p_id=>wwv_flow_imp.id(130299889666046722)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
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
 p_id=>wwv_flow_imp.id(130300043362046723)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130300108596046724)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130300236601046725)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(130298204236046705)
,p_internal_uid=>130298204236046705
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
,p_fixed_header_max_height=>125
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(130902805724205055)
,p_interactive_grid_id=>wwv_flow_imp.id(130298204236046705)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(130902990906205057)
,p_report_id=>wwv_flow_imp.id(130902805724205055)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44356102190553236)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(44166096523680350)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104.85900000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(44356970647553239)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(44166122561680351)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123.84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82990718791234247)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(82318194573058791)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.957
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130903375581205058)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(130298450362046707)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130904340038205061)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(130298521882046708)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130905248696205064)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(130298564268046709)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130906136721205066)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(130298736138046710)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130906964294205069)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(130298794983046711)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.973
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130907941270205074)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(130298929906046712)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130908821736205077)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(130299018379046713)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130909732787205084)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(130299101244046714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130910606265205086)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(130299198073046715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130911504694205089)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(130299269435046716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130912440349205092)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(130299428698046717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130913299339205094)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(130299465398046718)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130914214503205098)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(130299627114046719)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130915083209205102)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(130299740456046720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130916028504205105)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(130299765899046721)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.402
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130916868002205108)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(130299889666046722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130917758393205111)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(130300043362046723)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.94399999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130918739209205118)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(130300108596046724)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130919588270205120)
,p_view_id=>wwv_flow_imp.id(130902990906205057)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(130300236601046725)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(176801809093095402)
,p_plug_name=>'Sign '
,p_region_name=>'signhdrphy'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>114
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22510666402943643)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_imp.id(87938880600442822)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22511083023943643)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_imp.id(87938880600442822)
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
 p_id=>wwv_flow_imp.id(22511420957943643)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_imp.id(87938880600442822)
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
 p_id=>wwv_flow_imp.id(22512251447943644)
,p_button_sequence=>94
,p_button_plug_id=>wwv_flow_imp.id(87938880600442822)
,p_button_name=>'CreatePhysicsPlan'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Plan'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22512615520943644)
,p_button_sequence=>104
,p_button_plug_id=>wwv_flow_imp.id(87938880600442822)
,p_button_name=>'DisposePhysicsPlan'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Dispose Plan'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22788903143020939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22788639703020936)
,p_button_name=>'SaveSpecialInstruction'
,p_button_static_id=>'savespecialinstr'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23377432937545183)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(176801809093095402)
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
 p_id=>wwv_flow_imp.id(22789053294020940)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22788639703020936)
,p_button_name=>'ExitSpecialInstruction'
,p_button_static_id=>'exitspecialinstr'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23377885927545184)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_button_name=>'SignHDRPhysics'
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
 p_id=>wwv_flow_imp.id(21870942735609943)
,p_name=>'P74_PLAN_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44359627623553510)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Plan ID:</p></b>'
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
 p_id=>wwv_flow_imp.id(22785175995020901)
,p_name=>'P74_IMPLANT_EXAMINATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21871671236609950)
,p_prompt=>'<b><p style="color:#00008B">Examination on spec. and per vaginum</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22785219254020902)
,p_name=>'P74_IMPLANT_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21871671236609950)
,p_prompt=>'<b><p style="color:#00008B">Implant Remarks</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22786097917020910)
,p_name=>'P74_PHY_MACHINE'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(22785913517020909)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Machine</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_HDR_PHY_MACHINE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.DESCRIPTION MACHINE_NAME,',
'       MC.MACHINE_ID,',
'       ROUND((SELECT 100 - COUNT(CASE',
'                                  WHEN S.RADIATION_NO IS NOT NULL THEN',
'                                   1',
'                                  ELSE',
'                                   NULL',
'                                END) / CASE',
'                      WHEN COUNT(1) > 0 THEN',
'                       COUNT(1)',
'                      ELSE',
'                       1',
'                    END * 100',
'               FROM RADIATION.SCHEDULE S',
'              WHERE S.MACHINE_ID = MC.MACHINE_ID',
'                AND S.VISIT_DATE BETWEEN SYSDATE AND ADD_MONTHS(SYSDATE, 2))) AVAILABILITY,',
'       (SELECT LISTAGG(E.DESCRIPTION, '', '') WITHIN GROUP(ORDER BY E.DESCRIPTION)',
'          FROM RADIATION.MACHINES_ENERGY ME, RADIATION.ENERGY E',
'         WHERE ME.ACTIVE = ''Y''',
'           AND ME.MACHINE_ID = MC.MACHINE_ID',
'           AND ME.ENERGY_ID = E.ENERGY_ID) ENERGIES',
'  FROM RADIATION.MACHINES MC',
' WHERE MC.MACHINE_TYPE = ''T''',
'   AND MC.PERFORMANCE_TYPE_ID = ''005''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
' ORDER BY MC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Machine'
,p_attribute_08=>'500'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22786682078020916)
,p_name=>'P74_PHYSICIST_NOTES'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(22785913517020909)
,p_prompt=>'<b><p style="color:#00008B">Physicist Notes</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22786718472020917)
,p_name=>'P74_PRESCRIPTION_POINT'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(22785913517020909)
,p_prompt=>'<b><p style="color:#00008B">Prescription Point</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPTION PRESCRIPTION_DESC, P.PRESCRIPTION_POINT_ID',
'  FROM RADIATION.PRESCRIPTION_POINT P',
' WHERE P.ACTIVE = ''Y''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22786876040020918)
,p_name=>'P74_NO_CHANNEL_USED'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_imp.id(22785913517020909)
,p_prompt=>'<b><p style="color:#00008B">No of Channel Used</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22786940405020919)
,p_name=>'P74_DWELL_TIME'
,p_item_sequence=>42
,p_item_plug_id=>wwv_flow_imp.id(22785913517020909)
,p_prompt=>'<b><p style="color:#00008B">Dwell Time</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22788571395020935)
,p_name=>'P74_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>264
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22788739893020937)
,p_name=>'P74_FRACTION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22788639703020936)
,p_prompt=>'<b><p style="color:#00008B">Fraction No:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_HDR_PHY_SPECIAL_INSTR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT FRACTION, B.PHASE_NO',
'  FROM RADIATION.RADIATION_BOOST_PLAN B,',
'       (SELECT LEVEL FRACTION FROM DUAL CONNECT BY LEVEL < 100) F',
' WHERE B.RADIATION_NO = :P74_RAD_DETAIL_ND_RADIATION_NO',
'   AND B.SITE_ID = :P74_RAD_DETAIL_ND_SITE_ID',
'   AND F.FRACTION <= B.NO_OF_FRACTION',
'   AND NOT EXISTS (SELECT 1',
'          FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS SI',
'         WHERE SI.RADIATION_NO = B.RADIATION_NO',
'           AND SI.SITE_ID = B.SITE_ID',
'           AND SI.PHASE_NO = B.PHASE_NO',
'           AND SI.FRACTION_NO = F.FRACTION)',
'   AND NOT EXISTS (SELECT 1',
'          FROM RADIATION.RADIATION_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = B.RADIATION_NO',
'           AND RP.SITE_ID = B.SITE_ID',
'           AND RP.PHASE_NO = B.PHASE_NO',
'           AND RP.FRACTION_NO = B.NO_OF_FRACTION)',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID'
,p_ajax_items_to_submit=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'PHASE_NO:P74_SPEC_INS_PHASE_NO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22788805339020938)
,p_name=>'P74_NEW_SPECIAL_INSTRUCTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22788639703020936)
,p_prompt=>'<b><p style="color:#00008B">Special Instruction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22789437497020944)
,p_name=>'P74_IMPLANT_INSERTION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(22789321084020943)
,p_prompt=>'<b><p style="color:#00008B">Insertion Id:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22789597333020945)
,p_name=>'P74_IMP_INSERTION_TIME'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(22789321084020943)
,p_prompt=>'<b><p style="color:#00008B">Insertion Time:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22789655825020946)
,p_name=>'P74_PLANNING'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(22789321084020943)
,p_prompt=>'<b><p style="color:#00008B">Planning:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(22789754590020947)
,p_name=>'P74_APPLICATOR'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(22789321084020943)
,p_prompt=>'<b><p style="color:#00008B">Applicator:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22789868638020948)
,p_name=>'P74_APPLICATOR_SIZE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(22789321084020943)
,p_prompt=>'<b><p style="color:#00008B">Applicator Size:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23282963690337601)
,p_name=>'P74_SPEC_INS_RADIATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22788639703020936)
,p_prompt=>'P74_SPEC_INS_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(23283016614337602)
,p_name=>'P74_SPEC_INS_SITE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22788639703020936)
,p_prompt=>'P74_SPEC_INS_SITE_ID'
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
 p_id=>wwv_flow_imp.id(23283175524337603)
,p_name=>'P74_SPEC_INS_PHASE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22787048866020920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23283438968337606)
,p_name=>'P74_ND_IMPLANT_INSERTION_ID'
,p_item_sequence=>274
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23283526194337607)
,p_name=>'P74_PHY_PLAN_ID'
,p_item_sequence=>284
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23284085494337612)
,p_name=>'P74_CHECK_SIGN'
,p_item_sequence=>294
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44187643584680392)
,p_name=>'P74_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44187761435680393)
,p_name=>'P74_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>171
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44360437987553523)
,p_name=>'P74_PLAN_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44359627623553510)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Plan Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44579425378377868)
,p_name=>'P74_CURRENT_MACHINE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44565371195377834)
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(44614787200377874)
,p_name=>'P74_SCHEDULE_SRNO'
,p_item_sequence=>224
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44880062947216580)
,p_name=>'P74_CT_SRNO'
,p_item_sequence=>234
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44880137730216581)
,p_name=>'P74_CT_SCHEDULE_DATE'
,p_item_sequence=>244
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44880583608216585)
,p_name=>'P74_SCHEDULE_EVENT_ID'
,p_item_sequence=>254
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82457107294058941)
,p_name=>'P74_PARAM_RADIATION_NO'
,p_item_sequence=>134
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82458083674058951)
,p_name=>'P74_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>204
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82848597551556112)
,p_name=>'P74_QUERY_NEW'
,p_item_sequence=>214
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88142080460443040)
,p_name=>'P74_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22787048866020920)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(88142154683443041)
,p_name=>'P74_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22787048866020920)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88142778407443047)
,p_name=>'P74_RAD_PLAN_CHECK_ID'
,p_item_sequence=>154
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88143503320443054)
,p_name=>'P74_SIGN_STATUS'
,p_item_sequence=>164
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88962560035412509)
,p_name=>'P74_TXT_URL'
,p_item_sequence=>174
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90409318953007849)
,p_name=>'P74_RAD_PLAN_CHECK_DML_STATUS'
,p_item_sequence=>194
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90409739117007854)
,p_name=>'P74_PARAM_SR_NO'
,p_item_sequence=>124
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92931506853753111)
,p_name=>'P74_PARAM_MRNO'
,p_item_sequence=>144
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120582906852665366)
,p_name=>'P74_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_prompt=>'<b><p style="color:#00008B">Radiation No</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120583003438665367)
,p_name=>'P74_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130390451040046818)
,p_name=>'P74_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_prompt=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130390564127046819)
,p_name=>'P74_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130390684290046820)
,p_name=>'P74_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130390764262046821)
,p_name=>'P74_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130390804333046822)
,p_name=>'P74_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130390962095046823)
,p_name=>'P74_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_prompt=>'<b><p style="color:#00008B">Consultant</p></b>'
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391100170046824)
,p_name=>'P74_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391318838046827)
,p_name=>'P74_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391488430046828)
,p_name=>'P74_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391546801046829)
,p_name=>'P74_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391614044046830)
,p_name=>'P74_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391737211046831)
,p_name=>'P74_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130391854741046832)
,p_name=>'P74_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_item_source_plug_id=>wwv_flow_imp.id(120488511973665231)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130501719737046926)
,p_name=>'P74_PARAM_SITE_ID'
,p_item_sequence=>104
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132861425961030143)
,p_name=>'P74_ALERT_TEXT'
,p_item_sequence=>184
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176805628902095422)
,p_name=>'P74_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176805657113095423)
,p_name=>'P74_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
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
 p_id=>wwv_flow_imp.id(176805749819095424)
,p_name=>'P74_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
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
 p_id=>wwv_flow_imp.id(176805906508095425)
,p_name=>'P74_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
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
 p_id=>wwv_flow_imp.id(176806029907095426)
,p_name=>'P74_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176806113324095427)
,p_name=>'P74_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176806153237095428)
,p_name=>'P74_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176806247435095429)
,p_name=>'P74_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176806417005095430)
,p_name=>'P74_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176806510178095431)
,p_name=>'P74_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176806990960095436)
,p_name=>'P74_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176807098644095437)
,p_name=>'P74_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180530492608899802)
,p_name=>'P74_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(176801809093095402)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(254455451792107415)
,p_name=>'P74_STATUS_ENABLE_DISABLE'
,p_item_sequence=>62
,p_item_plug_id=>wwv_flow_imp.id(22785913517020909)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22552424002943678)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(130298074598046704)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22552973164943679)
,p_event_id=>wwv_flow_imp.id(22552424002943678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $s(''P74_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'// $s(''P74_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P74_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'apex.item("P74_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'}',
'//apex.region("radplanchecklist").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22553402070943679)
,p_event_id=>wwv_flow_imp.id(22552424002943678)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44562181772377802)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22553812276943679)
,p_name=>'Sign'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22510666402943643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22554350599943679)
,p_event_id=>wwv_flow_imp.id(22553812276943679)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22554861802943679)
,p_event_id=>wwv_flow_imp.id(22553812276943679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P74_PATIENT_MRNO   := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P74_PATIENT_TYPE   := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P74_DISP_MRNO      := (:P74_PATIENT_TYPE ||',
'                           LPAD(:P74_PATIENT_MRNO, 8, ''0''));',
'    :P74_NAME           := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P74_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P74_PATIENT_MRNO,P74_PATIENT_TYPE,P74_DISP_MRNO,P74_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22555328097943680)
,p_event_id=>wwv_flow_imp.id(22553812276943679)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signhdrphy");',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54535884975908250)
,p_event_id=>wwv_flow_imp.id(22553812276943679)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P74_PASSWORD").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22555786449943680)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22511420957943643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22556269230943680)
,p_event_id=>wwv_flow_imp.id(22555786449943680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22556665977943680)
,p_name=>'HistoryDA'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(82315662664058766)
,p_bind_type=>'live'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22557168995943680)
,p_event_id=>wwv_flow_imp.id(22556665977943680)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P74_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
' //$s(''P74_PARAM_RADIATION_NO'', _.history.RADIATION_NO);',
'',
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P74_PARAM_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'//apex.item("P74_PARAM_MRNO").setValue(model.getValue(this.data.selectedRecords[i],"MRNO"));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22557603101943681)
,p_event_id=>wwv_flow_imp.id(22556665977943680)
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
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P74_RADIATION_NO,',
'         :P74_RADIATION_DATE,',
'         :P74_MRNO,',
'         :P74_PATIENT_NAME,',
'         :P74_DISP_AGE,',
'         :P74_DISP_GENDER,',
'         :P74_DOCTOR_ID,',
'         :P74_DISP_DOCTOR,',
'         :P74_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = NVL(:P74_PARAM_RADIATION_NO, RADIATION_NO)',
'     AND MRNO LIKE CASE',
'           WHEN :P74_MRNO IS NOT NULL THEN',
'            ''%'' || :P74_MRNO',
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
,p_attribute_02=>'P74_PARAM_RADIATION_NO'
,p_attribute_03=>'P74_RADIATION_NO,P74_RADIATION_DATE,P74_MRNO,P74_PATIENT_NAME,P74_DISP_AGE,P74_DISP_GENDER,P74_DOCTOR_ID,P74_DISP_DOCTOR,P74_DISP_INTENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22558193022943681)
,p_event_id=>wwv_flow_imp.id(22556665977943680)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(130297674838046700)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22558639861943681)
,p_event_id=>wwv_flow_imp.id(22556665977943680)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(130298074598046704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22559010294943681)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254454708638107408)
,p_event_id=>wwv_flow_imp.id(22559010294943681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'document.addEventListener("DOMContentLoaded", function () {',
'    // Find the master grid by its static ID',
'    const masterGrid = document.getElementById("history");',
'',
'    if (masterGrid) {',
'        // Access the Interactive Grid API',
'        const gridView = apex.region("history").widget();',
'',
'        if (gridView) {',
'            // Select the first row programmatically',
'            gridView.grid("setSelectedRecords", [0]); // Selects the first row (index 0)',
'            ',
'            // Optionally set focus to the grid',
'            gridView.grid("focus");',
'        }',
'    }',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22559590787943682)
,p_event_id=>wwv_flow_imp.id(22559010294943681)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P74_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P74_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P74_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P74_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P74_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P74_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
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
,p_attribute_02=>'P74_SERVICE_NO,P74_SERVICE_STATUS,P74_RANK,P74_FORMATION,P74_UNIT'
,p_attribute_03=>'P74_SYSTEM_CONSTANT_ID_428'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22560020290943682)
,p_event_id=>wwv_flow_imp.id(22559010294943681)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P74_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P74_SERVICE_NO").show();',
'    apex.item("P74_SERVICE_STATUS").show();',
'    apex.item("P74_RANK").show();',
'    apex.item("P74_FORMATION").show();',
'    apex.item("P74_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P74_SERVICE_NO").hide();',
'    apex.item("P74_SERVICE_STATUS").hide();',
'    apex.item("P74_RANK").hide();',
'    apex.item("P74_FORMATION").hide();',
'    apex.item("P74_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22560429777943682)
,p_name=>'DASuccessMessage'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_SUCCESS_MSG'
,p_condition_element=>'P74_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22560965504943682)
,p_event_id=>wwv_flow_imp.id(22560429777943682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P74_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22561342414943682)
,p_name=>'DAError'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_ERROR'
,p_condition_element=>'P74_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22561878844943683)
,p_event_id=>wwv_flow_imp.id(22561342414943682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P74_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22562274905943683)
,p_name=>'EnableDisableDA'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22562795855943683)
,p_event_id=>wwv_flow_imp.id(22562274905943683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P74_SIGN_STATUS") === "015") || ($v("P74_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'    apex.item("P74_PHY_MACHINE").disable();',
'    apex.item("P74_PRESCRIPTION_POINT").disable();',
'    apex.item("P74_PHYSICIST_NOTES").disable();',
'    apex.item("P74_NO_CHANNEL_USED").disable();',
'    apex.item("P74_DWELL_TIME").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'    apex.item("P74_PHY_MACHINE").enable();',
'    apex.item("P74_PRESCRIPTION_POINT").enable();',
'    apex.item("P74_PHYSICIST_NOTES").enable();',
'    apex.item("P74_NO_CHANNEL_USED").enable();',
'    apex.item("P74_DWELL_TIME").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55266555642901702)
,p_name=>'SetMRNO_1'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_PATIENT_MRNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55266666802901703)
,p_event_id=>wwv_flow_imp.id(55266555642901702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_NAME,P74_PASSWORD,P74_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55266740128901704)
,p_event_id=>wwv_flow_imp.id(55266555642901702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P74_PATIENT_TYPE IS NOT NULL AND :P74_PATIENT_MRNO IS NOT NULL THEN',
'    :P74_DISP_MRNO := :P74_PATIENT_TYPE || LPAD(:P74_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_PATIENT_TYPE,P74_PATIENT_MRNO'
,p_attribute_03=>'P74_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55266892744901705)
,p_event_id=>wwv_flow_imp.id(55266555642901702)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P74_ERROR := NULL;',
'  IF :P74_PATIENT_MRNO IS NOT NULL THEN',
'    :P74_DISP_MRNO := :P74_PATIENT_TYPE || LPAD(:P74_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P74_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P74_ERROR        := ''This is not an active employee.'';',
'      :P74_PATIENT_MRNO := NULL;',
'      :P74_DISP_MRNO    := NULL;',
'      :P74_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P74_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P74_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P74_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_PATIENT_MRNO,P74_PATIENT_TYPE'
,p_attribute_03=>'P74_DISP_MRNO,P74_ERROR,P74_NAME'
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
 p_id=>wwv_flow_imp.id(55266961354901706)
,p_event_id=>wwv_flow_imp.id(55266555642901702)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P74_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P74_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55267028656901707)
,p_event_id=>wwv_flow_imp.id(55266555642901702)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P74_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P74_DISP_MRNO);'
,p_attribute_02=>'P74_DISP_MRNO'
,p_attribute_03=>'P74_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55267191434901708)
,p_event_id=>wwv_flow_imp.id(55266555642901702)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P74_PASSWORD").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22567480204943685)
,p_name=>'DAHDRPhysics'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(44562181772377802)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22567932944943685)
,p_event_id=>wwv_flow_imp.id(22567480204943685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$s(''P74_PLAN_REMARKS'', _.radhdrphy.RAD_PLAN_REMARKS);',
'$s(''P74_PLAN_ID'', _.radhdrphy.RAD_PLAN_ID);',
'$s(''P74_CURRENT_MACHINE'', _.radhdrphy.MACHINE_DESC);',
'$s(''P74_IMPLANT_EXAMINATION'', _.radhdrphy.EXAM_SPEC_VAGINUM);',
'$s(''P74_IMPLANT_REMARKS'', _.radhdrphy.IMPLANT_REMARKS);',
'$s(''P74_PHY_MACHINE'', _.radhdrphy.MACHINE_ID);',
'$s(''P74_PRESCRIPTION_POINT'', _.radhdrphy.PRESCRIPTION_POINT_ID);',
'$s(''P74_DWELL_TIME'', _.radhdrphy.DWELL_TIME);',
'$s(''P74_NO_CHANNEL_USED'', _.radhdrphy.NO_CHANNEL_USED);',
'$s(''P74_PHYSICIST_NOTES'', _.radhdrphy.PHYSICIST_NOTES);',
'$s(''P74_IMPLANT_INSERTION_ID'', _.radhdrphy.INSERTION_ID);',
'$s(''P74_IMP_INSERTION_TIME'', _.radhdrphy.IMPLANT_SIGN_DATE);',
'$s(''P74_PLANNING'', _.radhdrphy.DISP_PLANNING);',
'$s(''P74_APPLICATOR'', _.radhdrphy.APPLICATOR);',
'$s(''P74_APPLICATOR_SIZE'', _.radhdrphy.APPLICATOR_SIZE);',
'$s(''P74_ND_IMPLANT_INSERTION_ID'', _.radhdrphy.INSERTION_ID);',
'$s(''P74_PHY_PLAN_ID'', _.radhdrphy.PHY_PLAN_ID);',
'$s(''P74_SIGN_STATUS'', _.radhdrphy.STATUS_ID);',
'$s(''P74_STATUS_ENABLE_DISABLE'', _.radhdrphy.STATUS_DESC);',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22568496535943685)
,p_event_id=>wwv_flow_imp.id(22567480204943685)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P74_SIGN_STATUS") === "015") || ($v("P74_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'    apex.item("P74_PHY_MACHINE").disable();',
'    apex.item("P74_PRESCRIPTION_POINT").disable();',
'    apex.item("P74_PHYSICIST_NOTES").disable();',
'    apex.item("P74_NO_CHANNEL_USED").disable();',
'    apex.item("P74_DWELL_TIME").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'    apex.item("P74_PHY_MACHINE").enable();',
'    apex.item("P74_PRESCRIPTION_POINT").enable();',
'    apex.item("P74_PHYSICIST_NOTES").enable();',
'    apex.item("P74_NO_CHANNEL_USED").enable();',
'    apex.item("P74_DWELL_TIME").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'',
'}',
' //apex.region("specinstr").widget().interactiveGrid("getActions").set("edit", true);',
'',
'   var model = apex.region("specinstr").widget().interactiveGrid("getViews", "grid").model;  ',
'     apex.region("specinstr").call("getActions").set("edit", false);',
'     model.clearChanges(); ',
'      apex.region("specinstr").refresh();',
' //apex.region("specinstr").call("getActions").set("edit", true);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22568831583943686)
,p_name=>'DATXTAlertText'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TXT_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22569389015943686)
,p_event_id=>wwv_flow_imp.id(22568831583943686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P74_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22573038171943687)
,p_name=>'SetMRNO1'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_PATIENT_MRNO_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22573505918943688)
,p_event_id=>wwv_flow_imp.id(22573038171943687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_NAME_1,P74_PASSWORD_1,P74_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22574043206943688)
,p_event_id=>wwv_flow_imp.id(22573038171943687)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P74_PATIENT_TYPE_1 IS NOT NULL AND :P74_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P74_DISP_MRNO_1 := :P74_PATIENT_TYPE_1 || LPAD(:P74_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_PATIENT_TYPE_1,P74_PATIENT_MRNO_1'
,p_attribute_03=>'P74_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22574584556943688)
,p_event_id=>wwv_flow_imp.id(22573038171943687)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P74_ERROR := NULL;',
'  IF :P74_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P74_DISP_MRNO_1 := :P74_PATIENT_TYPE_1 || LPAD(:P74_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P74_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P74_ERROR        := ''This is not an active employee.'';',
'      :P74_PATIENT_MRNO_1 := NULL;',
'      :P74_DISP_MRNO_1    := NULL;',
'      :P74_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P74_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P74_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P74_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_PATIENT_MRNO_1,P74_PATIENT_TYPE_1'
,p_attribute_03=>'P74_DISP_MRNO_1,P74_ERROR,P74_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22575046050943688)
,p_event_id=>wwv_flow_imp.id(22573038171943687)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&&P74_ERROR.'
,p_attribute_02=>'System Message'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P74_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22575545931943689)
,p_event_id=>wwv_flow_imp.id(22573038171943687)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P74_NAME_1:= his.pkg_patient.GET_PATIENT_NAME(:P74_DISP_MRNO_1);'
,p_attribute_02=>'P74_DISP_MRNO_1'
,p_attribute_03=>'P74_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22789192924020941)
,p_name=>'ExitSpecialInstruction'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22789053294020940)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22789267965020942)
,p_event_id=>wwv_flow_imp.id(22789192924020941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''regspecinstr'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23283202820337604)
,p_name=>'saveSpecialInstruction'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22788903143020939)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23283357319337605)
,p_event_id=>wwv_flow_imp.id(23283202820337604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P74_RAD_DETAIL_DML_STATUS") == ''CREATE'') {',
'    insertSpecialInstruction();',
'}',
'else if ($v("P74_RAD_DETAIL_DML_STATUS") == ''UPDATE'') {',
'    updateSpecialInstruction();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23283636408337608)
,p_name=>'SignHDRPhysics'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23377885927545184)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23283841440337610)
,p_event_id=>wwv_flow_imp.id(23283636408337608)
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
'  :P74_TXT_ALERT_TEXT := null;',
'  :P74_SUCCESS_MSG    := null;',
'  :P74_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P74_DISP_MRNO,',
'                                          :P74_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P74_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P74_VALIDATE'', ''Y'');',
'    :P74_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P74_DISP_MRNO,P74_PASSWORD'
,p_attribute_03=>'P74_SUCCESS_MSG,P74_ERROR,P74_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23284160198337613)
,p_event_id=>wwv_flow_imp.id(23283636408337608)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P74_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P74_CHECK_SIGN = ''N'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00156.SIGN_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P74_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P74_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_INSERTION_ID      => :P74_ND_IMPLANT_INSERTION_ID,',
'                                                      P_PHY_PLAN_ID       => :P74_PHY_PLAN_ID,',
'                                                      P_SIGN_BY           => :P74_DISP_MRNO,',
'                                                      P_SCHEDULE_EVENT_ID => NULL,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00063'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'        ',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P74_ERROR := L_ALERT_TEXT;',
'        ELSE',
'          :P74_SUCCESS_MSG := ''Brachytheraphy Physics Plan signed properly'';',
'        END IF;',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID,P74_ND_IMPLANT_INSERTION_ID,P74_PHY_PLAN_ID,P74_DISP_MRNO,P74_VALIDATE,P74_CHECK_SIGN'
,p_attribute_03=>'P74_ERROR,P74_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P74_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23284382973337615)
,p_event_id=>wwv_flow_imp.id(23283636408337608)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P74_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF NVL(:P74_CHECK_SIGN, ''N'') = ''Y'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00156.SIGN_CHECK_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''ORGANIZATION_ID''),',
'                                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''LOCATION_ID''),',
'                                                            P_RADIATION_NO      => :P74_RAD_DETAIL_ND_RADIATION_NO,',
'                                                            P_SITE_ID           => :P74_RAD_DETAIL_ND_SITE_ID,',
'                                                            P_INSERTION_ID      => :P74_ND_IMPLANT_INSERTION_ID,',
'                                                            P_PHY_PLAN_ID       => :P74_PHY_PLAN_ID,',
'                                                            P_SIGN_BY           => :P74_DISP_MRNO,',
'                                                            P_SCHEDULE_EVENT_ID => NULL,',
'                                                            P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''USER_MRNO''),',
'                                                            P_OBJECT_CODE       => ''S18APX00063'',',
'                                                            P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''TERMINAL''),',
'                                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                            P_STOP              => L_STOP);',
'        ',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P74_ERROR := L_ALERT_TEXT;',
'        ELSE',
'          :P74_SUCCESS_MSG := ''Brachytheraphy Physics Plan signed properly'';',
'        END IF;',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID,P74_ND_IMPLANT_INSERTION_ID,P74_PHY_PLAN_ID,P74_DISP_MRNO,P74_VALIDATE,P74_CHECK_SIGN'
,p_attribute_03=>'P74_ERROR,P74_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P74_CHECK_SIGN'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23284426998337616)
,p_event_id=>wwv_flow_imp.id(23283636408337608)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radhdrphy'').refresh();',
'',
'if (($v("P74_SIGN_STATUS") === "015") || ($v("P74_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'    apex.item("P74_PHY_MACHINE").disable();',
'    apex.item("P74_PRESCRIPTION_POINT").disable();',
'    apex.item("P74_PHYSICIST_NOTES").disable();',
'    apex.item("P74_NO_CHANNEL_USED").disable();',
'    apex.item("P74_DWELL_TIME").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'    apex.item("P74_PHY_MACHINE").enable();',
'    apex.item("P74_PRESCRIPTION_POINT").enable();',
'    apex.item("P74_PHYSICIST_NOTES").enable();',
'    apex.item("P74_NO_CHANNEL_USED").enable();',
'    apex.item("P74_DWELL_TIME").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23284512628337617)
,p_name=>'CloseRegion'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23377432937545183)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23284694187337618)
,p_event_id=>wwv_flow_imp.id(23284512628337617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(176801809093095402)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55267205487901709)
,p_name=>'DASign@EnterKey'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55267414478901711)
,p_event_id=>wwv_flow_imp.id(55267205487901709)
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
'  :P74_TXT_ALERT_TEXT := null;',
'  :P74_SUCCESS_MSG    := null;',
'  :P74_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P74_DISP_MRNO,',
'                                          :P74_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P74_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P74_VALIDATE'', ''Y'');',
'    :P74_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P74_DISP_MRNO,P74_PASSWORD'
,p_attribute_03=>'P74_SUCCESS_MSG,P74_ERROR,P74_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55267524810901712)
,p_event_id=>wwv_flow_imp.id(55267205487901709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P74_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P74_CHECK_SIGN = ''N'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00156.SIGN_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P74_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P74_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_INSERTION_ID      => :P74_ND_IMPLANT_INSERTION_ID,',
'                                                      P_PHY_PLAN_ID       => :P74_PHY_PLAN_ID,',
'                                                      P_SIGN_BY           => :P74_DISP_MRNO,',
'                                                      P_SCHEDULE_EVENT_ID => NULL,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00063'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'        ',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P74_ERROR := L_ALERT_TEXT;',
'        ELSE',
'          :P74_SUCCESS_MSG := ''Brachytheraphy Physics Plan signed properly'';',
'        END IF;',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID,P74_ND_IMPLANT_INSERTION_ID,P74_PHY_PLAN_ID,P74_DISP_MRNO,P74_VALIDATE,P74_CHECK_SIGN'
,p_attribute_03=>'P74_ERROR,P74_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P74_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55267678678901713)
,p_event_id=>wwv_flow_imp.id(55267205487901709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P74_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF NVL(:P74_CHECK_SIGN, ''N'') = ''Y'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00156.SIGN_CHECK_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''ORGANIZATION_ID''),',
'                                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''LOCATION_ID''),',
'                                                            P_RADIATION_NO      => :P74_RAD_DETAIL_ND_RADIATION_NO,',
'                                                            P_SITE_ID           => :P74_RAD_DETAIL_ND_SITE_ID,',
'                                                            P_INSERTION_ID      => :P74_ND_IMPLANT_INSERTION_ID,',
'                                                            P_PHY_PLAN_ID       => :P74_PHY_PLAN_ID,',
'                                                            P_SIGN_BY           => :P74_DISP_MRNO,',
'                                                            P_SCHEDULE_EVENT_ID => NULL,',
'                                                            P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''USER_MRNO''),',
'                                                            P_OBJECT_CODE       => ''S18APX00063'',',
'                                                            P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                               ''TERMINAL''),',
'                                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                            P_STOP              => L_STOP);',
'        ',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P74_ERROR := L_ALERT_TEXT;',
'        ELSE',
'          :P74_SUCCESS_MSG := ''Brachytheraphy Physics Plan signed properly'';',
'        END IF;',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P74_RAD_DETAIL_ND_RADIATION_NO,P74_RAD_DETAIL_ND_SITE_ID,P74_ND_IMPLANT_INSERTION_ID,P74_PHY_PLAN_ID,P74_DISP_MRNO,P74_VALIDATE,P74_CHECK_SIGN'
,p_attribute_03=>'P74_ERROR,P74_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P74_CHECK_SIGN'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55267781396901714)
,p_event_id=>wwv_flow_imp.id(55267205487901709)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radhdrphy'').refresh();',
'',
'if (($v("P74_SIGN_STATUS") === "015") || ($v("P74_SIGN_STATUS") === "248")) {',
'    apex.item("sign_btn").disable();',
'    apex.item("save").disable();',
'    apex.item("P74_PHY_MACHINE").disable();',
'    apex.item("P74_PRESCRIPTION_POINT").disable();',
'    apex.item("P74_PHYSICIST_NOTES").disable();',
'    apex.item("P74_NO_CHANNEL_USED").disable();',
'    apex.item("P74_DWELL_TIME").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'',
'}',
'else {',
'    apex.item("sign_btn").enable();',
'    apex.item("save").enable();',
'    apex.item("P74_PHY_MACHINE").enable();',
'    apex.item("P74_PRESCRIPTION_POINT").enable();',
'    apex.item("P74_PHYSICIST_NOTES").enable();',
'    apex.item("P74_NO_CHANNEL_USED").enable();',
'    apex.item("P74_DWELL_TIME").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(247149735262506144)
,p_name=>'DACreateNewPlan'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22512251447943644)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247149808711506145)
,p_event_id=>wwv_flow_imp.id(247149735262506144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P74_SUCCESS_MSG").setValue('''');',
'apex.item("P74_ERROR").setValue('''');',
' ',
'apex.server.process("ProcessCreateRadPhysicPlan",',
'    {',
'        pageItems: [',
'            "P74_RAD_DETAIL_ND_RADIATION_NO",',
'            "P74_RAD_DETAIL_ND_SITE_ID",',
'         ',
'            "P74_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P74_SUCCESS_MSG").setValue(obj.message);',
'                apex.region("specinstr").refresh();',
'                 apex.region("radhdrphy").refresh();',
'            } else {',
'                apex.item("P74_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(247150013371506147)
,p_name=>'DADisposedPlan'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22512615520943644)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(247150126696506148)
,p_event_id=>wwv_flow_imp.id(247150013371506147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Are you sure, you want to dispose this plan?</b>'
,p_attribute_02=>'System Message!'
,p_attribute_03=>'warning'
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
 p_id=>wwv_flow_imp.id(252844810682186201)
,p_event_id=>wwv_flow_imp.id(247150013371506147)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P74_SUCCESS_MSG").setValue('''');',
'apex.item("P74_ERROR").setValue('''');',
' ',
'apex.server.process("ProcessDisposeRadPhysicPlan",',
'    {',
'        pageItems: [',
'            "P74_RAD_DETAIL_ND_RADIATION_NO",',
'            "P74_RAD_DETAIL_ND_SITE_ID",',
'            "P74_ND_IMPLANT_INSERTION_ID",',
'            "P74_PHY_PLAN_ID",',
'            "P74_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P74_SUCCESS_MSG").setValue(obj.message);',
'                apex.region("specinstr").refresh();',
'                 apex.region("radhdrphy").refresh();',
'            } else {',
'                apex.item("P74_ERROR").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(254454853316107409)
,p_name=>'InvokeSaveGridProcess'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22511083023943643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254454922835107410)
,p_event_id=>wwv_flow_imp.id(254454853316107409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'AjexSaveMasterGridProcess'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P74_SUCCESS_MSG").setValue('''');',
'apex.item("P74_ERROR").setValue('''');',
'if ($v(''P74_RAD_DETAIL_ND_RADIATION_NO'') !== '''' && $v(''P74_RAD_DETAIL_ND_SITE_ID'') !== '''') {',
'    // apex.region("specinstr").widget().interactiveGrid("getActions").invoke("save");',
'}',
'apex.server.process("ProcessFormMaster",',
'    {',
'        pageItems: ["P74_MRNO",',
'            "P74_RAD_DETAIL_ND_RADIATION_NO",',
'            "P74_PHY_PLAN_ID",',
'            "P74_RAD_DETAIL_ND_SITE_ID",',
'            "P74_PRESCRIPTION_POINT",',
'            "P74_NO_CHANNEL_USED",',
'            "P74_DWELL_TIME",',
'            "P74_PHYSICIST_NOTES",',
'            "P74_ND_IMPLANT_INSERTION_ID",',
'            "P74_PHY_MACHINE",',
'            "P74_PARAM_MRNO",',
'            "P74_PARAM_RADIATION_NO",',
'            "P74_SUCCESS_MSG",',
'            "P74_ERROR",',
'            "GV_LOCATION_ID", "GV_ORGANIZATION_ID", "GV_USER_MRNO", "GV_TERMINAL"',
'        ]',
'    },',
'',
'    {',
'',
'        dataType: ''text'',',
'        success: function (data) {',
'',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status == "success") {  ',
'                $s("P74_SUCCESS_MSG", obj.message); ',
'                    ',
'        var model = apex.region("specinstr").widget().interactiveGrid("getViews", "grid").model;   ',
'         if (model.isChanged()) {',
'		      model.save(function (error, responseData) {',
'				if (error != null) {',
'					apex.message.showErrors(error);',
'				}else{   ',
'                        model.clearChanges(); ',
'                        apex.region("specinstr").call("getActions").set("edit", false);	',
'                       apex.region(''specinstr'').refresh();',
'                          apex.region("specinstr").call("getActions").set("edit", true);	',
'				}',
'			  });',
'		     }',
'       ',
'',
'',
'',
'',
'',
'                // apex.region("specinstr").widget().interactiveGrid("getActions").invoke("save");',
'                  //apex.region("specinstr").refresh();',
'                  apex.region("radhdrphy").refresh();',
'            }',
'            else {',
'                  $s("P74_ERROR", obj.message);  ',
'            }',
'',
'        },',
'    });',
'//}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(254455527873107416)
,p_name=>'Enable_DIsable_Buttons'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_STATUS_ENABLE_DISABLE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(($v("P74_STATUS_ENABLE_DISABLE") === "Entry"))',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254455686739107417)
,p_event_id=>wwv_flow_imp.id(254455527873107416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22512251447943644)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254455938156107420)
,p_event_id=>wwv_flow_imp.id(254455527873107416)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22512615520943644)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254455712631107418)
,p_event_id=>wwv_flow_imp.id(254455527873107416)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22512251447943644)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(254455849477107419)
,p_event_id=>wwv_flow_imp.id(254455527873107416)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22512615520943644)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182187066480912346)
,p_name=>'Enable_DIsable_Buttons_1'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_STATUS_ENABLE_DISABLE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(($v("P74_STATUS_ENABLE_DISABLE") === "Signed"))',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182187108541912347)
,p_event_id=>wwv_flow_imp.id(182187066480912346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22512251447943644)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182187418543912350)
,p_event_id=>wwv_flow_imp.id(182187066480912346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22512615520943644)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255792078930030512)
,p_name=>'DARefresh_Inspection'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_PARAM_RADIATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255792168987030513)
,p_event_id=>wwv_flow_imp.id(255792078930030512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22787048866020920)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255792960956030521)
,p_name=>'Refresh Grid'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255793030660030522)
,p_event_id=>wwv_flow_imp.id(255792960956030521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22787048866020920)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(255793104921030523)
,p_name=>'Refresh Function'
,p_event_sequence=>430
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22787048866020920)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(255793207362030524)
,p_event_id=>wwv_flow_imp.id(255793104921030523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22787048866020920)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182184058816912316)
,p_event_id=>wwv_flow_imp.id(255793104921030523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("specinstr").widget().interactiveGrid("getActions").set("edit", true);'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(254454652626107407)
,p_process_sequence=>33
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(82315662664058766)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'History - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>254454652626107407
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(247149624689506143)
,p_process_sequence=>43
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22787048866020920)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Special Instruction - Call from Ajax Callback'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM    EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00156.RADIATION_INSTRUCTION_TAB;',
' ',
'BEGIN',
' ',
'',
'  -- Handle row status conditions',
'  IF :APEX$ROW_STATUS = ''C'' THEN',
'',
'   -- Collect block data',
'   SELECT :P74_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P74_RAD_DETAIL_ND_SITE_ID SITE_ID,',
'         :PHASE_NO,',
'         :FRACTION_NO,',
'         :SPECIAL_INSTRUCTION,',
'         ''N'' PORT_FILM_REQUIRED,',
'         NULL SPECIAL_MESSAGE',
'    BULK COLLECT INTO L_BLOCK_DATA ',
'    FROM DUAL;',
'    -- Create',
'    BEGIN',
'      RADIATION.PKG_S18FRM00156.INSERT_RAD_INSTRUCTIONS(L_BLOCK_DATA) ; ',
'      ',
'    EXCEPTION',
'      WHEN DUP_VAL_ON_INDEX THEN',
'        :P74_ERROR := ''Duplicate record found...'';',
'    END;',
'  ELSIF :APEX$ROW_STATUS = ''U'' THEN',
'',
'   SELECT :RADIATION_NO,',
'         :SITE_ID,',
'         :PHASE_NO,',
'         :FRACTION_NO,',
'         :SPECIAL_INSTRUCTION,',
'         ''N'' PORT_FILM_REQUIRED,',
'         NULL SPECIAL_MESSAGE',
'    BULK COLLECT INTO L_BLOCK_DATA',
'    FROM DUAL;',
'    -- Update',
'    BEGIN',
'      RADIATION.PKG_S18FRM00156.UPDATE_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'      ',
'    EXCEPTION',
'      WHEN DUP_VAL_ON_INDEX THEN',
'        :P74_ERROR := ''Duplicate record found...'';',
'    END;',
'  ELSIF :APEX$ROW_STATUS = ''D'' THEN',
'    -- Delete',
'',
'     SELECT :RADIATION_NO,',
'         :SITE_ID,',
'         :PHASE_NO,',
'         :FRACTION_NO,',
'         :SPECIAL_INSTRUCTION,',
'         ''N'' PORT_FILM_REQUIRED,',
'         NULL SPECIAL_MESSAGE',
'    BULK COLLECT INTO L_BLOCK_DATA',
'    FROM DUAL;',
'    BEGIN',
'      RADIATION.PKG_S18FRM00156.DELETE_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'      ',
'    END;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception',
'    L_ALERT_TEXT := SQLERRM;',
'    :P74_ERROR := L_ALERT_TEXT;',
'',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM; -- Capture the actual error message',
'    :P74_ERROR := ''Unexpected error: '' || L_ALERT_TEXT;',
'',
'    L_STOP := ''Y'';',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>247149624689506143
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22550012011943675)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormHDRCTPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  --:P74_MRNO := NVL(:P74_MRNO, :P74_PARAM_MRNO);',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P74_RADIATION_NO,',
'         :P74_RADIATION_DATE,',
'         :P74_MRNO,',
'         :P74_PATIENT_NAME,',
'         :P74_DISP_AGE,',
'         :P74_DISP_GENDER,',
'         :P74_DOCTOR_ID,',
'         :P74_DISP_DOCTOR,',
'         :P74_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P74_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => NVL(:P74_MRNO,',
'                                                                                      :P74_PARAM_MRNO),',
'                                                           P_RADIOTHERAPY_TYPE => ''B''))',
'     AND MRNO LIKE CASE',
'           WHEN :P74_MRNO IS NOT NULL THEN',
'            ''%'' || :P74_MRNO',
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
,p_internal_uid=>22550012011943675
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(247149961962506146)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateRadPhysicPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P74_MRNO;',
'  L_RADIATION_NO := :P74_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00156.GEN_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P74_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P74_RAD_DETAIL_ND_SITE_ID,',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''USER_MRNO''),',
'                                             P_OBJECT_CODE       => ''S18APX00063'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''TERMINAL''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
'IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P74_PARAM_MRNO         := L_MRNO;',
'  :P74_PARAM_RADIATION_NO := L_RADIATION_NO;',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Physics Plan created successfully'');',
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
' '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>247149961962506146
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(247150322076506150)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeRadPhysicPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P74_MRNO;',
'  L_RADIATION_NO := :P74_RAD_DETAIL_ND_RADIATION_NO;',
'  RADIATION.PKG_S18FRM00156.DISPOSE_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                 P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                 P_RADIATION_NO      => :P74_RAD_DETAIL_ND_RADIATION_NO,',
'                                                 P_SITE_ID           => :P74_RAD_DETAIL_ND_SITE_ID,',
'                                                 P_INSERTION_ID      => :P74_ND_IMPLANT_INSERTION_ID,',
'                                                 P_PHY_PLAN_ID       => :P74_PHY_PLAN_ID,',
'                                                 P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''USER_MRNO''),',
'                                                 P_OBJECT_CODE       => ''S18APX00063'',',
'                                                 P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''TERMINAL''),',
'                                                 P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                 P_STOP              => L_STOP);',
'',
'IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P74_PARAM_MRNO         := L_MRNO;',
'  :P74_PARAM_RADIATION_NO := L_RADIATION_NO;',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Physics Plan Disposed successfully'');',
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
' '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>247150322076506150
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22549690844943674)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessFormMaster'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PHYSICS_TAB RADIATION.PKG_S18FRM00156.RAD_PHYSICS_TAB;',
'  L_MRNO            RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO    RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'  V_ERROR EXCEPTION;',
'BEGIN',
'  L_MRNO         := :P74_MRNO;',
'  L_RADIATION_NO := :P74_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  IF :P74_PHY_PLAN_ID IS NOT NULL THEN',
'    SELECT :P74_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P74_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P74_PHY_PLAN_ID                PHY_PLAN_ID,',
'           NULL                            FROM_FRACTION_ID,',
'           NULL                            TO_FRACTION_ID,',
'           NULL                            SIGN_BY,',
'           NULL                            SIGN_DATE,',
'           NULL                            STATUS_ID,',
'           NULL                            SCHEDULE_SRNO,',
'           NULL                            OC_SERIAL_NO,',
'           :P74_PRESCRIPTION_POINT         PRESCRIPTION_POINT_ID,',
'           NULL                            PRESCRIPTION_POINT,',
'           :P74_NO_CHANNEL_USED            NO_CHANNEL_USED,',
'           :P74_DWELL_TIME                 DWELL_TIME,',
'           :P74_PHYSICIST_NOTES            PHYSICIST_NOTES,',
'           NULL                            STATUS_DESC,',
'           NULL                            SIGN_BY_NAME,',
'           NULL                            PLAN_ID,',
'           NULL                            INSTRUCTIONS,',
'           :P74_ND_IMPLANT_INSERTION_ID    IMPLANT_INSERTION_ID,',
'           NULL                            APPLICATOR,',
'           NULL                            APPLICATOR_SIZE,',
'           NULL                            EXAM_SPEC_VAGINUM,',
'           NULL                            IMPLANT_REMARKS,',
'           NULL                            PLANNING,',
'           NULL                            IMP_INSERTION_TIME,',
'           :P74_PHY_MACHINE                MACHINE_ID,',
'           NULL                            MACHINE_DESC',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_PHYSICS_TAB',
'      FROM DUAL;',
'  ',
'    BEGIN',
'      RADIATION.PKG_S18FRM00156.UPDATE_RAD_PHYSICS(L_RAD_PHYSICS_TAB);',
' ',
'        apex_json.open_object;  ',
'        apex_json.write( p_name => ''status'', p_value => ''success''); ',
'        apex_json.write( p_name => ''message'', p_value => ''Record Saved successfully''); ',
'        apex_json.close_object;',
'',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => SQLERRM || SQLCODE);',
'    APEX_JSON.CLOSE_OBJECT;',
' ',
'    END; ',
'    end if;',
'  END ; '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22549690844943674
);
wwv_flow_imp.component_end;
end;
/

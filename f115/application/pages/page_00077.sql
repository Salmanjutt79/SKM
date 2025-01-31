prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'RAD_IMPLANT_INSERTION_PROC'
,p_alias=>'RAD-IMPLANT-INSERTION-PROC'
,p_page_mode=>'MODAL'
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
'function editImplantMedication() {',
'',
'    apex.theme.openRegion(''radimplantmedicationsubreg'')',
'',
'};',
'',
'',
'function deleteImplantMedication() {',
'',
'    if ($v("P77_IMPLANT_STATUS_ID") === "015") {',
'        apex.message.alert("Implant is signed, cannot proceed");',
'        return;',
'    }',
'',
'    apex.message.confirm(''Please confirm you want to delete Implant Procedure Medication(s)?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("processImplantMedication",',
'                {',
'',
'                    pageItems: ["P77_SUB_REG_RADIATION_NO",',
'                        "P77_SUB_REG_SITE_ID",',
'                        "P77_SUB_REG_INSERTION_ID",',
'                        "P77_SUB_REG_MEDICINE_ID",',
'                        "P77_SUB_REG_QUANTITY",',
'                        "P77_SUB_REG_UNIT_ID"',
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
'                            apex.region(''radimplantmedication'').refresh();',
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
'#radhdrimplant .a-GV-status {',
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
'',
'',
'#radimplantmedication .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#P77_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_ICD_DIAGNOSIS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P77_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_ANAESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_REQUEST_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_ANESTHESIA_SEDATION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_EXAM_SPEC_VAGINUM {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_IMPLANT_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_PLANNING_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_DISP_APPLICATOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_DISP_APPLICATOR_SIZE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_LENGTH_OF_VAGINA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_ASEPTIC_CLEANING {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_URETHRAL_CATHETER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_RECTAL_MARKER_PLACED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_BLADDER_RECTAL_PACKING {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_VAGINAL_INTEGRITY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SUB_REG_MEDICINE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SUB_REG_QUANTITY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SUB_REG_UNIT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SCHEDULE_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SIGN_BY_1_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SIGN_BY_2_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_SIGNATURE_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P77_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P77_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_PATIENT_TYPE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P77_PATIENT_MRNO_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P77_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P77_PASSWORD_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_height=>'1200'
,p_dialog_width=>'1800'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250121114804'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159078801274816212)
,p_plug_name=>'<b><p style="color:#8B0000">Anesthesia/Sedation</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>7
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159079071801816214)
,p_plug_name=>'<b><p style="color:#8B0000">Implant Procedure Detail</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25209377746232347)
,p_plug_name=>'Implant Insertion Medication'
,p_region_name=>'radimplantmedication'
,p_parent_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT RIM.RADIATION_NO,',
'             RIM.SITE_ID,',
'             RIM.INSERTION_ID,',
'             RIM.MEDICINE_ID,',
'             M.SHORT_DESC     AS DESCRIPTION,',
'             RIM.QUANTITY,',
'             RIM.UNIT_ID,',
'             U.DESCRIPTION    AS DISP_UNIT',
'        FROM RADIATION.RAD_IMPLANT_MEDICATION RIM,',
'             ENDOSCOPY.MEDICATIONS            M,',
'             DEFINITIONS.UNIT                 U',
'       WHERE RIM.UNIT_ID = U.UNIT_ID',
'         AND RIM.MEDICINE_ID = M.DRUG_ID',
'         AND RIM.RADIATION_NO = :P77_RAD_DETAIL_ND_RADIATION_NO',
'         AND RIM.SITE_ID = :P77_RAD_DETAIL_ND_SITE_ID',
'         AND RIM.INSERTION_ID = :P77_ND_IMPLANT_INSERTION_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P77_RAD_DETAIL_ND_RADIATION_NO,P77_RAD_DETAIL_ND_SITE_ID,P77_ND_IMPLANT_INSERTION_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Implant Insertion Medication'
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
 p_id=>wwv_flow_imp.id(25209690984232350)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>41
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387120140313801)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>51
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387230759313802)
,p_name=>'INSERTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>61
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387350681313803)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>11
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387432645313804)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Medicine</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'LEFT'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387515921313805)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">Quantity</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387607279313806)
,p_name=>'UNIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>81
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387753868313807)
,p_name=>'DISP_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Unit</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>5
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
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
 p_id=>wwv_flow_imp.id(25387871375313808)
,p_name=>'Edit'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'<b><p style="color:#00008B">Edit</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:editImplantMedication();javascript:$s(''P77_SUB_REG_MEDICINE_ID'', ''&MEDICINE_ID.'');javascript:$s(''P77_SUB_REG_QUANTITY'', ''&QUANTITY.'');javascript:$s(''P77_SUB_REG_UNIT'', ''&DISP_UNIT.'');javascript:$s(''P77_SUB_REG_RADIATION_NO'', ''&RADIATION_NO'
||'.'');javascript:$s(''P77_SUB_REG_SITE_ID'', ''&SITE_ID.'');javascript:$s(''P77_SUB_REG_INSERTION_ID'', ''&INSERTION_ID.'');javascript:$s(''P77_SUB_REG_UNIT_ID'', ''&UNIT_ID.'');javascript:$s(''P77_SUB_REG_DML_STATUS'', ''UPDATE'');'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25387931816313809)
,p_name=>'Delete'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'<b><p style="color:#00008B">Delete</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:deleteImplantMedication();javascript:$s(''P77_SUB_REG_MEDICINE_ID'', ''&MEDICINE_ID.'');javascript:$s(''P77_SUB_REG_QUANTITY'', ''&QUANTITY.'');javascript:$s(''P77_SUB_REG_UNIT'', ''&DISP_UNIT.'');javascript:$s(''P77_SUB_REG_RADIATION_NO'', ''&RADIATION_'
||'NO.'');javascript:$s(''P77_SUB_REG_SITE_ID'', ''&SITE_ID.'');javascript:$s(''P77_SUB_REG_INSERTION_ID'', ''&INSERTION_ID.'');javascript:$s(''P77_SUB_REG_UNIT_ID'', ''&UNIT_ID.'');javascript:$s(''P77_SUB_REG_DML_STATUS'', ''DELETE'');'
,p_link_text=>'<span class="u-danger-text t-Icon fa fa-trash"></span>'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(25209573139232349)
,p_internal_uid=>25209573139232349
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
'        label: "Add Implant Medicine",',
'        action: "addImplantMedicine",',
'        icon: "icon-ig-add-row",',
'        iconBeforeLabel: true,',
'        hot: true',
'    });',
'',
'',
'',
'    config.initActions = function (actions) {',
'        actions.add({',
'            name: "addImplantMedicine",',
'            action: function () {',
'                apex.item("P77_SUB_REG_RADIATION_NO").setValue($v("P77_RAD_DETAIL_ND_RADIATION_NO"));',
'                apex.item("P77_SUB_REG_SITE_ID").setValue($v("P77_RAD_DETAIL_ND_SITE_ID"));',
'                apex.item("P77_SUB_REG_INSERTION_ID").setValue($v("P77_ND_IMPLANT_INSERTION_ID"));',
'                apex.item("P77_SUB_REG_MEDICINE_ID").setValue('''');',
'                apex.item("P77_SUB_REG_QUANTITY").setValue('''');',
'                apex.item("P77_SUB_REG_UNIT_ID").setValue('''');',
'                apex.item("P77_SUB_REG_UNIT").setValue('''');',
'                apex.item("P77_SUB_REG_DML_STATUS").setValue(''CREATE'');',
'',
'',
'                if ($v("P77_IMPLANT_STATUS_ID") === "015") {',
'                    apex.item("saveimplantmedication").disable();',
'                }',
'                else if ($v("P77_IMPLANT_STATUS_ID") === "009") {',
'                    apex.item("saveimplantmedication").disable();',
'                }',
'',
'                else {',
'                    apex.item("saveimplantmedication").enable();',
'                }',
'',
'',
'',
'                apex.theme.openRegion(''radimplantmedicationsubreg'');',
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
 p_id=>wwv_flow_imp.id(25392976349315562)
,p_interactive_grid_id=>wwv_flow_imp.id(25209573139232349)
,p_static_id=>'253930'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(25393196867315562)
,p_report_id=>wwv_flow_imp.id(25392976349315562)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25393650354315566)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(25209690984232350)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25394504018315569)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(25387120140313801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25395454319315572)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(25387230759313802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25396389757315575)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(25387350681313803)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>369
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25397206594315577)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(25387432645313804)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162.983
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25398165111315580)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(25387515921313805)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25399042813315583)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(25387607279313806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25399955751315585)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(25387753868313807)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75.035
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25409975586356970)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(25387871375313808)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>45
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25410879437356973)
,p_view_id=>wwv_flow_imp.id(25393196867315562)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(25387931816313809)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159080261291816226)
,p_plug_name=>'Implant Procedure Medication'
,p_region_name=>'radimplantmedicationsubreg'
,p_parent_plug_id=>wwv_flow_imp.id(25209377746232347)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25209451169232348)
,p_plug_name=>'<b><p style="color:#8B0000">Implant Procedure Sign</p></b>'
,p_parent_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(228114539122136750)
,p_plug_name=>'Implant Procedure '
,p_region_name=>'radhdrimplant'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       PHASE_NO,',
'       INSERTION_ID,',
'       FROM_FRACTION_ID,',
'       TO_FRACTION_ID,',
'       APPLICATOR_ID,',
'       RADIATION.PKG_RADIATION.GET_APPLICATOR_DESC(APPLICATOR_ID) DISP_APPLICATOR,',
'       APPLICATOR_SIZE_ID,',
'       RADIATION.PKG_RADIATION.GET_APPLICATOR_SIZE_DESC(APPLICATOR_ID,',
'                                                        APPLICATOR_SIZE_ID) DISP_APPLICATION_SIZE,',
'       EXAM_SPEC_VAGINUM,',
'       ASEPTIC_CLEANING,',
'       URETHRAL_CATHETER,',
'       BLADDER_RECTAL_PACKING,',
'       RECTAL_MARKER_PLACED,',
'       REMARKS,',
'       SIGN_BY_1,',
'       SIGN_BY_2,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_1) SIGN_BY_1_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY_2) SIGN_BY_2_NAME,',
'       TO_CHAR(SIGN_DATE, ''DD-MM-RR HH24:MI'') INSERTION_TIME,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(STATUS_ID) STATUS,',
'       SCHEDULE_SRNO,',
'       OC_SERIAL_NO,',
'       NOTE_ID,',
'       (SELECT D.PLANNING_ID',
'          FROM RADIATION.RADIATION_DETAIL D',
'         WHERE D.RADIATION_NO = :P77_RAD_DETAIL_ND_RADIATION_NO',
'           AND D.SITE_ID = :P77_RAD_DETAIL_ND_SITE_ID) PLANNING_ID,',
'       (SELECT D.PLANNING',
'          FROM RADIATION.RADIATION_DETAIL D',
'         WHERE D.RADIATION_NO = :P77_RAD_DETAIL_ND_RADIATION_NO',
'           AND D.SITE_ID = :P77_RAD_DETAIL_ND_SITE_ID) PLANNING,',
'       (SELECT RADIATION.PKG_RADIATION.GET_DISP_PLANNING(D.PLANNING)',
'          FROM RADIATION.RADIATION_DETAIL D',
'         WHERE D.RADIATION_NO = :P77_RAD_DETAIL_ND_RADIATION_NO',
'           AND D.SITE_ID = :P77_RAD_DETAIL_ND_SITE_ID) PLANNING_DESC,',
'       CASE',
'         WHEN STATUS_ID = ''015'' THEN',
'          TO_CHAR(SIGN_DATE, ''DD-MM-RR HH24:MI'')',
'         ELSE',
'          NULL',
'       END SIGNATURE_DATE,',
'       (SELECT TO_CHAR(VISIT_DATE, ''DD-MM-RR HH24:MI'')',
'          FROM RADIATION.SCHEDULE',
'         WHERE SR_NO = NVL(:P77_SCHEDULE_SRNO, SCHEDULE_SRNO)) SCHEDULE_DATE,',
'       (SELECT TO_CHAR(E.SIGN_DATE, ''DD-MM-RR HH24:MI'')',
'          FROM RADIATION.RAD_IMPLANT_EXTRACT E',
'         WHERE E.RADIATION_NO = I.RADIATION_NO',
'           AND E.SITE_ID = I.SITE_ID',
'           AND E.INSERTION_ID = I.INSERTION_ID',
'           AND E.STATUS_ID = ''015'') OUT_TIME,',
'       I.ANESTHESIA_SEDATION,',
'       I.VAGINAL_INTEGRITY,',
'       I.LENGTH_OF_VAGINA,',
'       ROWID',
'  FROM RADIATION.RAD_IMPLANT_INSERT I',
' WHERE RADIATION_NO = :P77_RAD_DETAIL_ND_RADIATION_NO',
'   AND SITE_ID = :P77_RAD_DETAIL_ND_SITE_ID',
'   AND INSERTION_ID = NVL(:P77_ND_IMPLANT_INSERTION_ID, INSERTION_ID)',
'   AND STATUS_ID <> ''248'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P77_RAD_DETAIL_ND_RADIATION_NO,P77_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Implant Procedure '
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
 p_id=>wwv_flow_imp.id(206340454035779878)
,p_heading=>'<b><p style="color:#8B0000">Fraction Id</p></b>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25108917406296232)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">Fraction</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109052689296233)
,p_name=>'APPLICATOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATOR_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109148622296234)
,p_name=>'DISP_APPLICATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_APPLICATOR'
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
 p_id=>wwv_flow_imp.id(25109251828296235)
,p_name=>'APPLICATOR_SIZE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATOR_SIZE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109357030296236)
,p_name=>'DISP_APPLICATION_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_APPLICATION_SIZE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109492334296237)
,p_name=>'ASEPTIC_CLEANING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASEPTIC_CLEANING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109596040296238)
,p_name=>'URETHRAL_CATHETER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'URETHRAL_CATHETER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109627140296239)
,p_name=>'BLADDER_RECTAL_PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BLADDER_RECTAL_PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109757736296240)
,p_name=>'RECTAL_MARKER_PLACED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECTAL_MARKER_PLACED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109893448296241)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25109957929296242)
,p_name=>'SIGN_BY_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110058946296243)
,p_name=>'SIGN_BY_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110180274296244)
,p_name=>'SIGN_BY_1_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_1_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110228697296245)
,p_name=>'SIGN_BY_2_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_2_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110379868296246)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Status</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>5
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110476945296247)
,p_name=>'SCHEDULE_SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_SRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110514598296248)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>550
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110689270296249)
,p_name=>'NOTE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>560
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25110760220296250)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25204750652232301)
,p_name=>'PLANNING_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25204806921232302)
,p_name=>'SIGNATURE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGNATURE_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25204951055232303)
,p_name=>'SCHEDULE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25205056451232304)
,p_name=>'OUT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUT_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Removal Time</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MON-RRRR HH24:MI'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25205142742232305)
,p_name=>'ANESTHESIA_SEDATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANESTHESIA_SEDATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25205224608232306)
,p_name=>'VAGINAL_INTEGRITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAGINAL_INTEGRITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25205338754232307)
,p_name=>'LENGTH_OF_VAGINA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LENGTH_OF_VAGINA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>640
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25390327348313833)
,p_name=>'INSERTION_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERTION_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Insertion Time</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>650
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(183814156278873378)
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
 p_id=>wwv_flow_imp.id(183814732598873384)
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
 p_id=>wwv_flow_imp.id(205421142136368869)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">From</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(206340454035779878)
,p_use_group_for=>'BOTH'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(205421246754368870)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">To</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(206340454035779878)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'toFractionId'
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
 p_id=>wwv_flow_imp.id(205422282499368881)
,p_name=>'INSERTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">ID</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(205422579011368884)
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
 p_id=>wwv_flow_imp.id(228114852314136753)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(228114917285136754)
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
 p_id=>wwv_flow_imp.id(228381349193975471)
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
 p_id=>wwv_flow_imp.id(228114642398136751)
,p_internal_uid=>228114642398136751
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
,p_fixed_header_max_height=>250
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'  config.initialSelection = true;',
'',
'  return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(228121696969143511)
,p_interactive_grid_id=>wwv_flow_imp.id(228114642398136751)
,p_static_id=>'220773'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(228121950922143511)
,p_report_id=>wwv_flow_imp.id(228121696969143511)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25211100368233900)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(25108917406296232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25212086275233903)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(25109052689296233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25212988330233907)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(25109148622296234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25213829145233910)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(25109251828296235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25214760359233913)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(25109357030296236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25215638581233916)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(25109492334296237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25216568811233919)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(25109596040296238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25217417446233922)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(25109627140296239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25218334418233925)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(25109757736296240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25219289607233928)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(25109893448296241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25220139675233931)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(25109957929296242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25221005023233934)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(25110058946296243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25221907917233937)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(25110180274296244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25222882651233940)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(25110228697296245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25223743712233943)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(25110379868296246)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.06200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25224692022233945)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(25110476945296247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25225504240233948)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(25110514598296248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25226458570233951)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(25110689270296249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25227340352233954)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(25110760220296250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25228270293233957)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(25204750652232301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25229017641233959)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(25204806921232302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25229902507233962)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(25204951055232303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25230823329233965)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(25205056451232304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140.99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25231721162233968)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(25205142742232305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25232645492233971)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(25205224608232306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25233570687233973)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(25205338754232307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26322783542807458)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(25390327348313833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145.95800000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(183871255466906091)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(183814156278873378)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(183876547020906115)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(183814732598873384)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(206190781281905559)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(205421142136368869)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81.97200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(206191685429905563)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(205421246754368870)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75.0347
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(206201502543905611)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(205422282499368881)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(206204230669905624)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(205422579011368884)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(228122439433143514)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(228114852314136753)
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
 p_id=>wwv_flow_imp.id(228123297502143519)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(228114917285136754)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(228605676979376743)
,p_view_id=>wwv_flow_imp.id(228121950922143511)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(228381349193975471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206338270866779857)
,p_plug_name=>'<b><p style="color:#8B0000">Implant Procedure Note</p></b>'
,p_parent_plug_id=>wwv_flow_imp.id(228114539122136750)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242646243682327989)
,p_plug_name=>'<b><p style="color:#8B0000">Request Remarks</p></b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>6
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(245863697011948674)
,p_plug_name=>'Sign '
,p_region_name=>'signreg'
,p_region_css_classes=>'js-dialog-size1200x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>74
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44783795339826373)
,p_plug_name=>'Physician Sign'
,p_parent_plug_id=>wwv_flow_imp.id(245863697011948674)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44783900889826374)
,p_plug_name=>'Consultant Sign'
,p_parent_plug_id=>wwv_flow_imp.id(245863697011948674)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(265868020013817714)
,p_plug_name=>'History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>9999
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = NVL(:P77_MRNO,:P77_PARAM_MRNO)',
'   AND M.RADIOTHERAPY_TYPE = ''B''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P77_MRNO'
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
 p_id=>wwv_flow_imp.id(265868073298817715)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>265868073298817715
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265868177775817716)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265868330319817717)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'MRNO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(265868433887817718)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(266401578387546770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'172056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:MRNO:REQUEST_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(271491237950201770)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>54
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273248192772004380)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>64
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(304040869323424179)
,p_plug_name=>'Brachytherapy Plan'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
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
'          ROWID,',
'          ANAESTHESIA,',
'          REMARKS,',
'          HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => DOCTOR_ID) DOCTOR_MRNO',
'     FROM RADIATION.RADIATION_MASTER M;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P77_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(313850032187805648)
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
' WHERE MRNO = :P77_MRNO;',
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
,p_ajax_items_to_submit=>'P77_MRNO'
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
 p_id=>wwv_flow_imp.id(160113140729158198)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160113543792158198)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160113907403158198)
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
 p_id=>wwv_flow_imp.id(313850431947805652)
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
'           ''Y'') PLANNING_UPD_ALLOWED,',
'        ROWID',
'  FROM RADIATION.RADIATION_DETAIL RD',
' WHERE RD.RADIATION_NO = :P77_RADIATION_NO',
'   AND RD.SITE_ID = NVL(:P77_PARAM_SITE_ID, RD.SITE_ID)',
'   AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                             P_SITE_ID             => RD.SITE_ID,',
'                                             P_PERFORMANCE_TYPE_ID => ''014'') = ''Y''',
'   AND ((:P77_SCHEDULE_SRNO IS NOT NULL AND EXISTS',
'        (SELECT 1',
'            FROM RADIATION.SCHEDULE S',
'           WHERE S.SR_NO = :P77_SCHEDULE_SRNO',
'             AND S.RADIATION_NO = RD.RADIATION_NO',
'             AND S.SITE_ID = RD.SITE_ID)) OR',
'       (:P77_SCHEDULE_SRNO IS NULL AND RD.SITE_ID = :P77_SCHEDULE_SRNO) OR',
'       (:P77_SCHEDULE_SRNO IS NULL AND :P77_SCHEDULE_SRNO IS NULL AND',
'       RD.SITE_ID = RD.SITE_ID));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P77_PARAM_SITE_ID,P77_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(183353192453495677)
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
 p_id=>wwv_flow_imp.id(227718453873439298)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">Dose Fraction <br>(cGy)</p></b>'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(227718479911439299)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">Fraction(s)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(265870551922817739)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">Total <br>Dose(cGy)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(294523174928558240)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(313850807711805655)
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
 p_id=>wwv_flow_imp.id(313850879231805656)
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
 p_id=>wwv_flow_imp.id(313850921617805657)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Radiotherapy Site</p></b>'
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
 p_id=>wwv_flow_imp.id(313851093487805658)
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
 p_id=>wwv_flow_imp.id(313851152332805659)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Planning Technique</p></b>'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(313851287255805660)
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
 p_id=>wwv_flow_imp.id(313851375728805661)
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
 p_id=>wwv_flow_imp.id(313851458593805662)
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
 p_id=>wwv_flow_imp.id(313851555422805663)
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
 p_id=>wwv_flow_imp.id(313851626784805664)
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
 p_id=>wwv_flow_imp.id(313851786047805665)
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
 p_id=>wwv_flow_imp.id(313851822747805666)
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
 p_id=>wwv_flow_imp.id(313851984463805667)
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
 p_id=>wwv_flow_imp.id(313852097805805668)
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
 p_id=>wwv_flow_imp.id(313852123248805669)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Status</p></b>'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(313852247015805670)
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
 p_id=>wwv_flow_imp.id(313852400711805671)
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
 p_id=>wwv_flow_imp.id(313852465945805672)
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
 p_id=>wwv_flow_imp.id(313852593950805673)
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
 p_id=>wwv_flow_imp.id(313850561585805653)
,p_internal_uid=>313850561585805653
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>158
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(314455163073964003)
,p_interactive_grid_id=>wwv_flow_imp.id(313850561585805653)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(314455348255964005)
,p_report_id=>wwv_flow_imp.id(314455163073964003)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(183668474516808501)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(183353192453495677)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(227908459540312184)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(227718453873439298)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104.85900000000001
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
 p_id=>wwv_flow_imp.id(227909327997312187)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(227718479911439299)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.837
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266543076140993195)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(265870551922817739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92.944
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(302723731692928589)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(294523174928558240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314455732930964006)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(313850807711805655)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314456697387964009)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(313850879231805656)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314457606045964012)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(313850921617805657)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>255.99200000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314458494070964014)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(313851093487805658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314459321643964017)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(313851152332805659)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.973
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314460298619964022)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(313851287255805660)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314461179085964025)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(313851375728805661)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314462090136964032)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(313851458593805662)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314462963614964034)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(313851555422805663)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314463862043964037)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(313851626784805664)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314464797698964040)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(313851786047805665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314465656688964042)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(313851822747805666)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314466571852964046)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(313851984463805667)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.31200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314467440558964050)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(313852097805805668)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314468385853964053)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(313852123248805669)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.402
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314469225351964056)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(313852247015805670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314470115742964059)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(313852400711805671)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.94399999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314471096558964066)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(313852465945805672)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(314471945619964068)
,p_view_id=>wwv_flow_imp.id(314455348255964005)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(313852593950805673)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22338549039272939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(271491237950201770)
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
 p_id=>wwv_flow_imp.id(160082243130158141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(273248192772004380)
,p_button_name=>'CraeteImplant'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Implant '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160081039352158135)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(271491237950201770)
,p_button_name=>'Save'
,p_button_static_id=>'savebtn'
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
 p_id=>wwv_flow_imp.id(160082699017158142)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(273248192772004380)
,p_button_name=>'DisposeImplant'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Implant'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times-rectangle-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160081418017158141)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(271491237950201770)
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
 p_id=>wwv_flow_imp.id(27002780388008273)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26998967482008270)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_button_name=>'SignHDRImplant'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25388821811313818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_button_name=>'SaveImplantMedication'
,p_button_static_id=>'saveimplantmedication'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save Medicine'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25389145629313821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_button_name=>'ExitImplantMedication'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Close'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22339360571272947)
,p_name=>'P77_PHASE_NO'
,p_item_sequence=>334
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25108814490296231)
,p_name=>'P77_IMPLANT_REMARKS'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(206338270866779857)
,p_prompt=>'<b><p style="color:#00008B">Remarks</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25209216379232346)
,p_name=>'P77_LENGTH_OF_VAGINA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_prompt=>'<b><p style="color:#00008B">Length Of Vagina (cm):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(25388021982313810)
,p_name=>'P77_SCHEDULE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25209451169232348)
,p_prompt=>'<b><p style="color:#00008B">Appointment</p></b>'
,p_format_mask=>'DD-MM-RR HH24:MI'
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
 p_id=>wwv_flow_imp.id(25388129289313811)
,p_name=>'P77_SIGN_BY_1_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25209451169232348)
,p_prompt=>'<b><p style="color:#00008B">Physician Sign</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25388232001313812)
,p_name=>'P77_SIGN_BY_2_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25209451169232348)
,p_prompt=>'<b><p style="color:#00008B">Consultant Sign</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25388377259313813)
,p_name=>'P77_SIGNATURE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25209451169232348)
,p_prompt=>'<b><p style="color:#00008B">Sign Date</p></b>'
,p_format_mask=>'DD-MM-RR HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25388584605313815)
,p_name=>'P77_SUB_REG_MEDICINE_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Medicine:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_HDR_IMPLANT_INSERT_MEDICATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.DRUG_ID, M.SHORT_DESC, U.DESCRIPTION UNIT, U.UNIT_ID UNITID',
'  FROM ENDOSCOPY.MEDICATIONS M, DEFINITIONS.UNIT U',
' WHERE M.UNIT_ID = U.UNIT_ID',
'   AND M.ACTIVE = ''Y''',
'   AND NATURE_ID = ''020''',
'   AND NATURE_DETAIL_ID = ''001''',
' ORDER BY M.SHORT_DESC',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'UNITID:P77_SUB_REG_UNIT_ID,UNIT:P77_SUB_REG_UNIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25388765304313817)
,p_name=>'P77_SUB_REG_UNIT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25389541257313825)
,p_name=>'P77_SUB_REG_DML_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25389702209313827)
,p_name=>'P77_IMPLANT_STATUS_ID'
,p_item_sequence=>324
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44789794644826384)
,p_name=>'P77_PATIENT_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
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
 p_id=>wwv_flow_imp.id(44789864428826385)
,p_name=>'P77_PATIENT_MRNO_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Employee Code:</b>'
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
 p_id=>wwv_flow_imp.id(44789971978826386)
,p_name=>'P77_NAME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44790073095826387)
,p_name=>'P77_PASSWORD_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
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
 p_id=>wwv_flow_imp.id(44790206498826388)
,p_name=>'P77_DISP_MRNO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44790336329826389)
,p_name=>'P77_USER_MRNO_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44790415050826390)
,p_name=>'P77_LOGIN_DATE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44790470098826391)
,p_name=>'P77_LOCATION_ID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44790638813826392)
,p_name=>'P77_LOGIN_MESSAGE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44790699664826393)
,p_name=>'P77_VALIDATE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(44783900889826374)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159078206497816206)
,p_name=>'P77_ICD_DIAGNOSIS'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_prompt=>'<b><p style="color:#00008B">Diagnosis:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159078936283816213)
,p_name=>'P77_ANESTHESIA_SEDATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159078801274816212)
,p_use_cache_before_default=>'NO'
,p_item_default=>'None'
,p_prompt=>'<b><p style="color:#00008B">Anesthesia/Sedation</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:None;None,General Anesthesia;General Anesthesia,Sedation;Sedation'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159079154866816215)
,p_name=>'P77_PLANNING_DESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_prompt=>'<b><p style="color:#00008B">Planning Technique:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, PLANNING_ID',
'  FROM RADIATION.PLANNING',
' WHERE ACTIVE = ''Y''',
'   AND RADIOTHERAPY_TYPE = ''B''',
' ORDER BY DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159079242420816216)
,p_name=>'P77_DISP_APPLICATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_prompt=>'<b><p style="color:#00008B">Applicator Used:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION,T.APPLICATOR_ID',
'  FROM RADIATION.APPLICATOR T',
' WHERE T.ACTIVE = ''Y''',
' ORDER BY T.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159079451927816218)
,p_name=>'P77_DISP_APPLICATOR_SIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_prompt=>'<b><p style="color:#00008B">Applicator Size:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION, T.APPLICATOR_SIZE_ID',
'  FROM RADIATION.APPLICATOR_SIZE T',
' WHERE T.APPLICATOR_ID = :P77_DISP_APPLICATOR',
'   AND T.ACTIVE = ''Y''',
' ORDER BY T.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P77_DISP_APPLICATOR'
,p_ajax_items_to_submit=>'P77_DISP_APPLICATOR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159079711530816221)
,p_name=>'P77_ASEPTIC_CLEANING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Aseptic Cleaning</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159079813597816222)
,p_name=>'P77_URETHRAL_CATHETER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Urethral Catheter with Contrast</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159079974887816223)
,p_name=>'P77_RECTAL_MARKER_PLACED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Rectal Marker Placed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080090191816224)
,p_name=>'P77_BLADDER_RECTAL_PACKING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Bladder Rectal Packing with Contrast</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080148045816225)
,p_name=>'P77_VAGINAL_INTEGRITY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(159079071801816214)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Vaginal Integrity</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080312408816227)
,p_name=>'P77_SUB_REG_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080410320816228)
,p_name=>'P77_SUB_REG_SITE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080550385816229)
,p_name=>'P77_SUB_REG_INSERTION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080690652816230)
,p_name=>'P77_SUB_REG_QUANTITY'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Quantity:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159080762414816231)
,p_name=>'P77_SUB_REG_UNIT'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(159080261291816226)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Unit:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183878710724873558)
,p_name=>'P77_PLAN_ID'
,p_item_sequence=>284
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184243556420659464)
,p_name=>'P77_DOCTOR_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_source=>'DOCTOR_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184288928858659523)
,p_name=>'P77_ALERT'
,p_item_sequence=>294
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184289067021659524)
,p_name=>'P77_SUCCESS_MESSAGE'
,p_item_sequence=>304
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184290072473659534)
,p_name=>'P77_SIGN_FLAG'
,p_item_sequence=>314
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206434775641780059)
,p_name=>'P77_EXAM_SPEC_VAGINUM'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(206338270866779857)
,p_prompt=>'<b><p style="color:#00008B">Examination on Spec and per vaginam</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206463474352780117)
,p_name=>'P77_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>244
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206958341926096788)
,p_name=>'P77_ND_IMPLANT_INSERTION_ID'
,p_item_sequence=>254
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206958429152096789)
,p_name=>'P77_PHY_PLAN_ID'
,p_item_sequence=>264
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(206958988452096794)
,p_name=>'P77_CHECK_SIGN'
,p_item_sequence=>274
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(227772985007439459)
,p_name=>'P77_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>77
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_prompt=>'<b><p style="color:#8B0000">Anesthesia</p></b>'
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>' (p_attributes): onclick="return false;"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(227773102858439460)
,p_name=>'P77_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228289690158137056)
,p_name=>'P77_SCHEDULE_SRNO'
,p_item_sequence=>204
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228554965904975762)
,p_name=>'P77_CT_SRNO'
,p_item_sequence=>214
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228555040687975763)
,p_name=>'P77_CT_SCHEDULE_DATE'
,p_item_sequence=>224
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MM-RRRR HH24:MI'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228555486565975767)
,p_name=>'P77_SCHEDULE_EVENT_ID'
,p_item_sequence=>234
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(242656416656328032)
,p_name=>'P77_REQUEST_REMARKS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(242646243682327989)
,p_prompt=>'<b><p style="color:#00008B">Request Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245878196297948762)
,p_name=>'P77_TXT_ALERT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(245863697011948674)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245878303981948763)
,p_name=>'P77_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(245863697011948674)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245878584634948753)
,p_name=>'P77_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(245878612845948754)
,p_name=>'P77_PATIENT_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(245878705551948755)
,p_name=>'P77_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
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
 p_id=>wwv_flow_imp.id(245878862240948756)
,p_name=>'P77_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
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
 p_id=>wwv_flow_imp.id(245878985639948757)
,p_name=>'P77_DISP_MRNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245879069056948758)
,p_name=>'P77_USER_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245879108969948759)
,p_name=>'P77_LOGIN_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245879203167948760)
,p_name=>'P77_LOCATION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245879372737948761)
,p_name=>'P77_LOGIN_MESSAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245879465910948762)
,p_name=>'P77_VALIDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(44783795339826373)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(249601697946753128)
,p_name=>'P77_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(245863697011948674)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266132010251818123)
,p_name=>'P77_PARAM_RADIATION_NO'
,p_item_sequence=>104
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266132986631818133)
,p_name=>'P77_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>184
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266523500509315294)
,p_name=>'P77_QUERY_NEW'
,p_item_sequence=>194
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271816983418202222)
,p_name=>'P77_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>124
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271817057641202223)
,p_name=>'P77_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>134
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271817681365202229)
,p_name=>'P77_RAD_PLAN_CHECK_ID'
,p_item_sequence=>144
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271818406278202236)
,p_name=>'P77_SIGN_STATUS'
,p_item_sequence=>154
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274084221910767031)
,p_name=>'P77_RAD_PLAN_CHECK_DML_STATUS'
,p_item_sequence=>174
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274084642074767036)
,p_name=>'P77_PARAM_SR_NO'
,p_item_sequence=>94
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276606409811512293)
,p_name=>'P77_PARAM_MRNO'
,p_item_sequence=>114
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(304168248275424433)
,p_name=>'P77_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(304168344861424434)
,p_name=>'P77_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_format_mask=>'DD-MON-RRRR HH24:MI'
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313975792462805885)
,p_name=>'P77_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(313975905549805886)
,p_name=>'P77_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313976025712805887)
,p_name=>'P77_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313976105684805888)
,p_name=>'P77_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313976145755805889)
,p_name=>'P77_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313976303517805890)
,p_name=>'P77_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313976441592805891)
,p_name=>'P77_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
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
 p_id=>wwv_flow_imp.id(313976660260805894)
,p_name=>'P77_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313976829852805895)
,p_name=>'P77_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
 p_id=>wwv_flow_imp.id(313976888223805896)
,p_name=>'P77_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
 p_id=>wwv_flow_imp.id(313976955466805897)
,p_name=>'P77_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
 p_id=>wwv_flow_imp.id(313977078633805898)
,p_name=>'P77_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
 p_id=>wwv_flow_imp.id(313977196163805899)
,p_name=>'P77_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(304040869323424179)
,p_item_source_plug_id=>wwv_flow_imp.id(304040869323424179)
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
 p_id=>wwv_flow_imp.id(314176622694806108)
,p_name=>'P77_PARAM_SITE_ID'
,p_item_sequence=>74
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(316536328918789325)
,p_name=>'P77_ALERT_TEXT'
,p_item_sequence=>164
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160145646823158239)
,p_name=>'DASelctionChangeRadiationDetail'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(313850431947805652)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160146100904158239)
,p_event_id=>wwv_flow_imp.id(160145646823158239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SetRadiationSiteID'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P77_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P77_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'/*model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'',
'apex.item("P77_RAD_DETAIL_ND_RADIATION_NO").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'apex.item("P77_RAD_DETAIL_ND_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'}*/',
'//apex.region("radplanchecklist").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160146679110158239)
,p_event_id=>wwv_flow_imp.id(160145646823158239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(228114539122136750)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160149462011158242)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(160081418017158141)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160149943285158243)
,p_event_id=>wwv_flow_imp.id(160149462011158242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160150279814158243)
,p_name=>'HistoryDA'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(265868020013817714)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160150747242158244)
,p_event_id=>wwv_flow_imp.id(160150279814158243)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P77_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160151268027158244)
,p_event_id=>wwv_flow_imp.id(160150279814158243)
,p_event_result=>'TRUE'
,p_action_sequence=>2
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         TO_CHAR(RADIATION_DATE,''DD-MON-RRRR HH24:MI''),',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT,',
'         ANAESTHESIA,',
'         HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => DOCTOR_ID) DOCTOR_MRNO,',
'         M.ICDNO || '' - '' ||',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(M.ICDNO) DISP_DIAGNOSIS,',
'         M.REMARKS',
'    INTO :P77_RADIATION_NO,',
'         :P77_RADIATION_DATE,',
'         :P77_MRNO,',
'         :P77_PATIENT_NAME,',
'         :P77_DISP_AGE,',
'         :P77_DISP_GENDER,',
'         :P77_DOCTOR_ID,',
'         :P77_DISP_DOCTOR,',
'         :P77_DISP_INTENT,',
'         :P77_ANAESTHESIA,',
'         :P77_DOCTOR_MRNO,',
'         :P77_ICD_DIAGNOSIS,',
'         :P77_REQUEST_REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = NVL(:P77_PARAM_RADIATION_NO, RADIATION_NO)',
'     AND MRNO LIKE CASE',
'           WHEN :P77_MRNO IS NOT NULL THEN',
'            ''%'' || :P77_MRNO',
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
,p_attribute_02=>'P77_PARAM_RADIATION_NO'
,p_attribute_03=>'P77_RADIATION_DATE,P77_MRNO,P77_PATIENT_NAME,P77_DISP_AGE,P77_DISP_GENDER,P77_DOCTOR_ID,P77_DISP_DOCTOR,P77_DISP_INTENT,P77_ICD_DIAGNOSIS,P77_ANAESTHESIA,P77_REQUEST_REMARKS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160151706702158244)
,p_event_id=>wwv_flow_imp.id(160150279814158243)
,p_event_result=>'TRUE'
,p_action_sequence=>3
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313850032187805648)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160152242045158248)
,p_event_id=>wwv_flow_imp.id(160150279814158243)
,p_event_result=>'TRUE'
,p_action_sequence=>4
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313850431947805652)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160152607538158248)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160153167432158248)
,p_event_id=>wwv_flow_imp.id(160152607538158248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P77_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P77_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P77_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P77_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P77_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P77_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
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
,p_attribute_02=>'P77_SERVICE_NO,P77_SERVICE_STATUS,P77_RANK,P77_FORMATION,P77_UNIT'
,p_attribute_03=>'P77_SYSTEM_CONSTANT_ID_428'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160153644727158249)
,p_event_id=>wwv_flow_imp.id(160152607538158248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P77_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P77_SERVICE_NO").show();',
'    apex.item("P77_SERVICE_STATUS").show();',
'    apex.item("P77_RANK").show();',
'    apex.item("P77_FORMATION").show();',
'    apex.item("P77_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P77_SERVICE_NO").hide();',
'    apex.item("P77_SERVICE_STATUS").hide();',
'    apex.item("P77_RANK").hide();',
'    apex.item("P77_FORMATION").hide();',
'    apex.item("P77_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160154052240158249)
,p_name=>'DASuccessMessage'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_SUCCESS_MSG'
,p_condition_element=>'P77_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160154563678158249)
,p_event_id=>wwv_flow_imp.id(160154052240158249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P77_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160154998674158249)
,p_name=>'DAError'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_ERROR'
,p_condition_element=>'P77_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160155472684158249)
,p_event_id=>wwv_flow_imp.id(160154998674158249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P77_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160155868027158249)
,p_name=>'EnableDisableDA'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160156368735158250)
,p_event_id=>wwv_flow_imp.id(160155868027158249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P77_IMPLANT_STATUS_ID") === "015") || ($v("P77_IMPLANT_STATUS_ID") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("savebtn").disable();',
'    apex.item("saveimplantmedication").disable();',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("savebtn").enable();',
'    apex.item("saveimplantmedication").enable();',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160156707085158251)
,p_name=>'SetMRNO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_PATIENT_MRNO'
,p_bind_type=>'bind'
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
 p_id=>wwv_flow_imp.id(160157271485158251)
,p_event_id=>wwv_flow_imp.id(160156707085158251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_NAME,P77_PASSWORD,P77_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160157766848158251)
,p_event_id=>wwv_flow_imp.id(160156707085158251)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P77_PATIENT_TYPE IS NOT NULL AND :P77_PATIENT_MRNO IS NOT NULL THEN',
'    :P77_DISP_MRNO := :P77_PATIENT_TYPE || LPAD(:P77_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_PATIENT_TYPE,P77_PATIENT_MRNO'
,p_attribute_03=>'P77_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160158226926158252)
,p_event_id=>wwv_flow_imp.id(160156707085158251)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P77_ERROR := NULL;',
'  IF :P77_PATIENT_MRNO IS NOT NULL THEN',
'    :P77_DISP_MRNO := :P77_PATIENT_TYPE || LPAD(:P77_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P77_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P77_ERROR        := ''This is not an active employee.'';',
'      :P77_PATIENT_MRNO := NULL;',
'      :P77_DISP_MRNO    := NULL;',
'      :P77_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P77_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P77_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P77_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_PATIENT_MRNO,P77_PATIENT_TYPE'
,p_attribute_03=>'P77_DISP_MRNO,P77_ERROR,P77_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160158717387158253)
,p_event_id=>wwv_flow_imp.id(160156707085158251)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P77_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P77_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160159278856158253)
,p_event_id=>wwv_flow_imp.id(160156707085158251)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P77_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P77_DISP_MRNO);'
,p_attribute_02=>'P77_DISP_MRNO'
,p_attribute_03=>'P77_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160159707758158253)
,p_event_id=>wwv_flow_imp.id(160156707085158251)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_PASSWORD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160160148157158253)
,p_name=>'DAHDRPImplantInsert'
,p_event_sequence=>280
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(228114539122136750)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160160604720158253)
,p_event_id=>wwv_flow_imp.id(160160148157158253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P77_EXAM_SPEC_VAGINUM'', _.radhdrimplant.EXAM_SPEC_VAGINUM);',
'$s(''P77_IMPLANT_REMARKS'', _.radhdrimplant.REMARKS);',
'$s(''P77_ANESTHESIA_SEDATION'', _.radhdrimplant.ANESTHESIA_SEDATION);',
'$s(''P77_PLANNING_DESC'', _.radhdrimplant.PLANNING_ID);',
'$s(''P77_DISP_APPLICATOR'', _.radhdrimplant.APPLICATOR_ID);',
'$s(''P77_DISP_APPLICATOR_SIZE'', _.radhdrimplant.APPLICATOR_SIZE_ID);',
'$s(''P77_ASEPTIC_CLEANING'', _.radhdrimplant.ASEPTIC_CLEANING);',
'$s(''P77_URETHRAL_CATHETER'', _.radhdrimplant.URETHRAL_CATHETER);',
'$s(''P77_RECTAL_MARKER_PLACED'', _.radhdrimplant.RECTAL_MARKER_PLACED);',
'$s(''P77_BLADDER_RECTAL_PACKING'', _.radhdrimplant.BLADDER_RECTAL_PACKING);',
'$s(''P77_VAGINAL_INTEGRITY'', _.radhdrimplant.VAGINAL_INTEGRITY);',
'$s(''P77_LENGTH_OF_VAGINA'', _.radhdrimplant.LENGTH_OF_VAGINA);',
'$s(''P77_ND_IMPLANT_INSERTION_ID'', _.radhdrimplant.INSERTION_ID);',
'$s(''P77_SCHEDULE_DATE'', _.radhdrimplant.SCHEDULE_DATE);',
'$s(''P77_SIGN_BY_1_NAME'', _.radhdrimplant.SIGN_BY_1_NAME);',
'$s(''P77_SIGN_BY_2_NAME'', _.radhdrimplant.SIGN_BY_2_NAME);',
'$s(''P77_SIGNATURE_DATE'', _.radhdrimplant.SIGNATURE_DATE);',
'$s(''P77_IMPLANT_STATUS_ID'', _.radhdrimplant.STATUS_ID);',
'$s(''P77_PHASE_NO'', _.radhdrimplant.PHASE_NO);',
'',
'apex.region(''radimplantmedication'').refresh();',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160161187816158254)
,p_event_id=>wwv_flow_imp.id(160160148157158253)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P77_IMPLANT_STATUS_ID") === "015") || ($v("P77_IMPLANT_STATUS_ID") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("savebtn").disable();',
'    apex.item("saveimplantmedication").disable();',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("savebtn").enable();',
'    apex.item("saveimplantmedication").enable();',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160162056949158254)
,p_name=>'DATXTAlertText'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_TXT_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160162501006158255)
,p_event_id=>wwv_flow_imp.id(160162056949158254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P77_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160170046980158260)
,p_name=>'DAAlert'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_ALERT'
,p_condition_element=>'P77_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160170537587158260)
,p_event_id=>wwv_flow_imp.id(160170046980158260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P77_ALERT.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160170937220158260)
,p_name=>'DASuccessMessage1'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_SUCCESS_MESSAGE'
,p_condition_element=>'P77_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294523389252558242)
,p_event_id=>wwv_flow_imp.id(160170937220158260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("radhdrimplant").refresh();',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 200);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160171409997158260)
,p_event_id=>wwv_flow_imp.id(160170937220158260)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<b>&P77_SUCCESS_MESSAGE.</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160171862133158260)
,p_name=>'DAPlanDOseFraction'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_PLAN_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160172308434158260)
,p_event_id=>wwv_flow_imp.id(160171862133158260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_PLAN_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P77_PLAN_DOSE_FRACTION, 0) * NVL(:P77_PLAN_FRACTION, 0));'
,p_attribute_07=>'P77_PLAN_DOSE_FRACTION,P77_PLAN_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160172724865158261)
,p_name=>'DAPlanFraction'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_PLAN_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160173280151158261)
,p_event_id=>wwv_flow_imp.id(160172724865158261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_PLAN_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P77_PLAN_DOSE_FRACTION, 0) * NVL(:P77_PLAN_FRACTION, 0));'
,p_attribute_07=>'P77_PLAN_DOSE_FRACTION,P77_PLAN_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160143815084158238)
,p_name=>'DACreatePlan'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(160082243130158141)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160144331179158238)
,p_event_id=>wwv_flow_imp.id(160143815084158238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P77_DOSE_TO_OAR").enable();',
'apex.item("P77_PTV_COVERAGE").enable();',
'apex.item("P77_PATH_REVIEWED").enable();',
'apex.item("P77_RAD_REVIEWED").enable();',
'apex.item("P77_IMPLANT_ADEQUACY").enable();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522684049558235)
,p_event_id=>wwv_flow_imp.id(160143815084158238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P77_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P77_ALERT").setValue('''');',
'',
'apex.server.process("ProcessCreateImplant",',
'    {',
'        pageItems: [',
'            "P77_RAD_DETAIL_ND_RADIATION_NO",',
'            "P77_RAD_DETAIL_ND_SITE_ID",',
'            "P77_SCHEDULE_SRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P77_SUCCESS_MESSAGE").setValue(obj.message);',
'                apex.region(''radhdrimplant'').refresh();',
'',
'',
'            } else {',
'                apex.item("P77_SUCCESS_MESSAGE").setValue(obj.message);',
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
 p_id=>wwv_flow_imp.id(160144742912158238)
,p_name=>'DADisposePlan'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(160082699017158142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522899097558237)
,p_event_id=>wwv_flow_imp.id(160144742912158238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Please confirm if you wish to proceed with the disposal of this implant?</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160145298476158238)
,p_event_id=>wwv_flow_imp.id(160144742912158238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P77_DOSE_TO_OAR").enable();',
'apex.item("P77_PTV_COVERAGE").enable();',
'apex.item("P77_PATH_REVIEWED").enable();',
'apex.item("P77_RAD_REVIEWED").enable();',
'apex.item("P77_IMPLANT_ADEQUACY").enable();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522719935558236)
,p_event_id=>wwv_flow_imp.id(160144742912158238)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P77_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P77_ALERT").setValue('''');',
'',
'apex.server.process("ProcessDisposeDisposeImplant",',
'    {',
'        pageItems: [',
'            "P77_RAD_DETAIL_ND_RADIATION_NO",',
'            "P77_RAD_DETAIL_ND_SITE_ID",',
'            "P77_ND_IMPLANT_INSERTION_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P77_SUCCESS_MESSAGE").setValue(obj.message);',
'                apex.region(''radhdrimplant'').refresh();',
'',
'',
'            } else {',
'                apex.item("P77_SUCCESS_MESSAGE").setValue(obj.message);',
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
 p_id=>wwv_flow_imp.id(25388953431313819)
,p_name=>'SaveImplantMedicination'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25388821811313818)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25389065265313820)
,p_event_id=>wwv_flow_imp.id(25388953431313819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P77_SUB_REG_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("insertImplantMedicine");',
'}',
'else if ($v("P77_SUB_REG_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("updateImplantMedicine");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25389382890313823)
,p_name=>'ExitImplantMedication'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25389145629313821)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25389458531313824)
,p_event_id=>wwv_flow_imp.id(25389382890313823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radimplantmedicationsubreg'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25389813641313828)
,p_name=>'insertImplantMedicine'
,p_event_sequence=>490
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'insertImplantMedicine'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25389926408313829)
,p_event_id=>wwv_flow_imp.id(25389813641313828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("processImplantMedication",',
'    {',
'        pageItems: ["P77_SUB_REG_RADIATION_NO",',
'            "P77_SUB_REG_SITE_ID",',
'            "P77_SUB_REG_INSERTION_ID",',
'            "P77_SUB_REG_MEDICINE_ID",',
'            "P77_SUB_REG_QUANTITY",',
'            "P77_SUB_REG_UNIT_ID"',
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
'                apex.region(''radimplantmedication'').refresh();',
'                apex.theme.closeRegion(''radimplantmedicationsubreg'');',
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
');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25390033152313830)
,p_name=>'updateImplantMedicine'
,p_event_sequence=>500
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updateImplantMedicine'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25390197349313831)
,p_event_id=>wwv_flow_imp.id(25390033152313830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("processImplantMedication",',
'    {',
'        pageItems: ["P77_SUB_REG_RADIATION_NO",',
'            "P77_SUB_REG_SITE_ID",',
'            "P77_SUB_REG_INSERTION_ID",',
'            "P77_SUB_REG_MEDICINE_ID",',
'            "P77_SUB_REG_QUANTITY",',
'            "P77_SUB_REG_UNIT_ID"',
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
'                apex.region(''radimplantmedication'').refresh();',
'                apex.theme.closeRegion(''radimplantmedicationsubreg'');',
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
');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22338663645272940)
,p_name=>'DARadImplantSign'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22338549039272939)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22338705341272941)
,p_event_id=>wwv_flow_imp.id(22338663645272940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P77_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P77_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P77_DISP_MRNO    := (:P77_PATIENT_TYPE ||',
'                         LPAD(:P77_PATIENT_MRNO, 8, ''0''));',
'    :P77_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P77_DISP_MRNO);',
'    :P77_PATIENT_TYPE_1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P77_PATIENT_MRNO,P77_PATIENT_TYPE,P77_DISP_MRNO,P77_NAME,P77_PATIENT_TYPE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22338810595272942)
,p_event_id=>wwv_flow_imp.id(22338663645272940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signreg");',
'apex.item("P77_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22338927732272943)
,p_name=>'SignHDRImplant'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26998967482008270)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22339054005272944)
,p_event_id=>wwv_flow_imp.id(22338927732272943)
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
'  :P77_TXT_ALERT_TEXT := null;',
'  :P77_SUCCESS_MSG    := null;',
'  :P77_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P77_DISP_MRNO,',
'                                          :P77_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P77_ERROR := ''Error Physician Sign:- ''||L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P77_VALIDATE'', ''Y'');',
'    :P77_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P77_DISP_MRNO,P77_PASSWORD'
,p_attribute_03=>'P77_SUCCESS_MSG,P77_ERROR,P77_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22339150208272945)
,p_event_id=>wwv_flow_imp.id(22338927732272943)
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
'  IF :P77_VALIDATE = ''Y'' THEN',
'    :P77_TXT_ALERT_TEXT := null;',
'    :P77_SUCCESS_MSG    := null;',
'    :P77_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P77_DISP_MRNO_1,',
'                                            :P77_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P77_ERROR := ''Error in Consultant Sign:- '' || L_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P77_VALIDATE_1'', ''Y'');',
'      :P77_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_DISP_MRNO_1,P77_PASSWORD_1,P77_VALIDATE'
,p_attribute_03=>'P77_SUCCESS_MSG,P77_ERROR,P77_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22339495444272948)
,p_event_id=>wwv_flow_imp.id(22338927732272943)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P77_VALIDATE = ''Y'' AND :P77_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00154.SIGN_IMPLANT_INSERT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''ORGANIZATION_ID''),',
'                                                    P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''LOCATION_ID''),',
'                                                    P_RADIATION_NO      => :P77_RAD_DETAIL_ND_RADIATION_NO,',
'                                                    P_SITE_ID           => :P77_RAD_DETAIL_ND_SITE_ID,',
'                                                    P_INSERTION_ID      => :P77_ND_IMPLANT_INSERTION_ID,',
'                                                    P_PHASE_NO          => :P77_PHASE_NO,',
'                                                    P_SCHEDULE_SRNO     => :P77_SCHEDULE_SRNO,',
'                                                    P_SCHEDULE_EVENT_ID => :P77_SCHEDULE_EVENT_ID,',
'                                                    P_FIRST_SIGN        => :P77_DISP_MRNO,',
'                                                    P_SECOND_SIGN       => :P77_DISP_MRNO_1,',
'                                                    P_OBJECT_CODE       => ''S18APX00066'',',
'                                                    P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''TERMINAL''),',
'                                                    P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''USER_MRNO''),',
'                                                    P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                    P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P77_ERROR := L_ALERT_TEXT;',
'    ELSE ',
'    :P77_SUCCESS_MSG := ''Implant Procedure signed properly'';',
'   END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_RAD_DETAIL_ND_RADIATION_NO,P77_RAD_DETAIL_ND_SITE_ID,P77_ND_IMPLANT_INSERTION_ID,P77_PHASE_NO,P77_SCHEDULE_SRNO,P77_SCHEDULE_EVENT_ID,P77_DISP_MRNO,P77_DISP_MRNO_1,P77_VALIDATE,P77_VALIDATE_1'
,p_attribute_03=>'P77_ERROR,P77_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27054532772340908)
,p_event_id=>wwv_flow_imp.id(22338927732272943)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radhdrimplant'').refresh();',
'apex.item("P77_SIGNATURE_DATE").refresh();',
'apex.item("P77_SIGN_BY_1_NAME").refresh();',
'apex.item("P77_SIGN_BY_2_NAME").refresh();',
'',
'if (($v("P77_IMPLANT_STATUS_ID") === "015") || ($v("P77_IMPLANT_STATUS_ID") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("savebtn").disable();',
'    apex.item("saveimplantmedication").disable();',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("savebtn").enable();',
'    apex.item("saveimplantmedication").enable();',
'',
'}',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P77_SUCCESS_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22339563168272949)
,p_name=>'SetMrno'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_PATIENT_MRNO_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22339676945272950)
,p_event_id=>wwv_flow_imp.id(22339563168272949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_NAME_1,P77_PASSWORD_1,P77_DISP_MRNO_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27053866910340901)
,p_event_id=>wwv_flow_imp.id(22339563168272949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P77_PATIENT_TYPE_1 IS NOT NULL AND :P77_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P77_DISP_MRNO_1 := :P77_PATIENT_TYPE_1 || LPAD(:P77_PATIENT_MRNO_1, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_PATIENT_TYPE_1,P77_PATIENT_MRNO_1'
,p_attribute_03=>'P77_DISP_MRNO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27053953614340902)
,p_event_id=>wwv_flow_imp.id(22339563168272949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P77_ERROR := NULL;',
'  IF :P77_PATIENT_MRNO_1 IS NOT NULL THEN',
'    :P77_DISP_MRNO_1 := :P77_PATIENT_TYPE_1 || LPAD(:P77_PATIENT_MRNO_1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P77_DISP_MRNO_1), ''N'') = ''N'' THEN',
'      :P77_ERROR        := ''This is not an active employee.'';',
'      :P77_PATIENT_MRNO_1 := NULL;',
'      :P77_DISP_MRNO_1    := NULL;',
'      :P77_NAME_1         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P77_NAME_1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P77_DISP_MRNO_1',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P77_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_PATIENT_MRNO_1,P77_PATIENT_TYPE_1'
,p_attribute_03=>'P77_DISP_MRNO_1,P77_ERROR,P77_NAME_1'
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
 p_id=>wwv_flow_imp.id(27054064238340903)
,p_event_id=>wwv_flow_imp.id(22339563168272949)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P77_ERROR.'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P77_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27054130216340904)
,p_event_id=>wwv_flow_imp.id(22339563168272949)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P77_NAME_1:= his.pkg_patient.GET_PATIENT_NAME(:P77_DISP_MRNO_1);'
,p_attribute_02=>'P77_DISP_MRNO_1'
,p_attribute_03=>'P77_NAME_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27054275762340905)
,p_event_id=>wwv_flow_imp.id(22339563168272949)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_PASSWORD_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27054338078340906)
,p_name=>'CloseSign'
,p_event_sequence=>540
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27002780388008273)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27054450758340907)
,p_event_id=>wwv_flow_imp.id(27054338078340906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(245863697011948674)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294522050118558229)
,p_name=>'DASign@EnterKey'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_PASSWORD_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522253741558231)
,p_event_id=>wwv_flow_imp.id(294522050118558229)
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
'  :P77_TXT_ALERT_TEXT := null;',
'  :P77_SUCCESS_MSG    := null;',
'  :P77_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P77_DISP_MRNO,',
'                                          :P77_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P77_ERROR := ''Error Physician Sign:- ''||L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P77_VALIDATE'', ''Y'');',
'    :P77_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P77_DISP_MRNO,P77_PASSWORD'
,p_attribute_03=>'P77_SUCCESS_MSG,P77_ERROR,P77_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522388027558232)
,p_event_id=>wwv_flow_imp.id(294522050118558229)
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
'  IF :P77_VALIDATE = ''Y'' THEN',
'    :P77_TXT_ALERT_TEXT := null;',
'    :P77_SUCCESS_MSG    := null;',
'    :P77_ERROR          := null;',
'    HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                            :GV_USER_MRNO,',
'                                            :GV_TERMINAL,',
'                                            :GV_LOCATION_ID,',
'                                            ''PU_LOGIN'',',
'                                            :P77_DISP_MRNO_1,',
'                                            :P77_PASSWORD_1,',
'                                            L_RETURN_ITEM,',
'                                            L_ALERT_TEXT,',
'                                            L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P77_ERROR := ''Error in Consultant Sign:- '' || L_ALERT_TEXT;',
'    ELSE',
'      Apex_Util.Set_Session_State(''P77_VALIDATE_1'', ''Y'');',
'      :P77_ERROR := NULL;',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_DISP_MRNO_1,P77_PASSWORD_1,P77_VALIDATE'
,p_attribute_03=>'P77_SUCCESS_MSG,P77_ERROR,P77_VALIDATE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522413244558233)
,p_event_id=>wwv_flow_imp.id(294522050118558229)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P77_VALIDATE = ''Y'' AND :P77_VALIDATE_1 = ''Y'' THEN',
'  ',
'    BEGIN',
'    ',
'      RADIATION.PKG_S18FRM00154.SIGN_IMPLANT_INSERT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''ORGANIZATION_ID''),',
'                                                    P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''LOCATION_ID''),',
'                                                    P_RADIATION_NO      => :P77_RAD_DETAIL_ND_RADIATION_NO,',
'                                                    P_SITE_ID           => :P77_RAD_DETAIL_ND_SITE_ID,',
'                                                    P_INSERTION_ID      => :P77_ND_IMPLANT_INSERTION_ID,',
'                                                    P_PHASE_NO          => :P77_PHASE_NO,',
'                                                    P_SCHEDULE_SRNO     => :P77_SCHEDULE_SRNO,',
'                                                    P_SCHEDULE_EVENT_ID => :P77_SCHEDULE_EVENT_ID,',
'                                                    P_FIRST_SIGN        => :P77_DISP_MRNO,',
'                                                    P_SECOND_SIGN       => :P77_DISP_MRNO_1,',
'                                                    P_OBJECT_CODE       => ''S18APX00066'',',
'                                                    P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''TERMINAL''),',
'                                                    P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                       ''USER_MRNO''),',
'                                                    P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                    P_STOP              => L_STOP);',
'    ',
'    END;',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P77_ERROR := L_ALERT_TEXT;',
'    ELSE ',
'    :P77_SUCCESS_MSG := ''Implant Procedure signed properly'';',
'   END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P77_RAD_DETAIL_ND_RADIATION_NO,P77_RAD_DETAIL_ND_SITE_ID,P77_ND_IMPLANT_INSERTION_ID,P77_PHASE_NO,P77_SCHEDULE_SRNO,P77_SCHEDULE_EVENT_ID,P77_DISP_MRNO,P77_DISP_MRNO_1,P77_VALIDATE,P77_VALIDATE_1'
,p_attribute_03=>'P77_ERROR,P77_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294522596465558234)
,p_event_id=>wwv_flow_imp.id(294522050118558229)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radhdrimplant'').refresh();',
'apex.item("P77_SIGNATURE_DATE").refresh();',
'apex.item("P77_SIGN_BY_1_NAME").refresh();',
'apex.item("P77_SIGN_BY_2_NAME").refresh();',
'',
'if (($v("P77_IMPLANT_STATUS_ID") === "015") || ($v("P77_IMPLANT_STATUS_ID") === "248")) {',
'    apex.item("signbtn").disable();',
'    apex.item("savebtn").disable();',
'    apex.item("saveimplantmedication").disable();',
'}',
'else {',
'    apex.item("signbtn").enable();',
'    apex.item("savebtn").enable();',
'    apex.item("saveimplantmedication").enable();',
'',
'}',
''))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P77_SUCCESS_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294522926943558238)
,p_name=>'DASave'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(160081039352158135)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294523043894558239)
,p_event_id=>wwv_flow_imp.id(294522926943558238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessHDRImplant",',
'    {',
'        pageItems: [',
'            "P77_RAD_DETAIL_ND_RADIATION_NO",',
'            "P77_RAD_DETAIL_ND_SITE_ID",',
'            "P77_ND_IMPLANT_INSERTION_ID",',
'            "P77_DISP_APPLICATOR",',
'            "P77_DISP_APPLICATOR_SIZE",',
'            "P77_EXAM_SPEC_VAGINUM",',
'            "P77_ASEPTIC_CLEANING",',
'            "P77_URETHRAL_CATHETER",',
'            "P77_BLADDER_RECTAL_PACKING",',
'            "P77_RECTAL_MARKER_PLACED",',
'            "P77_IMPLANT_REMARKS",',
'            "P77_PLANNING_DESC",',
'            "P77_ANESTHESIA_SEDATION",',
'            "P77_VAGINAL_INTEGRITY",',
'            "P77_LENGTH_OF_VAGINA"',
'        ]',
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
'            }',
'            else {',
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
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160139014982158230)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormHDRImplantInsertion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         TO_CHAR(RADIATION_DATE, ''DD-MON-RRRR HH24:MI''),',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTEN,',
'         ANAESTHESIA,',
'         HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => DOCTOR_ID) DOCTOR_MRNO,',
'         M.ICDNO || '' - '' ||',
'         RADIATION.PKG_RADIATION.GET_ICD_DIAGNOSIS_DESC(M.ICDNO) DISP_DIAGNOSIS,',
'         M.REMARKS',
'    INTO :P77_RADIATION_NO,',
'         :P77_RADIATION_DATE,',
'         :P77_MRNO,',
'         :P77_PATIENT_NAME,',
'         :P77_DISP_AGE,',
'         :P77_DISP_GENDER,',
'         :P77_DOCTOR_ID,',
'         :P77_DISP_DOCTOR,',
'         :P77_DISP_INTENT,',
'         :P77_ANAESTHESIA,',
'         :P77_DOCTOR_MRNO,',
'         :P77_ICD_DIAGNOSIS,',
'         :P77_REQUEST_REMARKS',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'        ',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P77_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''B'')',
'     AND RADIOTHERAPY_TYPE = ''B''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>160139014982158230
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160139848089158231)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateImplant'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00154.CREATE_NEW_IMPLANT_INSERT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P77_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P77_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_SCHEDULE_SRNO     => :P77_SCHEDULE_SRNO,',
'                                                      P_OBJECT_CODE       => ''S18APX00066'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''The radiotherapy implant has been successfully created'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(160082243130158141)
,p_process_success_message=>'New Implant created successfully'
,p_internal_uid=>160139848089158231
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160141074489158232)
,p_process_sequence=>3
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessHDRImplant'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_IMPLANT_TAB RADIATION.PKG_S18FRM00154.RAD_IMPLANT_TAB;',
'  L_ALERT_TEXT      VARCHAR2(4000) := NULL;',
'  L_STOP            CHAR(1) := ''N'';',
'  EX_CUSTOM  EXCEPTION;',
'  EX_CUSTOM1 EXCEPTION;',
'BEGIN',
'',
'  SELECT :P77_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P77_RAD_DETAIL_ND_SITE_ID SITE_ID,',
'         NULL PHASE_NO,',
'         :P77_ND_IMPLANT_INSERTION_ID INSERTION_ID,',
'         NULL FROM_FRACTION_ID,',
'         NULL TO_FRACTION_ID,',
'         :P77_DISP_APPLICATOR APPLICATOR_ID,',
'         NULL DISP_APPLICATOR,',
'         :P77_DISP_APPLICATOR_SIZE APPLICATOR_SIZE_ID,',
'         NULL DISP_APPLICATOR_SIZE,',
'         :P77_EXAM_SPEC_VAGINUM EXAM_SPEC_VAGINUM,',
'         :P77_ASEPTIC_CLEANING ASEPTIC_CLEANING,',
'         :P77_URETHRAL_CATHETER URETHRAL_CATHETER,',
'         :P77_BLADDER_RECTAL_PACKING BLADDER_RECTAL_PACKING,',
'         :P77_RECTAL_MARKER_PLACED RECTAL_MARKER_PLACED,',
'         :P77_IMPLANT_REMARKS REMARKS,',
'         NULL SIGN_BY_1,',
'         NULL SIGN_BY_2,',
'         NULL SIGN_BY_1_NAME,',
'         NULL SIGN_BY_2_NAME,',
'         NULL SIGN_DATE,',
'         NULL STATUS_ID,',
'         NULL STATUS,',
'         NULL SCHEDULE_SRNO,',
'         NULL OC_SERIAL_NO,',
'         NULL NOTE_ID,',
'         :P77_PLANNING_DESC PLANNING_ID,',
'         (SELECT P.PLANNING_PREFIX',
'            FROM RADIATION.PLANNING P',
'           WHERE P.PLANNING_ID = :P77_PLANNING_DESC) PLANNING,',
'         NULL PLANNING_DESC,',
'         NULL SIGNATURE_DATE,',
'         NULL SCHEDULE_DATE,',
'         NULL IMP_OUT_TIME,',
'         :P77_ANESTHESIA_SEDATION ANESTHESIA_SEDATION,',
'         :P77_VAGINAL_INTEGRITY VAGINAL_INTEGRITY,',
'         :P77_LENGTH_OF_VAGINA LENGTH_OF_VAGINA',
'  ',
'    BULK COLLECT',
'    INTO L_RAD_IMPLANT_TAB',
'    FROM DUAL;',
'',
'  -----------',
'  -- Update',
'  -----------',
'  BEGIN',
'    RADIATION.PKG_S18FRM00154.UPDATE_RAD_IMPANT_INSERTION(L_RAD_IMPLANT_TAB);',
'  EXCEPTION',
'    WHEN EX_CUSTOM THEN',
'      L_ALERT_TEXT := SQLERRM;',
'      L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'      L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT,',
'                             1,',
'                             INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'      HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE  => L_ALERT_TEXT,',
'                                 P_CATEGORY => ''PKG_S18APX00068'');',
'      RAISE EX_CUSTOM1;',
'    WHEN OTHERS THEN',
'      L_ALERT_TEXT := SQLERRM;',
'      L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'      L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT,',
'                             1,',
'                             INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'      HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE  => L_ALERT_TEXT,',
'                                 P_CATEGORY => ''PKG_S18APX00068'');',
'      RAISE EX_CUSTOM1;',
'  END;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'', ''The implant has been saved properly'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM1 THEN',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE  => L_ALERT_TEXT,',
'                               P_CATEGORY => ''PKG_S18APX00068'');',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE  => L_ALERT_TEXT,',
'                               P_CATEGORY => ''PKG_S18APX00068'');',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE  => L_ALERT_TEXT,',
'                               P_CATEGORY => ''PKG_S18APX00068'');',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(160081039352158135)
,p_internal_uid=>160141074489158232
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160138627716158230)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'processImplantMedication'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00154.RAD_MEDICATION_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  SELECT :P77_SUB_REG_RADIATION_NO RADIATION_NO,',
'         :P77_SUB_REG_SITE_ID      SITE_ID,',
'         :P77_SUB_REG_INSERTION_ID INSERTION_ID,',
'         :P77_SUB_REG_MEDICINE_ID  MEDICINE_ID,',
'         NULL                      DESCRIPTION,',
'         :P77_SUB_REG_QUANTITY     QUANTITY,',
'         :P77_SUB_REG_UNIT_ID      UNIT_ID,',
'         NULL                      DISP_UNIT',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00154.INSERT_RAD_IMPLANT_MEDICATION(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    -- Update',
'    RADIATION.PKG_S18FRM00154.UPDATE_RAD_IMPLANT_MEDICATION(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00154.DELETE_RAD_IMPLANT_MEDICATION(L_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  IF L_STATUS = ''CREATE'' THEN',
'    APEX_JSON.WRITE(''response'', ''Implant Medication created successfully.'');',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    APEX_JSON.WRITE(''response'', ''Implant Medication updated successfully.'');',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    APEX_JSON.WRITE(''response'', ''Implant Medication deleted successfully.'');',
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
,p_internal_uid=>160138627716158230
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(160140226391158231)
,p_process_sequence=>13
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposeDisposeImplant'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00154.DISPOSE_IMPLANT_INSERT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_RADIATION_NO      => :P77_RAD_DETAIL_ND_RADIATION_NO,',
'                                                   P_SITE_ID           => :P77_RAD_DETAIL_ND_SITE_ID,',
'                                                   P_INSERTION_ID      => :P77_ND_IMPLANT_INSERTION_ID,',
'                                                   P_OBJECT_CODE       => ''S18APX00066'',',
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
'                  P_VALUE => ''The radiotherapy implant has been successfully disposed'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(160082699017158142)
,p_internal_uid=>160140226391158231
);
wwv_flow_imp.component_end;
end;
/

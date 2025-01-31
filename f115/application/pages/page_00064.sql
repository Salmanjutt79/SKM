prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_name=>'RAD_PHYSICS_PLANNING'
,p_alias=>'RAD_PHYSICS_PLANNING'
,p_page_mode=>'MODAL'
,p_step_title=>'Physics Planning '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'td[headers="RADIATION_NO"]{',
' font-weight:bold;',
'}',
'td[headers="MRNO"]{',
' font-weight:bold;',
'}',
'td[headers="REQUEST_STATUS"]{',
' font-weight:bold;',
'}',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const processAccessoryGrid = async () => {',
'    return new Promise((resolve, reject) => {',
'        var model = apex.region("accessory").widget().interactiveGrid("getViews", "grid").model;',
'',
'        if (model.isChanged()) {',
'            model.save(function (error, responseData) {',
'                if (error != null) {',
'                    apex.message.showErrors(error);',
'                    reject(error);',
'                } else {',
'                    model.clearChanges();',
'                    apex.region(''accessory'').refresh();',
'                    resolve(responseData);',
'                }',
'            });',
'        } else {',
'            resolve();',
'        }',
'    });',
'};',
'',
'',
'',
'',
'const processPhysicsGrid = async () => {',
'    return new Promise((resolve, reject) => {',
'        var model = apex.region("radphy").widget().interactiveGrid("getViews", "grid").model;',
'',
'        if (model.isChanged()) {',
'            model.save(function (error, responseData) {',
'                if (error != null) {',
'                    apex.message.showErrors(error);',
'                    reject(error);',
'                } else {',
'                    model.clearChanges();',
'                    apex.region(''radphy'').refresh();',
'                    resolve(responseData);',
'                }',
'            });',
'        } else {',
'            resolve();',
'        }',
'    }).then(() => {',
'',
'        apex.item("P64_SUCCESS_MESSAGE").setValue('''');',
'        apex.item("P64_ALERT_TEXT").setValue('''');',
'',
'        apex.server.process("ProcessDMLPhysicsPlanDetail",',
'            {',
'                pageItems: [',
'                    "P64_RAD_DETAIL_ND_RADIATION_NO",',
'                    "P64_RAD_DETAIL_ND_SITE_ID",',
'                    "P64_PLAN_ID",',
'                    "P64_PHY_PLAN_ID",',
'                    "P64_RAD_PHASE_PHASE_NO",',
'                    "P64_QA_PLAN_ID",',
'                    "P64_PLAN_DESC",',
'                    "P64_ND_MACHINE_ID",',
'                    "P64_REMARKS"',
'                ]',
'            },',
'            {',
'                dataType: ''text'',',
'                success: function (data) {',
'                    var obj = JSON.parse(data);',
'',
'                    if (obj.status === "success") {',
'',
'                        apex.item("P64_SUCCESS_MESSAGE").setValue(obj.message);',
'                    } else {',
'',
'                        apex.item("P64_ALERT_TEXT").setValue(obj.message);',
'                    }',
'                },',
'                error: function (jqXHR, textStatus, errorThrown) {',
'                    apex.message.alert("An error occurred: " + textStatus);',
'                }',
'            }',
'        );',
'    }).catch(error => {',
'        console.error("Error during processPhysicsGrid execution:", error);',
'    });',
'};',
'',
'',
'const processIsocenterGrid = async () => {',
'    return new Promise((resolve, reject) => {',
'        var model = apex.region("isocenter").widget().interactiveGrid("getViews", "grid").model;',
'',
'        if (model.isChanged()) {',
'            model.save(function (error, responseData) {',
'                if (error != null) {',
'                    apex.message.showErrors(error);',
'                    reject(error);',
'                } else {',
'                    model.clearChanges();',
'                    apex.region(''isocenter'').refresh();',
'                    resolve(responseData);',
'                }',
'            });',
'        } else {',
'            resolve();',
'        }',
'    });',
'};',
'',
'const processSpecialIntGrid = async () => {',
'    return new Promise((resolve, reject) => {',
'        var model = apex.region("specialint").widget().interactiveGrid("getViews", "grid").model;',
'',
'        if (model.isChanged()) {',
'            model.save(function (error, responseData) {',
'                if (error != null) {',
'                    apex.message.showErrors(error);',
'                    reject(error);',
'                } else {',
'                    model.clearChanges();',
'                    apex.region(''specialint'').refresh();',
'                    resolve(responseData);',
'                }',
'            });',
'        } else {',
'            resolve();',
'        }',
'    });',
'};',
'',
'const processFieldGrid = async () => {',
'    return new Promise((resolve, reject) => {',
'        var model = apex.region("field").widget().interactiveGrid("getViews", "grid").model;',
'',
'        if (model.isChanged()) {',
'            model.save(function (error, responseData) {',
'                if (error != null) {',
'                    apex.message.showErrors(error);',
'                    reject(error);',
'                } else {',
'                    model.clearChanges();',
'                    apex.region(''field'').refresh();',
'                    resolve(responseData);',
'                }',
'            });',
'        } else {',
'            resolve();',
'        }',
'    });',
'};',
'',
'const processRecordsMain = async () => {',
'    let lSpinner$ = apex.util.showSpinner($("#radphy"));',
'    try {',
'        await processAccessoryGrid();',
'        await processPhysicsGrid();',
'        await processIsocenterGrid();',
'        await processSpecialIntGrid();',
'',
'',
'',
'        let isIsocenterIdValid = false;',
'',
'',
'        while (!isIsocenterIdValid) {',
'            await new Promise(resolve => setTimeout(resolve, 1000));',
'            isIsocenterIdValid = apex.item("P64_ND_ISOCENTER_ID").getValue() !== null && apex.item("P64_ND_ISOCENTER_ID").getValue() !== "";',
'        }',
'',
'',
'        if (isIsocenterIdValid) {',
'            await processFieldGrid();',
'        }',
'',
'        apex.item("P64_SUCCESS_MESSAGE").setValue("Physics plan saved successfully");',
'',
'    } catch (error) {',
'        console.error("Error saving record:", error);',
'',
'        lSpinner$.remove();',
'    } finally {',
'',
'        lSpinner$.remove();',
'',
'    }',
'};',
'',
'',
'function processRecordsDetail() {',
'    processRecordsMain();',
'',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    jsFormsBlock_pageReady();',
'}, 1000); // 1000 milliseconds = 1 second',
'',
'',
'apex.item("P51_UNIT").hide();',
'apex.item("P51_SERVICE_NO").hide();',
'apex.item("P51_SERVICE_STATUS").hide();',
'apex.item("P51_RANK").hide();',
'apex.item("P51_FORMATION").hide();',
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
'//jsFormsBlock_pageReady();',
'',
'apex.page.warnOnUnsavedChanges(false);',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#report_image_report img{',
'	height: 150px;',
'    width:  100px;',
'',
'}',
'',
'#phase .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'.popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'',
'.selectlist',
'{',
'    background-color:#FFFFCC !important;',
'}',
'/*.apex-item-text',
'{',
'    background-color:#FFFFCC !important;',
'}*/',
'',
'#accessory .a-GV-footer {',
'',
'    display: none;',
'',
'}',
'',
'#accessory .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'#ACCESSORY_ID .popup_lov',
'{',
'background-color:#FFFFCC !important;',
'}',
'',
'#radphy .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'#isocenter .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#specialint .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#field .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#P64_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_DOCTOR_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_ND_MACHINE_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P64_QA_PLAN_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P64_REMARKS  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_ND_PLAN_REMARKS  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_ND_PLAN_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_CURRENT_MACHINE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_ISOCENTER_ID  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_ISO_DESCRIPTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_ISO_TREATMENT_TYPE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_ISO_DOSE_FRACTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_ISO_NO_OF_FRACTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_ISO_TOTAL_DOSE  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_SP_INTRUCT_FRACTION_NO  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_SP_INTRUCT_SPECIAL_INSTRUCTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_FIELD_NO  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_FIELD_DESCRIPTION  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_FIELD_ENERGY  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P64_FIELD_GANTRY  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_FIELD_SSD  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P64_FIELD_MU  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P64_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P64_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'#P64_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
'',
'[data-action="edit"]{',
'    display:none !important;',
'} ',
'[data-action="save"]{',
'    display:none !important;',
'}',
'[data-action="selection-add-row"]{',
'    display:none !important;',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250123095930'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15420575849014121)
,p_plug_name=>'Phase(s)'
,p_region_name=>'phase'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       PHASE_NO,',
'       DOSE_FRACTION,',
'       NO_OF_FRACTION,',
'       DOSE_FRACTION * NO_OF_FRACTION TOT_DOSE,',
'       RBP.ROWID',
'  FROM RADIATION.RADIATION_BOOST_PLAN RBP',
' WHERE RBP.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'   AND RBP.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Phase(s)'
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
 p_id=>wwv_flow_imp.id(15420712546014123)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(15420824430014124)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(15420991543014125)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Phase <br>No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(15421027065014126)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose Fraction<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(15421103653014127)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>No of<br> Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_item_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(15421290684014128)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(15421369733014129)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose<br>(cGy)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15420679938014122)
,p_internal_uid=>15420679938014122
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
 p_id=>wwv_flow_imp.id(15984756603175696)
,p_interactive_grid_id=>wwv_flow_imp.id(15420679938014122)
,p_static_id=>'159848'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15984902690175696)
,p_report_id=>wwv_flow_imp.id(15984756603175696)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15985466496175698)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15420712546014123)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15986323891175700)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15420824430014124)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15987293293175702)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15420991543014125)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15988175094175704)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15421027065014126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15989043711175706)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15421103653014127)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15989987940175708)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15421290684014128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15998510645252634)
,p_view_id=>wwv_flow_imp.id(15984902690175696)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15421369733014129)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15421961361014135)
,p_plug_name=>'Accessories'
,p_region_name=>'accessory'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       SRNO,',
'       PHASE_NO,',
'       A.ACCESSORY_ID,',
'       RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID) DISP_ACCESSORY,',
'       REMARKS,',
'       CASE',
'         WHEN A.ACCESSORY_TYPE = ''B'' THEN',
'          ''Y''',
'         ELSE',
'          ''N''',
'       END UPDATE_ALLOW,',
'       RA.ROWID ',
'  FROM RADIATION.RAD_ACCESSORIES RA, RADIATION.ACCESSORIES A',
' WHERE RA.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'   AND RA.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'   AND RA.ACCESSORY_ID = A.ACCESSORY_ID',
'  -- AND RA.PHASE_NO = NVL(:P64_RAD_PHASE_PHASE_NO, RA.PHASE_NO)',
'   AND RA.SRNO = NVL(SRNO, SRNO)',
'   AND RA.TRANS_TYPE = ''CT''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO'
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
 p_id=>wwv_flow_imp.id(15422112206014137)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15422205363014138)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15422347627014139)
,p_name=>'SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15422440438014140)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15422579701014141)
,p_name=>'ACCESSORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCESSORY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Accessory</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.DESCRIPTION DISP_ACCESSORY, AC.ACCESSORY_ID',
'',
'  FROM RADIATION.ACCESSORIES AC',
' WHERE AC.ACTIVE = ''Y''',
'--AND AC.ACCESSORY_TYPE = ''B'' Commented by farhan need to discuss this issue with user',
' ORDER BY AC.DESCRIPTION',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'ACCESSORY_ID'
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
 p_id=>wwv_flow_imp.id(15422625897014142)
,p_name=>'DISP_ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_ACCESSORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15422746085014143)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(15422999116014145)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(62640444586912447)
,p_name=>'UPDATE_ALLOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_ALLOW'
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
 p_id=>wwv_flow_imp.id(187699883097167433)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_hide=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15422066400014136)
,p_internal_uid=>15422066400014136
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(16047629125406254)
,p_interactive_grid_id=>wwv_flow_imp.id(15422066400014136)
,p_static_id=>'160477'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16047896163406254)
,p_report_id=>wwv_flow_imp.id(16047629125406254)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16048376919406257)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15422112206014137)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16049249014406260)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15422205363014138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16050164567406261)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15422347627014139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16051020605406263)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15422440438014140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16051916526406265)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15422579701014141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16052802636406267)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15422625897014142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16053728509406269)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15422746085014143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16055582165406273)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15422999116014145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80448533182555537)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(62640444586912447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(188894763005070695)
,p_view_id=>wwv_flow_imp.id(16047896163406254)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(187699883097167433)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15917594861911604)
,p_plug_name=>'Physics Plan'
,p_region_name=>'radphy'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RP.RADIATION_NO,',
'       RP.SITE_ID,',
'       RP.PHY_PLAN_ID,',
'       RP.SIGN_BY,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(RP.SIGN_BY) AS SIGN_BY_NAME,',
'       RP.SIGN_DATE,',
'       RP.STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RP.STATUS_ID) AS STATUS_DESC,',
'       RP.FROM_FRACTION_ID,',
'       RP.TO_FRACTION_ID,',
'       R.PLAN_ID,',
'       R.INSTRUCTIONS,',
'       RP.REMARKS,',
'       RP.MACHINE_ID,',
'       RADIATION.PKG_RADIATION.GET_MACHINE_DESC(P_MACHINE_ID => RP.MACHINE_ID) MACHINE_DESC,',
'       RP.CHECKED_BY,',
'       RP.CHECKED_DATE,',
'       RP.ROWID',
'  FROM RADIATION.RAD_PHYSICS RP, RADIATION.RAD_PLAN R',
' WHERE RP.RADIATION_NO = R.RADIATION_NO',
'   AND RP.SITE_ID = R.SITE_ID',
'   AND RP.PLAN_ID = R.PLAN_ID',
'   AND RP.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'   AND RP.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'   AND RP.STATUS_ID <> ''248'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Physics Plan'
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
 p_id=>wwv_flow_imp.id(15917739118911606)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15917878088911607)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15917916853911608)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PHY_PLAN_ID'
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
 p_id=>wwv_flow_imp.id(15918097184911609)
,p_name=>'SIGN_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY'
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
 p_id=>wwv_flow_imp.id(15918106910911610)
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
 p_id=>wwv_flow_imp.id(15918201228911611)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Sign Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_item_attributes=>'readonly="readonly;"'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15918343489911612)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
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
 p_id=>wwv_flow_imp.id(15918463299911613)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Status</b></span>'
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
 p_id=>wwv_flow_imp.id(15918597878911614)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>From <br>Fraction ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(15918620037911615)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>To <br> Fraction ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(15918739655911616)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PLAN_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15918876755911617)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'INSTRUCTIONS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15918948376911618)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
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
 p_id=>wwv_flow_imp.id(15919072921911619)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'MACHINE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15919235650911621)
,p_name=>'CHECKED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKED_BY'
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
 p_id=>wwv_flow_imp.id(15919346843911622)
,p_name=>'CHECKED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKED_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(15919413393911623)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16019345710183218)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15917653460911605)
,p_internal_uid=>15917653460911605
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(15933721121958330)
,p_interactive_grid_id=>wwv_flow_imp.id(15917653460911605)
,p_static_id=>'159338'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15933925454958331)
,p_report_id=>wwv_flow_imp.id(15933721121958330)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15934477536958332)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15917739118911606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15935378261958334)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15917878088911607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15936208210958336)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15917916853911608)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15937125764958338)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15918097184911609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15938085970958340)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(15918106910911610)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205.43444274902345
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15938992841958341)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15918201228911611)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125.10411450195312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15939875597958343)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15918343489911612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15940716157958345)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15918463299911613)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76.6597
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15941699224958347)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(15918597878911614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15942592599958349)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(15918620037911615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15943412119958351)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15918739655911616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.39099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15944368294958353)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(15918876755911617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15945206423958355)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(15918948376911618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15946177374958357)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(15919072921911619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15947986190958362)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(15919235650911621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15948897337958364)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(15919346843911622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15949764969958366)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(15919413393911623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16155336649978355)
,p_view_id=>wwv_flow_imp.id(15933925454958331)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(16019345710183218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16018754194183212)
,p_plug_name=>'Physics Plan Detail'
,p_parent_plug_id=>wwv_flow_imp.id(15917594861911604)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>12
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16021544434183240)
,p_plug_name=>'Weekly QA'
,p_parent_plug_id=>wwv_flow_imp.id(16018754194183212)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>12
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT P.RADIATION_NO,',
'           P.SITE_ID,',
'           P.PHY_PLAN_ID,',
'           P.PHASE_NO,',
'           P.QA_PLAN_ID,',
'           Q.DESCRIPTION PLAN_DESC,',
'           P.ROWID',
'      FROM RADIATION.DEF_QA_PLAN Q, RADIATION.RAD_PHYSICS_DTL P',
'     WHERE P.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'       AND P.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'       AND P.PHY_PLAN_ID = :P64_PHY_PLAN_ID',
'       AND P.PHASE_NO = :P64_RAD_PHASE_PHASE_NO',
'       AND P.QA_PLAN_ID = P.QA_PLAN_ID',
'       AND Q.QA_PLAN_ID = P.QA_PLAN_ID;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_PHY_PLAN_ID,P64_RAD_PHASE_PHASE_NO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15920234679911631)
,p_plug_name=>'Isocenter'
,p_region_name=>'isocenter'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RPI.RADIATION_NO,',
'       RPI.SITE_ID,',
'       RPI.PHY_PLAN_ID,',
'       RPI.PHASE_NO,',
'       RPI.ISOCENTER_ID,',
'       RPI.DESCRIPTION,',
'       RPI.DOSE_FRACTION,',
'       RPI.NO_OF_FRACTION,',
'       R.DESCRIPTION TREATMENT_TYPE_DESC,',
'       RPI.TREATMENT_TYPE,',
'       DOSE_FRACTION * NO_OF_FRACTION TOTAL_DOSE,',
'       RPI.ROWID',
'  FROM RADIATION.RAD_PHYSICS_ISOCENTER RPI, RADIATION.TREATMENT_TYPE R',
' WHERE RPI.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'   AND RPI.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'   AND RPI.PHASE_NO = :P64_RAD_PHASE_PHASE_NO',
'   AND RPI.PHY_PLAN_ID = :P64_PHY_PLAN_ID',
'   AND RPI.TREATMENT_TYPE = R.TREATMENT_TYPE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO,P64_PHY_PLAN_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Isocenter'
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
 p_id=>wwv_flow_imp.id(15920481529911633)
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
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15920547942911634)
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
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15920684861911635)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PHY_PLAN_ID'
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
 p_id=>wwv_flow_imp.id(15920781779911636)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PHASE_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15920823500911637)
,p_name=>'ISOCENTER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOCENTER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<span style="color: darkblue;"><b>ID</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_item_attributes=>'readonly="readonly;"'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'ISOCENTER_ID'
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
 p_id=>wwv_flow_imp.id(15920993684911638)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Description</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DESCRIPTION'
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
 p_id=>wwv_flow_imp.id(15921004753911639)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Dose Fraction<br>(cGy)</b></span>'
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
,p_static_id=>'DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(15921119528911640)
,p_name=>'NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>No Of <br>Fraction(s)</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(15921221180911641)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'TREATMENT_TYPE_DESC'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15921303727911642)
,p_name=>'TREATMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Treatment<br> Type</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>1
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION, T.TREATMENT_TYPE',
'  FROM RADIATION.TREATMENT_TYPE T',
' WHERE T.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'TREATMENT_TYPE'
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
 p_id=>wwv_flow_imp.id(15921433326911643)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose<br>(cGy)</br></b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15921565192911644)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_static_id=>'ROWID'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(219087649498559720)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15920380476911632)
,p_internal_uid=>15920380476911632
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(15974807602095440)
,p_interactive_grid_id=>wwv_flow_imp.id(15920380476911632)
,p_static_id=>'159749'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15975086896095440)
,p_report_id=>wwv_flow_imp.id(15974807602095440)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15975569128095441)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15920481529911633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15976404825095443)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15920547942911634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15977368853095445)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15920684861911635)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15978238998095447)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15920781779911636)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15979163132095448)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15920823500911637)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15980053949095450)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15920993684911638)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15980953069095452)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(15921004753911639)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15981854735095454)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(15921119528911640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15982712911095456)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(15921221180911641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15983652617095458)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15921303727911642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15984578260095459)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(15921433326911643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15985486351095461)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(15921565192911644)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(238055220182528511)
,p_view_id=>wwv_flow_imp.id(15975086896095440)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(219087649498559720)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16240787309271816)
,p_plug_name=>'IsocenterSub'
,p_region_name=>'isocenterdtl'
,p_parent_plug_id=>wwv_flow_imp.id(15920234679911631)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16231860721564225)
,p_plug_name=>'Fields'
,p_region_name=>'field'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT RADIATION_NO,',
'        SITE_ID,',
'        PHY_PLAN_ID,',
'        ISOCENTER_ID,',
'        FIELD_NO,',
'        DESCRIPTION,',
'        ENERGY_ID,',
'        RADIATION.PKG_RADIATION.GET_ENERGY_DESC(P_ENERGY_ID => ENERGY_ID) AS ENERGY_DESC,',
'        GANTARY_ANGLE,',
'        SSD,',
'        M_U,',
'        ROWID',
'   FROM RADIATION.RAD_PHYSICS_FIELDS RPF',
'  WHERE RPF.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'    AND RPF.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'    AND RPF.PHY_PLAN_ID = :P64_PHY_PLAN_ID',
'    AND RPF.ISOCENTER_ID = :P64_ND_ISOCENTER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_PHY_PLAN_ID,P64_ND_ISOCENTER_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Fields'
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
 p_id=>wwv_flow_imp.id(16232028618564227)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16232119777564228)
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
 p_id=>wwv_flow_imp.id(16232267403564229)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(16232300345564230)
,p_name=>'ISOCENTER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOCENTER_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(16232499572564231)
,p_name=>'FIELD_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIELD_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Field No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16232563365564232)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Description</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>64
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
 p_id=>wwv_flow_imp.id(16232677375564233)
,p_name=>'ENERGY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENERGY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Energy</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>3
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EG.DESCRIPTION, EG.ENERGY_ID',
'  FROM RADIATION.ENERGY EG',
' WHERE EG.ACTIVE = ''Y''',
' ORDER BY 1, 2'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16232770106564234)
,p_name=>'ENERGY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENERGY_DESC'
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
 p_id=>wwv_flow_imp.id(16232872711564235)
,p_name=>'GANTARY_ANGLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GANTARY_ANGLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Gantry</b></span>'
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16232923410564236)
,p_name=>'SSD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SSD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>SSD</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(16233048571564237)
,p_name=>'M_U'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'M_U'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>M.U</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(16233102999564238)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(219088616718559730)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16231945264564226)
,p_internal_uid=>16231945264564226
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'} '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(16291987175969374)
,p_interactive_grid_id=>wwv_flow_imp.id(16231945264564226)
,p_static_id=>'162920'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16292167773969375)
,p_report_id=>wwv_flow_imp.id(16291987175969374)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16292616230969378)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16232028618564227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16293510884969381)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16232119777564228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16294458273969384)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16232267403564229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16295371372969386)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(16232300345564230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16296207974969388)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(16232499572564231)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16297191298969392)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(16232563365564232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16298064729969394)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(16232677375564233)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16298987881969396)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(16232770106564234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16299895691969399)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(16232872711564235)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16300756972969402)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(16232923410564236)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16301698978969404)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(16233048571564237)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16302521759969406)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(16233102999564238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(238099671774701453)
,p_view_id=>wwv_flow_imp.id(16292167773969375)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(219088616718559730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16233570091564242)
,p_plug_name=>'Fields'
,p_region_name=>'fielddtl'
,p_parent_plug_id=>wwv_flow_imp.id(16231860721564225)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16239426832271803)
,p_plug_name=>'Special Instruction'
,p_region_name=>'specialint'
,p_region_css_classes=>'forms-block forms-block-simple'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       PHASE_NO,',
'       FRACTION_NO,',
'       SPECIAL_INSTRUCTION,',
'       PORT_FILM_REQUIRED,',
'       SPECIAL_MESSAGE,',
'       T.ROWID',
'  FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS T',
' WHERE T.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'   AND T.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'   AND T.PHASE_NO = :P64_RAD_PHASE_PHASE_NO',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO'
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
 p_id=>wwv_flow_imp.id(16239678411271805)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16239712756271806)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16239809484271807)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16239997390271808)
,p_name=>'FRACTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<span style="color: darkblue;"><b>Fraction No</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(16285345565394766)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO'
,p_ajax_items_to_submit=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO'
,p_ajax_optimize_refresh=>true
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
 p_id=>wwv_flow_imp.id(16240002754271809)
,p_name=>'SPECIAL_INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_INSTRUCTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Special Instruction</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(16240105500271810)
,p_name=>'PORT_FILM_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORT_FILM_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16240246398271811)
,p_name=>'SPECIAL_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPECIAL_MESSAGE'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16240343215271812)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(219088576338559729)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'btn-column'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="del" href="#action$selection-delete"><div><span class="t-Icon fa fa-trash" aria-hidden="true"></span></div></a>',
'<a class="undo" href="#action$row-refresh"><div><span class="t-Icon fa fa-undo" aria-hidden="true"></span></div></a> ',
''))
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16239598729271804)
,p_internal_uid=>16239598729271804
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(16276324297381112)
,p_interactive_grid_id=>wwv_flow_imp.id(16239598729271804)
,p_static_id=>'162764'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16276593319381112)
,p_report_id=>wwv_flow_imp.id(16276324297381112)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16277046874381113)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16239678411271805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16277875294381115)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16239712756271806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16278739830381118)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(16239809484271807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16279696780381120)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(16239997390271808)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16280535794381122)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(16240002754271809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16281472687381124)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(16240105500271810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16282314759381126)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(16240246398271811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16283256527381129)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(16240343215271812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(238095905185689083)
,p_view_id=>wwv_flow_imp.id(16276593319381112)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(219088576338559729)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(84069804708668002)
,p_plug_name=>'History'
,p_region_name=>'radhist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS,',
'       M.RADIATION_DATE, ',
'       ROWID, ',
'             ROW_NUMBER() OVER (',
'        ORDER BY ',
'            CASE ',
'                WHEN M.RADIATION_NO = RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(',
'                    P_MRNO              => :P64_MRNO,',
'                    P_RADIOTHERAPY_TYPE => ''T''',
'                ) THEN 1',
'                ELSE 2',
'            END',
'    ) AS ORDER_BY',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P64_MRNO ',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_MRNO'
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
 p_id=>wwv_flow_imp.id(178920132086255018)
,p_name=>'ORDER_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Order By'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(187701253017167447)
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
,p_value_alignment=>'CENTER'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187701336791167448)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187701488670167449)
,p_name=>'REQUEST_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187701591467167450)
,p_name=>'RADIATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<span style="color: darkblue;"><b>Radiation Date</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189050047493356901)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(187701138426167446)
,p_internal_uid=>187701138426167446
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {  ',
'   config.defaultGridViewOptions = {  ',
'   footer: false',
'}  ',
'return config;  ',
'}  '))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(189056424769362038)
,p_interactive_grid_id=>wwv_flow_imp.id(187701138426167446)
,p_static_id=>'1890565'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(189056672650362038)
,p_report_id=>wwv_flow_imp.id(189056424769362038)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189057177817362044)
,p_view_id=>wwv_flow_imp.id(189056672650362038)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(187701253017167447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189057940963362047)
,p_view_id=>wwv_flow_imp.id(189056672650362038)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(187701336791167448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189058878354362050)
,p_view_id=>wwv_flow_imp.id(189056672650362038)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(187701488670167449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189059725310362053)
,p_view_id=>wwv_flow_imp.id(189056672650362038)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(187701591467167450)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(189060618359362058)
,p_view_id=>wwv_flow_imp.id(189056672650362038)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(189050047493356901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(246838627525649097)
,p_view_id=>wwv_flow_imp.id(189056672650362038)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(178920132086255018)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136468248932926597)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>240
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138164020582135300)
,p_plug_name=>'Control1'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>6
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139920975403937910)
,p_plug_name=>'padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>70
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170713651955357709)
,p_plug_name=>'Patient Detail'
,p_region_name=>'radmaster'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
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
'          ROWID',
'     FROM RADIATION.RADIATION_MASTER M',
'    /*WHERE RADIATION_NO = NVL(:P64_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P64_MRNO IS NOT NULL THEN',
'             ''%'' || :P64_MRNO',
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
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(180522814819739178)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>250
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P64_MRNO;',
''))
,p_display_condition_type=>'NEVER'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /*#image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } */',
'',
'/*#image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'    #image img {',
'        display: inline-block;',
'        width: 10px;',
'        height: 10px;',
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
,p_ajax_items_to_submit=>'P64_USER_MRNO'
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
 p_id=>wwv_flow_imp.id(74022744673034089)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74023129889034091)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(74023548358034092)
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
 p_id=>wwv_flow_imp.id(180523214579739182)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_region_css_classes=>'forms-block'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'         PLANNING,',
'         RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'         P1_DOSE_FRACTION,',
'         P1_NO_OF_FRACTION,',
'         P2_DOSE_FRACTION,',
'         P2_NO_OF_FRACTION,',
'         P3_DOSE_FRACTION,',
'         P3_NO_OF_FRACTION,',
'         TREATMENT_LATER,',
'         ACTIVE,',
'         WFE_NO,',
'         RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                         P_SITE_ID      => SITE_ID,',
'                                                         P_WFE_NO       => WFE_NO) EVENT_DESC,',
'         PLANNING_ID,',
'         RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                     P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                    P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'         RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                   P_SITE_ID      => RD.SITE_ID) -',
'         RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                         P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'         RD.MACHINE_ID,',
'         RADIATION.PKG_RADIATION.GET_MACHINE_DESC(P_MACHINE_ID => RD.MACHINE_ID) AS MACHINE_DESC,',
'         (NVL(P1_DOSE_FRACTION, 0) * NVL(P1_NO_OF_FRACTION, 0) +',
'         NVL(P2_DOSE_FRACTION, 0) * NVL(P2_NO_OF_FRACTION, 0) +',
'         NVL(P3_DOSE_FRACTION, 0) * NVL(P3_NO_OF_FRACTION, 0)) TOT_DOSE,',
'         ROWID',
'    FROM RADIATION.RADIATION_DETAIL RD',
'   WHERE RD.RADIATION_NO = :P64_RADIATION_NO',
'     AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                               P_SITE_ID             => RD.SITE_ID,',
'                                               P_PERFORMANCE_TYPE_ID => ''016'') = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(15922016651911649)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
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
 p_id=>wwv_flow_imp.id(15922135008911650)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'N'
,p_static_id=>'MACHINE_DESC'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16673160194219634)
,p_name=>'TOT_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Total Dose <br> (cGy)</b></span>'
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(169439060647156543)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(180523590343739185)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(180523661863739186)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(180523704249739187)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Radiotherapy Site</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(180523876119739188)
,p_name=>'PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING'
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
 p_id=>wwv_flow_imp.id(180523934964739189)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Planning  <br>Technique</b></span>'
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
 p_id=>wwv_flow_imp.id(180524069887739190)
,p_name=>'P1_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(180524158360739191)
,p_name=>'P1_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P1_NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(180524241225739192)
,p_name=>'P2_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(180524338054739193)
,p_name=>'P2_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P2_NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(180524409416739194)
,p_name=>'P3_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_DOSE_FRACTION'
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
 p_id=>wwv_flow_imp.id(180524568679739195)
,p_name=>'P3_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P3_NO_OF_FRACTION'
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
 p_id=>wwv_flow_imp.id(180524605379739196)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Treatment <br> Later</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(180524767095739197)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<span style="color: darkblue;"><b>Active</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(180524880437739198)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(180524905880739199)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<span style="color: darkblue;"><b>Current <br> Event</b></span>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(180525029647739200)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
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
 p_id=>wwv_flow_imp.id(180525183343739201)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
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
 p_id=>wwv_flow_imp.id(180525248577739202)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
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
 p_id=>wwv_flow_imp.id(180525376582739203)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(180523344217739183)
,p_internal_uid=>180523344217739183
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.initialSelection = true;',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'    return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(181127945705897533)
,p_interactive_grid_id=>wwv_flow_imp.id(180523344217739183)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(181128130887897535)
,p_report_id=>wwv_flow_imp.id(181127945705897533)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16013255443181177)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(15922016651911649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16014169794181179)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(15922135008911650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17219605907013362)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(16673160194219634)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181128515562897536)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(180523590343739185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181129480019897539)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(180523661863739186)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181130388677897542)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(180523704249739187)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>256.009
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181131276702897544)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(180523876119739188)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181132104275897547)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(180523934964739189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110.98400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181133081251897552)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(180524069887739190)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181133961717897555)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(180524158360739191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181134872768897562)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(180524241225739192)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181135746246897564)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(180524338054739193)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181136644675897567)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(180524409416739194)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181137580330897570)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(180524568679739195)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181138439320897572)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(180524605379739196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.8125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181139354484897576)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(180524767095739197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62.109399999999994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181140223190897580)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(180524880437739198)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181141168485897583)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(180524905880739199)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132.969
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181142007983897586)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(180525029647739200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181142898374897589)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(180525183343739201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181143879190897596)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(180525248577739202)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(181144728251897598)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(180525376582739203)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.85400000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(250666195184780291)
,p_view_id=>wwv_flow_imp.id(181128130887897535)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(169439060647156543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187701050148167445)
,p_plug_name=>'Plan Remarks'
,p_parent_plug_id=>wwv_flow_imp.id(180523214579739182)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16670114778219604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(138164020582135300)
,p_button_name=>'Sign'
,p_button_static_id=>'signbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423175166493299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(74010587529034074)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(138164020582135300)
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
 p_id=>wwv_flow_imp.id(290009202756969543)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(138164020582135300)
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
 p_id=>wwv_flow_imp.id(74010909541034074)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(138164020582135300)
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
 p_id=>wwv_flow_imp.id(74011755892034075)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(138164020582135300)
,p_button_name=>'NewPlan'
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
 p_id=>wwv_flow_imp.id(74012174997034075)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(138164020582135300)
,p_button_name=>'DisposePlan'
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
 p_id=>wwv_flow_imp.id(62638808105912431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_button_name=>'SaveISOCenter'
,p_button_static_id=>'saveiso'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62639824775912441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_button_name=>'SaveFields'
,p_button_static_id=>'savefield'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73959681117033979)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136468248932926597)
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
 p_id=>wwv_flow_imp.id(62638915803912432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_button_name=>'DeleteSOCenter'
,p_button_static_id=>'deliso'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62639951327912442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_button_name=>'DeleteFields'
,p_button_static_id=>'delfield'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73959249201033977)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_button_name=>'SignPhysics'
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
 p_id=>wwv_flow_imp.id(15421502834014131)
,p_name=>'P64_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>180
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15421620393014132)
,p_name=>'P64_RAD_PHASE_PHASE_NO'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15919826716911627)
,p_name=>'P64_PHY_PLAN_ID'
,p_item_sequence=>200
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16017620305183201)
,p_name=>'P64_CURRENT_MACHINE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(187701050148167445)
,p_prompt=>'<b><p style="color:#00008B">Current Machine:</p></b>'
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
 p_id=>wwv_flow_imp.id(16017758901183202)
,p_name=>'P64_ND_PLAN_REMARKS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(187701050148167445)
,p_prompt=>'<b><p style="color:#00008B">Plan Remarks:</p></b>'
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
 p_id=>wwv_flow_imp.id(16017823498183203)
,p_name=>'P64_ND_PLAN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(187701050148167445)
,p_prompt=>'<b><p style="color:#00008B">Plan ID:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16018963261183214)
,p_name=>'P64_ND_MACHINE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16018754194183212)
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RAD_PHYSICS_MACHINE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.MACHINE_ID,',
'       MC.DESCRIPTION MACHINE_NAME,',
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
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
' ORDER BY MC.DESCRIPTION',
''))
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(16021821724183243)
,p_name=>'P64_REMARKS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16022083117183245)
,p_name=>'P64_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16022148690183246)
,p_name=>'P64_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16022260281183247)
,p_name=>'P64_PHY_PLAN_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_source=>'PHY_PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16022356800183248)
,p_name=>'P64_PHASE_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_source=>'PHASE_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16022459620183249)
,p_name=>'P64_QA_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_prompt=>'<b><p style="color:#00008B">Weekly QA Plan:</p></b>'
,p_source=>'QA_PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, QA_PLAN_ID',
'  FROM RADIATION.DEF_QA_PLAN',
' WHERE ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(16022568091183250)
,p_name=>'P64_PLAN_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_source=>'PLAN_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16231548076564222)
,p_name=>'P64_ND_ISOCENTER_ID'
,p_item_sequence=>210
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16233616509564243)
,p_name=>'P64_FIELD_NO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Field No:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(16233720258564244)
,p_name=>'P64_FIELD_DESCRIPTION'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Description:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
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
 p_id=>wwv_flow_imp.id(16239238746271801)
,p_name=>'P64_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_item_source_plug_id=>wwv_flow_imp.id(16021544434183240)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16240896129271817)
,p_name=>'P64_ISOCENTER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Isocenter ID:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16240997112271818)
,p_name=>'P64_ISO_RADIATION_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241096579271819)
,p_name=>'P64_ISO_SITE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241195331271820)
,p_name=>'P64_ISO_PHY_PLAN_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241290618271821)
,p_name=>'P64_ISO_DESCRIPTION'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Description:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241350133271822)
,p_name=>'P64_ISO_DOSE_FRACTION'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Dose Fraction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241469358271823)
,p_name=>'P64_ISO_NO_OF_FRACTION'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">No of Fraction:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241563670271824)
,p_name=>'P64_ISO_TREATMENT_TYPE_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241673954271825)
,p_name=>'P64_ISO_TREATMENT_TYPE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<p style="color:#00008B">Treatment Type:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION, T.TREATMENT_TYPE',
'  FROM RADIATION.TREATMENT_TYPE T',
' WHERE T.ACTIVE = ''Y''',
' ORDER BY 1'))
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241767591271826)
,p_name=>'P64_ISO_TOTAL_DOSE'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Total Dose(cGy):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16241820519271827)
,p_name=>'P64_ISO_ROWID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16242261679271831)
,p_name=>'P64_ISO_PHASE_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16670287515219605)
,p_name=>'P64_CHECK_SIGN'
,p_item_sequence=>220
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17066604728716825)
,p_name=>'P64_SIGN_STATUS'
,p_item_sequence=>230
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62639104945912434)
,p_name=>'P64_ISOCENTER_DML_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16240787309271816)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62639391638912436)
,p_name=>'P64_FIELD_ENERGY'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Energy:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EG.DESCRIPTION,',
'       EG.ENERGY_ID',
'  FROM RADIATION.ENERGY EG',
' WHERE EG.ACTIVE = ''Y''',
' ORDER BY 1,2'))
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62639417056912437)
,p_name=>'P64_FIELDS_DML_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62639512350912438)
,p_name=>'P64_FIELD_GANTRY'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">Gantry:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(62639617676912439)
,p_name=>'P64_FIELD_SSD'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">SSD:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(62639725901912440)
,p_name=>'P64_FIELD_MU'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b><p style="color:#00008B">MU:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(62640055895912443)
,p_name=>'P64_FIELDS_RADIATION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62640103362912444)
,p_name=>'P64_FIELDS_SITE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62640232905912445)
,p_name=>'P64_FIELDS_PHY_PLAN_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62640327416912446)
,p_name=>'P64_FIELDS_ISOCENTER_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16233570091564242)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136469845996926611)
,p_name=>'P64_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
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
 p_id=>wwv_flow_imp.id(136469874207926612)
,p_name=>'P64_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136469966913926613)
,p_name=>'P64_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
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
 p_id=>wwv_flow_imp.id(136470123602926614)
,p_name=>'P64_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
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
 p_id=>wwv_flow_imp.id(136470247001926615)
,p_name=>'P64_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136470330418926616)
,p_name=>'P64_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136470370331926617)
,p_name=>'P64_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136470464529926618)
,p_name=>'P64_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136470634099926619)
,p_name=>'P64_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136470727272926620)
,p_name=>'P64_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136471208054926625)
,p_name=>'P64_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136471315738926626)
,p_name=>'P64_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138286991579135503)
,p_name=>'P64_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138287065802135504)
,p_name=>'P64_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139107471154104972)
,p_name=>'P64_TXT_URL'
,p_item_sequence=>150
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140194709703730991)
,p_name=>'P64_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(136468248932926597)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554230071700312)
,p_name=>'P64_RAD_PLAN_DML_STATUS'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140554650235700317)
,p_name=>'P64_PARAM_SR_NO'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170792966566357866)
,p_name=>'P64_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Rad No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
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
 p_id=>wwv_flow_imp.id(170793063152357867)
,p_name=>'P64_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_source=>'RADIATION_DATE'
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
 p_id=>wwv_flow_imp.id(178918674143255003)
,p_name=>'P64_PLAN_ID'
,p_item_sequence=>280
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178920045489255017)
,p_name=>'P64_PARAM_RAD_NO'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180600510753739318)
,p_name=>'P64_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
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
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180600623840739319)
,p_name=>'P64_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Name:</p></b>'
,p_source=>'PATIENT_NAME'
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
 p_id=>wwv_flow_imp.id(180600744003739320)
,p_name=>'P64_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Sex:</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(180600823975739321)
,p_name=>'P64_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
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
 p_id=>wwv_flow_imp.id(180600864046739322)
,p_name=>'P64_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180601021808739323)
,p_name=>'P64_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_source=>'DISP_DOCTOR'
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
 p_id=>wwv_flow_imp.id(180601159883739324)
,p_name=>'P64_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>104
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_prompt=>'<b><p style="color:#00008B">Trt. Intent:</p></b>'
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180601378551739327)
,p_name=>'P64_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(180601548143739328)
,p_name=>'P64_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
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
 p_id=>wwv_flow_imp.id(180601606514739329)
,p_name=>'P64_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
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
 p_id=>wwv_flow_imp.id(180601673757739330)
,p_name=>'P64_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
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
 p_id=>wwv_flow_imp.id(180601796924739331)
,p_name=>'P64_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
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
 p_id=>wwv_flow_imp.id(180601914454739332)
,p_name=>'P64_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(170713651955357709)
,p_item_source_plug_id=>wwv_flow_imp.id(170713651955357709)
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
 p_id=>wwv_flow_imp.id(180646630855739389)
,p_name=>'P64_PARAM_SITE_ID'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183006337079722606)
,p_name=>'P64_ALERT_TEXT'
,p_item_sequence=>160
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187700318538167438)
,p_name=>'P64_SUCCESS_MESSAGE'
,p_item_sequence=>260
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189052897727356929)
,p_name=>'P64_ERROR_MESSAGE'
,p_item_sequence=>270
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74047630032034117)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74010909541034074)
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
 p_id=>wwv_flow_imp.id(74048151668034117)
,p_event_id=>wwv_flow_imp.id(74047630032034117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74053000996034119)
,p_name=>'UpdateISOCenter'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateISOCenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74053584087034119)
,p_event_id=>wwv_flow_imp.id(74053000996034119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P64_ISO_RADIATION_NO",',
'            "P64_ISO_SITE_ID",',
'            "P64_ISO_PHY_PLAN_ID",',
'            "P64_ISO_PHASE_NO",',
'            "P64_ISOCENTER_ID",',
'            "P64_ISO_DESCRIPTION",',
'            "P64_ISO_DOSE_FRACTION",',
'            "P64_ISO_NO_OF_FRACTION",',
'            "P64_ISO_TREATMENT_TYPE_DESC",',
'            "P64_ISO_TREATMENT_TYPE"',
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
'                /* apex.message.alert(obj.response, function () {',
'                 }, {',
'                     title: "Success",',
'                     style: "success",',
'                     iconClasses: "fa fa-check fa-2x",',
'                     okLabel: "Ok"',
'                 });*/',
'                apex.message.showPageSuccess(obj.response);',
'                apex.region(''isocenter'').refresh();',
'                apex.theme.closeRegion(''isocenterdtl'');',
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
 p_id=>wwv_flow_imp.id(16243046805271839)
,p_name=>'InsertISOCenter'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertISOCenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16243143888271840)
,p_event_id=>wwv_flow_imp.id(16243046805271839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessISOCenter",',
'    {',
'        pageItems: ["P64_ISO_RADIATION_NO",',
'            "P64_ISO_SITE_ID",',
'            "P64_ISO_PHY_PLAN_ID",',
'            "P64_ISO_PHASE_NO",',
'            "P64_ISOCENTER_ID",',
'            "P64_ISO_DESCRIPTION",',
'            "P64_ISO_DOSE_FRACTION",',
'            "P64_ISO_NO_OF_FRACTION",',
'            "P64_ISO_TREATMENT_TYPE_DESC",',
'            "P64_ISO_TREATMENT_TYPE"',
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
'                /*apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });*/',
'                apex.message.showPageSuccess(obj.response);',
'                apex.region(''isocenter'').refresh();',
'                apex.theme.closeRegion(''isocenterdtl'');',
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
 p_id=>wwv_flow_imp.id(16230620876564213)
,p_name=>'InsertSpecialInstruction'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertSpecialInstruction'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16230766934564214)
,p_event_id=>wwv_flow_imp.id(16230620876564213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P64_SP_INTRUCT_FRACTION_NO",',
'            "P64_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P64_SP_INTRUCT_RADIATION_NO",',
'            "P64_SP_INTRUCT_SITE_ID",',
'            "P64_SP_INTRUCT_PHASE_NO",',
'            "P64_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P64_SP_INTRUCT_ROWID"',
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
'                /*apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });*/',
'                apex.message.showPageSuccess(obj.response);',
'                apex.region(''specialint'').refresh();',
'                apex.theme.closeRegion(''specialintdtl'');',
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
 p_id=>wwv_flow_imp.id(16230877829564215)
,p_name=>'UpdateSpecialInstruction'
,p_event_sequence=>180
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateSpecialInstruction'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16230969942564216)
,p_event_id=>wwv_flow_imp.id(16230877829564215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessSpecialInstruction",',
'    {',
'        pageItems: ["P64_SP_INTRUCT_FRACTION_NO",',
'            "P64_SP_INTRUCT_SPECIAL_INSTRUCTION",',
'            "P64_SP_INTRUCT_RADIATION_NO",',
'            "P64_SP_INTRUCT_SITE_ID",',
'            "P64_SP_INTRUCT_PHASE_NO",',
'            "P64_SP_INTRUCT_SPECIAL_MESSAGE",',
'            "P64_SP_INTRUCT_ROWID"',
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
'                /*apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });*/',
'',
'                apex.message.showPageSuccess(obj.response);',
'                apex.region(''specialint'').refresh();',
'                apex.theme.closeRegion(''specialintdtl'');',
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
 p_id=>wwv_flow_imp.id(74053950255034121)
,p_name=>'SetRadiationNo'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(84069804708668002)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74054920184034122)
,p_event_id=>wwv_flow_imp.id(74053950255034121)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P64_RADIATION_NO'', _.radhist.RADIATION_NO);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74055401021034123)
,p_event_id=>wwv_flow_imp.id(74053950255034121)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
'    INTO :P64_RADIATION_NO,',
'         :P64_RADIATION_DATE,',
'         :P64_MRNO,',
'         :P64_PATIENT_NAME,',
'         :P64_DISP_AGE,',
'         :P64_DISP_GENDER,',
'         :P64_DOCTOR_ID,',
'         :P64_DISP_DOCTOR,',
'         :P64_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO = :P64_RADIATION_NO',
'     AND RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P64_RADIATION_NO'
,p_attribute_03=>'P64_RADIATION_NO,P64_RADIATION_DATE,P64_PATIENT_NAME,P64_DISP_AGE,P64_DISP_GENDER,P64_DOCTOR_ID,P64_DISP_DOCTOR,P64_DISP_INTENT,P64_USER_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74056482331034123)
,p_event_id=>wwv_flow_imp.id(74053950255034121)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(180523214579739182)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74057833715034125)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74058812273034125)
,p_event_id=>wwv_flow_imp.id(74057833715034125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P64_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P64_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P64_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P64_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P64_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P64_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
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
,p_attribute_02=>'P64_USER_MRNO,P64_MRNO'
,p_attribute_03=>'P64_SERVICE_NO,P64_SERVICE_STATUS,P64_RANK,P64_FORMATION,P64_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74058314331034125)
,p_event_id=>wwv_flow_imp.id(74057833715034125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P64_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P64_SERVICE_NO").show();',
'    apex.item("P64_SERVICE_STATUS").show();',
'    apex.item("P64_RANK").show();',
'    apex.item("P64_FORMATION").show();',
'    apex.item("P64_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P64_SERVICE_NO").hide();',
'    apex.item("P64_SERVICE_STATUS").hide();',
'    apex.item("P64_RANK").hide();',
'    apex.item("P64_FORMATION").hide();',
'    apex.item("P64_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74059293851034125)
,p_name=>'DARadDetail1'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(180523214579739182)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15423185211014147)
,p_event_id=>wwv_flow_imp.id(74059293851034125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P64_RAD_DETAIL_ND_RADIATION_NO'', _.raddetail.RADIATION_NO);',
'$s(''P64_RAD_DETAIL_ND_SITE_ID'', _.raddetail.SITE_ID);',
'$s(''P64_CURRENT_MACHINE'', _.raddetail.MACHINE_DESC);',
'',
'',
'',
'',
'apex.region(''phase'').refresh();',
'apex.region(''radphy'').refresh();',
'apex.region(''accessory'').refresh();',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74060605284034126)
,p_name=>'PopulatePlanningSiteId'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ND_DOSE_CONSTRAINT_SITE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74061135980034126)
,p_event_id=>wwv_flow_imp.id(74060605284034126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P64_DOSE_CONSTRAINT_SITE_ID").setValue($v("P64_ND_DOSE_CONSTRAINT_SITE"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74062477134034126)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73959249201033977)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74062910278034127)
,p_event_id=>wwv_flow_imp.id(74062477134034126)
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
'  :P64_TXT_ALERT_TEXT := null;',
'  :P64_SUCCESS_MSG    := null;',
'  :P64_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P64_DISP_MRNO,',
'                                          :P64_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P64_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P64_VALIDATE'', ''Y'');',
'    :P64_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P64_DISP_MRNO,P64_PASSWORD'
,p_attribute_03=>'P64_SUCCESS_MSG,P64_ERROR,P64_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16671316945219616)
,p_event_id=>wwv_flow_imp.id(74062477134034126)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P64_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P64_CHECK_SIGN = ''N'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00139.SIGN_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P64_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_PHASE_NO          => :P64_RAD_PHASE_PHASE_NO,',
'                                                      P_PHY_PLAN_ID       => :P64_PHY_PLAN_ID,',
'                                                      P_SIGN_BY           => :P64_DISP_MRNO,',
'                                                      P_SCHEDULE_SRNO     => NULL,',
'                                                      P_SCHEDULE_EVENT_ID => ''336'',',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00053'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P64_ERROR := L_ALERT_TEXT;',
'        END IF;',
'        :P64_SUCCESS_MSG := ''Physics Plan signed properly'';',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO,P64_PHY_PLAN_ID,P64_DISP_MRNO,P64_VALIDATE,P64_CHECK_SIGN'
,p_attribute_03=>'P64_ERROR,P64_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P64_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16671429949219617)
,p_event_id=>wwv_flow_imp.id(74062477134034126)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P64_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P64_CHECK_SIGN = ''Y'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00139.SIGN_CHECK_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P64_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_PHASE_NO          => :P64_RAD_PHASE_PHASE_NO,',
'                                                      P_PHY_PLAN_ID       => :P64_PHY_PLAN_ID,',
'                                                      P_SIGN_BY           => :P64_DISP_MRNO,',
'                                                      P_SCHEDULE_SRNO     => NULL,',
'                                                      P_SCHEDULE_EVENT_ID => NULL,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00053'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P64_ERROR := L_ALERT_TEXT;',
'        END IF;',
'        :P64_SUCCESS_MSG := ''Physics Plan signed properly'';',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO,P64_PHY_PLAN_ID,P64_DISP_MRNO,P64_VALIDATE,P64_CHECK_SIGN'
,p_attribute_03=>'P64_ERROR,P64_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P64_CHECK_SIGN'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17067039320716829)
,p_event_id=>wwv_flow_imp.id(74062477134034126)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radphy'').refresh();',
'apex.item("signbtn").disable();',
'apex.item("save").disable();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74063880368034127)
,p_name=>'CloseSign'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73959681117033979)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74064350789034127)
,p_event_id=>wwv_flow_imp.id(74063880368034127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136468248932926597)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74041413655034111)
,p_name=>'SetMRNO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74043421458034112)
,p_event_id=>wwv_flow_imp.id(74041413655034111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_PASSWORD,P64_PATIENT_NAME,P64_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74043905179034112)
,p_event_id=>wwv_flow_imp.id(74041413655034111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_PATIENT_TYPE IS NOT NULL AND :P64_PATIENT_MRNO IS NOT NULL THEN',
'    :P64_DISP_MRNO := :P64_PATIENT_TYPE || LPAD(:P64_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P64_PATIENT_TYPE,P64_PATIENT_MRNO'
,p_attribute_03=>'P64_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74041964049034111)
,p_event_id=>wwv_flow_imp.id(74041413655034111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P64_ERROR := NULL;',
'  IF :P64_PATIENT_MRNO IS NOT NULL THEN',
'    :P64_DISP_MRNO := :P64_PATIENT_TYPE || LPAD(:P64_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P64_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P64_ERROR        := ''This is not an active employee.'';',
'      :P64_PATIENT_MRNO := NULL;',
'      :P64_DISP_MRNO    := NULL;',
'      :P64_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P64_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P64_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P43_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74042425654034112)
,p_event_id=>wwv_flow_imp.id(74041413655034111)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P64_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P64_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74042960229034112)
,p_event_id=>wwv_flow_imp.id(74041413655034111)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P64_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P64_DISP_MRNO);'
,p_attribute_02=>'P64_DISP_MRNO'
,p_attribute_03=>'P64_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15421713066014133)
,p_name=>'DAPhase'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15420575849014121)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15421825122014134)
,p_event_id=>wwv_flow_imp.id(15421713066014133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P64_RAD_PHASE_PHASE_NO'', _.phase.PHASE_NO);',
'',
'//apex.region(''accessory'').refresh();',
'apex.region(''radphy'').refresh();',
'//apex.region(''isocenter'').refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15919993497911628)
,p_name=>'DAPhysicsPlan'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15917594861911604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15920036490911629)
,p_event_id=>wwv_flow_imp.id(15919993497911628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P64_PHY_PLAN_ID'', _.radphy.PHY_PLAN_ID);',
'$s(''P64_SIGN_STATUS'', _.radphy.STATUS_ID);',
'$s(''P64_PLAN_ID'', _.radphy.PLAN_ID);',
'$s(''P64_ND_PLAN_REMARKS'', _.radphy.INSTRUCTIONS);',
'$s(''P64_ND_PLAN_ID'', _.radphy.PLAN_ID);',
'$s(''P64_ND_MACHINE_ID'', _.radphy.MACHINE_ID);',
'$s(''P64_REMARKS'', _.radphy.REMARKS);',
'',
'',
'',
'',
'    '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16239394106271802)
,p_event_id=>wwv_flow_imp.id(15919993497911628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT P.RADIATION_NO,',
'         P.SITE_ID,',
'         P.PHY_PLAN_ID,',
'         P.PHASE_NO,',
'         P.QA_PLAN_ID,',
'         Q.DESCRIPTION PLAN_DESC,',
'         P.ROWID',
'    INTO :P64_RADIATION_NO_1,',
'         :P64_SITE_ID,',
'         :P64_PHY_PLAN_ID_1,',
'         :P64_PHASE_NO,',
'         :P64_QA_PLAN_ID,',
'         :P64_PLAN_DESC,',
'         :P64_ROWID_1',
'    FROM RADIATION.DEF_QA_PLAN Q, RADIATION.RAD_PHYSICS_DTL P',
'   WHERE P.RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'     AND P.SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'     AND P.PHY_PLAN_ID = :P64_PHY_PLAN_ID',
'     AND P.PHASE_NO = :P64_RAD_PHASE_PHASE_NO',
'     AND P.QA_PLAN_ID = P.QA_PLAN_ID',
'     AND Q.QA_PLAN_ID = P.QA_PLAN_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_PHY_PLAN_ID,P64_RAD_PHASE_PHASE_NO'
,p_attribute_03=>'P64_QA_PLAN_ID,P64_RADIATION_NO_1,P64_SITE_ID,P64_PHY_PLAN_ID_1,P64_PHASE_NO,P64_PLAN_DESC,P64_ROWID_1'
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
 p_id=>wwv_flow_imp.id(15921616978911645)
,p_event_id=>wwv_flow_imp.id(15919993497911628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15920234679911631)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17066933542716828)
,p_event_id=>wwv_flow_imp.id(15919993497911628)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P64_SIGN_STATUS") === "015") || ($v("P64_SIGN_STATUS") === "248")) {',
'    apex.item("deliso").disable();',
'    apex.item("saveiso").disable();',
'    apex.item("delspins").disable();',
'    apex.item("savespins").disable();',
'    apex.item("delfield").disable();',
'    apex.item("savefield").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("save").disable();',
'',
'    apex.item("P64_ND_MACHINE_ID").disable();',
'    apex.item("P64_QA_PLAN_ID").disable();',
'    apex.item("P64_REMARKS").disable();',
'',
'',
'',
'',
'',
'',
'    // $("#deliso, #saveiso, #delspins, #savespins, #delfield, #savefield, #PhyPlanDetail, #isocenter, #specialint, #field, #accessory").css({',
'    //     "pointer-events": "none",',
'    //     "background": "none"',
'    // });',
'',
'',
'}',
'else {',
'    apex.item("deliso").enable();',
'    apex.item("saveiso").enable();',
'    apex.item("delspins").enable();',
'    apex.item("savespins").enable();',
'    apex.item("delfield").enable();',
'    apex.item("savefield").enable();',
'    apex.item("signbtn").enable();',
'    apex.item("save").enable();',
'',
'',
'    apex.item("P64_ND_MACHINE_ID").enable();',
'    apex.item("P64_QA_PLAN_ID").enable();',
'    apex.item("P64_REMARKS").enable();',
'',
'    // $("#deliso, #saveiso, #delspins, #savespins, #delfield, #savefield,  #PhyPlanDetail, #isocenter, #specialint, #field, #accessory").css({',
'    //     "pointer-events": "",',
'    //     "background": ""',
'    // });',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62638476778912427)
,p_name=>'SetTotalDose1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ISO_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62638541843912428)
,p_event_id=>wwv_flow_imp.id(62638476778912427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P64_ISO_DOSE_FRACTION,0) * NVL(:P64_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P64_ISO_DOSE_FRACTION,P64_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62638616922912429)
,p_name=>'SetTotalDose2'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ISO_NO_OF_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62638795660912430)
,p_event_id=>wwv_flow_imp.id(62638616922912429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_ISO_TOTAL_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P64_ISO_DOSE_FRACTION,0) * NVL(:P64_ISO_NO_OF_FRACTION,0));'
,p_attribute_07=>'P64_ISO_DOSE_FRACTION,P64_ISO_NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16242861355271837)
,p_name=>'SaveISOCenter'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62638808105912431)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16242972236271838)
,p_event_id=>wwv_flow_imp.id(16242861355271837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P64_ISOCENTER_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("InsertISOCenter");',
'}',
'else if ($v("P64_ISOCENTER_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("UpdateISOCenter");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16243328381271842)
,p_name=>'DeleteISOCenter'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62638915803912432)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16243481635271843)
,p_event_id=>wwv_flow_imp.id(16243328381271842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'ProcessISOCenter'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.confirm(''Please confirm you want to delete ISOCenter?'', function (isOk) {',
'    if (isOk) {',
'',
'        apex.server.process("ProcessISOCenter",',
'            {',
'                pageItems: ["P64_ISO_RADIATION_NO",',
'                    "P64_ISO_SITE_ID",',
'                    "P64_ISO_PHY_PLAN_ID",',
'                    "P64_ISO_PHASE_NO",',
'                    "P64_ISOCENTER_ID",',
'                    "P64_ISO_DESCRIPTION",',
'                    "P64_ISO_DOSE_FRACTION",',
'                    "P64_ISO_NO_OF_FRACTION",',
'                    "P64_ISO_TREATMENT_TYPE_DESC",',
'                    "P64_ISO_TREATMENT_TYPE"',
'                ],',
'                x01: ''DELETE''',
'            },',
'            {',
'                dataType: ''text'',',
'                success: function (data) {',
'',
'                    var obj = JSON.parse(data);',
'                    console.log(data);',
'                    console.log(obj);',
'                    if (obj.status == "success") {',
'                        apex.message.alert(obj.response, function () {',
'                        }, {',
'                            title: "Success",',
'                            style: "success",',
'                            iconClasses: "fa fa-check fa-2x",',
'                            okLabel: "Ok"',
'                        });',
'                        apex.region(''isocenter'').refresh();',
'                        apex.theme.closeRegion(''isocenterdtl'');',
'                    }',
'                    else {',
'                        apex.message.alert(obj.response, function () {',
'                            //afterLoad();',
'                        }, {',
'                            title: "Error",',
'                            style: "warning",',
'                            iconClasses: "fa fa-warning fa-2x",',
'                            okLabel: "Ok"',
'                        });',
'                    }',
'                }',
'            }',
'        );',
'',
'    }',
'})',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16231600291564223)
,p_name=>'DAISOCenter'
,p_event_sequence=>350
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15920234679911631)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16231783868564224)
,p_event_id=>wwv_flow_imp.id(16231600291564223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P64_ND_ISOCENTER_ID'', _.isocenter.ISOCENTER_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16233237954564239)
,p_event_id=>wwv_flow_imp.id(16231600291564223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16231860721564225)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16233836247564245)
,p_name=>'InsertFields'
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'InsertFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16233942681564246)
,p_event_id=>wwv_flow_imp.id(16233836247564245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P64_FIELD_NO",',
'            "P64_FIELD_DESCRIPTION",',
'            "P64_FIELD_ENERGY",',
'            "P64_FIELD_GANTRY",',
'            "P64_FIELD_SSD",',
'            "P64_FIELD_MU",',
'            "P64_FIELDS_RADIATION_NO",',
'            "P64_FIELDS_SITE_ID",',
'            "P64_FIELDS_PHY_PLAN_ID",',
'            "P64_FIELDS_ISOCENTER_ID",',
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
'                /*apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });',
'                 // $(".js-confirmBtn").trigger("click");',
'                 $(".js-confirmBtn ui-button ui-corner-all ui-widget ui-button--hot").trigger("click");',
'',
'                    $(''.js-confirmBtn'').fadeOut(''slow'');',
'                setTimeout(function () {',
'                    //  apex.message.hidePageSuccess();',
'                    $(".js-confirmBtn").trigger("click");',
'                    alert(''click'')',
'                }, 3000)*/',
'                apex.message.showPageSuccess(obj.response);',
'',
'',
'',
'',
'                apex.region(''field'').refresh();',
'                apex.theme.closeRegion(''fielddtl'');',
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
 p_id=>wwv_flow_imp.id(16234074400564247)
,p_name=>'UpdateFields'
,p_event_sequence=>370
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16234157910564248)
,p_event_id=>wwv_flow_imp.id(16234074400564247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessField",',
'    {',
'        pageItems: ["P64_FIELD_NO",',
'            "P64_FIELD_DESCRIPTION",',
'            "P64_FIELD_ENERGY",',
'            "P64_FIELD_GANTRY",',
'            "P64_FIELD_SSD",',
'            "P64_FIELD_MU",',
'            "P64_FIELDS_RADIATION_NO",',
'            "P64_FIELDS_SITE_ID",',
'            "P64_FIELDS_PHY_PLAN_ID",',
'            "P64_FIELDS_ISOCENTER_ID",',
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
'                /*apex.message.alert(obj.response, function () {',
'                }, {',
'                    title: "Success",',
'                    style: "success",',
'                    iconClasses: "fa fa-check fa-2x",',
'                    okLabel: "Ok"',
'                });*/',
'                apex.message.showPageSuccess(obj.response);',
'',
'                apex.region(''field'').refresh();',
'                apex.theme.closeRegion(''fielddtl'');',
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
 p_id=>wwv_flow_imp.id(16234272590564249)
,p_name=>'SaveFields'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62639824775912441)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16234340208564250)
,p_event_id=>wwv_flow_imp.id(16234272590564249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P64_FIELDS_DML_STATUS") == ''CREATE'') {',
'    $.event.trigger("InsertFields");',
'}',
'else if ($v("P64_FIELDS_DML_STATUS") == ''UPDATE'') {',
'    $.event.trigger("UpdateFields");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16669875893219601)
,p_name=>'DeleteFields'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62639951327912442)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16669930259219602)
,p_event_id=>wwv_flow_imp.id(16669875893219601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.confirm(''Please confirm you want to delete Field?'', function (isOk) {',
'    if (isOk) {',
'        apex.server.process("ProcessField",',
'            {',
'',
'                pageItems: ["P64_FIELD_NO",',
'                    "P64_FIELD_DESCRIPTION",',
'                    "P64_FIELD_ENERGY",',
'                    "P64_FIELD_GANTRY",',
'                    "P64_FIELD_SSD",',
'                    "P64_FIELD_MU",',
'                    "P64_FIELDS_RADIATION_NO",',
'                    "P64_FIELDS_SITE_ID",',
'                    "P64_FIELDS_PHY_PLAN_ID",',
'                    "P64_FIELDS_ISOCENTER_ID"',
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
'                        apex.region(''field'').refresh();',
'                        apex.theme.closeRegion(''fielddtl'');',
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
 p_id=>wwv_flow_imp.id(16670319548219606)
,p_name=>'PhysicsSign'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16670114778219604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16670427652219607)
,p_event_id=>wwv_flow_imp.id(16670319548219606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P64_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P64_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P64_DISP_MRNO    := (:P64_PATIENT_TYPE ||',
'                         LPAD(:P64_PATIENT_MRNO, 8, ''0''));',
'    :P64_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P64_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P64_PATIENT_MRNO,P64_PATIENT_TYPE,P64_DISP_MRNO,P64_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16670580714219608)
,p_event_id=>wwv_flow_imp.id(16670319548219606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P64_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16670847582219611)
,p_name=>'DASuccessMsg'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_SUCCESS_MSG'
,p_condition_element=>'P64_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16670923824219612)
,p_event_id=>wwv_flow_imp.id(16670847582219611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P64_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16671096294219613)
,p_name=>'DAErrorMessage'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ERROR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16671129232219614)
,p_event_id=>wwv_flow_imp.id(16671096294219613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P64_ERROR.'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P64_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16673262464219635)
,p_name=>'DARefresh'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16673386850219636)
,p_event_id=>wwv_flow_imp.id(16673262464219635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(84069804708668002)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17066706629716826)
,p_name=>'EnableDisable'
,p_event_sequence=>440
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17066810231716827)
,p_event_id=>wwv_flow_imp.id(17066706629716826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P64_SIGN_STATUS") === "015") || ($v("P64_SIGN_STATUS") === "248")) {',
'    apex.item("deliso").disable();',
'    apex.item("saveiso").disable();',
'    apex.item("delspins").disable();',
'    apex.item("savespins").disable();',
'    apex.item("delfield").disable();',
'    apex.item("savefield").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("save").disable();',
'',
'',
'}',
'else {',
'    apex.item("deliso").enable();',
'    apex.item("saveiso").enable();',
'    apex.item("delspins").enable();',
'    apex.item("savespins").enable();',
'    apex.item("delfield").enable();',
'    apex.item("savefield").enable();',
'    apex.item("signbtn").enable();',
'    apex.item("save").enable();',
'',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187699946138167434)
,p_name=>'DAAccessoryId'
,p_event_sequence=>450
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15421961361014135)
,p_triggering_element=>'ACCESSORY_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ACCESSORY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187700093042167435)
,p_event_id=>wwv_flow_imp.id(187699946138167434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("accessory").widget().interactiveGrid("getViews").grid.view$',
'',
'view$.grid("gotoCell", view$.grid("getActiveRecordId"), "ACCESSORY_ID");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187700126592167436)
,p_name=>'DAAccessryID1'
,p_event_sequence=>460
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15421961361014135)
,p_triggering_element=>'ACCESSORY_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187700215508167437)
,p_event_id=>wwv_flow_imp.id(187700126592167436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219087346851559717)
,p_name=>'Save'
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74010587529034074)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219087416244559718)
,p_event_id=>wwv_flow_imp.id(219087346851559717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.page.warnOnUnsavedChanges(false);',
'processRecordsMain();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219088947677559733)
,p_name=>'DATreatmentType'
,p_event_sequence=>490
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15920234679911631)
,p_triggering_element=>'TREATMENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219089033367559734)
,p_event_id=>wwv_flow_imp.id(219088947677559733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("isocenter").widget().interactiveGrid("getViews").grid.view$',
'',
'view$.grid("gotoCell", view$.grid("getActiveRecordId"), "TREATMENT_TYPE");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219089150892559735)
,p_name=>'CalculateTOTDose2'
,p_event_sequence=>500
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15920234679911631)
,p_triggering_element=>'DOSE_FRACTION,NO_OF_FRACTION'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'DOSE_FRACTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219089268417559736)
,p_event_id=>wwv_flow_imp.id(219089150892559735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TOTAL_DOSE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:DOSE_FRACTION,0)*nvl(:NO_OF_FRACTION,0)'
,p_attribute_07=>'DOSE_FRACTION,NO_OF_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219089331640559737)
,p_name=>'DA_ENERGY_ID'
,p_event_sequence=>510
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16231860721564225)
,p_triggering_element=>'ENERGY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219089431101559738)
,p_event_id=>wwv_flow_imp.id(219089331640559737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("field").widget().interactiveGrid("getViews").grid.view$',
'',
'view$.grid("gotoCell", view$.grid("getActiveRecordId"), "ENERGY_ID");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(240595487299194621)
,p_name=>'DANewPhyPlan'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74011755892034075)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240595568014194622)
,p_event_id=>wwv_flow_imp.id(240595487299194621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P64_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P64_ALERT_TEXT").setValue('''');',
'',
'apex.server.process("ProcessCreatePhysicsPlan",',
'    {',
'        pageItems: [',
'            "P64_RAD_DETAIL_ND_RADIATION_NO",',
'            "P64_RAD_DETAIL_ND_SITE_ID",',
'            "P64_RAD_PHASE_PHASE_NO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P64_SUCCESS_MESSAGE").setValue(obj.message);',
'                apex.region("radphy").refresh();',
'',
'            } else {',
'                apex.item("P64_ALERT_TEXT").setValue(obj.message);',
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
 p_id=>wwv_flow_imp.id(240596042459194627)
,p_name=>'DADisposePlan'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74012174997034075)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240596326986194630)
,p_event_id=>wwv_flow_imp.id(240596042459194627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'<b>Are you sure you want to discard this physics plan?</b>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240596114463194628)
,p_event_id=>wwv_flow_imp.id(240596042459194627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P64_SUCCESS_MESSAGE").setValue('''');',
'apex.item("P64_ALERT_TEXT").setValue('''');',
'',
'apex.server.process("ProcessDisposePhysicsPlan",',
'    {',
'        pageItems: [',
'            "P64_RAD_DETAIL_ND_RADIATION_NO",',
'            "P64_RAD_DETAIL_ND_SITE_ID",',
'            "P64_RAD_PHASE_PHASE_NO",',
'            "P64_PHY_PLAN_ID"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P64_SUCCESS_MESSAGE").setValue(obj.message);',
'                apex.region("radphy").refresh();',
'            } else {',
'                apex.item("P64_ALERT_TEXT").setValue(obj.message);',
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
 p_id=>wwv_flow_imp.id(240595675572194623)
,p_name=>'DASuccessMessage'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_SUCCESS_MESSAGE'
,p_condition_element=>'P64_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240595722468194624)
,p_event_id=>wwv_flow_imp.id(240595675572194623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P64_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P64_SUCCESS_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(240595846774194625)
,p_name=>'AlertMessage'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240595968377194626)
,p_event_id=>wwv_flow_imp.id(240595846774194625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P64_ALERT_TEXT.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P64_ALERT_TEXT'
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
 p_id=>wwv_flow_imp.id(189052948083356930)
,p_name=>'DAErrorMessage1'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ERROR_MESSAGE'
,p_condition_element=>'P64_ERROR_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189053145559356932)
,p_event_id=>wwv_flow_imp.id(189052948083356930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P64_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189053283810356933)
,p_name=>'DAFractionNo'
,p_event_sequence=>570
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16239426832271803)
,p_triggering_element=>'FRACTION_NO'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'FRACTION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189053378255356934)
,p_event_id=>wwv_flow_imp.id(189053283810356933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var view$ = apex.region("specialint").widget().interactiveGrid("getViews").grid.view$',
'',
'view$.grid("gotoCell", view$.grid("getActiveRecordId"), "FRACTION_NO");',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189053438183356935)
,p_name=>'DAFractionNo1'
,p_event_sequence=>580
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16239426832271803)
,p_triggering_element=>'FRACTION_NO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189053590444356936)
,p_event_id=>wwv_flow_imp.id(189053438183356935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189053680637356937)
,p_name=>'EnterKeyPassword'
,p_event_sequence=>590
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189053883738356939)
,p_event_id=>wwv_flow_imp.id(189053680637356937)
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
'  :P64_TXT_ALERT_TEXT := null;',
'  :P64_SUCCESS_MSG    := null;',
'  :P64_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P64_DISP_MRNO,',
'                                          :P64_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P64_ERROR := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P64_VALIDATE'', ''Y'');',
'    :P64_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P64_DISP_MRNO,P64_PASSWORD'
,p_attribute_03=>'P64_SUCCESS_MSG,P64_ERROR,P64_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189053932581356940)
,p_event_id=>wwv_flow_imp.id(189053680637356937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P64_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P64_CHECK_SIGN = ''N'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00139.SIGN_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P64_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_PHASE_NO          => :P64_RAD_PHASE_PHASE_NO,',
'                                                      P_PHY_PLAN_ID       => :P64_PHY_PLAN_ID,',
'                                                      P_SIGN_BY           => :P64_DISP_MRNO,',
'                                                      P_SCHEDULE_SRNO     => NULL,',
'                                                      P_SCHEDULE_EVENT_ID => ''336'',',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00053'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P64_ERROR := L_ALERT_TEXT;',
'          RETURN;',
'        END IF;',
'        :P64_SUCCESS_MSG := ''Physics Plan signed properly'';',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO,P64_PHY_PLAN_ID,P64_DISP_MRNO,P64_VALIDATE,P64_CHECK_SIGN'
,p_attribute_03=>'P64_ERROR,P64_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P64_CHECK_SIGN'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189054052457356941)
,p_event_id=>wwv_flow_imp.id(189053680637356937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       VARCHAR2(1);',
'BEGIN',
'  IF :P64_VALIDATE = ''Y'' THEN',
'    BEGIN',
'      IF :P64_CHECK_SIGN = ''Y'' THEN',
'        BEGIN',
'          -- Finalize Physicist Sign',
'          RADIATION.PKG_S18FRM00139.SIGN_CHECK_PHYSICS_PLAN(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''ORGANIZATION_ID''),',
'                                                      P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''LOCATION_ID''),',
'                                                      P_RADIATION_NO      => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                                      P_SITE_ID           => :P64_RAD_DETAIL_ND_SITE_ID,',
'                                                      P_PHASE_NO          => :P64_RAD_PHASE_PHASE_NO,',
'                                                      P_PHY_PLAN_ID       => :P64_PHY_PLAN_ID,',
'                                                      P_SIGN_BY           => :P64_DISP_MRNO,',
'                                                      P_SCHEDULE_SRNO     => NULL,',
'                                                      P_SCHEDULE_EVENT_ID => NULL,',
'                                                      P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''USER_MRNO''),',
'                                                      P_OBJECT_CODE       => ''S18APX00053'',',
'                                                      P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                         ''TERMINAL''),',
'                                                      P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                      P_STOP              => L_STOP);',
'        END;',
'      ',
'        IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'          :P64_ERROR := L_ALERT_TEXT;',
'          RETURN;',
'        END IF;',
'        :P64_SUCCESS_MSG := ''Physics Plan signed properly'';',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P64_RAD_DETAIL_ND_RADIATION_NO,P64_RAD_DETAIL_ND_SITE_ID,P64_RAD_PHASE_PHASE_NO,P64_PHY_PLAN_ID,P64_DISP_MRNO,P64_VALIDATE,P64_CHECK_SIGN'
,p_attribute_03=>'P64_ERROR,P64_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P64_CHECK_SIGN'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189054110613356942)
,p_event_id=>wwv_flow_imp.id(189053680637356937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radphy'').refresh();',
'apex.item("signbtn").disable();',
'apex.item("save").disable();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178919173276255008)
,p_name=>'DARadPhase'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_RAD_PHASE_PHASE_NO'
,p_condition_element=>'P64_RAD_PHASE_PHASE_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178919252683255009)
,p_event_id=>wwv_flow_imp.id(178919173276255008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''specialint'').widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'apex.region(''specialint'').refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178919402645255011)
,p_name=>'DATreatmentType1'
,p_event_sequence=>610
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15920234679911631)
,p_triggering_element=>'TREATMENT_TYPE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178919580211255012)
,p_event_id=>wwv_flow_imp.id(178919402645255011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178919606621255013)
,p_name=>'DAEnergyID'
,p_event_sequence=>620
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(16231860721564225)
,p_triggering_element=>'ENERGY_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178919719990255014)
,p_event_id=>wwv_flow_imp.id(178919606621255013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(178919819706255015)
,p_name=>'DAQAPlan'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_QA_PLAN_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178919934347255016)
,p_event_id=>wwv_flow_imp.id(178919819706255015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290009341771969544)
,p_name=>'DARefresh1'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(290009202756969543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290009481299969545)
,p_event_id=>wwv_flow_imp.id(290009341771969544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const gridIds = [',
'    ''raddetail'',',
'    ''phase'',',
'    ''accessory'',',
'    ''radphy'',',
'    ''isocenter'',',
'    ''specialint'',',
'    ''field''',
'];',
'',
'function refreshGrids() {',
'    gridIds.forEach(function (gridId) {',
'        apex.region(gridId).refresh();',
'    });',
'}',
'',
'refreshGrids();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(302980420910896813)
,p_name=>'CheckEnableDisable'
,p_event_sequence=>650
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15917594861911604)
,p_triggering_element=>'STATUS_DESC'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'STATUS_DESC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Signed'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302980521773896814)
,p_event_id=>wwv_flow_imp.id(302980420910896813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'FROM_FRACTION_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(302980685809896815)
,p_event_id=>wwv_flow_imp.id(302980420910896813)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'FROM_FRACTION_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15917331916911602)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15421961361014135)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessDMLAccessories'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT           NUMBER := 0;',
'  L_RAD_PHYSICS_TAB RADIATION.PKG_S18FRM00139.RAD_ACCESSORIES_TAB;',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  SELECT :P64_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P64_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'         :SRNO                           SRNO,',
'         --:P64_RAD_PHASE_PHASE_NO         PHASE_NO,',
'         1               PHASE_NO,',
'         :ACCESSORY_ID   ACCESSORY_ID,',
'         :DISP_ACCESSORY DISP_ACCESSORY,',
'         :REMARKS        REMARKS,',
'         :UPDATE_ALLOW   UPDATE_ALLOW',
'    BULK COLLECT',
'    INTO L_RAD_PHYSICS_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      -----------',
'      -- Insert',
'      -----------',
'      RADIATION.PKG_S18FRM00139.INSERT_RAD_ACCESSORIES(L_RAD_PHYSICS_TAB);',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      RADIATION.PKG_S18FRM00139.UPDATE_RAD_ACCESSORIES(L_RAD_PHYSICS_TAB);',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      --Delete ',
'      -----------',
'      RADIATION.PKG_S18FRM00139.DELETE_RAD_ACCESSORIES(L_RAD_PHYSICS_TAB);',
'  END CASE;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'  ',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15917331916911602
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(219086561725559709)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15920234679911631)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessDMLISOCenter'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00139.TAB_ISOCENTER;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  SELECT :P64_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P64_RAD_DETAIL_ND_SITE_ID SITE_ID,',
'         :P64_PHY_PLAN_ID PHY_PLAN_ID,',
'         :P64_RAD_PHASE_PHASE_NO PHASE_NO,',
'         NVL(:ISOCENTER_ID,',
'             RADIATION.PKG_S18FRM00139.GET_ISOCENTER_ID(P_RADIATION_NO => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                                        P_SITE_ID      => :P64_RAD_DETAIL_ND_SITE_ID)) ISOCENTER_ID,',
'         :DESCRIPTION DESCRIPTION,',
'         :DOSE_FRACTION DOSE_FRACTION,',
'         :NO_OF_FRACTION NO_OF_FRACTION,',
'         NVL(:TREATMENT_TYPE_DESC, :TREATMENT_TYPE) TREATMENT_TYPE,',
'         :TREATMENT_TYPE TREATMENT_TYPE_ID',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'      -----------',
'      -- Insert',
'      -----------',
'      RADIATION.PKG_S18FRM00139.INSERT_ISOCENTER(L_BLOCK_DATA);',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      RADIATION.PKG_S18FRM00139.UPDATE_ISOCENTER(L_BLOCK_DATA);',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      --Delete ',
'      -----------',
'      RADIATION.PKG_S18FRM00139.DELETE_ISOCENTER(L_BLOCK_DATA);',
'  END CASE;',
'  ',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>219086561725559709
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(219087719435559721)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16239426832271803)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessDMLSpecillnstruction'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00139.RADIATION_INSTRUCTION_TAB;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  SELECT NVL(:RADIATION_NO, :P64_RAD_DETAIL_ND_RADIATION_NO) RADIATION_NO,',
'         NVL(:SITE_ID, :P64_RAD_DETAIL_ND_SITE_ID) SITE_ID,',
'         NVL(:PHASE_NO, :P64_RAD_PHASE_PHASE_NO) PHASE_NO,',
'         :FRACTION_NO FRACTION_NO,',
'         :SPECIAL_INSTRUCTION SPECIAL_INSTRUCTION,',
'         ''N'' PORT_FILM_REQUIRED,',
'         NULL SPECIAL_MESSAGE',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'      -----------',
'      -- Insert',
'      -----------',
'      RADIATION.PKG_S18FRM00139.INSERT_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      RADIATION.PKG_S18FRM00139.UPDATE_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      --Delete ',
'      -----------',
'      RADIATION.PKG_S18FRM00139.DELETE_RAD_INSTRUCTIONS(L_BLOCK_DATA);',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>219087719435559721
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(219088198040559725)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16231860721564225)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessDMLField'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00139.RAD_FIELDS_TAB;',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_FIELD_NO RADIATION.RAD_PHYSICS_FIELDS.FIELD_NO%TYPE;',
'BEGIN',
'HIS.MESSAGE_ENTRY_CATEGORY(P_MESSAGE =>  :APEX$ROW_STATUS || :ISOCENTER_ID || :P64_ND_ISOCENTER_ID, P_CATEGORY => ''RADPHY'');',
'  IF :APEX$ROW_STATUS = ''C'' THEN',
'    BEGIN',
'      SELECT NVL(MAX(RPF.FIELD_NO), 0) + 1',
'        INTO L_FIELD_NO',
'        FROM RADIATION.RAD_PHYSICS_FIELDS RPF',
'       WHERE RPF.RADIATION_NO =',
'             NVL(:RADIATION_NO, :P64_RAD_DETAIL_ND_RADIATION_NO)',
'         AND RPF.SITE_ID = NVL(:SITE_ID, :P64_RAD_DETAIL_ND_SITE_ID)',
'         AND RPF.PHY_PLAN_ID = NVL(:PHY_PLAN_ID, :P64_PHY_PLAN_ID)',
'         AND RPF.ISOCENTER_ID = NVL(:ISOCENTER_ID, :P64_ND_ISOCENTER_ID);',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'',
'  SELECT NVL(:RADIATION_NO, :P64_RAD_DETAIL_ND_RADIATION_NO) AS RADIATION_NO,',
'       NVL(:SITE_ID, :P64_RAD_DETAIL_ND_SITE_ID) AS SITE_ID,',
'       NVL(:PHY_PLAN_ID, :P64_PHY_PLAN_ID) AS PHY_PLAN_ID,',
'       NVL(:ISOCENTER_ID, :P64_ND_ISOCENTER_ID) AS ISOCENTER_ID,',
'       NVL(:FIELD_NO, L_FIELD_NO) FIELD_NO,',
'       :DESCRIPTION AS DESCRIPTION,',
'       :ENERGY_ID AS ENERGY_ID,',
'       NULL AS ENERGY_DESC,',
'       :GANTARY_ANGLE AS GANTARY_ANGLE,',
'       :SSD AS SSD,',
'       :M_U AS M_U',
'  BULK COLLECT INTO L_BLOCK_DATA',
'  FROM DUAL;',
'',
'',
'  CASE :APEX$ROW_STATUS',
'    WHEN ''C'' THEN',
'    ',
'      -----------',
'      -- Insert',
'      -----------',
'      RADIATION.PKG_S18FRM00139.INSERT_RAD_FIELDS(L_BLOCK_DATA);',
'    ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'      RADIATION.PKG_S18FRM00139.UPDATE_RAD_FIELDS(L_BLOCK_DATA);',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      --Delete ',
'      -----------',
'      RADIATION.PKG_S18FRM00139.DELETE_RAD_FIELDS(L_BLOCK_DATA);',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'    RAISE;',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>219088198040559725
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16018536214183210)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15917594861911604)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessDMLPhysicsPlan'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT           NUMBER := 0;',
'  L_RAD_PHYSICS_TAB RADIATION.PKG_S18FRM00139.RAD_PHYSICS_TAB;',
'BEGIN',
'',
'HIS.MESSAGE_ENTRY_CATEGORY(P_CATEGORY => ''RADQA'' , P_MESSAGE => ''A'');',
'',
'  SELECT :P64_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P64_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'         :PHY_PLAN_ID                    PHY_PLAN_ID,',
'         NULL                            SIGN_BY,',
'         NULL                            SIGN_BY_NAME,',
'         NULL                            SIGN_DATE,',
'         NULL                            STATUS_ID,',
'         NULL                            STATUS_DESC,',
'         :FROM_FRACTION_ID               FROM_FRACTION_ID,',
'         NULL                            TO_FRACTION_ID,',
'         NULL                            PLAN_ID,',
'         NULL                            INSTRUCTIONS,',
'         :P64_REMARKS                    REMARKS,',
'         :P64_ND_MACHINE_ID              MACHINE_ID,',
'         NULL                            MACHINE_DESC,',
'         NULL                            CHECKED_BY,',
'         NULL                            CHECKED_DATE',
'  ',
'    BULK COLLECT',
'    INTO L_RAD_PHYSICS_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''U'' THEN',
'      -----------',
'      -- Update',
'      -----------',
'    ',
'      RADIATION.PKG_S18FRM00139.UPDATE_RAD_PHYSICS(L_RAD_PHYSICS_TAB);',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>16018536214183210
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(74037544842034108)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadPhysicsPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P64_RADIATION_NO,',
'         :P64_RADIATION_DATE,',
'         :P64_MRNO,',
'         :P64_PATIENT_NAME,',
'         :P64_DISP_AGE,',
'         :P64_DISP_GENDER,',
'         :P64_DOCTOR_ID,',
'         :P64_DISP_DOCTOR,',
'         :P64_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P64_MRNO,',
'                                                       P_RADIOTHERAPY_TYPE => ''T'')',
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
,p_process_when_type=>'NEVER'
,p_internal_uid=>74037544842034108
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(240595364668194620)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreatePhysicsPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00139.GEN_PHYSICS_PLAN(P_ORGANIZATION_ID   =>  SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P64_RAD_DETAIL_ND_SITE_ID,',
'                                             P_PHASE_NO          => :P64_RAD_PHASE_PHASE_NO,',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                             P_OBJECT_CODE       => ''S18APX00053'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
' ',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
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
,p_internal_uid=>240595364668194620
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
 p_id=>wwv_flow_imp.id(240596246191194629)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposePhysicsPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'',
'BEGIN',
'',
'  RADIATION.PKG_S18FRM00139.DISPOSE_PHYSICS_PLAN(P_ORGANIZATION_ID   =>  SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P64_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P64_RAD_DETAIL_ND_SITE_ID,',
'                                             P_PHASE_NO          => :P64_RAD_PHASE_PHASE_NO,',
'                                             P_PHY_PLAN_ID       => :P64_PHY_PLAN_ID,',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                             P_OBJECT_CODE       => ''S18APX00053'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
' ',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Physics Plan disposed successfully'');',
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
,p_internal_uid=>240596246191194629
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62640569633912448)
,p_process_sequence=>100
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDMLPhysicsPlanDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT               NUMBER := 0;',
'  L_RAD_PHYSICS_DTL_TAB RADIATION.PKG_S18FRM00139.RAD_PHYSICS_DTL_TAB;',
'  L_ALERT_TEXT          VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  BEGIN',
'    SELECT :P64_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           :P64_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'           :P64_PHY_PLAN_ID                PHY_PLAN_ID,',
'           :P64_RAD_PHASE_PHASE_NO         PHASE_NO,',
'           :P64_QA_PLAN_ID                 QA_PLAN_ID,',
'           :P64_PLAN_DESC                  PLAN_DESC',
'    ',
'      BULK COLLECT',
'      INTO L_RAD_PHYSICS_DTL_TAB',
'      FROM DUAL;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      NULL;',
'    WHEN OTHERS THEN',
'      L_ALERT_TEXT := SQLERRM;',
'      RAISE EX_CUSTOM;',
'  END;',
'',
'  BEGIN',
'    UPDATE RADIATION.RAD_PHYSICS',
'       SET MACHINE_ID = :P64_ND_MACHINE_ID, REMARKS = :P64_REMARKS',
'     WHERE RADIATION_NO = :P64_RAD_DETAIL_ND_RADIATION_NO',
'       AND SITE_ID = :P64_RAD_DETAIL_ND_SITE_ID',
'       AND PLAN_ID = :P64_PLAN_ID',
'       AND PHY_PLAN_ID = :P64_PHY_PLAN_ID;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      NULL;',
'    WHEN OTHERS THEN',
'      L_ALERT_TEXT := SQLERRM;',
'      RAISE EX_CUSTOM;',
'  END;',
'',
'  BEGIN',
'    RADIATION.PKG_S18FRM00139.UPDATE_RAD_PHY_DTL(L_RAD_PHYSICS_DTL_TAB);',
'  END;',
'',
'  APEX_JSON.OPEN_OBJECT;',
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
,p_internal_uid=>62640569633912448
);
wwv_flow_imp.component_end;
end;
/

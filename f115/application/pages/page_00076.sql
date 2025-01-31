prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_name=>'RAD_CHECKLIST'
,p_alias=>'RAD-CHECKLIST'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_CHECKLIST'
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
'#radperformtype .a-GV-status {',
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
'',
'',
'#report_image_report img{',
'	height: 190px;',
'    width:  160px;',
'',
'}',
'',
'',
'#radchecklisttype .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radcheckfraction .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#objcheck .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#objtext .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'',
'',
'',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'OWAIS'
,p_last_upd_yyyymmddhh24miss=>'20240212162531'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24102591456176726)
,p_plug_name=>'<b><p style="color:#8B0000">Objectives - Checkbox</p></b>'
,p_region_name=>'objcheck'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>6
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.RADIATION_NO,',
'       C.SITE_ID,',
'       C.SRNO,',
'       C.CHECKLIST_ID,',
'       CD.OBJECTIVE_ID,',
'       CD.OBJECTIVE_VALUE,',
'       CD.OBJECTIVE_DESC',
'  FROM RADIATION.RAD_CHECKLIST            C,',
'       RADIATION.RAD_CHECKLIST_DTL        CD,',
'       RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
' WHERE C.RADIATION_NO = :P76_RAD_DETAIL_ND_RADIATION_NO',
'   AND C.SITE_ID = :P76_RAD_DETAIL_ND_SITE_ID',
'   AND C.SRNO = :P76_SRNO',
'   AND CD.RADIATION_NO = C.RADIATION_NO',
'   AND CD.SITE_ID = C.SITE_ID',
'   AND CD.SRNO = C.SRNO',
'   and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'   AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'   AND CO.OBJECTIVE_TYPE = ''C'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P76_RAD_DETAIL_ND_RADIATION_NO,P76_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<b><p style="color:#8B0000">Objectives - Checkbox</p></b>'
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
 p_id=>wwv_flow_imp.id(24102754927176728)
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
 p_id=>wwv_flow_imp.id(24102814452176729)
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
 p_id=>wwv_flow_imp.id(24102990362176730)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24103000538176731)
,p_name=>'CHECKLIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKLIST_ID'
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
 p_id=>wwv_flow_imp.id(24103163565176732)
,p_name=>'OBJECTIVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECTIVE_ID'
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
 p_id=>wwv_flow_imp.id(24103215227176733)
,p_name=>'OBJECTIVE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECTIVE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(24103340823176734)
,p_name=>'OBJECTIVE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECTIVE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(24102639946176727)
,p_internal_uid=>24102639946176727
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>175
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(24982808222763784)
,p_interactive_grid_id=>wwv_flow_imp.id(24102639946176727)
,p_static_id=>'249829'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24983034543763784)
,p_report_id=>wwv_flow_imp.id(24982808222763784)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24983573702763785)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(24102754927176728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24984474894763788)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(24102814452176729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24985378563763790)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(24102990362176730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24986233514763793)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(24103000538176731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24987151631763795)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(24103163565176732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24988065463763797)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(24103215227176733)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103.20299999999997
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24988962221763799)
,p_view_id=>wwv_flow_imp.id(24983034543763784)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(24103340823176734)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>1274.7930000000001
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24103586578176736)
,p_plug_name=>'<b><p style="color:#8B0000">Objectives - Text </p></b>'
,p_region_name=>'objtext'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>7
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.RADIATION_NO,',
'       C.SITE_ID,',
'       C.SRNO,',
'       C.CHECKLIST_ID,',
'       CD.OBJECTIVE_ID,',
'       CD.OBJECTIVE_VALUE,',
'       CD.OBJECTIVE_DESC',
'  FROM RADIATION.RAD_CHECKLIST            C,',
'       RADIATION.RAD_CHECKLIST_DTL        CD,',
'       RADIATION.DEF_CHECKLIST_OBJECTIVES CO',
' WHERE C.RADIATION_NO = :P76_RAD_DETAIL_ND_RADIATION_NO',
'   AND C.SITE_ID = :P76_RAD_DETAIL_ND_SITE_ID',
'   AND C.SRNO = :P76_SRNO',
'   AND CD.RADIATION_NO = C.RADIATION_NO',
'   AND CD.SITE_ID = C.SITE_ID',
'   AND CD.SRNO = C.SRNO',
'   and CO.CHECKLIST_ID = C.CHECKLIST_ID',
'   AND CO.OBJECTIVE_ID = CD.OBJECTIVE_ID',
'   AND CO.OBJECTIVE_TYPE = ''T'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P76_RAD_DETAIL_ND_RADIATION_NO,P76_RAD_DETAIL_ND_SITE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'<b><p style="color:#8B0000">Objectives - Text </p></b>'
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
 p_id=>wwv_flow_imp.id(24103716106176738)
,p_name=>'OBJECTIVE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECTIVE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(24103859903176739)
,p_name=>'OBJECTIVE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECTIVE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(24103911175176740)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(24104038881176741)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(24104179998176742)
,p_name=>'SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24104252121176743)
,p_name=>'CHECKLIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKLIST_ID'
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
 p_id=>wwv_flow_imp.id(24104317169176744)
,p_name=>'OBJECTIVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECTIVE_ID'
,p_data_type=>'NUMBER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(24103630570176737)
,p_internal_uid=>24103630570176737
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>175
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(25032316888846028)
,p_interactive_grid_id=>wwv_flow_imp.id(24103630570176737)
,p_static_id=>'250324'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(25032555450846029)
,p_report_id=>wwv_flow_imp.id(25032316888846028)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25033089295846030)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(24103716106176738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25033972312846033)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(24103859903176739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>694.01540625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25034871080846035)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(24103911175176740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25035790698846037)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(24104038881176741)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25036627894846039)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(24104179998176742)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25037580277846041)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(24104252121176743)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25038416880846043)
,p_view_id=>wwv_flow_imp.id(25032555450846029)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(24104317169176744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24104616426176747)
,p_plug_name=>'Region Contains Page Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>8
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157299837675458814)
,p_plug_name=>'Checklist Type'
,p_region_name=>'radchecklisttype'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT M.CHECKLIST_ID, M.DESCRIPTION, M.CHECKLIST_TYPE',
'        FROM RADIATION.DEF_CHECKLIST M',
'       WHERE M.PERFORMANCE_TYPE_ID = :P76_PERFORMANCE_TYPE_ID',
'         AND (:P76_PARAM_CHECKLIST_TYPE IS NULL OR',
'             M.CHECKLIST_TYPE = :P76_PARAM_CHECKLIST_TYPE);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P76_PERFORMANCE_TYPE_ID,P76_CHECKLIST_TYPE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Checklist Type'
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
 p_id=>wwv_flow_imp.id(157300237565458818)
,p_name=>'CHECKLIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKLIST_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>3
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157300382891458819)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Checklist Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157300440729458820)
,p_name=>'CHECKLIST_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKLIST_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>2
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(157300004290458816)
,p_internal_uid=>157300004290458816
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
,p_fixed_header_max_height=>150
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(158806351466723074)
,p_interactive_grid_id=>wwv_flow_imp.id(157300004290458816)
,p_static_id=>'1588064'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(158806571834723075)
,p_report_id=>wwv_flow_imp.id(158806351466723074)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158807408642723080)
,p_view_id=>wwv_flow_imp.id(158806571834723075)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(157300237565458818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158808375747723083)
,p_view_id=>wwv_flow_imp.id(158806571834723075)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(157300382891458819)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158809273717723086)
,p_view_id=>wwv_flow_imp.id(158806571834723075)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(157300440729458820)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>545.01928125
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157302390846458839)
,p_plug_name=>'Fraction '
,p_region_name=>'radcheckfraction'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT C.RADIATION_NO,',
'             C.SITE_ID,',
'             C.SRNO,',
'             DC.PERFORMANCE_TYPE_ID,',
'             C.CHECKLIST_ID,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(C.SIGN_BY_1) SIGN_BY_NAME_1,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(C.SIGN_BY_2) SIGN_BY_NAME_2,',
'             C.SIGN_DATE SIGN_DATE,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(C.STATUS_ID) STATUS_DESC,',
'             C.STATUS_ID,',
'             CASE',
'               WHEN S.FRACTION_ID IS NULL THEN',
'                ''No Fraction''',
'               ELSE',
'                ''Fraction ID: '' || S.FRACTION_ID',
'             END FRACTION_ID,',
'             DC.DUAL_SIGN,',
'             C.SCHEDULE_SRNO',
'        FROM RADIATION.RAD_CHECKLIST C,',
'             RADIATION.DEF_CHECKLIST DC,',
'             RADIATION.SCHEDULE      S',
'       WHERE C.SCHEDULE_SRNO = NVL(:P76_SCHEDULE_SRNO, C.SCHEDULE_SRNO)',
'         AND C.SCHEDULE_SRNO = S.SR_NO(+)',
'         AND C.CHECKLIST_ID = DC.CHECKLIST_ID',
'         AND C.RADIATION_NO = :P76_RADIATION_NO',
'         AND C.SITE_ID = :P76_SITE_ID',
'         AND DC.CHECKLIST_TYPE = :P76_CHECKLIST_TYPE',
'         AND DC.PERFORMANCE_TYPE_ID = :P76_PERFORMANCE_TYPE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P76_ND_SCHEDULE_SRNO,P76_RADIATION_NO,P76_SITE_ID,P76_CHECKLIST_TYPE,P76_PERFORMANCE_TYPE_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Fraction '
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
 p_id=>wwv_flow_imp.id(157302568869458841)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157302668880458842)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157302790533458843)
,p_name=>'SRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRNO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157302808977458844)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157302942304458845)
,p_name=>'CHECKLIST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECKLIST_ID'
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
 p_id=>wwv_flow_imp.id(157303002641458846)
,p_name=>'SIGN_BY_NAME_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME_1'
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
 p_id=>wwv_flow_imp.id(157303115696458847)
,p_name=>'SIGN_BY_NAME_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_NAME_2'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(157303246758458848)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(157303305164458849)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
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
 p_id=>wwv_flow_imp.id(157303480776458850)
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
 p_id=>wwv_flow_imp.id(159077742725816201)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fraction '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>53
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
 p_id=>wwv_flow_imp.id(159077880599816202)
,p_name=>'DUAL_SIGN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUAL_SIGN'
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
 p_id=>wwv_flow_imp.id(159077931306816203)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(157302498531458840)
,p_internal_uid=>157302498531458840
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
,p_fixed_header_max_height=>435
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(159096276053860718)
,p_interactive_grid_id=>wwv_flow_imp.id(157302498531458840)
,p_static_id=>'1590963'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(159096427269860719)
,p_report_id=>wwv_flow_imp.id(159096276053860718)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159096975378860724)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(157302568869458841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159097864333860729)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(157302668880458842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159098775082860737)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(157302790533458843)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159099652238860740)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(157302808977458844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159100537116860742)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(157302942304458845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159101317956860744)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(157303002641458846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159102248672860747)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(157303115696458847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159103173265860749)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(157303246758458848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159104068123860753)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(157303305164458849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159104995447860756)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(157303480776458850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159105878513860758)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(159077742725816201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>338.01928125
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159107056817860761)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(159077880599816202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(159107928035860763)
,p_view_id=>wwv_flow_imp.id(159096427269860719)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(159077931306816203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(266483375048995313)
,p_plug_name=>'Sign '
,p_region_name=>'signradchecklist'
,p_region_css_classes=>'js-dialog-size1200x1000'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>65
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65403473376873012)
,p_plug_name=>'First Technician '
,p_parent_plug_id=>wwv_flow_imp.id(266483375048995313)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65403578926873013)
,p_plug_name=>'Second Technician '
,p_parent_plug_id=>wwv_flow_imp.id(266483375048995313)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268741962083569628)
,p_plug_name=>'Control1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>45
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(270498916905372238)
,p_plug_name=>'Control2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>55
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(301291593456792037)
,p_plug_name=>'Radiation Checklist'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>11
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT M.RADIATION_NO,',
'            M.RADIATION_DATE,',
'            M.MRNO,',
'            RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'            RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'            HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'            M.DOCTOR_ID,',
'            RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'            RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'            M.ROWID,',
'            M.ANAESTHESIA,',
'            M.REMARKS,',
'            HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => M.DOCTOR_ID) DOCTOR_MRNO,',
'            RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'            RT.DESCRIPTION RADIOTHERAPHY_TYPE,',
'            RD.SITE_ID',
'       FROM RADIATION.RADIATION_MASTER  M,',
'            RADIATION.RADIATION_DETAIL  RD,',
'            RADIATION.RADIOTHERAPY_TYPE RT',
'      WHERE M.RADIATION_NO = RD.RADIATION_NO',
'        AND M.RADIOTHERAPY_TYPE = RT.TREATMENT_TYPE',
'        AND M.MRNO = :P76_MRNO',
'        AND M.STATUS_REQUEST = ''015''',
'        AND (:P76_SCHEDULE_SRNO IS NULL OR',
'            (RD.RADIATION_NO, RD.SITE_ID) IN',
'            (SELECT S.RADIATION_NO, S.SITE_ID',
'                FROM RADIATION.SCHEDULE S',
'               WHERE S.SR_NO = :P76_SCHEDULE_SRNO))'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P76_MRNO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(311100756321173506)
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
' WHERE MRNO = :P76_MRNO;',
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
,p_ajax_items_to_submit=>'P76_MRNO'
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
 p_id=>wwv_flow_imp.id(157364329620526044)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(157364608025526045)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(157365050994526045)
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
 p_id=>wwv_flow_imp.id(311101156081173510)
,p_plug_name=>'Performance Type'
,p_region_name=>'radperformtype'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>3
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RM.MRNO,',
'         DPT.PERFORMANCE_TYPE_ID,',
'         NVL(DPT.SHORT_DESC, DPT.DESCIPTION) PERFORMANCE_TYPE',
'    FROM RADIATION.DEF_PERFORMANCE_TYPE DPT, RADIATION.RADIATION_MASTER RM',
'   WHERE RM.RADIATION_NO = :P76_RADIATION_NO',
'     AND (:P76_PARAM_PERFORMANCE_TYPE_ID IS NULL OR',
'         DPT.PERFORMANCE_TYPE_ID = :P76_PARAM_PERFORMANCE_TYPE_ID)',
'     AND DPT.PERFORMANCE_TYPE_ID IN',
'         (SELECT S.PERFORMANCE_TYPE_ID',
'            FROM RADIATION.PLANNING P, RADIATION.DEF_SCHEDULE_WORKFLOW S',
'           WHERE P.PLANNING_ID = S.PLANNING_ID',
'             AND P.RADIOTHERAPY_TYPE = RM.RADIOTHERAPY_TYPE)',
'     AND (:P76_SCHEDULE_SRNO IS NULL OR EXISTS',
'          (SELECT 1',
'             FROM RADIATION.SCHEDULE S',
'            WHERE S.SR_NO = :P76_SCHEDULE_SRNO',
'              AND RADIATION.PKG_RADIATION.GET_PERFORMANCE_TYPE_ID(P_MACHINE_ID => S.MACHINE_ID) =',
'                  DPT.PERFORMANCE_TYPE_ID));',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P76_RADIATION_NO,P76_PARAM_PERFORMANCE_TYPE_ID,P76_ND_SCHEDULE_SRNO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Performance Type'
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
 p_id=>wwv_flow_imp.id(157299360754458809)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157299426065458810)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(157299788186458813)
,p_name=>'PERFORMANCE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Performance Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(311101285719173511)
,p_internal_uid=>311101285719173511
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
,p_fixed_header_max_height=>200
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(311705887207331861)
,p_interactive_grid_id=>wwv_flow_imp.id(311101285719173511)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(311706072389331863)
,p_report_id=>wwv_flow_imp.id(311705887207331861)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158710312718513350)
,p_view_id=>wwv_flow_imp.id(311706072389331863)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(157299360754458809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158711244188513354)
,p_view_id=>wwv_flow_imp.id(311706072389331863)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(157299426065458810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(158743710662568649)
,p_view_id=>wwv_flow_imp.id(311706072389331863)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(157299788186458813)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>525.965
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25106131788296204)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_imp.id(268741962083569628)
,p_button_name=>'Sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157350301051526016)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_imp.id(268741962083569628)
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
 p_id=>wwv_flow_imp.id(157350785575526017)
,p_button_sequence=>4
,p_button_plug_id=>wwv_flow_imp.id(268741962083569628)
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
 p_id=>wwv_flow_imp.id(157351565103526017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(270498916905372238)
,p_button_name=>'NewForm'
,p_button_static_id=>'NewFollowUp'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Form'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25227435644707338)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(65403578926873013)
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
 p_id=>wwv_flow_imp.id(25223693007707336)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_button_name=>'SignHDRCT'
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
 p_id=>wwv_flow_imp.id(24101807206176719)
,p_name=>'P76_DISP_SITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>76
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
,p_source=>'DISP_SITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(24101924232176720)
,p_name=>'P76_RADIOTHERAPHY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_prompt=>'<b><p style="color:#00008B">Radiotherapy Type:</p></b>'
,p_source=>'RADIOTHERAPHY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
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
 p_id=>wwv_flow_imp.id(24104750715176748)
,p_name=>'P76_SIGN_BY_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24104616426176747)
,p_prompt=>'<b><p style="color:#00008B">First Sign:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24104882595176749)
,p_name=>'P76_SIGN_BY_NAME_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24104616426176747)
,p_prompt=>'<b><p style="color:#00008B">Second Sign:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(24104936761176750)
,p_name=>'P76_SIGN_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24104616426176747)
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(25105851547296201)
,p_name=>'P76_ND_SCHEDULE_SRNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24104616426176747)
,p_prompt=>'<b><p style="color:#00008B">Schedule SRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(25105972703296202)
,p_name=>'P76_SRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24104616426176747)
,p_prompt=>'<b><p style="color:#00008B">SRNO:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(25106028001296203)
,p_name=>'P76_STATUS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(24104616426176747)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(25106217648296205)
,p_name=>'P76_PARAM_CHECKLIST_TYPE'
,p_item_sequence=>255
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65415176324873027)
,p_name=>'P76_PATIENT_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
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
 p_id=>wwv_flow_imp.id(65415246108873028)
,p_name=>'P76_PATIENT_MRNO_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
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
 p_id=>wwv_flow_imp.id(65415353658873029)
,p_name=>'P76_NAME_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
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
 p_id=>wwv_flow_imp.id(65415454775873030)
,p_name=>'P76_PASSWORD_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
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
 p_id=>wwv_flow_imp.id(65415588178873031)
,p_name=>'P76_DISP_MRNO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65415718009873032)
,p_name=>'P76_USER_MRNO_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65415796730873033)
,p_name=>'P76_LOGIN_DATE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65415851778873034)
,p_name=>'P76_LOCATION_ID_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65416020493873035)
,p_name=>'P76_LOGIN_MESSAGE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65416081344873036)
,p_name=>'P76_VALIDATE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65403578926873013)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157299225931458808)
,p_name=>'P76_PARAM_PERFORMANCE_TYPE_ID'
,p_item_sequence=>225
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157299966947458815)
,p_name=>'P76_CHECKLIST_TYPE'
,p_item_sequence=>235
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157300162804458817)
,p_name=>'P76_PERFORMANCE_TYPE_ID'
,p_item_sequence=>245
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157302253942458838)
,p_name=>'P76_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>154
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181512763536027348)
,p_name=>'P76_DOCTOR_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>144
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_source=>'DOCTOR_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181540028548027385)
,p_name=>'P76_ALERT'
,p_item_sequence=>195
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181540166711027386)
,p_name=>'P76_SUCCESS_MESSAGE'
,p_item_sequence=>205
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181541172163027396)
,p_name=>'P76_SIGN_FLAG'
,p_item_sequence=>215
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(203714574042147979)
,p_name=>'P76_RAD_DETAIL_DML_STATUS'
,p_item_sequence=>185
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225042192122807343)
,p_name=>'P76_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>124
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225042309973807344)
,p_name=>'P76_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>134
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225540789847504918)
,p_name=>'P76_SCHEDULE_SRNO'
,p_item_sequence=>165
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(225806586255343629)
,p_name=>'P76_SCHEDULE_EVENT_ID'
,p_item_sequence=>175
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263383109941185985)
,p_name=>'P76_PARAM_RADIATION_NO'
,p_item_sequence=>95
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263384086321185995)
,p_name=>'P76_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>155
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266498215181995402)
,p_name=>'P76_TXT_ALERT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(266483375048995313)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266498322865995403)
,p_name=>'P76_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(266483375048995313)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266500189493995393)
,p_name=>'P76_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
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
 p_id=>wwv_flow_imp.id(266500217704995394)
,p_name=>'P76_PATIENT_MRNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
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
 p_id=>wwv_flow_imp.id(266500310410995395)
,p_name=>'P76_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
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
 p_id=>wwv_flow_imp.id(266500467099995396)
,p_name=>'P76_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
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
 p_id=>wwv_flow_imp.id(266500590498995397)
,p_name=>'P76_DISP_MRNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266500673915995398)
,p_name=>'P76_USER_MRNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266500713828995399)
,p_name=>'P76_LOGIN_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266500808026995400)
,p_name=>'P76_LOCATION_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266500977596995401)
,p_name=>'P76_LOGIN_MESSAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266501070769995402)
,p_name=>'P76_VALIDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(65403473376873012)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269068083107570084)
,p_name=>'P76_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>115
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269068157330570085)
,p_name=>'P76_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>125
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269069505967570098)
,p_name=>'P76_SIGN_STATUS'
,p_item_sequence=>135
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(270221716830799768)
,p_name=>'P76_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(266483375048995313)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(271335741764134898)
,p_name=>'P76_PARAM_SR_NO'
,p_item_sequence=>85
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(273857509500880155)
,p_name=>'P76_PARAM_MRNO'
,p_item_sequence=>105
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301437455390792317)
,p_name=>'P76_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>64
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(301437551976792318)
,p_name=>'P76_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>74
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(311244999578173769)
,p_name=>'P76_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311245112665173770)
,p_name=>'P76_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311245232828173771)
,p_name=>'P76_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311245312800173772)
,p_name=>'P76_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311245352871173773)
,p_name=>'P76_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>84
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(311245510633173774)
,p_name=>'P76_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311245648708173775)
,p_name=>'P76_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>77
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_source=>'DISP_INTENT'
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
 p_id=>wwv_flow_imp.id(311245867376173778)
,p_name=>'P76_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>114
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(311246036968173779)
,p_name=>'P76_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311246095339173780)
,p_name=>'P76_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311246162582173781)
,p_name=>'P76_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>34
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311246285749173782)
,p_name=>'P76_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>44
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311246403279173783)
,p_name=>'P76_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(301291593456792037)
,p_item_source_plug_id=>wwv_flow_imp.id(301291593456792037)
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
 p_id=>wwv_flow_imp.id(311427722384173970)
,p_name=>'P76_PARAM_SITE_ID'
,p_item_sequence=>65
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(313787428608157187)
,p_name=>'P76_ALERT_TEXT'
,p_item_sequence=>145
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157392836216526097)
,p_name=>'DAPerformanceType'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(311101156081173510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157393323950526098)
,p_event_id=>wwv_flow_imp.id(157392836216526097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P76_PERFORMANCE_TYPE_ID'', _.radperformtype.PERFORMANCE_TYPE_ID);',
'apex.region(''radchecklisttype'').refresh();'))
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
 p_id=>wwv_flow_imp.id(157396148710526100)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(157350785575526017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157396667487526101)
,p_event_id=>wwv_flow_imp.id(157396148710526100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157399487763526104)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157399942088526105)
,p_event_id=>wwv_flow_imp.id(157399487763526104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P64_MRNO IS NOT NULL THEN',
'  ',
'    :P76_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P76_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P64_MRNO);',
'      :P76_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P64_MRNO);',
'      :P76_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P64_MRNO);',
'      :P76_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P64_MRNO);',
'      :P76_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P64_MRNO);',
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
,p_attribute_02=>'P76_SERVICE_NO,P76_SERVICE_STATUS,P76_RANK,P76_FORMATION,P76_UNIT'
,p_attribute_03=>'P76_SYSTEM_CONSTANT_ID_428'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157400434627526105)
,p_event_id=>wwv_flow_imp.id(157399487763526104)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P76_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P76_SERVICE_NO").show();',
'    apex.item("P76_SERVICE_STATUS").show();',
'    apex.item("P76_RANK").show();',
'    apex.item("P76_FORMATION").show();',
'    apex.item("P76_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P76_SERVICE_NO").hide();',
'    apex.item("P76_SERVICE_STATUS").hide();',
'    apex.item("P76_RANK").hide();',
'    apex.item("P76_FORMATION").hide();',
'    apex.item("P76_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157400855374526105)
,p_name=>'DASuccessMessage'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_SUCCESS_MSG'
,p_condition_element=>'P76_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157401324568526106)
,p_event_id=>wwv_flow_imp.id(157400855374526105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P76_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157401798308526106)
,p_name=>'DAError'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_ERROR'
,p_condition_element=>'P76_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157402262210526106)
,p_event_id=>wwv_flow_imp.id(157401798308526106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P76_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157402632673526106)
,p_name=>'EnableDisableDA'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157403153204526107)
,p_event_id=>wwv_flow_imp.id(157402632673526106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P76_SIGN_STATUS") === "015") || ($v("P76_SIGN_STATUS") === "248")) {',
'    apex.item("save").disable();',
'    apex.item("SignConsultant").disable();',
'    apex.item("SignPhysicist").disable();',
'    apex.item("savespecialinstr").disable();',
'    apex.item("exitspecialinstr").disable();',
'    apex.item("P76_DOSE_TO_OAR").disable();',
'    apex.item("P76_PTV_COVERAGE").disable();',
'    apex.item("P76_PLAN_REMARKS").disable();',
'    apex.item("P76_PATH_REVIEWED").disable();',
'    apex.item("P76_RAD_REVIEWED").disable();',
'    apex.item("P76_TRT_DECISION").disable();',
'    apex.item("P76_IMPLANT_ADEQUACY").disable();',
'',
'}',
'else {',
'    apex.item("save").enable();',
'    apex.item("SignConsultant").enable();',
'    apex.item("SignPhysicist").enable();',
'    apex.item("savespecialinstr").enable();',
'    apex.item("exitspecialinstr").enable();',
'    apex.item("P76_DOSE_TO_OAR").enable();',
'    apex.item("P76_PTV_COVERAGE").enable();',
'    apex.item("P76_PLAN_REMARKS").enable();',
'    apex.item("P76_PATH_REVIEWED").enable();',
'    apex.item("P76_RAD_REVIEWED").enable();',
'    apex.item("P76_TRT_DECISION").enable();',
'    apex.item("P76_IMPLANT_ADEQUACY").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157403568928526108)
,p_name=>'SetMRNO'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157404004681526108)
,p_event_id=>wwv_flow_imp.id(157403568928526108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_NAME,P76_PASSWORD,P76_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157404512521526109)
,p_event_id=>wwv_flow_imp.id(157403568928526108)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P76_PATIENT_TYPE IS NOT NULL AND :P76_PATIENT_MRNO IS NOT NULL THEN',
'    :P76_DISP_MRNO := :P76_PATIENT_TYPE || LPAD(:P76_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P76_PATIENT_TYPE,P76_PATIENT_MRNO'
,p_attribute_03=>'P76_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157405050022526109)
,p_event_id=>wwv_flow_imp.id(157403568928526108)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P76_ERROR := NULL;',
'  IF :P76_PATIENT_MRNO IS NOT NULL THEN',
'    :P76_DISP_MRNO := :P76_PATIENT_TYPE || LPAD(:P76_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P76_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P76_ERROR        := ''This is not an active employee.'';',
'      :P76_PATIENT_MRNO := NULL;',
'      :P76_DISP_MRNO    := NULL;',
'      :P76_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P76_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P76_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P76_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P76_PATIENT_MRNO,P76_PATIENT_TYPE'
,p_attribute_03=>'P76_DISP_MRNO,P76_ERROR,P76_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157405526812526109)
,p_event_id=>wwv_flow_imp.id(157403568928526108)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P76_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P76_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157406001079526109)
,p_event_id=>wwv_flow_imp.id(157403568928526108)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P76_DISP_MRNO);'
,p_attribute_02=>'P76_DISP_MRNO'
,p_attribute_03=>'P76_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157406550484526109)
,p_event_id=>wwv_flow_imp.id(157403568928526108)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_PASSWORD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157408878762526111)
,p_name=>'DATXTAlertText'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_TXT_ALERT_TEXT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157409358225526111)
,p_event_id=>wwv_flow_imp.id(157408878762526111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P76_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157416879507526116)
,p_name=>'DAAlert'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_ALERT'
,p_condition_element=>'P76_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157417391184526116)
,p_event_id=>wwv_flow_imp.id(157416879507526116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P76_ALERT.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157417750802526116)
,p_name=>'DASuccessMessage1'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_SUCCESS_MESSAGE'
,p_condition_element=>'P76_SUCCESS_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157418207357526116)
,p_event_id=>wwv_flow_imp.id(157417750802526116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P76_SUCCESS_MESSAGE.'
,p_attribute_02=>'System Message'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157418634130526117)
,p_name=>'DAPlanDOseFraction'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_PLAN_DOSE_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157419146268526117)
,p_event_id=>wwv_flow_imp.id(157418634130526117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_PLAN_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P76_PLAN_DOSE_FRACTION, 0) * NVL(:P76_PLAN_FRACTION, 0));'
,p_attribute_07=>'P76_PLAN_DOSE_FRACTION,P76_PLAN_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157419576559526117)
,p_name=>'DAPlanFraction'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_PLAN_FRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157420091092526117)
,p_event_id=>wwv_flow_imp.id(157419576559526117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_PLAN_TOT_DOSE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN (NVL(:P76_PLAN_DOSE_FRACTION, 0) * NVL(:P76_PLAN_FRACTION, 0));'
,p_attribute_07=>'P76_PLAN_DOSE_FRACTION,P76_PLAN_FRACTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24102202672176723)
,p_name=>'DAChecklistType'
,p_event_sequence=>440
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(157299837675458814)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24102373727176724)
,p_event_id=>wwv_flow_imp.id(24102202672176723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P76_CHECKLIST_TYPE'', _.radchecklisttype.CHECKLIST_TYPE);',
'apex.region(''radcheckfraction'').refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25106393433296206)
,p_name=>'DAFractklion'
,p_event_sequence=>450
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(157302390846458839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25106419882296207)
,p_event_id=>wwv_flow_imp.id(25106393433296206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P76_SIGN_BY_NAME_1'', _.radcheckfraction.SIGN_BY_NAME_1);',
'$s(''P76_SIGN_BY_NAME_2'', _.radcheckfraction.SIGN_BY_NAME_2);',
'$s(''P76_SIGN_DATE'', _.radcheckfraction.SIGN_DATE);',
'$s(''P76_ND_SCHEDULE_SRNO'', _.radcheckfraction.SCHEDULE_SRNO);',
'$s(''P76_SRNO'', _.radcheckfraction.SRNO);',
'$s(''P76_STATUS_DESC'', _.radcheckfraction.STATUS_DESC);',
'',
'',
'apex.region(''objcheck'').refresh();',
'apex.region(''objtext'').refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25106514591296208)
,p_name=>'DARadiationNo'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_RADIATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25106617056296209)
,p_event_id=>wwv_flow_imp.id(25106514591296208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_RAD_DETAIL_ND_RADIATION_NO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P76_RADIATION_NO;'
,p_attribute_07=>'P76_RADIATION_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25106836953296211)
,p_name=>'DASiteId'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_SITE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25106993313296212)
,p_event_id=>wwv_flow_imp.id(25106836953296211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_RAD_DETAIL_ND_SITE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P76_SITE_ID;'
,p_attribute_07=>'P76_SITE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25107609503296219)
,p_name=>'Sign'
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25106131788296204)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25107704952296220)
,p_event_id=>wwv_flow_imp.id(25107609503296219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_PASSWORD,P76_PASSWORD_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25107819502296221)
,p_event_id=>wwv_flow_imp.id(25107609503296219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P76_PATIENT_MRNO   := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P76_PATIENT_TYPE   := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P76_PATIENT_TYPE_1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P76_DISP_MRNO      := (:P76_PATIENT_TYPE ||',
'                           LPAD(:P76_PATIENT_MRNO, 8, ''0''));',
'    :P76_NAME           := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P76_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P76_PATIENT_MRNO,P76_PATIENT_TYPE,P76_DISP_MRNO,P76_NAME,P76_PATIENT_TYPE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25107998522296222)
,p_event_id=>wwv_flow_imp.id(25107609503296219)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signradchecklist");',
'apex.item("P76_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25108098310296223)
,p_name=>'CloseRegion'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25227435644707338)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25108149437296224)
,p_event_id=>wwv_flow_imp.id(25108098310296223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(266483375048995313)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157391240724526093)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreateRadiationChecklistNewForm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'  L_MRNO         RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_NO RADIATION.RADIATION_MASTER.RADIATION_NO%TYPE;',
'BEGIN',
'  L_MRNO         := :P76_MRNO;',
'  L_RADIATION_NO := :P76_RAD_DETAIL_ND_RADIATION_NO;',
'',
'  RADIATION.PKG_S18FRM00162.GEN_CHECKLIST(P_ORGANIZATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                          P_LOGIN_LOCATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                          P_RADIATION_NO        => :P76_RAD_DETAIL_ND_RADIATION_NO,',
'                                          P_SITE_ID             => :P76_RAD_DETAIL_ND_SITE_ID,',
'                                          P_PERFORMANCE_TYPE_ID => :P76_PERFORMANCE_TYPE_ID,',
'                                          P_CHECKLIST_TYPE      => :P76_CHECKLIST_TYPE,',
'                                          P_SCHEDULE_SRNO       => :P76_SCHEDULE_SRNO,',
'                                          P_USER_MRNO           => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''USER_MRNO''),',
'                                          P_OBJECT_CODE         => ''S18APX00065'',',
'                                          P_TERMINAL            => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''TERMINAL''),',
'                                          P_ALERT_TEXT          => L_ALERT_TEXT,',
'                                          P_STOP                => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'  :P76_PARAM_MRNO         := L_MRNO;',
'  :P76_PARAM_RADIATION_NO := L_RADIATION_NO;',
'  :P76_MRNO               := L_MRNO;',
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
,p_process_when_button_id=>wwv_flow_imp.id(157351565103526017)
,p_process_success_message=>'New Checklist created successfully '
,p_internal_uid=>157391240724526093
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25107299943296215)
,p_process_sequence=>14
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24102591456176726)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessObjectiveCheckbox'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25107299943296215
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25107506625296218)
,p_process_sequence=>24
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24103586578176736)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ProcessObjectiveText'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25107506625296218
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157390856448526093)
,p_process_sequence=>2
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P76_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>157390856448526093
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157390472187526093)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRADChecklist'
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
'         M.ANAESTHESIA,',
'         M.REMARKS,',
'         HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(P_DOCTOR_ID => M.DOCTOR_ID) DOCTOR_MRNO,',
'         RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'         RT.DESCRIPTION RADIOTHERAPHY_TYPE,',
'         RD.SITE_ID',
'    INTO :P76_RADIATION_NO,',
'         :P76_RADIATION_DATE,',
'         :P76_MRNO,',
'         :P76_PATIENT_NAME,',
'         :P76_DISP_AGE,',
'         :P76_DISP_GENDER,',
'         :P76_DOCTOR_ID,',
'         :P76_DISP_DOCTOR,',
'         :P76_DISP_INTENT,',
'         :P76_ANAESTHESIA,',
'         :P76_REMARKS,',
'         :P76_DOCTOR_MRNO,',
'         :P76_DISP_SITE,',
'         :P76_RADIOTHERAPHY_TYPE,',
'         :P76_SITE_ID',
'    FROM RADIATION.RADIATION_MASTER  M,',
'         RADIATION.RADIATION_DETAIL  RD,',
'         RADIATION.RADIOTHERAPY_TYPE RT',
'   WHERE M.RADIATION_NO = RD.RADIATION_NO',
'     AND M.RADIOTHERAPY_TYPE = RT.TREATMENT_TYPE',
'     AND M.MRNO = NVL(:P76_MRNO, :P76_PARAM_MRNO)',
'     AND M.STATUS_REQUEST = ''015''',
'     AND (:P76_SCHEDULE_SRNO IS NULL OR',
'         (RD.RADIATION_NO, RD.SITE_ID) IN',
'         (SELECT S.RADIATION_NO, S.SITE_ID',
'             FROM RADIATION.SCHEDULE S',
'            WHERE S.SR_NO = :P76_SCHEDULE_SRNO));',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>157390472187526093
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157390063502526092)
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
'  SELECT :P76_SPEC_INS_RADIATION_NO RADIATION_NO,',
'         :P76_SPEC_INS_SITE_ID SITE_ID,',
'         :P76_SPEC_INS_PHASE_NO PHASE_NO,',
'         :P76_FRACTION_NO FRACTION_NO,',
'         :P76_NEW_SPECIAL_INSTRUCTION SPECIAL_INSTRUCTION,',
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
,p_internal_uid=>157390063502526092
);
wwv_flow_imp.component_end;
end;
/

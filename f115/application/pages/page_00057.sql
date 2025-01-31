prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_name=>'RAD_SCHEDULE_VIEW'
,p_alias=>'RAD-SCHEDULE-VIEW'
,p_page_mode=>'MODAL'
,p_step_title=>'RAD_SCHEDULE_VIEW'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewHistory(p_this,pSR_NO) {',
'   // alert(pSRNO)',
'   ',
'apex.theme.openRegion(''WHIST'');',
'apex.item("P57_WORKFLOW_SRNO").setValue(pSR_NO);',
'',
'}',
'',
'function cancelAppointment(p_this,pSrno)',
'{',
'apex.message.confirm(''Are u sure, you want to cancel this Appointment ?'', function (isOk) ',
'            {',
'    if (isOk) {',
' ',
'  apex.server.process("CancelProcess", ',
'{ ',
'      x01: pSrno,',
'     ',
'},',
'',
'{ ',
'   dataType: ''text'',',
'    success: function(data)  {',
'//alert(pSrno);',
' ////alert(data);',
'          var obj = JSON.parse(data);',
'',
'        if(obj.status == "success")',
'        {',
'        apex.message.showPageSuccess(obj.message) ;',
'         apex.region("future_visit").refresh();',
'         setTimeout(function() ',
'         {',
'         $(''#t_Alert_Success'').fadeOut(''fast'');',
'         }, 2000);',
'',
'      }',
'      else{',
'          apex.message.alert(obj.message);',
'          }',
'    }',
'});',
'        }',
'})',
'}',
'',
'///////////////////////////////////////////////////////////////////////////////////////',
'function cancelAll(p_this,pSrno)',
'{',
'apex.message.confirm(''Are u sure, you want to cancel all the Appointments?'', function (isOk) ',
'            {',
'    if (isOk) {',
' ',
'  apex.server.process("CancelProcess", ',
'{ ',
'      x01: pSrno,',
'     ',
'},',
'',
'{ ',
'   dataType: ''text'',',
'    success: function(data)  {',
'//alert(pSrno);',
' ////alert(data);',
'          var obj = JSON.parse(data);',
'',
'        if(obj.status == "success")',
'        {',
'        apex.message.showPageSuccess(obj.message) ;',
'         apex.region("future_visit").refresh();',
'         setTimeout(function() ',
'         {',
'         $(''#t_Alert_Success'').fadeOut(''fast'');',
'         }, 2000);',
'',
'      }',
'      else{',
'          apex.message.alert(obj.message);',
'          }',
'    }',
'});',
'        }',
'})',
'}',
'//////////////////////////////Migrate Process//////////////////////////////',
'function funcmigrate(p_this)',
'{',
'apex.message.confirm(''Are u sure, you want to migrate this Appointment ?'', function (isOk) ',
'            {',
'    if (isOk) {',
' ',
'  apex.server.process("MigerateProcess", ',
'{ ',
'     pageItems:[''P57_OLD_SRNO'',',
'                ''P57_MG_SRNO''',
'',
'     ]',
'     ',
'},',
'',
'{ ',
'   dataType: ''text'',',
'    success: function(data)  {',
'        var obj = JSON.parse(data);',
'',
'        if(obj.status == "success")',
'{',
'    apex.message.showPageSuccess(obj.message) ;',
'    apex.region("future_visit").refresh();',
'    apex.item("P57_OLD_MACHINE ").setValue();',
'    apex.item("P57_OLD_VISIT_DATE").setValue();',
'    apex.item("P57_OLD_SRNO").setValue();',
'    apex.item("P57_MIG_MACHINE").setValue();',
'    apex.item("P57_MIG_VISIT_DATE").setValue();',
'    apex.item("P57_MG_SRNO").setValue();',
'    setTimeout(function() ',
'    {',
'    $(''#t_Alert_Success'').fadeOut(''fast'');',
'    }, 2000);',
'}',
'      else{',
'          apex.message.alert(obj.message);',
'          }',
'    }',
'});',
'        }',
'})',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'',
'#ACS .a-GV-status {',
' ',
'    display: none;',
' ',
'}',
'#future_visit .a-GV-status {',
' ',
'    display: none;',
' ',
'}',
'#RDS .a-GV-status {',
' ',
'    display: none;',
' ',
'}',
'#CT_HIST .a-GV-status {',
' ',
'    display: none;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'1500'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MAZAM'
,p_last_upd_yyyymmddhh24miss=>'20231208092216'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13629693105964618)
,p_plug_name=>'Future Visits'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>100
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13627981676964601)
,p_plug_name=>'Future Visits'
,p_region_name=>'future_visit'
,p_parent_plug_id=>wwv_flow_imp.id(13629693105964618)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SR_NO,',
'             MACHINE_ID,',
'             RADIATION.PKG_RADIATION.GET_MACHINE_DESC(MACHINE_ID) MACHINE_DESC,',
'             TO_CHAR(VISIT_DATE,''DD-MM-RRRR HH24:MI'') VISIT_DATE,',
'             VISIT_DATE VISIT_DATE1,',
'             RADIATION_NO,',
'             SITE_ID,',
'             FRACTION_ID,',
'             WFE_NO,',
'             OC_SERIAL_NO,',
'             REMARKS,',
'             SLOT_TYPE_ID,',
'             MACHINE_SCHEDULE_ID,',
'             OBJECT_CODE,',
'             RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_SCHEDULE_SRNO => S.SR_NO,',
'                                                             P_WFE_NO        => S.WFE_NO) WORKFLOW_iD',
'                                                             ',
'        FROM RADIATION.SCHEDULE S',
'       WHERE RADIATION_NO = :P57_RADIATION_NO_2',
'         AND SITE_ID = :P57_SITE_ID',
'         AND TO_DATE(VISIT_DATE, ''DD-MM-RRRR'') >=TO_DATE(SYSDATE, ''DD-MM-RRRR'') ',
'         AND EXISTS',
'       (SELECT 1',
'                FROM RADIATION.MACHINES M',
'               WHERE M.PERFORMANCE_TYPE_ID = :P57_PERFORMANCE_TYPE_ID',
'                 AND M.MACHINE_ID = S.MACHINE_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P57_RADIATION_NO_2,P57_SITE_ID,P57_PERFORMANCE_TYPE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Future Visits'
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
 p_id=>wwv_flow_imp.id(13628118066964603)
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
 p_id=>wwv_flow_imp.id(13628223442964604)
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
 p_id=>wwv_flow_imp.id(13628399580964605)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(13628440213964606)
,p_name=>'SR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SR_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sr No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(13628559577964607)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Machine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(13628673450964608)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Desc'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(13628713727964609)
,p_name=>'VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(13628899486964610)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(13628991492964611)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Wfe No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(13629040746964612)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oc Serial No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(13629108721964613)
,p_name=>'SLOT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLOT_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Slot Type Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_imp.id(13629241873964614)
,p_name=>'MACHINE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_SCHEDULE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Machine Schedule Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(13629378551964615)
,p_name=>'OBJECT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Object Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>11
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
 p_id=>wwv_flow_imp.id(13629445985964616)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(13629533401964617)
,p_name=>'VIEW'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Cancel'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null)'
,p_link_text=>'<span color=red class="t-Icon fa fa-window-close" style="color:red" aria-hidden="true"></span>'
,p_link_attributes=>'onclick="cancelAppointment(this, ''&SR_NO.'')"'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14353042771668250)
,p_name=>'VISIT_DATE1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE1'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(13628018705964602)
,p_internal_uid=>13628018705964602
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(13633598408965411)
,p_interactive_grid_id=>wwv_flow_imp.id(13628018705964602)
,p_static_id=>'136336'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13633735410965411)
,p_report_id=>wwv_flow_imp.id(13633598408965411)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13634264777965412)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(13628118066964603)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13635108995965414)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13628223442964604)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13635929850965416)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(13628399580964605)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>307
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13636897300965418)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13628440213964606)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>206
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13637732683965420)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(13628559577964607)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13638698177965422)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13628673450964608)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>266
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13639596278965423)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(13628713727964609)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13640463775965425)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(13628899486964610)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>251
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13641362027965427)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(13628991492964611)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13642270656965429)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(13629040746964612)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13643109100965431)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(13629108721964613)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13644094351965433)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(13629241873964614)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13644973704965435)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(13629378551964615)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13645803299965437)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(13629445985964616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>275
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13646766953965440)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(13629533401964617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>45
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16391217612697346)
,p_view_id=>wwv_flow_imp.id(13633735410965411)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(14353042771668250)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13629730923964619)
,p_plug_name=>'Appointment Workflow History'
,p_region_name=>'WHIST'
,p_region_css_classes=>'js-dialog-size900x700'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>130
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.SR_NO,',
'             RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(P_EVENT_ID => T.EVENT_ID) EVENT,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => T.ENTERED_BY) || '' ('' ||',
'             T.ENTERED_BY || '')'' NAME,',
'             TO_CHAR(T.ENTERED_DATE, ''DD-MM-RR HH24:MI:SS'') TIME,',
'             TO_CHAR(TRUNC(SYSDATE) +',
'                     (LEAD(T.ENTERED_DATE)',
'                      OVER(ORDER BY T.ENTERED_DATE) - T.ENTERED_DATE),',
'                     ''HH24:MI'') duration_t,',
'             T.REMARKS',
'        FROM RADIATION.SCHEDULE_WORKFLOW T',
'       WHERE T.SR_NO = :P57_WORKFLOW_SRNO',
'       ORDER BY T.ENTERED_DATE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P57_WORKFLOW_SRNO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Appointment Workflow History'
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
 p_id=>wwv_flow_imp.id(13629917929964621)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>13629917929964621
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13630079401964622)
,p_db_column_name=>'SR_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sr No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13630110405964623)
,p_db_column_name=>'EVENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13630259261964624)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13630396036964625)
,p_db_column_name=>'TIME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13630528731964627)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14351682690668236)
,p_db_column_name=>'DURATION_T'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Duration <br>HH:MI'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14214500198975857)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'142146'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EVENT:NAME:TIME:DURATION_T:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23187227330253171)
,p_plug_name=>'CT Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23525430773475149)
,p_plug_name=>'CT_PERFORMANCE_DT'
,p_region_name=>'CT_PER'
,p_parent_plug_id=>wwv_flow_imp.id(23187227330253171)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT :P57_RADIATION_NO_2 P_RADIATION_NO,',
':P57_SITE_ID P_SITE_ID,',
'DPT.PERFORMANCE_TYPE_ID,',
'DPT.DESCIPTION',
'FROM RADIATION.DEF_PERFORMANCE_TYPE DPT',
'WHERE (:P57_PARAM_PERF_ID  IS NULL OR',
'DPT.PERFORMANCE_TYPE_ID = :P57_PARAM_PERF_ID)',
'AND EXISTS',
'(SELECT 1',
'FROM RADIATION.MACHINES M',
'WHERE M.PERFORMANCE_TYPE_ID = DPT.PERFORMANCE_TYPE_ID',
'AND M.ACTIVE = ''Y''',
')',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P57_RADIATION_NO_2,P57_SITE_ID,P57_SCHEDULE_SRNO'
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
 p_id=>wwv_flow_imp.id(23183025057253129)
,p_heading=>'Fraction'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12699296923338931)
,p_name=>'P_RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(12699344749338932)
,p_name=>'P_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P_SITE_ID'
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
 p_id=>wwv_flow_imp.id(12699432603338933)
,p_name=>'PERFORMANCE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMANCE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'PERFORMANCE_TYPE_ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12699505186338934)
,p_name=>'DESCIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Performance Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(23525513955475150)
,p_internal_uid=>23525513955475150
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
 p_id=>wwv_flow_imp.id(23603705753693297)
,p_interactive_grid_id=>wwv_flow_imp.id(23525513955475150)
,p_static_id=>'102547'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(23603922792693297)
,p_report_id=>wwv_flow_imp.id(23603705753693297)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13561181754897776)
,p_view_id=>wwv_flow_imp.id(23603922792693297)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12699296923338931)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13562071028897778)
,p_view_id=>wwv_flow_imp.id(23603922792693297)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12699344749338932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13562974967897780)
,p_view_id=>wwv_flow_imp.id(23603922792693297)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12699432603338933)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13563834913897782)
,p_view_id=>wwv_flow_imp.id(23603922792693297)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12699505186338934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23525186880475147)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26448430609056749)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'RDS'
,p_parent_plug_id=>wwv_flow_imp.id(23525186880475147)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT ROWID RD_ID,',
'      RADIATION_NO,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE',
'        FROM RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P57_RADIATION_NO_2',
'         AND RD.SITE_ID = NVL(:P57_SITE_ID, RD.SITE_ID);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P57_RADIATION_NO_2'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12699608783338935)
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
 p_id=>wwv_flow_imp.id(12699721438338936)
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
 p_id=>wwv_flow_imp.id(12699825797338937)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiotherapy Site(s)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(48185228285833237)
,p_name=>'RD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RD_ID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21496310763776872)
,p_internal_uid=>21496310763776872
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
 p_id=>wwv_flow_imp.id(23529143008476085)
,p_interactive_grid_id=>wwv_flow_imp.id(21496310763776872)
,p_static_id=>'101801'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(23529366405476085)
,p_report_id=>wwv_flow_imp.id(23529143008476085)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13593577237901906)
,p_view_id=>wwv_flow_imp.id(23529366405476085)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12699608783338935)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13594484333901908)
,p_view_id=>wwv_flow_imp.id(23529366405476085)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12699721438338936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13595337770901910)
,p_view_id=>wwv_flow_imp.id(23529366405476085)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12699825797338937)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>624
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70308470384265595)
,p_view_id=>wwv_flow_imp.id(23529366405476085)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(48185228285833237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23599197409693043)
,p_plug_name=>'Past Visits'
,p_region_name=>'ACS_MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>90
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23599304533693044)
,p_plug_name=>'Past Vists'
,p_region_name=>'ACS'
,p_parent_plug_id=>wwv_flow_imp.id(23599197409693043)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SR_NO,',
'             MACHINE_ID,',
'             RADIATION.PKG_RADIATION.GET_MACHINE_DESC(MACHINE_ID) MACHINE_DESC,',
'             TO_CHAR(VISIT_DATE,''DD-MM-RRRR HH24:MI'') VISIT_DATE,',
'             VISIT_DATE VISIT_DATE1,',
'             RADIATION_NO,',
'             SITE_ID,',
'             FRACTION_ID,',
'             WFE_NO,',
'             OC_SERIAL_NO,',
'             REMARKS,',
'             SLOT_TYPE_ID,',
'             MACHINE_SCHEDULE_ID,',
'             OBJECT_CODE,',
'             RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_SCHEDULE_SRNO => S.SR_NO,',
'                                                             P_WFE_NO        => S.WFE_NO) WORKFLOW_iD',
'                                                             ',
'        FROM RADIATION.SCHEDULE S',
'       WHERE RADIATION_NO = :P57_RADIATION_NO_2',
'         AND SITE_ID = :P57_SITE_ID',
'         AND TO_DATE(VISIT_DATE, ''DD-MM-RRRR'') <TO_DATE(SYSDATE, ''DD-MM-RRRR'')',
'         AND EXISTS',
'       (SELECT 1',
'                FROM RADIATION.MACHINES M',
'               WHERE M.PERFORMANCE_TYPE_ID = :P57_PERFORMANCE_TYPE_ID',
'                 AND M.MACHINE_ID = S.MACHINE_ID)',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P57_RADIATION_NO_2,P57_SITE_ID,P57_PERFORMANCE_TYPE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Past Vists'
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
 p_id=>wwv_flow_imp.id(12699963830338938)
,p_name=>'SR_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SR_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sr No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(12700079238338939)
,p_name=>'MACHINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Machine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(12700186005338940)
,p_name=>'MACHINE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(12700294048338941)
,p_name=>'VISIT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(12700347689338942)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(12700482013338943)
,p_name=>'WFE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WFE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Wfe No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(12700512964338944)
,p_name=>'OC_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OC_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oc Serial No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(12700673944338945)
,p_name=>'SLOT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLOT_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Slot Type Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
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
 p_id=>wwv_flow_imp.id(12700729868338946)
,p_name=>'MACHINE_SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_SCHEDULE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Machine Schedule Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(12700832288338947)
,p_name=>'OBJECT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Object Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>11
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
 p_id=>wwv_flow_imp.id(12701032671338949)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Event'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(14352972327668249)
,p_name=>'VISIT_DATE1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_DATE1'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Visit Date1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(23187130609253170)
,p_name=>'VIEW'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null)'
,p_link_text=>'<span class="t-Icon fa fa-eye" aria-hidden="true"></span>'
,p_link_attributes=>'onclick=viewHistory(this,''&SR_NO.'')'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(23599609928693047)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(23599767807693048)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Site Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(23600260185693053)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(23599441178693045)
,p_internal_uid=>23599441178693045
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(23680373425755072)
,p_interactive_grid_id=>wwv_flow_imp.id(23599441178693045)
,p_static_id=>'103313'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(23680536066755072)
,p_report_id=>wwv_flow_imp.id(23680373425755072)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1839997028625)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(14352972327668249)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13605614994933266)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12699963830338938)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13606523747933268)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12700079238338939)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13607467833933269)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12700186005338940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13608357368933271)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12700294048338941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13609215832933273)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12700347689338942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13610157139933275)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(12700482013338943)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13611064068933277)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12700512964338944)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13611907778933279)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(12700673944338945)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13612886524933280)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(12700729868338946)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13613704056933282)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(12700832288338947)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13622110250935931)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(12701032671338949)
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
 p_id=>wwv_flow_imp.id(23681953809755075)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(23599609928693047)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23682869762755077)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(23599767807693048)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23687300749755087)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(23600260185693053)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>298
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(23700869475774255)
,p_view_id=>wwv_flow_imp.id(23680536066755072)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(23187130609253170)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23855995208911633)
,p_plug_name=>'CT Performance History'
,p_region_name=>'CT_HIST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
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
,p_ajax_items_to_submit=>'P57_SCHEDULE_SRNO,P57_MRNO'
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
 p_id=>wwv_flow_imp.id(12698357109338922)
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
 p_id=>wwv_flow_imp.id(12698488822338923)
,p_name=>'RADIATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(12698517923338924)
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
 p_id=>wwv_flow_imp.id(12698639068338925)
,p_name=>'PATIENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_NAME'
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
 p_id=>wwv_flow_imp.id(12698724843338926)
,p_name=>'DISP_AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_AGE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(12698829840338927)
,p_name=>'DISP_SEX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SEX'
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
 p_id=>wwv_flow_imp.id(12698910284338928)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
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
 p_id=>wwv_flow_imp.id(12699082232338929)
,p_name=>'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID)'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(DOCTOR_ID)'
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
 p_id=>wwv_flow_imp.id(12699161660338930)
,p_name=>'DISP_TREATMENT_INTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_TREATMENT_INTENT'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(23857422959911647)
,p_internal_uid=>23857422959911647
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
 p_id=>wwv_flow_imp.id(24743622307207021)
,p_interactive_grid_id=>wwv_flow_imp.id(23857422959911647)
,p_static_id=>'113946'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24743882332207021)
,p_report_id=>wwv_flow_imp.id(24743622307207021)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13548868243892708)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(12698357109338922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13549739216892710)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(12698488822338923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13550645780892712)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(12698517923338924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13551517556892714)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(12698639068338925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13552357624892716)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(12698724843338926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13553231565892717)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(12698829840338927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13554105606892719)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12698910284338928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13555022835892722)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(12699082232338929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13555996126892724)
,p_view_id=>wwv_flow_imp.id(24743882332207021)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(12699161660338930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27351922771386076)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>210
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30545677202607698)
,p_plug_name=>'Radiotherapy Appointments'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48184444190833229)
,p_plug_name=>'Control'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>110
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(56972652429127034)
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
'WHERE MRNO = :P57_MRNO;',
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
 p_id=>wwv_flow_imp.id(13411449862257355)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13411837738257355)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13412241743257355)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13631369357964635)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_button_name=>'MIGRATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Migrate'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13402488040257351)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(27351922771386076)
,p_button_name=>'Report'
,p_button_static_id=>'fetch_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13403694296257351)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(27351922771386076)
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
 p_id=>wwv_flow_imp.id(13404499529257352)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(27351922771386076)
,p_button_name=>'CancelAll'
,p_button_static_id=>'dis_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel All'
,p_button_position=>'DELETE'
,p_confirm_message=>'Are u sure, you want to cancel all the Appointments?'
,p_confirm_style=>'danger'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12701141723338950)
,p_name=>'P57_SCHEDULE_TYPE'
,p_item_sequence=>180
,p_item_default=>'P'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13630619853964628)
,p_name=>'P57_MIG_VISIT_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_prompt=>'Mig Visit Date'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_MIG_VISIT_DATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(S.VISIT_DATE,''DD-MON-YY HH24:MI'') VISIT_TIME ,S.VISIT_DATE,S.SR_NO',
'FROM RADIATION.SCHEDULE S',
'WHERE S.MACHINE_ID = :P57_MIG_MACHINE',
'AND S.VISIT_DATE > TRUNC(SYSDATE)',
'AND S.RADIATION_NO IS NULL',
'ORDER BY S.VISIT_DATE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P57_MIG_MACHINE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'SR_NO:P57_MG_SRNO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13630708503964629)
,p_name=>'P57_MIG_MACHINE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_prompt=>'New Machine'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_MIG_MACHINE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MC.DESCRIPTION d,',
'       MC.MACHINE_ID r',
'  FROM RADIATION.MACHINES MC',
' WHERE ACTIVE = ''Y''',
'   AND EXISTS (SELECT 1',
'          FROM RADIATION.VU_LOCATION_WISE_MACHINES T',
'         WHERE T.MACHINE_ID = MC.MACHINE_ID)',
'   AND MC.PERFORMANCE_TYPE_ID = :P57_PERFORMANCE_TYPE_ID',
' ORDER BY MC.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
,p_attribute_09=>'200'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13630832132964630)
,p_name=>'P57_MG_SRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13631052040964632)
,p_name=>'P57_OLD_SRNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14351797363668237)
,p_name=>'P57_WORKFLOW_SRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13629730923964619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14352048232668240)
,p_name=>'P57_QUERY_ALL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23525430773475149)
,p_item_default=>'N'
,p_prompt=>'Show All'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14352419992668244)
,p_name=>'P57_PARAM_PERF_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23525430773475149)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23254244954253177)
,p_name=>'P57_PERFORMANCE_TYPE_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23671594221693102)
,p_name=>'P57_SCHEDULE_SRNO'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26549712561056816)
,p_name=>'P57_DOCTOR_ID'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26568862586800845)
,p_name=>'P57_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35247470385814938)
,p_name=>'P57_SCHEDULE_EVENT_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35247544864814939)
,p_name=>'P57_ALERT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48184376881833228)
,p_name=>'P57_DETAIL_SITE_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48184544701833230)
,p_name=>'P57_OLD_MACHINE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_prompt=>'Machine'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48184676063833231)
,p_name=>'P57_OLD_VISIT_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48184444190833229)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(54560875116911535)
,p_name=>'P57_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'MRNO:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54560952060911536)
,p_name=>'P57_PATIENT_NAME_1'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Patient Name:'
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
 p_id=>wwv_flow_imp.id(54561103014911537)
,p_name=>'P57_SEX'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Sex:'
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
 p_id=>wwv_flow_imp.id(54561176860911538)
,p_name=>'P57_AGE'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Age:'
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
 p_id=>wwv_flow_imp.id(54561318131911539)
,p_name=>'P57_UNIT'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
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
 p_id=>wwv_flow_imp.id(54561436818911540)
,p_name=>'P57_SERVICE_NO'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
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
 p_id=>wwv_flow_imp.id(54561489261911541)
,p_name=>'P57_SERVICE_STATUS'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
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
 p_id=>wwv_flow_imp.id(54561600760911542)
,p_name=>'P57_RANK'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
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
 p_id=>wwv_flow_imp.id(54561663052911543)
,p_name=>'P57_FORMATION'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
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
 p_id=>wwv_flow_imp.id(54561748516911544)
,p_name=>'P57_RADIATION_NO_2'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Radiation No:'
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
 p_id=>wwv_flow_imp.id(54561845706911545)
,p_name=>'P57_RADIATION_DATE_1'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Radiation Date:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54562017198911546)
,p_name=>'P57_CONSULTANT'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Consultant:'
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
 p_id=>wwv_flow_imp.id(54562077649911547)
,p_name=>'P57_PATIENT_CONTACT'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_prompt=>'Patient Ph:'
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
 p_id=>wwv_flow_imp.id(54562142658911548)
,p_name=>'P57_SITE_DISP'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54562244571911549)
,p_name=>'P57_STATUS'
,p_item_sequence=>1189
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54562420269911550)
,p_name=>'P57_SITE_ID'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(30545677202607698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13429592171257364)
,p_name=>'Get-Patient-Code_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_PATIENT_MRNO2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13430059113257364)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P57_ERROR := NULL;',
'  IF :P57_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P57_DISP_MRNO2 := :P57_PATIENT_TYPE2 || LPAD(:P57_PATIENT_MRNO2, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P57_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P57_ERROR        := ''This is not an active employee.'';',
'      :P57_PATIENT_MRNO2 := NULL;',
'      :P57_DISP_MRNO2    := NULL;',
'      :P57_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P57_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P57_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P57_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P57_ERROR,P57_PATIENT_MRNO2,P57_PATIENT_TYPE2,P57_DISP_MRNO2,P57_NAME2'
,p_attribute_03=>'P57_ERROR,P57_PATIENT_MRNO2,P57_PATIENT_TYPE2,P57_DISP_MRNO2,P57_NAME2'
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
 p_id=>wwv_flow_imp.id(13430598645257364)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P57_DISP_MRNO2 IS NOT NULL THEN',
'    :P57_PATIENT_TYPE2 := substr(:P57_DISP_MRNO2, 1, 6);',
'    :P57_PATIENT_MRNO2 := LTRIM(SUBSTR(:P57_DISP_MRNO2, 7), ''0'');',
'    :P57_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P57_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P57_DISP_MRNO2'
,p_attribute_03=>'P57_PATIENT_TYPE2,P57_PATIENT_MRNO2,P57_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13431063752257364)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13431581157257364)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P57_PATIENT_TYPE2 IS NOT NULL AND :P57_PATIENT_MRNO2 IS NOT NULL THEN',
':P57_DISP_MRNO2 := :P57_PATIENT_TYPE2 ||LPAD(:P57_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P57_DISP_MRNO1,P57_PATIENT_TYPE1,P57_PATIENT_MRNO1'
,p_attribute_03=>'P57_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13432059006257364)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P57_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P57_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13432519643257365)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P57_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P57_DISP_MRNO2);'
,p_attribute_02=>'P57_DISP_MRNO2'
,p_attribute_03=>'P57_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P57_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13433078988257365)
,p_event_id=>wwv_flow_imp.id(13429592171257364)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P57_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13433470354257365)
,p_name=>'ClearItems'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13433984244257365)
,p_event_id=>wwv_flow_imp.id(13433470354257365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_MESSAGE1,P57_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13434488576257365)
,p_event_id=>wwv_flow_imp.id(13433470354257365)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P57_UNIT").hide();',
'apex.item("P57_SERVICE_NO").hide();',
'apex.item("P57_SERVICE_STATUS").hide();',
'apex.item("P57_RANK").hide();',
'apex.item("P57_FORMATION").hide();',
'// apex.item("P57_NAME2").disable();',
'// apex.item("P57_NAME1").disable();',
'//apex.item("P57_ANAESTHESIA").disable();',
'// apex.item("P57_INSTRUCITON").disable();',
'// apex.item("P57_SCHEDULE_DATE_SHOW").disable();',
'',
'// apex.item("P57_CONTRAST").setValue('''');',
'// apex.item("P57_CONTRAST_GIVEN_BY").setValue('''');',
'// apex.item("P57_CONTRAST_QTY").setValue('''');',
'// apex.item("P57_CONTRAST_UNIT").setValue('''');',
'// apex.item("P57_CONTRAST_GIVEN_NAME").setValue('''');',
'// apex.item("P57_CONTRAST_ID").setValue('''');',
'// apex.item("P57_NECK_POSITION").setValue('''');',
'// apex.item("P57_ARM_POSITION").setValue('''');',
'// apex.item("P57_POSITION_INSTRUCTION").setValue('''');',
'// apex.item("P57_SETUP_POSITION").setValue('''');',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13434886502257365)
,p_name=>'close_dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13403694296257351)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13435399146257365)
,p_event_id=>wwv_flow_imp.id(13434886502257365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13439485657257367)
,p_name=>'RadiationDetailDAChange'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26448430609056749)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13439970356257367)
,p_event_id=>wwv_flow_imp.id(13439485657257367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P57_DETAIL_SITE_ID").setValue(model.getValue(this.data.selectedRecords[i],"SITE_ID"));',
'',
'',
'',
'}',
'',
'// apex.region("CT_PER").refresh();',
'// apex.region("ACS").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13441221719257368)
,p_name=>'ReportBtnDA'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13402488040257351)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13441711921257368)
,p_event_id=>wwv_flow_imp.id(13441221719257368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_RADIATION_NO": $v("P57_RADIATION_NO_2"),"P_MRNO": $v("P57_MRNO")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00024'',',
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
 p_id=>wwv_flow_imp.id(13442391869257368)
,p_name=>'PerformanceHistoryDA'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23855995208911633)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13443885325257369)
,p_event_id=>wwv_flow_imp.id(13442391869257368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P57_RADIATION_NO_2").setValue(model.getValue(this.data.selectedRecords[i],"RADIATION_NO"));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13443374797257368)
,p_event_id=>wwv_flow_imp.id(13442391869257368)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("RDS").refresh();',
'apex.region("CT_PER").refresh();',
'apex.region("ACS").refresh();'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48185099356833235)
,p_name=>'PastVisitSelectionChange'
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23599304533693044)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48185129990833236)
,p_event_id=>wwv_flow_imp.id(48185099356833235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P57_OLD_MACHINE").setValue(model.getValue(this.data.selectedRecords[i],"MACHINE_DESC"));',
'apex.item("P57_OLD_VISIT_DATE").setValue(model.getValue(this.data.selectedRecords[i],"VISIT_DATE"));',
'apex.item("P57_OLD_SRNO").setValue(model.getValue(this.data.selectedRecords[i],"SR_NO"));',
'',
'',
'',
'}',
'',
'// apex.region("CT_PER").refresh();',
'// apex.region("ACS").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13631186317964633)
,p_name=>'FutureSelectChange'
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13627981676964601)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13631299326964634)
,p_event_id=>wwv_flow_imp.id(13631186317964633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P57_OLD_SRNO").setValue(model.getValue(this.data.selectedRecords[i],"SR_NO"));',
'',
'',
'',
'',
'}',
'',
'// apex.region("CT_PER").refresh();',
'// apex.region("ACS").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14351819691668238)
,p_name=>'New'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_WORKFLOW_SRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14351953177668239)
,p_event_id=>wwv_flow_imp.id(14351819691668238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13629730923964619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14352131082668241)
,p_name=>'New_1'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_QUERY_ALL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14352289014668242)
,p_event_id=>wwv_flow_imp.id(14352131082668241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P57_QUERY_ALL = ''Y'' THEN',
'	:P57_PARAM_PERF_ID := NULL;',
'ELSE',
'	:P57_PARAM_PERF_ID := :P57_PERFORMANCE_TYPE_ID;',
'END IF;'))
,p_attribute_02=>'P57_QUERY_ALL,P57_PERFORMANCE_TYPE_ID'
,p_attribute_03=>'P57_PARAM_PERF_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14352300254668243)
,p_event_id=>wwv_flow_imp.id(14352131082668241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23525430773475149)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14352577764668245)
,p_name=>'MigrateDA'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13631369357964635)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14352601761668246)
,p_event_id=>wwv_flow_imp.id(14352577764668245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P57_MIG_MACHINE")==null || $v("P57_MIG_MACHINE").length==0)',
'{',
'    apex.message.alert(''New Machine and appointment is not selected, cannot proceed.'');',
'}',
'else if ($v("P57_OLD_MACHINE")==null || $v("P57_OLD_MACHINE").length==0)',
'{',
'    apex.message.alert(''Old Machine and appointment is not selected, cannot proceed.'');',
'}',
'else',
'{',
'funcmigrate();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14352784528668247)
,p_name=>'PERFORMANCE_TYPE_DA'
,p_event_sequence=>290
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23525430773475149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14352884199668248)
,p_event_id=>wwv_flow_imp.id(14352784528668247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'//alert(model.getValue(this.data.selectedRecords[i],"ANAESTHESIA"));',
'apex.item("P57_PERFORMANCE_TYPE_ID").setValue(model.getValue(this.data.selectedRecords[i],"PERFORMANCE_TYPE_ID"));',
'apex.region("ACS").refresh();',
'apex.region("future_visit").refresh();',
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13422939369257361)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CancellAllProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'      V_ALERT_TEXT VARCHAR2(4000);',
'      V_STOP       CHAR(1) := ''N'';',
'      EX_CUSTOM EXCEPTION;',
'    BEGIN',
'    --  DEBUG.SUSPEND;',
'      -- CALL THE PROCEDURE',
'    BEGIN',
'    	  RADIATION.PKG_SCHEDULE.CLEAR_FUTURE_APPOINTMENTS(P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'			                                                   P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'			                                                   P_RADIATION_NO => :P57_RADIATION_NO_2,',
'			                                                   P_SITE_ID => :P57_DETAIL_SITE_ID,',
'			                                                   P_PERFORMANCE_TYPE_ID => :P57_PERFORMANCE_TYPE_ID,',
'			                                                   P_BYPASS_CHECKS => ''N'',',
'			                                                   P_OBJECT_CODE       => ''S18APX00051'',',
'			                                                   P_USER_MRNO         => :GV_USER_MRNO,',
'			                                                   P_TERMINAL          => :GV_TERMINAL,',
'			                                                   P_ALERT_TEXT        => V_ALERT_TEXT,',
'			                                                   P_STOP              => V_STOP);',
'      END;',
'  IF V_STOP = ''Y'' THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',V_ALERT_TEXT);',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF V_STOP <> ''Y'' AND V_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',''Appointments CANCELLED Properly ...'');',
'  END IF;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || V_ALERT_TEXT || ''~~~'');',
'  WHEN OTHERS THEN',
'    V_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'                    SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                    $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                    '' ERROR MESSAGE: '' || SQLERRM;',
'    RAISE_APPLICATION_ERROR(-20007, ''~~~'' || V_ALERT_TEXT || ''~~~'');',
'END;',
'',
'',
'',
'',
'',
'-- DECLARE',
'--   L_ALERT_TEXT VARCHAR2(4000);',
'--   L_STOP       CHAR(1);',
'--   EX_CUSTOM EXCEPTION;',
'-- BEGIN',
'-- 		RADIATION.PKG_S18FRM00130.DISPOSE_RAD_PLAN(P_ORGANIZATION_ID=> :GV_ORGANIZATION_ID,',
'--                                                P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'--                                                P_SIGN_FLAG         => NULL,',
'--                                                P_SIGN_BY           => :P57_MRNO1,',
'--                                                P_RADIATION_NO      => :P57_RADIATION_NO_2,',
'--                                                P_SITE_ID           => :P57_SITE_ID,',
'--                                                P_CT_SRNO		   => :P57_CT_SRNO,',
'--                                                P_OBJECT_CODE       => ''S18APX00039'',',
'--                                                P_TERMINAL          => :GV_TERMINAL,',
'--                                                P_USER_MRNO         => :GV_USER_MRNO,',
'--                                                P_ALERT_TEXT        => L_ALERT_TEXT,',
'--                                                P_STOP              => L_STOP);',
'',
'',
'',
'--   IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'--     RAISE EX_CUSTOM;',
'--   END IF;',
'',
'--   IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'--     APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',',
'--                                 ''Performance Disposed successfully'');',
'--   END IF;',
'',
'-- EXCEPTION',
'--   WHEN EX_CUSTOM THEN',
'--     RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'--   WHEN OTHERS THEN',
'--     L_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'--                     SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'--                     $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'--                     '' ERROR MESSAGE: '' || SQLERRM;',
'--     RAISE_APPLICATION_ERROR(-20007, ''~~~'' || L_ALERT_TEXT || ''~~~'');',
'-- END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(13404499529257352)
,p_process_success_message=>'Appointments CANCELLED Properly...'
,p_internal_uid=>13422939369257361
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13421745453257360)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_MrnoPage46'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P57_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13421745453257360
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13421333303257360)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'when-new-form-instance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  TAB_SCHEDULE RADIATION.PKG_SCHEDULE.T_SCHEDULE_REC;',
'BEGIN',
'--   PKG_OBJECT_OLB.P_CHECK_SECURITY(P_EVENT => ''WHEN-NEW-FORM-INSTANCE'');',
'--   :PARAMETER.P_ORGANIZATION_ID   := SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'--                                                 ''ORGANIZATION_ID'');',
'--   :PARAMETER.P_LOGIN_LOCATION_ID := SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'--                                                 ''LOCATION_ID'');',
'--   P_ENABLE_SERVICE_UNIT_INFO;',
'  IF :P57_SCHEDULE_SRNO IS NOT NULL THEN',
'    TAB_SCHEDULE               := RADIATION.PKG_SCHEDULE.GET_SCHEDULE_INFO(P_SCHEDULE_SRNO => :P57_SCHEDULE_SRNO);',
'    :P57_RADIATION_NO_2        := TAB_SCHEDULE.RADIATION_NO;',
'    :P57_SITE_ID               := TAB_SCHEDULE.SITE_ID;',
'    :P57_PERFORMANCE_TYPE_ID   := TAB_SCHEDULE.PERFORMANCE_TYPE_ID;',
'    :P57_PARAM_PERF_ID    := TAB_SCHEDULE.PERFORMANCE_TYPE_ID;',
'  END IF;',
'--   IF :PARAMETER.P_RADIATION_NO IS NOT NULL THEN',
'--     GO_BLOCK(''RADIATION_MASTER'');',
'--     EXECUTE_QUERY;',
'--   ELSE',
'--     GO_BLOCK(''RADIATION_MASTER'');',
'--   END IF;',
'END;',
'',
'',
'',
'-- BEGIN',
'--     SELECT PERFORMANCE_TYPE_ID INTO :P57_PERFORMANCE_TYPE_ID',
'--     FROM RADIATION.SCHEDULE RS, RADIATION.MACHINES M',
'--     WHERE RS.MACHINE_ID = M.MACHINE_ID',
'--     AND RS.RADIATION_NO= ',
'--     (CASE WHEN :P57_SCHEDULE_SRNO IS NOT NULL THEN (SELECT S.RADIATION_NO FROM RADIATION.SCHEDULE S WHERE SR_NO = :P57_SCHEDULE_SRNO) ELSE :P57_RADIATION_NO_2 END);               ',
'-- EXCEPTION WHEN  NO_DATA_FOUND THEN NULL;   ',
'-- END;',
'',
'--:P57_PERFORMANCE_TYPE_ID:=''003'';',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13421333303257360
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13420512393257360)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT D.ROWID,',
'         M.RADIATION_NO,         M.RADIATION_DATE,         M.MRNO,         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,         M.DOCTOR_ID,         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR, RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
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
'    INTO :P57_ROWID,',
'         :P57_RADIATION_NO,',
'         :P57_RADIATION_DATE,',
'         :P57_MRNO,',
'         :P57_PATIENT_NAME,',
'         :P57_DISP_AGE,',
'         :P57_DISP_GENDER,',
'         :P57_DOCTOR_ID,',
'         :P57_DISP_DOCTOR,',
'         :P57_DISP_INTENT,',
'         :P57_SITE_ID,',
'         :P57_DISP_SITE,',
'         :P57_SETUP_POSITION_DESC,',
'         :P57_ARM_POSITION_DESC,',
'         :P57_NECK_POSITION_DESC,',
'         :P57_POSITION_INSTRUCTION,',
'         :P57_EVENT_DESC',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.RADIATION_NO = NVL(:P57_RADIATION_NO_2, M.RADIATION_NO)',
'     AND M.MRNO LIKE CASE',
'           WHEN :P57_MRNO IS NOT NULL THEN',
'            ''%'' || :P57_MRNO',
'           ELSE',
'            M.MRNO',
'         END',
'     AND M.RADIOTHERAPY_TYPE = ''T''',
'     AND (:P57_SCHEDULE_SRNO_1 IS NULL OR',
'         D.SITE_ID = (SELECT SITE_ID',
'                         FROM RADIATION.SCHEDULE',
'                        WHERE SR_NO = :P57_SCHEDULE_SRNO_1))',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>13420512393257360
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13420919467257360)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'      SELECT RM.RADIATION_NO,',
'             TO_CHAR(RADIATION_DATE,''DD-MM-RR HH24:MI'')RADIATION_DATE,',
'             MRNO,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(RM.MRNO) PATIENT_NAME,',
'             RADIATION.PKG_RADIATION.GET_PATIENT_AGE(RM.MRNO) DISP_AGE,',
'             HIS.PKG_PATIENT.GET_GENDER(RM.MRNO) DISP_SEX,',
'             DOCTOR_ID,',
'             RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(RM.DOCTOR_ID) DISP_DOCTOR,',
'             HIS.PKG_PATIENT.GET_CONTACT_NUMBER(P_MRNO => RM.MRNO) PATIENT_PHONE_NO',
'             INTO :P57_RADIATION_NO_2,:P57_RADIATION_DATE_1,:P57_MRNO,:P57_PATIENT_NAME_1,:P57_AGE,:P57_SEX,:P57_DOCTOR_ID,:P57_CONSULTANT,:P57_PATIENT_CONTACT',
'        FROM RADIATION.RADIATION_MASTER RM',
'       WHERE RM.RADIATION_NO =(CASE WHEN :P57_SCHEDULE_SRNO IS NOT NULL THEN (SELECT S.RADIATION_NO FROM RADIATION.SCHEDULE S WHERE SR_NO = :P57_SCHEDULE_SRNO)',
'ELSE :P57_RADIATION_NO_2 END)',
'         AND RM.MRNO LIKE CASE',
'       WHEN  :P57_MRNO IS NOT NULL THEN',
'        ''%'' ||  :P57_MRNO',
'       ELSE',
'        rm.MRNO',
'     END',
'       ORDER BY RM.RADIATION_DATE DESC;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13420919467257360
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13422124464257361)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CancelProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT  NUMBER;',
'V_STOP VARCHAR2(1);',
'V_ALERT_TEXT VARCHAR2(4000);',
'EX EXCEPTION;',
'V_ERROR VARCHAR2(200);',
'V_TIMER NUMBER;',
'V_SRNO RADIATION.SCHEDULE_WORKFLOW.SR_NO%TYPE:=APEX_APPLICATION.g_x01;',
'BEGIN',
'',
'    BEGIN',
'        RADIATION.PKG_SCHEDULE.RELEASE_SINGLE_SLOT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                                   P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                   P_SR_NO             => V_SRNO,',
'                                                   P_OBJECT_CODE       => ''S18APX00051'',',
'                                                   P_BYPASS_CHECKS     =>''N'',',
'                                                   P_USER_MRNO         => :GV_USER_MRNO,',
'                                                   P_TERMINAL          => :GV_TERMINAL,',
'                                                   P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                                   P_STOP              => V_STOP);',
'      END;',
'     ',
' IF NVL(V_STOP,''N'') = ''N'' THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => ''Appointment CANCELLED Properly ...'');',
'    APEX_JSON.CLOSE_OBJECT; ',
'',
'ELSE',
'',
'     APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => V_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    ',
'  END IF;',
' exception   ',
' when others then',
'     APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => sqlerrm);',
'    APEX_JSON.CLOSE_OBJECT;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13422124464257361
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13630928432964631)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MigerateProcess'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'EX_CUSTOM EXCEPTION;',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'-- IF :P57_MG_SRNO IS NULL THEN',
'-- 	APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',''New Machine and appointment is not selected, cannot proceed.'');',
'--     RAISE EX_CUSTOM;',
'-- ELSIF :P57_OLD_SRNO IS NULL THEN',
'-- 	APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',''Old Machine and appointment is not selected, cannot proceed.'');',
'--     RAISE EX_CUSTOM;  ',
'-- END IF;',
'--   DISPLAY_ALERT(''STOP'',',
'--                 ''Are u sure, you want to migrate this Appointment ?'');',
'   -- CALL THE PROCEDURE',
'      BEGIN',
'        RADIATION.PKG_SCHEDULE.TRANSFER_SINGLE_SLOT(P_ORGANIZATION_ID   =>:GV_ORGANIZATION_ID,',
'                                                    P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                    P_OLD_SR_NO         => :P57_OLD_SRNO,',
'                                                    P_NEW_SR_NO         => :P57_MG_SRNO,',
'                                                    P_OBJECT_CODE       => ''S18APX00051'',',
'                                                    P_USER_MRNO         => :GV_USER_MRNO,',
'                                                    P_TERMINAL          => :GV_TERMINAL,',
'                                                    P_ALERT_TEXT        => V_ALERT_TEXT,',
'                                                    P_STOP              => V_STOP);',
'      END;',
'  ',
'  ',
'  IF NVL(V_STOP,''N'') = ''N'' THEN',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''success'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => ''Appointment migrated Properly ...'');',
'    APEX_JSON.CLOSE_OBJECT; ',
'',
'ELSE',
'',
'     APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => V_ALERT_TEXT);',
'    APEX_JSON.CLOSE_OBJECT;',
'    ',
'  END IF;',
' exception   ',
' when others then',
'     APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(P_NAME => ''status'', P_VALUE => ''failed'');',
'    APEX_JSON.WRITE(P_NAME => ''message'', P_VALUE => sqlerrm);',
'    APEX_JSON.CLOSE_OBJECT;',
'',
'END;',
'  ',
'--   IF V_STOP = ''Y'' THEN',
'--     APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',V_ALERT_TEXT);',
'--     RAISE EX_CUSTOM;',
'--   END IF;',
'',
'--   IF V_STOP <> ''Y'' AND V_ALERT_TEXT IS NULL THEN',
'--     APEX_UTIL.SET_SESSION_STATE(''P57_ALERT'',''Appointment migrated Properly ...'');',
'--   END IF;',
'-- EXCEPTION',
'--   WHEN EX_CUSTOM THEN',
'--     RAISE_APPLICATION_ERROR(-20007, ''~~~'' || V_ALERT_TEXT || ''~~~'');',
'--   WHEN OTHERS THEN',
'--     V_ALERT_TEXT := ''PROCEDURE NAME:'' ||',
'--                     SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'--                     $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'--                     '' ERROR MESSAGE: '' || SQLERRM;',
'--     RAISE_APPLICATION_ERROR(-20007, ''~~~'' || V_ALERT_TEXT || ''~~~'');',
'-- END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Appointment migrated Properly...'
,p_internal_uid=>13630928432964631
);
wwv_flow_imp.component_end;
end;
/

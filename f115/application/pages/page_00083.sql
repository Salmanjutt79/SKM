prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_name=>'RAD_PERFORMANCE_RAD_MENU'
,p_alias=>'RAD-PERFORMANCE-RAD-MENU'
,p_page_mode=>'MODAL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'td[headers="ACCESSORY_DESCRIPTION"]{',
' font-weight:bold;',
'}',
'td[headers="REMARKS"]{',
' font-weight:bold;',
'}',
'</style>'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P83_UNIT").hide();',
'apex.item("P83_SERVICE_NO").hide();',
'apex.item("P83_SERVICE_STATUS").hide();',
'apex.item("P83_RANK").hide();',
'apex.item("P83_FORMATION").hide();',
'apex.item("P83_NAME2").disable();',
'apex.item("P83_NAME1").disable();',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#history .a-GV-status',
'{',
'display: none;',
'}',
'',
'',
'#isocenter .a-GV-status',
'{',
'display: none;',
'}',
'',
'',
'#fractionhist .a-GV-status',
'{',
'display: none;',
'}',
'',
'#feildrg .a-GV-status',
'{',
'display: none;',
'}',
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
'#P83_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PATIENT_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SEX {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_RADIATION_NO_2 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_RADIATION_DATE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_CONSULTANT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_TREATMENT_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SITE_DISP {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_STATUS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SETUP_POSITION_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_ARM_POSITION_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_NECK_POSITION_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_POSITION_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SPECIAL_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_POSITION_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SPECIAL_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PHYSICIST_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PLAN_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_MACHINE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_FRACTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P83_FRACTION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P83_STATUS_DESCRIPTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_FIRST_CT_SIGN_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_OC_SERIAL_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SCHEDULE_SRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SIGN_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_SECOND_CT_SIGN_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#DESCRIPTION {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_DOSE_FRACTION {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PERFORMED_DOSE {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_REMARKS {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P83_PLAN_ID {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PHY_PLAN_ID {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#isocenter .DESCRIPTION{',
'',
'    font-weight:bold;',
'',
'}',
'',
'#P83_TOTAL_DOSE {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_R_FRACTIONS {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P83_PATIENT_TYPE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PATIENT_MRNO1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_NAME1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PASSWORD1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_MESSAGE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P83_PATIENT_TYPE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PATIENT_MRNO2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_NAME2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_PASSWORD2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P83_MESSAGE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'.a-GV-pageRange{',
'    display:none;',
'}',
'',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1200'
,p_dialog_width=>'1700'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20240923181332'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143147122523031812)
,p_plug_name=>'Plan Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143149019987031831)
,p_plug_name=>'Fraction'
,p_region_name=>'fraction_dt'
,p_parent_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT RADIATION_NO,',
'            SITE_ID,',
'            FRACTION_ID,',
'            ENTRY_DATE,',
'            MACHINE_ID,',
'            TO_CHAR(FRACTION_DATE,''DD-MON-RRRR HH24:MI:SS'') FRACTION_DATE,',
'            DOSE_FRACTION,',
'            PERFORMED_DOSE,',
'            SCHEDULE_SRNO,',
'            OC_SERIAL_NO,',
'            HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY1) FIRST_CT_SIGN_NAME,',
'            HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY2) SECOND_CT_SIGN_NAME,',
'            TO_CHAR(SIGN_DATE,''DD-MON-YYYY HH24:MI:SS'') SIGN_DATE,',
'            STATUS_ID,',
'            RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESCRIPTION,',
'            REMARKS,',
'            PLAN_ID,',
'            PHY_PLAN_ID,',
'            SIMULATION_ID,',
'            PLAN_CHECK_ID,',
'            ANAESTHESIA,',
'            (SELECT D.SPECIAL_INSTRUCTION',
'               FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS D',
'              WHERE D.RADIATION_NO = P.RADIATION_NO',
'                AND D.SITE_ID = P.SITE_ID',
'                AND D.PHASE_NO = TRUNC(P.FRACTION_ID)',
'                AND D.SUB_SITE_ID = 1',
'                AND D.FRACTION_NO =',
'                    (P.FRACTION_ID - TRUNC(P.FRACTION_ID)) * 100) SPECIAL_INSTRUCTION,',
'                    ',
'            (SELECT RADIATION.PKG_RADIATION.GET_MACHINE_DESC(RF.MACHINE_ID)',
'               FROM RADIATION.RAD_PHYSICS RF',
'              WHERE RF.RADIATION_NO = P.RADIATION_NO',
'                AND RF.SITE_ID = P.SITE_ID',
'                AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID) MACHINE,',
'            (SELECT RP.INSTRUCTIONS',
'               FROM RADIATION.RAD_PLAN RP',
'              WHERE RP.RADIATION_NO = P.RADIATION_NO',
'                AND RP.SITE_ID = P.SITE_ID',
'                AND RP.PLAN_ID = P.PLAN_ID) PLAN_REMARKS,',
'            (SELECT RF.REMARKS',
'               FROM RADIATION.RAD_PHYSICS RF',
'              WHERE RF.RADIATION_NO = P.RADIATION_NO',
'                AND RF.SITE_ID = P.SITE_ID',
'                AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID) PHYSICIST_REMARKS,',
'            ROWID',
'       FROM RADIATION.RAD_PERFORMANCE P',
'      WHERE ',
'      RADIATION_NO = :P83_RADIATION_NO_2',
'        AND SITE_ID = NVL(:P83_MASTER_SITE_ID,:P83_SITE_ID)',
'        AND FRACTION_ID = :P83_SCHEDULE_FRACTION_ID',
'        ',
'        --RADIATION_NO = :P83_RADIATION_NO_ND',
'        --AND SITE_ID = :P83_SITE_ID_ND'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P83_RADIATION_NO_2,P83_SCHEDULE_FRACTION_ID,P83_SITE_ID,P83_MASTER_SITE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144047288815361106)
,p_plug_name=>'Performance'
,p_parent_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148527246777019546)
,p_plug_name=>'ISO Center'
,p_region_name=>'isocenter'
,p_parent_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT PI.RADIATION_NO RADIATION_NO,',
'             PI.SITE_ID SITE_ID,',
'             P.FRACTION_ID FRACTION_ID,',
'             P.PHY_PLAN_ID PHY_PLAN_ID,',
'             PI.PHASE_NO PHASE_NO,',
'             PI.ISOCENTER_ID ISOCENTER_ID,',
'             (SELECT RP.DESCRIPTION',
'                FROM RADIATION.RAD_PHYSICS_ISOCENTER RP',
'               WHERE RP.RADIATION_NO = P.RADIATION_NO',
'                 AND RP.SITE_ID = P.SITE_ID',
'                 AND RP.PHY_PLAN_ID = P.PHY_PLAN_ID',
'                 AND RP.ISOCENTER_ID = PI.ISOCENTER_ID) DESCRIPTION,',
'             PI.DOSE_FRACTION DOSE_FRACTION,',
'             (SELECT T.DESCRIPTION',
'                FROM RADIATION.RAD_PHYSICS_ISOCENTER RP,',
'                     RADIATION.TREATMENT_TYPE        T',
'               WHERE RP.RADIATION_NO = P.RADIATION_NO',
'                 AND RP.SITE_ID = P.SITE_ID',
'                 AND RP.PHY_PLAN_ID = P.PHY_PLAN_ID',
'                 AND RP.ISOCENTER_ID = PI.ISOCENTER_ID',
'                 AND RP.TREATMENT_TYPE = T.TREATMENT_TYPE) TREATMENT_TYPE_DESC,',
'             PI.STATUS_ID STATUS_ID,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => PI.STATUS_ID) STATUS_DESC,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(PI.PERFORMED_BY) PERFORMED_BY_NAME,',
'             PI.PERFORMED_DATE,',
'             ''perform'' as Perform,',
'             PI.ROWID',
'            ',
'        FROM RADIATION.RAD_PERFORMANCE           P,',
'             RADIATION.RAD_PERFORMANCE_ISOCENTER PI',
'       WHERE P.RADIATION_NO = :P83_RADIATION_NO_2',
'         AND P.SITE_ID = :P83_SITE_ID',
'         AND P.FRACTION_ID=:P83_SCHEDULE_FRACTION_ID',
'         AND P.RADIATION_NO = PI.RADIATION_NO',
'         AND P.SITE_ID = PI.SITE_ID',
'         AND P.FRACTION_ID = PI.FRACTION_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P83_MASTER_SITE_ID,P83_RADIATION_NO_2,P83_SITE_ID,P83_SCHEDULE_FRACTION_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ISO Center'
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
 p_id=>wwv_flow_imp.id(187586587874008524)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187586734214008525)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187586858135008526)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187586940646008527)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587052772008528)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587106342008529)
,p_name=>'ISOCENTER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOCENTER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(187587188422008530)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587358354008531)
,p_name=>'DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose Fraction'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(187587461162008532)
,p_name=>'TREATMENT_TYPE_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_TYPE_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Treatment Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587522184008533)
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
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587615332008534)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587760503008535)
,p_name=>'PERFORMED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587804054008536)
,p_name=>'PERFORMED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187587965682008537)
,p_name=>'PERFORM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<button type="button" class="t-button t-button--primary perform">Perform</button>'
,p_link_attributes=>'data-radno=&RADIATION_NO. data-siteid=&SITE_ID. data-fractionid=&FRACTION_ID. data-isocenter=&ISOCENTER_ID.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187588009496008538)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(187586584352008523)
,p_internal_uid=>187586584352008523
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
 p_id=>wwv_flow_imp.id(187598322487035620)
,p_interactive_grid_id=>wwv_flow_imp.id(187586584352008523)
,p_static_id=>'477957'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(187598557293035621)
,p_report_id=>wwv_flow_imp.id(187598322487035620)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187599014077035626)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(187586587874008524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187599977572035629)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(187586734214008525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187600791246035633)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(187586858135008526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187601726549035636)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(187586940646008527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187602670481035638)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(187587052772008528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187603502460035641)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(187587106342008529)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>41
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187604416391035644)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(187587188422008530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>199
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187605322103035646)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(187587358354008531)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187606227175035648)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(187587461162008532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187607182332035651)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(187587522184008533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187608080054035653)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(187587615332008534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187608966432035656)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(187587760503008535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187609866919035658)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(187587804054008536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187610763006035664)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(187587965682008537)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187611603943035668)
,p_view_id=>wwv_flow_imp.id(187598557293035621)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(187588009496008538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148559090625044646)
,p_plug_name=>'Fields'
,p_region_name=>'feildrg'
,p_parent_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>11
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'     SITE_ID,',
'     PHY_PLAN_ID,',
'     ISOCENTER_ID,',
'     FIELD_NO,',
'     DESCRIPTION,',
'     ENERGY_ID,',
'     RADIATION.PKG_RADIATION.GET_ENERGY_DESC(P_ENERGY_ID => ENERGY_ID) AS ENERGY_DESC,',
'     GANTARY_ANGLE,',
'     SSD,',
'     M_U,',
'     ROWID',
'FROM RADIATION.RAD_PHYSICS_FIELDS RPF',
'WHERE RPF.RADIATION_NO = :P83_RADIATION_NO_ND',
'AND RPF.SITE_ID = :P83_SITE_ID',
'--AND RPF.PHY_PLAN_ID = :P83_PHY_PLAN_ID',
'AND RPF.ISOCENTER_ID = :P83_ISOCENTER_ID_ND',
'AND EXISTS (SELECT P.PHY_PLAN_ID',
'  FROM RADIATION.RAD_PERFORMANCE P',
' WHERE P.RADIATION_NO = :P83_RADIATION_NO_2',
'   AND P.SITE_ID = :P83_SITE_ID',
'   AND P.FRACTION_ID = :P83_SCHEDULE_FRACTION_ID',
'   AND P.PHY_PLAN_ID = PHY_PLAN_ID);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P83_RADIATION_NO_ND,P83_SITE_ID_ND,P83_PHY_PLAN_ID,P83_ISOCENTER_ID_ND,P83_SITE_ID,P83_SCHEDULE_FRACTION_ID'
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
 p_id=>wwv_flow_imp.id(140708130322856603)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187588194441008540)
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
 p_id=>wwv_flow_imp.id(187588303386008541)
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
 p_id=>wwv_flow_imp.id(187588479947008542)
,p_name=>'PHY_PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHY_PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Phy Plan Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(187588531784008543)
,p_name=>'ISOCENTER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISOCENTER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Isocenter Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(187588661329008544)
,p_name=>'FIELD_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIELD_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Field No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(187588731419008545)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187588798657008546)
,p_name=>'ENERGY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENERGY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Energy Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(187588936236008547)
,p_name=>'ENERGY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENERGY_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Energy '
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(187589075411008548)
,p_name=>'GANTARY_ANGLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GANTARY_ANGLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gantary Angle'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(187589167713008549)
,p_name=>'SSD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SSD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ssd'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(187589271102008550)
,p_name=>'M_U'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'M_U'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'M U'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(187588114094008539)
,p_internal_uid=>187588114094008539
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
 p_id=>wwv_flow_imp.id(187633517448112682)
,p_interactive_grid_id=>wwv_flow_imp.id(187588114094008539)
,p_static_id=>'478309'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(187633718355112682)
,p_report_id=>wwv_flow_imp.id(187633517448112682)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140739573872897807)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(140708130322856603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187634251905112684)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(187588194441008540)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187635110189112687)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(187588303386008541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187636038544112690)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(187588479947008542)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187636968836112692)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(187588531784008543)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187637838067112695)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(187588661329008544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187638777311112697)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(187588731419008545)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>174.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187639587478112700)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(187588798657008546)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187640488360112702)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(187588936236008547)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187641398434112705)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(187589075411008548)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187642286639112707)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(187589167713008549)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69.906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(187643254099112711)
,p_view_id=>wwv_flow_imp.id(187633718355112682)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(187589271102008550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68.391
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(149191407210129612)
,p_plug_name=>'Radiation Accessories'
,p_region_name=>'radacc'
,p_parent_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       SRNO,',
'       PHASE_NO,',
'       ACCESSORY_ID,',
'       RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID) ACCESSORY_DESCRIPTION,',
'       REMARKS,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID)',
'  FROM RADIATION.RAD_ACCESSORIES RA',
' WHERE RA.RADIATION_NO = :P83_RADIATION_NO_2',
'   AND RA.SITE_ID = :P83_SITE_ID',
'   AND RA.TRANS_TYPE = ''CT''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P83_MASTER_SITE_ID,P83_SITE_ID,P83_RADIATION_NO_2'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation Accessories'
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
 p_id=>wwv_flow_imp.id(151496415571200845)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>151496415571200845
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151815825244789919)
,p_db_column_name=>'ACCESSORY_DESCRIPTION'
,p_display_order=>1
,p_column_identifier=>'J'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_static_id=>'ACCESSORY_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151497104250200852)
,p_db_column_name=>'REMARKS'
,p_display_order=>2
,p_column_identifier=>'G'
,p_column_label=>'Instruction'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151496520396200846)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151496638785200847)
,p_db_column_name=>'SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151496780812200848)
,p_db_column_name=>'SRNO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Srno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151496810254200849)
,p_db_column_name=>'PHASE_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phase No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151496968347200850)
,p_db_column_name=>'ACCESSORY_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Accessory Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151497221636200853)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(151497287277200854)
,p_db_column_name=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Radiation.pkg Radiation.get Status Description(p Status Id=&gt;ra.status Id)'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(151794078481686967)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'119914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCESSORY_DESCRIPTION:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144050614685361139)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>180
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(145391644531978712)
,p_plug_name=>'Fraction History'
,p_region_name=>'fractionhist'
,p_region_css_classes=>'highlight appt-list rad-custom-card'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RP.RADIATION_NO,',
'       RP.SITE_ID,',
'       RP.FRACTION_ID,',
'       (RP.FRACTION_Id - trunc(RP.FRACTION_Id)) * 100 FRACTION_NO,',
'       RP.FRACTION_DATE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(RP.STATUS_ID) STATUS,',
'       CASE',
'         WHEN RP.STATUS_ID = ''015'' THEN',
'          RP.PERFORMED_DOSE',
'         ELSE',
'          0',
'       END DOSE,',
'       ROWID ',
'  FROM RADIATION.RAD_PERFORMANCE RP',
' WHERE RP.RADIATION_NO = :P83_RADIATION_NO_2',
'   AND RP.SITE_ID = :P83_SITE_ID;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P83_RADIATION_NO_2,P83_SCHEDULE_SRNO_1,P83_MASTER_SITE_ID,P83_SITE_ID'
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
 p_id=>wwv_flow_imp.id(132162912399943450)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>71
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
 p_id=>wwv_flow_imp.id(140707987568856601)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>81
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(152953625019954438)
,p_name=>'FRACTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>61
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
 p_id=>wwv_flow_imp.id(153372961712078105)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>41
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(153372992464078106)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>51
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(153373180198078107)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'fractionid'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(153373280368078108)
,p_name=>'FRACTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fraction Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>31
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(177671261685424948)
,p_name=>'DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>21
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(151819326777789954)
,p_internal_uid=>151819326777789954
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>false
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
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(153380974398080901)
,p_interactive_grid_id=>wwv_flow_imp.id(151819326777789954)
,p_static_id=>'135783'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(153381096008080903)
,p_report_id=>wwv_flow_imp.id(153380974398080901)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140667351960808930)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(132162912399943450)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109.53800000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140714472013858572)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(140707987568856601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153381657345080904)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(153372961712078105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153382492595080907)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(153372992464078106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153383429270080909)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(153373180198078107)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(153384316216080912)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(153373280368078108)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(154123815977769227)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(152953625019954438)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(185782875718428577)
,p_view_id=>wwv_flow_imp.id(153381096008080903)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(177671261685424948)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(174670048851099607)
,p_plug_name=>'TotalDose'
,p_parent_plug_id=>wwv_flow_imp.id(145391644531978712)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147244369116582761)
,p_plug_name=>'Radiation Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(173671344343102097)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_parent_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>1119
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'FROM PICTURES.HR_PICTURES',
'WHERE MRNO = :P83_MRNO;',
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
 p_id=>wwv_flow_imp.id(139818680913878760)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139819063297878762)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139819473803878762)
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
 p_id=>wwv_flow_imp.id(149194077223129638)
,p_plug_name=>'Radiation Site(s)'
,p_region_name=>'mastersite'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>160
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DESCRIPTION,',
'       D.SITE_ID ID',
'  FROM RADIATION.RADIATION_DETAIL D',
' WHERE D.RADIATION_NO = :P83_RADIATION_NO_2',
'   AND (:P83_SCHEDULE_SRNO_1 IS NULL OR',
'       D.SITE_ID = (SELECT SITE_ID',
'                       FROM RADIATION.SCHEDULE',
'                      WHERE SR_NO = :P83_SCHEDULE_SRNO_1))',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P0_RADIATION_NO,P83_SCHEDULE_SRNO_1'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Radiation Site(s)'
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
 p_id=>wwv_flow_imp.id(151493196378200813)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(151493377902200814)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(151493126407200812)
,p_internal_uid=>151493126407200812
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(151723471309478633)
,p_interactive_grid_id=>wwv_flow_imp.id(151493126407200812)
,p_static_id=>'119208'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(151723593370478633)
,p_report_id=>wwv_flow_imp.id(151723471309478633)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(151724134303478635)
,p_view_id=>wwv_flow_imp.id(151723593370478633)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(151493196378200813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(151724995287478638)
,p_view_id=>wwv_flow_imp.id(151723593370478633)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(151493377902200814)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169907918569201944)
,p_plug_name=>'Radiation History'
,p_region_name=>'history'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) STATUS_DESC,',
'       M.RADIATION_DATE,',
'       ROWID',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P83_MRNO',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'   AND EXISTS (SELECT 1',
'       FROM RADIATION.RAD_PERFORMANCE P',
'       WHERE P.RADIATION_NO = M.RADIATION_NO);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P83_MRNO,P83_RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(132161453193943435)
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
 p_id=>wwv_flow_imp.id(132161524839943436)
,p_name=>'MRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRNO'
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
 p_id=>wwv_flow_imp.id(132161654208943437)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_attributes=>'readonly="readonly;" u-bold'
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
 p_id=>wwv_flow_imp.id(132161794053943438)
,p_name=>'RADIATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Radiation Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;" u-bold'
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
 p_id=>wwv_flow_imp.id(140708098213856602)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(132161314860943434)
,p_internal_uid=>132161314860943434
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>150
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(140238538773862749)
,p_interactive_grid_id=>wwv_flow_imp.id(132161314860943434)
,p_static_id=>'1402386'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(140238752079862749)
,p_report_id=>wwv_flow_imp.id(140238538773862749)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140239213019862755)
,p_view_id=>wwv_flow_imp.id(140238752079862749)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(132161453193943435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140240157045862759)
,p_view_id=>wwv_flow_imp.id(140238752079862749)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(132161524839943436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140241045911862761)
,p_view_id=>wwv_flow_imp.id(140238752079862749)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(132161654208943437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140252777637877807)
,p_view_id=>wwv_flow_imp.id(140238752079862749)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(132161794053943438)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(140728197385882877)
,p_view_id=>wwv_flow_imp.id(140238752079862749)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(140708098213856602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272477963082087231)
,p_plug_name=>'Sign'
,p_region_name=>'sign_rg'
,p_region_css_classes=>'js-dialog-size1200x450'
,p_region_template_options=>'js-dialog-autoheight:t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>170
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272479534634087246)
,p_plug_name=>'First Technologist'
,p_parent_plug_id=>wwv_flow_imp.id(272477963082087231)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272479641726087247)
,p_plug_name=>'Second Technologist'
,p_parent_plug_id=>wwv_flow_imp.id(272477963082087231)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139820971460878768)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(272479534634087246)
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
 p_id=>wwv_flow_imp.id(139823814976878774)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(272479641726087247)
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
 p_id=>wwv_flow_imp.id(139803278910878689)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(144050614685361139)
,p_button_name=>'Fetch'
,p_button_static_id=>'fetch_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139803613938878691)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(144050614685361139)
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
 p_id=>wwv_flow_imp.id(139804022700878691)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(144050614685361139)
,p_button_name=>'Save'
,p_button_static_id=>'save_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139804468001878691)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(144050614685361139)
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
 p_id=>wwv_flow_imp.id(139804861308878691)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(144050614685361139)
,p_button_name=>'Create'
,p_button_static_id=>'create_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139805299528878692)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(144050614685361139)
,p_button_name=>'Dispose'
,p_button_static_id=>'dis_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_button_position=>'DELETE'
,p_confirm_message=>'Are you sure. you want to delete this performance'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140708448559856606)
,p_name=>'P83_IS_RADIATION_MANAGER'
,p_item_sequence=>190
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   ',
'    SELECT COUNT(1)',
'      FROM SECURITY.MEMBER',
'     WHERE USERID = :GV_USER_ID',
'       AND GROUPID = ''G11572'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143156244747031958)
,p_name=>'P83_DOCTOR_ID'
,p_item_sequence=>1189
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143175394772775987)
,p_name=>'P83_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143178168195032059)
,p_name=>'P83_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>163
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143178319023032060)
,p_name=>'P83_SITE_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>173
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143178430728032061)
,p_name=>'P83_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Fraction Id:</p></b>'
,p_source=>'FRACTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143178456752032062)
,p_name=>'P83_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143178608289032063)
,p_name=>'P83_MACHINE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>183
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'MACHINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143178714133032064)
,p_name=>'P83_FRACTION_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Fraction Date:</p></b>'
,p_format_mask=>'DD-MON-RRRR HH24:MI:SS'
,p_source=>'FRACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'null'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143179054295032067)
,p_name=>'P83_SCHEDULE_SRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>73
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">SRNO:</p></b>'
,p_source=>'SCHEDULE_SRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(143179102763032068)
,p_name=>'P83_OC_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>63
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Order Key:</p></b>'
,p_source=>'OC_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(143179385579032071)
,p_name=>'P83_SIGN_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>83
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Sign Date:</p></b>'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'SIGN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(143179459334032072)
,p_name=>'P83_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>193
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143179979028032077)
,p_name=>'P83_SIMULATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>203
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'SIMULATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143180121856032078)
,p_name=>'P83_PLAN_CHECK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>213
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'PLAN_CHECK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143180253888032079)
,p_name=>'P83_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>223
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143207410329032161)
,p_name=>'P83_DOSE_FRACTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>123
,p_item_plug_id=>wwv_flow_imp.id(144047288815361106)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Planned Dose:</p></b>'
,p_source=>'DOSE_FRACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(143207528305032162)
,p_name=>'P83_PERFORMED_DOSE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>133
,p_item_plug_id=>wwv_flow_imp.id(144047288815361106)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Performed Dose:</p></b>'
,p_source=>'PERFORMED_DOSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(143208326418032170)
,p_name=>'P83_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>143
,p_item_plug_id=>wwv_flow_imp.id(144047288815361106)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
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
 p_id=>wwv_flow_imp.id(143208396835032171)
,p_name=>'P83_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_imp.id(144047288815361106)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Plan Id:</p></b>'
,p_source=>'PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(143208539332032172)
,p_name=>'P83_PHY_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>163
,p_item_plug_id=>wwv_flow_imp.id(144047288815361106)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Physics Plan Id:</p></b>'
,p_source=>'PHY_PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
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
 p_id=>wwv_flow_imp.id(144067007756361282)
,p_name=>'P83_DISP_MRNO1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144069872559361286)
,p_name=>'P83_DISP_MRNO2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145415037381978879)
,p_name=>'P83_MACHINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Machine:</p></b>'
,p_source=>'MACHINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145415129671978880)
,p_name=>'P83_PLAN_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Plan Remarks:</p></b>'
,p_source=>'PLAN_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(145415191931978881)
,p_name=>'P83_PHYSICIST_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Physicist Remarks:</p></b>'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(145420193299978934)
,p_name=>'P83_FIRST_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">First Technologist:</p></b>'
,p_source=>'FIRST_CT_SIGN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145420339492978935)
,p_name=>'P83_SECOND_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>93
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Second Technologist:</p></b>'
,p_source=>'SECOND_CT_SIGN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'null'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145420356440978936)
,p_name=>'P83_STATUS_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_source=>'STATUS_DESCRIPTION'
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
 p_id=>wwv_flow_imp.id(145420542566978937)
,p_name=>'P83_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>243
,p_item_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149251755244129939)
,p_name=>'P83_RADIATION_NO_ND'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149251782657129940)
,p_name=>'P83_SITE_ID_ND'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149251951544129941)
,p_name=>'P83_FRACTION_NO_ND'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149252039854129942)
,p_name=>'P83_ISOCENTER_ID_ND'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(149255800150129980)
,p_name=>'P83_MASTER_SITE_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151877111714790256)
,p_name=>'P83_SCHEDULE_SRNO_1'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151877240454790257)
,p_name=>'P83_SCHEDULE_EVENT_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151877314933790258)
,p_name=>'P83_ALERT'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151879641644790281)
,p_name=>'P83_SCHEDULE_FRACTION_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169364308635252584)
,p_name=>'P83_SIGN_STATUS'
,p_item_sequence=>150
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171167407302886677)
,p_name=>'P83_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">MRNO:</p></b>'
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
 p_id=>wwv_flow_imp.id(171167484246886678)
,p_name=>'P83_PATIENT_NAME_1'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
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
 p_id=>wwv_flow_imp.id(171167635200886679)
,p_name=>'P83_SEX'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Sex:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(171167709046886680)
,p_name=>'P83_AGE'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Age:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(171167850317886681)
,p_name=>'P83_UNIT'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171167969004886682)
,p_name=>'P83_SERVICE_NO'
,p_item_sequence=>1139
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168021447886683)
,p_name=>'P83_SERVICE_STATUS'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168132946886684)
,p_name=>'P83_RANK'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168195238886685)
,p_name=>'P83_FORMATION'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168280702886686)
,p_name=>'P83_RADIATION_NO_2'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168377892886687)
,p_name=>'P83_RADIATION_DATE_1'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168549384886688)
,p_name=>'P83_CONSULTANT'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168609835886689)
,p_name=>'P83_TREATMENT_INTENT'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168674844886690)
,p_name=>'P83_SITE_DISP'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168776757886691)
,p_name=>'P83_STATUS'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(171168952455886692)
,p_name=>'P83_SITE_ID'
,p_item_sequence=>1199
,p_item_plug_id=>wwv_flow_imp.id(147244369116582761)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174677440131099740)
,p_name=>'P83_TOTAL_DOSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(174670048851099607)
,p_prompt=>'<b><p style="color:#00008B">Total Dose:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>8
,p_grid_column=>4
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176933415310499007)
,p_name=>'P83_SETUP_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Setup Position:</p></b>'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(176933462288499008)
,p_name=>'P83_ARM_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Arm Position:</p></b>'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(176933648995499009)
,p_name=>'P83_POSITION_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Pos. Instruction:</p></b>'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly'
,p_colspan=>7
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
 p_id=>wwv_flow_imp.id(176933728041499010)
,p_name=>'P83_SPECIAL_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_item_source_plug_id=>wwv_flow_imp.id(143149019987031831)
,p_prompt=>'<b><p style="color:#00008B">Special Instruction:</p></b>'
,p_source=>'SPECIAL_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(176933783140499011)
,p_name=>'P83_NECK_POSITION_DESC'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(143147122523031812)
,p_prompt=>'<b><p style="color:#00008B">Neck Position:</p></b>'
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
 p_id=>wwv_flow_imp.id(178792083655058642)
,p_name=>'P83_R_FRACTIONS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(174670048851099607)
,p_prompt=>'<b><p style="color:#00008B"> Performed / Total Fraction(s):</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>10
,p_grid_column=>2
,p_grid_label_column_span=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272502740510087417)
,p_name=>'P83_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272502868730087418)
,p_name=>'P83_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
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
 p_id=>wwv_flow_imp.id(272502943235087419)
,p_name=>'P83_PATIENT_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
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
 p_id=>wwv_flow_imp.id(272503089174087420)
,p_name=>'P83_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
,p_prompt=>'Name1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="color:red"'
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272503150267087421)
,p_name=>'P83_PASSWORD1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272503321504087422)
,p_name=>'P83_MESSAGE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(272479534634087246)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272511431120087436)
,p_name=>'P83_MRNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272511524070087437)
,p_name=>'P83_PATIENT_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
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
 p_id=>wwv_flow_imp.id(272511590384087438)
,p_name=>'P83_PATIENT_MRNO2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
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
 p_id=>wwv_flow_imp.id(272511670108087439)
,p_name=>'P83_NAME2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="readonly,color:red"'
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272511827150087440)
,p_name=>'P83_PASSWORD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(272511967860087441)
,p_name=>'P83_MESSAGE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(272479641726087247)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(453866994646663992)
,p_name=>'P83_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(272477963082087231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139869967650878960)
,p_name=>'DA_PERFORM_ISOCENTER'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.perform'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139870426014878963)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_RADIATION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(this.triggeringElement).parent().data(''radno'')',
'',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139870959898878966)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_SITE_ID_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''siteid'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139871412864878966)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_FRACTION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''fractionid'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139871946696878966)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_ISOCENTER_ID_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''isocenter'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139872492212878966)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert($v("P83_RADIATION_NO_ND"))',
'alert($v("P83_SITE_ID_ND"))',
'alert($v("P83_FRACTION_NO_ND"))',
'alert($v("P83_ISOCENTER_ID_ND"))'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139872973536878967)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(10);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00145.PERFORM_ISOCENTER(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                              P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                              P_RADIATION_NO      => :P83_RADIATION_NO_ND,',
'                                              P_SITE_ID           => NVL(:P83_SITE_ID_ND,:P83_SITE_ID),',
'                                              P_FRACTION_ID       => :P83_FRACTION_NO_ND,',
'                                              P_ISOCENTER_ID      => :P83_ISOCENTER_ID_ND,',
'                                              P_OBJECT_CODE       => ''S18APX00039'',',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_USER_MRNO         => :GV_USER_MRNO,',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'  -------------',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
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
,p_attribute_02=>'P83_RADIATION_NO_ND,P83_SITE_ID_ND,P83_FRACTION_NO_ND,P83_ISOCENTER_ID_ND,P83_SITE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139873452135878967)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148527246777019546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139873914106878968)
,p_event_id=>wwv_flow_imp.id(139869967650878960)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148559090625044646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139874395543878968)
,p_name=>'SetMasterSiteID1'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(149194077223129638)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139874800124878968)
,p_event_id=>wwv_flow_imp.id(139874395543878968)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P83_MASTER_SITE_ID'',_.mastersite.ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139875344305878968)
,p_event_id=>wwv_flow_imp.id(139874395543878968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, i_mastersiteid,',
'',
'    model = this.data.model;',
'',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'',
'    i_mastersiteid = model.getValue(this.data.selectedRecords[i], "ID");',
'',
'',
'}',
'',
'apex.item("P83_MASTER_SITE_ID").setValue(i_mastersiteid);'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139875738050878968)
,p_name=>'SetScheduleFractionId'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(145391644531978712)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139877254643878969)
,p_event_id=>wwv_flow_imp.id(139875738050878968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P83_SCHEDULE_FRACTION_ID'',_.fractionhist.FRACTION_ID);',
'$s(''P83_SITE_ID_ND'',_.fractionhist.SITE_ID);',
'$s(''P83_RADIATION_NO_ND'',_.fractionhist.RADIATION_NO);',
'',
'//apex.region("isocenter").refresh();',
'//apex.region("feildrg").refresh();',
'//apex.region("fraction_dt").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139877729082878970)
,p_event_id=>wwv_flow_imp.id(139875738050878968)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         FRACTION_ID,',
'         ENTRY_DATE,',
'         MACHINE_ID,',
'         TO_CHAR(FRACTION_DATE,''DD-MON-YYYY HH24:MI:SS'') FRACTION_DATE,',
'         DOSE_FRACTION,',
'         PERFORMED_DOSE,',
'         SCHEDULE_SRNO,',
'         OC_SERIAL_NO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY1) FIRST_CT_SIGN_NAME,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY2) SECOND_CT_SIGN_NAME,',
'         TO_CHAR(SIGN_DATE,''DD-MON-YYYY HH24:MI:SS'') SIGN_DATE,',
'         STATUS_ID,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESCRIPTION,',
'         REMARKS,',
'         PLAN_ID,',
'         PHY_PLAN_ID,',
'         SIMULATION_ID,',
'         PLAN_CHECK_ID,',
'         ANAESTHESIA,',
'         (SELECT D.SPECIAL_INSTRUCTION',
'            FROM RADIATION.RADIATION_SPECIAL_INSTRUCTIONS D',
'           WHERE D.RADIATION_NO = P.RADIATION_NO',
'             AND D.SITE_ID = P.SITE_ID',
'             AND D.PHASE_NO = TRUNC(P.FRACTION_ID)',
'             AND D.SUB_SITE_ID = 1',
'             AND D.FRACTION_NO =',
'                 (P.FRACTION_ID - TRUNC(P.FRACTION_ID)) * 100) SPECIAL_INSTRUCTION,',
'         (SELECT RADIATION.PKG_RADIATION.GET_MACHINE_DESC(RF.MACHINE_ID)',
'            FROM RADIATION.RAD_PHYSICS RF',
'           WHERE RF.RADIATION_NO = P.RADIATION_NO',
'             AND RF.SITE_ID = P.SITE_ID',
'             AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID) MACHINE,',
'         (SELECT RP.INSTRUCTIONS',
'            FROM RADIATION.RAD_PLAN RP',
'           WHERE RP.RADIATION_NO = P.RADIATION_NO',
'             AND RP.SITE_ID = P.SITE_ID',
'             AND RP.PLAN_ID = P.PLAN_ID) PLAN_REMARKS,',
'         (SELECT RF.REMARKS',
'            FROM RADIATION.RAD_PHYSICS RF',
'           WHERE RF.RADIATION_NO = P.RADIATION_NO',
'             AND RF.SITE_ID = P.SITE_ID',
'             AND RF.PHY_PLAN_ID = P.PHY_PLAN_ID) PHYSICIST_REMARKS,',
'         ROWID',
'    INTO :P83_RADIATION_NO_1,',
'         :P83_SITE_ID_1,',
'         :P83_FRACTION_ID,',
'         :P83_ENTRY_DATE,',
'         :P83_MACHINE_ID,',
'         :P83_FRACTION_DATE,',
'         :P83_DOSE_FRACTION,',
'         :P83_PERFORMED_DOSE,',
'         :P83_SCHEDULE_SRNO,',
'         :P83_OC_SERIAL_NO,',
'         :P83_FIRST_CT_SIGN_NAME,',
'         :P83_SECOND_CT_SIGN_NAME,',
'         :P83_SIGN_DATE,',
'         :P83_STATUS_ID,',
'         :P83_STATUS_DESCRIPTION,',
'         :P83_REMARKS,',
'         :P83_PLAN_ID,',
'         :P83_PHY_PLAN_ID,',
'         :P83_SIMULATION_ID,',
'         :P83_PLAN_CHECK_ID,',
'         :P83_ANAESTHESIA,',
'         :P83_SPECIAL_INSTRUCTION,',
'         :P83_MACHINE,',
'         :P83_PLAN_REMARKS,',
'         :P83_PHYSICIST_REMARKS,',
'         :P83_ROWID_1',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P83_RADIATION_NO_2',
'     AND SITE_ID = :P83_SITE_ID',
'     AND FRACTION_ID = :P83_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P83_MASTER_SITE_ID,P83_SCHEDULE_FRACTION_ID,P83_SITE_ID,P83_RADIATION_NO_2'
,p_attribute_03=>'P83_RADIATION_NO_1,P83_SITE_ID_1,P83_ENTRY_DATE,P83_MACHINE_ID,P83_FRACTION_DATE,P83_DOSE_FRACTION,P83_PERFORMED_DOSE,P83_SCHEDULE_SRNO,P83_OC_SERIAL_NO,P83_FIRST_CT_SIGN_NAME,P83_SECOND_CT_SIGN_NAME,P83_SIGN_DATE,P83_STATUS_ID,P83_STATUS_DESCRIPTION'
||',P83_REMARKS,P83_PLAN_ID,P83_PHY_PLAN_ID,P83_SIMULATION_ID,P83_PLAN_CHECK_ID,P83_ANAESTHESIA,P83_MACHINE,P83_PLAN_REMARKS,P83_PHYSICIST_REMARKS,P83_ROWID_1,P83_FRACTION_ID,P83_SPECIAL_INSTRUCTION'
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
 p_id=>wwv_flow_imp.id(139876289098878969)
,p_event_id=>wwv_flow_imp.id(139875738050878968)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_TOT_NO_OF_FRACTION    RADIATION.RADIATION_BOOST_PLAN.NO_OF_FRACTION%TYPE;',
'  L_NEXT_FRACTION_ID      RADIATION.RAD_PERFORMANCE.FRACTION_ID%TYPE;',
'  L_PERFORMED_FRACTION_ID RADIATION.RAD_PERFORMANCE.FRACTION_ID%TYPE;',
'  L_PERFORMED_FRACTION_NO NUMBER;',
'',
'BEGIN',
'  BEGIN',
'    SELECT SUM(RP.PERFORMED_DOSE)',
'      INTO :P83_TOTAL_DOSE',
'      FROM RADIATION.RAD_PERFORMANCE RP',
'     WHERE RP.RADIATION_NO = :P83_RADIATION_NO_2',
'       AND RP.SITE_ID = :P83_SITE_ID',
'       AND RP.STATUS_ID = ''015'';',
'  ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  BEGIN',
'    /*SELECT NVL(RADIATION.PKG_S18FRM00133.GET_TOTAL_FRACTION_DISP(P_RADIATION_NO => RS.RADIATION_NO,',
'                                                                P_SITE_ID      => RS.SITE_ID,',
'                                                                P_FRACTION_ID  => RS.FRACTION_ID),',
'              ''0/0'')',
'    ',
'     INTO :P83_R_FRACTIONS',
'     FROM RADIATION.SCHEDULE RS',
'    WHERE RS.SR_NO = :P83_SCHEDULE_SRNO_1;*/',
'  ',
'    L_NEXT_FRACTION_ID := RADIATION.Pkg_Radiation.GET_NEXT_FRACTION_ID(P_RADIATION_NO => :P83_RADIATION_NO_2,',
'                                                                       P_SITE_ID      => :P83_SITE_ID);',
'  ',
'    L_TOT_NO_OF_FRACTION := RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => :P83_RADIATION_NO_2,',
'                                                                      P_SITE_ID      => :P83_SITE_ID,',
'                                                                      P_PHASE_NO     => TRUNC(:P83_SCHEDULE_FRACTION_ID));',
'  ',
'    BEGIN',
'      SELECT MAX(P.FRACTION_ID)',
'        INTO L_PERFORMED_FRACTION_ID',
'        FROM RADIATION.RAD_PERFORMANCE P',
'       WHERE P.RADIATION_NO = :P83_RADIATION_NO_2',
'         AND P.SITE_ID = :P83_SITE_ID',
'         AND TRUNC(P.FRACTION_ID) = TRUNC(:P83_SCHEDULE_FRACTION_ID)',
'         AND P.STATUS_ID = ''015'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  ',
'    L_PERFORMED_FRACTION_NO := (L_PERFORMED_FRACTION_ID -',
'                               TRUNC(:P83_SCHEDULE_FRACTION_ID)) * 100;',
'  ',
'    :P83_R_FRACTIONS := NVL(L_PERFORMED_FRACTION_NO, 0) || ''/'' ||',
'                        L_TOT_NO_OF_FRACTION;',
'  ',
'  EXCEPTION',
'  ',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P83_RADIATION_NO_2,P83_MASTER_SITE_ID,P83_SITE_ID,P83_SCHEDULE_SRNO_1'
,p_attribute_03=>'P83_TOTAL_DOSE,P83_R_FRACTIONS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140708502314856607)
,p_event_id=>wwv_flow_imp.id(139875738050878968)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var statusId = $v("P83_STATUS_ID");',
'var isRadiationManager = $v("P83_IS_RADIATION_MANAGER");',
'',
'if (statusId === ''020'') {',
'    apex.item("sign_btn").enable();',
'    apex.item("dis_btn").enable();',
'    apex.item("create_btn").disable();',
'    apex.item("fetch_btn").disable();',
'} else if (statusId === null || statusId === '''') {',
'    apex.item("create_btn").enable();',
'    apex.item("sign_btn").disable();',
'    apex.item("dis_btn").disable();',
'    apex.item("fetch_btn").disable();',
'    apex.item("save_btn").disable();',
'} else if (statusId === ''015'') {',
'    apex.item("fetch_btn").enable();',
'    apex.item("save_btn").disable();',
'    apex.item("sign_btn").disable();',
'    apex.item("dis_btn").disable();',
'    apex.item("create_btn").disable();',
'} else if (statusId === ''248'') {',
'    apex.item("save_btn").enable();',
'    apex.item("sign_btn").disable();',
'    apex.item("dis_btn").disable();',
'    apex.item("create_btn").disable();',
'    apex.item("fetch_btn").disable();',
'}',
'',
'// Enable or disable fetch based on P83_IS_RADIATION_MANAGER',
'if (isRadiationManager > ''0'') {',
'    apex.item("fetch_btn").enable();',
'} else {',
'    apex.item("fetch_btn").disable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139878144874878970)
,p_name=>'ReturnToDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139823814976878774)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139878646789878970)
,p_event_id=>wwv_flow_imp.id(139878144874878970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(272477963082087231)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139879011490878970)
,p_name=>'sign_btn'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139820971460878768)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139879522483878971)
,p_event_id=>wwv_flow_imp.id(139879011490878970)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD  VARCHAR2(25) := :P83_PASSWORD1;',
'  USERPASSWORD2  VARCHAR2(25) := :P83_PASSWORD2;',
'  CURRENTCHAR   NUMBER(4);',
'  NEWPASSWORD   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG     SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN         NUMBER;',
'',
'BEGIN  ',
':P83_MESSAGE1 := NULL;',
':P83_MESSAGE2 := NULL;',
':P83_SIGN_STATUS := NULL;',
'  IF :P83_PATIENT_MRNO1 IS NULL THEN',
'    :P83_MESSAGE1:=''Please enter Employee Code'';',
'    RETURN;',
'    ELSIF :P83_PATIENT_MRNO2 IS NULL THEN',
'    :P83_MESSAGE2:=''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P83_PASSWORD1 IS NULL THEN',
'    :P83_MESSAGE1:=''Please enter Password'';',
'    RETURN;',
'    ELSIF :P83_PASSWORD2 IS NULL THEN',
'    :P83_MESSAGE2:=''Please enter Password'';',
'    RETURN;  ',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P83_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD2, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P83_DISP_MRNO2',
'       AND ACTIVE = ''Y'';',
'  ',
'    IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'      FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'',
'      FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'      NewPassword := RTRIM(LTRIM(NEWPASSWORD));',
'      NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'',
'    ELSE',
'      NewPassword := his.get_enc_pass(UserPassword);',
'      NEWPASSWORD2 := his.get_enc_pass(USERPASSWORD2);',
'    END IF;',
'  ',
'    IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/ THEN',
'    :P83_MESSAGE1:=''Incorrect Password'';',
'     RETURN;',
'    ELSIF NEWPASSWORD2<>SAVEDPASSWORD2 THEN',
'    :P83_MESSAGE2:=''Incorrect Password'';',
'     RETURN; ',
'    ELSE',
'    ',
'    ',
'  --END IF;',
'',
'--IF F_IS_AUTHORIZED(:P83_MRNO1, :P83_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:P83_MRNO2, :P83_PASSWORD2, ''2'') THEN',
'    ',
'DECLARE',
'    V_ALERT_TEXT VARCHAR2(4000);',
'    V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00145.SIGN_PERFORMANCE',
'(',
'P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'P_RADIATION_NO => :P83_RADIATION_NO_2,',
'P_SITE_ID => NVL(:P83_MASTER_SITE_ID,:P83_SITE_ID),',
'P_FRACTION_ID => :P83_FRACTION_ID,',
'P_SCHEDULE_SRNO => :P83_SCHEDULE_SRNO_1,',
'P_SCHEDULE_EVENT_ID => NVL(:P83_SCHEDULE_EVENT_ID,''353''),',
'P_FIRST_TECH => :P83_DISP_MRNO1,',
'P_SECOND_TECH  => :P83_DISP_MRNO2,',
'P_USER_MRNO => :GV_USER_MRNO,',
'P_OBJECT_CODE  => ''S18APX00039'',',
'P_TERMINAL     => :GV_TERMINAL,',
'P_ALERT_TEXT   => V_ALERT_TEXT,',
'P_STOP         => V_STOP',
');',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P83_MESSAGE1:= V_alert_text;',
'          :P83_SIGN_STATUS := ''F'';',
'          RETURN;',
'        ELSE',
'        :P83_MESSAGE1:= ''Record SIGNED Properly ...'';',
'        :P83_SIGN_STATUS := ''S'';',
'        END IF;',
'      END;',
'    END IF;',
'    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P83_PASSWORD1,P83_PASSWORD2,P83_PATIENT_MRNO1,P83_PATIENT_MRNO2,P83_MASTER_SITE_ID,P83_SCHEDULE_SRNO_1,P83_SCHEDULE_EVENT_ID,P83_DISP_MRNO1,P83_DISP_MRNO2,P83_SITE_ID,P83_FRACTION_ID,P83_MESSAGE1,P83_MESSAGE2,P83_SIGN_STATUS'
,p_attribute_03=>'P83_MESSAGE1,P83_MESSAGE2,P83_SIGN_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139880068030878972)
,p_event_id=>wwv_flow_imp.id(139879011490878970)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P83_MESSAGE1.'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P83_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139880563348878972)
,p_event_id=>wwv_flow_imp.id(139879011490878970)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY1) FIRST_CT_SIGN_NAME,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY2) SECOND_CT_SIGN_NAME,',
'         TO_CHAR(SIGN_DATE, ''DD-MON-YYYY HH24:MI:SS'') SIGN_DATE,',
'         STATUS_ID,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESCRIPTION',
'  ',
'    INTO :P83_FIRST_CT_SIGN_NAME,',
'         :P83_SECOND_CT_SIGN_NAME,',
'         :P83_SIGN_DATE,',
'         :P83_STATUS_ID,',
'         :P83_STATUS_DESCRIPTION',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P83_RADIATION_NO_2',
'     AND SITE_ID = NVL(:P83_MASTER_SITE_ID, :P83_SITE_ID)',
'     AND FRACTION_ID = :P83_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P83_RADIATION_NO_2,P83_MASTER_SITE_ID,P83_SITE_ID,P83_SCHEDULE_FRACTION_ID'
,p_attribute_03=>'P83_FIRST_CT_SIGN_NAME,P83_SECOND_CT_SIGN_NAME,P83_SIGN_DATE,P83_STATUS_ID,P83_STATUS_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139881084597878972)
,p_event_id=>wwv_flow_imp.id(139879011490878970)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P83_MESSAGE1.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P83_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139881553126878974)
,p_event_id=>wwv_flow_imp.id(139879011490878970)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P83_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139881950288878974)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_DISP_MRNO1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139882487956878974)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P83_DISP_MRNO1 IS NOT NULL THEN',
'    :P83_PATIENT_TYPE1 := substr(:P83_DISP_MRNO1, 1, 6);',
'    :P83_PATIENT_MRNO1 := LTRIM(SUBSTR(:P83_DISP_MRNO1, 7), ''0'');',
'    :P83_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P83_DISP_MRNO1);',
'--  END IF;',
'END;',
'-- BEGIN',
'--   IF :P83_DISP_MRNO2 IS NOT NULL THEN',
'--     :P83_PATIENT_TYPE2 := substr(:P83_DISP_MRNO2, 1, 6);',
'--     :P83_PATIENT_MRNO2 := LTRIM(SUBSTR(:P83_DISP_MRNO2, 7), ''0'');',
'--     :P83_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P83_DISP_MRNO2);',
'--   END IF;',
'-- END;',
'',
''))
,p_attribute_02=>'P83_DISP_MRNO1'
,p_attribute_03=>'P83_PATIENT_TYPE1,P83_PATIENT_MRNO1,P83_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139882914165878974)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_PASSWORD1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139883432738878975)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P83_PATIENT_TYPE1 IS NOT NULL AND :P83_PATIENT_MRNO1 IS NOT NULL THEN',
':P83_DISP_MRNO1 := :P83_PATIENT_TYPE1 ||LPAD(:P83_PATIENT_MRNO1, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P83_DISP_MRNO1,P83_PATIENT_TYPE1,P83_PATIENT_MRNO1'
,p_attribute_03=>'P83_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139883903367878975)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P83_ERROR := NULL;',
'  IF :P83_PATIENT_MRNO1 IS NOT NULL THEN',
'    :P83_DISP_MRNO1 := :P83_PATIENT_TYPE1 || LPAD(:P83_PATIENT_MRNO1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P83_DISP_MRNO1), ''N'') = ''N'' THEN',
'      :P83_ERROR        := ''This is not an active employee.'';',
'      :P83_PATIENT_MRNO1 := NULL;',
'      :P83_DISP_MRNO1    := NULL;',
'      :P83_NAME1        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P83_NAME1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P83_DISP_MRNO1',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P83_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P83_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P83_ERROR,P83_PATIENT_MRNO1,P83_PATIENT_TYPE1,P83_DISP_MRNO1,P83_NAME1'
,p_attribute_03=>'P83_ERROR,P83_PATIENT_MRNO1,P83_PATIENT_TYPE1,P83_DISP_MRNO1,P83_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139884473438878975)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P83_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P83_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139884985847878975)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P83_NAME1:= his.pkg_patient.GET_PATIENT_NAME(:P83_DISP_MRNO1);'
,p_attribute_02=>'P83_DISP_MRNO1'
,p_attribute_03=>'P83_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P83_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139885422421878976)
,p_event_id=>wwv_flow_imp.id(139881950288878974)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_NAME1'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P83_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139885890359878976)
,p_name=>'Get-Patient-Code_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_PATIENT_MRNO2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139886342596878977)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P83_ERROR := NULL;',
'  IF :P83_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P83_DISP_MRNO2 := :P83_PATIENT_TYPE2 || LPAD(:P83_PATIENT_MRNO2, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P83_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P83_ERROR        := ''This is not an active employee.'';',
'      :P83_PATIENT_MRNO2 := NULL;',
'      :P83_DISP_MRNO2    := NULL;',
'      :P83_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P83_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P83_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P83_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P83_ERROR,P83_PATIENT_MRNO2,P83_PATIENT_TYPE2,P83_DISP_MRNO2,P83_NAME2'
,p_attribute_03=>'P83_ERROR,P83_PATIENT_MRNO2,P83_PATIENT_TYPE2,P83_DISP_MRNO2,P83_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139886851005878977)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P83_DISP_MRNO2 IS NOT NULL THEN',
'    :P83_PATIENT_TYPE2 := substr(:P83_DISP_MRNO2, 1, 6);',
'    :P83_PATIENT_MRNO2 := LTRIM(SUBSTR(:P83_DISP_MRNO2, 7), ''0'');',
'    :P83_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P83_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P83_DISP_MRNO2'
,p_attribute_03=>'P83_PATIENT_TYPE2,P83_PATIENT_MRNO2,P83_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139887351190878977)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139887805102878977)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P83_PATIENT_TYPE2 IS NOT NULL AND :P83_PATIENT_MRNO2 IS NOT NULL THEN',
':P83_DISP_MRNO2 := :P83_PATIENT_TYPE2 ||LPAD(:P83_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P83_DISP_MRNO1,P83_PATIENT_TYPE1,P83_PATIENT_MRNO1'
,p_attribute_03=>'P83_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139888386450878977)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P83_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P83_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139888825007878978)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P83_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P83_DISP_MRNO2);'
,p_attribute_02=>'P83_DISP_MRNO2'
,p_attribute_03=>'P83_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P83_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139889343748878978)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P83_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139889824621878979)
,p_event_id=>wwv_flow_imp.id(139885890359878976)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P83_PASSWORD2").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139890272989878979)
,p_name=>'ClearItems'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139890715224878979)
,p_event_id=>wwv_flow_imp.id(139890272989878979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_MESSAGE1,P83_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139891288499878979)
,p_event_id=>wwv_flow_imp.id(139890272989878979)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P83_DISP_MRNO2:=:GV_USER_MRNO;',
':P83_DISP_MRNO1:=:GV_USER_MRNO;'))
,p_attribute_03=>'P83_DISP_MRNO2,P83_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139891688628878980)
,p_name=>'close_dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139804468001878691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139892124538878980)
,p_event_id=>wwv_flow_imp.id(139891688628878980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139892561001878981)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139893042751878981)
,p_event_id=>wwv_flow_imp.id(139892561001878981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var statusId = $v("P83_STATUS_ID");',
'var isRadiationManager = $v("P83_IS_RADIATION_MANAGER");',
'',
'if (statusId === ''020'') {',
'    apex.item("sign_btn").enable();',
'    apex.item("dis_btn").enable();',
'    apex.item("create_btn").disable();',
'    apex.item("fetch_btn").disable();',
'} else if (statusId === null || statusId === '''') {',
'    apex.item("create_btn").enable();',
'    apex.item("sign_btn").disable();',
'    apex.item("dis_btn").disable();',
'    apex.item("fetch_btn").disable();',
'    apex.item("save_btn").disable();',
'} else if (statusId === ''015'') {',
'    apex.item("fetch_btn").enable();',
'    apex.item("save_btn").disable();',
'    apex.item("sign_btn").disable();',
'    apex.item("dis_btn").disable();',
'    apex.item("create_btn").disable();',
'} else if (statusId === ''248'') {',
'    apex.item("save_btn").enable();',
'    apex.item("sign_btn").disable();',
'    apex.item("dis_btn").disable();',
'    apex.item("create_btn").disable();',
'    apex.item("fetch_btn").disable();',
'}',
'',
'// Enable or disable fetch based on P83_IS_RADIATION_MANAGER',
'if (isRadiationManager > ''0'') {',
'    apex.item("fetch_btn").enable();',
'} else {',
'    apex.item("fetch_btn").disable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139893458214878981)
,p_name=>'PopulateFeildsRegion'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(148527246777019546)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139893975160878981)
,p_event_id=>wwv_flow_imp.id(139893458214878981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'// apex.item("P83_ISOCENTER_ID_ND").setValue(radiationNo);',
'',
'$s(''P83_ISOCENTER_ID_ND'',_.isocenter.ISOCENTER_ID);',
'//apex.region("feildrg").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139894436420878981)
,p_event_id=>wwv_flow_imp.id(139893458214878981)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148559090625044646)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139894987436878982)
,p_event_id=>wwv_flow_imp.id(139893458214878981)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.region("feildrg").refresh();'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139895308635878983)
,p_name=>'Sign_btn_OpenRG'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139803613938878691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139895879860878983)
,p_event_id=>wwv_flow_imp.id(139895308635878983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P83_PASSWORD1,P83_PATIENT_MRNO2,P83_NAME2,P83_PASSWORD2,P83_MESSAGE1,P83_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139896306347878985)
,p_event_id=>wwv_flow_imp.id(139895308635878983)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P83_MRNO1         := :GV_USER_MRNO;',
'    :P83_PATIENT_TYPE1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P83_PATIENT_TYPE2:= SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P83_PATIENT_MRNO1    := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'   -- :P83_PATIENT_MRNO1    := LPAD(:P83_PATIENT_MRNO1, 8, ''0'');',
'    :P83_DISP_MRNO1 := (:P83_PATIENT_TYPE1 ||LPAD(:P83_PATIENT_MRNO1, 8, ''0''));',
'    :P83_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P83_DISP_MRNO1);',
'    :P83_DISP_MRNO2:=null;',
'  END;',
'',
''))
,p_attribute_02=>'P83_MRNO1,P83_DISP_MRNO1,P83_NAME1,P83_PATIENT_MRNO1'
,p_attribute_03=>'P83_MRNO1,P83_PATIENT_TYPE1,P83_PATIENT_TYPE2,P83_DISP_MRNO1,P83_DISP_MRNO2,P83_NAME1,P83_PATIENT_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139896820218878985)
,p_event_id=>wwv_flow_imp.id(139895308635878983)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign_rg");',
'apex.item("P83_PASSWORD1").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139897239706878985)
,p_name=>'SetFocus@EnterKey'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_PASSWORD1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139897776931878985)
,p_event_id=>wwv_flow_imp.id(139897239706878985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P83_PATIENT_MRNO2").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139898103118878986)
,p_name=>'DASign@EnterKey'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_PASSWORD2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
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
 p_id=>wwv_flow_imp.id(139898676235878986)
,p_event_id=>wwv_flow_imp.id(139898103118878986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD  VARCHAR2(25) := :P83_PASSWORD1;',
'  USERPASSWORD2  VARCHAR2(25) := :P83_PASSWORD2;',
'  CURRENTCHAR   NUMBER(4);',
'  NEWPASSWORD   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG     SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN         NUMBER;',
'',
'BEGIN  ',
':P83_MESSAGE1 := NULL;',
':P83_MESSAGE2 := NULL;',
':P83_SIGN_STATUS := NULL;',
'  IF :P83_PATIENT_MRNO1 IS NULL THEN',
'    :P83_MESSAGE1:=''Please enter Employee Code'';',
'    RETURN;',
'    ELSIF :P83_PATIENT_MRNO2 IS NULL THEN',
'    :P83_MESSAGE2:=''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P83_PASSWORD1 IS NULL THEN',
'    :P83_MESSAGE1:=''Please enter Password'';',
'    RETURN;',
'    ELSIF :P83_PASSWORD2 IS NULL THEN',
'    :P83_MESSAGE2:=''Please enter Password'';',
'    RETURN;  ',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P83_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD2, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P83_DISP_MRNO2',
'       AND ACTIVE = ''Y'';',
'  ',
'    IF NVL(V_PW_FLAG, ''N'') = ''N'' THEN',
'      FOR I IN 1 .. LENGTH(USERPASSWORD) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD := RPAD(NEWPASSWORD, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'',
'      FOR I IN 1 .. LENGTH(USERPASSWORD2) LOOP',
'        CURRENTCHAR := ASCII(SUBSTR(USERPASSWORD2, I, 1));',
'        CURRENTCHAR := (((CURRENTCHAR * 10) + 100) / 2.5);',
'        NEWPASSWORD2 := RPAD(NEWPASSWORD2, I + 1, CHR(CURRENTCHAR));',
'      END LOOP;',
'      NewPassword := RTRIM(LTRIM(NEWPASSWORD));',
'      NEWPASSWORD2 := RTRIM(LTRIM(NEWPASSWORD2));',
'',
'    ELSE',
'      NewPassword := his.get_enc_pass(UserPassword);',
'      NEWPASSWORD2 := his.get_enc_pass(USERPASSWORD2);',
'    END IF;',
'  ',
'    IF NEWPASSWORD <> SAVEDPASSWORD /*OR NEWPASSWORD2<>SAVEDPASSWORD2*/ THEN',
'    :P83_MESSAGE1:=''Incorrect Password'';',
'     RETURN;',
'    ELSIF NEWPASSWORD2<>SAVEDPASSWORD2 THEN',
'    :P83_MESSAGE2:=''Incorrect Password'';',
'     RETURN; ',
'    ELSE',
'    ',
'    ',
'  --END IF;',
'',
'--IF F_IS_AUTHORIZED(:P83_MRNO1, :P83_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:P83_MRNO2, :P83_PASSWORD2, ''2'') THEN',
'    ',
'DECLARE',
'    V_ALERT_TEXT VARCHAR2(4000);',
'    V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00145.SIGN_PERFORMANCE',
'(',
'P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'P_RADIATION_NO => :P83_RADIATION_NO_2,',
'P_SITE_ID => NVL(:P83_MASTER_SITE_ID,:P83_SITE_ID),',
'P_FRACTION_ID => :P83_FRACTION_ID,',
'P_SCHEDULE_SRNO => :P83_SCHEDULE_SRNO_1,',
'P_SCHEDULE_EVENT_ID => NVL(:P83_SCHEDULE_EVENT_ID,''353''),',
'P_FIRST_TECH => :P83_DISP_MRNO1,',
'P_SECOND_TECH  => :P83_DISP_MRNO2,',
'P_USER_MRNO => :GV_USER_MRNO,',
'P_OBJECT_CODE  => ''S18APX00039'',',
'P_TERMINAL     => :GV_TERMINAL,',
'P_ALERT_TEXT   => V_ALERT_TEXT,',
'P_STOP         => V_STOP',
');',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P83_MESSAGE1:= V_alert_text;',
'          :P83_SIGN_STATUS := ''F'';',
'          RETURN;',
'        ELSE',
'        :P83_MESSAGE1:= ''Record SIGNED Properly ...'';',
'        :P83_SIGN_STATUS := ''S'';',
'        END IF;',
'      END;',
'    END IF;',
'    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P83_PASSWORD1,P83_PASSWORD2,P83_PATIENT_MRNO1,P83_PATIENT_MRNO2,P83_MASTER_SITE_ID,P83_SCHEDULE_SRNO_1,P83_SCHEDULE_EVENT_ID,P83_DISP_MRNO1,P83_DISP_MRNO2,P83_SITE_ID,P83_FRACTION_ID,P83_MESSAGE1,P83_MESSAGE2,P83_SIGN_STATUS'
,p_attribute_03=>'P83_MESSAGE1,P83_MESSAGE2,P83_SIGN_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139899127378878986)
,p_event_id=>wwv_flow_imp.id(139898103118878986)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P83_MESSAGE1.'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P83_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139899653927878986)
,p_event_id=>wwv_flow_imp.id(139898103118878986)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY1) FIRST_CT_SIGN_NAME,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY2) SECOND_CT_SIGN_NAME,',
'         TO_CHAR(SIGN_DATE, ''DD-MON-YYYY HH24:MI:SS'') SIGN_DATE,',
'         STATUS_ID,',
'         RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => STATUS_ID) STATUS_DESCRIPTION',
'  ',
'    INTO :P83_FIRST_CT_SIGN_NAME,',
'         :P83_SECOND_CT_SIGN_NAME,',
'         :P83_SIGN_DATE,',
'         :P83_STATUS_ID,',
'         :P83_STATUS_DESCRIPTION',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P83_RADIATION_NO_2',
'     AND SITE_ID = NVL(:P83_MASTER_SITE_ID, :P83_SITE_ID)',
'     AND FRACTION_ID = :P83_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P83_RADIATION_NO_2,P83_MASTER_SITE_ID,P83_SITE_ID,P83_SCHEDULE_FRACTION_ID'
,p_attribute_03=>'P83_FIRST_CT_SIGN_NAME,P83_SECOND_CT_SIGN_NAME,P83_SIGN_DATE,P83_STATUS_ID,P83_STATUS_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139900194368878987)
,p_event_id=>wwv_flow_imp.id(139898103118878986)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P83_MESSAGE1.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P83_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139900601913878987)
,p_event_id=>wwv_flow_imp.id(139898103118878986)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P83_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132160218230943423)
,p_name=>'DAHistory'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(169907918569201944)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132160556126943426)
,p_event_id=>wwv_flow_imp.id(132160218230943423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P83_HISTORY_RADIATION_NO'', _.history.RADIATION_NO);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132161815254943439)
,p_name=>'DAHistoryRadiationNo'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_HISTORY_RADIATION_NO'
,p_condition_element=>'P83_HISTORY_RADIATION_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132160661813943427)
,p_event_id=>wwv_flow_imp.id(132161815254943439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P83_MRNO                 := NULL;',
'  :P83_SCHEDULE_SRNO_1      := NULL;',
'  :P83_PATIENT_NAME_1       := NULL;',
'  :P83_SEX                  := NULL;',
'  :P83_AGE                  := NULL;',
'  :P83_RADIATION_NO_2       := NULL;',
'  :P83_CONSULTANT           := NULL;',
'  :P83_RADIATION_DATE_1     := NULL;',
'  :P83_STATUS               := NULL;',
'  :P83_TREATMENT_INTENT     := NULL;',
'  :P83_SITE_DISP            := NULL;',
'  :P83_SETUP_POSITION_DESC  := NULL;',
'  :P83_ARM_POSITION_DESC    := NULL;',
'  :P83_NECK_POSITION_DESC   := NULL;',
'  :P83_POSITION_INSTRUCTION := NULL;',
'  :P83_SPECIAL_INSTRUCTION  := NULL;',
'  :P83_PHYSICIST_REMARKS    := NULL;',
'  :P83_PLAN_REMARKS         := NULL;',
'  :P83_MACHINE              := NULL;',
'  :P83_TOTAL_DOSE           := NULL;',
'  :P83_R_FRACTIONS          := NULL;',
'  :P83_FRACTION_ID          := NULL;',
'  :P83_FRACTION_DATE        := NULL;',
'  :P83_STATUS_DESCRIPTION   := NULL;',
'  :P83_FIRST_CT_SIGN_NAME   := NULL;',
'  :P83_OC_SERIAL_NO         := NULL;',
'  :P83_SCHEDULE_SRNO        := NULL;',
'  :P83_SIGN_DATE            := NULL;',
'  :P83_SECOND_CT_SIGN_NAME  := NULL;',
'  :P83_DOSE_FRACTION        := NULL;',
'  :P83_PERFORMED_DOSE       := NULL;',
'  :P83_REMARKS              := NULL;',
'  :P83_PLAN_ID              := NULL;',
'  :P83_PHY_PLAN_ID          := NULL;',
'  :P83_MASTER_SITE_ID       := NULL;',
'END;',
''))
,p_attribute_03=>'P83_MRNO,P83_SCHEDULE_SRNO_1,P83_PATIENT_NAME_1,P83_SEX,P83_AGE,P83_RADIATION_NO_2,P83_CONSULTANT,P83_RADIATION_DATE_1,P83_STATUS,P83_TREATMENT_INTENT,P83_SITE_DISP,P83_SETUP_POSITION_DESC,P83_ARM_POSITION_DESC,P83_NECK_POSITION_DESC,P83_POSITION_INS'
||'TRUCTION,P83_SPECIAL_INSTRUCTION,P83_PHYSICIST_REMARKS,P83_PLAN_REMARKS,P83_MACHINE,P83_TOTAL_DOSE,P83_R_FRACTIONS,P83_FRACTION_ID,P83_FRACTION_DATE,P83_STATUS_DESCRIPTION,P83_FIRST_CT_SIGN_NAME,P83_OC_SERIAL_NO,P83_SCHEDULE_SRNO,P83_SIGN_DATE,P83_SE'
||'COND_CT_SIGN_NAME,P83_DOSE_FRACTION,P83_PERFORMED_DOSE,P83_REMARKS,P83_PLAN_ID,P83_PHY_PLAN_ID,P83_MASTER_SITE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132161017542943431)
,p_event_id=>wwv_flow_imp.id(132161815254943439)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
'         HIS.PKG_PATIENT.GET_SERVICE_NO(M.MRNO) SERVICE_NO,',
'         HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(M.MRNO) SERVICE_STATUS,',
'         HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(M.MRNO) RANK,',
'         HIS.PKG_PATIENT.GET_PATIENT_FORMATION(M.MRNO) FORMATION,',
'         HIS.PKG_PATIENT.GET_PATIENT_UNIT(M.MRNO) UNIT,',
'         ',
'         M.DOCTOR_ID,',
'         RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'         SITE_ID,',
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
'                                                         P_WFE_NO       => D.WFE_NO) EVENT_DESC,',
'         D.STATUS_ID',
'  ',
'    INTO :P83_RADIATION_NO_2,',
'         :P83_RADIATION_DATE_1,',
'         :P83_MRNO,',
'         :P83_PATIENT_NAME_1,',
'         :P83_AGE,',
'         :P83_SEX,',
'         :P83_SERVICE_NO,',
'         :P83_SERVICE_STATUS,',
'         :P83_RANK,',
'         :P83_SERVICE_STATUS,',
'         :P83_UNIT,',
'         :P83_DOCTOR_ID,',
'         :P83_CONSULTANT,',
'         :P83_TREATMENT_INTENT,',
'         :P83_SITE_ID,',
'         :P83_MASTER_SITE_ID,',
'         :P83_SITE_DISP,',
'         :P83_SETUP_POSITION_DESC,',
'         :P83_ARM_POSITION_DESC,',
'         :P83_NECK_POSITION_DESC,',
'         :P83_POSITION_INSTRUCTION,',
'         :P83_STATUS,',
'         :P83_STATUS_ID',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.MRNO =',
'         RADIATION.PKG_RADIATION.GET_PATIENT_MRNO(P_RADIATION_NO => :P83_HISTORY_RADIATION_NO)',
'     AND M.RADIATION_NO = NVL(:P83_HISTORY_RADIATION_NO, M.RADIATION_NO)',
'     AND M.RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
''))
,p_attribute_02=>'P83_HISTORY_RADIATION_NO'
,p_attribute_03=>'P83_RADIATION_NO_2,P83_RADIATION_DATE_1,P83_MRNO,P83_PATIENT_NAME_1,P83_AGE,P83_SEX,P83_SERVICE_NO,P83_SERVICE_STATUS,P83_RANK,P83_UNIT,P83_DOCTOR_ID,P83_CONSULTANT,P83_TREATMENT_INTENT,P83_SITE_ID,P83_SITE_DISP,P83_SETUP_POSITION_DESC,P83_ARM_POSITI'
||'ON_DESC,P83_NECK_POSITION_DESC,P83_POSITION_INSTRUCTION,P83_STATUS,P83_STATUS_ID,P83_MASTER_SITE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132162023433943441)
,p_name=>'DASiteId'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_SITE_ID'
,p_condition_element=>'P83_SITE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132162206627943443)
,p_event_id=>wwv_flow_imp.id(132162023433943441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(145391644531978712)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132162796234943448)
,p_event_id=>wwv_flow_imp.id(132162023433943441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(149191407210129612)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132162341973943444)
,p_name=>'DAScheduleFractionId'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_SCHEDULE_FRACTION_ID'
,p_condition_element=>'P83_SCHEDULE_FRACTION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132162492605943445)
,p_event_id=>wwv_flow_imp.id(132162341973943444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148527246777019546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132162500465943446)
,p_name=>'DAISOCenterIdND'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P83_ISOCENTER_ID_ND'
,p_condition_element=>'P83_ISOCENTER_ID_ND'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132162613240943447)
,p_event_id=>wwv_flow_imp.id(132162500465943446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148559090625044646)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139867138751878953)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMLPorcessRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PERFORM_TAB RADIATION.PKG_S18FRM00145.RAD_PERFORM_TAB;',
'BEGIN',
'  SELECT :P83_RADIATION_NO_2,',
'         :P83_SITE_ID,',
'         :P83_FRACTION_ID,',
'         null ENTRY_DATE,',
'         :P83_MACHINE_ID,',
'         null FRACTION_DATE,',
'         :P83_DOSE_FRACTION,',
'         :P83_PERFORMED_DOSE,',
'         :P83_SCHEDULE_SRNO,',
'         :P83_OC_SERIAL_NO,',
'         :P83_FIRST_CT_SIGN_NAME,',
'         :P83_SECOND_CT_SIGN_NAME,',
'         --NVL(:P83_SIGN_DATE, to_date(sysdate, ''DD-MON-YY HH24:MI'')),',
'         null SIGN_DATE,',
'         ''020'',',
'         NULL,',
'         :P83_REMARKS,',
'         :P83_PLAN_ID,',
'         :P83_PHY_PLAN_ID,',
'         :P83_SIMULATION_ID,',
'         :P83_PLAN_CHECK_ID,',
'         :P83_ANAESTHESIA,',
'         NULL,',
'         NULL,',
'         NULL,',
'         NULL',
'    BULK COLLECT',
'    INTO L_RAD_PERFORM_TAB',
'    FROM DUAL;',
'',
'  --CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    --WHEN ''C'' THEN',
'      --RADIATION.PKG_S18FRM00145.INSERT_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'    ',
'   -- WHEN ''U'' THEN',
'      RADIATION.PKG_S18FRM00145.UPDATE_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'    ',
'    --WHEN ''D'' THEN',
'      --RADIATION.PKG_S18FRM00145.DELETE_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'    ',
'  --END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139804022700878691)
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>139867138751878953
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139867996449878954)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessSignPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00145.SIGN_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                             P_RADIATION_NO      => :P0_RADIATION_NO,',
'                                             P_SITE_ID           => :P83_MASTER_SITE_ID,',
'                                             P_FRACTION_ID       => :P83_FRACTION_ID,',
'                                             P_SCHEDULE_SRNO     => :P83_SCHEDULE_SRNO_1,',
'                                             P_SCHEDULE_EVENT_ID => ''352'',--:P83_SCHEDULE_EVENT_ID,',
'                                             P_FIRST_TECH        => ''00160000005156'', --MRNO1,',
'                                             P_SECOND_TECH       => ''00160000007098'', --MRNO2,',
'                                             P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''USER_MRNO''),',
'                                             P_OBJECT_CODE       => ''S18APX00039'',',
'                                             P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''USER_MRNO''),',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P83_ALERT'', ''Record signed successfully'');',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139803613938878691)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record signed successfully'
,p_internal_uid=>139867996449878954
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139868313479878955)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreatePerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00145.CREATE_NEW_PERFORMANCE(P_ORGANIZATION_ID   =>:GV_ORGANIZATION_ID,',
'                                                   P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                                   P_RADIATION_NO      => :P83_RADIATION_NO_2,',
'                                                   P_SITE_ID           => NVL(:P83_MASTER_SITE_ID,:P83_SITE_ID),',
'                                                   P_SCHEDULE_SRNO     => :P83_SCHEDULE_SRNO_1,',
'                                                   P_OBJECT_CODE       => ''S18APX00039'',',
'                                                   P_TERMINAL          => :GV_TERMINAL,',
'                                                   P_USER_MRNO         => :GV_USER_MRNO,',
'                                                   P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                   P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF nvl(L_STOP,''N'') <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P83_ALERT'', ''Performance created successfully'');',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139804861308878691)
,p_process_success_message=>'Performance created successfully'
,p_internal_uid=>139868313479878955
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139868793962878958)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessFetchPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00145.FETCH_PERFORMANCE(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                              P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                              P_RADIATION_NO      => :P83_RADIATION_NO_2,',
'                                              P_SITE_ID           => NVL(:P83_MASTER_SITE_ID,:P83_SITE_ID),',
'                                              P_FRACTION_ID       => :R40_FRACTION_ID_ND,',
'                                              P_REASON            => NULL,',
'                                              P_OBJECT_CODE       => ''S18APX00039'',',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_USER_MRNO         => :GV_USER_MRNO,',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P83_ALERT'',',
'                                ''Performance Fetched successfully'');',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139803278910878689)
,p_process_success_message=>'Performance Fetched successfully'
,p_internal_uid=>139868793962878958
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139869119946878958)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposePerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00145.DELETE_PERFORMANCE(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                               P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                               P_RADIATION_NO      => :P83_RADIATION_NO_2,',
'                                               P_SITE_ID           => NVL(:P83_MASTER_SITE_ID,:P83_SITE_ID),',
'                                               P_FRACTION_ID       => :P83_FRACTION_ID,',
'                                               P_OBJECT_CODE       => ''S18APX00039'',',
'                                               P_TERMINAL          => :GV_TERMINAL,',
'                                               P_USER_MRNO         => :GV_USER_MRNO,',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P83_ALERT'',',
'                                ''Performance Disposed successfully'');',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139805299528878692)
,p_process_success_message=>'Performance Disposed successfully'
,p_internal_uid=>139869119946878958
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139869510887878959)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClearParameters'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P83_MRNO                 := NULL;',
'  :P83_SCHEDULE_SRNO_1      := NULL;',
'  :P83_PATIENT_NAME_1       := NULL;',
'  :P83_SEX                  := NULL;',
'  :P83_AGE                  := NULL;',
'  :P83_RADIATION_NO_2       := NULL;',
'  :P83_CONSULTANT           := NULL;',
'  :P83_RADIATION_DATE_1     := NULL;',
'  :P83_STATUS               := NULL;',
'  :P83_TREATMENT_INTENT     := NULL;',
'  :P83_SITE_DISP            := NULL;',
'  :P83_SETUP_POSITION_DESC  := NULL;',
'  :P83_ARM_POSITION_DESC    := NULL;',
'  :P83_NECK_POSITION_DESC   := NULL;',
'  :P83_POSITION_INSTRUCTION := NULL;',
'  :P83_SPECIAL_INSTRUCTION  := NULL;',
'  :P83_PHYSICIST_REMARKS    := NULL;',
'  :P83_PLAN_REMARKS         := NULL;',
'  :P83_MACHINE              := NULL;',
'  :P83_TOTAL_DOSE           := NULL;',
'  :P83_R_FRACTIONS          := NULL;',
'  :P83_FRACTION_ID          := NULL;',
'  :P83_FRACTION_DATE        := NULL;',
'  :P83_STATUS_DESCRIPTION   := NULL;',
'  :P83_FIRST_CT_SIGN_NAME   := NULL;',
'  :P83_OC_SERIAL_NO         := NULL;',
'  :P83_SCHEDULE_SRNO        := NULL;',
'  :P83_SIGN_DATE            := NULL;',
'  :P83_SECOND_CT_SIGN_NAME  := NULL;',
'  :P83_DOSE_FRACTION        := NULL;',
'  :P83_PERFORMED_DOSE       := NULL;',
'  :P83_REMARKS              := NULL;',
'  :P83_PLAN_ID              := NULL;',
'  :P83_PHY_PLAN_ID          := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>139869510887878959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139866787508878953)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParameters'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P83_MRNO            := :P46_PATIENT_MRNO;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>139866787508878953
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139866476469878945)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT M.RADIATION_NO,',
'         M.RADIATION_DATE,',
'         M.MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'         HIS.PKG_PATIENT.GET_SERVICE_NO(M.MRNO) SERVICE_NO,',
'         HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(M.MRNO) SERVICE_STATUS,',
'         HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(M.MRNO) RANK,',
'         HIS.PKG_PATIENT.GET_PATIENT_FORMATION(M.MRNO) FORMATION,',
'         HIS.PKG_PATIENT.GET_PATIENT_UNIT(M.MRNO) UNIT,',
'         ',
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
'                                                         P_WFE_NO       => D.WFE_NO) EVENT_DESC,',
'         D.STATUS_ID',
'  ',
'    INTO :P83_RADIATION_NO_2,',
'         :P83_RADIATION_DATE_1,',
'         :P83_MRNO,',
'         :P83_PATIENT_NAME_1,',
'         :P83_AGE,',
'         :P83_SEX,',
'         :P83_SERVICE_NO,',
'         :P83_SERVICE_STATUS,',
'         :P83_RANK,',
'         :P83_SERVICE_STATUS,',
'         :P83_UNIT,',
'         :P83_DOCTOR_ID,',
'         :P83_CONSULTANT,',
'         :P83_TREATMENT_INTENT,',
'         :P83_SITE_ID,',
'         :P83_SITE_DISP,',
'         :P83_SETUP_POSITION_DESC,',
'         :P83_ARM_POSITION_DESC,',
'         :P83_NECK_POSITION_DESC,',
'         :P83_POSITION_INSTRUCTION,',
'         :P83_STATUS,',
'         :P83_STATUS_ID',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.MRNO LIKE CASE',
'           WHEN :P83_MRNO IS NOT NULL THEN',
'            :P83_MRNO',
'           ELSE',
'            M.MRNO',
'         END',
'     AND M.RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>139866476469878945
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
 p_id=>wwv_flow_imp.id(139867566024878953)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitilizeParamter'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT S.SITE_ID,',
'         RADIATION.PKG_WORKFLOW.GET_NEXT_EVENT_ID(P_SCHEMA_ID        => SW.SCHEMA_ID,',
'                                                  P_WORKFLOW_TYPE_ID => SW.WORKFLOW_TYPE_ID,',
'                                                  P_WORK_FLOW_ID     => SW.WORK_FLOW_ID,',
'                                                  P_EVENT_ID         => SW.EVENT_ID)',
'  ',
'    INTO :P83_MASTER_SITE_ID, :P83_SCHEDULE_EVENT_ID',
'    FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'   WHERE SW.SR_NO = S.SR_NO',
'     AND S.SR_NO = :P83_SCHEDULE_SRNO',
'     AND S.WFE_NO = SW.WFE_NO;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>139867566024878953
);
null;
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'RAD_PERFORMANCE'
,p_alias=>'RAD-PERFORMANCE'
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
'apex.item("P40_UNIT").hide();',
'apex.item("P40_SERVICE_NO").hide();',
'apex.item("P40_SERVICE_STATUS").hide();',
'apex.item("P40_RANK").hide();',
'apex.item("P40_FORMATION").hide();',
'apex.item("P40_NAME2").disable();',
'apex.item("P40_NAME1").disable();',
'',
'',
'//  alert($v("P40_RADIATION_NO_2"));',
'//  alert($v("P40_MASTER_SITE_ID"));',
'//  alert($v("P40_SCHEDULE_SRNO_1"));',
'//  alert($v("P40_SCHEDULE_EVENT_ID"));',
' '))
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
'#P40_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PATIENT_NAME_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SEX {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_RADIATION_NO_2 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_RADIATION_DATE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_CONSULTANT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_TREATMENT_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SITE_DISP {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_STATUS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SETUP_POSITION_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_ARM_POSITION_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_NECK_POSITION_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_POSITION_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SPECIAL_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_POSITION_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SPECIAL_INSTRUCTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PHYSICIST_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PLAN_REMARKS {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_MACHINE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_FRACTION_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P40_FRACTION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P40_STATUS_DESCRIPTION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_FIRST_CT_SIGN_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_OC_SERIAL_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SCHEDULE_SRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SIGN_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_SECOND_CT_SIGN_NAME {',
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
'#P40_DOSE_FRACTION {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PERFORMED_DOSE {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_REMARKS {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P40_PLAN_ID {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PHY_PLAN_ID {',
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
'#P40_TOTAL_DOSE {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_R_FRACTIONS {',
' ',
'    font-size: 0.90rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P40_PATIENT_TYPE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PATIENT_MRNO1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_NAME1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PASSWORD1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_MESSAGE1  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P40_PATIENT_TYPE2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PATIENT_MRNO2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_NAME2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_PASSWORD2  {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P40_MESSAGE2  {',
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
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250114161308'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3344437871153208)
,p_plug_name=>'Plan Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3346335335153227)
,p_plug_name=>'Fraction'
,p_region_name=>'fraction_dt'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>60
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
'      RADIATION_NO = :P40_RADIATION_NO_2',
'        AND SITE_ID = NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID)',
'        AND FRACTION_ID = :P40_SCHEDULE_FRACTION_ID',
'        ',
'        --RADIATION_NO = :P40_RADIATION_NO_ND',
'        --AND SITE_ID = :P40_SITE_ID_ND'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P40_RADIATION_NO_2,P40_SCHEDULE_FRACTION_ID,P40_SITE_ID,P40_MASTER_SITE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4244604163482502)
,p_plug_name=>'Performance'
,p_parent_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8724562125140942)
,p_plug_name=>'ISO Center'
,p_region_name=>'isocenter'
,p_parent_plug_id=>wwv_flow_imp.id(3346335335153227)
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
'       WHERE P.RADIATION_NO = :P40_RADIATION_NO_2',
'         AND P.SITE_ID = NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID)',
'         ---AND P.FRACTION_ID in (''1.01'', ''1.02'')--:P40_FRACTION_ID',
'         AND P.FRACTION_ID=:P40_SCHEDULE_FRACTION_ID',
'         AND P.RADIATION_NO = PI.RADIATION_NO',
'         AND P.SITE_ID = PI.SITE_ID',
'         AND P.FRACTION_ID = PI.FRACTION_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P40_MASTER_SITE_ID,P40_RADIATION_NO_2,P40_SITE_ID,P40_SCHEDULE_FRACTION_ID'
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
 p_id=>wwv_flow_imp.id(47783903222129920)
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
 p_id=>wwv_flow_imp.id(47784049562129921)
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
 p_id=>wwv_flow_imp.id(47784173483129922)
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
 p_id=>wwv_flow_imp.id(47784255994129923)
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
 p_id=>wwv_flow_imp.id(47784368120129924)
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
 p_id=>wwv_flow_imp.id(47784421690129925)
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
 p_id=>wwv_flow_imp.id(47784503770129926)
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
 p_id=>wwv_flow_imp.id(47784673702129927)
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
 p_id=>wwv_flow_imp.id(47784776510129928)
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
 p_id=>wwv_flow_imp.id(47784837532129929)
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
 p_id=>wwv_flow_imp.id(47784930680129930)
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
 p_id=>wwv_flow_imp.id(47785075851129931)
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
 p_id=>wwv_flow_imp.id(47785119402129932)
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
 p_id=>wwv_flow_imp.id(47785281030129933)
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
 p_id=>wwv_flow_imp.id(47785324844129934)
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
 p_id=>wwv_flow_imp.id(47783899700129919)
,p_internal_uid=>47783899700129919
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
 p_id=>wwv_flow_imp.id(47795637835157016)
,p_interactive_grid_id=>wwv_flow_imp.id(47783899700129919)
,p_static_id=>'477957'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47795872641157017)
,p_report_id=>wwv_flow_imp.id(47795637835157016)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47796329425157022)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47783903222129920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47797292920157025)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47784049562129921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47798106594157029)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47784173483129922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47799041897157032)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47784255994129923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47799985829157034)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47784368120129924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47800817808157037)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47784421690129925)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>41
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47801731739157040)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47784503770129926)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>199
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47802637451157042)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(47784673702129927)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47803542523157044)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47784776510129928)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47804497680157047)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(47784837532129929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47805395402157049)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47784930680129930)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47806281780157052)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(47785075851129931)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47807182267157054)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(47785119402129932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47808078354157060)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(47785281030129933)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47808919291157064)
,p_view_id=>wwv_flow_imp.id(47795872641157017)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(47785324844129934)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8756405973166042)
,p_plug_name=>'Fields'
,p_region_name=>'feildrg'
,p_parent_plug_id=>wwv_flow_imp.id(3346335335153227)
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
'     M_U',
'FROM RADIATION.RAD_PHYSICS_FIELDS RPF',
'WHERE RPF.RADIATION_NO = :P40_RADIATION_NO_ND',
'AND RPF.SITE_ID = :P40_SITE_ID_ND',
'AND RPF.PHY_PLAN_ID = :P40_PHY_PLAN_ID',
'AND RPF.ISOCENTER_ID = :P40_ISOCENTER_ID_ND',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P40_RADIATION_NO_ND,P40_SITE_ID_ND,P40_PHY_PLAN_ID,P40_ISOCENTER_ID_ND'
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
 p_id=>wwv_flow_imp.id(47785509789129936)
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
 p_id=>wwv_flow_imp.id(47785618734129937)
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
 p_id=>wwv_flow_imp.id(47785795295129938)
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
 p_id=>wwv_flow_imp.id(47785847132129939)
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
 p_id=>wwv_flow_imp.id(47785976677129940)
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
 p_id=>wwv_flow_imp.id(47786046767129941)
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
 p_id=>wwv_flow_imp.id(47786114005129942)
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
 p_id=>wwv_flow_imp.id(47786251584129943)
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
 p_id=>wwv_flow_imp.id(47786390759129944)
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
 p_id=>wwv_flow_imp.id(47786483061129945)
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
 p_id=>wwv_flow_imp.id(47786586450129946)
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
 p_id=>wwv_flow_imp.id(47785429442129935)
,p_internal_uid=>47785429442129935
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
 p_id=>wwv_flow_imp.id(47830832796234078)
,p_interactive_grid_id=>wwv_flow_imp.id(47785429442129935)
,p_static_id=>'478309'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47831033703234078)
,p_report_id=>wwv_flow_imp.id(47830832796234078)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47831567253234080)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47785509789129936)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47832425537234083)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(47785618734129937)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47833353892234086)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(47785795295129938)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47834284184234088)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(47785847132129939)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47835153415234091)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(47785976677129940)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47836092659234093)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(47786046767129941)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>174.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47836902826234096)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(47786114005129942)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47837803708234098)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(47786251584129943)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47838713782234101)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47786390759129944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47839601987234103)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(47786483061129945)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69.906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47840569447234107)
,p_view_id=>wwv_flow_imp.id(47831033703234078)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47786586450129946)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68.391
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9388722558251008)
,p_plug_name=>'Radiation Accessories'
,p_parent_plug_id=>wwv_flow_imp.id(3346335335153227)
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
' WHERE RA.RADIATION_NO = :P40_RADIATION_NO_2',
'   AND RA.SITE_ID = NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID)',
'   AND RA.TRANS_TYPE = ''CT''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_MASTER_SITE_ID,P40_SITE_ID'
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
 p_id=>wwv_flow_imp.id(11693730919322241)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>11693730919322241
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12013140592911315)
,p_db_column_name=>'ACCESSORY_DESCRIPTION'
,p_display_order=>1
,p_column_identifier=>'J'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_static_id=>'ACCESSORY_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11694419598322248)
,p_db_column_name=>'REMARKS'
,p_display_order=>2
,p_column_identifier=>'G'
,p_column_label=>'Instruction'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11693835744322242)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11693954133322243)
,p_db_column_name=>'SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11694096160322244)
,p_db_column_name=>'SRNO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Srno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11694125602322245)
,p_db_column_name=>'PHASE_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phase No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11694283695322246)
,p_db_column_name=>'ACCESSORY_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Accessory Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11694536984322249)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11694602625322250)
,p_db_column_name=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Radiation.pkg Radiation.get Status Description(p Status Id=&gt;ra.status Id)'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11991393829808363)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'119914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCESSORY_DESCRIPTION:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4247930033482535)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>300
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5588959880100108)
,p_plug_name=>'Fraction History'
,p_region_name=>'fractionhist'
,p_region_css_classes=>'highlight appt-list rad-custom-card'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.RADIATION_NO,',
'       S.SITE_ID,',
'       S.FRACTION_Id,',
'       (S.FRACTION_Id - trunc(S.FRACTION_Id)) * 100 FRACTION_NO,',
'       S.VISIT_DATE FRACTION_DATE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(''020'') STATUS,',
'       0 DOSE',
'  FROM RADIATION.SCHEDULE S',
' WHERE S.SR_NO = :P40_SCHEDULE_SRNO_1',
'   AND NOT EXISTS (SELECT 1',
'          FROM RADIATION.RAD_PERFORMANCE RP',
'         WHERE RP.RADIATION_NO = S.RADIATION_NO',
'           AND RP.SITE_ID = S.SITE_ID',
'           AND RP.FRACTION_ID = S.FRACTION_ID)',
'UNION ALL',
'SELECT RP.RADIATION_NO,',
'       RP.SITE_ID,',
'       RP.FRACTION_ID,',
'       (RP.FRACTION_Id - trunc(RP.FRACTION_Id)) * 100 FRACTION_NO,',
'       RP.FRACTION_DATE,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(RP.STATUS_ID),',
'       CASE',
'         WHEN RP.STATUS_ID = ''015'' THEN',
'          RP.PERFORMED_DOSE',
'         ELSE',
'          0',
'       END DOSE',
'  FROM RADIATION.RAD_PERFORMANCE RP',
' WHERE RP.RADIATION_NO = :P40_RADIATION_NO_2',
'   AND RP.SITE_ID = NVL(:P40_MASTER_SITE_ID, :P40_SITE_ID);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P40_RADIATION_NO_2,P40_SCHEDULE_SRNO_1,P40_MASTER_SITE_ID,P40_SITE_ID'
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
 p_id=>wwv_flow_imp.id(13150940368075834)
,p_name=>'FRACTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction No'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(13570277060199501)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13570307812199502)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(13570495546199503)
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
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(13570595716199504)
,p_name=>'FRACTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fraction Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
 p_id=>wwv_flow_imp.id(13570618616199505)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
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
 p_id=>wwv_flow_imp.id(37868577033546344)
,p_name=>'DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dose'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
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
 p_id=>wwv_flow_imp.id(12016642125911350)
,p_internal_uid=>12016642125911350
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
 p_id=>wwv_flow_imp.id(13578289746202297)
,p_interactive_grid_id=>wwv_flow_imp.id(12016642125911350)
,p_static_id=>'135783'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13578411356202299)
,p_report_id=>wwv_flow_imp.id(13578289746202297)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13578972693202300)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(13570277060199501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13579807943202303)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13570307812199502)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13580744618202305)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13570495546199503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13581631564202308)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(13570595716199504)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13582511065202311)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13570618616199505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14321131325890623)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(13150940368075834)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(45980191066549973)
,p_view_id=>wwv_flow_imp.id(13578411356202299)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(37868577033546344)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34867364199221003)
,p_plug_name=>'TotalDose'
,p_parent_plug_id=>wwv_flow_imp.id(5588959880100108)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7441684464704157)
,p_plug_name=>'Radiation Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9391392571251034)
,p_plug_name=>'Radiation Site(s)'
,p_region_name=>'mastersite'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>270
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DESCRIPTION,',
'       D.SITE_ID ID',
'  FROM RADIATION.RADIATION_DETAIL D',
' WHERE D.RADIATION_NO = :P40_RADIATION_NO_2',
'   AND (:P40_SCHEDULE_SRNO_1 IS NULL OR',
'       D.SITE_ID = (SELECT SITE_ID',
'                       FROM RADIATION.SCHEDULE',
'                      WHERE SR_NO = :P40_SCHEDULE_SRNO_1))',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P0_RADIATION_NO,P40_SCHEDULE_SRNO_1'
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
 p_id=>wwv_flow_imp.id(11690511726322209)
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
 p_id=>wwv_flow_imp.id(11690693250322210)
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
 p_id=>wwv_flow_imp.id(11690441755322208)
,p_internal_uid=>11690441755322208
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
 p_id=>wwv_flow_imp.id(11920786657600029)
,p_interactive_grid_id=>wwv_flow_imp.id(11690441755322208)
,p_static_id=>'119208'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
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
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(11920908718600029)
,p_report_id=>wwv_flow_imp.id(11920786657600029)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11921449651600031)
,p_view_id=>wwv_flow_imp.id(11920908718600029)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(11690511726322209)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11922310635600034)
,p_view_id=>wwv_flow_imp.id(11920908718600029)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(11690693250322210)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(33868659691223493)
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
'WHERE MRNO = :P40_MRNO;',
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
 p_id=>wwv_flow_imp.id(3923655267055492)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3924040735055493)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3924440077055493)
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
 p_id=>wwv_flow_imp.id(132675278430208627)
,p_plug_name=>'Sign'
,p_region_name=>'sign_rg'
,p_region_css_classes=>'js-dialog-size1200x450'
,p_region_template_options=>'js-dialog-autoheight:t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>280
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132676849982208642)
,p_plug_name=>'First Technologist'
,p_parent_plug_id=>wwv_flow_imp.id(132675278430208627)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132676957074208643)
,p_plug_name=>'Second Technologist'
,p_parent_plug_id=>wwv_flow_imp.id(132675278430208627)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293076049182923237)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>290
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45551258066824749)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(132676849982208642)
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
 p_id=>wwv_flow_imp.id(45553814035824755)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(132676957074208643)
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
 p_id=>wwv_flow_imp.id(12014108282911325)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(4247930033482535)
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
 p_id=>wwv_flow_imp.id(5592025869100139)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(4247930033482535)
,p_button_name=>'Sign'
,p_button_static_id=>'sign_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423175166493299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'S<u>i</u>gn'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_button_cattributes=>'accesskey=''I'' AccessKey = ''I'' '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13571371046199512)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(4247930033482535)
,p_button_name=>'Save'
,p_button_static_id=>'save_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(385423701774493294)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>S</u>ave'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'accesskey=''S'' AccessKey = S'''
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9390292304251023)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(4247930033482535)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(385423406715493294)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E<u>x</u>it'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
,p_button_cattributes=>'accesskey=''X''  AccessKey=''X'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9390069746251021)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(4247930033482535)
,p_button_name=>'Create'
,p_button_static_id=>'create_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>C</u>reate'
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-plus-square'
,p_button_cattributes=>'accesskey=''C''  Access Key= ''C'''
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9390160821251022)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(4247930033482535)
,p_button_name=>'Dispose'
,p_button_static_id=>'dis_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Dis<u>p</u>ose'
,p_button_position=>'DELETE'
,p_confirm_message=>'Are you sure. you want to delete this performance'
,p_icon_css_classes=>'fa-remove'
,p_button_cattributes=>'accesskey=''P'' AccessKey= ''P'''
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3345274418153216)
,p_name=>'P40_DOCTOR_ID'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3346512346153229)
,p_name=>'P40_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>163
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3346663174153230)
,p_name=>'P40_SITE_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>173
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3346774879153231)
,p_name=>'P40_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3346800903153232)
,p_name=>'P40_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3346952440153233)
,p_name=>'P40_MACHINE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>183
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'MACHINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3347058284153234)
,p_name=>'P40_FRACTION_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3347153762153235)
,p_name=>'P40_DOSE_FRACTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>123
,p_item_plug_id=>wwv_flow_imp.id(4244604163482502)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3347271738153236)
,p_name=>'P40_PERFORMED_DOSE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>133
,p_item_plug_id=>wwv_flow_imp.id(4244604163482502)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3347398446153237)
,p_name=>'P40_SCHEDULE_SRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>73
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3347446914153238)
,p_name=>'P40_OC_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>63
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3347729730153241)
,p_name=>'P40_SIGN_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>83
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3347803485153242)
,p_name=>'P40_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>193
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3348069851153244)
,p_name=>'P40_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>143
,p_item_plug_id=>wwv_flow_imp.id(4244604163482502)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3348140268153245)
,p_name=>'P40_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_imp.id(4244604163482502)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3348282765153246)
,p_name=>'P40_PHY_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>163
,p_item_plug_id=>wwv_flow_imp.id(4244604163482502)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(3348323179153247)
,p_name=>'P40_SIMULATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>203
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'SIMULATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3348466007153248)
,p_name=>'P40_PLAN_CHECK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>213
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'PLAN_CHECK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3348598039153249)
,p_name=>'P40_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>223
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3364424443897245)
,p_name=>'P40_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245650331482512)
,p_name=>'P40_DISP_MRNO2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245700195482513)
,p_name=>'P40_DISP_MRNO1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5588277610100101)
,p_name=>'P40_MACHINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(5588369900100102)
,p_name=>'P40_PLAN_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5588432160100103)
,p_name=>'P40_PHYSICIST_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(5588537451100104)
,p_name=>'P40_FIRST_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(5588683644100105)
,p_name=>'P40_SECOND_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>93
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(5588700592100106)
,p_name=>'P40_STATUS_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(5588886718100107)
,p_name=>'P40_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>243
,p_item_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9388396569251004)
,p_name=>'P40_RADIATION_NO_ND'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9388423982251005)
,p_name=>'P40_SITE_ID_ND'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9388592869251006)
,p_name=>'P40_FRACTION_NO_ND'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9388681179251007)
,p_name=>'P40_ISOCENTER_ID_ND'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9392441475251045)
,p_name=>'P40_MASTER_SITE_ID'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12013753039911321)
,p_name=>'P40_SCHEDULE_SRNO_1'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12013881779911322)
,p_name=>'P40_SCHEDULE_EVENT_ID'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12013956258911323)
,p_name=>'P40_ALERT'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12016282969911346)
,p_name=>'P40_SCHEDULE_FRACTION_ID'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29500949960373649)
,p_name=>'P40_SIGN_STATUS'
,p_item_sequence=>260
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31356436974007935)
,p_name=>'P40_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31356513918007936)
,p_name=>'P40_PATIENT_NAME_1'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31356664872007937)
,p_name=>'P40_SEX'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31356738718007938)
,p_name=>'P40_AGE'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31356879989007939)
,p_name=>'P40_UNIT'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31356998676007940)
,p_name=>'P40_SERVICE_NO'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31357051119007941)
,p_name=>'P40_SERVICE_STATUS'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31357162618007942)
,p_name=>'P40_RANK'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31357224910007943)
,p_name=>'P40_FORMATION'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31357310374007944)
,p_name=>'P40_RADIATION_NO_2'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
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
 p_id=>wwv_flow_imp.id(31357407564007945)
,p_name=>'P40_RADIATION_DATE_1'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date:</p></b>'
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
 p_id=>wwv_flow_imp.id(31357579056007946)
,p_name=>'P40_CONSULTANT'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_prompt=>'<b><p style="color:#00008B">Consultant:</p></b>'
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
 p_id=>wwv_flow_imp.id(31357639507007947)
,p_name=>'P40_TREATMENT_INTENT'
,p_item_sequence=>1139
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_prompt=>'<b><p style="color:#00008B">Treatment Intent:</p></b>'
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
 p_id=>wwv_flow_imp.id(31357704516007948)
,p_name=>'P40_SITE_DISP'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_prompt=>'<b><p style="color:#00008B">Site:</p></b>'
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
 p_id=>wwv_flow_imp.id(31357806429007949)
,p_name=>'P40_STATUS'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_prompt=>'<b><p style="color:#00008B">Status:</p></b>'
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
 p_id=>wwv_flow_imp.id(31357982127007950)
,p_name=>'P40_SITE_ID'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(7441684464704157)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34867457437221004)
,p_name=>'P40_TOTAL_DOSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34867364199221003)
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
 p_id=>wwv_flow_imp.id(37106655538620229)
,p_name=>'P40_SETUP_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(37106702516620230)
,p_name=>'P40_ARM_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(37106889223620231)
,p_name=>'P40_POSITION_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(37106968269620232)
,p_name=>'P40_SPECIAL_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
,p_item_source_plug_id=>wwv_flow_imp.id(3346335335153227)
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
 p_id=>wwv_flow_imp.id(37107023368620233)
,p_name=>'P40_NECK_POSITION_DESC'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3344437871153208)
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
 p_id=>wwv_flow_imp.id(38982100961179906)
,p_name=>'P40_R_FRACTIONS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34867364199221003)
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
 p_id=>wwv_flow_imp.id(132681432949208648)
,p_name=>'P40_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132681561169208649)
,p_name=>'P40_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
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
 p_id=>wwv_flow_imp.id(132681635674208650)
,p_name=>'P40_PATIENT_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
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
 p_id=>wwv_flow_imp.id(132681781613208651)
,p_name=>'P40_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
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
 p_id=>wwv_flow_imp.id(132681842706208652)
,p_name=>'P40_PASSWORD1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132682013943208653)
,p_name=>'P40_MESSAGE1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(132676849982208642)
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
 p_id=>wwv_flow_imp.id(132687208892208662)
,p_name=>'P40_MRNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132687301842208663)
,p_name=>'P40_PATIENT_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
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
 p_id=>wwv_flow_imp.id(132687368156208664)
,p_name=>'P40_PATIENT_MRNO2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
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
 p_id=>wwv_flow_imp.id(132687447880208665)
,p_name=>'P40_NAME2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
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
 p_id=>wwv_flow_imp.id(132687604922208666)
,p_name=>'P40_PASSWORD2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132687745632208667)
,p_name=>'P40_MESSAGE2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(132676957074208643)
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
 p_id=>wwv_flow_imp.id(314046785467785230)
,p_name=>'P40_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132675278430208627)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9390556786251026)
,p_name=>'DA_PERFORM_ISOCENTER'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.perform'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9390631156251027)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_RADIATION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(this.triggeringElement).parent().data(''radno'')',
'',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9390881368251029)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_SITE_ID_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''siteid'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9390931369251030)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_FRACTION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''fractionid'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9391072147251031)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ISOCENTER_ID_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''isocenter'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8146338871519541)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert($v("P40_RADIATION_NO_ND"))',
'alert($v("P40_SITE_ID_ND"))',
'alert($v("P40_FRACTION_NO_ND"))',
'alert($v("P40_ISOCENTER_ID_ND"))'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9390730812251028)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
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
'                                              P_RADIATION_NO      => :P40_RADIATION_NO_ND,',
'                                              P_SITE_ID           => NVL(:P40_SITE_ID_ND,:P40_SITE_ID),',
'                                              P_FRACTION_ID       => :P40_FRACTION_NO_ND,',
'                                              P_ISOCENTER_ID      => :P40_ISOCENTER_ID_ND,',
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
,p_attribute_02=>'P40_RADIATION_NO_ND,P40_SITE_ID_ND,P40_FRACTION_NO_ND,P40_ISOCENTER_ID_ND,P40_SITE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13572290376199521)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8724562125140942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4244842241482504)
,p_event_id=>wwv_flow_imp.id(9390556786251026)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8756405973166042)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11690786967322211)
,p_name=>'SetMasterSiteID1'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9391392571251034)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12015235548911336)
,p_event_id=>wwv_flow_imp.id(11690786967322211)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P40_MASTER_SITE_ID'',_.mastersite.ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11690834012322212)
,p_event_id=>wwv_flow_imp.id(11690786967322211)
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
'apex.item("P40_MASTER_SITE_ID").setValue(i_mastersiteid);'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13570975106199508)
,p_name=>'SetScheduleFractionId'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5588959880100108)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13571083078199509)
,p_event_id=>wwv_flow_imp.id(13570975106199508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P40_SCHEDULE_FRACTION_ID'',_.fractionhist.FRACTION_ID);',
' $s(''P40_SITE_ID_ND'',_.fractionhist.SITE_ID);',
' $s(''P40_RADIATION_NO_ND'',_.fractionhist.RADIATION_NO);',
'',
'apex.region("isocenter").refresh();',
'apex.region("feildrg").refresh();',
'//apex.region("fraction_dt").refresh();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13571262005199511)
,p_event_id=>wwv_flow_imp.id(13570975106199508)
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
'    INTO :P40_RADIATION_NO_1,',
'         :P40_SITE_ID_1,',
'         :P40_FRACTION_ID,',
'         :P40_ENTRY_DATE,',
'         :P40_MACHINE_ID,',
'         :P40_FRACTION_DATE,',
'         :P40_DOSE_FRACTION,',
'         :P40_PERFORMED_DOSE,',
'         :P40_SCHEDULE_SRNO,',
'         :P40_OC_SERIAL_NO,',
'         :P40_FIRST_CT_SIGN_NAME,',
'         :P40_SECOND_CT_SIGN_NAME,',
'         :P40_SIGN_DATE,',
'         :P40_STATUS_ID,',
'         :P40_STATUS_DESCRIPTION,',
'         :P40_REMARKS,',
'         :P40_PLAN_ID,',
'         :P40_PHY_PLAN_ID,',
'         :P40_SIMULATION_ID,',
'         :P40_PLAN_CHECK_ID,',
'         :P40_ANAESTHESIA,',
'         :P40_SPECIAL_INSTRUCTION,',
'         :P40_MACHINE,',
'         :P40_PLAN_REMARKS,',
'         :P40_PHYSICIST_REMARKS,',
'         :P40_ROWID_1',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P40_RADIATION_NO_2',
'     AND SITE_ID = NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID)',
'     AND FRACTION_ID = :P40_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P40_MASTER_SITE_ID,P40_SCHEDULE_FRACTION_ID,P40_SITE_ID,P40_RADIATION_NO_2'
,p_attribute_03=>'P40_RADIATION_NO_1,P40_SITE_ID_1,P40_ENTRY_DATE,P40_MACHINE_ID,P40_FRACTION_DATE,P40_DOSE_FRACTION,P40_PERFORMED_DOSE,P40_SCHEDULE_SRNO,P40_OC_SERIAL_NO,P40_FIRST_CT_SIGN_NAME,P40_SECOND_CT_SIGN_NAME,P40_SIGN_DATE,P40_STATUS_ID,P40_STATUS_DESCRIPTION'
||',P40_REMARKS,P40_PLAN_ID,P40_PHY_PLAN_ID,P40_SIMULATION_ID,P40_PLAN_CHECK_ID,P40_ANAESTHESIA,P40_MACHINE,P40_PLAN_REMARKS,P40_PHYSICIST_REMARKS,P40_ROWID_1,P40_FRACTION_ID,P40_SPECIAL_INSTRUCTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34867571197221005)
,p_event_id=>wwv_flow_imp.id(13570975106199508)
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
'      INTO :P40_TOTAL_DOSE',
'      FROM RADIATION.RAD_PERFORMANCE RP',
'     WHERE RP.RADIATION_NO = :P40_RADIATION_NO_2',
'       AND RP.SITE_ID = NVL(:P40_MASTER_SITE_ID, :P40_SITE_ID)',
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
'     INTO :P40_R_FRACTIONS',
'     FROM RADIATION.SCHEDULE RS',
'    WHERE RS.SR_NO = :P40_SCHEDULE_SRNO_1;*/',
'  ',
'    L_NEXT_FRACTION_ID := RADIATION.Pkg_Radiation.GET_NEXT_FRACTION_ID(P_RADIATION_NO => :P40_RADIATION_NO_2,',
'                                                                       P_SITE_ID      => NVL(:P40_MASTER_SITE_ID,',
'                                                                                             :P40_SITE_ID));',
'  ',
'    L_TOT_NO_OF_FRACTION := RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => :P40_RADIATION_NO_2,',
'                                                                      P_SITE_ID      => NVL(:P40_MASTER_SITE_ID,',
'                                                                                            :P40_SITE_ID),',
'                                                                      P_PHASE_NO     => TRUNC(:P40_SCHEDULE_FRACTION_ID));',
'  ',
'    BEGIN',
'      SELECT MAX(P.FRACTION_ID)',
'        INTO L_PERFORMED_FRACTION_ID',
'        FROM RADIATION.RAD_PERFORMANCE P',
'       WHERE P.RADIATION_NO = :P40_RADIATION_NO_2',
'         AND P.SITE_ID = NVL(:P40_MASTER_SITE_ID, :P40_SITE_ID)',
'         AND TRUNC(P.FRACTION_ID) = TRUNC(:P40_SCHEDULE_FRACTION_ID)',
'         AND P.STATUS_ID = ''015'';',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  ',
'    L_PERFORMED_FRACTION_NO := (L_PERFORMED_FRACTION_ID -',
'                               TRUNC(:P40_SCHEDULE_FRACTION_ID)) * 100;',
'  ',
'    :P40_R_FRACTIONS := NVL(L_PERFORMED_FRACTION_NO,0) || ''/'' ||',
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
,p_attribute_02=>'P40_RADIATION_NO_2,P40_MASTER_SITE_ID,P40_SITE_ID,P40_SCHEDULE_SRNO_1'
,p_attribute_03=>'P40_TOTAL_DOSE,P40_R_FRACTIONS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38982439714179909)
,p_event_id=>wwv_flow_imp.id(13570975106199508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8756405973166042)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4245232175482508)
,p_name=>'ReturnToDialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45553814035824755)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4245326650482509)
,p_event_id=>wwv_flow_imp.id(4245232175482508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132675278430208627)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4245476286482510)
,p_name=>'sign_btn'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45551258066824749)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4245566061482511)
,p_event_id=>wwv_flow_imp.id(4245476286482510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD  VARCHAR2(25) := :P40_PASSWORD1;',
'  USERPASSWORD2  VARCHAR2(25) := :P40_PASSWORD2;',
'  CURRENTCHAR   NUMBER(4);',
'  NEWPASSWORD   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG     SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN         NUMBER;',
'',
'BEGIN  ',
':P40_MESSAGE1 := NULL;',
':P40_MESSAGE2 := NULL;',
':P40_SIGN_STATUS := NULL;',
'  IF :P40_PATIENT_MRNO1 IS NULL THEN',
'    :P40_MESSAGE1:=''Please enter Employee Code'';',
'    RETURN;',
'    ELSIF :P40_PATIENT_MRNO2 IS NULL THEN',
'    :P40_MESSAGE2:=''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P40_PASSWORD1 IS NULL THEN',
'    :P40_MESSAGE1:=''Please enter Password'';',
'    RETURN;',
'    ELSIF :P40_PASSWORD2 IS NULL THEN',
'    :P40_MESSAGE2:=''Please enter Password'';',
'    RETURN;  ',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P40_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD2, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P40_DISP_MRNO2',
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
'    :P40_MESSAGE1:=''Incorrect Password'';',
'     RETURN;',
'    ELSIF NEWPASSWORD2<>SAVEDPASSWORD2 THEN',
'    :P40_MESSAGE2:=''Incorrect Password'';',
'     RETURN; ',
'    ELSE',
'    ',
'    ',
'  --END IF;',
'',
'--IF F_IS_AUTHORIZED(:P40_MRNO1, :P40_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:P40_MRNO2, :P40_PASSWORD2, ''2'') THEN',
'    ',
'DECLARE',
'    V_ALERT_TEXT VARCHAR2(4000);',
'    V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00145.SIGN_PERFORMANCE',
'(',
'P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'P_RADIATION_NO => :P40_RADIATION_NO_2,',
'P_SITE_ID => NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID),',
'P_FRACTION_ID => :P40_FRACTION_ID,',
'P_SCHEDULE_SRNO => :P40_SCHEDULE_SRNO_1,',
'P_SCHEDULE_EVENT_ID => NVL(:P40_SCHEDULE_EVENT_ID,''353''),',
'P_FIRST_TECH => :P40_DISP_MRNO1,',
'P_SECOND_TECH  => :P40_DISP_MRNO2,',
'P_USER_MRNO => :GV_USER_MRNO,',
'P_OBJECT_CODE  => ''S18APX00039'',',
'P_TERMINAL     => :GV_TERMINAL,',
'P_ALERT_TEXT   => V_ALERT_TEXT,',
'P_STOP         => V_STOP',
');',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P40_MESSAGE1:= V_alert_text;',
'          :P40_SIGN_STATUS := ''F'';',
'          RETURN;',
'        ELSE',
'        :P40_MESSAGE1:= ''Record SIGNED Properly ...'';',
'        :P40_SIGN_STATUS := ''S'';',
'        END IF;',
'      END;',
'    END IF;',
'    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P40_PASSWORD1,P40_PASSWORD2,P40_PATIENT_MRNO1,P40_PATIENT_MRNO2,P40_MASTER_SITE_ID,P40_SCHEDULE_SRNO_1,P40_SCHEDULE_EVENT_ID,P40_DISP_MRNO1,P40_DISP_MRNO2,P40_SITE_ID,P40_FRACTION_ID,P40_MESSAGE1,P40_MESSAGE2,P40_SIGN_STATUS'
,p_attribute_03=>'P40_MESSAGE1,P40_MESSAGE2,P40_SIGN_STATUS'
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
 p_id=>wwv_flow_imp.id(4247048523482526)
,p_event_id=>wwv_flow_imp.id(4245476286482510)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P40_MESSAGE1.'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P40_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29501091659373650)
,p_event_id=>wwv_flow_imp.id(4245476286482510)
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
'    INTO :P40_FIRST_CT_SIGN_NAME,',
'         :P40_SECOND_CT_SIGN_NAME,',
'         :P40_SIGN_DATE,',
'         :P40_STATUS_ID,',
'         :P40_STATUS_DESCRIPTION',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P40_RADIATION_NO_2',
'     AND SITE_ID = NVL(:P40_MASTER_SITE_ID, :P40_SITE_ID)',
'     AND FRACTION_ID = :P40_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P40_RADIATION_NO_2,P40_MASTER_SITE_ID,P40_SITE_ID,P40_SCHEDULE_FRACTION_ID'
,p_attribute_03=>'P40_FIRST_CT_SIGN_NAME,P40_SECOND_CT_SIGN_NAME,P40_SIGN_DATE,P40_STATUS_ID,P40_STATUS_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43328040603050202)
,p_event_id=>wwv_flow_imp.id(4245476286482510)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P40_MESSAGE1.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43328258264050204)
,p_event_id=>wwv_flow_imp.id(4245476286482510)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5211807586475849)
,p_name=>'Get-Patient-Code'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_DISP_MRNO1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246057348482516)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P40_DISP_MRNO1 IS NOT NULL THEN',
'    :P40_PATIENT_TYPE1 := substr(:P40_DISP_MRNO1, 1, 6);',
'    :P40_PATIENT_MRNO1 := LTRIM(SUBSTR(:P40_DISP_MRNO1, 7), ''0'');',
'    :P40_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P40_DISP_MRNO1);',
'--  END IF;',
'END;',
'-- BEGIN',
'--   IF :P40_DISP_MRNO2 IS NOT NULL THEN',
'--     :P40_PATIENT_TYPE2 := substr(:P40_DISP_MRNO2, 1, 6);',
'--     :P40_PATIENT_MRNO2 := LTRIM(SUBSTR(:P40_DISP_MRNO2, 7), ''0'');',
'--     :P40_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P40_DISP_MRNO2);',
'--   END IF;',
'-- END;',
'',
''))
,p_attribute_02=>'P40_DISP_MRNO1'
,p_attribute_03=>'P40_PATIENT_TYPE1,P40_PATIENT_MRNO1,P40_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5212257482475849)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PASSWORD1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5212722251475850)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_PATIENT_TYPE1 IS NOT NULL AND :P40_PATIENT_MRNO1 IS NOT NULL THEN',
':P40_DISP_MRNO1 := :P40_PATIENT_TYPE1 ||LPAD(:P40_PATIENT_MRNO1, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P40_DISP_MRNO1,P40_PATIENT_TYPE1,P40_PATIENT_MRNO1'
,p_attribute_03=>'P40_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5213278029475850)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P40_ERROR := NULL;',
'  IF :P40_PATIENT_MRNO1 IS NOT NULL THEN',
'    :P40_DISP_MRNO1 := :P40_PATIENT_TYPE1 || LPAD(:P40_PATIENT_MRNO1, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P40_DISP_MRNO1), ''N'') = ''N'' THEN',
'      :P40_ERROR        := ''This is not an active employee.'';',
'      :P40_PATIENT_MRNO1 := NULL;',
'      :P40_DISP_MRNO1    := NULL;',
'      :P40_NAME1        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P40_NAME1',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P40_DISP_MRNO1',
'           AND ACTIVE = ''Y'';',
'        --:GV_EMPLOYEE_NAME := :P40_NAME;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P40_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P40_ERROR,P40_PATIENT_MRNO1,P40_PATIENT_TYPE1,P40_DISP_MRNO1,P40_NAME1'
,p_attribute_03=>'P40_ERROR,P40_PATIENT_MRNO1,P40_PATIENT_TYPE1,P40_DISP_MRNO1,P40_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5213795278475850)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P40_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P40_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5214236250475850)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P40_NAME1:= his.pkg_patient.GET_PATIENT_NAME(:P40_DISP_MRNO1);'
,p_attribute_02=>'P40_DISP_MRNO1'
,p_attribute_03=>'P40_NAME1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P40_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5214704626475850)
,p_event_id=>wwv_flow_imp.id(5211807586475849)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_NAME1'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P40_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4246321404482519)
,p_name=>'Get-Patient-Code_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PATIENT_MRNO2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246659222482522)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P40_ERROR := NULL;',
'  IF :P40_PATIENT_MRNO2 IS NOT NULL THEN',
'    :P40_DISP_MRNO2 := :P40_PATIENT_TYPE2 || LPAD(:P40_PATIENT_MRNO2, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P40_DISP_MRNO2), ''N'') = ''N'' THEN',
'      :P40_ERROR        := ''This is not an active employee.'';',
'      :P40_PATIENT_MRNO2 := NULL;',
'      :P40_DISP_MRNO2    := NULL;',
'      :P40_NAME2        := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P40_NAME2',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P40_DISP_MRNO2',
'           AND ACTIVE = ''Y'';',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P40_ERROR := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P40_ERROR,P40_PATIENT_MRNO2,P40_PATIENT_TYPE2,P40_DISP_MRNO2,P40_NAME2'
,p_attribute_03=>'P40_ERROR,P40_PATIENT_MRNO2,P40_PATIENT_TYPE2,P40_DISP_MRNO2,P40_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246236187482518)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--  IF :P40_DISP_MRNO2 IS NOT NULL THEN',
'    :P40_PATIENT_TYPE2 := substr(:P40_DISP_MRNO2, 1, 6);',
'    :P40_PATIENT_MRNO2 := LTRIM(SUBSTR(:P40_DISP_MRNO2, 7), ''0'');',
'    :P40_NAME2         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P40_DISP_MRNO2);',
'--  END IF;',
'END;',
'',
''))
,p_attribute_02=>'P40_DISP_MRNO2'
,p_attribute_03=>'P40_PATIENT_TYPE2,P40_PATIENT_MRNO2,P40_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246454705482520)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PASSWORD2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246506551482521)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P40_PATIENT_TYPE2 IS NOT NULL AND :P40_PATIENT_MRNO2 IS NOT NULL THEN',
':P40_DISP_MRNO2 := :P40_PATIENT_TYPE2 ||LPAD(:P40_PATIENT_MRNO2, 8, ''0'');',
'END IF;',
'END;'))
,p_attribute_02=>'P40_DISP_MRNO1,P40_PATIENT_TYPE1,P40_PATIENT_MRNO1'
,p_attribute_03=>'P40_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246782885482523)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P40_ERROR.'
,p_attribute_02=>'Stop'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P40_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246836750482524)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P40_NAME2:= his.pkg_patient.GET_PATIENT_NAME(:P40_DISP_MRNO2);'
,p_attribute_02=>'P40_DISP_MRNO2'
,p_attribute_03=>'P40_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P40_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4246965731482525)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_NAME2'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P40_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54531719938908209)
,p_event_id=>wwv_flow_imp.id(4246321404482519)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P40_PASSWORD2").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4247134591482527)
,p_name=>'ClearItems'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4247217769482528)
,p_event_id=>wwv_flow_imp.id(4247134591482527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_MESSAGE1,P40_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4247763094482533)
,p_event_id=>wwv_flow_imp.id(4247134591482527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P40_DISP_MRNO2:=:GV_USER_MRNO;',
':P40_DISP_MRNO1:=:GV_USER_MRNO;'))
,p_attribute_03=>'P40_DISP_MRNO2,P40_DISP_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4247568503482531)
,p_name=>'close_dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9390292304251023)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4247696822482532)
,p_event_id=>wwv_flow_imp.id(4247568503482531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4248016214482536)
,p_name=>'ShowHideSignBtn'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_STATUS_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4248143509482537)
,p_event_id=>wwv_flow_imp.id(4248016214482536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P40_STATUS_ID")==''020'') ',
'{',
'apex.item("sign_btn").enable();',
'apex.item("dis_btn").enable();',
'apex.item("create_btn").disable();',
'apex.item("fetch_btn").disable();',
'//apex.item("save_btn").disable();',
'}',
'else if ($v("P40_STATUS_ID")==null || $v("P40_STATUS_ID")=='''')',
'{',
'apex.item("create_btn").enable();',
'apex.item("sign_btn").disable();',
'apex.item("dis_btn").disable();',
'apex.item("fetch_btn").disable();',
'apex.item("save_btn").disable();',
'}',
'else if ($v("P40_STATUS_ID")==''015'')',
'{',
'apex.item("fetch_btn").enable();',
'apex.item("save_btn").disable();',
'apex.item("sign_btn").disable();',
'apex.item("dis_btn").disable();',
'apex.item("create_btn").disable();',
'',
'',
'}',
'else if ($v("P40_STATUS_ID")==''248'')',
'{',
'apex.item("save_btn").enable();',
'apex.item("sign_btn").disable();',
'apex.item("dis_btn").disable();',
'apex.item("create_btn").disable();',
'apex.item("fetch_btn").disable();',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5173098941274714)
,p_name=>'PopulateFeildsRegion'
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8724562125140942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5173105344274715)
,p_event_id=>wwv_flow_imp.id(5173098941274714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'// apex.item("P40_ISOCENTER_ID_ND").setValue(radiationNo);',
'',
'$s(''P40_ISOCENTER_ID_ND'',_.isocenter.ISOCENTER_ID);',
'apex.region("feildrg").refresh();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31367232522760143)
,p_event_id=>wwv_flow_imp.id(5173098941274714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8756405973166042)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38982229948179907)
,p_event_id=>wwv_flow_imp.id(5173098941274714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.region("feildrg").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8222611511175983)
,p_name=>'Sign_btn_OpenRG'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5592025869100139)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43328179971050203)
,p_event_id=>wwv_flow_imp.id(8222611511175983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PASSWORD1,P40_PATIENT_MRNO2,P40_NAME2,P40_PASSWORD2,P40_MESSAGE1,P40_MESSAGE2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8223068478175984)
,p_event_id=>wwv_flow_imp.id(8222611511175983)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P40_MRNO1         := :GV_USER_MRNO;',
'    :P40_PATIENT_TYPE1 := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P40_PATIENT_TYPE2:= SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P40_PATIENT_MRNO1    := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'   -- :P40_PATIENT_MRNO1    := LPAD(:P40_PATIENT_MRNO1, 8, ''0'');',
'    :P40_DISP_MRNO1 := (:P40_PATIENT_TYPE1 ||LPAD(:P40_PATIENT_MRNO1, 8, ''0''));',
'    :P40_NAME1         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P40_DISP_MRNO1);',
'    :P40_DISP_MRNO2:=null;',
'  END;',
'',
''))
,p_attribute_02=>'P40_MRNO1,P40_DISP_MRNO1,P40_NAME1,P40_PATIENT_MRNO1'
,p_attribute_03=>'P40_MRNO1,P40_PATIENT_TYPE1,P40_PATIENT_TYPE2,P40_DISP_MRNO1,P40_DISP_MRNO2,P40_NAME1,P40_PATIENT_MRNO1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8223527282175984)
,p_event_id=>wwv_flow_imp.id(8222611511175983)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign_rg");',
'apex.item("P40_PASSWORD1").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54531345863908205)
,p_name=>'SetFocus@EnterKey'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PASSWORD1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54531544440908207)
,p_event_id=>wwv_flow_imp.id(54531345863908205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P40_PATIENT_MRNO2").setFocus();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54531809381908210)
,p_name=>'DASign@EnterKey'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PASSWORD2'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54532388776908215)
,p_event_id=>wwv_flow_imp.id(54531809381908210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DEBUG.SUSPEND;',
'DECLARE',
'  USERPASSWORD  VARCHAR2(25) := :P40_PASSWORD1;',
'  USERPASSWORD2  VARCHAR2(25) := :P40_PASSWORD2;',
'  CURRENTCHAR   NUMBER(4);',
'  NEWPASSWORD   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  NEWPASSWORD2   SECURITY.USERS.PASSWORD%TYPE := '' '';',
'  SAVEDPASSWORD SECURITY.USERS.PASSWORD%TYPE;',
'  SAVEDPASSWORD2 SECURITY.USERS.PASSWORD%TYPE;',
'  V_PW_FLAG     SECURITY.USERS.NEW_PASSWORD_FLAG%TYPE;',
'  LOGIN         NUMBER;',
'',
'BEGIN  ',
':P40_MESSAGE1 := NULL;',
':P40_MESSAGE2 := NULL;',
':P40_SIGN_STATUS := NULL;',
'  IF :P40_PATIENT_MRNO1 IS NULL THEN',
'    :P40_MESSAGE1:=''Please enter Employee Code'';',
'    RETURN;',
'    ELSIF :P40_PATIENT_MRNO2 IS NULL THEN',
'    :P40_MESSAGE2:=''Please enter Employee Code'';',
'    RETURN;',
'  ELSIF :P40_PASSWORD1 IS NULL THEN',
'    :P40_MESSAGE1:=''Please enter Password'';',
'    RETURN;',
'    ELSIF :P40_PASSWORD2 IS NULL THEN',
'    :P40_MESSAGE2:=''Please enter Password'';',
'    RETURN;  ',
'  ELSE',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P40_DISP_MRNO1',
'       AND ACTIVE = ''Y'';',
'    SELECT PASSWORD, NEW_PASSWORD_FLAG',
'      INTO SAVEDPASSWORD2, V_PW_FLAG',
'      FROM SECURITY.USERS',
'     WHERE MRNO = :P40_DISP_MRNO2',
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
'    :P40_MESSAGE1:=''Incorrect Password'';',
'     RETURN;',
'    ELSIF NEWPASSWORD2<>SAVEDPASSWORD2 THEN',
'    :P40_MESSAGE2:=''Incorrect Password'';',
'     RETURN; ',
'    ELSE',
'    ',
'    ',
'  --END IF;',
'',
'--IF F_IS_AUTHORIZED(:P40_MRNO1, :P40_PASSWORD1, ''1'') AND F_IS_AUTHORIZED(:P40_MRNO2, :P40_PASSWORD2, ''2'') THEN',
'    ',
'DECLARE',
'    V_ALERT_TEXT VARCHAR2(4000);',
'    V_STOP       CHAR(1) := ''N'';',
'BEGIN',
'RADIATION.PKG_S18FRM00145.SIGN_PERFORMANCE',
'(',
'P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'P_RADIATION_NO => :P40_RADIATION_NO_2,',
'P_SITE_ID => NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID),',
'P_FRACTION_ID => :P40_FRACTION_ID,',
'P_SCHEDULE_SRNO => :P40_SCHEDULE_SRNO_1,',
'P_SCHEDULE_EVENT_ID => NVL(:P40_SCHEDULE_EVENT_ID,''353''),',
'P_FIRST_TECH => :P40_DISP_MRNO1,',
'P_SECOND_TECH  => :P40_DISP_MRNO2,',
'P_USER_MRNO => :GV_USER_MRNO,',
'P_OBJECT_CODE  => ''S18APX00039'',',
'P_TERMINAL     => :GV_TERMINAL,',
'P_ALERT_TEXT   => V_ALERT_TEXT,',
'P_STOP         => V_STOP',
');',
'        IF NVL(V_stop, ''N'') = ''Y'' THEN',
'          :P40_MESSAGE1:= V_alert_text;',
'          :P40_SIGN_STATUS := ''F'';',
'          RETURN;',
'        ELSE',
'        :P40_MESSAGE1:= ''Record SIGNED Properly ...'';',
'        :P40_SIGN_STATUS := ''S'';',
'        END IF;',
'      END;',
'    END IF;',
'    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P40_PASSWORD1,P40_PASSWORD2,P40_PATIENT_MRNO1,P40_PATIENT_MRNO2,P40_MASTER_SITE_ID,P40_SCHEDULE_SRNO_1,P40_SCHEDULE_EVENT_ID,P40_DISP_MRNO1,P40_DISP_MRNO2,P40_SITE_ID,P40_FRACTION_ID,P40_MESSAGE1,P40_MESSAGE2,P40_SIGN_STATUS'
,p_attribute_03=>'P40_MESSAGE1,P40_MESSAGE2,P40_SIGN_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54532462895908216)
,p_event_id=>wwv_flow_imp.id(54531809381908210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P40_MESSAGE1.'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P40_MESSAGE1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54532573753908217)
,p_event_id=>wwv_flow_imp.id(54531809381908210)
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
'    INTO :P40_FIRST_CT_SIGN_NAME,',
'         :P40_SECOND_CT_SIGN_NAME,',
'         :P40_SIGN_DATE,',
'         :P40_STATUS_ID,',
'         :P40_STATUS_DESCRIPTION',
'  ',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P40_RADIATION_NO_2',
'     AND SITE_ID = NVL(:P40_MASTER_SITE_ID, :P40_SITE_ID)',
'     AND FRACTION_ID = :P40_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P40_RADIATION_NO_2,P40_MASTER_SITE_ID,P40_SITE_ID,P40_SCHEDULE_FRACTION_ID'
,p_attribute_03=>'P40_FIRST_CT_SIGN_NAME,P40_SECOND_CT_SIGN_NAME,P40_SIGN_DATE,P40_STATUS_ID,P40_STATUS_DESCRIPTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54532646121908218)
,p_event_id=>wwv_flow_imp.id(54531809381908210)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P40_MESSAGE1.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54532795305908219)
,p_event_id=>wwv_flow_imp.id(54531809381908210)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''sign_rg'');'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_SIGN_STATUS'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5592924853100148)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMLPorcessRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PERFORM_TAB RADIATION.PKG_S18FRM00145.RAD_PERFORM_TAB;',
'BEGIN',
'  SELECT :P40_RADIATION_NO_2,',
'         :P40_SITE_ID,',
'         :P40_FRACTION_ID,',
'         null ENTRY_DATE,',
'         :P40_MACHINE_ID,',
'         null FRACTION_DATE,',
'         :P40_DOSE_FRACTION,',
'         :P40_PERFORMED_DOSE,',
'         :P40_SCHEDULE_SRNO,',
'         :P40_OC_SERIAL_NO,',
'         :P40_FIRST_CT_SIGN_NAME,',
'         :P40_SECOND_CT_SIGN_NAME,',
'         --NVL(:P40_SIGN_DATE, to_date(sysdate, ''DD-MON-YY HH24:MI'')),',
'         null SIGN_DATE,',
'         ''020'',',
'         NULL,',
'         :P40_REMARKS,',
'         :P40_PLAN_ID,',
'         :P40_PHY_PLAN_ID,',
'         :P40_SIMULATION_ID,',
'         :P40_PLAN_CHECK_ID,',
'         :P40_ANAESTHESIA,',
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
,p_process_when_button_id=>wwv_flow_imp.id(13571371046199512)
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>5592924853100148
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12013658032911320)
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
'                                             P_SITE_ID           => :P40_MASTER_SITE_ID,',
'                                             P_FRACTION_ID       => :P40_FRACTION_ID,',
'                                             P_SCHEDULE_SRNO     => :P40_SCHEDULE_SRNO_1,',
'                                             P_SCHEDULE_EVENT_ID => ''352'',--:P40_SCHEDULE_EVENT_ID,',
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
'    APEX_UTIL.SET_SESSION_STATE(''P40_ALERT'', ''Record signed successfully'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(5592025869100139)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record signed successfully'
,p_internal_uid=>12013658032911320
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
 p_id=>wwv_flow_imp.id(12014009374911324)
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
'                                                   P_RADIATION_NO      => :P40_RADIATION_NO_2,',
'                                                   P_SITE_ID           => NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID),',
'                                                   P_SCHEDULE_SRNO     => :P40_SCHEDULE_SRNO_1,',
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
'    APEX_UTIL.SET_SESSION_STATE(''P40_ALERT'', ''Performance created successfully'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(9390069746251021)
,p_process_success_message=>'Performance created successfully'
,p_internal_uid=>12014009374911324
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12014860706911332)
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
'                                              P_RADIATION_NO      => :P40_RADIATION_NO_2,',
'                                              P_SITE_ID           => NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID),',
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
'    APEX_UTIL.SET_SESSION_STATE(''P40_ALERT'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(12014108282911325)
,p_process_success_message=>'Performance Fetched successfully'
,p_internal_uid=>12014860706911332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13571413549199513)
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
'                                               P_RADIATION_NO      => :P40_RADIATION_NO_2,',
'                                               P_SITE_ID           => NVL(:P40_MASTER_SITE_ID,:P40_SITE_ID),',
'                                               P_FRACTION_ID       => :P40_FRACTION_ID,',
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
'    APEX_UTIL.SET_SESSION_STATE(''P40_ALERT'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(9390160821251022)
,p_process_success_message=>'Performance Disposed successfully'
,p_internal_uid=>13571413549199513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38986414017179949)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ClearParameters'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P40_MRNO            := NULL;',
'  :P40_SCHEDULE_SRNO_1 := NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>38986414017179949
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4247827772482534)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetParameters'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P40_MRNO            := :LV_PATIENT_MRNO;',
'  :P40_SCHEDULE_SRNO_1 := :LV_SR_NO;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4247827772482534
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3346473585153228)
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
'    INTO :P40_RADIATION_NO_2,',
'         :P40_RADIATION_DATE_1,',
'         :P40_MRNO,',
'         :P40_PATIENT_NAME_1,',
'         :P40_AGE,',
'         :P40_SEX,',
'         :P40_SERVICE_NO,',
'         :P40_SERVICE_STATUS,',
'         :P40_RANK,',
'         :P40_SERVICE_STATUS,',
'         :P40_UNIT,',
'         :P40_DOCTOR_ID,',
'         :P40_CONSULTANT,',
'         :P40_TREATMENT_INTENT,',
'         :P40_SITE_ID,',
'         :P40_SITE_DISP,',
'         :P40_SETUP_POSITION_DESC,',
'         :P40_ARM_POSITION_DESC,',
'         :P40_NECK_POSITION_DESC,',
'         :P40_POSITION_INSTRUCTION,',
'         :P40_STATUS,',
'         :P40_STATUS_ID',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.MRNO LIKE CASE',
'           WHEN :P40_MRNO IS NOT NULL THEN',
'            ''%'' || :P40_MRNO',
'           ELSE',
'            M.MRNO',
'         END',
'     AND M.RADIOTHERAPY_TYPE = ''T''',
'     AND (:P40_SCHEDULE_SRNO_1 IS NULL OR EXISTS',
'          (SELECT 1',
'             FROM RADIATION.SCHEDULE S',
'            WHERE S.RADIATION_NO = D.RADIATION_NO',
'              AND S.SITE_ID = D.SITE_ID',
'              AND S.SR_NO = :P40_SCHEDULE_SRNO_1))',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3346473585153228
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8147089583519548)
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
'    INTO :P40_MASTER_SITE_ID, :P40_SCHEDULE_EVENT_ID',
'    FROM RADIATION.SCHEDULE S, RADIATION.SCHEDULE_WORKFLOW SW',
'   WHERE SW.SR_NO = S.SR_NO',
'     AND S.SR_NO = :P40_SCHEDULE_SRNO',
'     AND S.WFE_NO = SW.WFE_NO;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8147089583519548
);
wwv_flow_imp.component_end;
end;
/

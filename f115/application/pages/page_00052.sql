prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'RADIOTHERAPY_CONSENT'
,p_alias=>'RADIOTHERAPY_CONSENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiotherapy Consent'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.consent-status {',
'  color: rgb(10, 10, 83) !important;',
'  font-weight: bold !important;',
'}',
'',
'.a-GV-table tr:nth-child(even) .a-GV-cell',
'{ background-color: rgb(232, 232, 232);',
'}',
'.a-GV-table tr:nth-child(odd) .a-GV-cell',
'{ background-color: white;',
'}',
'',
'.even-row {',
'    background-color: #f0f0f0; /* Light gray */',
'}',
'',
'.odd-row {',
'    background-color: #ffffff; /* White */',
'}',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}',
'',
'.rg_label {',
'  background: #d7d5d5;',
'  color: rgb(4, 4, 247) !important;',
'  font-weight: bold !important;',
'}',
'',
'.a-GV-pageRange{',
'    display:none;',
'}',
'',
'#P52_SELECT_REQUEST {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_CONSENTER1_RELATION_TO_PATIENT {',
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
'#P52_SITE_DESC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PERSON_OBTAINING_CONSENT {',
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
'#P52_SITE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_SENDBACKHISTORY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_ACUTE_SIDE_EFFECT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_CHRONIC_SIDE_EFFECT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P52_SURGICAL_ANESTHESIA {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_CONSENTER1_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PERSON_OBTAIN_CON_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_ND_RELATION_WITH_PATIENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PATIENT_CNIC {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_OBTAINING_CONSENT_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P52_CONSENTER1_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_HEALTH_PROFESSIONAL_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_INTERPRETER_REQUIRED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_HEALTH_PROFESSIONAL_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_INTERPRETER_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_INTERPRETER_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_LANGUAGE_ID {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_WITNESS_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_WITNESS_NAME_OTHER_PERSON{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_WITNESS_DATE{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_EMERGENCY_PRINTING{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PRINTING_REMARKS{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_CANCELLED_BY_NAME{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_CANCELLED_DATE{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_CONSENT_TYPE{',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PATIENT_TYPE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PATIENT_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P52_PASSWORD {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}'))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20250114115925'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75181108027765326)
,p_plug_name=>'Consent'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       SERIAL_NO,',
'       MRNO,',
'       ADMISSION_NO,',
'       ORDER_KEY,',
'       HEALTH_PROFESSIONAL_MRNO,',
'       HEALTH_PROFESSIONAL_DATE,',
'       WITNESS_MRNO,',
'       WITNESS_DATE,',
'       INTERPRETER_MRNO,',
'       INTERPRETER_DATE,',
'       CONSENTER1_NAME,',
'       CONSENTER1_RELATION_TO_PATIENT,',
'       CONSENTER1_DATE,',
'       CONSENTER2_NAME,',
'       CONSENTER2_RELATION_TO_PATIENT,',
'       CONSENTER2_DATE,',
'       CONSENT_FORM_NAME,',
'       DETAIL_1,',
'       DETAIL_2,',
'       DETAIL_3,',
'       INTERPRETER_NAME,',
'       WITNESS_NAME_OTHER_PERSON,',
'       CPT_ID,',
'       ANY_ADDITIONAL_INFORMATION,',
'       ATTENDING_PHYSICIANS,',
'       CONDITION_BEING_TREATED,',
'       PROTOCOL,',
'       DURATION_OF_TREATMENT,',
'       OTHER_PROTOCOL,',
'       CPT_DESCRIPTION,',
'       P_SERIAL_NO,',
'       INTERPRETER_REQUIRED,',
'       HEALTH_STATEMENT_REQ,',
'       LANGUAGE_ID,',
'       SURGICAL_ANESTHESIA,',
'       RESP_HEALTH_PRO,',
'       TISSUE_RESEARCH_TEACH,',
'       PERSON_OBTAINING_CONSENT,',
'       OBTAINING_CONSENT_DATE,',
'       HEALTH_PROFESSIONAL_STAT_ID,',
'       MULTIPLE_CPT_ID,',
'       CHEMO_LEAFLET_INSTRUCTIONS,',
'       ENTERED_BY,',
'       ENTERED_DATE,',
'       THERAPEUTIC_APHERESIS,',
'       PROCEDURE_REST_BY_PATIENT,',
'       FORWARDED_BY,',
'       FORWARDED_DATE,',
'       SIGNED_BY,',
'       SIGNED_DATE,',
'       CPT_ID_HIST,',
'       CPT_DESCRIPTION_HIST,',
'       MULTIPLE_CPT_ID_HIST,',
'       ANY_ADDITIONAL_INFO_HIST,',
'       DETAIL_1_HIST,',
'       DETAIL_2_HIST,',
'       SURGICAL_ANESTHESIA_HIST,',
'       ATTENDING_PHYSICIANS_HIST,',
'       PROTOCOL_HIST,',
'       CONDITION_BEING_TREATED_HIST,',
'       OTHER_PROTOCOL_HIST,',
'       DURATION_OF_TREATMENT_HIST,',
'       P_SERIAL_NO_HIST,',
'       PROCEDURE_REST_BY_PATIENT_HIST,',
'       EVENT,',
'       FINALIZED,',
'       CONSENT_CHANGED,',
'       FERTILITY_RISK_ID,',
'       FERTILITY_REMARKS,',
'       CANCELLED_BY,',
'       CANCELLED_DATE,',
'       FERTILITY_RISK_ID_HIST,',
'       FERTILITY_REMARKS_HIST,',
'       NULL ACTUAL_MRNO,',
'       POC_DIGITALLY_SIGNED,',
'       WIT_DIGITALLY_SIGNED,',
'       PAT_DIGITALLY_SIGNED,',
'       PATIENT_CNIC,',
'       EMERGENCY_PRINTING,',
'       PRINTING_REMARKS,',
'       PAT_SIGN_DATE,',
'       POC_SIGN_DATE,',
'       E_PRINT_ACKNOWLEDGE,',
'       RADIATION_NO,',
'       SITE_ID,',
'       ACUTE_SIDE_EFFECT,',
'       CHRONIC_SIDE_EFFECT,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.MRNO) PATIENT_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.Health_Professional_Mrno) HEALTH_PROFESSIONAL_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.WITNESS_MRNO) WITNESS_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.ATTENDING_PHYSICIANS) ATTENDING_PHYSICIANS_NAME,',
'       (SELECT L.DESCRIPTION',
'          FROM DEFINITIONS.LANGUAGES L',
'         WHERE L.LANGUAGE_ID = C.LANGUAGE_ID) LANGUAGE_DESC,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.Person_Obtaining_Consent) PERSON_OBTAIN_CON_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.Entered_By) ENTERED_BY_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.FORWARDED_BY) FORWARDED_BY_NAME,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.SIGNED_BY) SIGNED_BY_NAME,',
'       RADIATION.PKG_S18APX00072.F_GET_EVENT_DESC(P_SERIAL_NO     => C.SERIAL_NO,',
'                                                   P_CALLED_FROM_Q => CASE',
'                                                                        WHEN /*P_ASSIGNMENT_ID*/ NULL IS NOT NULL THEN',
'                                                                         ''Y''',
'                                                                        ELSE',
'                                                                         ''N''',
'                                                                      END) EVENT_DESC,',
'       HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => C.CANCELLED_BY) CANCELLED_BY_NAME,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => C.SITE_ID) SITE_DESC,',
'       (SELECT DESCRIPTION',
'          FROM DEFINITIONS.RELATION',
'         WHERE RELATION_ID = C.CONSENTER1_RELATION_TO_PATIENT) ND_RELATION_WITH_PATIENT,',
'       (SELECT O.DESCRIPTION',
'          FROM DEFINITIONS.PREGNANCY_RULED_OUT O',
'         WHERE O.SERIAL_NO = C.SERIAL_NO) P_DESC,',
'       (SELECT HPS.HEALTH_PROFESSIONAL_DESC',
'          FROM ORDERENTRY.HEALTH_PROFESSIONAL_STATEMENT HPS',
'         WHERE HPS.HEALTH_PROFESSIONAL_STAT_ID =',
'               C.HEALTH_PROFESSIONAL_STAT_ID) HEALTH_PROFESSIONAL_STATEMENT,',
'       UPPER(HIS.PKG_PATIENT.GET_GENDER(P_MRNO => C.MRNO)) HP_DESC,',
'       HIS.PKG_PATIENT.F_PATIENT_AGE(C.MRNO) AGE',
'  FROM ORDERENTRY.CONSENT_FORM_INFORMATION C',
' WHERE MRNO = NULL',
'   AND SERIAL_NO = NVL(NULL, SERIAL_NO)',
'   AND CONSENT_FORM_NAME = NULL',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78662181744087142)
,p_plug_name=>'Button Container'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>12
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80213662526303113)
,p_plug_name=>'Consent History'
,p_region_name=>'consenthist'
,p_region_css_classes=>'even-row'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => D.SITE_ID) SITE,',
'       T.DESCRIPTION RADIOTHERAPY_TYPE,',
'       HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => M.DOCTOR_ID,',
'                                      P_DOCTOR_MRNO => NULL) DOTOR,',
'       TO_DATE(TO_CHAR(M.RADIATION_DATE, ''DD-MON-YY''), ''DD-MON-YY'') REQUEST_DATE,',
'       M.RADIATION_NO,',
'       D.SITE_ID,',
'       C.SERIAL_NO,',
'       TO_DATE(TO_CHAR(C.HEALTH_PROFESSIONAL_DATE, ''DD-MON-YYYY HH24:MI''), ''DD-MON-YYYY HH24:MI'') HEALTH_PROFESSIONAL_DATE',
'  FROM ORDERENTRY.CONSENT_FORM_INFORMATION C,',
'       RADIATION.RADIATION_MASTER          M,',
'       RADIATION.RADIATION_DETAIL          D,',
'       RADIATION.RADIOTHERAPY_TYPE         T',
' WHERE C.MRNO = :P52_MRNO',
'   AND C.SERIAL_NO = NVL(:P52_PARAM_SERIAL_NO, C.SERIAL_NO)',
'   AND M.MRNO = C.MRNO',
'   AND M.RADIATION_NO = D.RADIATION_NO',
'   AND C.RADIATION_NO = M.RADIATION_NO',
'   AND C.SITE_ID = D.SITE_ID',
'   AND M.STATUS_REQUEST = ''015''',
'   AND CONSENT_FORM_NAME = ''X''',
'   AND M.RADIOTHERAPY_TYPE = T.TREATMENT_TYPE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P52_MRNO,P52_PARAM_SERIAL_NO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Consent History'
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
 p_id=>wwv_flow_imp.id(80214953570303126)
,p_name=>'SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Site</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(80215066768303127)
,p_name=>'RADIOTHERAPY_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIOTHERAPY_TYPE'
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
 p_id=>wwv_flow_imp.id(80215170510303128)
,p_name=>'Consultant'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOTOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Consultant</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(80215294944303129)
,p_name=>'REQUEST_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUEST_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'<b><p style="color:#00008B">Radiation <br> Date</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>2
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
 p_id=>wwv_flow_imp.id(80215335291303130)
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
 p_id=>wwv_flow_imp.id(80215426885303131)
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
 p_id=>wwv_flow_imp.id(80215780269303134)
,p_name=>'SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NO'
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
 p_id=>wwv_flow_imp.id(163106393861207126)
,p_name=>'HEALTH_PROFESSIONAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEALTH_PROFESSIONAL_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(80214845949303125)
,p_internal_uid=>80214845949303125
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
 p_id=>wwv_flow_imp.id(81352902680409950)
,p_interactive_grid_id=>wwv_flow_imp.id(80214845949303125)
,p_static_id=>'813530'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(81353169571409950)
,p_report_id=>wwv_flow_imp.id(81352902680409950)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81353612770409952)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(80214953570303126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81354503488409954)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(80215066768303127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81355462843409957)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(80215170510303128)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81356388578409959)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(80215294944303129)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81357218078409962)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(80215335291303130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81358153844409964)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(80215426885303131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(81593840372252684)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(80215780269303134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(165986943135696085)
,p_view_id=>wwv_flow_imp.id(81353169571409950)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(163106393861207126)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81755795808713308)
,p_plug_name=>'SendBackHistory'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81759551653713346)
,p_plug_name=>'Send Back'
,p_region_name=>'sendbackreg'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>60
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(319727147787331506)
,p_plug_name=>'Consent Sign'
,p_region_name=>'signconsent'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78662256277087143)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'PRINT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78662390611087144)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'Save'
,p_button_static_id=>'savebtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78662482556087145)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'FORWARD'
,p_button_static_id=>'forwardbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Forward'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78662510196087146)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'SIGN'
,p_button_static_id=>'signbtn'
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
 p_id=>wwv_flow_imp.id(78662657545087147)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'CancelConsent'
,p_button_static_id=>'cancelbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Consent'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78662780173087148)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'SendBack'
,p_button_static_id=>'sendbackbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Back '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78662860862087149)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'SendBackHistory'
,p_button_static_id=>'sendbackhistbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Back History'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80213128460303108)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80213285456303109)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'PatientSign'
,p_button_static_id=>'patsignbtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Patient Sign'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80213301323303110)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'AttachDocument'
,p_button_static_id=>'attachdocbtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Attach Document '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78661716286087138)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_button_name=>'SignPersonObtainConsent'
,p_button_static_id=>'signpoc'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Sign</b>'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82248800842960229)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
,p_button_name=>'Delete'
,p_button_static_id=>'deletebtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete '
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80213411043303111)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(78662181744087142)
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
 p_id=>wwv_flow_imp.id(78662057098087141)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_button_name=>'SignWitness'
,p_button_static_id=>'signwit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Sign</b>'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(83613336709811919)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_button_name=>'ShowList'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show List'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82075042391734186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
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
 p_id=>wwv_flow_imp.id(81759719716713348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(81759551653713346)
,p_button_name=>'SendBackConsent'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b> Send Back</b>'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82075454752734187)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_button_name=>'SignRadiationConsent'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81759805437713349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(81759551653713346)
,p_button_name=>'BTNBack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Exit</b>'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75181459547765329)
,p_name=>'P52_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75181540366765330)
,p_name=>'P52_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75181737399765332)
,p_name=>'P52_ADMISSION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ADMISSION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75181820223765333)
,p_name=>'P52_ORDER_KEY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ORDER_KEY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75181905157765334)
,p_name=>'P52_HEALTH_PROFESSIONAL_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'HEALTH_PROFESSIONAL_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182031227765335)
,p_name=>'P52_HEALTH_PROFESSIONAL_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_source=>'HEALTH_PROFESSIONAL_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(75182186626765336)
,p_name=>'P52_WITNESS_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Witness Identifier:</p></b>'
,p_source=>'WITNESS_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182226564765337)
,p_name=>'P52_WITNESS_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_source=>'WITNESS_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182352125765338)
,p_name=>'P52_INTERPRETER_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'INTERPRETER_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182475453765339)
,p_name=>'P52_INTERPRETER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_source=>'INTERPRETER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182574902765340)
,p_name=>'P52_CONSENTER1_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Person Giving Consent:</p></b>'
,p_source=>'CONSENTER1_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182623808765341)
,p_name=>'P52_ND_RELATION_WITH_PATIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ND_RELATION_WITH_PATIENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182741242765342)
,p_name=>'P52_CONSENTER1_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_source=>'CONSENTER1_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182844549765343)
,p_name=>'P52_CONSENTER2_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONSENTER2_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75182910571765344)
,p_name=>'P52_CONSENTER2_RELATION_TO_PATIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONSENTER2_RELATION_TO_PATIENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75183087004765345)
,p_name=>'P52_CONSENTER2_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONSENTER2_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75183161157765346)
,p_name=>'P52_CONSENT_FORM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONSENT_FORM_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75183231719765347)
,p_name=>'P52_DETAIL_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DETAIL_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75183300755765348)
,p_name=>'P52_DETAIL_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DETAIL_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75183449807765349)
,p_name=>'P52_DETAIL_3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DETAIL_3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75183518021765350)
,p_name=>'P52_INTERPRETER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Interpreter Name:</p></b>'
,p_source=>'INTERPRETER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653067873087101)
,p_name=>'P52_WITNESS_NAME_OTHER_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Witness Name:</p></b>'
,p_source=>'WITNESS_NAME_OTHER_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653105437087102)
,p_name=>'P52_CPT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653264407087103)
,p_name=>'P52_ANY_ADDITIONAL_INFORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ANY_ADDITIONAL_INFORMATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653386175087104)
,p_name=>'P52_ATTENDING_PHYSICIANS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ATTENDING_PHYSICIANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653448861087105)
,p_name=>'P52_CONDITION_BEING_TREATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONDITION_BEING_TREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653522275087106)
,p_name=>'P52_PROTOCOL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PROTOCOL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653649188087107)
,p_name=>'P52_DURATION_OF_TREATMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DURATION_OF_TREATMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653714958087108)
,p_name=>'P52_OTHER_PROTOCOL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'OTHER_PROTOCOL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653861640087109)
,p_name=>'P52_CPT_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CPT_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78653952512087110)
,p_name=>'P52_P_SERIAL_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'P_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654003504087111)
,p_name=>'P52_INTERPRETER_REQUIRED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Interpreter Required:</p></b>'
,p_source=>'INTERPRETER_REQUIRED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:No;N,Yes;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'rg_label'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654173626087112)
,p_name=>'P52_HEALTH_STATEMENT_REQ'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'HEALTH_STATEMENT_REQ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654271064087113)
,p_name=>'P52_LANGUAGE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Language:</p></b>'
,p_source=>'LANGUAGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DESCRIPTION, LANGUAGE_ID FROM DEFINITIONS.LANGUAGES'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(78654349499087114)
,p_name=>'P52_SURGICAL_ANESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Type of Anesthesia:</p></b>'
,p_source=>'SURGICAL_ANESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT T.DESCRIPTION, T.DESCRIPTION ID',
'   FROM SURGERY.ANESTHESIA_TYPE T',
'  WHERE T.ACTIVE = ''Y''',
'    AND T.LOCATION_ID = SYS_CONTEXT(''GLOBAL_CONTEXT'', ''LOCATION_ID'')',
'    AND T.NATURE_ID = ''086''',
'  ORDER BY 1'))
,p_cSize=>30
,p_cMaxlength=>250
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(78654434966087115)
,p_name=>'P52_RESP_HEALTH_PRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'RESP_HEALTH_PRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654596562087116)
,p_name=>'P52_TISSUE_RESEARCH_TEACH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'TISSUE_RESEARCH_TEACH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654615789087117)
,p_name=>'P52_PERSON_OBTAIN_CON_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PERSON_OBTAIN_CON_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654723684087118)
,p_name=>'P52_OBTAINING_CONSENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_source=>'OBTAINING_CONSENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(78654889459087119)
,p_name=>'P52_HEALTH_PROFESSIONAL_STAT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'HEALTH_PROFESSIONAL_STAT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78654984009087120)
,p_name=>'P52_MULTIPLE_CPT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'MULTIPLE_CPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655032280087121)
,p_name=>'P52_CHEMO_LEAFLET_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CHEMO_LEAFLET_INSTRUCTIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655141771087122)
,p_name=>'P52_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655224892087123)
,p_name=>'P52_ENTERED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ENTERED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655376625087124)
,p_name=>'P52_THERAPEUTIC_APHERESIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'THERAPEUTIC_APHERESIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655488692087125)
,p_name=>'P52_PROCEDURE_REST_BY_PATIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PROCEDURE_REST_BY_PATIENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655500327087126)
,p_name=>'P52_FORWARDED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FORWARDED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655606777087127)
,p_name=>'P52_FORWARDED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FORWARDED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655793494087128)
,p_name=>'P52_SIGNED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'SIGNED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655886383087129)
,p_name=>'P52_SIGNED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'SIGNED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78655901370087130)
,p_name=>'P52_CPT_ID_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CPT_ID_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656000912087131)
,p_name=>'P52_CPT_DESCRIPTION_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CPT_DESCRIPTION_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656150000087132)
,p_name=>'P52_MULTIPLE_CPT_ID_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'MULTIPLE_CPT_ID_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656250082087133)
,p_name=>'P52_ANY_ADDITIONAL_INFO_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ANY_ADDITIONAL_INFO_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656359869087134)
,p_name=>'P52_DETAIL_1_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DETAIL_1_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656477488087135)
,p_name=>'P52_DETAIL_2_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DETAIL_2_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656521746087136)
,p_name=>'P52_SURGICAL_ANESTHESIA_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'SURGICAL_ANESTHESIA_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656625201087137)
,p_name=>'P52_ATTENDING_PHYSICIANS_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ATTENDING_PHYSICIANS_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656731018087138)
,p_name=>'P52_PROTOCOL_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PROTOCOL_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656847909087139)
,p_name=>'P52_CONDITION_BEING_TREATED_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONDITION_BEING_TREATED_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78656904509087140)
,p_name=>'P52_OTHER_PROTOCOL_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'OTHER_PROTOCOL_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(78657057009087141)
,p_name=>'P52_DURATION_OF_TREATMENT_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'DURATION_OF_TREATMENT_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657185864087142)
,p_name=>'P52_P_SERIAL_NO_HIST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'P_SERIAL_NO_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657229530087143)
,p_name=>'P52_PROCEDURE_REST_BY_PATIENT_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PROCEDURE_REST_BY_PATIENT_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657333905087144)
,p_name=>'P52_EVENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'EVENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657498877087145)
,p_name=>'P52_FINALIZED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FINALIZED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657507516087146)
,p_name=>'P52_CONSENT_CHANGED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CONSENT_CHANGED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657644366087147)
,p_name=>'P52_FERTILITY_RISK_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FERTILITY_RISK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657747950087148)
,p_name=>'P52_FERTILITY_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FERTILITY_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657858054087149)
,p_name=>'P52_CANCELLED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'CANCELLED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78657997124087150)
,p_name=>'P52_CANCELLED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Cancelled Date:</p></b>'
,p_format_mask=>'DD-MON-YY HH24:MI'
,p_source=>'CANCELLED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658002997087101)
,p_name=>'P52_FERTILITY_RISK_ID_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FERTILITY_RISK_ID_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658188811087102)
,p_name=>'P52_FERTILITY_REMARKS_HIST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FERTILITY_REMARKS_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658205583087103)
,p_name=>'P52_ACTUAL_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ACTUAL_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658349295087104)
,p_name=>'P52_POC_DIGITALLY_SIGNED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'POC_DIGITALLY_SIGNED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658449312087105)
,p_name=>'P52_WIT_DIGITALLY_SIGNED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'WIT_DIGITALLY_SIGNED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658543976087106)
,p_name=>'P52_PAT_DIGITALLY_SIGNED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PAT_DIGITALLY_SIGNED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658625542087107)
,p_name=>'P52_PATIENT_CNIC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PATIENT_CNIC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(78658741396087108)
,p_name=>'P52_EMERGENCY_PRINTING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_default=>'N'
,p_prompt=>'<b><p style="color:#00008B">Emergency Printing</p></b>'
,p_source=>'EMERGENCY_PRINTING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658831723087109)
,p_name=>'P52_PRINTING_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Remarks:</p></b>'
,p_source=>'PRINTING_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78658952360087110)
,p_name=>'P52_PAT_SIGN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PAT_SIGN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659003888087111)
,p_name=>'P52_POC_SIGN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'POC_SIGN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659101219087112)
,p_name=>'P52_E_PRINT_ACKNOWLEDGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'E_PRINT_ACKNOWLEDGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659222547087113)
,p_name=>'P52_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Radiation No:</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659315565087114)
,p_name=>'P52_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>1151
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659400842087115)
,p_name=>'P52_ACUTE_SIDE_EFFECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Acute Side Effect(s):</p></b>'
,p_source=>'ACUTE_SIDE_EFFECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>3
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659509775087116)
,p_name=>'P52_CHRONIC_SIDE_EFFECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Chronic Side Effect(s):</p></b>'
,p_source=>'CHRONIC_SIDE_EFFECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659602245087117)
,p_name=>'P52_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659741223087118)
,p_name=>'P52_HEALTH_PROFESSIONAL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Responsible Health Professional:</p></b>'
,p_source=>'HEALTH_PROFESSIONAL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(78659813025087119)
,p_name=>'P52_WITNESS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1020
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'WITNESS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78659925152087120)
,p_name=>'P52_ATTENDING_PHYSICIANS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ATTENDING_PHYSICIANS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660016128087121)
,p_name=>'P52_LANGUAGE_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'LANGUAGE_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660169316087122)
,p_name=>'P52_PERSON_OBTAINING_CONSENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Person Obtaining Consent:</p></b>'
,p_source=>'PERSON_OBTAINING_CONSENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME, I.MRNO',
'  FROM HRD.VU_INFORMATION I',
' WHERE EXISTS (SELECT 1',
'          FROM DEFINITIONS.DOCTOR',
'         WHERE ACTIVE IN (''H'', ''Y'', ''Z'')',
'           /*AND PHARMACY.PKG_COMMON.IS_AUTHORIZED_TO_SIGN(P_MRNO    => DOCTOR_MRNO,',
'                                                         P_ROLE_ID => ''672'') = ''Y''*/',
'           AND DOCTOR_MRNO = I.MRNO)',
'   AND I.ACTIVE = ''Y'';',
''))
,p_cSize=>30
,p_cMaxlength=>14
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'500'
,p_attribute_09=>'800'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660201939087123)
,p_name=>'P52_ENTERED_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'ENTERED_BY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660327903087124)
,p_name=>'P52_FORWARDED_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'FORWARDED_BY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660442088087125)
,p_name=>'P52_SIGNED_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'SIGNED_BY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660544638087126)
,p_name=>'P52_EVENT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'EVENT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660693622087127)
,p_name=>'P52_CANCELLED_BY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Cancelled By:</p></b>'
,p_source=>'CANCELLED_BY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660741974087128)
,p_name=>'P52_SITE_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Radiotherapy Site:</p></b>'
,p_source=>'SITE_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(78660825472087129)
,p_name=>'P52_CONSENTER1_RELATION_TO_PATIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Relation & CNIC:</p></b>'
,p_source=>'CONSENTER1_RELATION_TO_PATIENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, RELATION_ID',
'  FROM DEFINITIONS.RELATION',
' WHERE FOR_QA_CONSENTS = ''Y''',
' ORDER BY 2',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78660914603087130)
,p_name=>'P52_P_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'P_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78661072926087131)
,p_name=>'P52_HEALTH_PROFESSIONAL_STATEMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'HEALTH_PROFESSIONAL_STATEMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78661366967087134)
,p_name=>'P52_HP_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'HP_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78661429192087135)
,p_name=>'P52_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_source=>'AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78661849190087139)
,p_name=>'P52_CONSENT_TYPE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_default=>'W'
,p_prompt=>'<b><p style="color:#660000">Consent Type (For Reference Only)</p></b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Written Consent;W,Verbal Consent;V'
,p_colspan=>2
,p_grid_column=>10
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_css_classes=>'rg_label'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80215929552303136)
,p_name=>'P52_ND_SERIAL_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(80213662526303113)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80216028987303137)
,p_name=>'P52_GENDER'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81755016501713301)
,p_name=>'P52_DISPLAY_SERIAL_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RETURN NULL;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81755245678713303)
,p_name=>'P52_CONSENT_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RETURN NULL;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_css_classes=>'consent-status'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81755465101713305)
,p_name=>'P52_PARAM_SERIAL_NO'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81756301992713314)
,p_name=>'P52_SENDBACKHISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81755795808713308)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81756669491713317)
,p_name=>'P52_ND_ALERT_TEXT'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81756737361713318)
,p_name=>'P52_ND_SUCCESS_ALERT_TEXT'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81759649625713347)
,p_name=>'P52_SEND_BACK_REASON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81759551653713346)
,p_prompt=>'<b><p style="color:#00008B">Reason To Send Back Consent:</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82247081565960211)
,p_name=>'P52_DIGITAL_SIGN_REQUIRED'
,p_item_sequence=>70
,p_item_default=>'~'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82250023102960241)
,p_name=>'P52_MAIN_ERROR'
,p_item_sequence=>80
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83615213653811938)
,p_name=>'P52_SELECT_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_item_source_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_prompt=>'<b><p style="color:#00008B">Select Radiotherapy Request:</p></b>'
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_CONSENT_SITE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(P_SITE_ID => D.SITE_ID) ||',
'                 '' --- '' ||',
'                 HIS.PKG_DOCTOR.GET_DOCTOR_NAME(P_DOCTOR_ID   => M.DOCTOR_ID,',
'                                                P_DOCTOR_MRNO => NULL) ||',
'                 '' --- '' || D.RADIATION_NO || '' --- '' ||CASE',
'                  WHEN M.RADIOTHERAPY_TYPE = ''T'' THEN',
'                   ''External beam radiation therapy''',
'                  ELSE',
'                   ''Brachytherapy''',
'                END DISP_COLUMN,',
'                M.RADIATION_DATE RADIATION_START_DATE, ',
'                D.RADIATION_NO,',
'                D.SITE_ID',
'  FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
' WHERE M.MRNO = :P52_MRNO',
'   AND M.RADIATION_NO = D.RADIATION_NO',
'   AND RADIATION.PKG_REQUEST.IS_ACTIVE_SITE(P_RADIATION_NO => D.RADIATION_NO,',
'                                            P_SITE_ID      => D.SITE_ID) = ''Y'';',
''))
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'1800'
,p_attribute_09=>'500'
,p_attribute_10=>'RADIATION_NO:P52_RADIATION_NO,SITE_ID:P52_SITE_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(86792045622682108)
,p_name=>'P52_DML_STATUS'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(86792368855682111)
,p_name=>'P52_PRINT_VALIDATE'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163022823282970222)
,p_name=>'P52_SIGN_STATUS_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163105966486207122)
,p_name=>'P52_MRNO'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163107645733207139)
,p_name=>'P52_IS_OBTAIN_CONSENT_IS_DOCTOR'
,p_item_sequence=>1171
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168540878389880904)
,p_name=>'P52_STOP'
,p_item_sequence=>1181
,p_item_plug_id=>wwv_flow_imp.id(75181108027765326)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801067912331586)
,p_name=>'P52_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
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
 p_id=>wwv_flow_imp.id(319801096123331587)
,p_name=>'P52_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_prompt=>'<b>Employee Code:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-lg'
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
 p_id=>wwv_flow_imp.id(319801188829331588)
,p_name=>'P52_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
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
 p_id=>wwv_flow_imp.id(319801345518331589)
,p_name=>'P52_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Password</b>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801468917331590)
,p_name=>'P52_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801552334331591)
,p_name=>'P52_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801592247331592)
,p_name=>'P52_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801686445331593)
,p_name=>'P52_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801856015331594)
,p_name=>'P52_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319801949188331595)
,p_name=>'P52_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(319802537654331601)
,p_name=>'P52_SUCCESS_MSG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(323525931619135966)
,p_name=>'P52_ERROR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(319727147787331506)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80214673848303123)
,p_name=>'DAConsentHistory'
,p_event_sequence=>2
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(80213662526303113)
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80214765714303124)
,p_event_id=>wwv_flow_imp.id(80214673848303123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$s(''P52_RADIATION_NO'', _.consenthist.RADIATION_NO);',
'//$s(''P52_SITE_ID'', _.consenthist.SITE_ID);',
'$s(''P52_ND_SERIAL_NO'', _.consenthist.SERIAL_NO);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163105384266207116)
,p_event_id=>wwv_flow_imp.id(80214673848303123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SERIAL_NO,',
'         MRNO,',
'         ADMISSION_NO,',
'         ORDER_KEY,',
'         HEALTH_PROFESSIONAL_MRNO,',
'         TO_CHAR(HEALTH_PROFESSIONAL_DATE, ''DD-MON-YYYY HH24:MI'') AS HEALTH_PROFESSIONAL_DATE,',
'         WITNESS_MRNO,',
'         TO_CHAR(WITNESS_DATE, ''DD-MON-YYYY HH24:MI'') AS WITNESS_DATE,',
'         INTERPRETER_MRNO,',
'         TO_CHAR(INTERPRETER_DATE, ''DD-MON-YYYY HH24:MI'') AS INTERPRETER_DATE,',
'         CONSENTER1_NAME,',
'         CONSENTER1_RELATION_TO_PATIENT,',
'         TO_CHAR(CONSENTER1_DATE, ''DD-MON-YYYY HH24:MI'') AS CONSENTER1_DATE,',
'         CONSENTER2_NAME,',
'         CONSENTER2_RELATION_TO_PATIENT,',
'         TO_CHAR(CONSENTER2_DATE, ''DD-MON-YYYY HH24:MI'') AS CONSENTER2_DATE,',
'         CONSENT_FORM_NAME,',
'         DETAIL_1,',
'         DETAIL_2,',
'         DETAIL_3,',
'         INTERPRETER_NAME,',
'         WITNESS_NAME_OTHER_PERSON,',
'         CPT_ID,',
'         ATTENDING_PHYSICIANS,',
'         ANY_ADDITIONAL_INFORMATION,',
'         CONDITION_BEING_TREATED',
'  ',
'    INTO :P52_SERIAL_NO,',
'         :P52_MRNO,',
'         :P52_ADMISSION_NO,',
'         :P52_ORDER_KEY,',
'         :P52_HEALTH_PROFESSIONAL_MRNO,',
'         :P52_HEALTH_PROFESSIONAL_DATE,',
'         :P52_WITNESS_MRNO,',
'         :P52_WITNESS_DATE,',
'         :P52_INTERPRETER_MRNO,',
'         :P52_INTERPRETER_DATE,',
'         :P52_CONSENTER1_NAME,',
'         :P52_CONSENTER1_RELATION_TO_PATIENT,',
'         :P52_CONSENTER1_DATE,',
'         :P52_CONSENTER2_NAME,',
'         :P52_CONSENTER2_RELATION_TO_PATIENT,',
'         :P52_CONSENTER2_DATE,',
'         :P52_CONSENT_FORM_NAME,',
'         :P52_DETAIL_1,',
'         :P52_DETAIL_2,',
'         :P52_DETAIL_3,',
'         :P52_INTERPRETER_NAME,',
'         :P52_WITNESS_NAME_OTHER_PERSON,',
'         :P52_CPT_ID,',
'         :P52_ATTENDING_PHYSICIANS,',
'         :P52_ANY_ADDITIONAL_INFORMATION,',
'         :P52_CONDITION_BEING_TREATED',
'    FROM RADIATION.PKG_S18APX00072.QUERY_TREATMENT_CONSENT_APEX(P_SERIAL_NO         => :P52_ND_SERIAL_NO,',
'                                                                P_MRNO              => :P52_MRNO,',
'                                                                P_CONSENT_FORM_NAME => ''X'',',
'                                                                P_ASSIGNMENT_ID     => NULL,',
'                                                                P_QUERY_ALL_RECORDS => ''Y'');',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_ND_SERIAL_NO,P52_MRNO'
,p_attribute_03=>'P52_SERIAL_NO,P52_ADMISSION_NO,P52_ORDER_KEY,P52_HEALTH_PROFESSIONAL_MRNO,P52_HEALTH_PROFESSIONAL_DATE,P52_WITNESS_MRNO,P52_WITNESS_DATE,P52_INTERPRETER_MRNO,P52_INTERPRETER_DATE,P52_CONSENTER1_NAME,P52_CONSENTER1_RELATION_TO_PATIENT,P52_CONSENTER1_D'
||'ATE,P52_CONSENTER2_NAME,P52_CONSENTER2_RELATION_TO_PATIENT,P52_CONSENTER2_DATE,P52_CONSENT_FORM_NAME,P52_DETAIL_1,P52_DETAIL_2,P52_DETAIL_3,P52_INTERPRETER_NAME,P52_WITNESS_NAME_OTHER_PERSON,P52_CPT_ID,P52_ATTENDING_PHYSICIANS,P52_ANY_ADDITIONAL_INFO'
||'RMATION,P52_CONDITION_BEING_TREATED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163105498157207117)
,p_event_id=>wwv_flow_imp.id(80214673848303123)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PROTOCOL,',
'         DURATION_OF_TREATMENT,',
'         OTHER_PROTOCOL,',
'         CPT_DESCRIPTION,',
'         P_SERIAL_NO,',
'         INTERPRETER_REQUIRED,',
'         HEALTH_STATEMENT_REQ,',
'         LANGUAGE_ID,',
'         SURGICAL_ANESTHESIA,',
'         RESP_HEALTH_PRO,',
'         TISSUE_RESEARCH_TEACH,',
'         PERSON_OBTAINING_CONSENT,',
'         TO_CHAR(OBTAINING_CONSENT_DATE, ''DD-MON-YYYY HH24:MI'') AS OBTAINING_CONSENT_DATE,',
'         HEALTH_PROFESSIONAL_STAT_ID,',
'         MULTIPLE_CPT_ID,',
'         CHEMO_LEAFLET_INSTRUCTIONS,',
'         ENTERED_BY,',
'         TO_CHAR(ENTERED_DATE, ''DD-MON-YYYY HH24:MI'') AS ENTERED_DATE,',
'         THERAPEUTIC_APHERESIS,',
'         PROCEDURE_REST_BY_PATIENT,',
'         FORWARDED_BY,',
'         TO_CHAR(FORWARDED_DATE, ''DD-MON-YYYY HH24:MI'') AS FORWARDED_DATE,',
'         SIGNED_BY,',
'         TO_CHAR(SIGNED_DATE, ''DD-MON-YYYY HH24:MI'') AS SIGNED_DATE,',
'         CPT_ID_HIST,',
'         CPT_DESCRIPTION_HIST,',
'         MULTIPLE_CPT_ID_HIST,',
'         ANY_ADDITIONAL_INFO_HIST,',
'         DETAIL_1_HIST,',
'         DETAIL_2_HIST,',
'         SURGICAL_ANESTHESIA_HIST,',
'         ATTENDING_PHYSICIANS_HIST,',
'         PROTOCOL_HIST,',
'         CONDITION_BEING_TREATED_HIST,',
'         OTHER_PROTOCOL_HIST',
'         ',
'    INTO :P52_PROTOCOL,',
'         :P52_DURATION_OF_TREATMENT,',
'         :P52_OTHER_PROTOCOL,',
'         :P52_CPT_DESCRIPTION,',
'         :P52_P_SERIAL_NO,',
'         :P52_INTERPRETER_REQUIRED,',
'         :P52_HEALTH_STATEMENT_REQ,',
'         :P52_LANGUAGE_ID,',
'         :P52_SURGICAL_ANESTHESIA,',
'         :P52_RESP_HEALTH_PRO,',
'         :P52_TISSUE_RESEARCH_TEACH,',
'         :P52_PERSON_OBTAINING_CONSENT,',
'         :P52_OBTAINING_CONSENT_DATE,',
'         :P52_HEALTH_PROFESSIONAL_STAT_ID,',
'         :P52_MULTIPLE_CPT_ID,',
'         :P52_CHEMO_LEAFLET_INSTRUCTIONS,',
'         :P52_ENTERED_BY,',
'         :P52_ENTERED_DATE,',
'         :P52_THERAPEUTIC_APHERESIS,',
'         :P52_PROCEDURE_REST_BY_PATIENT,',
'         :P52_FORWARDED_BY,',
'         :P52_FORWARDED_DATE,',
'         :P52_SIGNED_BY,',
'         :P52_SIGNED_DATE,',
'         :P52_CPT_ID_HIST,',
'         :P52_CPT_DESCRIPTION_HIST,',
'         :P52_MULTIPLE_CPT_ID_HIST,',
'         :P52_ANY_ADDITIONAL_INFO_HIST,',
'         :P52_DETAIL_1_HIST,',
'         :P52_DETAIL_2_HIST,',
'         :P52_SURGICAL_ANESTHESIA_HIST,',
'         :P52_ATTENDING_PHYSICIANS_HIST,',
'         :P52_PROTOCOL_HIST,',
'         :P52_CONDITION_BEING_TREATED_HIST,',
'         :P52_OTHER_PROTOCOL_HIST',
'    FROM RADIATION.PKG_S18APX00072.QUERY_TREATMENT_CONSENT_APEX(P_SERIAL_NO         => :P52_ND_SERIAL_NO,',
'                                                                 P_MRNO              => :P52_MRNO,',
'                                                                 P_CONSENT_FORM_NAME => ''X'',',
'                                                                 P_ASSIGNMENT_ID     => NULL,',
'                                                                 P_QUERY_ALL_RECORDS => ''Y'');',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_ND_SERIAL_NO'
,p_attribute_03=>'P52_PROTOCOL,P52_DURATION_OF_TREATMENT,P52_OTHER_PROTOCOL,P52_CPT_DESCRIPTION,P52_P_SERIAL_NO,P52_INTERPRETER_REQUIRED,P52_HEALTH_STATEMENT_REQ,P52_LANGUAGE_ID,P52_SURGICAL_ANESTHESIA,P52_RESP_HEALTH_PRO,P52_TISSUE_RESEARCH_TEACH,P52_PERSON_OBTAIN_CO'
||'N_NAME,P52_OBTAINING_CONSENT_DATE,P52_HEALTH_PROFESSIONAL_STAT_ID,P52_MULTIPLE_CPT_ID,P52_CHEMO_LEAFLET_INSTRUCTIONS,P52_ENTERED_BY,P52_ENTERED_DATE,P52_THERAPEUTIC_APHERESIS,P52_PROCEDURE_REST_BY_PATIENT,P52_FORWARDED_BY,P52_FORWARDED_DATE,P52_SIGNE'
||'D_BY,P52_SIGNED_DATE,P52_CPT_ID_HIST,P52_CPT_DESCRIPTION_HIST,P52_MULTIPLE_CPT_ID_HIST,P52_ANY_ADDITIONAL_INFO_HIST,P52_DETAIL_1_HIST,P52_DETAIL_2_HIST,P52_SURGICAL_ANESTHESIA_HIST,P52_ATTENDING_PHYSICIANS_HIST,P52_PROTOCOL_HIST,P52_CONDITION_BEING_T'
||'REATED_HIST,P52_OTHER_PROTOCOL_HIST,P52_PERSON_OBTAINING_CONSENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163105526550207118)
,p_event_id=>wwv_flow_imp.id(80214673848303123)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DURATION_OF_TREATMENT_HIST,',
'         P_SERIAL_NO_HIST,',
'         PROCEDURE_REST_BY_PATIENT_HIST,',
'         EVENT,',
'         FINALIZED,',
'         CONSENT_CHANGED,',
'         FERTILITY_RISK_ID,',
'         FERTILITY_REMARKS,',
'         CANCELLED_BY,',
'         TO_CHAR(CANCELLED_DATE, ''DD-MON-YYYY HH24:MI'') AS CANCELLED_DATE,',
'         FERTILITY_RISK_ID_HIST,',
'         FERTILITY_REMARKS_HIST,',
'         ACTUAL_MRNO,',
'         POC_DIGITALLY_SIGNED,',
'         WIT_DIGITALLY_SIGNED,',
'         PAT_DIGITALLY_SIGNED,',
'         PATIENT_CNIC,',
'         EMERGENCY_PRINTING,',
'         PRINTING_REMARKS,',
'         TO_CHAR(PAT_SIGN_DATE, ''DD-MON-YYYY HH24:MI'') AS PAT_SIGN_DATE,',
'         TO_CHAR(POC_SIGN_DATE, ''DD-MON-YYYY HH24:MI'') AS POC_SIGN_DATE,',
'         E_PRINT_ACKNOWLEDGE,',
'         RADIATION_NO,',
'         SITE_ID,',
'         ACUTE_SIDE_EFFECT,',
'         CHRONIC_SIDE_EFFECT,',
'         PATIENT_NAME,',
'         HEALTH_PROFESSIONAL_NAME,',
'         WITNESS_NAME,',
'         ATTENDING_PHYSICIANS_NAME,',
'         LANGUAGE_DESC,',
'         PERSON_OBTAIN_CON_NAME,',
'         ENTERED_BY_NAME,',
'         FORWARDED_BY_NAME,',
'         SIGNED_BY_NAME,',
'         EVENT_DESC,',
'         CANCELLED_BY_NAME,',
'         SITE_DESC,',
'         ND_RELATION_WITH_PATIENT,',
'         P_DESC,',
'         HEALTH_PROFESSIONAL_STATEMENT,',
'         GENDER,',
'         AGE',
'  ',
'    INTO :P52_DURATION_OF_TREATMENT_HIST,',
'         :P52_P_SERIAL_NO_HIST,',
'         :P52_PROCEDURE_REST_BY_PATIENT_HIST,',
'         :P52_EVENT,',
'         :P52_FINALIZED,',
'         :P52_CONSENT_CHANGED,',
'         :P52_FERTILITY_RISK_ID,',
'         :P52_FERTILITY_REMARKS,',
'         :P52_CANCELLED_BY,',
'         :P52_CANCELLED_DATE,',
'         :P52_FERTILITY_RISK_ID_HIST,',
'         :P52_FERTILITY_REMARKS_HIST,',
'         :P52_ACTUAL_MRNO,',
'         :P52_POC_DIGITALLY_SIGNED,',
'         :P52_WIT_DIGITALLY_SIGNED,',
'         :P52_PAT_DIGITALLY_SIGNED,',
'         :P52_PATIENT_CNIC,',
'         :P52_EMERGENCY_PRINTING,',
'         :P52_PRINTING_REMARKS,',
'         :P52_PAT_SIGN_DATE,',
'         :P52_POC_SIGN_DATE,',
'         :P52_E_PRINT_ACKNOWLEDGE,',
'         :P52_RADIATION_NO,',
'         :P52_SITE_ID,',
'         :P52_ACUTE_SIDE_EFFECT,',
'         :P52_CHRONIC_SIDE_EFFECT,',
'         :P52_PATIENT_NAME,',
'         :P52_HEALTH_PROFESSIONAL_NAME,',
'         :P52_WITNESS_NAME,',
'         :P52_ATTENDING_PHYSICIANS_NAME,',
'         :P52_LANGUAGE_DESC,',
'         :P52_PERSON_OBTAIN_CON_NAME,',
'         :P52_ENTERED_BY_NAME,',
'         :P52_FORWARDED_BY_NAME,',
'         :P52_SIGNED_BY_NAME,',
'         :P52_EVENT_DESC,',
'         :P52_CANCELLED_BY_NAME,',
'         :P52_SITE_DESC,',
'         :P52_ND_RELATION_WITH_PATIENT,',
'         :P52_P_DESC,',
'         :P52_HEALTH_PROFESSIONAL_STATEMENT,',
'         :P52_GENDER,',
'         :P52_AGE',
'    FROM RADIATION.PKG_S18APX00072.QUERY_TREATMENT_CONSENT_APEX(P_SERIAL_NO         => :P52_ND_SERIAL_NO,',
'                                                                 P_MRNO              => :P52_MRNO,',
'                                                                 P_CONSENT_FORM_NAME => ''X'',',
'                                                                 P_ASSIGNMENT_ID     => NULL,',
'                                                                 P_QUERY_ALL_RECORDS => ''Y'');',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_ND_SERIAL_NO'
,p_attribute_03=>'P52_DURATION_OF_TREATMENT_HIST,P52_P_SERIAL_NO_HIST,P52_PROCEDURE_REST_BY_PATIENT_HIST,P52_EVENT,P52_FINALIZED,P52_CONSENT_CHANGED,P52_FERTILITY_RISK_ID,P52_FERTILITY_REMARKS,P52_CANCELLED_BY,P52_CANCELLED_DATE,P52_FERTILITY_RISK_ID_HIST,P52_FERTILIT'
||'Y_REMARKS_HIST,P52_ACTUAL_MRNO,P52_POC_DIGITALLY_SIGNED,P52_WIT_DIGITALLY_SIGNED,P52_PAT_DIGITALLY_SIGNED,P52_PATIENT_CNIC,P52_EMERGENCY_PRINTING,P52_PRINTING_REMARKS,P52_PAT_SIGN_DATE,P52_POC_SIGN_DATE,P52_E_PRINT_ACKNOWLEDGE,P52_RADIATION_NO,P52_SI'
||'TE_ID,P52_ACUTE_SIDE_EFFECT,P52_CHRONIC_SIDE_EFFECT,P52_PATIENT_NAME,P52_HEALTH_PROFESSIONAL_NAME,P52_WITNESS_NAME,P52_ATTENDING_PHYSICIANS_NAME,P52_LANGUAGE_DESC,P52_PERSON_OBTAIN_CON_NAME,P52_ENTERED_BY_NAME,P52_FORWARDED_BY_NAME,P52_SIGNED_BY_NAME'
||',P52_EVENT_DESC,P52_CANCELLED_BY_NAME,P52_SITE_DESC,P52_CONSENTER1_RELATION_TO_PATIENT,P52_P_DESC,P52_HEALTH_PROFESSIONAL_STATEMENT,P52_GENDER,P52_AGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83614475569811930)
,p_event_id=>wwv_flow_imp.id(80214673848303123)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168541095699880906)
,p_event_id=>wwv_flow_imp.id(80214673848303123)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_SELECT_REQUEST'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81755581485713306)
,p_name=>'DASendBackHistory '
,p_event_sequence=>12
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662860862087149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81755610521713307)
,p_event_id=>wwv_flow_imp.id(81755581485713306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION.PKG_S18APX00072.F_SEND_BACK_HISTORY(:P52_SERIAL_NO) SendBackHistory',
'    INTO :P52_SENDBACKHISTORY',
'    FROM DUAL;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81756201342713313)
,p_event_id=>wwv_flow_imp.id(81755581485713306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81755795808713308)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81756400003713315)
,p_name=>'DAForward'
,p_event_sequence=>22
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662482556087145)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81756509874713316)
,p_event_id=>wwv_flow_imp.id(81756400003713315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP CHAR(1) := ''N'';',
'',
'BEGIN',
'  RADIATION.PKG_S18APX00072.P_FORWARD_CONSENT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                               P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                               P_SERIAL_NO         => :P52_SERIAL_NO,',
'                                               P_USER_MRNO         => :GV_USER_MRNO,',
'                                               P_TERMINAL          => :GV_TERMINAL,',
'                                               P_OBJECT_CODE       => ''S18APX00072'',',
'                                               P_ALERT_TEXT        => :P52_ND_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'',
'  IF :P52_ND_ALERT_TEXT IS NULL THEN',
'    :P52_ND_SUCCESS_ALERT_TEXT := ''The consent has been successfully forwarded to the responsible health professional'';',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO'
,p_attribute_03=>'P52_ND_ALERT_TEXT,P52_ND_SUCCESS_ALERT_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86792270366682110)
,p_event_id=>wwv_flow_imp.id(81756400003713315)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT EVENT,',
'         ',
'         RADIATION.PKG_S18APX00072.F_GET_EVENT_DESC(P_SERIAL_NO     => C.SERIAL_NO,',
'                                                    P_CALLED_FROM_Q => CASE',
'                                                                         WHEN :P52_SERIAL_NO IS NOT NULL THEN',
'                                                                          ''Y''',
'                                                                         ELSE',
'                                                                          ''N''',
'                                                                       END) EVENT_DESC',
'         ',
'    INTO :P52_EVENT,',
'         ',
'         :P52_EVENT_DESC',
'  ',
'    FROM ORDERENTRY.CONSENT_FORM_INFORMATION C',
'   WHERE MRNO = :P52_MRNO',
'     AND SERIAL_NO = :P52_SERIAL_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P52_CONSENT_STATUS := NULL;',
'END;',
''))
,p_attribute_02=>'P52_MRNO,P52_SERIAL_NO'
,p_attribute_03=>'P52_EVENT,P52_EVENT_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290007353141969524)
,p_event_id=>wwv_flow_imp.id(81756400003713315)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81756841490713319)
,p_name=>'DAAlertText'
,p_event_sequence=>32
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_ND_ALERT_TEXT'
,p_condition_element=>'P52_ND_ALERT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81756993927713320)
,p_event_id=>wwv_flow_imp.id(81756841490713319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P52_ND_ALERT_TEXT.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81757016496713321)
,p_name=>'DASuccessMessage'
,p_event_sequence=>42
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_ND_SUCCESS_ALERT_TEXT'
,p_condition_element=>'P52_ND_SUCCESS_ALERT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81757189233713322)
,p_event_id=>wwv_flow_imp.id(81757016496713321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P52_ND_SUCCESS_ALERT_TEXT.'
,p_attribute_02=>'System Message '
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81757203407713323)
,p_name=>'DASign'
,p_event_sequence=>52
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662510196087146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81757495647713325)
,p_event_id=>wwv_flow_imp.id(81757203407713323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_PASSWORD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81757553628713326)
,p_event_id=>wwv_flow_imp.id(81757203407713323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    :P52_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P52_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P52_DISP_MRNO    := (:P52_PATIENT_TYPE ||',
'                         LPAD(:P52_PATIENT_MRNO, 8, ''0''));',
'    :P52_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P52_DISP_MRNO);',
'  END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P52_PATIENT_MRNO,P52_PATIENT_TYPE,P52_DISP_MRNO,P52_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81757664285713327)
,p_event_id=>wwv_flow_imp.id(81757203407713323)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("signconsent");',
'apex.item("P52_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81757709231713328)
,p_name=>'DAExit'
,p_event_sequence=>62
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82075042391734186)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81757857715713329)
,p_event_id=>wwv_flow_imp.id(81757709231713328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(319727147787331506)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81757920555713330)
,p_name=>'SignRadiationConsent'
,p_event_sequence=>72
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82075454752734187)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81758260521713333)
,p_event_id=>wwv_flow_imp.id(81757920555713330)
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
'',
'  :P52_SUCCESS_MSG    := null;',
'  :P52_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P52_DISP_MRNO,',
'                                          :P52_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_ERROR := ''You have entered an incorrect password. Please try again with the correct password'';',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''Y'');',
'    :P52_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P52_DISP_MRNO,P52_PASSWORD'
,p_attribute_03=>'P52_SUCCESS_MSG,P52_ERROR,P52_VALIDATE'
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
 p_id=>wwv_flow_imp.id(81758379662713334)
,p_event_id=>wwv_flow_imp.id(81757920555713330)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1) := ''N'';',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'  RADIATION.PKG_S18APX00072.P_SIGN_CONSENT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_SERIAL_NO         => :P52_SERIAL_NO,',
'                                            P_SIGN_MRNO         => :P52_DISP_MRNO,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_OBJECT_CODE       => ''S18APX00072'',',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_ERROR := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''Y'');',
'    :P52_ERROR := NULL;',
'    :P52_SUCCESS_MSG    := ''The radiotherapy consent has been successfully signed'';',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P52_SERIAL_NO,P52_DISP_MRNO,GV_USER_MRNO,GV_TERMINAL'
,p_attribute_03=>'P52_SUCCESS_MSG,P52_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P52_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163105192768207114)
,p_event_id=>wwv_flow_imp.id(81757920555713330)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT EVENT,',
'         ',
'         RADIATION.PKG_S18APX00072.F_GET_EVENT_DESC(P_SERIAL_NO     => C.SERIAL_NO,',
'                                                    P_CALLED_FROM_Q => CASE',
'                                                                         WHEN :P52_SERIAL_NO IS NOT NULL THEN',
'                                                                          ''Y''',
'                                                                         ELSE',
'                                                                          ''N''',
'                                                                       END) EVENT_DESC,',
'         FINALIZED',
'    INTO :P52_EVENT,',
'         ',
'         :P52_EVENT_DESC,',
'         :P52_FINALIZED',
'  ',
'    FROM ORDERENTRY.CONSENT_FORM_INFORMATION C',
'   WHERE MRNO = :P52_MRNO',
'     AND SERIAL_NO = :P52_SERIAL_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P52_CONSENT_STATUS := NULL;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO'
,p_attribute_03=>'P52_EVENT,P52_EVENT_DESC,P52_FINALIZED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290007582563969526)
,p_event_id=>wwv_flow_imp.id(81757920555713330)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81759123812713342)
,p_event_id=>wwv_flow_imp.id(81757920555713330)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(319727147787331506)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P52_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81758463369713335)
,p_name=>'DA_TXT_ALERT_TEXT'
,p_event_sequence=>82
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_TXT_ALERT_TEXT'
,p_condition_element=>'P52_TXT_ALERT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81758596848713336)
,p_event_id=>wwv_flow_imp.id(81758463369713335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P52_TXT_ALERT_TEXT.'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81758675880713337)
,p_name=>'DASuccessMessage1'
,p_event_sequence=>92
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SUCCESS_MSG'
,p_condition_element=>'P52_SUCCESS_MSG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81758746479713338)
,p_event_id=>wwv_flow_imp.id(81758675880713337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<strong>&P52_SUCCESS_MSG.</strong>'
,p_attribute_02=>'System Message '
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81758827819713339)
,p_name=>'DAError'
,p_event_sequence=>102
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_ERROR'
,p_condition_element=>'P52_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81758996453713340)
,p_event_id=>wwv_flow_imp.id(81758827819713339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<strong>&P52_ERROR.</strong>'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81759201722713343)
,p_name=>'DACancelConsent'
,p_event_sequence=>112
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662657545087147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81759443667713345)
,p_event_id=>wwv_flow_imp.id(81759201722713343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm if you wish to cancel this radiotherapy consent?'
,p_attribute_02=>'System Message '
,p_attribute_03=>'information'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81759375113713344)
,p_event_id=>wwv_flow_imp.id(81759201722713343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1) := ''N'';',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'  RADIATION.PKG_S18APX00072.P_CANCEL_CONSENT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_SERIAL_NO         => :P52_SERIAL_NO,',
'                                              P_USER_MRNO         => :GV_USER_MRNO,',
'                                              P_TERMINAL          => :GV_TERMINAL,',
'                                              P_OBJECT_CODE       => ''S18APX00072'',',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_MAIN_ERROR := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''Y'');',
'    :P52_MAIN_ERROR := NULL;',
'    :P52_SUCCESS_MSG    := ''The radiotherapy consent has been successfully canceled'';',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO,GV_USER_MRNO,GV_TERMINAL'
,p_attribute_03=>'P52_SUCCESS_MSG,P52_MAIN_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81759904110713350)
,p_name=>'DASendBack'
,p_event_sequence=>122
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662780173087148)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82246070362960201)
,p_event_id=>wwv_flow_imp.id(81759904110713350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.openRegion("sendbackreg");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82246104082960202)
,p_name=>'DABTNExit'
,p_event_sequence=>132
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81759805437713349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82246295082960203)
,p_event_id=>wwv_flow_imp.id(82246104082960202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(81759551653713346)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82246332667960204)
,p_name=>'DASendBackConsent'
,p_event_sequence=>142
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81759719716713348)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82246531983960206)
,p_event_id=>wwv_flow_imp.id(82246332667960204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm if you wish to send back the radiotherapy consent?'
,p_attribute_02=>'System Message '
,p_attribute_03=>'information'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82246451928960205)
,p_event_id=>wwv_flow_imp.id(82246332667960204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1) := ''N'';',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'  RADIATION.PKG_S18APX00072.P_SEND_BACK_CONSENT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''ORGANIZATION_ID''),',
'                                                 P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                    ''LOCATION_ID''),',
'                                                 P_SERIAL_NO         => :P52_SERIAL_NO,',
'                                                 P_SEND_BACK_REASON  => :P52_SEND_BACK_REASON,',
'                                                 P_USER_MRNO         => :GV_USER_MRNO,',
'                                                 P_TERMINAL          => :GV_TERMINAL,',
'                                                 P_OBJECT_CODE       => ''S18APX00072'',',
'                                                 P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                                 P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_MAIN_ERROR := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''Y'');',
'    :P52_MAIN_ERROR := NULL;',
'    :P52_SUCCESS_MSG    := ''The Radiotherapy consent has been sent back'';',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO,P52_SEND_BACK_REASON,GV_USER_MRNO,GV_TERMINAL'
,p_attribute_03=>'P52_VALIDATE,P52_SUCCESS_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82246843463960209)
,p_name=>'DADigitalSignedRequired'
,p_event_sequence=>152
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82246980339960210)
,p_event_id=>wwv_flow_imp.id(82246843463960209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P52_DIGITAL_SIGN_REQUIRED := RADIATION.PKG_S18APX00072.F_DIGITAL_SIGN_REQ(P_CONSENT_TYPE    => ''X'',',
'                                                                              P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                               ''ORGANIZATION_ID''),',
'                                                                              P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                               ''PHYSICAL_LOCATION_ID''));',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_03=>'P52_DIGITAL_SIGN_REQUIRED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168540930925880905)
,p_event_id=>wwv_flow_imp.id(82246843463960209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_SELECT_REQUEST'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82247146780960212)
,p_name=>'DADigitalSignRequired'
,p_event_sequence=>162
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_DIGITAL_SIGN_REQUIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82247272152960213)
,p_event_id=>wwv_flow_imp.id(82247146780960212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P52_DIGITAL_SIGN_REQUIRED'') === ''Y'') {',
'    apex.item(''signpoc'').enable();',
'    apex.item(''signwit'').enable();',
'} else {',
'    apex.item(''signpoc'').disable();',
'    apex.item(''signwit'').disable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82247315360960214)
,p_name=>'DACallreport1'
,p_event_sequence=>172
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662256277087143)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82250622450960247)
,p_event_id=>wwv_flow_imp.id(82247315360960214)
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
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82247466358960215)
,p_event_id=>wwv_flow_imp.id(82247315360960214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1) := ''N'';',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'  APEX_UTIL.SET_SESSION_STATE(''P52_PRINT_VALIDATE'', ''N'');',
'  RADIATION.PKG_S18APX00072.P_PRINT_CONSENT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''ORGANIZATION_ID''),',
'                                             P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                ''LOCATION_ID''),',
'                                             P_SERIAL_NO         => :P52_SERIAL_NO,',
'                                             P_USER_MRNO         => :GV_USER_MRNO,',
'                                             P_TERMINAL          => :GV_TERMINAL,',
'                                             P_OBJECT_CODE       => ''S18APX00072'',',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_MAIN_ERROR := L_ALERT_TEXT;',
'    APEX_UTIL.SET_SESSION_STATE(''P52_PRINT_VALIDATE'', ''N'');',
'  ELSE',
'    APEX_UTIL.SET_SESSION_STATE(''P52_PRINT_VALIDATE'', ''Y'');',
'    :P52_MAIN_ERROR  := NULL;',
'    :P52_SUCCESS_MSG := NULL;',
'    COMMIT;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO'
,p_attribute_03=>'P52_VALIDATE,P52_SUCCESS_MSG,P52_MAIN_ERROR,P52_PRINT_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290007785351969528)
,p_event_id=>wwv_flow_imp.id(82247315360960214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT EVENT,',
'         ',
'         RADIATION.PKG_S18APX00072.F_GET_EVENT_DESC(P_SERIAL_NO     => C.SERIAL_NO,',
'                                                    P_CALLED_FROM_Q => CASE',
'                                                                         WHEN :P52_SERIAL_NO IS NOT NULL THEN',
'                                                                          ''Y''',
'                                                                         ELSE',
'                                                                          ''N''',
'                                                                       END) EVENT_DESC,',
'         FINALIZED',
'  ',
'    INTO :P52_EVENT,',
'         ',
'         :P52_EVENT_DESC,',
'         :P52_FINALIZED',
'  ',
'    FROM ORDERENTRY.CONSENT_FORM_INFORMATION C',
'   WHERE MRNO = :P52_MRNO',
'     AND SERIAL_NO = :P52_SERIAL_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P52_CONSENT_STATUS := NULL;',
'END;',
''))
,p_attribute_02=>'P52_MRNO,P52_SERIAL_NO'
,p_attribute_03=>'P52_EVENT,P52_EVENT_DESC,P52_FINALIZED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82247547263960216)
,p_name=>'DADocumentAttachment'
,p_event_sequence=>182
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80213301323303110)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82247679985960217)
,p_event_id=>wwv_flow_imp.id(82247547263960216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'ChatGPT',
'This page is under development. Please use eHIS (the previous application) to attach documents'))
,p_attribute_02=>'System Message '
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82248257918960223)
,p_name=>'DASaveInsert'
,p_event_sequence=>192
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662390611087144)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86791913387682107)
,p_event_id=>wwv_flow_imp.id(82248257918960223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1) := ''N'';',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'  IF :P52_SERIAL_NO IS NULL THEN',
'    HIS.PKG_COUNTER.GET_COUNTER(P_COUNTER_ID  => 488,',
'                                P_COUNTER_LOC => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                             ''PHYSICAL_LOCATION_ID''),',
'                                P_WHERE       => NULL,',
'                                P_TYPE        => ''N'',',
'                                P_COUNTER     => :P52_SERIAL_NO,',
'                                P_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                             ''PHYSICAL_LOCATION_ID''),',
'                                P_STOP        => L_STOP,',
'                                P_ALERT_TEXT  => L_ALERT_TEXT);',
'    :P52_DML_STATUS := ''INSERT'';',
'  ELSE',
'    :P52_DML_STATUS := ''UPDATE'';',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO'
,p_attribute_03=>'P52_SERIAL_NO,P52_DML_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82248344116960224)
,p_event_id=>wwv_flow_imp.id(82248257918960223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'var dmlStatus = $v("P52_DML_STATUS");',
'var actionType = dmlStatus === ''INSERT'' ? ''INSERT'' : ''UPDATE'';',
'',
'apex.server.process("DMLRadiationConsent", {',
'pageItems: [',
'"P52_SERIAL_NO",',
'"P52_MRNO",',
'"P52_ADMISSION_NO",',
'"P52_ORDER_KEY",',
'"P52_HEALTH_PROFESSIONAL_MRNO",',
'"P52_HEALTH_PROFESSIONAL_DATE",',
'"P52_WITNESS_MRNO",',
'"P52_WITNESS_DATE",',
'"P52_INTERPRETER_MRNO",',
'"P52_INTERPRETER_DATE",',
'"P52_CONSENTER1_NAME",',
'"P52_CONSENTER1_RELATION_TO_PATIENT",',
'"P52_CONSENTER1_DATE",',
'"P52_CONSENTER2_NAME",',
'"P52_CONSENTER2_RELATION_TO_PATIENT",',
'"P52_CONSENTER2_DATE",',
'"P52_CONSENT_FORM_NAME",',
'"P52_DETAIL_1",',
'"P52_DETAIL_2",',
'"P52_DETAIL_3",',
'"P52_INTERPRETER_NAME",',
'"P52_WITNESS_NAME_OTHER_PERSON",',
'"P52_CPT_ID",',
'"P52_ANY_ADDITIONAL_INFORMATION",',
'"P52_ATTENDING_PHYSICIANS",',
'"P52_CONDITION_BEING_TREATED",',
'"P52_PROTOCOL",',
'"P52_DURATION_OF_TREATMENT",',
'"P52_OTHER_PROTOCOL",',
'"P52_CPT_DESCRIPTION",',
'"P52_P_SERIAL_NO",',
'"P52_INTERPRETER_REQUIRED",',
'"P52_HEALTH_STATEMENT_REQ",',
'"P52_LANGUAGE_ID",',
'"P52_SURGICAL_ANESTHESIA",',
'"P52_RESP_HEALTH_PRO",',
'"P52_TISSUE_RESEARCH_TEACH",',
'"P52_PERSON_OBTAINING_CONSENT",',
'"P52_OBTAINING_CONSENT_DATE",',
'"P52_HEALTH_PROFESSIONAL_STAT_ID",',
'"P52_MULTIPLE_CPT_ID",',
'"P52_CHEMO_LEAFLET_INSTRUCTIONS",',
'"P52_ENTERED_BY",',
'"P52_ENTERED_DATE",',
'"P52_THERAPEUTIC_APHERESIS",',
'"P52_PROCEDURE_REST_BY_PATIENT",',
'"P52_FORWARDED_BY",',
'"P52_FORWARDED_DATE",',
'"P52_SIGNED_BY",',
'"P52_SIGNED_DATE",',
'"P52_CPT_ID_HIST",',
'"P52_CPT_DESCRIPTION_HIST",',
'"P52_MULTIPLE_CPT_ID_HIST",',
'"P52_ANY_ADDITIONAL_INFO_HIST",',
'"P52_DETAIL_1_HIST",',
'"P52_DETAIL_2_HIST",',
'"P52_SURGICAL_ANESTHESIA_HIST",',
'"P52_ATTENDING_PHYSICIANS_HIST",',
'"P52_PROTOCOL_HIST",',
'"P52_CONDITION_BEING_TREATED_HIST",',
'"P52_OTHER_PROTOCOL_HIST",',
'"P52_DURATION_OF_TREATMENT_HIST",',
'"P52_P_SERIAL_NO_HIST",',
'"P52_PROCEDURE_REST_BY_PATIENT_HIST",',
'"P52_EVENT",',
'"P52_FINALIZED",',
'"P52_CONSENT_CHANGED",',
'"P52_FERTILITY_RISK_ID",',
'"P52_FERTILITY_REMARKS",',
'"P52_CANCELLED_BY",',
'"P52_CANCELLED_DATE",',
'"P52_FERTILITY_RISK_ID_HIST",',
'"P52_FERTILITY_REMARKS_HIST",',
'"P52_ACTUAL_MRNO",',
'"P52_POC_DIGITALLY_SIGNED",',
'"P52_WIT_DIGITALLY_SIGNED",',
'"P52_PAT_DIGITALLY_SIGNED",',
'"P52_PATIENT_CNIC",',
'"P52_EMERGENCY_PRINTING",',
'"P52_PRINTING_REMARKS",',
'"P52_PAT_SIGN_DATE",',
'"P52_POC_SIGN_DATE",',
'"P52_E_PRINT_ACKNOWLEDGE",',
'"P52_RADIATION_NO",',
'"P52_SITE_ID",',
'"P52_ACUTE_SIDE_EFFECT",',
'"P52_CHRONIC_SIDE_EFFECT",',
'"P52_PATIENT_NAME",',
'"P52_HEALTH_PROFESSIONAL_NAME",',
'"P52_WITNESS_NAME",',
'"P52_ATTENDING_PHYSICIANS_NAME",',
'"P52_LANGUAGE_DESC",',
'"P52_PERSON_OBTAIN_CON_NAME",',
'"P52_ENTERED_BY_NAME",',
'"P52_FORWARDED_BY_NAME",',
'"P52_SIGNED_BY_NAME",',
'"P52_EVENT_DESC",',
'"P52_CANCELLED_BY_NAME",',
'"P52_SITE_DESC",',
'"P52_ND_RELATION_WITH_PATIENT",',
'"P52_P_DESC",',
'"P52_HEALTH_PROFESSIONAL_STATEMENT",',
'"P52_GENDER",',
'"P52_AGE"',
'],',
'x01: actionType,',
'}, {',
'dataType: ''json'',',
'success: function(data) {',
'console.log(data); // Log the data to see the response structure',
'if (data.status === "success") {',
'apex.message.alert(data.response, function() {',
'// Success callback function',
'apex.region("consenthist").refresh();',
'}, {',
'title: "Success",',
'style: "success",',
'iconClasses: "fa fa-check fa-2x",',
'okLabel: "Ok"',
'});',
'} else {',
'apex.message.alert(data.response, function() {',
'// Error callback function',
'}, {',
'title: "Error",',
'style: "warning",',
'iconClasses: "fa fa-warning fa-2x",',
'okLabel: "Ok"',
'});',
'}',
'},',
'error: function(xhr, textStatus, errorThrown) {',
'console.error(''Error occurred while processing:'', textStatus, errorThrown);',
'apex.message.alert(''An error occurred while processing. Please try again later.'', null, {',
'title: "Error",',
'style: "error",',
'iconClasses: "fa fa-times fa-2x",',
'okLabel: "Ok"',
'});',
'}',
'});',
'})();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83614821597811934)
,p_event_id=>wwv_flow_imp.id(82248257918960223)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82248930142960230)
,p_name=>'DADelete '
,p_event_sequence=>202
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82248800842960229)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163107969561207142)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Please confirm if you want to delete this treatment consent?'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82249020366960231)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P52_STOP").setValue("N");',
'',
'apex.server.process("DMLRadiationConsent", {',
'pageItems: [',
'"P52_SERIAL_NO",',
'"P52_MRNO",',
'"P52_ADMISSION_NO",',
'"P52_ORDER_KEY",',
'"P52_HEALTH_PROFESSIONAL_MRNO",',
'"P52_HEALTH_PROFESSIONAL_DATE",',
'"P52_WITNESS_MRNO",',
'"P52_WITNESS_DATE",',
'"P52_INTERPRETER_MRNO",',
'"P52_INTERPRETER_DATE",',
'"P52_CONSENTER1_NAME",',
'"P52_CONSENTER1_RELATION_TO_PATIENT",',
'"P52_CONSENTER1_DATE",',
'"P52_CONSENTER2_NAME",',
'"P52_CONSENTER2_RELATION_TO_PATIENT",',
'"P52_CONSENTER2_DATE",',
'"P52_CONSENT_FORM_NAME",',
'"P52_DETAIL_1",',
'"P52_DETAIL_2",',
'"P52_DETAIL_3",',
'"P52_INTERPRETER_NAME",',
'"P52_WITNESS_NAME_OTHER_PERSON",',
'"P52_CPT_ID",',
'"P52_ANY_ADDITIONAL_INFORMATION",',
'"P52_ATTENDING_PHYSICIANS",',
'"P52_CONDITION_BEING_TREATED",',
'"P52_PROTOCOL",',
'"P52_DURATION_OF_TREATMENT",',
'"P52_OTHER_PROTOCOL",',
'"P52_CPT_DESCRIPTION",',
'"P52_P_SERIAL_NO",',
'"P52_INTERPRETER_REQUIRED",',
'"P52_HEALTH_STATEMENT_REQ",',
'"P52_LANGUAGE_ID",',
'"P52_SURGICAL_ANESTHESIA",',
'"P52_RESP_HEALTH_PRO",',
'"P52_TISSUE_RESEARCH_TEACH",',
'"P52_PERSON_OBTAINING_CONSENT",',
'"P52_OBTAINING_CONSENT_DATE",',
'"P52_HEALTH_PROFESSIONAL_STAT_ID",',
'"P52_MULTIPLE_CPT_ID",',
'"P52_CHEMO_LEAFLET_INSTRUCTIONS",',
'"P52_ENTERED_BY",',
'"P52_ENTERED_DATE",',
'"P52_THERAPEUTIC_APHERESIS",',
'"P52_PROCEDURE_REST_BY_PATIENT",',
'"P52_FORWARDED_BY",',
'"P52_FORWARDED_DATE",',
'"P52_SIGNED_BY",',
'"P52_SIGNED_DATE",',
'"P52_CPT_ID_HIST",',
'"P52_CPT_DESCRIPTION_HIST",',
'"P52_MULTIPLE_CPT_ID_HIST",',
'"P52_ANY_ADDITIONAL_INFO_HIST",',
'"P52_DETAIL_1_HIST",',
'"P52_DETAIL_2_HIST",',
'"P52_SURGICAL_ANESTHESIA_HIST",',
'"P52_ATTENDING_PHYSICIANS_HIST",',
'"P52_PROTOCOL_HIST",',
'"P52_CONDITION_BEING_TREATED_HIST",',
'"P52_OTHER_PROTOCOL_HIST",',
'"P52_DURATION_OF_TREATMENT_HIST",',
'"P52_P_SERIAL_NO_HIST",',
'"P52_PROCEDURE_REST_BY_PATIENT_HIST",',
'"P52_EVENT",',
'"P52_FINALIZED",',
'"P52_CONSENT_CHANGED",',
'"P52_FERTILITY_RISK_ID",',
'"P52_FERTILITY_REMARKS",',
'"P52_CANCELLED_BY",',
'"P52_CANCELLED_DATE",',
'"P52_FERTILITY_RISK_ID_HIST",',
'"P52_FERTILITY_REMARKS_HIST",',
'"P52_ACTUAL_MRNO",',
'"P52_POC_DIGITALLY_SIGNED",',
'"P52_WIT_DIGITALLY_SIGNED",',
'"P52_PAT_DIGITALLY_SIGNED",',
'"P52_PATIENT_CNIC",',
'"P52_EMERGENCY_PRINTING",',
'"P52_PRINTING_REMARKS",',
'"P52_PAT_SIGN_DATE",',
'"P52_POC_SIGN_DATE",',
'"P52_E_PRINT_ACKNOWLEDGE",',
'"P52_RADIATION_NO",',
'"P52_SITE_ID",',
'"P52_ACUTE_SIDE_EFFECT",',
'"P52_CHRONIC_SIDE_EFFECT",',
'"P52_PATIENT_NAME",',
'"P52_HEALTH_PROFESSIONAL_NAME",',
'"P52_WITNESS_NAME",',
'"P52_ATTENDING_PHYSICIANS_NAME",',
'"P52_LANGUAGE_DESC",',
'"P52_PERSON_OBTAIN_CON_NAME",',
'"P52_ENTERED_BY_NAME",',
'"P52_FORWARDED_BY_NAME",',
'"P52_SIGNED_BY_NAME",',
'"P52_EVENT_DESC",',
'"P52_CANCELLED_BY_NAME",',
'"P52_SITE_DESC",',
'"P52_ND_RELATION_WITH_PATIENT",',
'"P52_P_DESC",',
'"P52_HEALTH_PROFESSIONAL_STATEMENT",',
'"P52_GENDER",',
'"P52_AGE"',
'],',
'x01: ''DELETE'' // Adjust based on your application logic',
'}, {',
'dataType: ''json'',',
'success: function (data) {',
'console.log(data); // Log the data to see the response structure',
'if (data.status === "success") {',
'apex.message.alert(data.response, function () {',
'    // Success callback function',
'}, {',
'    title: "Success",',
'    style: "success",',
'    iconClasses: "fa fa-check fa-2x",',
'    okLabel: "Ok"',
'});',
'} else {',
'apex.message.alert(data.response, function () {',
'    // Error callback function',
'}, {',
'    title: "Error",',
'    style: "warning",',
'    iconClasses: "fa fa-warning fa-2x",',
'    okLabel: "Ok"',
'});',
'apex.item("P52_STOP").setValue("Y");',
'return; ',
'}',
'}',
'});',
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163108020327207143)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SERIAL_NO,',
'         MRNO,',
'         ADMISSION_NO,',
'         ORDER_KEY,',
'         HEALTH_PROFESSIONAL_MRNO,',
'         TO_CHAR(HEALTH_PROFESSIONAL_DATE, ''DD-MON-YYYY HH24:MI'') AS HEALTH_PROFESSIONAL_DATE,',
'         WITNESS_MRNO,',
'         TO_CHAR(WITNESS_DATE, ''DD-MON-YYYY HH24:MI'') AS WITNESS_DATE,',
'         INTERPRETER_MRNO,',
'         TO_CHAR(INTERPRETER_DATE, ''DD-MON-YYYY HH24:MI'') AS INTERPRETER_DATE,',
'         CONSENTER1_NAME,',
'         CONSENTER1_RELATION_TO_PATIENT,',
'         TO_CHAR(CONSENTER1_DATE, ''DD-MON-YYYY HH24:MI'') AS CONSENTER1_DATE,',
'         CONSENTER2_NAME,',
'         CONSENTER2_RELATION_TO_PATIENT,',
'         TO_CHAR(CONSENTER2_DATE, ''DD-MON-YYYY HH24:MI'') AS CONSENTER2_DATE,',
'         CONSENT_FORM_NAME,',
'         DETAIL_1,',
'         DETAIL_2,',
'         DETAIL_3,',
'         INTERPRETER_NAME,',
'         WITNESS_NAME_OTHER_PERSON,',
'         CPT_ID,',
'         ATTENDING_PHYSICIANS,',
'         ANY_ADDITIONAL_INFORMATION,',
'         CONDITION_BEING_TREATED',
'  ',
'    INTO :P52_SERIAL_NO,',
'         :P52_MRNO,',
'         :P52_ADMISSION_NO,',
'         :P52_ORDER_KEY,',
'         :P52_HEALTH_PROFESSIONAL_MRNO,',
'         :P52_HEALTH_PROFESSIONAL_DATE,',
'         :P52_WITNESS_MRNO,',
'         :P52_WITNESS_DATE,',
'         :P52_INTERPRETER_MRNO,',
'         :P52_INTERPRETER_DATE,',
'         :P52_CONSENTER1_NAME,',
'         :P52_CONSENTER1_RELATION_TO_PATIENT,',
'         :P52_CONSENTER1_DATE,',
'         :P52_CONSENTER2_NAME,',
'         :P52_CONSENTER2_RELATION_TO_PATIENT,',
'         :P52_CONSENTER2_DATE,',
'         :P52_CONSENT_FORM_NAME,',
'         :P52_DETAIL_1,',
'         :P52_DETAIL_2,',
'         :P52_DETAIL_3,',
'         :P52_INTERPRETER_NAME,',
'         :P52_WITNESS_NAME_OTHER_PERSON,',
'         :P52_CPT_ID,',
'         :P52_ATTENDING_PHYSICIANS,',
'         :P52_ANY_ADDITIONAL_INFORMATION,',
'         :P52_CONDITION_BEING_TREATED',
'    FROM RADIATION.PKG_S18APX00072.QUERY_TREATMENT_CONSENT_APEX(P_SERIAL_NO         => :P52_ND_SERIAL_NO,',
'                                                                P_MRNO              => :P52_MRNO,',
'                                                                P_CONSENT_FORM_NAME => ''X'',',
'                                                                P_ASSIGNMENT_ID     => NULL,',
'                                                                P_QUERY_ALL_RECORDS => ''Y'');',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_ND_SERIAL_NO,P52_MRNO'
,p_attribute_03=>'P52_SERIAL_NO,P52_ADMISSION_NO,P52_ORDER_KEY,P52_HEALTH_PROFESSIONAL_MRNO,P52_HEALTH_PROFESSIONAL_DATE,P52_WITNESS_MRNO,P52_WITNESS_DATE,P52_INTERPRETER_MRNO,P52_INTERPRETER_DATE,P52_CONSENTER1_NAME,P52_CONSENTER1_RELATION_TO_PATIENT,P52_CONSENTER1_D'
||'ATE,P52_CONSENTER2_NAME,P52_CONSENTER2_RELATION_TO_PATIENT,P52_CONSENTER2_DATE,P52_CONSENT_FORM_NAME,P52_DETAIL_1,P52_DETAIL_2,P52_DETAIL_3,P52_INTERPRETER_NAME,P52_WITNESS_NAME_OTHER_PERSON,P52_CPT_ID,P52_ATTENDING_PHYSICIANS,P52_ANY_ADDITIONAL_INFO'
||'RMATION,P52_CONDITION_BEING_TREATED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P52_STOP'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163108148177207144)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT PROTOCOL,',
'         DURATION_OF_TREATMENT,',
'         OTHER_PROTOCOL,',
'         CPT_DESCRIPTION,',
'         P_SERIAL_NO,',
'         INTERPRETER_REQUIRED,',
'         HEALTH_STATEMENT_REQ,',
'         LANGUAGE_ID,',
'         SURGICAL_ANESTHESIA,',
'         RESP_HEALTH_PRO,',
'         TISSUE_RESEARCH_TEACH,',
'         PERSON_OBTAINING_CONSENT,',
'         TO_CHAR(OBTAINING_CONSENT_DATE, ''DD-MON-YYYY HH24:MI'') AS OBTAINING_CONSENT_DATE,',
'         HEALTH_PROFESSIONAL_STAT_ID,',
'         MULTIPLE_CPT_ID,',
'         CHEMO_LEAFLET_INSTRUCTIONS,',
'         ENTERED_BY,',
'         TO_CHAR(ENTERED_DATE, ''DD-MON-YYYY HH24:MI'') AS ENTERED_DATE,',
'         THERAPEUTIC_APHERESIS,',
'         PROCEDURE_REST_BY_PATIENT,',
'         FORWARDED_BY,',
'         TO_CHAR(FORWARDED_DATE, ''DD-MON-YYYY HH24:MI'') AS FORWARDED_DATE,',
'         SIGNED_BY,',
'         TO_CHAR(SIGNED_DATE, ''DD-MON-YYYY HH24:MI'') AS SIGNED_DATE,',
'         CPT_ID_HIST,',
'         CPT_DESCRIPTION_HIST,',
'         MULTIPLE_CPT_ID_HIST,',
'         ANY_ADDITIONAL_INFO_HIST,',
'         DETAIL_1_HIST,',
'         DETAIL_2_HIST,',
'         SURGICAL_ANESTHESIA_HIST,',
'         ATTENDING_PHYSICIANS_HIST,',
'         PROTOCOL_HIST,',
'         CONDITION_BEING_TREATED_HIST,',
'         OTHER_PROTOCOL_HIST',
'         ',
'    INTO :P52_PROTOCOL,',
'         :P52_DURATION_OF_TREATMENT,',
'         :P52_OTHER_PROTOCOL,',
'         :P52_CPT_DESCRIPTION,',
'         :P52_P_SERIAL_NO,',
'         :P52_INTERPRETER_REQUIRED,',
'         :P52_HEALTH_STATEMENT_REQ,',
'         :P52_LANGUAGE_ID,',
'         :P52_SURGICAL_ANESTHESIA,',
'         :P52_RESP_HEALTH_PRO,',
'         :P52_TISSUE_RESEARCH_TEACH,',
'         :P52_PERSON_OBTAINING_CONSENT,',
'         :P52_OBTAINING_CONSENT_DATE,',
'         :P52_HEALTH_PROFESSIONAL_STAT_ID,',
'         :P52_MULTIPLE_CPT_ID,',
'         :P52_CHEMO_LEAFLET_INSTRUCTIONS,',
'         :P52_ENTERED_BY,',
'         :P52_ENTERED_DATE,',
'         :P52_THERAPEUTIC_APHERESIS,',
'         :P52_PROCEDURE_REST_BY_PATIENT,',
'         :P52_FORWARDED_BY,',
'         :P52_FORWARDED_DATE,',
'         :P52_SIGNED_BY,',
'         :P52_SIGNED_DATE,',
'         :P52_CPT_ID_HIST,',
'         :P52_CPT_DESCRIPTION_HIST,',
'         :P52_MULTIPLE_CPT_ID_HIST,',
'         :P52_ANY_ADDITIONAL_INFO_HIST,',
'         :P52_DETAIL_1_HIST,',
'         :P52_DETAIL_2_HIST,',
'         :P52_SURGICAL_ANESTHESIA_HIST,',
'         :P52_ATTENDING_PHYSICIANS_HIST,',
'         :P52_PROTOCOL_HIST,',
'         :P52_CONDITION_BEING_TREATED_HIST,',
'         :P52_OTHER_PROTOCOL_HIST',
'    FROM RADIATION.PKG_S18APX00072.QUERY_TREATMENT_CONSENT_APEX(P_SERIAL_NO         => :P52_ND_SERIAL_NO,',
'                                                                 P_MRNO              => :P52_MRNO,',
'                                                                 P_CONSENT_FORM_NAME => ''X'',',
'                                                                 P_ASSIGNMENT_ID     => NULL,',
'                                                                 P_QUERY_ALL_RECORDS => ''Y'');',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_ND_SERIAL_NO'
,p_attribute_03=>'P52_PROTOCOL,P52_DURATION_OF_TREATMENT,P52_OTHER_PROTOCOL,P52_CPT_DESCRIPTION,P52_P_SERIAL_NO,P52_INTERPRETER_REQUIRED,P52_HEALTH_STATEMENT_REQ,P52_LANGUAGE_ID,P52_SURGICAL_ANESTHESIA,P52_RESP_HEALTH_PRO,P52_TISSUE_RESEARCH_TEACH,P52_PERSON_OBTAIN_CO'
||'N_NAME,P52_OBTAINING_CONSENT_DATE,P52_HEALTH_PROFESSIONAL_STAT_ID,P52_MULTIPLE_CPT_ID,P52_CHEMO_LEAFLET_INSTRUCTIONS,P52_ENTERED_BY,P52_ENTERED_DATE,P52_THERAPEUTIC_APHERESIS,P52_PROCEDURE_REST_BY_PATIENT,P52_FORWARDED_BY,P52_FORWARDED_DATE,P52_SIGNE'
||'D_BY,P52_SIGNED_DATE,P52_CPT_ID_HIST,P52_CPT_DESCRIPTION_HIST,P52_MULTIPLE_CPT_ID_HIST,P52_ANY_ADDITIONAL_INFO_HIST,P52_DETAIL_1_HIST,P52_DETAIL_2_HIST,P52_SURGICAL_ANESTHESIA_HIST,P52_ATTENDING_PHYSICIANS_HIST,P52_PROTOCOL_HIST,P52_CONDITION_BEING_T'
||'REATED_HIST,P52_OTHER_PROTOCOL_HIST,P52_PERSON_OBTAINING_CONSENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P52_STOP'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163108266594207145)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DURATION_OF_TREATMENT_HIST,',
'         P_SERIAL_NO_HIST,',
'         PROCEDURE_REST_BY_PATIENT_HIST,',
'         EVENT,',
'         FINALIZED,',
'         CONSENT_CHANGED,',
'         FERTILITY_RISK_ID,',
'         FERTILITY_REMARKS,',
'         CANCELLED_BY,',
'         TO_CHAR(CANCELLED_DATE, ''DD-MON-YYYY HH24:MI'') AS CANCELLED_DATE,',
'         FERTILITY_RISK_ID_HIST,',
'         FERTILITY_REMARKS_HIST,',
'         ACTUAL_MRNO,',
'         POC_DIGITALLY_SIGNED,',
'         WIT_DIGITALLY_SIGNED,',
'         PAT_DIGITALLY_SIGNED,',
'         PATIENT_CNIC,',
'         EMERGENCY_PRINTING,',
'         PRINTING_REMARKS,',
'         TO_CHAR(PAT_SIGN_DATE, ''DD-MON-YYYY HH24:MI'') AS PAT_SIGN_DATE,',
'         TO_CHAR(POC_SIGN_DATE, ''DD-MON-YYYY HH24:MI'') AS POC_SIGN_DATE,',
'         E_PRINT_ACKNOWLEDGE,',
'         RADIATION_NO,',
'         SITE_ID,',
'         ACUTE_SIDE_EFFECT,',
'         CHRONIC_SIDE_EFFECT,',
'         PATIENT_NAME,',
'         HEALTH_PROFESSIONAL_NAME,',
'         WITNESS_NAME,',
'         ATTENDING_PHYSICIANS_NAME,',
'         LANGUAGE_DESC,',
'         PERSON_OBTAIN_CON_NAME,',
'         ENTERED_BY_NAME,',
'         FORWARDED_BY_NAME,',
'         SIGNED_BY_NAME,',
'         EVENT_DESC,',
'         CANCELLED_BY_NAME,',
'         SITE_DESC,',
'         ND_RELATION_WITH_PATIENT,',
'         P_DESC,',
'         HEALTH_PROFESSIONAL_STATEMENT,',
'         GENDER,',
'         AGE',
'  ',
'    INTO :P52_DURATION_OF_TREATMENT_HIST,',
'         :P52_P_SERIAL_NO_HIST,',
'         :P52_PROCEDURE_REST_BY_PATIENT_HIST,',
'         :P52_EVENT,',
'         :P52_FINALIZED,',
'         :P52_CONSENT_CHANGED,',
'         :P52_FERTILITY_RISK_ID,',
'         :P52_FERTILITY_REMARKS,',
'         :P52_CANCELLED_BY,',
'         :P52_CANCELLED_DATE,',
'         :P52_FERTILITY_RISK_ID_HIST,',
'         :P52_FERTILITY_REMARKS_HIST,',
'         :P52_ACTUAL_MRNO,',
'         :P52_POC_DIGITALLY_SIGNED,',
'         :P52_WIT_DIGITALLY_SIGNED,',
'         :P52_PAT_DIGITALLY_SIGNED,',
'         :P52_PATIENT_CNIC,',
'         :P52_EMERGENCY_PRINTING,',
'         :P52_PRINTING_REMARKS,',
'         :P52_PAT_SIGN_DATE,',
'         :P52_POC_SIGN_DATE,',
'         :P52_E_PRINT_ACKNOWLEDGE,',
'         :P52_RADIATION_NO,',
'         :P52_SITE_ID,',
'         :P52_ACUTE_SIDE_EFFECT,',
'         :P52_CHRONIC_SIDE_EFFECT,',
'         :P52_PATIENT_NAME,',
'         :P52_HEALTH_PROFESSIONAL_NAME,',
'         :P52_WITNESS_NAME,',
'         :P52_ATTENDING_PHYSICIANS_NAME,',
'         :P52_LANGUAGE_DESC,',
'         :P52_PERSON_OBTAIN_CON_NAME,',
'         :P52_ENTERED_BY_NAME,',
'         :P52_FORWARDED_BY_NAME,',
'         :P52_SIGNED_BY_NAME,',
'         :P52_EVENT_DESC,',
'         :P52_CANCELLED_BY_NAME,',
'         :P52_SITE_DESC,',
'         :P52_ND_RELATION_WITH_PATIENT,',
'         :P52_P_DESC,',
'         :P52_HEALTH_PROFESSIONAL_STATEMENT,',
'         :P52_GENDER,',
'         :P52_AGE',
'    FROM RADIATION.PKG_S18APX00072.QUERY_TREATMENT_CONSENT_APEX(P_SERIAL_NO         => :P52_ND_SERIAL_NO,',
'                                                                 P_MRNO              => :P52_MRNO,',
'                                                                 P_CONSENT_FORM_NAME => ''X'',',
'                                                                 P_ASSIGNMENT_ID     => NULL,',
'                                                                 P_QUERY_ALL_RECORDS => ''Y'');',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_ND_SERIAL_NO'
,p_attribute_03=>'P52_DURATION_OF_TREATMENT_HIST,P52_P_SERIAL_NO_HIST,P52_PROCEDURE_REST_BY_PATIENT_HIST,P52_EVENT,P52_FINALIZED,P52_CONSENT_CHANGED,P52_FERTILITY_RISK_ID,P52_FERTILITY_REMARKS,P52_CANCELLED_BY,P52_CANCELLED_DATE,P52_FERTILITY_RISK_ID_HIST,P52_FERTILIT'
||'Y_REMARKS_HIST,P52_ACTUAL_MRNO,P52_POC_DIGITALLY_SIGNED,P52_WIT_DIGITALLY_SIGNED,P52_PAT_DIGITALLY_SIGNED,P52_PATIENT_CNIC,P52_EMERGENCY_PRINTING,P52_PRINTING_REMARKS,P52_PAT_SIGN_DATE,P52_POC_SIGN_DATE,P52_E_PRINT_ACKNOWLEDGE,P52_RADIATION_NO,P52_SI'
||'TE_ID,P52_ACUTE_SIDE_EFFECT,P52_CHRONIC_SIDE_EFFECT,P52_PATIENT_NAME,P52_HEALTH_PROFESSIONAL_NAME,P52_WITNESS_NAME,P52_ATTENDING_PHYSICIANS_NAME,P52_LANGUAGE_DESC,P52_PERSON_OBTAIN_CON_NAME,P52_ENTERED_BY_NAME,P52_FORWARDED_BY_NAME,P52_SIGNED_BY_NAME'
||',P52_EVENT_DESC,P52_CANCELLED_BY_NAME,P52_SITE_DESC,P52_CONSENTER1_RELATION_TO_PATIENT,P52_P_DESC,P52_HEALTH_PROFESSIONAL_STATEMENT,P52_GENDER,P52_AGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P52_STOP'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163108386489207146)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P52_STOP'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163108430738207147)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_DISPLAY_SERIAL_NO,P52_CONSENT_STATUS,P52_SITE_DESC,P52_RADIATION_NO,P52_ACUTE_SIDE_EFFECT,P52_CHRONIC_SIDE_EFFECT,P52_SURGICAL_ANESTHESIA,P52_CONSENTER1_NAME,P52_PERSON_OBTAINING_CONSENT,P52_CONSENTER1_RELATION_TO_PATIENT,P52_PATIENT_CNIC,P52_OBT'
||'AINING_CONSENT_DATE,P52_CONSENTER1_DATE,P52_HEALTH_PROFESSIONAL_NAME,P52_HEALTH_PROFESSIONAL_DATE,P52_INTERPRETER_NAME,P52_INTERPRETER_DATE,P52_LANGUAGE_ID,P52_WITNESS_MRNO,P52_WITNESS_NAME_OTHER_PERSON,P52_WITNESS_DATE,P52_PRINTING_REMARKS,P52_CANCE'
||'LLED_BY_NAME,P52_CANCELLED_DATE,P52_SELECT_REQUEST'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P52_STOP'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163108588620207148)
,p_event_id=>wwv_flow_imp.id(82248930142960230)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P52_INTERPRETER_REQUIRED := ''N'';',
'  :P52_CONSENT_TYPE         := ''W'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_03=>'P52_INTERPRETER_REQUIRED,P52_CONSENT_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P52_STOP'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82249133603960232)
,p_name=>'DAExitPage'
,p_event_sequence=>212
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80213411043303111)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82249206521960233)
,p_event_id=>wwv_flow_imp.id(82249133603960232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82249373824960234)
,p_name=>'DAPassword'
,p_event_sequence=>222
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' || ',
'(this.browserEvent.originalEvent && (this.browserEvent.originalEvent.key === ''Enter'' || this.browserEvent.originalEvent.key === ''Tab''))',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82249507742960236)
,p_event_id=>wwv_flow_imp.id(82249373824960234)
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
'  :P52_SUCCESS_MSG    := null;',
'  :P52_ERROR          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P52_DISP_MRNO,',
'                                          :P52_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_ERROR := ''You have entered an incorrect password. Please try again with the correct password'';',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''Y'');',
'    :P52_ERROR := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P52_DISP_MRNO,P52_PASSWORD'
,p_attribute_03=>'P52_SUCCESS_MSG,P52_ERROR,P52_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82249609229960237)
,p_event_id=>wwv_flow_imp.id(82249373824960234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1) := ''N'';',
'  L_ALERT_TEXT VARCHAR2(4000);',
'BEGIN',
'',
'  RADIATION.PKG_S18APX00072.P_SIGN_CONSENT(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''ORGANIZATION_ID''),',
'                                            P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                               ''LOCATION_ID''),',
'                                            P_SERIAL_NO         => :P52_SERIAL_NO,',
'                                            P_SIGN_MRNO         => :P52_DISP_MRNO,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_OBJECT_CODE       => ''S18APX00072'',',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P52_ERROR := L_ALERT_TEXT;',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''N'');',
'  ELSE',
'    Apex_Util.Set_Session_State(''P52_VALIDATE'', ''Y'');',
'    :P52_ERROR := NULL;',
'    :P52_SUCCESS_MSG    := ''The radiotherapy consent has been successfully signed'';',
'  END IF;',
'END;',
'',
'',
''))
,p_attribute_02=>'P52_SERIAL_NO,P52_DISP_MRNO,GV_USER_MRNO,GV_TERMINAL'
,p_attribute_03=>'P52_SUCCESS_MSG,P52_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P52_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163105213449207115)
,p_event_id=>wwv_flow_imp.id(82249373824960234)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT EVENT,',
'         ',
'         RADIATION.PKG_S18APX00072.F_GET_EVENT_DESC(P_SERIAL_NO     => C.SERIAL_NO,',
'                                                     P_CALLED_FROM_Q => CASE',
'                                                                          WHEN :P52_SERIAL_NO IS NOT NULL THEN',
'                                                                           ''Y''',
'                                                                          ELSE',
'                                                                           ''N''',
'                                                                        END) EVENT_DESC',
'    INTO :P52_EVENT,',
'         ',
'         :P52_EVENT_DESC',
'  ',
'    FROM ORDERENTRY.CONSENT_FORM_INFORMATION C',
'   WHERE MRNO = :P52_MRNO',
'     AND SERIAL_NO = :P52_SERIAL_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P52_CONSENT_STATUS := NULL;',
'END;',
''))
,p_attribute_02=>'P52_SERIAL_NO'
,p_attribute_03=>'P52_EVENT,P52_EVENT_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82249753641960238)
,p_event_id=>wwv_flow_imp.id(82249373824960234)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("forwardbtn").disable();',
'apex.item("savebtn").disable();',
'apex.item("signbtn").disable();',
'apex.item("cancelbtn").disable();',
'apex.item("sendbackbtn").disable();',
'apex.item("sendbackhistbtn").disable();',
'apex.item("patsignbtn").disable();',
'apex.item("attachdocbtn").disable();',
'apex.item("deletebtn").disable();',
'',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P52_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82249814809960239)
,p_event_id=>wwv_flow_imp.id(82249373824960234)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(319727147787331506)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P52_VALIDATE'
,p_client_condition_expression=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82250173227960242)
,p_name=>'DAMainError'
,p_event_sequence=>232
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_MAIN_ERROR'
,p_condition_element=>'P52_MAIN_ERROR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82250225211960243)
,p_event_id=>wwv_flow_imp.id(82250173227960242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P52_MAIN_ERROR.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82250330717960244)
,p_name=>'DACallReport2'
,p_event_sequence=>242
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662256277087143)
,p_condition_element=>'P52_PRINT_VALIDATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83612257983811908)
,p_event_id=>wwv_flow_imp.id(82250330717960244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Initialize an empty array to hold objects',
'let objectList = [];',
'',
'// Retrieve parameter values',
'let serialNo = $v("P52_SERIAL_NO");',
'let locationId = $v("GV_LOCATION_ID");',
'',
'// Check if P52_SERIAL_NO is empty',
'if (serialNo === '''') {',
'    apex.message.alert(''No consent selected, cannot proceed'');',
'    return; // Exit function if condition is met',
'}',
'',
'// Define the first object and push it to objectList',
'let paramList = {',
'    "P_SERIAL_NO": serialNo,',
'    "P_LOCATION_ID": locationId',
'};',
'',
'let ObjectCode = ''S18REP00070'';',
'let object = {',
'    "OBJECTCODE": ObjectCode,',
'    "METHOD": ''P2'', // Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'objectList.push(object);',
'',
'// Define the second object and push it to objectList',
'let paramList1 = {',
'    "P_SERIAL_NO": serialNo,',
'    "P_LOCATION_ID": locationId',
'};',
'',
'let ObjectCode1 = ''S18REP00071'';',
'let object1 = {',
'    "OBJECTCODE": ObjectCode1,',
'    "METHOD": ''P2'', // Reference is in Help',
'    "PARAMLIST": paramList1',
'};',
'objectList.push(object1);',
'',
'// Log the entire objectList array to the console for debugging',
'console.log(objectList);',
'',
'// Return the populated objectList array',
'return objectList;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290008175670969532)
,p_name=>'DACallReport3'
,p_event_sequence=>252
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78662256277087143)
,p_condition_element=>'P52_PRINT_VALIDATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290008391982969534)
,p_event_id=>wwv_flow_imp.id(290008175670969532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83611900875811905)
,p_name=>'CallReport'
,p_event_sequence=>262
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CallReport'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83612122821811907)
,p_event_id=>wwv_flow_imp.id(83611900875811905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'let paramList = {',
'    "P_SERIAL_NO": $v("P52_SERIAL_NO"),',
'    "P_LOCATION_ID": $v("GV_LOCATION_ID")',
'};',
'',
'if ($v(''P52_SERIAL_NO'') === '''') {',
'    apex.message.alert(''No consent selected, cannot proceed'');',
'    return;',
'}',
'',
'let l_object_code = ''S18REP00070'';',
'',
'let object = {',
'    "OBJECTCODE": l_object_code,',
'    "METHOD": ''S1'',',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'console.log(object);',
'',
'return objectList;',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83612441654811910)
,p_name=>'CallReport1'
,p_event_sequence=>272
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'CallReport'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83612604801811912)
,p_event_id=>wwv_flow_imp.id(83612441654811910)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_SERIAL_NO":  $v("P52_SERIAL_NO")};',
'let object = {',
'    "OBJECTCODE": ''S18REP00071'',',
'    "METHOD": ''S1'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
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
 p_id=>wwv_flow_imp.id(83613470855811920)
,p_name=>'DAShowList'
,p_event_sequence=>282
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(83613336709811919)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83613707549811923)
,p_event_id=>wwv_flow_imp.id(83613470855811920)
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
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83613653602811922)
,p_event_id=>wwv_flow_imp.id(83613470855811920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {"P_XXXXX": ''XXXXXXXX''};',
'let object = {',
'    "OBJECTCODE": ''S04REP00285'',',
'    "METHOD": ''S1'',//Reference is in Help',
'    "PARAMLIST": paramList',
'};',
'',
'objectList.push(object);',
'',
'// Change End',
'return objectList;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83613803598811924)
,p_name=>'DASerialNo'
,p_event_sequence=>292
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SERIAL_NO'
,p_condition_element=>'P52_SERIAL_NO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83614074679811926)
,p_event_id=>wwv_flow_imp.id(83613803598811924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_DISPLAY_SERIAL_NO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P52_SERIAL_NO;'
,p_attribute_07=>'P52_SERIAL_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83614127423811927)
,p_name=>'DAEventDesc'
,p_event_sequence=>302
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_EVENT_DESC'
,p_condition_element=>'P52_EVENT_DESC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83614302471811929)
,p_event_id=>wwv_flow_imp.id(83614127423811927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_CONSENT_STATUS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN :P52_EVENT_DESC;'
,p_attribute_07=>'P52_EVENT_DESC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83614592047811931)
,p_name=>'DAClear'
,p_event_sequence=>312
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80213128460303108)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83614612007811932)
,p_event_id=>wwv_flow_imp.id(83614592047811931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_SERIAL_NO,P52_ADMISSION_NO,P52_ORDER_KEY,P52_HEALTH_PROFESSIONAL_MRNO,P52_HEALTH_PROFESSIONAL_DATE,P52_WITNESS_MRNO,P52_WITNESS_DATE,P52_INTERPRETER_MRNO,P52_INTERPRETER_DATE,P52_CONSENTER1_NAME,P52_CONSENTER1_RELATION_TO_PATIENT,P52_CONSENTER1_D'
||'ATE,P52_CONSENTER2_NAME,P52_CONSENTER2_RELATION_TO_PATIENT,P52_CONSENTER2_DATE,P52_CONSENT_FORM_NAME,P52_DETAIL_1,P52_DETAIL_2,P52_DETAIL_3,P52_INTERPRETER_NAME,P52_WITNESS_NAME_OTHER_PERSON,P52_CPT_ID,P52_ANY_ADDITIONAL_INFORMATION,P52_ATTENDING_PHY'
||'SICIANS,P52_CONDITION_BEING_TREATED,P52_PROTOCOL,P52_DURATION_OF_TREATMENT,P52_OTHER_PROTOCOL,P52_CPT_DESCRIPTION,P52_P_SERIAL_NO,P52_INTERPRETER_REQUIRED,P52_HEALTH_STATEMENT_REQ,P52_LANGUAGE_ID,P52_SURGICAL_ANESTHESIA,P52_RESP_HEALTH_PRO,P52_TISSUE'
||'_RESEARCH_TEACH,P52_PERSON_OBTAIN_CON_NAME,P52_OBTAINING_CONSENT_DATE,P52_HEALTH_PROFESSIONAL_STAT_ID,P52_MULTIPLE_CPT_ID,P52_CHEMO_LEAFLET_INSTRUCTIONS,P52_ENTERED_BY,P52_ENTERED_DATE,P52_THERAPEUTIC_APHERESIS,P52_PROCEDURE_REST_BY_PATIENT,P52_FORWA'
||'RDED_BY,P52_FORWARDED_DATE,P52_SIGNED_BY,P52_SIGNED_DATE,P52_CPT_ID_HIST,P52_CPT_DESCRIPTION_HIST,P52_MULTIPLE_CPT_ID_HIST,P52_ANY_ADDITIONAL_INFO_HIST,P52_DETAIL_1_HIST,P52_DETAIL_2_HIST,P52_SURGICAL_ANESTHESIA_HIST,P52_ATTENDING_PHYSICIANS_HIST,P52'
||'_PROTOCOL_HIST,P52_CONDITION_BEING_TREATED_HIST,P52_OTHER_PROTOCOL_HIST,P52_DURATION_OF_TREATMENT_HIST,P52_P_SERIAL_NO_HIST,P52_PROCEDURE_REST_BY_PATIENT_HIST,P52_EVENT,P52_FINALIZED,P52_CONSENT_CHANGED,P52_FERTILITY_RISK_ID,P52_FERTILITY_REMARKS,P52'
||'_CANCELLED_BY,P52_CANCELLED_DATE,P52_FERTILITY_RISK_ID_HIST,P52_FERTILITY_REMARKS_HIST,P52_ACTUAL_MRNO,P52_POC_DIGITALLY_SIGNED,P52_WIT_DIGITALLY_SIGNED,P52_PAT_DIGITALLY_SIGNED,P52_PATIENT_CNIC,P52_EMERGENCY_PRINTING,P52_PRINTING_REMARKS,P52_PAT_SIG'
||'N_DATE,P52_POC_SIGN_DATE,P52_E_PRINT_ACKNOWLEDGE,P52_RADIATION_NO,P52_SITE_ID,P52_ACUTE_SIDE_EFFECT,P52_CHRONIC_SIDE_EFFECT,P52_PATIENT_NAME,P52_HEALTH_PROFESSIONAL_NAME,P52_WITNESS_NAME,P52_ATTENDING_PHYSICIANS_NAME,P52_LANGUAGE_DESC,P52_PERSON_OBTA'
||'INING_CONSENT,P52_ENTERED_BY_NAME,P52_FORWARDED_BY_NAME,P52_SIGNED_BY_NAME,P52_EVENT_DESC,P52_CANCELLED_BY_NAME,P52_SITE_DESC,P52_ND_RELATION_WITH_PATIENT,P52_P_DESC,P52_HEALTH_PROFESSIONAL_STATEMENT,P52_GENDER,P52_AGE,P52_CONSENT_STATUS,P52_DISPLAY_'
||'SERIAL_NO,P52_SELECT_REQUEST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83614761820811933)
,p_event_id=>wwv_flow_imp.id(83614592047811931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") && $v("P52_HEALTH_PROFESSIONAL_MRNO") === $v("P52_PERSON_OBTAINING_CONSENT")) {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "001" || $v("P52_EVENT") === "180") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "002") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").enable();',
'} else if ($v("P52_EVENT") === "004") {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") !== ''Y'') {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'} else if ($v("P52_EVENT") === "003" && $v("P52_FINALIZED") === ''Y'') {',
'    apex.item("savebtn").disable();',
'    apex.item("forwardbtn").disable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").disable();',
'    apex.item("sendbackbtn").disable();',
'    apex.item("sendbackhistbtn").disable();',
'    apex.item("cancelbtn").disable();',
'    apex.item("deletebtn").disable();',
'    apex.item("attachdocbtn").disable();',
'} else {',
'    apex.item("savebtn").enable();',
'    apex.item("forwardbtn").enable();',
'    apex.item("signbtn").disable();',
'    apex.item("patsignbtn").enable();',
'    apex.item("sendbackbtn").enable();',
'    apex.item("sendbackhistbtn").enable();',
'    apex.item("cancelbtn").enable();',
'    apex.item("deletebtn").enable();',
'    apex.item("attachdocbtn").enable();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83615533202811941)
,p_event_id=>wwv_flow_imp.id(83614592047811931)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P52_PERSON_OBTAIN_CON_NAME := :GV_USER_MRNO;',
':P52_OBTAINING_CONSENT_DATE := TO_CHAR(SYSDATE, ''DD-MON-YY HH24:MI'');',
':P52_HEALTH_PROFESSIONAL_DATE := TO_CHAR(SYSDATE, ''DD-MON-YY HH24:MI'');',
':P52_CONSENTER1_DATE := TO_CHAR(SYSDATE, ''DD-MON-YY HH24:MI'');'))
,p_attribute_03=>'P52_PERSON_OBTAIN_CON_NAME,P52_OBTAINING_CONSENT_DATE,P52_HEALTH_PROFESSIONAL_DATE,P52_CONSENTER1_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83615385587811939)
,p_name=>'DASiteId'
,p_event_sequence=>322
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SITE_ID'
,p_condition_element=>'P52_SITE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83615426944811940)
,p_event_id=>wwv_flow_imp.id(83615385587811939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DESCRIPTION',
'    INTO :P52_SITE_DESC',
'    FROM RADIATION.SITE',
'   WHERE SITE_ID = :P52_SITE_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_SITE_ID'
,p_attribute_03=>'P52_SITE_DESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83615691780811942)
,p_name=>'DAWitnessMrno'
,p_event_sequence=>332
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_WITNESS_MRNO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' ||',
'(this.browserEvent.originalEvent.key === ''Enter'' || this.browserEvent.originalEvent.key === ''Tab'')',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83615761198811943)
,p_event_id=>wwv_flow_imp.id(83615691780811942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'BEGIN',
'  HRD.SET_MRNO(P_TYPE       => ''EMPLOYEE'',',
'               P_DISP_MRNO  => :P52_WITNESS_MRNO,',
'               P_MRNO       => :P52_WITNESS_MRNO,',
'               P_ALERT_TEXT => L_ALERT_TEXT,',
'               P_STOP       => L_STOP);',
'',
'  :P52_WITNESS_NAME_OTHER_PERSON := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P52_WITNESS_MRNO);',
'  :P52_WITNESS_DATE              := TO_CHAR(SYSDATE, ''DD-MON-YY HH24:MI'');',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_FINALIZED,P52_WITNESS_MRNO'
,p_attribute_03=>'P52_WITNESS_MRNO,P52_WITNESS_NAME_OTHER_PERSON,P52_WITNESS_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83616287837811948)
,p_name=>'DARadiationNo'
,p_event_sequence=>342
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_RADIATION_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83616120725811947)
,p_event_id=>wwv_flow_imp.id(83616287837811948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(M.DOCTOR_ID)',
'    INTO :P52_HEALTH_PROFESSIONAL_MRNO',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE M.RADIATION_NO = :P52_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'BEGIN',
'  SELECT HIS.PKG_PATIENT.GET_PATIENT_NAME(HIS.PKG_DOCTOR.GET_DOCTOR_MRNO(M.DOCTOR_ID))',
'    INTO :P52_HEALTH_PROFESSIONAL_NAME',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE M.RADIATION_NO = :P52_RADIATION_NO;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_RADIATION_NO'
,p_attribute_03=>'P52_HEALTH_PROFESSIONAL_MRNO,P52_HEALTH_PROFESSIONAL_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83616463838811950)
,p_name=>'DASelectRequest'
,p_event_sequence=>352
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SELECT_REQUEST'
,p_condition_element=>'P52_SELECT_REQUEST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278415391819867007)
,p_event_id=>wwv_flow_imp.id(83616463838811950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_DISPLAY_SERIAL_NO,P52_SITE_DESC,P52_RADIATION_NO,P52_ACUTE_SIDE_EFFECT,P52_CHRONIC_SIDE_EFFECT,P52_SURGICAL_ANESTHESIA,P52_CONSENTER1_NAME,P52_PERSON_OBTAINING_CONSENT,P52_CONSENTER1_RELATION_TO_PATIENT,P52_PATIENT_CNIC,P52_OBTAINING_CONSENT_DATE'
||',P52_CONSENTER1_DATE,P52_HEALTH_PROFESSIONAL_NAME,P52_INTERPRETER_REQUIRED,P52_HEALTH_PROFESSIONAL_DATE,P52_INTERPRETER_NAME,P52_INTERPRETER_DATE,P52_WITNESS_MRNO,P52_WITNESS_NAME_OTHER_PERSON,P52_WITNESS_DATE,P52_EMERGENCY_PRINTING,P52_PRINTING_REMA'
||'RKS,P52_CANCELLED_BY_NAME,P52_CANCELLED_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86791470768682102)
,p_event_id=>wwv_flow_imp.id(83616463838811950)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_AUTHORIZED_USER_TO_CONSENT NUMBER := 0;',
'',
'BEGIN',
'  :P52_OBTAINING_CONSENT_DATE         := TO_CHAR(SYSDATE,',
'                                                 ''DD-MON-YY HH24:MI'');',
'  :P52_HEALTH_PROFESSIONAL_DATE       := TO_CHAR(SYSDATE,',
'                                                 ''DD-MON-YY HH24:MI'');',
'  :P52_CONSENTER1_DATE                := TO_CHAR(SYSDATE,',
'                                                 ''DD-MON-YY HH24:MI'');',
'  :P52_CONSENTER1_RELATION_TO_PATIENT := ''001001'';',
'  :P52_INTERPRETER_REQUIRED           := ''N'';',
'  :P52_PERSON_OBTAINING_CONSENT       := :GV_USER_MRNO;',
'',
'  BEGIN',
'    SELECT COUNT(1)',
'      INTO L_AUTHORIZED_USER_TO_CONSENT',
'      FROM DEFINITIONS.DOCTOR',
'     WHERE ACTIVE IN (''H'', ''Y'', ''Z'')',
'       AND DOCTOR_MRNO = :GV_USER_MRNO;',
'  ',
'  EXCEPTION',
'  ',
'    WHEN OTHERS THEN',
'      NULL;',
'    ',
'  END;',
'',
'  IF L_AUTHORIZED_USER_TO_CONSENT > 0 THEN',
'    :P52_IS_OBTAIN_CONSENT_IS_DOCTOR := :GV_USER_MRNO;',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'GV_USER_MRNO'
,p_attribute_03=>'P52_PERSON_OBTAIN_CON_NAME,P52_OBTAINING_CONSENT_DATE,P52_HEALTH_PROFESSIONAL_DATE,P52_CONSENTER1_DATE,P52_CONSENTER1_RELATION_TO_PATIENT,P52_INTERPRETER_REQUIRED,P52_PERSON_OBTAINING_CONSENT,P52_IS_OBTAIN_CONSENT_IS_DOCTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163107375020207136)
,p_event_id=>wwv_flow_imp.id(83616463838811950)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_PERSON_OBTAINING_CONSENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(86792438030682112)
,p_name=>'SetAcuteAndChronicSideEffects'
,p_event_sequence=>362
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_ACUTE_SIDE_EFFECT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(86792536545682113)
,p_event_id=>wwv_flow_imp.id(86792438030682112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT SE.ACUTE, SE.CHRONIC',
'    INTO :P52_ACUTE_SIDE_EFFECT, :P52_CHRONIC_SIDE_EFFECT',
'    FROM RADIATION.SIDE_EFFECTS SE',
'    JOIN RADIATION.SITE S',
'      ON SE.PARENT_SITE_ID = S.PARENT_SITE_ID',
'    JOIN RADIATION.PARENT_SITE PS',
'      ON S.PARENT_SITE_ID = PS.PARENT_SITE_ID',
'   WHERE S.SITE_ID = :P52_SITE_ID',
'     AND SE.RADIOTHERAPY_TYPE = RADIATION.PKG_RADIATION.GET_RADIOTHERAPY_TYPE(P_RADIATION_NO => :P52_RADIATION_NO)',
'     AND SE.ACTIVE = ''Y'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P52_RADIATION_NO,P52_SITE_ID'
,p_attribute_03=>'P52_ACUTE_SIDE_EFFECT,P52_CHRONIC_SIDE_EFFECT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163106159568207124)
,p_name=>'DAInterpreterName'
,p_event_sequence=>372
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_INTERPRETER_NAME'
,p_condition_element=>'P52_INTERPRETER_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163106252724207125)
,p_event_id=>wwv_flow_imp.id(163106159568207124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_INTERPRETER_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'RETURN TO_CHAR(SYSDATE, ''DD-MON-YY HH24:MI'');'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163106674659207129)
,p_name=>'DASetNIC'
,p_event_sequence=>382
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_PATIENT_CNIC'
,p_condition_element=>'P52_PATIENT_CNIC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163106725251207130)
,p_event_id=>wwv_flow_imp.id(163106674659207129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Function to mask the CNIC input',
'function maskInput() {',
'    const inputElement = document.getElementById(''P52_PATIENT_CNIC''); // Get the input element',
'    if (!inputElement) return; // Ensure the element exists',
'',
'    let value = inputElement.value.replace(/\D/g, ''''); // Remove non-digit characters',
'',
'    if (value.length > 17) {',
'        value = value.substring(0, 17); // Limit to 17 digits',
'    }',
'',
'    // Apply the mask format: 99999-9999999-9',
'    let maskedValue = '''';',
'    if (value.length > 0) {',
'        maskedValue += value.substring(0, 5); // First 5 digits',
'    }',
'    if (value.length > 5) {',
'        maskedValue += ''-'' + value.substring(5, 12); // Next 7 digits',
'    }',
'    if (value.length > 12) {',
'        maskedValue += ''-'' + value.substring(12, 13); // Last digit',
'    }',
'',
'    inputElement.value = maskedValue; // Update the input element with the masked value',
'}',
'',
'// Example usage: Call the maskInput function when needed',
'maskInput(); // You can call this function when you want to mask the CNIC',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163108650640207149)
,p_name=>'DASelectRequest1'
,p_event_sequence=>392
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SELECT_REQUEST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168540658557880902)
,p_event_id=>wwv_flow_imp.id(163108650640207149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163107866720207141)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearPageItem '
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P52_PERSON_OBTAINING_CONSENT'
,p_internal_uid=>163107866720207141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83613264351811918)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOFromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P52_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>83613264351811918
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75181379392765328)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(75181108027765326)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'InitializeFormRadiationConsent'
,p_internal_uid=>75181379392765328
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82247935273960220)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMLRadiationConsent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  -- Declare variables',
'  L_TAB_CONSENT_FORM RADIATION.PKG_S18APX00072.TAB_CONSENT_FORM;',
'  L_STATUS           VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'  L_STOP             CHAR(1) := ''N''; ',
'  L_ALERT_TEXT       VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  SELECT :P52_SERIAL_NO AS SERIAL_NO,',
'         :P52_MRNO AS MRNO,',
'         :P52_ADMISSION_NO AS ADMISSION_NO,',
'         :P52_ORDER_KEY AS ORDER_KEY,',
'         :P52_HEALTH_PROFESSIONAL_MRNO AS HEALTH_PROFESSIONAL_MRNO,',
'         TO_DATE(:P52_HEALTH_PROFESSIONAL_DATE, ''DD-MON-YY HH24:MI'') AS HEALTH_PROFESSIONAL_DATE, ',
'         :P52_WITNESS_MRNO AS WITNESS_MRNO,',
'         TO_DATE(:P52_WITNESS_DATE, ''DD-MON-YY HH24:MI'') AS WITNESS_DATE,',
'         :P52_INTERPRETER_MRNO AS INTERPRETER_MRNO,',
'         TO_DATE(:P52_INTERPRETER_DATE, ''DD-MON-YY HH24:MI'') AS INTERPRETER_DATE,',
'         :P52_CONSENTER1_NAME AS CONSENTER1_NAME,',
'         :P52_CONSENTER1_RELATION_TO_PATIENT AS CONSENTER1_RELATION_TO_PATIENT,',
'         TO_DATE(:P52_CONSENTER1_DATE, ''DD-MON-YY HH24:MI'') AS CONSENTER1_DATE,',
'         :P52_CONSENTER2_NAME AS CONSENTER2_NAME,',
'         :P52_CONSENTER2_RELATION_TO_PATIENT AS CONSENTER2_RELATION_TO_PATIENT,',
'         TO_DATE(:P52_CONSENTER2_DATE, ''DD-MON-YY HH24:MI'') AS CONSENTER2_DATE,',
'         NVL(:P52_CONSENT_FORM_NAME, ''X'') AS CONSENT_FORM_NAME,',
'         :P52_DETAIL_1 AS DETAIL_1,',
'         :P52_DETAIL_2 AS DETAIL_2,',
'         :P52_DETAIL_3 AS DETAIL_3,',
'         :P52_INTERPRETER_NAME AS INTERPRETER_NAME,',
'         :P52_WITNESS_NAME_OTHER_PERSON AS WITNESS_NAME_OTHER_PERSON,',
'         :P52_CPT_ID AS CPT_ID,',
'         :P52_ANY_ADDITIONAL_INFORMATION AS ANY_ADDITIONAL_INFORMATION,',
'         :P52_ATTENDING_PHYSICIANS AS ATTENDING_PHYSICIANS,',
'         :P52_CONDITION_BEING_TREATED AS CONDITION_BEING_TREATED,',
'         :P52_PROTOCOL AS PROTOCOL,',
'         :P52_DURATION_OF_TREATMENT AS DURATION_OF_TREATMENT,',
'         :P52_OTHER_PROTOCOL AS OTHER_PROTOCOL,',
'         :P52_CPT_DESCRIPTION AS CPT_DESCRIPTION,',
'         :P52_P_SERIAL_NO AS P_SERIAL_NO,',
'         :P52_INTERPRETER_REQUIRED AS INTERPRETER_REQUIRED,',
'         :P52_HEALTH_STATEMENT_REQ AS HEALTH_STATEMENT_REQ,',
'         :P52_LANGUAGE_ID AS LANGUAGE_ID,',
'         :P52_SURGICAL_ANESTHESIA AS SURGICAL_ANESTHESIA,',
'         :P52_RESP_HEALTH_PRO AS RESP_HEALTH_PRO,',
'         :P52_TISSUE_RESEARCH_TEACH AS TISSUE_RESEARCH_TEACH,',
'         NVL(:P52_PERSON_OBTAINING_CONSENT, :P52_IS_OBTAIN_CONSENT_IS_DOCTOR) AS PERSON_OBTAINING_CONSENT,',
'         TO_DATE(:P52_OBTAINING_CONSENT_DATE, ''DD-MON-YY HH24:MI'') AS OBTAINING_CONSENT_DATE,',
'         :P52_HEALTH_PROFESSIONAL_STAT_ID AS HEALTH_PROFESSIONAL_STAT_ID,',
'         :P52_MULTIPLE_CPT_ID AS MULTIPLE_CPT_ID,',
'         :P52_CHEMO_LEAFLET_INSTRUCTIONS AS CHEMO_LEAFLET_INSTRUCTIONS,',
'         :P52_ENTERED_BY AS ENTERED_BY,',
'         NVL(TO_DATE(:P52_ENTERED_DATE, ''DD-MON-YY HH24:MI''), SYSDATE) AS ENTERED_DATE,',
'         :P52_THERAPEUTIC_APHERESIS AS THERAPEUTIC_APHERESIS,',
'         :P52_PROCEDURE_REST_BY_PATIENT AS PROCEDURE_REST_BY_PATIENT,',
'         :P52_FORWARDED_BY AS FORWARDED_BY,',
'         TO_DATE(:P52_FORWARDED_DATE, ''DD-MON-YY HH24:MI'') AS FORWARDED_DATE,',
'         :P52_SIGNED_BY AS SIGNED_BY,',
'         TO_DATE(:P52_SIGNED_DATE, ''DD-MON-YY HH24:MI'') AS SIGNED_DATE,',
'         :P52_CPT_ID_HIST AS CPT_ID_HIST,',
'         :P52_CPT_DESCRIPTION_HIST AS CPT_DESCRIPTION_HIST,',
'         :P52_MULTIPLE_CPT_ID_HIST AS MULTIPLE_CPT_ID_HIST,',
'         :P52_ANY_ADDITIONAL_INFO_HIST AS ANY_ADDITIONAL_INFO_HIST,',
'         :P52_DETAIL_1_HIST AS DETAIL_1_HIST,',
'         :P52_DETAIL_2_HIST AS DETAIL_2_HIST,',
'         :P52_SURGICAL_ANESTHESIA_HIST AS SURGICAL_ANESTHESIA_HIST,',
'         :P52_ATTENDING_PHYSICIANS_HIST AS ATTENDING_PHYSICIANS_HIST,',
'         :P52_PROTOCOL_HIST AS PROTOCOL_HIST,',
'         :P52_CONDITION_BEING_TREATED_HIST AS CONDITION_BEING_TREATED_HIST,',
'         :P52_OTHER_PROTOCOL_HIST AS OTHER_PROTOCOL_HIST,',
'         :P52_DURATION_OF_TREATMENT_HIST AS DURATION_OF_TREATMENT_HIST,',
'         :P52_P_SERIAL_NO_HIST AS P_SERIAL_NO_HIST,',
'         :P52_PROCEDURE_REST_BY_PATIENT_HIST AS PROCEDURE_REST_BY_PATIENT_HIST,',
'         :P52_EVENT AS EVENT,',
'         :P52_FINALIZED AS FINALIZED,',
'         :P52_CONSENT_CHANGED AS CONSENT_CHANGED,',
'         :P52_FERTILITY_RISK_ID AS FERTILITY_RISK_ID,',
'         :P52_FERTILITY_REMARKS AS FERTILITY_REMARKS,',
'         :P52_CANCELLED_BY AS CANCELLED_BY,',
'         TO_DATE(:P52_CANCELLED_DATE, ''DD-MON-YY HH24:MI'') AS CANCELLED_DATE,',
'         :P52_FERTILITY_RISK_ID_HIST AS FERTILITY_RISK_ID_HIST,',
'         :P52_FERTILITY_REMARKS_HIST AS FERTILITY_REMARKS_HIST,',
'         :P52_ACTUAL_MRNO AS ACTUAL_MRNO,',
'         :P52_POC_DIGITALLY_SIGNED AS POC_DIGITALLY_SIGNED,',
'         :P52_WIT_DIGITALLY_SIGNED AS WIT_DIGITALLY_SIGNED,',
'         :P52_PAT_DIGITALLY_SIGNED AS PAT_DIGITALLY_SIGNED,',
'         :P52_PATIENT_CNIC AS PATIENT_CNIC,',
'         :P52_EMERGENCY_PRINTING AS EMERGENCY_PRINTING,',
'         :P52_PRINTING_REMARKS AS PRINTING_REMARKS,',
'         TO_DATE(:P52_PAT_SIGN_DATE, ''DD-MON-YY HH24:MI'') AS PAT_SIGN_DATE,',
'         TO_DATE(:P52_POC_SIGN_DATE, ''DD-MON-YY HH24:MI'') AS POC_SIGN_DATE,',
'         :P52_E_PRINT_ACKNOWLEDGE AS E_PRINT_ACKNOWLEDGE,',
'         :P52_RADIATION_NO AS RADIATION_NO,',
'         :P52_SITE_ID AS SITE_ID,',
'         :P52_ACUTE_SIDE_EFFECT AS ACUTE_SIDE_EFFECT,',
'         :P52_CHRONIC_SIDE_EFFECT AS CHRONIC_SIDE_EFFECT,',
'         :P52_PATIENT_NAME AS PATIENT_NAME,',
'         :P52_HEALTH_PROFESSIONAL_NAME AS HEALTH_PROFESSIONAL_NAME,',
'         :P52_WITNESS_NAME AS WITNESS_NAME,',
'         :P52_ATTENDING_PHYSICIANS_NAME AS ATTENDING_PHYSICIANS_NAME,',
'         :P52_LANGUAGE_DESC AS LANGUAGE_DESC,',
'         :P52_PERSON_OBTAIN_CON_NAME AS PERSON_OBTAIN_CON_NAME,',
'         :P52_ENTERED_BY_NAME AS ENTERED_BY_NAME,',
'         :P52_FORWARDED_BY_NAME AS FORWARDED_BY_NAME,',
'         :P52_SIGNED_BY_NAME AS SIGNED_BY_NAME,',
'         :P52_EVENT_DESC AS EVENT_DESC,',
'         :P52_CANCELLED_BY_NAME AS CANCELLED_BY_NAME,',
'         :P52_SITE_DESC AS SITE_DESC,',
'         :P52_ND_RELATION_WITH_PATIENT AS ND_RELATION_WITH_PATIENT,',
'         :P52_P_DESC AS P_DESC,',
'         :P52_HEALTH_PROFESSIONAL_STATEMENT AS HEALTH_PROFESSIONAL_STATEMENT,',
'         --:P52_GENDER AS GENDER,',
'         NULL AS GENDER, ',
'         --:P52_AGE AS AGE',
'         NULL AS AGE',
'    BULK COLLECT',
'    INTO L_TAB_CONSENT_FORM',
'    FROM DUAL;',
'',
'',
'  IF L_STATUS = ''INSERT'' THEN',
'    RADIATION.PKG_S18APX00072.INSERT_TREATMENT_CONSENT(L_TAB_CONSENT_FORM);',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    RADIATION.PKG_S18APX00072.UPDATE_TREATMENT_CONSENT(L_TAB_CONSENT_FORM);',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    RADIATION.PKG_S18APX00072.DELETE_TREATMENT_CONSENT(L_TAB_CONSENT_FORM);',
'  ELSE',
'    RAISE_APPLICATION_ERROR(-20001, ''Invalid operation: '' || L_STATUS);',
'  END IF;',
'',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  IF L_STATUS = ''INSERT'' THEN',
'    APEX_JSON.WRITE(''response'', ''Radiation Consent created successfully.'');',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    APEX_JSON.WRITE(''response'', ''Radiation Consent updated successfully.'');',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    APEX_JSON.WRITE(''response'', ''Radiation Consent deleted successfully.'');',
'  END IF;',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    --L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>82247935273960220
);
wwv_flow_imp.component_end;
end;
/

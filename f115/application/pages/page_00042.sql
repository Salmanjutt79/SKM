prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'test-perf'
,p_alias=>'TEST-PERF'
,p_step_title=>'test-perf'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function callmyfunction(rad,site,iso,fr){',
'    $(window).trigger(''PERFORM-BTN'',{radiation_no:rad,site_id:site,isocenter_id:iso,fraction_no:fr});',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20230913095822'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13793951312235708)
,p_plug_name=>'Radiation Plan Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>36
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.ROWID,',
'       M.RADIATION_NO,',
'       M.RADIATION_DATE,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'       RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'       HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'       M.DOCTOR_ID,',
'       RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'       RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'       SITE_ID,',
'       RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DISP_SITE,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                                       P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                                       P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'       RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                                       P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'       D.POSITION_INSTRUCTION,',
'       RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => D.RADIATION_NO,',
'                                                       P_SITE_ID      => D.SITE_ID,',
'                                                       P_WFE_NO       => D.WFE_NO) EVENT_DESC',
'  FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
' WHERE M.RADIATION_NO = D.RADIATION_NO',
'   AND M.RADIATION_NO = NVL(:P0_RADIATION_NO_GLOBAL, M.RADIATION_NO)',
'   AND M.MRNO LIKE CASE',
'         WHEN :P0_MRNO_GLOBAL IS NOT NULL THEN',
'          ''%'' || :P0_MRNO_GLOBAL',
'         ELSE',
'          M.MRNO',
'       END',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'      /*  AND (P_SR_NO IS NULL OR',
'      D.SITE_ID =',
'      (SELECT SITE_ID FROM RADIATION.SCHEDULE WHERE SR_NO = P_SR_NO))*/',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY RADIATION_DATE DESC',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13795848776235727)
,p_plug_name=>'Radiation Performance '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>46
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT RADIATION_NO,',
'            SITE_ID,',
'            FRACTION_ID,',
'            ENTRY_DATE,',
'            MACHINE_ID,',
'            FRACTION_DATE,',
'            DOSE_FRACTION,',
'            PERFORMED_DOSE,',
'            SCHEDULE_SRNO,',
'            OC_SERIAL_NO,',
'            HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY1) FIRST_CT_SIGN_NAME,',
'            HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY2) SECOND_CT_SIGN_NAME,',
'            SIGN_DATE,',
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
'      WHERE RADIATION_NO = :P42_RADIATION_NO',
'        AND SITE_ID = :P42_SITE_ID',
'     --AND FRACTION_ID = P_FRACTION_ID;',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16038473321182608)
,p_name=>'Fraction History'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>86
,p_region_css_classes=>'highlight appt-list rad-custom-card'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT S.RADIATION_NO,',
'             S.SITE_ID,',
'             S.FRACTION_Id,',
'             S.VISIT_DATE FRACTION_DATE,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(''020'') STATUS,',
'             0',
'        FROM RADIATION.SCHEDULE S',
'       WHERE S.RADIATION_NO = ''SKM001190000769''',
'       /*S.SR_NO = P_SR_NO',
'         AND*/ AND NOT EXISTS (SELECT 1',
'                FROM RADIATION.RAD_PERFORMANCE RP',
'               WHERE RP.RADIATION_NO = S.RADIATION_NO',
'                 AND RP.SITE_ID = S.SITE_ID',
'                 AND RP.FRACTION_ID = S.FRACTION_ID)',
'      UNION ALL',
'      SELECT RP.RADIATION_NO,',
'             RP.SITE_ID,',
'             RP.FRACTION_ID,',
'             RP.FRACTION_DATE,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(RP.STATUS_ID),',
'             CASE',
'               WHEN RP.STATUS_ID = ''015'' THEN',
'                RP.PERFORMED_DOSE',
'               ELSE',
'                0',
'             END',
'        FROM RADIATION.RAD_PERFORMANCE RP',
'       WHERE RP.RADIATION_NO = ''SKM001190000769''--:P42_RADIATION_NO_1',
'         AND RP.SITE_ID = ''0010000013''--:P42_STATUS_ID'))
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
 p_id=>wwv_flow_imp.id(10455354835082509)
,p_query_column_id=>1
,p_column_alias=>'RADIATION_NO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10455720053082510)
,p_query_column_id=>2
,p_column_alias=>'SITE_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10456146582082510)
,p_query_column_id=>3
,p_column_alias=>'FRACTION_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Fraction Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10456531755082513)
,p_query_column_id=>4
,p_column_alias=>'FRACTION_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Fraction Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10456956868082513)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10457360889082513)
,p_query_column_id=>6
,p_column_alias=>'0'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16040709749182630)
,p_plug_name=>'Sign'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16041312572182636)
,p_plug_name=>'Sign'
,p_parent_plug_id=>wwv_flow_imp.id(16040709749182630)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_source_type=>'PLUGIN_SKM.REGION.DOUBLE_SIGN'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19174075566223442)
,p_name=>'ISO Center'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>56
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'             ''javascript:callmyfunction("''||PI.RADIATION_NO||''","''||PI.SITE_ID||''","''||PI.ISOCENTER_ID||''",''||P.FRACTION_ID||'')'' Perform,',
'             PI.ROWID',
'        FROM RADIATION.RAD_PERFORMANCE           P,',
'             RADIATION.RAD_PERFORMANCE_ISOCENTER PI',
'       WHERE P.RADIATION_NO = ''SKM001200000075''--:P42_RADIATION_NO',
'         AND P.SITE_ID = ''0010000197''--:P42_SITE_ID',
'         AND P.FRACTION_ID in (''1.01'', ''1.02'')--:P42_FRACTION_ID',
'         AND P.RADIATION_NO = PI.RADIATION_NO',
'         AND P.SITE_ID = PI.SITE_ID',
'         AND P.FRACTION_ID = PI.FRACTION_ID',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P42_RADIATION_NO_ND,P42_SITE_ID,P42_FRACTION_ID'
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
 p_id=>wwv_flow_imp.id(10486652932082536)
,p_query_column_id=>1
,p_column_alias=>'RADIATION_NO'
,p_column_display_sequence=>10
,p_column_heading=>'Radiation No'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10487045385082536)
,p_query_column_id=>2
,p_column_alias=>'SITE_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Site Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10487480704082537)
,p_query_column_id=>3
,p_column_alias=>'FRACTION_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Fraction Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10487872859082537)
,p_query_column_id=>4
,p_column_alias=>'PHY_PLAN_ID'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10488207603082537)
,p_query_column_id=>5
,p_column_alias=>'PHASE_NO'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10488648140082538)
,p_query_column_id=>6
,p_column_alias=>'ISOCENTER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10489066784082538)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10489420054082538)
,p_query_column_id=>8
,p_column_alias=>'DOSE_FRACTION'
,p_column_display_sequence=>4
,p_column_heading=>'Dose Fraction'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10489875978082538)
,p_query_column_id=>9
,p_column_alias=>'TREATMENT_TYPE_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Treatment Type '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10490277082082538)
,p_query_column_id=>10
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10490624292082539)
,p_query_column_id=>11
,p_column_alias=>'STATUS_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'Status '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10491077539082539)
,p_query_column_id=>12
,p_column_alias=>'PERFORMED_BY_NAME'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10491481350082539)
,p_query_column_id=>13
,p_column_alias=>'PERFORMED_DATE'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10491874084082539)
,p_query_column_id=>14
,p_column_alias=>'PERFORM'
,p_column_display_sequence=>6
,p_column_heading=>'Perform'
,p_use_as_row_header=>'N'
,p_column_link=>'#PERFORM#'
,p_column_linktext=>'PERFORM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10492200650082540)
,p_query_column_id=>15
,p_column_alias=>'ROWID'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19205919414248542)
,p_name=>'Fields'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>66
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT RADIATION_NO,',
'             SITE_ID,',
'             PHY_PLAN_ID,',
'             ISOCENTER_ID,',
'             FIELD_NO,',
'             DESCRIPTION,',
'             ENERGY_ID,',
'             RADIATION.PKG_RADIATION.GET_ENERGY_DESC(P_ENERGY_ID => ENERGY_ID) AS ENERGY_DESC,',
'             GANTARY_ANGLE,',
'             SSD,',
'             M_U',
'        FROM RADIATION.RAD_PHYSICS_FIELDS RPF --for update ',
'       WHERE RPF.RADIATION_NO = ''SKM001200000075''--for update  --P_RADIATION_NO',
'         AND RPF.SITE_ID = ''0010000197''--P_SITE_ID',
'        -- AND RPF.PHY_PLAN_ID = P_PHY_PLAN_ID',
'        -- AND RPF.ISOCENTER_ID = P_ISOCENTER_ID'))
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
 p_id=>wwv_flow_imp.id(10450119435082503)
,p_query_column_id=>1
,p_column_alias=>'RADIATION_NO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10450547287082504)
,p_query_column_id=>2
,p_column_alias=>'SITE_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10450917020082504)
,p_query_column_id=>3
,p_column_alias=>'PHY_PLAN_ID'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10451339181082504)
,p_query_column_id=>4
,p_column_alias=>'ISOCENTER_ID'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10451779585082505)
,p_query_column_id=>5
,p_column_alias=>'FIELD_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Field No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10452115509082506)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10452528619082506)
,p_query_column_id=>7
,p_column_alias=>'ENERGY_ID'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10452900930082506)
,p_query_column_id=>8
,p_column_alias=>'ENERGY_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Energy '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10453350398082507)
,p_query_column_id=>9
,p_column_alias=>'GANTARY_ANGLE'
,p_column_display_sequence=>4
,p_column_heading=>'Gantary '
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10453795185082507)
,p_query_column_id=>10
,p_column_alias=>'SSD'
,p_column_display_sequence=>5
,p_column_heading=>'SSD'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10454177646082507)
,p_query_column_id=>11
,p_column_alias=>'M_U'
,p_column_display_sequence=>6
,p_column_heading=>'M.U'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19838235999333508)
,p_name=>'Radiation Accessories'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>67
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION_NO,',
'       SITE_ID,',
'       SRNO,',
'       PHASE_NO,',
'       ACCESSORY_ID,',
'       RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID),',
'       REMARKS,',
'       STATUS_ID,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => RA.STATUS_ID)',
'  FROM RADIATION.RAD_ACCESSORIES RA',
' WHERE RA.RADIATION_NO = ''SKM001200000007'' --P_RADIATION_NO',
'   AND RA.SITE_ID = ''0010000006'' --P_SITE_ID',
'   AND RA.TRANS_TYPE = ''CT''',
''))
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
 p_id=>wwv_flow_imp.id(10493452393082541)
,p_query_column_id=>1
,p_column_alias=>'RADIATION_NO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10493870201082541)
,p_query_column_id=>2
,p_column_alias=>'SITE_ID'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10494265404082542)
,p_query_column_id=>3
,p_column_alias=>'SRNO'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10494637241082542)
,p_query_column_id=>4
,p_column_alias=>'PHASE_NO'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10495097853082542)
,p_query_column_id=>5
,p_column_alias=>'ACCESSORY_ID'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10493003641082541)
,p_query_column_id=>6
,p_column_alias=>'RADIATION.PKG_RADIATION.GET_ACCESSORY_DESC(RA.ACCESSORY_ID)'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10495442657082542)
,p_query_column_id=>7
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>2
,p_column_heading=>'Instruction'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10495868273082542)
,p_query_column_id=>8
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10496281991082542)
,p_query_column_id=>9
,p_column_alias=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497014804082545)
,p_button_sequence=>96
,p_button_name=>'Sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497880654082546)
,p_button_sequence=>106
,p_button_name=>'Create'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10497473192082546)
,p_button_sequence=>116
,p_button_name=>'Dispose'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10498109717082546)
,p_button_sequence=>126
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13802848434235726)
,p_name=>'P42_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13802929462235727)
,p_name=>'P42_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803047508235728)
,p_name=>'P42_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803178994235729)
,p_name=>'P42_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803265682235730)
,p_name=>'P42_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803290847235731)
,p_name=>'P42_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803463137235732)
,p_name=>'P42_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803496333235733)
,p_name=>'P42_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803614208235734)
,p_name=>'P42_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803738655235735)
,p_name=>'P42_SITE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803882653235736)
,p_name=>'P42_DISP_SITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'DISP_SITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13803936227235737)
,p_name=>'P42_SETUP_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_prompt=>'Setup Position '
,p_source=>'SETUP_POSITION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(13804067902235738)
,p_name=>'P42_ARM_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_prompt=>'Arm Position '
,p_source=>'ARM_POSITION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13804127891235739)
,p_name=>'P42_NECK_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_prompt=>'Neck Position '
,p_source=>'NECK_POSITION_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13804263836235740)
,p_name=>'P42_POSITION_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_prompt=>'Position Instruction'
,p_source=>'POSITION_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13804291039235741)
,p_name=>'P42_EVENT_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_prompt=>'Event'
,p_source=>'EVENT_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13804441114235742)
,p_name=>'P42_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_item_source_plug_id=>wwv_flow_imp.id(13793951312235708)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815668606235753)
,p_name=>'P42_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815819434235754)
,p_name=>'P42_SITE_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815931139235755)
,p_name=>'P42_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Fraction Id'
,p_source=>'FRACTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13815957163235756)
,p_name=>'P42_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816108700235757)
,p_name=>'P42_MACHINE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'MACHINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816214544235758)
,p_name=>'P42_FRACTION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Fraction Date'
,p_source=>'FRACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816310022235759)
,p_name=>'P42_DOSE_FRACTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Planned Dose'
,p_source=>'DOSE_FRACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816427998235760)
,p_name=>'P42_PERFORMED_DOSE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Performed Dose'
,p_source=>'PERFORMED_DOSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816554706235761)
,p_name=>'P42_SCHEDULE_SRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'SRNO'
,p_source=>'SCHEDULE_SRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816603174235762)
,p_name=>'P42_OC_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Order Key'
,p_source=>'OC_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>14
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816885990235765)
,p_name=>'P42_SIGN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Sign Date'
,p_source=>'SIGN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13816959745235766)
,p_name=>'P42_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817226111235768)
,p_name=>'P42_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817296528235769)
,p_name=>'P42_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Plan Id'
,p_source=>'PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817439025235770)
,p_name=>'P42_PHY_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Physics Plan Id'
,p_source=>'PHY_PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817479439235771)
,p_name=>'P42_SIMULATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'SIMULATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817622267235772)
,p_name=>'P42_PLAN_CHECK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'PLAN_CHECK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817754299235773)
,p_name=>'P42_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13817775850235774)
,p_name=>'P42_SPECIAL_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'SPECIAL_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16057433870182625)
,p_name=>'P42_MACHINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Machine'
,p_source=>'MACHINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16057526160182626)
,p_name=>'P42_PLAN_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Plan Remarks'
,p_source=>'PLAN_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16057588420182627)
,p_name=>'P42_PHYSICIST_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Physicist Remarks'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16057693711182628)
,p_name=>'P42_FIRST_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'First Technician'
,p_source=>'FIRST_CT_SIGN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16057839904182629)
,p_name=>'P42_SECOND_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Second Technician'
,p_source=>'SECOND_CT_SIGN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16057856852182630)
,p_name=>'P42_STATUS_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_prompt=>'Status'
,p_source=>'STATUS_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16058042978182631)
,p_name=>'P42_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_item_source_plug_id=>wwv_flow_imp.id(13795848776235727)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16077144872182669)
,p_name=>'P42_SIGN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16040709749182630)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19886993720333550)
,p_name=>'P42_RADIATION_NO_ND'
,p_item_sequence=>136
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(19887021133333551)
,p_name=>'P42_SITE_ID_ND'
,p_item_sequence=>146
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(19887190020333552)
,p_name=>'P42_FRACTION_NO_ND'
,p_item_sequence=>156
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(19887278330333553)
,p_name=>'P42_ISOCENTER_ID_ND'
,p_item_sequence=>166
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10501123700082549)
,p_name=>'Sign'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16041312572182636)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_SKM.REGION.SIGN|REGION TYPE|onsign'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10503682771082550)
,p_event_id=>wwv_flow_imp.id(10501123700082549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let a = this.data.signBy;',
'apex.item("P42_SIGN").setValue(a);',
'alert(a);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10502136331082549)
,p_event_id=>wwv_flow_imp.id(10501123700082549)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P42_SIGN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10501613823082549)
,p_event_id=>wwv_flow_imp.id(10501123700082549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'',
'  IF :P0_RADIATION_NO IS NULL THEN',
'    L_ALERT_TEXT := ''Radiation Number is not provided to sign procedure, cannot proceed.'';',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  BEGIN',
'    -- Call to Sign Procedure',
'    RADIATION.PKG_S18FRM00145.SIGN_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P42_RADIATION_NO,',
'                                               P_SITE_ID           => :P42_SITE_ID,',
'                                               P_FRACTION_ID       => :P42_FRACTION_ID,',
'                                               P_SCHEDULE_SRNO     => :P42_SCHEDULE_SRNO,',
'                                               P_SCHEDULE_EVENT_ID => NULL, --:P42_SCHEDULE_EVENT_ID,',
'                                               P_FIRST_TECH        => NULL, --:LOGIN.MRNO1,',
'                                               P_SECOND_TECH       => NULL, --:LOGIN.MRNO2,',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_OBJECT_CODE       => ''S18FRM00145'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'  ',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      RAISE EX_CUSTOM;',
'    ELSE',
'      COMMIT;',
'    END IF;',
'  END;',
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
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10502679440082549)
,p_event_id=>wwv_flow_imp.id(10501123700082549)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Performance Signed Properly" );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10503162457082549)
,p_event_id=>wwv_flow_imp.id(10501123700082549)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'location.reload();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10500255052082548)
,p_name=>'OpenSignPlugin'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10497014804082545)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10500741064082548)
,p_event_id=>wwv_flow_imp.id(10500255052082548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16040709749182630)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10504091357082550)
,p_name=>'SignBack'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16041312572182636)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_SKM.REGION.SIGN|REGION TYPE|onback'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10504515659082550)
,p_event_id=>wwv_flow_imp.id(10504091357082550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16040709749182630)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10504922484082550)
,p_name=>'DA_PERFORM_ISOCENTER'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PERFORM-BTN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10507419558082552)
,p_event_id=>wwv_flow_imp.id(10504922484082550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_RADIATION_NO_ND,P42_SITE_ID_ND,P42_ISOCENTER_ID_ND,P42_FRACTION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//P42_RADIATION_NO_ND,P42_SITE_ID_ND,P42_ISOCENTER_ID_ND,P42_FRACTION_NO_ND;',
'',
'',
'$(this.triggeringElement).val().callmyfunction(P42_RADIATION_NO_ND,P42_SITE_ID_ND,P42_ISOCENTER_ID_ND,P42_FRACTION_NO_ND)',
'',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10506948390082552)
,p_event_id=>wwv_flow_imp.id(10504922484082550)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10499860046082548)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMLPorcessRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PERFORM_TAB RADIATION.PKG_S18FRM00145.RAD_PERFORM_TAB;',
'BEGIN',
'  SELECT :P42_RADIATION_NO,',
'         :P42_SITE_ID,',
'         :P42_FRACTION_ID,',
'         :P42_ENTRY_DATE,',
'         :P42_MACHINE_ID,',
'         :P42_FRACTION_DATE,',
'         :P42_DOSE_FRACTION,',
'         :P42_PERFORMED_DOSE,',
'         :P42_SCHEDULE_SRNO,',
'         :P42_OC_SERIAL_NO,',
'         :P42_FIRST_CT_SIGN_NAME,',
'         :P42_SECOND_CT_SIGN_NAME,',
'         NVL(:P42_SIGN_DATE, to_date(sysdate, ''DD-MON-YY HH24:MI'')),',
'         ''020'',',
'         NULL,',
'         :P42_REMARKS,',
'         :P42_PLAN_ID,',
'         :P42_PHY_PLAN_ID,',
'         :P42_SIMULATION_ID,',
'         :P42_PLAN_CHECK_ID,',
'         :P42_ANAESTHESIA,',
'         NULL,',
'         NULL,',
'         NULL,',
'         NULL',
'    BULK COLLECT',
'    INTO L_RAD_PERFORM_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'      RADIATION.PKG_S18FRM00145.INSERT_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'    ',
'    WHEN ''U'' THEN',
'      RADIATION.PKG_S18FRM00145.UPDATE_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'    ',
'    WHEN ''D'' THEN',
'      RADIATION.PKG_S18FRM00145.DELETE_RAD_PERFORMANCE(L_RAD_PERFORM_TAB);',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => SQLERRM,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10499860046082548
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10468498171082523)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13793951312235708)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'InitializeFormRadiationDetail'
,p_internal_uid=>10468498171082523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10484865691082534)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13795848776235727)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_internal_uid=>10484865691082534
);
wwv_flow_imp.component_end;
end;
/

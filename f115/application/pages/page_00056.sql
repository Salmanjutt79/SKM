prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_name=>'Radiation Plan Approval '
,p_alias=>'RAD-PLAN-APPROVAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Radiation Plan Approval '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function editRadiationFollowupMaster() {',
'    apex.theme.openRegion(''radfollowup1'')',
'',
'};',
'',
'function deleteRadiationFollowupMaster() {',
'    //$s(''P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', _.radfollowup.STATUS_ID);',
'    if ($v("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "015") {',
'        apex.message.alert("Follow Up is signed, cannot proceed");',
'        return;',
'    }',
'    if ($v("P51_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "009") {',
'        apex.message.alert("Follow Up is cancelled, cannot proceed");',
'        return;',
'    }',
'    apex.message.confirm(''Please confirm you want to delete Radiotheraphy FollowUp?'', function (isOk) {',
'        if (isOk) {',
'            apex.server.process("ProcessRadiationFollowUp",',
'                {',
'',
'                    pageItems: ["P51_FOLLOWUP_ID",',
'                        "P51_LAST_FRACTION_ID",',
'                        "P51_WEEK_DESCRIPTION",',
'                        "P51_STATUS_DESC",',
'                        "P51_SIGN_DATE",',
'                        "P51_SIGN_BY_NAME",',
'                        "P51_CHEMO_LAST_CYCLE",',
'                        "P51_CHEMO_NEXT_CYCLE",',
'                        "P51_ORAL_CHEMO_PRESCRIBED",',
'                        "P51_REMARKS",',
'                        "P51_SIDE_EFFECTS",',
'                        "P51_GENERAL_MEASURE",',
'                        "P51_FU_INSTRUCTIONS",',
'                        "P51_DIET",',
'                        "P51_PERSONAL_HYGIENE",',
'                        "P51_PAT_FAMILY_EDU",',
'                        "P51_PAT_FAMILY_EDU_REMARKS",',
'                        "P51_RADIATION_NO_1",',
'                        "P51_SITE_ID_1",',
'                        "P51_WEEK_NO_1",',
'                        "P51_SCHEDULE_SRNO_1",',
'                        "P51_OC_SERIAL_NO_1",',
'                        "P51_SIGN_BY_1"',
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
'                            apex.region(''radfollowup'').refresh();',
'                            apex.theme.closeRegion(''radfollowup1'');',
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
'apex.item("P51_UNIT").hide();',
'apex.item("P51_SERVICE_NO").hide();',
'apex.item("P51_SERVICE_STATUS").hide();',
'apex.item("P51_RANK").hide();',
'apex.item("P51_FORMATION").hide();',
'',
'apex.item("P56_SIGN_BY_C2").hide();',
'apex.item("P56_SIGN_BY_PHY2").hide();',
'apex.item("P56_SIGN_BY_C2_NAME").hide();',
'apex.item("P56_SIGN_BY_PHY2_NAME").hide();',
'apex.item("SIGN_BY_C2").hide();',
'apex.item("SIGN_BY_PHY2").hide();',
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
''))
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
'#report_image_report img{',
'	height: 120x;',
'    width:  100px;',
'',
'}',
'',
'#P56_MRNO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_PATIENT_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_DISP_AGE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_DISP_GENDER {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_RADIATION_NO {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_RADIATION_DATE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_DISP_DOCTOR {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_DISP_INTENT {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_ND_DOSE_CONSTRAINT_SITE {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#raddetail .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radplan .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#planparamlist .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#radphase .a-GV-status {',
'',
'    display: none;',
'',
'}',
'',
'#P56_PLANNING_ID_PLAN_REVISION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_REVISION_REASON_PLAN_REVISION {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_FREQUENCY {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'#P56_CI_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_DOSE_TO_OAR_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_PTV_COVERAGE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_INSTRUCTIONS_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_PATHOLOGY_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_RADIOLOGY_REVIEWED {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_C1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_C1_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_PHY1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_PHY1_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_C2 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_C2_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_PHY2 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_SIGN_BY_PHY2_NAME {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'#P56_ND_DOSE_CONSTRAINT_SITE_1 {',
' ',
'    font-size: 0.80rem;',
' ',
'    font-weight: bold;',
' ',
'}',
'',
'',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MUHAMMADSHARIF'
,p_last_upd_yyyymmddhh24miss=>'20250131111416'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10111177479634034)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14537985437908249)
,p_plug_display_sequence=>300
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT M.RADIATION_NO RADIATION_NO,',
'       M.MRNO,',
'       RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID => M.STATUS_REQUEST) REQUEST_STATUS',
'  FROM RADIATION.RADIATION_MASTER M',
' WHERE M.MRNO = :P56_MRNO',
'   AND M.RADIOTHERAPY_TYPE = ''T''',
'   AND M.STATUS_REQUEST = ''015''',
'   AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
' ORDER BY M.RADIATION_DATE DESC;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P56_USER_MRNO,P56_MRNO'
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
 p_id=>wwv_flow_imp.id(10111252011634035)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>true
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SUPPORT'
,p_internal_uid=>10111252011634035
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10111344638634036)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10111458150634037)
,p_db_column_name=>'MRNO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'MRNO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10111562783634038)
,p_db_column_name=>'REQUEST_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Request Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10323864421423229)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'103239'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'RADIATION_NO:MRNO:REQUEST_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62509621703892629)
,p_plug_name=>'Sign '
,p_region_name=>'sign'
,p_region_css_classes=>'js-dialog-size600x450'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>280
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64205393353101332)
,p_plug_name=>'Control1'
,p_region_css_classes=>'sticky-bottom-bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>360
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96755024726323741)
,p_plug_name=>'Patient Detail'
,p_region_name=>'radmaster'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>310
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
'          ROWID',
'     FROM RADIATION.RADIATION_MASTER M',
'    /*WHERE RADIATION_NO = NVL(:P56_RADIATION_NO, RADIATION_NO)',
'      AND MRNO LIKE CASE',
'            WHEN :P56_MRNO IS NOT NULL THEN',
'             ''%'' || :P56_MRNO',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312106596865618930)
,p_plug_name=>'Main Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>340
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10869056226223726)
,p_plug_name=>'Planning Parameters'
,p_parent_plug_id=>wwv_flow_imp.id(312106596865618930)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>44
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11150161713163203)
,p_plug_name=>'Plan Detail'
,p_parent_plug_id=>wwv_flow_imp.id(10869056226223726)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10869215919223728)
,p_plug_name=>'Planning Parameter  '
,p_region_name=>'planparamlist'
,p_parent_plug_id=>wwv_flow_imp.id(312106596865618930)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>34
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL             RADIATION_NO,',
'       NULL                  SITE_ID,',
'       NULL                  PLAN_ID,',
'       --PCS.PARAMETER_ID,',
'       PCP.DESCRIPTION            PARAMETER_DESC,',
'       PCD.PARAMETER_VALUE        PARAMETER_VALUE,',
'       PCD.REMARKS,',
'       PCP.VALUE_TYPE,',
'       PCS.REFERENCE_VALUE        REFERENCE_VALUE,',
'       PCD.ACHIEVED_VALUE         ACHIEVED_VALUE,',
'       PCD.DOSE_CONTRAINT_SITE_ID,',
'       PCS.SORT_BY,',
'       PCD.ROWID  pk,',
'       PCS.PARAMETER_ID ',
'  FROM RADIATION.RAD_PLAN_CHECKLIST_DTL    PCD,',
'       RADIATION.PLAN_CHECK_PARAMETERS     PCP,',
'       RADIATION.PLAN_APPROVAL_CHECK_SETUP PCS',
' WHERE PCS.ORGANIZATION_ID = NVL(:GV_ORGANIZATION_ID, ''SKM'')',
'       ---SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'')',
'   AND PCS.LOCATION_ID = NVL(:GV_LOCATION_ID,''001'') --SYS_CONTEXT(''GLOBAL_CONTEXT'', ''LOCATION_ID'')',
'   AND PCD.DOSE_CONTRAINT_SITE_ID = PCS.SITE_ID',
'   AND PCS.PARAMETER_ID = PCP.PARAMETER_ID',
'   AND PCD.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'   AND PCD.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID',
'   AND PCD.PLAN_ID = :P56_RAD_PLAN_ND_PLAN_ID',
'   AND PCP.PARAMETER_ID = PCD.PARAMETER_ID',
'   AND PCS.ACTIVE = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID,P56_RAD_PLAN_ND_PLAN_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Planning Parameter  '
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
 p_id=>wwv_flow_imp.id(10869405743223730)
,p_name=>'RADIATION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RADIATION_NO'
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
 p_id=>wwv_flow_imp.id(10869518778223731)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
 p_id=>wwv_flow_imp.id(10869642391223732)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
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
 p_id=>wwv_flow_imp.id(10869817344223734)
,p_name=>'PARAMETER_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Parameter</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly'
,p_is_required=>false
,p_max_length=>80
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
 p_id=>wwv_flow_imp.id(10869929588223735)
,p_name=>'PARAMETER_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_VALUE'
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
 p_id=>wwv_flow_imp.id(10870010573223736)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Remarks</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
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
 p_id=>wwv_flow_imp.id(10870179925223737)
,p_name=>'VALUE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALUE_TYPE'
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
 p_id=>wwv_flow_imp.id(10870288177223738)
,p_name=>'REFERENCE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Reference <br>Value</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'REFERENCE_VALUE'
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
 p_id=>wwv_flow_imp.id(10870311899223739)
,p_name=>'ACHIEVED_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACHIEVED_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'<b><p style="color:#00008B">Achieved  <br>Value</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N,N/A;NA'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10870497403223740)
,p_name=>'DOSE_CONTRAINT_SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_CONTRAINT_SITE_ID'
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
 p_id=>wwv_flow_imp.id(10870521221223741)
,p_name=>'SORT_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'SORT_BY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(10871026935223746)
,p_name=>'PK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK'
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
 p_id=>wwv_flow_imp.id(13152432240075849)
,p_name=>'PARAMETER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_ID'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10869368572223729)
,p_internal_uid=>10869368572223729
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
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
,p_fixed_header_max_height=>380
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
 p_id=>wwv_flow_imp.id(10896490415850878)
,p_interactive_grid_id=>wwv_flow_imp.id(10869368572223729)
,p_static_id=>'108965'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10896632278850878)
,p_report_id=>wwv_flow_imp.id(10896490415850878)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10897152477850879)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10869405743223730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10898023958850882)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10869518778223731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10898922855850883)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10869642391223732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10900714935850887)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10869817344223734)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10901678144850889)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10869929588223735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10902545581850891)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10870010573223736)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>41
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10903492430850893)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10870179925223737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10904370138850895)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10870288177223738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10905251879850896)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10870311899223739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10906131883850898)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10870497403223740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10907072319850900)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10870521221223741)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11075280527772903)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(10871026935223746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14475557756831632)
,p_view_id=>wwv_flow_imp.id(10896632278850878)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(13152432240075849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106564587350705214)
,p_plug_name=>'Radiotherapy Site(s)'
,p_region_name=>'raddetail'
,p_parent_plug_id=>wwv_flow_imp.id(312106596865618930)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>4
,p_plug_grid_column_span=>8
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT RADIATION_NO,',
'             SITE_ID,',
'             RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(RD.SITE_ID) DISP_SITE,',
'             PLANNING,',
'             RADIATION.PKG_RADIATION.GET_DISP_PLANNING(RD.PLANNING) DISP_PLANNING,',
'             P1_DOSE_FRACTION,',
'             P1_NO_OF_FRACTION,',
'             P2_DOSE_FRACTION,',
'             P2_NO_OF_FRACTION,',
'             P3_DOSE_FRACTION,',
'             P3_NO_OF_FRACTION,',
'             TREATMENT_LATER,',
'             ACTIVE,',
'             WFE_NO,',
'             RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => RADIATION_NO,',
'                                                             P_SITE_ID      => SITE_ID,',
'                                                             P_WFE_NO       => WFE_NO) EVENT_DESC,',
'             PLANNING_ID,',
'             RADIATION.Pkg_Radiation.GET_TOT_ACTUAL_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                         P_SITE_ID      => RD.SITE_ID) TOTAL_DOSE,',
'             RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                        P_SITE_ID      => RD.SITE_ID) PERFORM_DOSE,',
'             RADIATION.PKG_RADIATION.GET_TOT_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                       P_SITE_ID      => RD.SITE_ID) -',
'             RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RD.RADIATION_NO,',
'                                                             P_SITE_ID      => RD.SITE_ID) REMAINING_FRACTION,',
'             ROWID',
'        FROM RADIATION.RADIATION_DETAIL RD',
'       WHERE RD.RADIATION_NO = :P56_RADIATION_NO',
'         AND RD.SITE_ID = NVL(:P56_PARAM_SITE_ID, RD.SITE_ID)',
'         AND RD.STATUS_ID = ''015''',
'         AND RD.ACTIVE = ''Y''',
'         AND RADIATION.PKG_REQUEST.IS_SITE_VISIBLE(P_RADIATION_NO        => RD.RADIATION_NO,',
'                                                   P_SITE_ID             => RD.SITE_ID,',
'                                                   P_PERFORMANCE_TYPE_ID => ''019'') = ''Y'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P56_RADIATION_NO,P56_PARAM_SITE_ID'
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
 p_id=>wwv_flow_imp.id(12231150768052319)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(106564963114705217)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(106565034634705218)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(106565077020705219)
,p_name=>'DISP_SITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_SITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'<b><p style="color:#00008B">Radiotherapy <br>Site</p></b>'
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
 p_id=>wwv_flow_imp.id(106565248890705220)
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
 p_id=>wwv_flow_imp.id(106565307735705221)
,p_name=>'DISP_PLANNING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISP_PLANNING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Planning <br>Technique</p></b>'
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
 p_id=>wwv_flow_imp.id(106565442658705222)
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
 p_id=>wwv_flow_imp.id(106565531131705223)
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
 p_id=>wwv_flow_imp.id(106565613996705224)
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
 p_id=>wwv_flow_imp.id(106565710825705225)
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
 p_id=>wwv_flow_imp.id(106565782187705226)
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
 p_id=>wwv_flow_imp.id(106565941450705227)
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
 p_id=>wwv_flow_imp.id(106565978150705228)
,p_name=>'TREATMENT_LATER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TREATMENT_LATER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<b><p style="color:#00008B">Treatment <br>Later</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(106566139866705229)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'<b><p style="color:#00008B">Active</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(106566253208705230)
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
 p_id=>wwv_flow_imp.id(106566278651705231)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Current  <br>Event</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(106566402418705232)
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
 p_id=>wwv_flow_imp.id(106566556114705233)
,p_name=>'TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(106566621348705234)
,p_name=>'PERFORM_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORM_DOSE'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(106566749353705235)
,p_name=>'REMAINING_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_FRACTION'
,p_data_type=>'NUMBER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(106564716988705215)
,p_internal_uid=>106564716988705215
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
 p_id=>wwv_flow_imp.id(107169318476863565)
,p_interactive_grid_id=>wwv_flow_imp.id(106564716988705215)
,p_static_id=>'482832'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(107169503658863567)
,p_report_id=>wwv_flow_imp.id(107169318476863565)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12346888252714761)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12231150768052319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107169888333863568)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(106564963114705217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107170852790863571)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(106565034634705218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107171761448863574)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(106565077020705219)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126.969
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107172649473863576)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(106565248890705220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107173477046863579)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(106565307735705221)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.641
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107174454022863584)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(106565442658705222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107175334488863587)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(106565531131705223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107176245539863594)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(106565613996705224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107177119017863596)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(106565710825705225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107178017446863599)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(106565782187705226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107178953101863602)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(106565941450705227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107179812091863604)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(106565978150705228)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109.85900000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107180727255863608)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(106566139866705229)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74.64099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107181595961863612)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(106566253208705230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107182541256863615)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(106566278651705231)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149.875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107183380754863618)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(106566402418705232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107184271145863621)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(106566556114705233)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107185251961863628)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(106566621348705234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.882
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107186101022863630)
,p_view_id=>wwv_flow_imp.id(107169503658863567)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(106566749353705235)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.85400000000001
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(323678366121519121)
,p_plug_name=>'Plan and Plan Revision'
,p_parent_plug_id=>wwv_flow_imp.id(106564587350705214)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107221082405935302)
,p_plug_name=>'Plan'
,p_region_name=>'radplan'
,p_parent_plug_id=>wwv_flow_imp.id(323678366121519121)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
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
'       RP.DOCUMENT_ID,',
'       PATH_REVIEWED,',
'       RAD_REVIEWED,',
'       RP.REVISION_REASON,',
'       RP.PLANNING_ID,',
'       (SELECT P.DESCRIPTION',
'          FROM RADIATION.PLANNING P',
'         WHERE P.PLANNING_ID = RP.PLANNING_ID) PLANNING_DESCRIPTION,',
'       ROWID',
'  FROM RADIATION.RAD_PLAN RP',
' WHERE /*RP.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'   AND RP.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID*/',
'        RP.STATUS_ID <> ''248'';',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(106564587350705214)
,p_ajax_items_to_submit=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Plan'
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
 p_id=>wwv_flow_imp.id(312107026905618935)
,p_heading=>'<p style="color:#8B0000">Fraction ID</p>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57396225881054106)
,p_name=>'FROM_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">From</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(312107026905618935)
,p_use_group_for=>'BOTH'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57396346565054107)
,p_name=>'TO_FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">To</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(312107026905618935)
,p_use_group_for=>'BOTH'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57396411875054108)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Plan Id</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly="readonly;"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'PLAN_ID'
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
 p_id=>wwv_flow_imp.id(57396567416054109)
,p_name=>'PI_DOCTOR_ID1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PI_DOCTOR_ID1'
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
 p_id=>wwv_flow_imp.id(57396627474054110)
,p_name=>'PTV_COVERAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PTV_COVERAGE'
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
 p_id=>wwv_flow_imp.id(57396727971054111)
,p_name=>'DOSE_TO_OAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSE_TO_OAR'
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
 p_id=>wwv_flow_imp.id(57396816625054112)
,p_name=>'CI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CI'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'CI'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57396912965054113)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
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
 p_id=>wwv_flow_imp.id(57397026505054114)
,p_name=>'FREQUENCY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'FREQUENCY_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57397103242054115)
,p_name=>'FREQUENCY_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY_DESC'
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
 p_id=>wwv_flow_imp.id(57397213838054116)
,p_name=>'SIGN_BY_CONSULTANT1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULTANT1'
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
 p_id=>wwv_flow_imp.id(57397351300054117)
,p_name=>'SIGN_BY_CONSULT1_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULT1_DESC'
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
 p_id=>wwv_flow_imp.id(57397411556054118)
,p_name=>'SIGN_BY_CONSULTANT2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULTANT2'
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
 p_id=>wwv_flow_imp.id(57397589607054119)
,p_name=>'SIGN_BY_CONSULT2_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_CONSULT2_DESC'
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
 p_id=>wwv_flow_imp.id(57397695044054120)
,p_name=>'SIGN_BY_PHYSICIST1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYSICIST1'
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
 p_id=>wwv_flow_imp.id(57397754636054121)
,p_name=>'SIGN_BY_PHYS1_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYS1_DESC'
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
 p_id=>wwv_flow_imp.id(57397864864054122)
,p_name=>'SIGN_BY_PHYSICIST2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYSICIST2'
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
 p_id=>wwv_flow_imp.id(57397993912054123)
,p_name=>'SIGN_BY_PHYS2_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_BY_PHYS2_DESC'
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
 p_id=>wwv_flow_imp.id(57398009404054124)
,p_name=>'DOCUMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENT_ID'
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
 p_id=>wwv_flow_imp.id(57398111886054125)
,p_name=>'PATH_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATH_REVIEWED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'PATH_REVIEWED'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(57398290857054126)
,p_name=>'RAD_REVIEWED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAD_REVIEWED'
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
 p_id=>wwv_flow_imp.id(57398375061054127)
,p_name=>'REVISION_REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REVISION_REASON'
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
 p_id=>wwv_flow_imp.id(57398435218054128)
,p_name=>'PLANNING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_ID'
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
 p_id=>wwv_flow_imp.id(57398820001054132)
,p_name=>'PLANNING_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNING_DESCRIPTION'
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
 p_id=>wwv_flow_imp.id(107221293813935304)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(106564963114705217)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(107221394182935305)
,p_name=>'SITE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SITE_ID'
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
,p_parent_column_id=>wwv_flow_imp.id(106565034634705218)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(107222730177935318)
,p_name=>'SIGN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SIGN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Date</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'u-bold'
,p_attribute_05=>'BOTH'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(107222848136935319)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'STATUS_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(107222924386935320)
,p_name=>'STATUS_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<b><p style="color:#00008B">Status</p></b>'
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
 p_id=>wwv_flow_imp.id(108921394210688402)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(108921617319688404)
,p_name=>'RAD_DELETE_DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(107221255408935303)
,p_internal_uid=>107221255408935303
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
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
,p_fixed_header_max_height=>160
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
 p_id=>wwv_flow_imp.id(107532224470620848)
,p_interactive_grid_id=>wwv_flow_imp.id(107221255408935303)
,p_static_id=>'486461'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(107532463289620848)
,p_report_id=>wwv_flow_imp.id(107532224470620848)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59123971465681516)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(57396225881054106)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59124843421681519)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(57396346565054107)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59125736039681524)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(57396411875054108)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59126678584681529)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(57396567416054109)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59127535028681532)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(57396627474054110)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59128473076681534)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(57396727971054111)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59129326934681538)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(57396816625054112)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59130236559681541)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(57396912965054113)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59131113884681544)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(57397026505054114)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59132055182681546)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(57397103242054115)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59132959062681549)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(57397213838054116)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59133864909681552)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(57397351300054117)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59134793227681554)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(57397411556054118)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59135641691681557)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(57397589607054119)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59136553494681559)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(57397695044054120)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59137402607681562)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(57397754636054121)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59138306931681564)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(57397864864054122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59139220368681567)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(57397993912054123)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59140171813681571)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(57398009404054124)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59141039534681574)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(57398111886054125)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59141845638681576)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(57398290857054126)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59142740037681579)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(57398375061054127)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59143630309681582)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(57398435218054128)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59716994340725518)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(57398820001054132)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107532922409620849)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(107221293813935304)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107533847225620856)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(107221394182935305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107545422500620899)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(107222730177935318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107546360677620903)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(107222848136935319)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107547235433620905)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(107222924386935320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108936935033695013)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(108921394210688402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108983849251799095)
,p_view_id=>wwv_flow_imp.id(107532463289620848)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(108921617319688404)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55.7031
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106566791994705236)
,p_plug_name=>'Phase'
,p_region_name=>'radphase'
,p_parent_plug_id=>wwv_flow_imp.id(107221082405935302)
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT RPD.RADIATION_NO,',
'        RPD.SITE_ID,',
'        RPD.PLAN_ID,',
'        RPD.PHASE_NO,',
'        NVL(RADIATION.PKG_RADIATION.GET_DELIVERED_DOSE(P_RADIATION_NO => RPD.RADIATION_NO,',
'                                                       P_SITE_ID      => RPD.SITE_ID,',
'                                                       P_PHASE_NO     => RPD.PHASE_NO),',
'            0) AS PERFORMED_DOSE_FRACTION,',
'        RADIATION.PKG_RADIATION.GET_DELIVERED_FRACTIONS(P_RADIATION_NO => RPD.RADIATION_NO,',
'                                                        P_SITE_ID      => RPD.SITE_ID,',
'                                                        P_PHASE_NO     => RPD.PHASE_NO) AS PERFORMED_NO_OF_FRACTION,',
'        RPD.PLAN_DOSE AS PLAN_DOSE_FRACTION,',
'        RPD.PLAN_FRACTION AS PLAN_NO_OF_FRACTION,',
'        NVL(RPD.PLAN_DOSE, 0) * NVL(RPD.PLAN_FRACTION, 0) ND_PLAN_TOTAL_DOSE,',
'        ROWID',
'   FROM RADIATION.RAD_PLAN_DETAIL RPD',
'  WHERE RPD.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'    AND RPD.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID',
'    AND RPD.PLAN_ID = :P56_RAD_PLAN_ND_PLAN_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID,P56_RAD_PLAN_ND_PLAN_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Phase'
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
 p_id=>wwv_flow_imp.id(312106848763618933)
,p_heading=>'<p style="color:#8B0000">Performed</p>'
);
wwv_flow_imp_page.create_region_column_group(
 p_id=>wwv_flow_imp.id(312106958855618934)
,p_heading=>'<p style="color:#8B0000">Plan</p>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110337798634026)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110484493634027)
,p_name=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHASE_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">Phase <br>No</p></b>'
,p_label=>'test'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110543203634028)
,p_name=>'PERFORMED_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMED_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B"> Dose(s)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(312106848763618933)
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110614535634029)
,p_name=>'PERFORMED_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERFORMED_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B">  Fraction(s)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>5
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(312106848763618933)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110782713634030)
,p_name=>'PLAN_DOSE_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_DOSE_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B"> Dose (s)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>4
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(312106958855618934)
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110824517634031)
,p_name=>'PLAN_NO_OF_FRACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_NO_OF_FRACTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<b><p style="color:#00008B"> Fraction(s)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>3
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'u-bold'
,p_group_id=>wwv_flow_imp.id(312106958855618934)
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10110929856634032)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10111053707634033)
,p_name=>'ND_PLAN_TOTAL_DOSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ND_PLAN_TOTAL_DOSE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'<b><p style="color:#00008B">Plan<br> Total Dose(cGy)</p></b>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>6
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'u-bold'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(106566973258705238)
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
,p_static_id=>'RADIATION_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(106567079764705239)
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
,p_static_id=>'SITE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(106566913867705237)
,p_internal_uid=>106566913867705237
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
,p_fixed_header_max_height=>170
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
 p_id=>wwv_flow_imp.id(107226417673936299)
,p_interactive_grid_id=>wwv_flow_imp.id(106566913867705237)
,p_static_id=>'483403'
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
 p_id=>wwv_flow_imp.id(107226585858936299)
,p_report_id=>wwv_flow_imp.id(107226417673936299)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10250568413782315)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10110337798634026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10251338978782317)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10110484493634027)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54.546899999999994
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10252269679782319)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10110543203634028)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66.5469
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10253111954782321)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10110614535634029)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.8438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10254049051782322)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10110782713634030)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65.8438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10254956121782324)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10110824517634031)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82.594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10267708771803844)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10110929856634032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10280335588890940)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10111053707634033)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107227134789936302)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(106566973258705238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107227981983936304)
,p_view_id=>wwv_flow_imp.id(107226585858936299)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(106567079764705239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108921743857688405)
,p_plug_name=>'Radiation Plan Approval '
,p_region_name=>'radfollowup1'
,p_parent_plug_id=>wwv_flow_imp.id(107221082405935302)
,p_region_css_classes=>'js-dialog-size900x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(323678476991519122)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(323678366121519121)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10428526069876314)
,p_plug_name=>'Plan Detail'
,p_parent_plug_id=>wwv_flow_imp.id(323678476991519122)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-md:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>24
,p_plug_new_grid_row=>false
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Plan'
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
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57399465123054138)
,p_plug_name=>'Planning Revision'
,p_parent_plug_id=>wwv_flow_imp.id(323678476991519122)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>44
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(312106719969618932)
,p_plug_name=>'Pedding'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>350
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<br>',
'<br>',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(323678273567519120)
,p_plug_name=>'User Profile'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>320
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(106564187590705210)
,p_name=>'Image'
,p_region_name=>'image_report'
,p_parent_plug_id=>wwv_flow_imp.id(323678273567519120)
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>330
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--stretchInputs:margin-top-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P56_MRNO;',
''))
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
,p_ajax_items_to_submit=>'P56_MRNO'
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
 p_id=>wwv_flow_imp.id(58920048648777451)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58920478335777451)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58920803730777452)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:ROWID::::::::PICTURES'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_report_column_width=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11150589103163207)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_button_name=>'SIGN_BY_C1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Sign</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11151581515163217)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(57399465123054138)
,p_button_name=>'ATTACH_PLAN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Attach '
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11151631109163218)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57399465123054138)
,p_button_name=>'VIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58907830117777435)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(64205393353101332)
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
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58909067151777439)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(64205393353101332)
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
 p_id=>wwv_flow_imp.id(11150838721163210)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_button_name=>'SIGN_BY_PHY1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Sign</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58909473217777440)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(64205393353101332)
,p_button_name=>'DisposePlan'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose Plan'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58908262845777435)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(64205393353101332)
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
 p_id=>wwv_flow_imp.id(11151138188163213)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_button_name=>'SIGN_BY_C2'
,p_button_static_id=>'SIGN_BY_C2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Sign</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58909800473777440)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(64205393353101332)
,p_button_name=>'TreatmentAbort'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Treatment Abort'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times-circle-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11151444196163216)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_button_name=>'SIGN_BY_PHY2'
,p_button_static_id=>'SIGN_BY_PHY2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<b>Sign</b>'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58898643064777424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_button_name=>'saveradiationfollowup'
,p_button_static_id=>'btnFollowupMasterSave'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62510813686892641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Close'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58899052010777426)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_button_name=>'exitfollowup'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62510724359892640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_button_name=>'Sign'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-signature'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10111909826634042)
,p_name=>'P56_PARAM_RADIATION_NO'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10427976486876308)
,p_name=>'P56_SYSTEM_CONSTANT_ID_428'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10431906500876348)
,p_name=>'P56_FREQUENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">Frequency:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, FREQUENCY_ID',
'  FROM RADIATION.DEF_TREATMENT_FREQUENCY',
' WHERE ACTIVE = ''Y''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10432181124876350)
,p_name=>'P56_CI_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">CI:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10866511418223701)
,p_name=>'P56_DOSE_TO_OAR_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">Dose To OAR</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10866687072223702)
,p_name=>'P56_PTV_COVERAGE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">PTV Coverage</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10866753750223703)
,p_name=>'P56_INSTRUCTIONS_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">Instructions/Remarks:</p></b>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_cattributes_element=>'readonly="readonly;"'
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10866812358223704)
,p_name=>'P56_PATHOLOGY_REVIEWED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">Pathology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10866957782223705)
,p_name=>'P56_RADIOLOGY_REVIEWED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10428526069876314)
,p_prompt=>'<b><p style="color:#00008B">Radiology Reviewed</p></b>'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10868813967223724)
,p_name=>'P56_PLANNING_ID_PLAN_REVISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57399465123054138)
,p_prompt=>'<b><p style="color:#00008B">Planning:</p></b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, PLANNING_ID',
'  FROM RADIATION.PLANNING T',
' WHERE ACTIVE = ''Y''',
'   AND T.RADIOTHERAPY_TYPE = ''T'''))
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>3
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
 p_id=>wwv_flow_imp.id(10868947826223725)
,p_name=>'P56_REVISION_REASON_PLAN_REVISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(57399465123054138)
,p_prompt=>'<b><p style="color:#00008B">Revision  Reason:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Machine Break-down;MB,Other Reason;OR'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>12
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10869108689223727)
,p_name=>'P56_ND_DOSE_CONSTRAINT_SITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10869215919223728)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DOSE_CONSTRAINT_SITE_ID AS ID',
'    FROM RADIATION.RAD_PLAN_CHECKLIST_DTL   PCD,',
'         RADIATION.DEF_DOSE_CONSTRAINT_SITE DCS',
'   WHERE DCS.DOSE_CONSTRAINT_SITE_ID = PCD.DOSE_CONTRAINT_SITE_ID',
'     AND PCD.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'     AND PCD.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID',
'     AND PCD.PLAN_ID = :P56_RAD_PLAN_ND_PLAN_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'<b><p style="color:#00008B">Planning Parameters:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DESCRIPTION AS DESCRIPTION, DOSE_CONSTRAINT_SITE_ID AS ID',
'  FROM RADIATION.DEF_DOSE_CONSTRAINT_SITE',
' WHERE ACTIVE = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10871296490223748)
,p_name=>'P56_DOSE_CONSTRAINT_SITE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10869215919223728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11150292282163204)
,p_name=>'P56_SIGN_BY_C1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_prompt=>'<b><p style="color:#00008B">Primary Consultant:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11150302695163205)
,p_name=>'P56_SIGN_BY_C1_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11150644530163208)
,p_name=>'P56_SIGN_BY_PHY1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_prompt=>'<b><p style="color:#00008B">Primary Physicist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11150763768163209)
,p_name=>'P56_SIGN_BY_PHY1_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11150967271163211)
,p_name=>'P56_SIGN_BY_C2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_prompt=>'<b><p style="color:#00008B">Secondary Consultant:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11151027466163212)
,p_name=>'P56_SIGN_BY_C2_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11151246699163214)
,p_name=>'P56_SIGN_BY_PHY2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_prompt=>'<b><p style="color:#00008B">Secondary Psychist:</p></b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11151319938163215)
,p_name=>'P56_SIGN_BY_PHY2_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11150161713163203)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047888826367443)
,p_name=>'P56_FCS'
,p_item_sequence=>190
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047987170367444)
,p_name=>'P56_FPS'
,p_item_sequence=>200
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12048071662367445)
,p_name=>'P56_SCS'
,p_item_sequence=>210
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12048197427367446)
,p_name=>'P56_SPS'
,p_item_sequence=>220
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12696225140338901)
,p_name=>'P56_SIGN_FLAG'
,p_item_sequence=>230
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12697037214338909)
,p_name=>'P56_SC_EVENT_ID'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13150200891075827)
,p_name=>'P56_ERROR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13150595089075830)
,p_name=>'P56_SUCCESS_MSG_MAIN'
,p_item_sequence=>260
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35559440446840539)
,p_name=>'P56_RAD_PLAN_STATUS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107221082405935302)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38985108807179936)
,p_name=>'P56_ND_DOSE_CONSTRAINT_SITE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10869215919223728)
,p_prompt=>'<b><p style="color:#00008B">Planning Parameters:</p></b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DESCRIPTION AS DESCRIPTION, DOSE_CONSTRAINT_SITE_ID AS ID',
'  FROM RADIATION.DEF_DOSE_CONSTRAINT_SITE',
' WHERE ACTIVE = ''Y'''))
,p_cHeight=>1
,p_colspan=>9
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57398681430054130)
,p_name=>'P56_PLANNING_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57398744381054131)
,p_name=>'P56_PLANNING_DESC'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62509786929892630)
,p_name=>'P56_PATIENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
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
 p_id=>wwv_flow_imp.id(62509815140892631)
,p_name=>'P56_PATIENT_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_prompt=>'<b><p style="color:#00008B">Employee Code:</p></b>'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62509907846892632)
,p_name=>'P56_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
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
 p_id=>wwv_flow_imp.id(62510064535892633)
,p_name=>'P56_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_prompt=>'<b><p style="color:#00008B">Password:</p></b> '
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62510187934892634)
,p_name=>'P56_DISP_MRNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62510271351892635)
,p_name=>'P56_USER_MRNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62510311264892636)
,p_name=>'P56_LOGIN_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62510405462892637)
,p_name=>'P56_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62510575032892638)
,p_name=>'P56_LOGIN_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62510668205892639)
,p_name=>'P56_VALIDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62511148987892644)
,p_name=>'P56_TXT_ALERT_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(62509621703892629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62511256671892645)
,p_name=>'P56_SUCCESS_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62637098296912413)
,p_name=>'P56_DOUBLE_CONSULTANT'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62637330855912416)
,p_name=>'P56_ND_PLANNING_ID'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64254221061101398)
,p_name=>'P56_RAD_DETAIL_ND_RADIATION_NO'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64254295284101399)
,p_name=>'P56_RAD_DETAIL_ND_SITE_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64254919008101405)
,p_name=>'P56_RAD_PLAN_ND_PLAN_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64255643921101412)
,p_name=>'P56_SIGN_STATUS'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65074700636070867)
,p_name=>'P56_TXT_URL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66234650636697010)
,p_name=>'P56_ERROR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66485153057666166)
,p_name=>'P56_REVISION_REASON'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66521459553666207)
,p_name=>'P56_RAD_PLAN_DML_STATUS'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66521879717666212)
,p_name=>'P56_PARAM_SR_NO'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96779642891323791)
,p_name=>'P56_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Radiation No</p></b>'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(96779739477323792)
,p_name=>'P56_RADIATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Radiation Date</p></b>'
,p_source=>'RADIATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587187078705243)
,p_name=>'P56_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">MRNO</p></b>'
,p_source=>'MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>14
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587300165705244)
,p_name=>'P56_PATIENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Patient Name</p></b>'
,p_source=>'PATIENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587420328705245)
,p_name=>'P56_DISP_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Gender</p></b>'
,p_source=>'DISP_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587500300705246)
,p_name=>'P56_DISP_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Age</p></b>'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587540371705247)
,p_name=>'P56_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587698133705248)
,p_name=>'P56_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Consultant</p></b>'
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT UPPER(DD.NAME), DD.DOCTOR_ID',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'           AND L.LOCATION_ID = :GV_LOCATION_ID)',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>32767
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106587836208705249)
,p_name=>'P56_DISP_INTENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'<b><p style="color:#00008B">Treat. Intent</p></b>'
,p_source=>'DISP_INTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106588054876705252)
,p_name=>'P56_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106588224468705253)
,p_name=>'P56_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'Unit'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106588282839705254)
,p_name=>'P56_SERVICE_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'Service No'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(106588350082705255)
,p_name=>'P56_SERVICE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'Service Status'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(106588473249705256)
,p_name=>'P56_RANK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'Rank'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(106588590779705257)
,p_name=>'P56_FORMATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_item_source_plug_id=>wwv_flow_imp.id(96755024726323741)
,p_prompt=>'Formation'
,p_source=>'DISP_GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(106613860337705284)
,p_name=>'P56_PARAM_SITE_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935129499688438)
,p_name=>'RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Radiation No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(108935191806688439)
,p_name=>'P56_SITE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Fraction Id (Last)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935308500688440)
,p_name=>'P56_FROM_FRACTION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Week'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935419975688441)
,p_name=>'P56_TO_FRACTION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935517431688442)
,p_name=>'P56_PLAN_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935585751688443)
,p_name=>'P56_PI_DOCTOR_ID1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Sign By'
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
 p_id=>wwv_flow_imp.id(108935677160688444)
,p_name=>'P56_PTV_COVERAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Last Chemo Cycle'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935796439688445)
,p_name=>'P56_DOSE_TO_OAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Next Chemo Cycle'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935935577688446)
,p_name=>'P56_CI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_item_default=>'N'
,p_prompt=>'Ci'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108935990917688447)
,p_name=>'P56_INSTRUCTIONS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Follow Up Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(108936076653688448)
,p_name=>'P56_FREQUENCY_DESC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_item_default=>'N'
,p_prompt=>'Frequency Desc'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108936208145688449)
,p_name=>'P56_SIGN_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_item_default=>'N'
,p_prompt=>'Sign Date'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108936280087688450)
,p_name=>'P56_SIGN_BY_CONSULTANT1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_item_default=>'N'
,p_prompt=>'F/U Instructions'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108936444970688451)
,p_name=>'P56_SIGN_BY_CONSULT1_DESC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_item_default=>'N'
,p_prompt=>'Sign By Consult1 Desc'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108936468356688452)
,p_name=>'P56_SIGN_BY_CONSULTANT2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_item_default=>'N'
,p_prompt=>'Sign By Consultant2'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108936601307688453)
,p_name=>'P56_SIGN_BY_CONSULT2_DESC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>9
,p_grid_column=>2
,p_grid_label_column_span=>8
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108936684184688454)
,p_name=>'P56_SIGN_BY_PHYSICIST1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_prompt=>'Patient Education Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(108938422847688471)
,p_name=>'P56_SIGN_BY_PHYS1_DESC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108938528026688472)
,p_name=>'P56_SIGN_BY_PHYSICIST2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108938598829688473)
,p_name=>'P56_SIGN_BY_PHYS2_DESC'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108938664155688474)
,p_name=>'P56_DOCUMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107221082405935302)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108938793735688475)
,p_name=>'P56_PATH_REVIEWED'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108938913690688476)
,p_name=>'P56_RAD_REVIEWED'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(108921743857688405)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108973566561688501)
,p_name=>'P56_ALERT_TEXT'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10868633719223722)
,p_name=>'DAPlan1'
,p_event_sequence=>1
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(107221082405935302)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10868710346223723)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'    apex.item("P56_FREQUENCY").setValue(model.getValue(this.data.selectedRecords[i], "FREQUENCY_ID"));',
'    apex.item("P56_CI_1").setValue(model.getValue(this.data.selectedRecords[i], "CI"));',
'    apex.item("P56_DOSE_TO_OAR_1").setValue(model.getValue(this.data.selectedRecords[i], "DOSE_TO_OAR"));',
'    apex.item("P56_PTV_COVERAGE_1").setValue(model.getValue(this.data.selectedRecords[i], "PTV_COVERAGE"));',
'    apex.item("P56_INSTRUCTIONS_1").setValue(model.getValue(this.data.selectedRecords[i], "INSTRUCTIONS"));',
'    apex.item("P56_PATHOLOGY_REVIEWED").setValue(model.getValue(this.data.selectedRecords[i], "PATH_REVIEWED"));',
'    apex.item("P56_RADIOLOGY_REVIEWED").setValue(model.getValue(this.data.selectedRecords[i], "RAD_REVIEWED"));',
'    apex.item("P56_PLANNING_ID_PLAN_REVISION").setValue(model.getValue(this.data.selectedRecords[i], "PLANNING_ID"));',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").setValue(model.getValue(this.data.selectedRecords[i], "REVISION_REASON"));',
'    ',
'    apex.item("P56_SIGN_BY_C1_NAME").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_CONSULT1_DESC"));',
'    apex.item("P56_SIGN_BY_PHY1_NAME").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_PHYS1_DESC"));',
'    apex.item("P56_SIGN_BY_C2_NAME").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_CONSULT2_DESC"));',
'    apex.item("P56_SIGN_BY_PHY2_NAME").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_PHYS2_DESC"));',
'',
'    apex.item("P56_SIGN_BY_C1").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_CONSULTANT1"));',
'    apex.item("P56_SIGN_BY_PHY1").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_PHYSICIST1"));',
'    apex.item("P56_SIGN_BY_C2").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_CONSULTANT2"));',
'    apex.item("P56_SIGN_BY_PHY2").setValue(model.getValue(this.data.selectedRecords[i], "SIGN_BY_PHYSICIST2"));',
'apex.item("P56_DOCUMENT_ID").setValue(model.getValue(this.data.selectedRecords[i], "DOCUMENT_ID"));',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57399015221054134)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''radplan'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var planID = model.getValue(record, ''PLAN_ID'');',
'    var planningID = model.getValue(record, ''PLANNING_ID'');',
'    $s(''P56_RAD_PLAN_ND_PLAN_ID'', planID);',
'    $s(''P56_ND_PLANNING_ID'', planningID);',
'',
'',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12230605700052314)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF RADIATION.PKG_S18FRM00137.IS_DOUBLE_CONSULTANT(:P56_ND_PLANNING_ID) = ''Y'' THEN',
'    :P56_DOUBLE_CONSULTANT := ''Y'';',
'  ',
'  ELSE',
'    :P56_DOUBLE_CONSULTANT := ''N'';',
'  ',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P56_ND_PLANNING_ID'
,p_attribute_03=>'P56_DOUBLE_CONSULTANT'
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
 p_id=>wwv_flow_imp.id(35559537010840540)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P56_RAD_PLAN_STATUS_ID'', _.radplan.STATUS_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35559610934840541)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P56_RAD_PLAN_STATUS_ID") === "015") || ($v("P56_RAD_PLAN_STATUS_ID") === "009")) {',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").hide();',
'    //apex.item("P56_ND_DOSE_CONSTRAINT_SITE").disable();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").show();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").disable();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").hide();',
'    apex.item("save").disable();',
'    apex.item("P56_FREQUENCY").disable();',
'    apex.item("P56_CI_1").disable();',
'    apex.item("P56_DOSE_TO_OAR_1").disable();',
'    apex.item("P56_PTV_COVERAGE_1").disable();',
'    apex.item("P56_INSTRUCTIONS_1").disable();',
'    apex.item("P56_PATHOLOGY_REVIEWED").disable();',
'    apex.item("P56_RADIOLOGY_REVIEWED").disable();',
'    apex.item("P56_PLANNING_ID_PLAN_REVISION").disable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").disable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").disable();',
'',
'}',
'',
'else {',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").show();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").enable();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").hide();',
'    apex.item("save").enable();',
'    apex.item("P56_FREQUENCY").enable();',
'    apex.item("P56_CI_1").enable();',
'    apex.item("P56_DOSE_TO_OAR_1").enable();',
'    apex.item("P56_PTV_COVERAGE_1").enable();',
'    apex.item("P56_INSTRUCTIONS_1").enable();',
'    apex.item("P56_PATHOLOGY_REVIEWED").enable();',
'    apex.item("P56_RADIOLOGY_REVIEWED").enable();',
'    apex.item("P56_PLANNING_ID_PLAN_REVISION").enable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").enable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38985232417179937)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DISTINCT DOSE_CONSTRAINT_SITE_ID',
'    INTO :P56_ND_DOSE_CONSTRAINT_SITE_1',
'    FROM RADIATION.RAD_PLAN_CHECKLIST_DTL   PCD,',
'         RADIATION.DEF_DOSE_CONSTRAINT_SITE DCS',
'   WHERE DCS.DOSE_CONSTRAINT_SITE_ID = PCD.DOSE_CONTRAINT_SITE_ID',
'     AND PCD.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'     AND PCD.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID',
'     AND PCD.PLAN_ID = :P56_RAD_PLAN_ND_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID,P56_RAD_PLAN_ND_PLAN_ID'
,p_attribute_03=>'P56_ND_DOSE_CONSTRAINT_SITE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57399132289054135)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106566791994705236)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10871120562223747)
,p_event_id=>wwv_flow_imp.id(10868633719223722)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10869215919223728)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58940879387777466)
,p_name=>'exitRegion'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58899052010777426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58941357611777467)
,p_event_id=>wwv_flow_imp.id(58940879387777466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion(''radfollowup1'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58950156067777473)
,p_name=>'CloseDialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58908262845777435)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58950660403777473)
,p_event_id=>wwv_flow_imp.id(58950156067777473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58951063871777473)
,p_name=>'EnableDisableFields'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(107221082405935302)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58951586017777473)
,p_event_id=>wwv_flow_imp.id(58951063871777473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''radfollowup'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var followupid = model.getValue(record, ''FOLLOWUP_ID'');',
'    var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P56_RAD_FOLLOWUP_ND_FOLLOWUP_ID'', followupid);',
'    $s(''P56_RAD_FOLLOWUP_MASTER_ND_STATUS_ID'', statusid);',
'});',
'',
'if (($v("P56_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "015") || ($v("P56_RAD_FOLLOWUP_MASTER_ND_STATUS_ID") === "009")) {',
'    apex.item("btnFollowupMasterSave").disable();',
'    apex.item("P56_LAST_FRACTION_ID").disable();',
'    apex.item("P56_WEEK_DESCRIPTION").disable();',
'    apex.item("P56_STATUS_DESC").disable();',
'    apex.item("P56_SIGN_DATE").disable();',
'    apex.item("P56_SIGN_BY_NAME").disable();',
'    apex.item("P56_CHEMO_LAST_CYCLE").disable();',
'    apex.item("P56_ORAL_CHEMO_PRESCRIBED").disable();',
'    apex.item("P56_CHEMO_NEXT_CYCLE").disable();',
'    apex.item("P56_REMARKS").disable();',
'    apex.item("P56_GENERAL_MEASURE").disable();',
'    apex.item("P56_FU_INSTRUCTIONS").disable();',
'    apex.item("P56_DIET").disable();',
'    apex.item("P56_PERSONAL_HYGIENE").disable();',
'    apex.item("P56_PAT_FAMILY_EDU_REMARKS").disable();',
'    apex.item("P56_RADIATION_NO_1").disable();',
'    apex.item("P56_SITE_ID_1").disable();',
'    apex.item("P56_WEEK_NO_1").disable();',
'    apex.item("P56_SCHEDULE_SRNO_1").disable();',
'    apex.item("P56_OC_SERIAL_NO_1").disable();',
'    apex.item("P56_SIGN_BY_1").disable();',
'    apex.item("P56_FOLLOWUP_ID").disable();',
'    apex.item("P56_SIDE_EFFECTS").disable();',
'}',
'else {',
'    apex.item("btnFollowupMasterSave").enable();',
'    apex.item("P56_LAST_FRACTION_ID").enable();',
'    apex.item("P56_WEEK_DESCRIPTION").enable();',
'    apex.item("P56_STATUS_DESC").enable();',
'    apex.item("P56_SIGN_DATE").enable();',
'    apex.item("P56_SIGN_BY_NAME").enable();',
'    apex.item("P56_CHEMO_LAST_CYCLE").enable();',
'    apex.item("P56_ORAL_CHEMO_PRESCRIBED").enable();',
'    apex.item("P56_CHEMO_NEXT_CYCLE").enable();',
'    apex.item("P56_REMARKS").enable();',
'    apex.item("P56_GENERAL_MEASURE").enable();',
'    apex.item("P56_FU_INSTRUCTIONS").enable();',
'    apex.item("P56_DIET").enable();',
'    apex.item("P56_PERSONAL_HYGIENE").enable();',
'    apex.item("P56_PAT_FAMILY_EDU_REMARKS").enable();',
'    apex.item("P56_RADIATION_NO_1").enable();',
'    apex.item("P56_SITE_ID_1").enable();',
'    apex.item("P56_WEEK_NO_1").enable();',
'    apex.item("P56_SCHEDULE_SRNO_1").enable();',
'    apex.item("P56_OC_SERIAL_NO_1").enable();',
'    apex.item("P56_SIGN_BY_1").enable();',
'    apex.item("P56_FOLLOWUP_ID").enable();',
'    apex.item("P56_SIDE_EFFECTS").enable();',
'',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58951942718777473)
,p_name=>'EnableCheckBoxes'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58907830117777435)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323678068406519118)
,p_event_id=>wwv_flow_imp.id(58951942718777473)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P56_SUCCESS_MSG").setValue('''');',
'apex.item("P56_ERROR_MESSAGE").setValue('''');',
'apex.region("planparamlist").widget().interactiveGrid("getActions").invoke("save");',
'apex.server.process("HDRDMLProcessRadiationPlan",',
'    {',
'',
'        pageItems: [',
'            "P56_RAD_DETAIL_ND_RADIATION_NO",',
'            "P56_RAD_DETAIL_ND_SITE_ID",',
'            "P56_RAD_PLAN_ND_PLAN_ID",',
'            "P56_MRNO",',
'            "P56_SUCCESS_MSG",',
'            "P56_ERROR_MESSAGE",',
'            "P56_DISP_DOCTOR",',
'            "P56_PTV_COVERAGE_1",',
'            "P56_DOSE_TO_OAR_1",',
'            "P56_CI_1",',
'            "P56_INSTRUCTIONS_1",',
'            "P56_FREQUENCY",',
'            "P56_PATHOLOGY_REVIEWED",',
'            "P56_RADIOLOGY_REVIEWED",',
'            "P56_REVISION_REASON_PLAN_REVISION",',
'            "P56_PLANNING_ID_PLAN_REVISION",',
'            "P56_DOCUMENT_ID"',
'',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'',
'              //  apex.region("planparamlist").widget().interactiveGrid("getActions").invoke("save");',
'                // apex.region("radplan").widget().interactiveGrid("getActions").invoke("save");',
'',
'                apex.region("radplan").call("getActions").set("edit", false);',
'                apex.region("radplan").widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'                apex.region("radplan").refresh();',
'',
'                apex.item("P56_SUCCESS_MSG").setValue(obj.message);',
'',
'            } else {',
'                apex.item("P56_ERROR_MESSAGE").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323678175164519119)
,p_event_id=>wwv_flow_imp.id(58951942718777473)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("radplan").call("getActions").set("edit", false);',
'apex.region("radplan").widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'//apex.region("radplan").refresh();',
'//apex.region("planparamlist").call("getActions").set("edit", false);',
'apex.region("planparamlist").widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'//apex.region("planparamlist").refresh();',
'apex.region("radphase").call("getActions").set("edit", false);',
'apex.region("radphase").widget().interactiveGrid(''getViews'', ''grid'').model.clearChanges();',
'//apex.region("radphase").refresh();',
' ',
'//apex.region(''raddetail'').refresh();',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58952814715777474)
,p_name=>'EnableCheckBoxed1'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58909067151777439)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58953329859777474)
,p_event_id=>wwv_flow_imp.id(58952814715777474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P56_SUCCESS_MSG").setValue('''');',
'apex.item("P56_ERROR_MESSAGE").setValue('''');',
'apex.server.process("HDRProcessCreatePlan",',
'    {',
' ',
'        pageItems: [',
'            "P56_RAD_DETAIL_ND_RADIATION_NO",',
'            "P56_RAD_DETAIL_ND_SITE_ID",',
'            "P56_RAD_PLAN_ND_PLAN_ID",',
'            "P56_MRNO",',
'            "P56_SUCCESS_MSG",',
'            "P56_ERROR_MESSAGE"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P56_SUCCESS_MSG").setValue(obj.message);',
'',
'                apex.item("P56_INSTRUCTIONS_1").setValue('''');',
'            } else {',
'                apex.item("P56_ERROR_MESSAGE").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323677107260519109)
,p_event_id=>wwv_flow_imp.id(58952814715777474)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radphase'').refresh();',
'apex.region(''radplan'').refresh();',
'apex.region(''planparamlist'').refresh();',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58953739545777474)
,p_name=>'EnableCheckBoxed2'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58909473217777440)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323680694757519144)
,p_event_id=>wwv_flow_imp.id(58953739545777474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure, you want to dispose this plan...'
,p_attribute_02=>'System Message!'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323676574406519103)
,p_event_id=>wwv_flow_imp.id(58953739545777474)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P56_SUCCESS_MSG").setValue('''');',
'apex.item("P56_ERROR_MESSAGE").setValue('''');',
'apex.server.process("HDRProcessDisposePlan",',
'    {',
'',
'        pageItems: [',
'            "P56_RAD_DETAIL_ND_RADIATION_NO",',
'            "P56_RAD_DETAIL_ND_SITE_ID",',
'            "P56_RAD_PLAN_ND_PLAN_ID",',
'            "P56_MRNO"',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P56_SUCCESS_MSG").setValue(obj.message);',
'',
'                apex.item("P56_INSTRUCTIONS_1").setValue('''');',
'            } else {',
'                apex.item("P56_ERROR_MESSAGE").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323677203460519110)
,p_event_id=>wwv_flow_imp.id(58953739545777474)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radphase'').refresh();',
'apex.region(''radplan'').refresh();',
'apex.region(''planparamlist'').refresh();',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323677309329519111)
,p_event_id=>wwv_flow_imp.id(58953739545777474)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107221082405935302)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58954627265777474)
,p_name=>'SaveRadiationFollowUp'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58898643064777424)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58955189592777475)
,p_event_id=>wwv_flow_imp.id(58954627265777474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.event.trigger("UpdateRadiationFollowUp");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58955551085777475)
,p_name=>'UpdateRadiationFollowUp'
,p_event_sequence=>150
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateRadiationFollowUp'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58956002842777475)
,p_event_id=>wwv_flow_imp.id(58955551085777475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("ProcessRadiationFollowUp",',
'    {',
'        pageItems: ["P56_RADIATION_NO_1",',
'            "P56_SITE_ID_1",',
'            "P56_FOLLOWUP_ID",',
'            "P56_LAST_FRACTION_ID",',
'            "P56_WEEK_NO_1",',
'            "P56_SCHEDULE_SRNO_1",',
'            "P56_CHEMO_LAST_CYCLE",',
'            "P56_CHEMO_NEXT_CYCLE",',
'            "P56_ORAL_CHEMO_PRESCRIBED",',
'            "P56_REMARKS",',
'            "P56_SIGN_BY_1",',
'            "P56_SIDE_EFFECTS",',
'            "P56_DIET",',
'            "P56_GENERAL_MEASURE",',
'            "P56_PERSONAL_HYGIENE",',
'            "P56_FU_INSTRUCTIONS",',
'            "P56_PAT_FAMILY_EDU",',
'            "P56_PAT_FAMILY_EDU_REMARKS",',
'            "P56_OC_SERIAL_NO_1"',
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
'                apex.region(''radfollowup'').refresh();',
'                apex.theme.closeRegion(''radfollowup1'');',
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
 p_id=>wwv_flow_imp.id(10427285097876301)
,p_name=>'SetRadiationNo'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10111177479634034)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10427301773876302)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_PARAM_RADIATION_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10427455921876303)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var radiationNo = $(this.browserEvent.target).parents(''tr'').find("td:eq(0)").text();',
'apex.item("P56_PARAM_RADIATION_NO").setValue(radiationNo);',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10427516318876304)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
'         DOCTOR_ID DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P56_RADIATION_NO,',
'         :P56_RADIATION_DATE,',
'         :P56_MRNO,',
'         :P56_PATIENT_NAME,',
'         :P56_DISP_AGE,',
'         :P56_DISP_GENDER,',
'         :P56_DOCTOR_ID,',
'         :P56_DISP_DOCTOR,',
'         :P56_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P56_PARAM_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P56_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND MRNO LIKE CASE',
'           WHEN :P56_MRNO IS NOT NULL THEN',
'            ''%'' || :P56_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''T''',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'   ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    RETURN;',
'END;',
'',
'',
''))
,p_attribute_02=>'P56_USER_MRNO,P56_PARAM_RADIATION_NO'
,p_attribute_03=>'P56_RADIATION_NO,P56_RADIATION_DATE,P56_PATIENT_NAME,P56_DISP_AGE,P56_DISP_GENDER,P56_DOCTOR_ID,P56_DISP_DOCTOR,P56_DISP_INTENT,P56_USER_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10427600307876305)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106564187590705210)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10428124934876310)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(106564587350705214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10867065147223706)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''raddetail'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var siteID = model.getValue(record, ''SITE_ID'');',
'    //var statusid = model.getValue(record, ''STATUS_ID'');',
'    $s(''P56_RAD_DETAIL_ND_SITE_ID'', siteID);',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10868570150223721)
,p_event_id=>wwv_flow_imp.id(10427285097876301)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107221082405935302)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10427781269876306)
,p_name=>'SetArmyServiceFields'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10427865544876307)
,p_event_id=>wwv_flow_imp.id(10427781269876306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P56_MRNO IS NOT NULL THEN',
'  ',
'    :P56_SYSTEM_CONSTANT_ID_428 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428,',
'                                                                             P_ORGANIZATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''ORGANIZATION_ID''),',
'                                                                             P_LOCATION_ID     => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                              ''LOCATION_ID''),',
'                                                                             P_DEFAULT_VAL     => ''N'');',
'  ',
'    IF NVL(:P34_SYSTEM_CONSTANT_ID_428, ''N'') = ''Y'' THEN',
'    ',
'      :P56_SERVICE_NO     := HIS.PKG_PATIENT.GET_SERVICE_NO(:P56_MRNO);',
'      :P56_SERVICE_STATUS := HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(:P56_MRNO);',
'      :P56_RANK           := HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(:P56_MRNO);',
'      :P56_FORMATION      := HIS.PKG_PATIENT.GET_PATIENT_FORMATION(:P56_MRNO);',
'      :P56_UNIT           := HIS.PKG_PATIENT.GET_PATIENT_UNIT(:P56_MRNO);',
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
,p_attribute_02=>'P56_USER_MRNO'
,p_attribute_03=>'P56_SYSTEM_CONSTANT_ID_428,P56_SERVICE_NO,P56_SERVICE_STATUS,P56_RANK,P56_FORMATION,P56_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10428056099876309)
,p_event_id=>wwv_flow_imp.id(10427781269876306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P56_SYSTEM_CONSTANT_ID_428") === ''Y'') {',
'    ',
'    apex.item("P56_SERVICE_NO").show();',
'    apex.item("P56_SERVICE_STATUS").show();',
'    apex.item("P56_RANK").show();',
'    apex.item("P56_FORMATION").show();',
'    apex.item("P56_UNIT").show();',
'}',
'',
'else {',
'',
'    apex.item("P56_SERVICE_NO").hide();',
'    apex.item("P56_SERVICE_STATUS").hide();',
'    apex.item("P56_RANK").hide();',
'    apex.item("P56_FORMATION").hide();',
'    apex.item("P56_UNIT").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10867915101223715)
,p_name=>'DARadDetail1'
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(106564587350705214)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10868041179223716)
,p_event_id=>wwv_flow_imp.id(10867915101223715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var widget = apex.region(''raddetail'').widget();',
'var grid = widget.interactiveGrid(''getViews'', ''grid'');',
'var model = grid.model;',
'var results = [];',
'',
'var selectedRec = grid.getSelectedRecords();',
'',
'selectedRec.forEach(function (r) {',
'    var record = r;',
'    var siteID = model.getValue(record, ''SITE_ID'');',
'    var radiationNO = model.getValue(record, ''RADIATION_NO'');',
'    $s(''P56_RAD_DETAIL_ND_SITE_ID'', siteID);',
'    $s(''P56_RAD_DETAIL_ND_RADIATION_NO'', radiationNO);',
'',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10868483974223720)
,p_event_id=>wwv_flow_imp.id(10867915101223715)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(107221082405935302)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10871340666223749)
,p_name=>'PopulatePlanningSiteId'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_ND_DOSE_CONSTRAINT_SITE'
,p_condition_element=>'P56_ND_DOSE_CONSTRAINT_SITE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10871479617223750)
,p_event_id=>wwv_flow_imp.id(10871340666223749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item("P56_DOSE_CONSTRAINT_SITE_ID").setValue($v("P56_ND_DOSE_CONSTRAINT_SITE"));'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13150191062075826)
,p_event_id=>wwv_flow_imp.id(10871340666223749)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'P_CUR_RESULT SYS_REFCURSOR;',
'EX_CUSTOM EXCEPTION;',
'L_RADIATION_NO           RADIATION.RAD_PLAN_CHECKLIST_DTL.RADIATION_NO%TYPE;',
'L_SITE_ID                RADIATION.RAD_PLAN_CHECKLIST_DTL.SITE_ID%TYPE;',
'L_PLAN_ID                RADIATION.RAD_PLAN_CHECKLIST_DTL.PLAN_ID%TYPE;',
'L_PARAMETER_ID           RADIATION.RAD_PLAN_CHECKLIST_DTL.PARAMETER_ID%TYPE;',
'L_PARAMETER_DESC         RADIATION.QA_PARAMETERS.DESCRIPTION%TYPE;',
'L_PARAMETER_VALUE        RADIATION.RAD_PLAN_CHECKLIST_DTL.PARAMETER_VALUE%TYPE;',
'L_REMARKS                RADIATION.RAD_PLAN_CHECKLIST_DTL.REMARKS%TYPE;',
'L_VALUE_TYPE             RADIATION.PARAMETER_VALUE.VALUE_TYPE%TYPE;',
'L_REFERENCE_VALUE        RADIATION.PLAN_APPROVAL_CHECK_SETUP.REFERENCE_VALUE%TYPE;',
'L_ACHIEVED_VALUE         RADIATION.RAD_PLAN_CHECKLIST_DTL.ACHIEVED_VALUE%TYPE;',
'L_DOSE_CONTRAINT_SITE_ID RADIATION.RAD_PLAN_CHECKLIST_DTL.DOSE_CONTRAINT_SITE_ID%TYPE;',
'P_BLOCK_DATA             RADIATION.PKG_S18FRM00137.RAD_PLAN_CHECKLIST_DTL_TAB;',
'L_ND_SORT_BY             VARCHAR2(100);',
'L_ALERT_TEXT             VARCHAR2(4000);',
'BEGIN',
'',
':P56_ERROR_MESSAGE := NULL;',
'',
'IF :P56_RAD_PLAN_ND_PLAN_ID IS NULL THEN',
'L_ALERT_TEXT := ''Plan is not created yet, cannot proceed'';',
'RAISE EX_CUSTOM;',
'END IF;',
'',
'BEGIN',
'RADIATION.PKG_S18FRM00137.UPDATE_PLAN_PARAMETERS(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                             P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                             P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID);',
'',
'END;',
'',
'BEGIN',
'OPEN P_CUR_RESULT FOR',
'SELECT DISTINCT PCP.DESCRIPTION     PARAM_DESCRIPTION,',
'              PCS.PARAMETER_ID    PARAMETER_ID,',
'              PCS.REFERENCE_VALUE REFERENCE_VALUE,',
'              PCS.SORT_BY,',
'              PCS.SITE_ID',
'FROM RADIATION.PLAN_APPROVAL_CHECK_SETUP PCS,',
'     RADIATION.PLAN_CHECK_PARAMETERS     PCP',
'WHERE PCS.ORGANIZATION_ID = NVL(:GV_ORGANIZATION_ID, ''SKM'')',
' AND PCS.LOCATION_ID = NVL(:GV_LOCATION_ID, ''001'')',
' AND PCS.ACTIVE = ''Y''',
' AND PCP.PARAMETER_ID = PCS.PARAMETER_ID',
' AND PCP.ACTIVE = ''Y''',
' AND PCS.SITE_ID = :P56_ND_DOSE_CONSTRAINT_SITE',
'ORDER BY PCS.SORT_BY;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
'',
'BEGIN',
'LOOP',
'FETCH P_CUR_RESULT',
'INTO L_PARAMETER_DESC,',
'     L_PARAMETER_ID,',
'     L_REFERENCE_VALUE,',
'     L_ND_SORT_BY,',
'     L_DOSE_CONTRAINT_SITE_ID;',
'EXIT WHEN P_CUR_RESULT%NOTFOUND;',
'',
'BEGIN',
'SELECT :P56_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'       :P56_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'       :P56_RAD_PLAN_ND_PLAN_ID        PLAN_ID,',
'       L_PARAMETER_ID                  PARAMETER_ID,',
'       L_PARAMETER_DESC                PARAMETER_DESC,',
'       NULL                            PARAMETER_VALUE,',
'       NULL                            REMARKS,',
'       NULL                            VALUE_TYPE,',
'       L_REFERENCE_VALUE               REFERENCE_VALUE,',
'       NULL                            ACHIEVED_VALUE,',
'       L_DOSE_CONTRAINT_SITE_ID        DOSE_CONTRAINT_SITE_ID',
'  BULK COLLECT',
'  INTO P_BLOCK_DATA',
'  FROM DUAL;',
'',
'BEGIN',
'  RADIATION.PKG_S18FRM00137.INSERT_RAD_PLAN_DTL(P_BLOCK_DATA,',
'                                                :P56_ND_DOSE_CONSTRAINT_SITE);',
'END;',
'',
'END;',
'END LOOP;',
'EXCEPTION',
'WHEN OTHERS THEN',
'L_ALERT_TEXT := SQLERRM;',
'END;',
'',
':P56_SUCCESS_MSG_MAIN := ''Checlist populated successfully.'';',
'',
'EXCEPTION',
'WHEN EX_CUSTOM THEN',
':P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'',
'WHEN OTHERS THEN',
'L_ALERT_TEXT       := SQLERRM;',
'L_ALERT_TEXT       := SUBSTR(L_ALERT_TEXT,',
'                         INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'L_ALERT_TEXT       := SUBSTR(L_ALERT_TEXT,',
'                         1,',
'                         INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
':P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'',
'END;',
''))
,p_attribute_02=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID,P56_RAD_PLAN_ND_PLAN_ID,P56_ND_DOSE_CONSTRAINT_SITE'
,p_attribute_03=>'P56_ERROR_MESSAGE,P56_SUCCESS_MSG_MAIN'
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
 p_id=>wwv_flow_imp.id(13150699074075831)
,p_event_id=>wwv_flow_imp.id(10871340666223749)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P56_SUCCESS_MSG_MAIN.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13150329162075828)
,p_event_id=>wwv_flow_imp.id(10871340666223749)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P56_ERROR_MESSAGE.'
,p_attribute_02=>'System Message '
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323677027686519108)
,p_event_id=>wwv_flow_imp.id(10871340666223749)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10869215919223728)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13150437162075829)
,p_event_id=>wwv_flow_imp.id(10871340666223749)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11149962702163201)
,p_name=>'DAParamList1'
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10869215919223728)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11150066960163202)
,p_event_id=>wwv_flow_imp.id(11149962702163201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").setValue(model.getValue(this.data.selectedRecords[i], "DOSE_CONTRAINT_SITE_ID"));',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62510965561892642)
,p_name=>'ValidateEmployeeCodeAndPassword'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62510724359892640)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62511061937892643)
,p_event_id=>wwv_flow_imp.id(62510965561892642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P56_SIGN_FLAG=''FCS'' OR :P56_SIGN_FLAG IS NULL THEN',
'if RADIATION.PKG_REQUEST.IS_RAD_CONSULTANT(P_USER_MRNO => :P56_DISP_MRNO)=''N'' then',
'    :P56_ERROR_MESSAGE:= ''Only Consultant is allowed to sign, cannot proceed.'';',
'',
'else',
'    DECLARE',
'      L_ALERT_TEXT  VARCHAR2(4000);',
'      L_STOP        VARCHAR2(1);',
'      L_RETURN_ITEM VARCHAR2(100);',
'      EX_EXCEPTION EXCEPTION;',
'    BEGIN',
'      :P56_ERROR_MESSAGE := null;',
'      :P56_SUCCESS_MSG := null;',
'      HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                              :P56_DISP_MRNO,',
'                                              :GV_TERMINAL,',
'                                              :GV_LOCATION_ID,',
'                                              ''PU_LOGIN'',',
'                                              :P56_DISP_MRNO,',
'                                              :P56_PASSWORD,',
'                                              L_RETURN_ITEM,',
'                                              L_ALERT_TEXT,',
'                                              L_STOP);',
'      Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                  ''L_RETURN_ITEM '' || '' L_STOP '' || L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'    ELSE',
'        Apex_Util.Set_Session_State(''P56_VALIDATE'', ''Y'');',
'        :P56_ERROR_MESSAGE := NULL;',
'    ',
'    IF :P56_SIGN_FLAG=''FCS'' THEN',
'        :P56_SIGN_BY_C1:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_C1_NAME:=:P56_NAME;',
'        :P56_FCS:=''Y'';',
'    END IF; ',
'',
'    IF :P56_SIGN_FLAG=''FPS'' THEN',
'        :P56_SIGN_BY_PHY1:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_PHY1_NAME:=:P56_NAME;',
'        :P56_FPS:=''Y'';',
'    END IF;',
'',
'    IF :P56_SIGN_FLAG=''SCS'' THEN',
'        :P56_SIGN_BY_C2:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_C2_NAME:=:P56_NAME;',
'        :P56_SCS:=''Y'';',
'    END IF;',
'    IF :P56_SIGN_FLAG=''SPS'' THEN',
'        :P56_SIGN_BY_PHY2:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_PHY2_NAME:=:P56_NAME;',
'        :P56_SPS:=''Y'';',
'    END IF;',
'END IF;',
'-------sign Procedure--------',
'IF :P56_SIGN_BY_C1 IS NOT NULL AND',
' :P56_SIGN_BY_PHY1 IS NOT NULL AND',
' (:P56_DOUBLE_CONSULTANT = ''N'' OR',
' :P56_SIGN_BY_C2 IS NOT NULL) AND',
' (:P56_DOUBLE_CONSULTANT = ''N'' OR',
' :P56_SIGN_BY_PHY2 IS NOT NULL) THEN',
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'BEGIN',
'RADIATION.PKG_S18FRM00137.SIGN_RAD_PLAN_APPROVAL',
'(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'P_SIGN_BYC1         => :P56_SIGN_BY_C1,',
'P_SIGN_BYP1         => :P56_SIGN_BY_PHY1,',
'P_SIGN_BYC2         => :P56_SIGN_BY_C2,',
'P_SIGN_BYP2         => :P56_SIGN_BY_PHY2,',
'P_RADIATION_NO      => :P56_RADIATION_NO,',
'P_SITE_ID           => :P56_PARAM_SITE_ID,',
'P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID,',
'P_SCHEDULE_SRNO     => :P56_PARAM_SR_NO,',
'P_SCHEDULE_EVENT_ID => NULL,',
'P_OBJECT_CODE       => ''S18APX00049'',',
'P_TERMINAL          => :GV_TERMINAL,',
'P_USER_MRNO         => :GV_USER_MRNO,',
'P_ALERT_TEXT        => L_ALERT_TEXT,',
'P_STOP              => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'   :P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'    Raise_Application_Error (-20343, L_ALERT_TEXT);',
'  ELSE',
'    COMMIT;',
' ',
'      :P56_ERROR_MESSAGE:=''Record SIGNED Properly ...'';',
'    END IF;',
'',
'END;',
'END IF;',
'END;',
'',
'end if;',
'END IF;'))
,p_attribute_02=>'P56_DISP_MRNO,P56_PASSWORD,P56_SIGN_FLAG,P56_PATIENT_MRNO'
,p_attribute_03=>'P56_LOGIN_MESSAGE,P56_TXT_ALERT_TEXT,P56_SUCCESS_MSG_MAIN,P56_FCS,P56_SIGN_BY_C1_NAME,P56_SIGN_BY_C1,P56_SIGN_BY_PHY1,P56_SIGN_BY_PHY1_NAME,P56_FPS,P56_SIGN_BY_C2,P56_SIGN_BY_C2_NAME,P56_SCS,P56_SIGN_BY_PHY2,P56_SIGN_BY_PHY2_NAME,P56_SPS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62511414678892647)
,p_event_id=>wwv_flow_imp.id(62510965561892642)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P56_ERROR_MESSAGE'') !== '''') {',
'    apex.message.alert($v(''P56_ERROR_MESSAGE''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62511533483892648)
,p_name=>'CloseSign'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62510813686892641)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62511669802892649)
,p_event_id=>wwv_flow_imp.id(62511533483892648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme.closeRegion("sign")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62511720242892650)
,p_name=>'OpenSign'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11150589103163207)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13150751634075832)
,p_event_id=>wwv_flow_imp.id(62511720242892650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_COUNT NUMBER := 0;',
'',
'BEGIN',
'  SELECT COUNT(1)',
'    INTO L_COUNT',
'    FROM RADIATION.RAD_PLAN_CHECKLIST_DTL D',
'   WHERE D.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'     AND D.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID',
'     AND D.PLAN_ID = :P56_RAD_PLAN_ND_PLAN_ID;',
'',
'  IF L_COUNT = 0 THEN',
'    :P56_ERROR_MESSAGE := ''Please enter Parameter / Achieved Value to Proceed.'';',
'  END IF;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'  ',
'END;',
''))
,p_attribute_02=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID,P56_RAD_PLAN_ND_PLAN_ID'
,p_attribute_03=>'P56_ERROR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13150875992075833)
,p_event_id=>wwv_flow_imp.id(62511720242892650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P56_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_ERROR_MESSAGE'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(325365913661179501)
,p_event_id=>wwv_flow_imp.id(62511720242892650)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("planparamlist").widget().interactiveGrid("getViews", "grid");',
'var model = grid.model;',
'',
'var hasEmptyRemarks = false;',
'model.forEach(function(record) {',
'    var remarks = model.getValue(record, "ACHIEVED_VALUE").v;',
'   // var remarks = record.ACHIEVED_VALUE;  ',
'   console.log(remarks);',
'    if (remarks == "") {',
'        hasEmptyRemarks = true;',
'    }',
'});',
'',
'if (hasEmptyRemarks) {',
'    apex.message.alert("Please enter Parameter / Achieved Value to Proceed.");',
'    apex.da.cancel();',
'} else if (model.isChanged()) { ',
'      apex.message.alert("Please save recrod first.");',
'    apex.da.cancel();',
' ',
'} else {',
'    null;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234168189697005)
,p_event_id=>wwv_flow_imp.id(62511720242892650)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'  L_RADIATION_MASTER RADIATION.RADIATION_MASTER%ROWTYPE;',
'BEGIN',
'BEGIN',
'  SELECT *',
'    INTO L_RADIATION_MASTER',
'    FROM RADIATION.RADIATION_MASTER',
'   WHERE RADIATION_NO = :P56_RADIATION_NO;',
'',
'',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'    :P56_PATIENT_MRNO := LPAD(SUBSTR(L_RADIATION_MASTER.SIGN_BY_REQUEST, 7), 8, ''0'');',
'    :P56_PATIENT_TYPE := SUBSTR(L_RADIATION_MASTER.SIGN_BY_REQUEST, 0, 6);',
'    :P56_DISP_MRNO    := (:P56_PATIENT_TYPE ||',
'                         LPAD(:P56_PATIENT_MRNO, 8, ''0''));',
'    :P56_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P56_DISP_MRNO);',
' :P56_SIGN_FLAG:=''FCS'' ;',
'END;',
''))
,p_attribute_02=>'P56_RADIATION_NO'
,p_attribute_03=>'P56_PATIENT_TYPE,P56_PATIENT_MRNO,P56_DISP_MRNO,P56_NAME,P56_SIGN_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234026071697004)
,p_event_id=>wwv_flow_imp.id(62511720242892650)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.theme.openRegion("sign");',
'apex.item("P56_PASSWORD").setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66234252486697006)
,p_name=>'SetMRNO'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234318605697007)
,p_event_id=>wwv_flow_imp.id(66234252486697006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_PASSWORD,P56_PATIENT_NAME,P56_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234414286697008)
,p_event_id=>wwv_flow_imp.id(66234252486697006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P56_PATIENT_TYPE IS NOT NULL AND :P56_PATIENT_MRNO IS NOT NULL THEN',
'    :P56_DISP_MRNO := :P56_PATIENT_TYPE || LPAD(:P56_PATIENT_MRNO, 8, ''0'');',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P56_PATIENT_TYPE,P56_PATIENT_MRNO'
,p_attribute_03=>'P56_DISP_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234589055697009)
,p_event_id=>wwv_flow_imp.id(66234252486697006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P56_ERROR_MESSAGE := NULL;',
'  IF :P56_PATIENT_MRNO IS NOT NULL THEN',
'    :P56_DISP_MRNO := :P56_PATIENT_TYPE || LPAD(:P56_PATIENT_MRNO, 8, ''0'');',
'    /* TO CEHCK ACTIVE EMPLOYEE */',
'    IF NVL(HRD.EMPLOYEE.IS_ACTIVE_EMP(:P56_DISP_MRNO), ''N'') = ''N'' THEN',
'      :P56_ERROR_MESSAGE        := ''This is not an active employee.'';',
'      :P56_PATIENT_MRNO := NULL;',
'      :P56_DISP_MRNO    := NULL;',
'      :P56_NAME         := NULL;',
'    ELSE',
'      BEGIN',
'        SELECT FIRST_NAME || '' '' || MIDDLE_NAME || '' '' || LAST_NAME',
'          INTO :P56_NAME',
'          FROM REGISTRATION.PATIENT',
'         WHERE MRNO = :P56_DISP_MRNO',
'           AND ACTIVE = ''Y'';',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          :P56_ERROR_MESSAGE := ''Please Give Appropriate Value For Employee Code'';',
'      END;',
'    ',
'    END IF;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P56_PATIENT_MRNO,P56_NAME'
,p_attribute_03=>'P56_ERROR_MESSAGE,P56_NAME,P56_PATIENT_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234731358697011)
,p_event_id=>wwv_flow_imp.id(66234252486697006)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P56_ERROR.'
,p_attribute_04=>'fa-hand-stop-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66234841406697012)
,p_event_id=>wwv_flow_imp.id(66234252486697006)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P56_NAME:= his.pkg_patient.GET_PATIENT_NAME(:P56_DISP_MRNO);'
,p_attribute_02=>'P56_DISP_MRNO'
,p_attribute_03=>'P56_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12230944589052317)
,p_name=>'DADoubleConsultant1'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_DOUBLE_CONSULTANT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12231062629052318)
,p_event_id=>wwv_flow_imp.id(12230944589052317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P56_DOUBLE_CONSULTANT") === ''Y'') {',
'',
'    apex.item("P56_SIGN_BY_C2").show();',
'    apex.item("P56_SIGN_BY_C2_NAME").show();',
'    apex.item("SIGN_BY_C2").show();',
'    apex.item("P56_SIGN_BY_PHY2").show();',
'    apex.item("P56_SIGN_BY_PHY2_NAME").show();',
'    apex.item("SIGN_BY_PHY2").show();',
'    apex.item("SIGN_BY_C2").show();',
'',
'}',
'',
'else {',
'',
'    apex.item("P56_SIGN_BY_C2").hide();',
'    apex.item("P56_SIGN_BY_C2_NAME").hide();',
'    apex.item("SIGN_BY_C2").hide();',
'    apex.item("P56_SIGN_BY_PHY2").hide();',
'    apex.item("P56_SIGN_BY_PHY2_NAME").hide();',
'    apex.item("SIGN_BY_PHY2").hide();',
'    apex.item("SIGN_BY_C2").hide();',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12048362896367448)
,p_name=>'ValidationSignPHY1'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11150838721163210)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12696351834338902)
,p_event_id=>wwv_flow_imp.id(12048362896367448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'begin',
'',
'    :P56_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P56_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P56_DISP_MRNO    := (:P56_PATIENT_TYPE ||',
'                         LPAD(:P56_PATIENT_MRNO, 8, ''0''));',
'    :P56_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P56_DISP_MRNO);',
' :P56_SIGN_FLAG:=''FPS'' ;',
'END;',
''))
,p_attribute_03=>'P56_PATIENT_TYPE,P56_PATIENT_MRNO,P56_DISP_MRNO,P56_NAME,P56_SIGN_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12048409417367449)
,p_event_id=>wwv_flow_imp.id(12048362896367448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P56_FCS")==''Y'')',
'{',
'apex.theme.openRegion("sign");',
'}',
'else',
'{',
'    apex.message.alert(''Please sign conultant first'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12696466745338903)
,p_name=>'ValidationSignSCS'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11151138188163213)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12696577924338904)
,p_event_id=>wwv_flow_imp.id(12696466745338903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'begin',
'',
'    :P56_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P56_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P56_DISP_MRNO    := (:P56_PATIENT_TYPE ||',
'                         LPAD(:P56_PATIENT_MRNO, 8, ''0''));',
'    :P56_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P56_DISP_MRNO);',
' :P56_SIGN_FLAG:=''SCS'' ;',
'END;',
''))
,p_attribute_03=>'P56_PATIENT_TYPE,P56_PATIENT_MRNO,P56_DISP_MRNO,P56_NAME,P56_SIGN_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12696683815338905)
,p_event_id=>wwv_flow_imp.id(12696466745338903)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P56_FCS")==''Y'')',
'{',
'apex.theme.openRegion("sign");',
'}',
'else',
'{',
'    apex.message.alert(''Please sign conultant first'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12696737549338906)
,p_name=>'ValidationSignPHY2'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11151444196163216)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12696832905338907)
,p_event_id=>wwv_flow_imp.id(12696737549338906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'begin',
'',
'    :P56_PATIENT_MRNO := LPAD(SUBSTR(:GV_USER_MRNO, 7), 8, ''0'');',
'    :P56_PATIENT_TYPE := SUBSTR(:GV_USER_MRNO, 0, 6);',
'    :P56_DISP_MRNO    := (:P56_PATIENT_TYPE ||',
'                         LPAD(:P56_PATIENT_MRNO, 8, ''0''));',
'    :P56_NAME         := HIS.PKG_PATIENT.GET_PATIENT_NAME(:P56_DISP_MRNO);',
' :P56_SIGN_FLAG:=''SPS'' ;',
'END;',
''))
,p_attribute_03=>'P56_PATIENT_TYPE,P56_PATIENT_MRNO,P56_DISP_MRNO,P56_NAME,P56_SIGN_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12696975226338908)
,p_event_id=>wwv_flow_imp.id(12696737549338906)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P56_FCS")==''Y'')',
'{',
'apex.theme.openRegion("sign");',
'}',
'else',
'{',
'    apex.message.alert(''Please sign conultant first'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35559106101840536)
,p_name=>'EnabledisableFields'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35559268648840537)
,p_event_id=>wwv_flow_imp.id(35559106101840536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//apex.item("P56_ND_DOSE_CONSTRAINT_SITE").disable();',
'apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").hide();',
'apex.item("P56_ND_DOSE_CONSTRAINT_SITE").hide();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35559766344840542)
,p_event_id=>wwv_flow_imp.id(35559106101840536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P56_RAD_PLAN_STATUS_ID") === "015") || ($v("P56_RAD_PLAN_STATUS_ID") === "009")) {',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").hide();',
'    //apex.item("P56_ND_DOSE_CONSTRAINT_SITE").disable();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").show();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").disable();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").hide();',
'    apex.item("save").disable();',
'    apex.item("P56_FREQUENCY").disable();',
'    apex.item("P56_CI_1").disable();',
'    apex.item("P56_DOSE_TO_OAR_1").disable();',
'    apex.item("P56_PTV_COVERAGE_1").disable();',
'    apex.item("P56_INSTRUCTIONS_1").disable();',
'    apex.item("P56_PATHOLOGY_REVIEWED").disable();',
'    apex.item("P56_RADIOLOGY_REVIEWED").disable();',
'    apex.item("P56_PLANNING_ID_PLAN_REVISION").disable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").disable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").disable();',
'',
'}',
'',
'else {',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").show();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE").enable();',
'    apex.item("P56_ND_DOSE_CONSTRAINT_SITE_1").hide();',
'    apex.item("save").enable();',
'    apex.item("P56_FREQUENCY").enable();',
'    apex.item("P56_CI_1").enable();',
'    apex.item("P56_DOSE_TO_OAR_1").enable();',
'    apex.item("P56_PTV_COVERAGE_1").enable();',
'    apex.item("P56_INSTRUCTIONS_1").enable();',
'    apex.item("P56_PATHOLOGY_REVIEWED").enable();',
'    apex.item("P56_RADIOLOGY_REVIEWED").enable();',
'    apex.item("P56_PLANNING_ID_PLAN_REVISION").enable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").enable();',
'    apex.item("P56_REVISION_REASON_PLAN_REVISION").enable();',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43328637495050208)
,p_name=>'DAPhase'
,p_event_sequence=>300
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(106566791994705236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43328519610050207)
,p_event_id=>wwv_flow_imp.id(43328637495050208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT DISTINCT DOSE_CONSTRAINT_SITE_ID',
'    INTO :P56_ND_DOSE_CONSTRAINT_SITE_1',
'    FROM RADIATION.RAD_PLAN_CHECKLIST_DTL   PCD,',
'         RADIATION.DEF_DOSE_CONSTRAINT_SITE DCS',
'   WHERE DCS.DOSE_CONSTRAINT_SITE_ID = PCD.DOSE_CONTRAINT_SITE_ID',
'     AND PCD.RADIATION_NO = :P56_RAD_DETAIL_ND_RADIATION_NO',
'     AND PCD.SITE_ID = :P56_RAD_DETAIL_ND_SITE_ID',
'     AND PCD.PLAN_ID = :P56_RAD_PLAN_ND_PLAN_ID;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P56_RAD_DETAIL_ND_RADIATION_NO,P56_RAD_DETAIL_ND_SITE_ID,P56_RAD_PLAN_ND_PLAN_ID'
,p_attribute_03=>'P56_ND_DOSE_CONSTRAINT_SITE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312107184188618936)
,p_name=>'DAStoreDocument'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11151581515163217)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312107239085618937)
,p_event_id=>wwv_flow_imp.id(312107184188618936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P56_RAD_PLAN_STATUS_ID") === "015") {',
'        apex.message.alert("Site is signed, cannot proceed");',
'       ',
'        apex.da.cancel();',
'    }',
'    if ($v("P56_RAD_PLAN_STATUS_ID") === "009") {',
'        apex.message.alert("Site is cancelled, cannot proceed");',
'         apex.da.cancel();',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312107565817618940)
,p_event_id=>wwv_flow_imp.id(312107184188618936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'V_ERROR         VARCHAR2(4000);',
'BEGIN',
'',
' ',
'--if :P60_DOCUMENTID is null then',
':P56_DOCUMENT_ID := LOB.F_NEXT_COUNTER(P_COUNTER_TYPE   => ''LOB.DOCUMENTS_STORE.DOCUMENT_ID'',',
'                                        P_WHERE_CLAUSE   => NULL,',
'                                        P_LOCATION_ID    => SYS_CONTEXT(''GLOBAL_CONTEXT'', ''LOCATION_ID''),',
'                                        P_CALLING_OBJECT => ''APEX'',',
'                                        P_CALLING_USER   => SYS_CONTEXT(''GLOBAL_CONTEXT'', ''USER_MRNO''),',
'                                        P_CALLING_EVENT  => NULL,',
'                                        P_ERROR          => V_ERROR);',
'--else',
'--null;',
'--end if;                                        ',
'END;'))
,p_attribute_02=>'P56_DOCUMENT_ID'
,p_attribute_03=>'P56_DOCUMENT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312107611868618941)
,p_event_id=>wwv_flow_imp.id(312107184188618936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P56_DOCUMENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312107460874618939)
,p_event_id=>wwv_flow_imp.id(312107184188618936)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MHO.REDIRECT'
,p_attribute_01=>'static'
,p_attribute_02=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_DOCUMENT_ID:&P56_DOCUMENT_ID.'
,p_attribute_04=>'Y'
,p_attribute_05=>'P58_DOCUMENT_ID,P56_DOCUMENT_ID'
,p_attribute_07=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312107777257618942)
,p_name=>'DAViewDocument'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11151631109163218)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312107813307618943)
,p_event_id=>wwv_flow_imp.id(312107777257618942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' if ($v("P56_DOCUMENT_ID") === "") {',
'        apex.message.alert("No Document is Attached.");',
'        apex.da.cancel();',
'    ',
'    }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312107974597618944)
,p_event_id=>wwv_flow_imp.id(312107777257618942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MHO.REDIRECT'
,p_attribute_01=>'static'
,p_attribute_02=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.::P199_SEQ_ID:&P56_DOCUMENT_ID.'
,p_attribute_04=>'Y'
,p_attribute_05=>'P56_DOCUMENT_ID,P199_SEQ_ID'
,p_attribute_07=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312108017996618945)
,p_name=>'DAAfeterDoctorIDLov'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_DISP_DOCTOR'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312108146120618946)
,p_event_id=>wwv_flow_imp.id(312108017996618945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(312108426686618949)
,p_name=>'DAAfeterDoctorIDLov_2'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_PLANNING_ID_PLAN_REVISION'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312108549375618950)
,p_event_id=>wwv_flow_imp.id(312108426686618949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
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
 p_id=>wwv_flow_imp.id(312108240600618947)
,p_name=>'DAAfeterDoctorIDLov_1'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_FREQUENCY'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''F9'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(312108320902618948)
,p_event_id=>wwv_flow_imp.id(312108240600618947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#'' + this.triggeringElement.id + ''_lov_btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323676667971519104)
,p_name=>'DASuccessMessage'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_SUCCESS_MSG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323676788184519105)
,p_event_id=>wwv_flow_imp.id(323676667971519104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P56_SUCCESS_MSG.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_SUCCESS_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323676853990519106)
,p_name=>'DAErrorMessage'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_ERROR_MESSAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323676929496519107)
,p_event_id=>wwv_flow_imp.id(323676853990519106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P56_ERROR_MESSAGE.'
,p_attribute_02=>'System Message'
,p_attribute_03=>'danger'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_ERROR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323677528431519113)
,p_name=>'DATreatmentAbort'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58909800473777440)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323677761662519115)
,p_event_id=>wwv_flow_imp.id(323677528431519113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P56_SUCCESS_MSG").setValue('''');',
'apex.item("P56_ERROR_MESSAGE").setValue('''');',
'apex.server.process("HDRProcessTreatmentAbort",',
'    {',
'',
'        pageItems: [',
'            "P56_RAD_DETAIL_ND_RADIATION_NO",',
'            "P56_RAD_DETAIL_ND_SITE_ID"',
'',
'        ]',
'    },',
'    {',
'        dataType: ''text'',',
'        success: function (data) {',
'            var obj = JSON.parse(data);',
'',
'            if (obj.status === "success") {',
'                apex.item("P56_SUCCESS_MSG").setValue(obj.message);',
'',
'                apex.item("P56_INSTRUCTIONS_1").setValue('''');',
'            } else {',
'                apex.item("P56_ERROR_MESSAGE").setValue(obj.message);',
'            }',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            apex.message.alert("An error occurred: " + textStatus);',
'        }',
'    }',
');',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323677871255519116)
,p_event_id=>wwv_flow_imp.id(323677528431519113)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region(''radphase'').refresh();',
'apex.region(''radplan'').refresh();',
'apex.region(''planparamlist'').refresh();',
'',
'setTimeout(() => {',
'    $(".a-GV").eq(1).grid("setSelection", [$(".a-GV").eq(1).find(".a-GV-w-scroll .a-GV-row").eq(1)]);',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323678512154519123)
,p_name=>'EnterKeyPassword'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent === ''load'' || this.browserEvent.originalEvent.key === ''Enter''  || this.browserEvent.originalEvent.key === ''Tab'' '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323678663700519124)
,p_event_id=>wwv_flow_imp.id(323678512154519123)
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
'  :P56_ERROR_MESSAGE := null;',
'  :P56_SUCCESS_MSG    := null;',
'  :P56_ERROR_MESSAGE          := null;',
'  HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                          :GV_USER_MRNO,',
'                                          :GV_TERMINAL,',
'                                          :GV_LOCATION_ID,',
'                                          ''PU_LOGIN'',',
'                                          :P56_DISP_MRNO,',
'                                          :P56_PASSWORD,',
'                                          L_RETURN_ITEM,',
'                                          L_ALERT_TEXT,',
'                                          L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    :P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'  ELSE',
'    Apex_Util.Set_Session_State(''P56_VALIDATE'', ''Y'');',
'    :P56_ERROR_MESSAGE := NULL;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P56_DISP_MRNO,P56_PASSWORD'
,p_attribute_03=>'P56_SUCCESS_MSG,P56_ERROR_MESSAGE,P56_VALIDATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323678821625519126)
,p_event_id=>wwv_flow_imp.id(323678512154519123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P56_SIGN_FLAG=''FCS'' OR :P56_SIGN_FLAG IS NULL THEN',
'if RADIATION.PKG_REQUEST.IS_RAD_CONSULTANT(P_USER_MRNO => :P56_DISP_MRNO)=''N'' then',
'    :P56_ERROR_MESSAGE:= ''Only Consultant is allowed to sign, cannot proceed.'';',
'',
'else',
'    DECLARE',
'      L_ALERT_TEXT  VARCHAR2(4000);',
'      L_STOP        VARCHAR2(1);',
'      L_RETURN_ITEM VARCHAR2(100);',
'      EX_EXCEPTION EXCEPTION;',
'    BEGIN',
'      :P56_ERROR_MESSAGE := null;',
'      :P56_SUCCESS_MSG := null;',
'      HIS.PKG_S34FRM00030_VITAL_SIGN.PU_LOGIN(''S67FRM00001'',',
'                                              :P56_DISP_MRNO,',
'                                              :GV_TERMINAL,',
'                                              :GV_LOCATION_ID,',
'                                              ''PU_LOGIN'',',
'                                              :P56_DISP_MRNO,',
'                                              :P56_PASSWORD,',
'                                              L_RETURN_ITEM,',
'                                              L_ALERT_TEXT,',
'                                              L_STOP);',
'      Apex_Util.Set_Session_State(''P43_LOGIN_MESSAGE'',',
'                                  ''L_RETURN_ITEM '' || '' L_STOP '' || L_STOP);',
'    IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'      :P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'    ELSE',
'        Apex_Util.Set_Session_State(''P56_VALIDATE'', ''Y'');',
'        :P56_ERROR_MESSAGE := NULL;',
'    ',
'    IF :P56_SIGN_FLAG=''FCS'' THEN',
'        :P56_SIGN_BY_C1:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_C1_NAME:=:P56_NAME;',
'        :P56_FCS:=''Y'';',
'    END IF; ',
'',
'    IF :P56_SIGN_FLAG=''FPS'' THEN',
'        :P56_SIGN_BY_PHY1:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_PHY1_NAME:=:P56_NAME;',
'        :P56_FPS:=''Y'';',
'    END IF;',
'',
'    IF :P56_SIGN_FLAG=''SCS'' THEN',
'        :P56_SIGN_BY_C2:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_C2_NAME:=:P56_NAME;',
'        :P56_SCS:=''Y'';',
'    END IF;',
'    IF :P56_SIGN_FLAG=''SPS'' THEN',
'        :P56_SIGN_BY_PHY2:=:P56_DISP_MRNO;',
'        :P56_SIGN_BY_PHY2_NAME:=:P56_NAME;',
'        :P56_SPS:=''Y'';',
'    END IF;',
'END IF;',
'-------sign Procedure--------',
'IF :P56_SIGN_BY_C1 IS NOT NULL AND',
' :P56_SIGN_BY_PHY1 IS NOT NULL AND',
' (:P56_DOUBLE_CONSULTANT = ''N'' OR',
' :P56_SIGN_BY_C2 IS NOT NULL) AND',
' (:P56_DOUBLE_CONSULTANT = ''N'' OR',
' :P56_SIGN_BY_PHY2 IS NOT NULL) THEN',
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'BEGIN',
'RADIATION.PKG_S18FRM00137.SIGN_RAD_PLAN_APPROVAL',
'(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'P_SIGN_BYC1         => :P56_SIGN_BY_C1,',
'P_SIGN_BYP1         => :P56_SIGN_BY_PHY1,',
'P_SIGN_BYC2         => :P56_SIGN_BY_C2,',
'P_SIGN_BYP2         => :P56_SIGN_BY_PHY2,',
'P_RADIATION_NO      => :P56_RADIATION_NO,',
'P_SITE_ID           => :P56_PARAM_SITE_ID,',
'P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID,',
'P_SCHEDULE_SRNO     => :P56_PARAM_SR_NO,',
'P_SCHEDULE_EVENT_ID => NULL,',
'P_OBJECT_CODE       => ''S18APX00049'',',
'P_TERMINAL          => :GV_TERMINAL,',
'P_USER_MRNO         => :GV_USER_MRNO,',
'P_ALERT_TEXT        => L_ALERT_TEXT,',
'P_STOP              => L_STOP);',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'   :P56_ERROR_MESSAGE := L_ALERT_TEXT;',
'    Raise_Application_Error (-20343, L_ALERT_TEXT);',
'  ELSE',
'    COMMIT;',
' ',
'      :P56_ERROR_MESSAGE:=''Record SIGNED Properly ...'';',
'    END IF;',
'',
'END;',
'END IF;',
'END;',
'',
'end if;',
'END IF;'))
,p_attribute_02=>'P56_DISP_MRNO,P56_PASSWORD,P56_SIGN_FLAG,P56_PATIENT_MRNO'
,p_attribute_03=>'P56_LOGIN_MESSAGE,P56_TXT_ALERT_TEXT,P56_SUCCESS_MSG_MAIN,P56_FCS,P56_SIGN_BY_C1_NAME,P56_SIGN_BY_C1,P56_SIGN_BY_PHY1,P56_SIGN_BY_PHY1_NAME,P56_FPS,P56_SIGN_BY_C2,P56_SIGN_BY_C2_NAME,P56_SCS,P56_SIGN_BY_PHY2,P56_SIGN_BY_PHY2_NAME,P56_SPS,P56_ERROR_ME'
||'SSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323678919630519127)
,p_event_id=>wwv_flow_imp.id(323678512154519123)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P56_ERROR_MESSAGE'') !== '''') {',
'    apex.message.alert($v(''P56_ERROR_MESSAGE''));',
'    apex.da.cancel();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323680846585519146)
,p_name=>'DAClear'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_RAD_PLAN_STATUS_ID'
,p_condition_element=>'P56_RAD_PLAN_STATUS_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323680920429519147)
,p_event_id=>wwv_flow_imp.id(323680846585519146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_FREQUENCY,P56_CI_1,P56_DOSE_TO_OAR_1,P56_PTV_COVERAGE_1,P56_INSTRUCTIONS_1,P56_PATHOLOGY_REVIEWED,P56_RADIOLOGY_REVIEWED,P56_PLANNING_ID_PLAN_REVISION,P56_REVISION_REASON_PLAN_REVISION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(323681004776519148)
,p_name=>'DAClear_1'
,p_event_sequence=>410
,p_condition_element=>'P56_RAD_PLAN_STATUS_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(323681180363519149)
,p_event_id=>wwv_flow_imp.id(323681004776519148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_FREQUENCY,P56_CI_1,P56_DOSE_TO_OAR_1,P56_PTV_COVERAGE_1,P56_INSTRUCTIONS_1,P56_PATHOLOGY_REVIEWED,P56_RADIOLOGY_REVIEWED,P56_PLANNING_ID_PLAN_REVISION,P56_REVISION_REASON_PLAN_REVISION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13152058521075845)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMLProcessRadiationPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_BLOCK_DATA           RADIATION.PKG_S18FRM00137.RAD_PLAN_APPROVAL_TAB;',
'  L_MRNO                 RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_MASTER_TAB RADIATION.PKG_S18FRM00137.RADIATION_MASTER_TAB;',
'BEGIN',
'  BEGIN',
'    SELECT :P56_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           NULL                            RADIATION_DATE,',
'           NULL                            MRNO,',
'           NULL                            PATIENT_NAME,',
'           NULL                            DISP_AGE,',
'           NULL                            DISP_GENDER,',
'           NULL                            PRIORITY,',
'           NULL                            REMARKS,',
'           :P56_DISP_DOCTOR                DOCTOR_ID,',
'           NULL                            DISP_DOCTOR,',
'           NULL                            TREATMENT_INTENT_ID,',
'           NULL                            DISP_TREATMENT_INTENT,',
'           NULL                            ICDNO,',
'           NULL                            DISP_DIAGNOSIS,',
'           NULL                            STATUS_REQUEST,',
'           NULL                            SIGN_BY_REQUEST,',
'           NULL                            REQUEST_ENTERED_BY,',
'           NULL                            ANAESTHESIA,',
'           NULL                            CHEMOTHERAPY,',
'           NULL                            CHEMOTHERAPY_REMARKS,',
'           NULL                            SIMULATION_DATE,',
'           NULL                            STATUS_DESC,',
'           NULL                            ACTIVE_REQUEST',
'      BULK COLLECT',
'      INTO L_RADIATION_MASTER_TAB',
'      FROM DUAL;',
'  END;',
'',
'  RADIATION.PKG_S18FRM00137.UPDATE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'  ',
'  BEGIN',
'    SELECT :P56_RAD_DETAIL_ND_RADIATION_NO    RADIATION_NO,',
'           :P56_RAD_DETAIL_ND_SITE_ID         SITE_ID,',
'           NULL                               FROM_FRACTION_ID,',
'           NULL                               TO_FRACTION_ID,',
'           :P56_RAD_PLAN_ND_PLAN_ID           PLAN_ID,',
'           NULL                               PI_DOCTOR_ID,',
'           :P56_PTV_COVERAGE_1                PTV_COVERAGE,',
'           :P56_DOSE_TO_OAR_1                 DOSE_TO_OAR,',
'           :P56_CI_1                          CI,',
'           :P56_INSTRUCTIONS_1                INSTRUCTIONS,',
'           NULL                               STATUS_ID,',
'           NULL                               STATUS_DESC,',
'           :P56_FREQUENCY                     FREQUENCY_ID,',
'           NULL                               FREQUENCY_DESC,',
'           NULL                               SIGN_DATE,',
'           NULL                               SIGN_BY_C1,',
'           NULL                               SIGN_BY_C1_DESC,',
'           NULL                               SIGN_BY_C2,',
'           NULL                               SIGN_BY_C2_DESC,',
'           NULL                               SIGN_BY_P1,',
'           NULL                               SIGN_BY_P1_DESC,',
'           NULL                               SIGN_BY_P2,',
'           NULL                               SIGN_BY_P2_DESC,',
'           NULL                               DOCUMENT_ID,',
'           :P56_PATHOLOGY_REVIEWED            PATH_REVIEWED,',
'           :P56_RADIOLOGY_REVIEWED            RAD_REVIEWED,',
'           :P56_REVISION_REASON_PLAN_REVISION REVISION_REASON,',
'           :P56_PLANNING_ID_PLAN_REVISION     PLANNING_ID,',
'           NULL                               DISP_PLANNING',
'      BULK COLLECT',
'      INTO L_BLOCK_DATA',
'      FROM DUAL;',
'  END;',
'',
'  RADIATION.PKG_S18FRM00137.UPDATE_RAD_PLAN_APPROVAL(L_BLOCK_DATA);',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P56_ERROR_MESSAGE := ''PROCEDURE NAME:'' ||',
'                          SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                          $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                          '' ERROR MESSAGE: '' || SQLERRM;',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P56_ERROR_MESSAGE.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(58907830117777435)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record saved properly'
,p_internal_uid=>13152058521075845
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58940031392777465)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessCreatePlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  ---  :P56_PARAM_MRNO := :P56_MRNO;',
'',
'  RADIATION.PKG_S18FRM00137.CREATE_NEW_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                            P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                            P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                            P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00048'',',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(58909067151777439)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Radiotherapy Plan saved Successfully.'
,p_internal_uid=>58940031392777465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58940427832777466)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessDisposePlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  ---  :P56_PARAM_MRNO := :P56_MRNO;',
'',
'  RADIATION.PKG_S18FRM00137.DISPOSE_RAD_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                             P_SIGN_FLAG         => ''I'',',
'                                             P_SIGN_BY           => :GV_USER_MRNO,',
'                                             P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                             P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID,',
'                                             P_OBJECT_CODE       => ''S18APX00048'',',
'                                             P_TERMINAL          => :GV_TERMINAL,',
'                                             P_USER_MRNO         => :GV_USER_MRNO,',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(58909473217777440)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Radiotherapy Plan DISPOSED Properly ...'
,p_internal_uid=>58940427832777466
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11151758508163219)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessTreatmentAbort'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  ---  :P56_PARAM_MRNO := :P56_MRNO;',
'',
'  RADIATION.PKG_REQUEST.RAD_TREATMENT_ABORT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                            P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                            P_SIGN_BY           => :GV_USER_MRNO,',
'                                            P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00048'',',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
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
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(58909800473777440)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Treatment Aborted successfully ...'
,p_internal_uid=>11151758508163219
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57399782303054141)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(107221082405935302)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Plan - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>57399782303054141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10870843876223744)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10869215919223728)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Plan Approval Parameters  - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PLAN_CHECKLIST_DTL_TAB RADIATION.PKG_S18FRM00137.RAD_PLAN_CHECKLIST_DTL_TAB;',
'BEGIN',
'',
'  SELECT :P56_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'         :P56_RAD_DETAIL_ND_SITE_ID      SITE_ID,',
'         :P56_RAD_PLAN_ND_PLAN_ID        PLAN_ID,',
'         :PARAMETER_ID                   PARAMETER_ID,',
'         NULL                            PARAMETER_DESC,',
'         :PARAMETER_VALUE                PARAMETER_VALUE,',
'         :REMARKS                        REMARKS,',
'         NULL                            VALUE_TYPE,',
'         NULL                            REFERENCE_VALUE,',
'         :ACHIEVED_VALUE                 ACHIEVED_VALUE,',
'         :P56_ND_DOSE_CONSTRAINT_SITE    DOSE_CONTRAINT_SITE_ID',
'    BULK COLLECT',
'    INTO L_RAD_PLAN_CHECKLIST_DTL_TAB',
'    FROM DUAL;',
'',
'  CASE :APEX$ROW_STATUS',
'  ',
'    WHEN ''C'' THEN',
'      NULL;',
'    ',
'    WHEN ''U'' THEN',
'      RADIATION.PKG_S18FRM00137.UPDATE_RAD_PLAN_DTL(L_RAD_PLAN_CHECKLIST_DTL_TAB,',
'                                                    :P56_ND_DOSE_CONSTRAINT_SITE);',
'    ',
'    WHEN ''D'' THEN',
'      NULL;',
'    ',
'  END CASE;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P56_ERROR_MESSAGE := ''PROCEDURE NAME:'' ||',
'                          SYS_CONTEXT(''USERENV'', ''CURRENT_SCHEMA'') || ''.'' ||',
'                          $$PLSQL_UNIT || '' LINE NO: '' || $$PLSQL_LINE ||',
'                          '' ERROR MESSAGE: '' || SQLERRM;',
'  ',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_error_message=>'&P56_ERROR_MESSAGE.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10870843876223744
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58939607195777465)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SetMRNOfromRadiationMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P46_PATIENT_MRNO IS NOT NULL THEN',
'    :P56_MRNO := :P46_PATIENT_MRNO;',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>58939607195777465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58939266891777465)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         RADIATION_DATE,',
'         MRNO,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_NAME(MRNO) PATIENT_NAME,',
'         RADIATION.PKG_RADIATION.GET_PATIENT_AGE(MRNO) DISP_AGE,',
'         HIS.PKG_PATIENT.GET_GENDER(MRNO) DISP_GENDER,',
'         DOCTOR_ID,',
'         M.DOCTOR_ID DISP_DOCTOR,--HIS.PKG_DOCTOR.GET_DOCTOR_NAME(M.DOCTOR_ID, NULL)  DISP_DOCTOR,',
'         RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(TREATMENT_INTENT_ID) DISP_INTENT',
'    INTO :P56_RADIATION_NO,',
'         :P56_RADIATION_DATE,',
'         :P56_MRNO,',
'         :P56_PATIENT_NAME,',
'         :P56_DISP_AGE,',
'         :P56_DISP_GENDER,',
'         :P56_DOCTOR_ID,',
'         :P56_DISP_DOCTOR,',
'         :P56_DISP_INTENT',
'    FROM RADIATION.RADIATION_MASTER M',
'   WHERE RADIATION_NO =',
'         NVL(:P56_RADIATION_NO,',
'             RADIATION.PKG_REQUEST.GET_ACTIVE_RADIATION_NO(P_MRNO              => :P56_MRNO,',
'                                                           P_RADIOTHERAPY_TYPE => ''T''))',
'     AND MRNO LIKE CASE',
'           WHEN :P56_MRNO IS NOT NULL THEN',
'            ''%'' || :P56_MRNO',
'           ELSE',
'            MRNO',
'         END',
'     AND RADIOTHERAPY_TYPE = ''T''',
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
,p_internal_uid=>58939266891777465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58938839665777465)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ProcessRadiationPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_STOP       CHAR(1);',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  EX_CUSTOM EXCEPTION;',
'  L_CNT        NUMBER;',
'  L_BLOCK_DATA RADIATION.PKG_S18FRM00137.RAD_PLAN_APPROVAL_TAB;',
'  L_STATUS     VARCHAR2(50) := APEX_APPLICATION.G_x01;',
'BEGIN',
'',
'  SELECT :P56_RADIATION_NO_1         RADIATION_NO,',
'         :P56_SITE_ID_1              SITE_ID,',
'         :P56_FOLLOWUP_ID            FOLLOWUP_ID,',
'         :P56_LAST_FRACTION_ID       LAST_FRACTION_ID,',
'         :P56_WEEK_NO_1              WEEK_NO,',
'         NULL                        WEEK_DESCRIPTION,',
'         :P56_SCHEDULE_SRNO_1        SCHEDULE_SRNO,',
'         :P56_OC_SERIAL_NO_1         OC_SERIAL_NO,',
'         :P56_CHEMO_LAST_CYCLE       CHEMO_LAST_CYCLE,',
'         :P56_CHEMO_NEXT_CYCLE       CHEMO_NEXT_CYCLE,',
'         :P56_ORAL_CHEMO_PRESCRIBED  ORAL_CHEMO_PRESCRIBED,',
'         :P56_REMARKS                REMARKS,',
'         NULL                        SIGN_BY,',
'         NULL                        SIGN_BY_NAME,',
'         NULL                        SIGN_DATE,',
'         NULL                        STATUS_ID,',
'         NULL                        STATUS_DESC,',
'         :P56_SIDE_EFFECTS           SIDE_EFFECTS,',
'         :P56_DIET                   DIET,',
'         :P56_GENERAL_MEASURE        GENERAL_MEASURE,',
'         :P56_PERSONAL_HYGIENE       PERSONAL_HYGIENE,',
'         :P56_FU_INSTRUCTIONS        FU_INSTRUCTIONS,',
'         :P56_PAT_FAMILY_EDU         PAT_FAMILY_EDU,',
'         :P56_PAT_FAMILY_EDU_REMARKS PAT_FAMILY_EDU_REMARKS',
'    BULK COLLECT',
'    INTO L_BLOCK_DATA',
'    FROM DUAL;',
'',
'  IF L_STATUS = ''CREATE'' THEN',
'    -- Create ',
'    RADIATION.PKG_S18FRM00131.INSERT_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''UPDATE'' THEN',
'    -- Update',
'    RADIATION.PKG_S18FRM00131.UPDATE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  ',
'  ELSIF L_STATUS = ''DELETE'' THEN',
'    -- Delete',
'    RADIATION.PKG_S18FRM00131.DELETE_RAD_FOLLOWUP(L_BLOCK_DATA);',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(''response'',',
'                  ''Radiotheraphy Followup Updated successfully.'');',
'  APEX_JSON.WRITE(''status'', ''success'');',
'  APEX_JSON.CLOSE_OBJECT;',
'EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    -- In case of back-end exception ',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'  WHEN OTHERS THEN',
'    L_ALERT_TEXT := SQLERRM;',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, INSTR(L_ALERT_TEXT, ''~~~'') + 3);',
'    L_ALERT_TEXT := SUBSTR(L_ALERT_TEXT, 1, INSTR(L_ALERT_TEXT, ''~~~'') - 1);',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(''response'', L_ALERT_TEXT);',
'    APEX_JSON.WRITE(''status'', ''error'');',
'    APEX_JSON.CLOSE_OBJECT;',
'    L_STOP := ''Y'';',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>58938839665777465
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
 p_id=>wwv_flow_imp.id(323676309596519101)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDRProcessCreatePlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN ',
'  RADIATION.PKG_S18FRM00137.CREATE_NEW_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                            P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                            P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                            P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00048'',',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Plan saved Successfully.'');',
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
'   '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>323676309596519101
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(323676432848519102)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDRProcessDisposePlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN ',
'  RADIATION.PKG_S18FRM00137.DISPOSE_RAD_PLAN(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                             P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                             P_SIGN_FLAG         => ''I'',',
'                                             P_SIGN_BY           => :GV_USER_MRNO,',
'                                             P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                             P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                             P_PLAN_ID           => :P56_RAD_PLAN_ND_PLAN_ID,',
'                                             P_OBJECT_CODE       => ''S18APX00048'',',
'                                             P_TERMINAL          => :GV_TERMINAL,',
'                                             P_USER_MRNO         => :GV_USER_MRNO,',
'                                             P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                             P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Radiotherapy Plan Disposed successfully.'');',
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
'   '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>323676432848519102
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(323677434365519112)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDRProcessTreatmentAbort'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN ',
'  RADIATION.PKG_REQUEST.RAD_TREATMENT_ABORT(P_ORGANIZATION_ID   => :GV_ORGANIZATION_ID,',
'                                            P_LOGIN_LOCATION_ID => :GV_LOCATION_ID,',
'                                            P_SIGN_BY           => :GV_USER_MRNO,',
'                                            P_RADIATION_NO      => :P56_RAD_DETAIL_ND_RADIATION_NO,',
'                                            P_SITE_ID           => :P56_RAD_DETAIL_ND_SITE_ID,',
'                                            P_OBJECT_CODE       => ''S18APX00048'',',
'                                            P_TERMINAL          => :GV_TERMINAL,',
'                                            P_USER_MRNO         => :GV_USER_MRNO,',
'                                            P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                            P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Treatment Aborted successfully'');',
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
'   ',
' '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>323677434365519112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(323677933106519117)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HDRDMLProcessRadiationPlan'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_BLOCK_DATA           RADIATION.PKG_S18FRM00137.RAD_PLAN_APPROVAL_TAB;',
'  L_MRNO                 RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'  L_RADIATION_MASTER_TAB RADIATION.PKG_S18FRM00137.RADIATION_MASTER_TAB;',
'  L_ALERT_TEXT VARCHAR2(4000) := NULL;',
'  L_STOP       CHAR(1) := ''N'';',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  BEGIN',
'    SELECT :P56_RAD_DETAIL_ND_RADIATION_NO RADIATION_NO,',
'           NULL                            RADIATION_DATE,',
'           NULL                            MRNO,',
'           NULL                            PATIENT_NAME,',
'           NULL                            DISP_AGE,',
'           NULL                            DISP_GENDER,',
'           NULL                            PRIORITY,',
'           NULL                            REMARKS,',
'           :P56_DISP_DOCTOR                DOCTOR_ID,',
'           NULL                            DISP_DOCTOR,',
'           NULL                            TREATMENT_INTENT_ID,',
'           NULL                            DISP_TREATMENT_INTENT,',
'           NULL                            ICDNO,',
'           NULL                            DISP_DIAGNOSIS,',
'           NULL                            STATUS_REQUEST,',
'           NULL                            SIGN_BY_REQUEST,',
'           NULL                            REQUEST_ENTERED_BY,',
'           NULL                            ANAESTHESIA,',
'           NULL                            CHEMOTHERAPY,',
'           NULL                            CHEMOTHERAPY_REMARKS,',
'           NULL                            SIMULATION_DATE,',
'           NULL                            STATUS_DESC,',
'           NULL                            ACTIVE_REQUEST',
'      BULK COLLECT',
'      INTO L_RADIATION_MASTER_TAB',
'      FROM DUAL;',
'  END;',
'',
'  RADIATION.PKG_S18FRM00137.UPDATE_RADIATION_MASTER(L_RADIATION_MASTER_TAB);',
'  ',
'  BEGIN',
'    SELECT :P56_RAD_DETAIL_ND_RADIATION_NO    RADIATION_NO,',
'           :P56_RAD_DETAIL_ND_SITE_ID         SITE_ID,',
'           NULL                               FROM_FRACTION_ID,',
'           NULL                               TO_FRACTION_ID,',
'           :P56_RAD_PLAN_ND_PLAN_ID           PLAN_ID,',
'           NULL                               PI_DOCTOR_ID,',
'           :P56_PTV_COVERAGE_1                PTV_COVERAGE,',
'           :P56_DOSE_TO_OAR_1                 DOSE_TO_OAR,',
'           :P56_CI_1                          CI,',
'           :P56_INSTRUCTIONS_1                INSTRUCTIONS,',
'           NULL                               STATUS_ID,',
'           NULL                               STATUS_DESC,',
'           :P56_FREQUENCY                     FREQUENCY_ID,',
'           NULL                               FREQUENCY_DESC,',
'           NULL                               SIGN_DATE,',
'           NULL                               SIGN_BY_C1,',
'           NULL                               SIGN_BY_C1_DESC,',
'           NULL                               SIGN_BY_C2,',
'           NULL                               SIGN_BY_C2_DESC,',
'           NULL                               SIGN_BY_P1,',
'           NULL                               SIGN_BY_P1_DESC,',
'           NULL                               SIGN_BY_P2,',
'           NULL                               SIGN_BY_P2_DESC,',
'           :P56_DOCUMENT_ID                   DOCUMENT_ID,',
'           :P56_PATHOLOGY_REVIEWED            PATH_REVIEWED,',
'           :P56_RADIOLOGY_REVIEWED            RAD_REVIEWED,',
'           :P56_REVISION_REASON_PLAN_REVISION REVISION_REASON,',
'           :P56_PLANNING_ID_PLAN_REVISION     PLANNING_ID,',
'           NULL                               DISP_PLANNING',
'      BULK COLLECT',
'      INTO L_BLOCK_DATA',
'      FROM DUAL;',
'  END;',
'',
'  RADIATION.PKG_S18FRM00137.UPDATE_RAD_PLAN_APPROVAL(L_BLOCK_DATA);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  APEX_JSON.OPEN_OBJECT;',
'  APEX_JSON.WRITE(P_NAME  => ''message'',',
'                  P_VALUE => ''Record saved successfully'');',
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
'   ',
' '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>323677933106519117
);
wwv_flow_imp.component_end;
end;
/

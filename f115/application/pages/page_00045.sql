prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'RAD_PERFORMANCE_COPY'
,p_alias=>'RAD-PERFORMANCE-COPY'
,p_step_title=>'RAD_PERFORMANCE_COPY'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#report_image_report img{',
'	height: 150px;',
'    width:  100px;',
'',
'}',
'',
'.popup_lov{',
'    background-color: #FFFFCC !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MAZAM'
,p_last_upd_yyyymmddhh24miss=>'20231020175052'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48820160562961483)
,p_plug_name=>'Plan Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>11
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48822058026961502)
,p_plug_name=>'Fraction'
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
'      WHERE RADIATION_NO = :P45_RADIATION_NO_2',
'        AND SITE_ID = :P45_MASTER_SITE_ID',
'        AND FRACTION_ID = :P45_SCHEDULE_FRACTION_ID',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P0_RADIATION_NO,P45_MASTER_SITE_ID,P45_SCHEDULE_FRACTION_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49720326855290777)
,p_plug_name=>'Performance'
,p_parent_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54200284816949217)
,p_plug_name=>'ISO Center'
,p_parent_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
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
'        FROM RADIATION.RAD_PERFORMANCE           P,',
'             RADIATION.RAD_PERFORMANCE_ISOCENTER PI',
'       WHERE P.RADIATION_NO = :P45_RADIATION_NO_2',
'         AND P.SITE_ID = :P45_MASTER_SITE_ID',
'         AND P.FRACTION_ID in (''1.01'', ''1.02'')--:P45_FRACTION_ID',
'         AND P.RADIATION_NO = PI.RADIATION_NO',
'         AND P.SITE_ID = PI.SITE_ID',
'         AND P.FRACTION_ID = PI.FRACTION_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P45_MASTER_SITE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(57166663388130488)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>57166663388130488
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167309245130494)
,p_db_column_name=>'ISOCENTER_ID'
,p_display_order=>1
,p_column_identifier=>'F'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167369636130495)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>2
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167621721130497)
,p_db_column_name=>'TREATMENT_TYPE_DESC'
,p_display_order=>3
,p_column_identifier=>'I'
,p_column_label=>'Treatment Type '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167424025130496)
,p_db_column_name=>'DOSE_FRACTION'
,p_display_order=>4
,p_column_identifier=>'H'
,p_column_label=>'Dose Fraction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167745431130499)
,p_db_column_name=>'STATUS_DESC'
,p_display_order=>5
,p_column_identifier=>'K'
,p_column_label=>'Status '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57168056107130502)
,p_db_column_name=>'PERFORM'
,p_display_order=>6
,p_column_identifier=>'N'
,p_column_label=>'Perform'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<button type="button" class="t-button t-button--primary perform">Perform</button>'
,p_column_link_attr=>'data-radno=#RADIATION_NO# data-siteid=#SITE_ID# data-fractionid=#FRACTION_ID# data-isocenter=#ISOCENTER_ID#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57166770392130489)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>7
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57166848013130490)
,p_db_column_name=>'SITE_ID'
,p_display_order=>8
,p_column_identifier=>'B'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167012554130491)
,p_db_column_name=>'FRACTION_ID'
,p_display_order=>9
,p_column_identifier=>'C'
,p_column_label=>'Fraction Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167075779130492)
,p_db_column_name=>'PHY_PLAN_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phy Plan Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167200346130493)
,p_db_column_name=>'PHASE_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Phase No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167669621130498)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167902757130500)
,p_db_column_name=>'PERFORMED_BY_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Performed By Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57167998891130501)
,p_db_column_name=>'PERFORMED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Performed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57168183515130503)
,p_db_column_name=>'ROWID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57426840718563591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'119512'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ISOCENTER_ID:DESCRIPTION:TREATMENT_TYPE_DESC:DOSE_FRACTION:STATUS_DESC:PERFORM:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54232128664974317)
,p_plug_name=>'Fields'
,p_parent_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'        FROM RADIATION.RAD_PHYSICS_FIELDS RPF',
'       WHERE RPF.RADIATION_NO = :P45_RADIATION_NO_2',
'         AND RPF.SITE_ID = :P45_MASTER_SITE_ID',
'         AND RPF.PHY_PLAN_ID = :P45_PHY_PLAN_ID',
'         AND RPF.ISOCENTER_ID = :P45_ISOCENTER_ID_ND',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P45_MASTER_SITE_ID,P45_PHY_PLAN_ID,P45_ISOCENTER_ID_ND'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(57487637955719578)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>57487637955719578
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488171799719583)
,p_db_column_name=>'FIELD_NO'
,p_display_order=>1
,p_column_identifier=>'E'
,p_column_label=>'Field No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488317231719584)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>2
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488460047719586)
,p_db_column_name=>'ENERGY_DESC'
,p_display_order=>3
,p_column_identifier=>'H'
,p_column_label=>'Energy'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488589255719587)
,p_db_column_name=>'GANTARY_ANGLE'
,p_display_order=>4
,p_column_identifier=>'I'
,p_column_label=>'Gantary '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488640480719588)
,p_db_column_name=>'SSD'
,p_display_order=>5
,p_column_identifier=>'J'
,p_column_label=>'SSD'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488802604719589)
,p_db_column_name=>'M_U'
,p_display_order=>6
,p_column_identifier=>'K'
,p_column_label=>'M.U'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57487768361719579)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57487863913719580)
,p_db_column_name=>'SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57487934778719581)
,p_db_column_name=>'PHY_PLAN_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Phy Plan Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488024661719582)
,p_db_column_name=>'ISOCENTER_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Isocenter Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488411452719585)
,p_db_column_name=>'ENERGY_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Energy Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57603816966789455)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121281'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RADIATION_NO:SITE_ID:PHY_PLAN_ID:ISOCENTER_ID:FIELD_NO:DESCRIPTION:ENERGY_ID:ENERGY_DESC:GANTARY_ANGLE:SSD:M_U'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54864445250059283)
,p_plug_name=>'Radiation Accessories'
,p_parent_plug_id=>wwv_flow_imp.id(48822058026961502)
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
' WHERE RA.RADIATION_NO = :P45_RADIATION_NO_2',
'   AND RA.SITE_ID = :P45_MASTER_SITE_ID',
'   AND RA.TRANS_TYPE = ''CT''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P45_MASTER_SITE_ID'
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
 p_id=>wwv_flow_imp.id(57169453611130516)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MUHAMMADFARHAN'
,p_internal_uid=>57169453611130516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57488863284719590)
,p_db_column_name=>'ACCESSORY_DESCRIPTION'
,p_display_order=>1
,p_column_identifier=>'J'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57170142290130523)
,p_db_column_name=>'REMARKS'
,p_display_order=>2
,p_column_identifier=>'G'
,p_column_label=>'Instruction'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57169558436130517)
,p_db_column_name=>'RADIATION_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Radiation No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57169676825130518)
,p_db_column_name=>'SITE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Site Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57169818852130519)
,p_db_column_name=>'SRNO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Srno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57169848294130520)
,p_db_column_name=>'PHASE_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Phase No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57170006387130521)
,p_db_column_name=>'ACCESSORY_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Accessory Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57170259676130524)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(57170325317130525)
,p_db_column_name=>'RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(P_STATUS_ID=>RA.STATUS_ID)'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Radiation.pkg Radiation.get Status Description(p Status Id=&gt;ra.status Id)'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(57467116521616638)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'119914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCESSORY_DESCRIPTION:REMARKS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51064682571908383)
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
'    SELECT S.RADIATION_NO,',
'             S.SITE_ID,',
'             S.FRACTION_Id,',
'             S.VISIT_DATE FRACTION_DATE,',
'             RADIATION.PKG_RADIATION.GET_STATUS_DESCRIPTION(''020'') STATUS,',
'             0',
'        FROM RADIATION.SCHEDULE S',
'       WHERE S.SR_NO = :P45_SCHEDULE_SRNO_1',
'         /*AND NOT EXISTS (SELECT 1',
'                FROM RADIATION.RAD_PERFORMANCE RP',
'               WHERE RP.RADIATION_NO = S.RADIATION_NO',
'                 AND RP.SITE_ID = S.SITE_ID',
'                 AND RP.FRACTION_ID = S.FRACTION_ID)*/',
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
'       WHERE RP.RADIATION_NO = :P45_RADIATION_NO_2',
'         AND RP.SITE_ID = :P45_MASTER_SITE_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P45_SCHEDULE_SRNO_1,P45_MASTER_SITE_ID'
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
 p_id=>wwv_flow_imp.id(49720263791290776)
,p_name=>'0'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'0'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'0'
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
 p_id=>wwv_flow_imp.id(59045999752007776)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59046030504007777)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59046218238007778)
,p_name=>'FRACTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRACTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraction Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'fractionid'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59046318408007779)
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
 p_id=>wwv_flow_imp.id(59046341308007780)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(57492364817719625)
,p_internal_uid=>57492364817719625
,p_is_editable=>false
,p_lazy_loading=>false
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
 p_id=>wwv_flow_imp.id(59054012438010572)
,p_interactive_grid_id=>wwv_flow_imp.id(57492364817719625)
,p_static_id=>'135783'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(59054134048010574)
,p_report_id=>wwv_flow_imp.id(59054012438010572)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
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
 p_id=>wwv_flow_imp.id(49726303423291112)
,p_view_id=>wwv_flow_imp.id(59054134048010574)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(49720263791290776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59054695385010575)
,p_view_id=>wwv_flow_imp.id(59054134048010574)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(59045999752007776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59055530635010578)
,p_view_id=>wwv_flow_imp.id(59054134048010574)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(59046030504007777)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59056467310010580)
,p_view_id=>wwv_flow_imp.id(59054134048010574)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(59046218238007778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59057354256010583)
,p_view_id=>wwv_flow_imp.id(59054134048010574)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(59046318408007779)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59058233757010586)
,p_view_id=>wwv_flow_imp.id(59054134048010574)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(59046341308007780)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52917407156512432)
,p_plug_name=>'Radiation Performance'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54867115263059309)
,p_plug_name=>'Radiation Site(s)'
,p_region_name=>'mastersite'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>260
,p_plug_grid_column_span=>2
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DESCRIPTION,',
'       D.SITE_ID ID',
'  FROM RADIATION.RADIATION_DETAIL D',
' WHERE D.RADIATION_NO = :P0_RADIATION_NO',
'   AND (:P45_SCHEDULE_SRNO_1 IS NULL OR',
'       D.SITE_ID = (SELECT SITE_ID',
'                       FROM RADIATION.SCHEDULE',
'                      WHERE SR_NO = :P45_SCHEDULE_SRNO_1))',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P0_RADIATION_NO,P45_SCHEDULE_SRNO_1'
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
 p_id=>wwv_flow_imp.id(57166234418130484)
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
 p_id=>wwv_flow_imp.id(57166415942130485)
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
 p_id=>wwv_flow_imp.id(57166164447130483)
,p_internal_uid=>57166164447130483
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
 p_id=>wwv_flow_imp.id(57396509349408304)
,p_interactive_grid_id=>wwv_flow_imp.id(57166164447130483)
,p_static_id=>'119208'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(57396631410408304)
,p_report_id=>wwv_flow_imp.id(57396509349408304)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57397172343408306)
,p_view_id=>wwv_flow_imp.id(57396631410408304)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(57166234418130484)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(57398033327408309)
,p_view_id=>wwv_flow_imp.id(57396631410408304)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(57166415942130485)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79344382383031768)
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
'WHERE MRNO = :P45_MRNO;',
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
 p_id=>wwv_flow_imp.id(45478240173808288)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45478651757808288)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45479033862808288)
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
 p_id=>wwv_flow_imp.id(87124733046383882)
,p_plug_name=>'Sign'
,p_region_name=>'sign_rg'
,p_region_css_classes=>'js-dialog-size1200x450'
,p_region_template_options=>'js-dialog-autoheight:t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>270
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87126304598383897)
,p_plug_name=>'First Technician'
,p_parent_plug_id=>wwv_flow_imp.id(87124733046383882)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87126411690383898)
,p_plug_name=>'Second Technician'
,p_parent_plug_id=>wwv_flow_imp.id(87124733046383882)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45527913646808344)
,p_button_sequence=>110
,p_button_name=>'Fetch'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fetch'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P45_RADIATION_NO_1 IS NOT NULL AND :P45_STATUS_ID = ''015'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45528389152808344)
,p_button_sequence=>120
,p_button_name=>'Sign'
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
 p_id=>wwv_flow_imp.id(45480255222808289)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(87126304598383897)
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
 p_id=>wwv_flow_imp.id(45528712087808344)
,p_button_sequence=>130
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P45_RADIATION_NO_1 IS NOT NULL AND :P45_STATUS_ID NOT IN (''248'', ''015'') THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45482871636808292)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(87126411690383898)
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
 p_id=>wwv_flow_imp.id(45529144869808344)
,p_button_sequence=>140
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P45_STATUS_ID IS NULL THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45529596673808345)
,p_button_sequence=>150
,p_button_name=>'Dispose'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dispose'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P45_RADIATION_NO_1 IS NOT NULL AND :P45_STATUS_ID = ''020'' THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-signature'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45529976440808345)
,p_button_sequence=>160
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'javascript:window.close()'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(45545317048808359)
,p_branch_name=>'Go To Page javascript:openModal("sign_rg")'
,p_branch_action=>'javascript:openModal("sign_rg")'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(45480255222808289)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48836896293961530)
,p_name=>'P45_RADIATION_NO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>163
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48837047121961531)
,p_name=>'P45_SITE_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>173
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48837158826961532)
,p_name=>'P45_FRACTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Fraction Id'
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
 p_id=>wwv_flow_imp.id(48837184850961533)
,p_name=>'P45_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48837336387961534)
,p_name=>'P45_MACHINE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>183
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'MACHINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48837442231961535)
,p_name=>'P45_FRACTION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Fraction Date'
,p_source=>'FRACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(48837782393961538)
,p_name=>'P45_SCHEDULE_SRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>73
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'SRNO'
,p_source=>'SCHEDULE_SRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(48837830861961539)
,p_name=>'P45_OC_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>63
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Order Key'
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
 p_id=>wwv_flow_imp.id(48838113677961542)
,p_name=>'P45_SIGN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>83
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Sign Date'
,p_source=>'SIGN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(48838187432961543)
,p_name=>'P45_STATUS_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>193
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48838707126961548)
,p_name=>'P45_SIMULATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>203
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'SIMULATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48838849954961549)
,p_name=>'P45_PLAN_CHECK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>213
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'PLAN_CHECK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48838981986961550)
,p_name=>'P45_ANAESTHESIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>223
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'ANAESTHESIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48850061018961549)
,p_name=>'P45_DOSE_FRACTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>123
,p_item_plug_id=>wwv_flow_imp.id(49720326855290777)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Planned Dose'
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
 p_id=>wwv_flow_imp.id(48850178994961550)
,p_name=>'P45_PERFORMED_DOSE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>133
,p_item_plug_id=>wwv_flow_imp.id(49720326855290777)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Perf.Dose'
,p_source=>'PERFORMED_DOSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
 p_id=>wwv_flow_imp.id(48850977107961558)
,p_name=>'P45_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>143
,p_item_plug_id=>wwv_flow_imp.id(49720326855290777)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Remarks'
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
 p_id=>wwv_flow_imp.id(48851047524961559)
,p_name=>'P45_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>153
,p_item_plug_id=>wwv_flow_imp.id(49720326855290777)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Plan ID'
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
 p_id=>wwv_flow_imp.id(48851190021961560)
,p_name=>'P45_PHY_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>163
,p_item_plug_id=>wwv_flow_imp.id(49720326855290777)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Phy Plan ID'
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
 p_id=>wwv_flow_imp.id(48864234274961551)
,p_name=>'P45_DOCTOR_ID'
,p_item_sequence=>1159
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48883384300705580)
,p_name=>'P45_HISTORY_RADIATION_NO'
,p_item_sequence=>1009
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51073750914908395)
,p_name=>'P45_MACHINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Machine'
,p_source=>'MACHINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(51073843204908396)
,p_name=>'P45_PLAN_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Plan Remarks'
,p_source=>'PLAN_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(51073905464908397)
,p_name=>'P45_PHYSICIST_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Physicist Remarks'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(51078921398908405)
,p_name=>'P45_FIRST_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'First Technician'
,p_source=>'FIRST_CT_SIGN_NAME'
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
 p_id=>wwv_flow_imp.id(51079067591908406)
,p_name=>'P45_SECOND_CT_SIGN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>93
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Second Technician'
,p_source=>'SECOND_CT_SIGN_NAME'
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
,p_attribute_05=>'null'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51079084539908407)
,p_name=>'P45_STATUS_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Status'
,p_source=>'STATUS_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32767
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
 p_id=>wwv_flow_imp.id(51079270665908408)
,p_name=>'P45_ROWID_1'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>243
,p_item_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54918796069059349)
,p_name=>'P45_RADIATION_NO_ND'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54918823482059350)
,p_name=>'P45_SITE_ID_ND'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54918992369059351)
,p_name=>'P45_FRACTION_NO_ND'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54919080679059352)
,p_name=>'P45_ISOCENTER_ID_ND'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_imp.id(54922840975059390)
,p_name=>'P45_MASTER_SITE_ID'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57544152539719666)
,p_name=>'P45_SCHEDULE_SRNO_1'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57544281279719667)
,p_name=>'P45_SCHEDULE_EVENT_ID'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57544355758719668)
,p_name=>'P45_ALERT'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57546682469719691)
,p_name=>'P45_SCHEDULE_FRACTION_ID'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76875396830816270)
,p_name=>'P45_MRNO'
,p_item_sequence=>1019
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Mrno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76875473774816271)
,p_name=>'P45_PATIENT_NAME_1'
,p_item_sequence=>1029
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Patient Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(76875624728816272)
,p_name=>'P45_SEX'
,p_item_sequence=>1039
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Sex'
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
 p_id=>wwv_flow_imp.id(76875698574816273)
,p_name=>'P45_AGE'
,p_item_sequence=>1049
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Age'
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
 p_id=>wwv_flow_imp.id(76875839845816274)
,p_name=>'P45_UNIT'
,p_item_sequence=>1059
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Unit'
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
 p_id=>wwv_flow_imp.id(76875958532816275)
,p_name=>'P45_SERVICE_NO'
,p_item_sequence=>1069
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Service No'
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
 p_id=>wwv_flow_imp.id(76876010975816276)
,p_name=>'P45_SERVICE_STATUS'
,p_item_sequence=>1079
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Service Status'
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
 p_id=>wwv_flow_imp.id(76876122474816277)
,p_name=>'P45_RANK'
,p_item_sequence=>1089
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Rank'
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
 p_id=>wwv_flow_imp.id(76876184766816278)
,p_name=>'P45_FORMATION'
,p_item_sequence=>1099
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Formation'
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
 p_id=>wwv_flow_imp.id(76876270230816279)
,p_name=>'P45_RADIATION_NO_2'
,p_item_sequence=>1109
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Radiation No'
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
 p_id=>wwv_flow_imp.id(76876367420816280)
,p_name=>'P45_RADIATION_DATE_1'
,p_item_sequence=>1119
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Radiation Date'
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
 p_id=>wwv_flow_imp.id(76876538912816281)
,p_name=>'P45_CONSULTANT'
,p_item_sequence=>1129
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Consultant'
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
 p_id=>wwv_flow_imp.id(76876599363816282)
,p_name=>'P45_TREATMENT_INTENT'
,p_item_sequence=>1139
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Treatment Intent'
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
 p_id=>wwv_flow_imp.id(76876664372816283)
,p_name=>'P45_SITE_DISP'
,p_item_sequence=>1149
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Site'
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
 p_id=>wwv_flow_imp.id(76876766285816284)
,p_name=>'P45_STATUS'
,p_item_sequence=>1179
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_prompt=>'Status'
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
 p_id=>wwv_flow_imp.id(76876941983816285)
,p_name=>'P45_SITE_ID'
,p_item_sequence=>1169
,p_item_plug_id=>wwv_flow_imp.id(52917407156512432)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82592128843428523)
,p_name=>'P45_SETUP_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Setup Position'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
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
 p_id=>wwv_flow_imp.id(82592175821428524)
,p_name=>'P45_ARM_POSITION_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Arm Position'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(82592362528428525)
,p_name=>'P45_POSITION_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Pos. Instruction'
,p_source=>'PHYSICIST_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>250
,p_tag_attributes=>'readonly="readonly;"'
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
 p_id=>wwv_flow_imp.id(82592441574428526)
,p_name=>'P45_SPECIAL_INSTRUCTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_item_source_plug_id=>wwv_flow_imp.id(48822058026961502)
,p_prompt=>'Special Instruction'
,p_source=>'SPECIAL_INSTRUCTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(82592496673428527)
,p_name=>'P45_NECK_POSITION_DESC'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(48820160562961483)
,p_prompt=>'Neck Position '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(87129743985383897)
,p_name=>'P45_MRNO1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87126304598383897)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87129872205383898)
,p_name=>'P45_PATIENT_TYPE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(87126304598383897)
,p_prompt=>'Employee Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87129946710383899)
,p_name=>'P45_DISP_MRNO1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(87126304598383897)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(87130092649383900)
,p_name=>'P45_NAME1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(87126304598383897)
,p_prompt=>'Name1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87130153742383901)
,p_name=>'P45_PASSWORD1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(87126304598383897)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87130324979383902)
,p_name=>'P45_MESSAGE1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(87126304598383897)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87132966311383907)
,p_name=>'P45_MRNO2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(87126411690383898)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87133059261383908)
,p_name=>'P45_PATIENT_TYPE2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(87126411690383898)
,p_prompt=>'Employee Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87133125575383909)
,p_name=>'P45_DISP_MRNO2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(87126411690383898)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(87133205299383910)
,p_name=>'P45_NAME2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(87126411690383898)
,p_prompt=>'Name1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87133362341383911)
,p_name=>'P45_PASSWORD2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(87126411690383898)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87133503051383912)
,p_name=>'P45_MESSAGE2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(87126411690383898)
,p_prompt=>'Message1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45539107138808354)
,p_name=>'DA_PERFORM_ISOCENTER'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.perform'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45540641992808356)
,p_event_id=>wwv_flow_imp.id(45539107138808354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_RADIATION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(this.triggeringElement).parent().data(''radno'')',
'',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45541159227808356)
,p_event_id=>wwv_flow_imp.id(45539107138808354)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_SITE_ID_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''siteid'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45541685855808356)
,p_event_id=>wwv_flow_imp.id(45539107138808354)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_FRACTION_NO_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''fractionid'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45542157081808356)
,p_event_id=>wwv_flow_imp.id(45539107138808354)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_ISOCENTER_ID_ND'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''isocenter'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45539670428808355)
,p_event_id=>wwv_flow_imp.id(45539107138808354)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_ALERT_TEXT VARCHAR2(4000);',
'  L_STOP       CHAR(1);',
'  EX_CUSTOM EXCEPTION;',
'BEGIN',
'  RADIATION.PKG_S18FRM00145.PERFORM_ISOCENTER(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_RADIATION_NO      => :P45_RADIATION_NO_ND,',
'                                              P_SITE_ID           => :P45_SITE_ID_ND,',
'                                              P_FRACTION_ID       => :P45_FRACTION_NO_ND,',
'                                              P_ISOCENTER_ID      => :P45_ISOCENTER_ID_ND,',
'                                              P_OBJECT_CODE       => ''S18APX00039'',',
'                                              P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                              P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
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
,p_attribute_02=>'P45_RADIATION_NO_ND,P45_SITE_ID_ND,P45_FRACTION_NO_ND,P45_ISOCENTER_ID_ND'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45540128063808355)
,p_event_id=>wwv_flow_imp.id(45539107138808354)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54200284816949217)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45535988797808352)
,p_name=>'SetMasterSiteID1'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(54867115263059309)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45536409019808353)
,p_event_id=>wwv_flow_imp.id(45535988797808352)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P45_MASTER_SITE_ID'',_.mastersite.ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45536967036808353)
,p_event_id=>wwv_flow_imp.id(45535988797808352)
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
'apex.item("P45_MASTER_SITE_ID").setValue(i_mastersiteid);'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45537311653808353)
,p_name=>'SetScheduleFractionId'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(51064682571908383)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45537819662808353)
,p_event_id=>wwv_flow_imp.id(45537311653808353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P45_SCHEDULE_FRACTION_ID'',_.fractionhist.FRACTION_ID);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45538237424808354)
,p_name=>'ReQueryRadiationPerformanceRegion'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(51064682571908383)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45538704907808354)
,p_event_id=>wwv_flow_imp.id(45538237424808354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT RADIATION_NO,',
'         SITE_ID,',
'         FRACTION_ID,',
'         ENTRY_DATE,',
'         MACHINE_ID,',
'         FRACTION_DATE,',
'         DOSE_FRACTION,',
'         PERFORMED_DOSE,',
'         SCHEDULE_SRNO,',
'         OC_SERIAL_NO,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY1) FIRST_CT_SIGN_NAME,',
'         HIS.PKG_PATIENT.GET_PATIENT_NAME(SIGN_BY2) SECOND_CT_SIGN_NAME,',
'         SIGN_DATE,',
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
'    INTO :P45_RADIATION_NO_1,',
'         :P45_SITE_ID_1,',
'         :P45_FRACTION_ID,',
'         :P45_ENTRY_DATE,',
'         :P45_MACHINE_ID,',
'         :P45_FRACTION_DATE,',
'         :P45_DOSE_FRACTION,',
'         :P45_PERFORMED_DOSE,',
'         :P45_SCHEDULE_SRNO,',
'         :P45_OC_SERIAL_NO,',
'         :P45_FIRST_CT_SIGN_NAME,',
'         :P45_SECOND_CT_SIGN_NAME,',
'         :P45_SIGN_DATE,',
'         :P45_STATUS_ID,',
'         :P45_STATUS_DESCRIPTION,',
'         :P45_REMARKS,',
'         :P45_PLAN_ID,',
'         :P45_PHY_PLAN_ID,',
'         :P45_SIMULATION_ID,',
'         :P45_PLAN_CHECK_ID,',
'         :P45_ANAESTHESIA,',
'         :P45_SPECIAL_INSTRUCTION,',
'         :P45_MACHINE,',
'         :P45_PLAN_REMARKS,',
'         :P45_PHYSICIST_REMARKS,',
'         :P45_ROWID_1',
'    FROM RADIATION.RAD_PERFORMANCE P',
'   WHERE RADIATION_NO = :P45_RADIATION_NO_2',
'     AND SITE_ID = :P45_MASTER_SITE_ID',
'     AND FRACTION_ID = :P45_SCHEDULE_FRACTION_ID;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P45_MASTER_SITE_ID,P45_SCHEDULE_FRACTION_ID'
,p_attribute_03=>'P45_RADIATION_NO_1,P45_SITE_ID_1,P45_FRACTION_ID,P45_ENTRY_DATE,P45_MACHINE_ID,P45_FRACTION_DATE,P45_DOSE_FRACTION,P45_PERFORMED_DOSE,P45_SCHEDULE_SRNO,P45_OC_SERIAL_NO,P45_FIRST_CT_SIGN_NAME,P45_SECOND_CT_SIGN_NAME,P45_SIGN_DATE,P45_STATUS_ID,P45_ST'
||'ATUS_DESCRIPTION,P45_REMARKS,P45_PLAN_ID,P45_PHY_PLAN_ID,P45_SIMULATION_ID,P45_PLAN_CHECK_ID,P45_ANAESTHESIA,P45_MACHINE,P45_PLAN_REMARKS,P45_PHYSICIST_REMARKS,P45_ROWID_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45542500879808356)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45480255222808289)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45543020262808357)
,p_event_id=>wwv_flow_imp.id(45542500879808356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'                                             P_SITE_ID           => :P45_MASTER_SITE_ID,',
'                                             P_FRACTION_ID       => :P45_FRACTION_ID,',
'                                             P_SCHEDULE_SRNO     => :P45_SCHEDULE_SRNO_1,',
'                                             P_SCHEDULE_EVENT_ID => ''352'',--:P45_SCHEDULE_EVENT_ID,',
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
'    APEX_UTIL.SET_SESSION_STATE(''P45_ALERT'', ''Record signed successfully'');',
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
,p_attribute_02=>'P45_MRNO1,P45_PATIENT_TYPE1,P45_MRNO2,P45_PATIENT_TYPE2,P45_PASSWORD2,P45_PASSWORD1'
,p_attribute_03=>'P45_MESSAGE1,P45_MESSAGE2'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45543489485808358)
,p_name=>'New_1'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45528389152808344)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45543960316808358)
,p_event_id=>wwv_flow_imp.id(45543489485808358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87124733046383882)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45544359676808359)
,p_name=>'New_2'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45482871636808292)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45544866155808359)
,p_event_id=>wwv_flow_imp.id(45544359676808359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87124733046383882)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45533983857808350)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DMLPorcessRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  L_RAD_PERFORM_TAB RADIATION.PKG_S18FRM00145.RAD_PERFORM_TAB;',
'BEGIN',
'  SELECT :P45_RADIATION_NO,',
'         :P45_SITE_ID,',
'         :P45_FRACTION_ID,',
'         :P45_ENTRY_DATE,',
'         :P45_MACHINE_ID,',
'         :P45_FRACTION_DATE,',
'         :P45_DOSE_FRACTION,',
'         :P45_PERFORMED_DOSE,',
'         :P45_SCHEDULE_SRNO,',
'         :P45_OC_SERIAL_NO,',
'         :P45_FIRST_CT_SIGN_NAME,',
'         :P45_SECOND_CT_SIGN_NAME,',
'         NVL(:P45_SIGN_DATE, to_date(sysdate, ''DD-MON-YY HH24:MI'')),',
'         ''020'',',
'         NULL,',
'         :P45_REMARKS,',
'         :P45_PLAN_ID,',
'         :P45_PHY_PLAN_ID,',
'         :P45_SIMULATION_ID,',
'         :P45_PLAN_CHECK_ID,',
'         :P45_ANAESTHESIA,',
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
,p_process_when_button_id=>wwv_flow_imp.id(45528712087808344)
,p_internal_uid=>45533983857808350
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45534399462808351)
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
'                                             P_SITE_ID           => :P45_MASTER_SITE_ID,',
'                                             P_FRACTION_ID       => :P45_FRACTION_ID,',
'                                             P_SCHEDULE_SRNO     => :P45_SCHEDULE_SRNO_1,',
'                                             P_SCHEDULE_EVENT_ID => ''352'',--:P45_SCHEDULE_EVENT_ID,',
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
'    APEX_UTIL.SET_SESSION_STATE(''P45_ALERT'', ''Record signed successfully'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(45528389152808344)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record signed successfully'
,p_internal_uid=>45534399462808351
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45534750060808351)
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
'  RADIATION.PKG_S18FRM00145.CREATE_NEW_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''ORGANIZATION_ID''),',
'                                                   P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                      ''LOCATION_ID''),',
'                                                   P_RADIATION_NO      => :P0_RADIATION_NO,',
'                                                   P_SITE_ID           => :P45_MASTER_SITE_ID,',
'                                                   P_SCHEDULE_SRNO     => :P45_SCHEDULE_SRNO_1,',
'                                                   P_OBJECT_CODE       => ''S18APX00039'',',
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
'',
'  IF nvl(L_STOP,''N'') <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P45_ALERT'', ''Performance created successfully'');',
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
,p_process_when_button_id=>wwv_flow_imp.id(45529144869808344)
,p_process_success_message=>'Performance created successfully'
,p_internal_uid=>45534750060808351
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45535150671808351)
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
'  RADIATION.PKG_S18FRM00145.FETCH_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''ORGANIZATION_ID''),',
'                                              P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''LOCATION_ID''),',
'                                              P_RADIATION_NO      => :P0_RADIATION_NO,',
'                                              P_SITE_ID           => :P45_MASTER_SITE_ID,',
'                                              P_FRACTION_ID       => :R40_FRACTION_ID_ND,',
'                                              P_REASON            => NULL,',
'                                              P_OBJECT_CODE       => ''S18APX00039'',',
'                                              P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''TERMINAL''),',
'                                              P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                 ''USER_MRNO''),',
'                                              P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                              P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P45_ALERT'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(45527913646808344)
,p_process_success_message=>'Performance Fetched successfully'
,p_internal_uid=>45535150671808351
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45535599412808352)
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
'  RADIATION.PKG_S18FRM00145.DELETE_PERFORMANCE(P_ORGANIZATION_ID   => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''ORGANIZATION_ID''),',
'                                               P_LOGIN_LOCATION_ID => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''LOCATION_ID''),',
'                                               P_RADIATION_NO      => :P0_RADIATION_NO,',
'                                               P_SITE_ID           => :P45_MASTER_SITE_ID,',
'                                               P_FRACTION_ID       => :P45_FRACTION_ID,',
'                                               P_OBJECT_CODE       => ''S18APX00039'',',
'                                               P_TERMINAL          => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''TERMINAL''),',
'                                               P_USER_MRNO         => SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                  ''USER_MRNO''),',
'                                               P_ALERT_TEXT        => L_ALERT_TEXT,',
'                                               P_STOP              => L_STOP);',
'',
'  IF NVL(L_STOP, ''N'') = ''Y'' THEN',
'    RAISE EX_CUSTOM;',
'  END IF;',
'',
'  IF L_STOP <> ''Y'' AND L_ALERT_TEXT IS NULL THEN',
'    APEX_UTIL.SET_SESSION_STATE(''P45_ALERT'',',
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
,p_process_when_button_id=>wwv_flow_imp.id(45529596673808345)
,p_process_success_message=>'Performance Disposed successfully'
,p_internal_uid=>45535599412808352
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45533192804808348)
,p_process_sequence=>10
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
'    INTO :P45_ROWID,',
'         :P45_RADIATION_NO,',
'         :P45_RADIATION_DATE,',
'         :P45_MRNO,',
'         :P45_PATIENT_NAME,',
'         :P45_DISP_AGE,',
'         :P45_DISP_GENDER,',
'         :P45_DOCTOR_ID,',
'         :P45_DISP_DOCTOR,',
'         :P45_DISP_INTENT,',
'         :P45_SITE_ID,',
'         :P45_DISP_SITE,',
'         :P45_SETUP_POSITION_DESC,',
'         :P45_ARM_POSITION_DESC,',
'         :P45_NECK_POSITION_DESC,',
'         :P45_POSITION_INSTRUCTION,',
'         :P45_EVENT_DESC',
'    FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'   WHERE M.RADIATION_NO = D.RADIATION_NO',
'     AND M.RADIATION_NO = NVL(:P45_RADIATION_NO_2, M.RADIATION_NO)',
'     AND M.MRNO LIKE CASE',
'           WHEN :P45_MRNO IS NOT NULL THEN',
'            ''%'' || :P45_MRNO',
'           ELSE',
'            M.MRNO',
'         END',
'     AND M.RADIOTHERAPY_TYPE = ''T''',
'     AND (:P45_SCHEDULE_SRNO_1 IS NULL OR',
'         D.SITE_ID = (SELECT SITE_ID',
'                         FROM RADIATION.SCHEDULE',
'                        WHERE SR_NO = :P45_SCHEDULE_SRNO_1))',
'     AND M.STATUS_REQUEST = ''015''',
'     AND NVL(M.NEW_SCHEME, ''~'') = ''Y'';',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>45533192804808348
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45533563844808350)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'InitializeFormRadiationPerformance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT M.RADIATION_NO,',
'M.RADIATION_DATE,',
'M.MRNO,',
'RADIATION.PKG_RADIATION.GET_PATIENT_NAME(M.MRNO) PATIENT_NAME,',
'RADIATION.PKG_RADIATION.GET_PATIENT_AGE(M.MRNO) DISP_AGE,',
'HIS.PKG_PATIENT.GET_GENDER(M.MRNO) DISP_GENDER,',
'HIS.PKG_PATIENT.GET_SERVICE_NO(M.MRNO) SERVICE_NO,',
'HIS.PKG_PATIENT.GET_SERVICE_STATUS_DESC(M.MRNO) SERVICE_STATUS,',
'HIS.PKG_PATIENT.GET_RANK_SHORT_DESC(M.MRNO) RANK,',
'HIS.PKG_PATIENT.GET_PATIENT_FORMATION(M.MRNO) FORMATION,',
'HIS.PKG_PATIENT.GET_PATIENT_UNIT(M.MRNO) UNIT,',
'',
'M.DOCTOR_ID,',
'RADIATION.PKG_RADIATION.GET_DOCTOR_NAME(M.DOCTOR_ID) DISP_DOCTOR,',
'RADIATION.PKG_RADIATION.GET_TREATMENT_INTENT_DESC(M.TREATMENT_INTENT_ID) DISP_INTENT,',
'SITE_ID,',
'RADIATION.PKG_RADIATION.GET_RADIATION_SITE_DESC(D.SITE_ID) DISP_SITE,',
'RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => SETUP_POSITION,',
'                                     P_POSITION_TYPE   => ''S'') SETUP_POSITION_DESC,',
'RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => ARM_POSITION,',
'                                     P_POSITION_TYPE   => ''P'') ARM_POSITION_DESC,',
'RADIATION.PKG_RADIATION.GET_ORDER_POSITION_DESC(P_POSITION_PREFIX => NECK_POSITION,',
'                                     P_POSITION_TYPE   => ''N'') NECK_POSITION_DESC,',
'D.POSITION_INSTRUCTION,',
'RADIATION.PKG_WORKFLOW_RADIATION.GET_EVENT_DESC(P_RADIATION_NO => D.RADIATION_NO,',
'                                     P_SITE_ID      => D.SITE_ID,',
'                                     P_WFE_NO       => D.WFE_NO) EVENT_DESC',
'',
'INTO :P45_RADIATION_NO_2,:P45_RADIATION_DATE_1,:P45_MRNO,:P45_PATIENT_NAME_1,:P45_AGE,:P45_SEX, :P45_SERVICE_NO,:P45_SERVICE_STATUS,:P45_RANK,:P45_SERVICE_STATUS,:P45_UNIT,:P45_DOCTOR_ID',
',:P45_CONSULTANT,:P45_TREATMENT_INTENT,:P45_SITE_ID,:P45_SITE_DISP,:P45_SETUP_POSITION_DESC,:P45_ARM_POSITION_DESC,:P45_NECK_POSITION_DESC,:P45_POSITION_INSTRUCTION,:P45_STATUS',
'FROM RADIATION.RADIATION_MASTER M, RADIATION.RADIATION_DETAIL D',
'WHERE M.RADIATION_NO = D.RADIATION_NO',
'AND M.RADIATION_NO = NVL(:P45_RADIATION_NO_2, M.RADIATION_NO)',
'AND M.MRNO LIKE CASE',
'WHEN :P45_MRNO IS NOT NULL THEN',
'''%'' || :P45_MRNO',
'ELSE',
'M.MRNO',
'END',
'AND M.RADIOTHERAPY_TYPE = ''T''',
'AND (:P45_SCHEDULE_SRNO_1 IS NULL OR',
'D.SITE_ID =',
'(SELECT SITE_ID FROM RADIATION.SCHEDULE WHERE SR_NO = :P45_SCHEDULE_SRNO_1))',
'AND M.STATUS_REQUEST = ''015''',
'AND NVL(M.NEW_SCHEME, ''~'') = ''Y''',
'ORDER BY RADIATION_DATE DESC;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>45533563844808350
);
wwv_flow_imp.component_end;
end;
/

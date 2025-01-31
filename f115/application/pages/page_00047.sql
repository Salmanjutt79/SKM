prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'Appointment History'
,p_alias=>'RADIATION-APPOINTMENT-HISTORY'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment History'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'800'
,p_dialog_max_width=>'800'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'MUHAMMADFARHAN'
,p_last_upd_yyyymmddhh24miss=>'20230919164252'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17761347261646612)
,p_name=>'Appointment Workflow History'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>66
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT T.SR_NO,',
'             RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(P_EVENT_ID => T.EVENT_ID) EVENT,',
'             HIS.PKG_PATIENT.GET_PATIENT_NAME(P_MRNO => T.ENTERED_BY) || '' ('' ||',
'             T.ENTERED_BY || '')'' NAME,',
'             TO_CHAR(T.ENTERED_DATE, ''DD-MM-RR HH24:MI:SS'') TIME,',
'             TO_CHAR(TRUNC(SYSDATE) +',
'                     (T.ENTERED_DATE - LAG(T.ENTERED_DATE)',
'                      OVER(ORDER BY T.ENTERED_DATE)),',
'                     ''HH24:MI'') Duration,',
'             T.REMARKS',
'        FROM RADIATION.SCHEDULE_WORKFLOW T',
'       WHERE T.SR_NO = :P47_SCHEDULE_SRNO',
'       ORDER BY T.ENTERED_DATE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P47_SCHEDULE_SRNO'
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
 p_id=>wwv_flow_imp.id(17761437877646613)
,p_query_column_id=>1
,p_column_alias=>'SR_NO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17761510119646614)
,p_query_column_id=>2
,p_column_alias=>'EVENT'
,p_column_display_sequence=>1
,p_column_heading=>'Event'
,p_use_as_row_header=>'N'
,p_report_column_width=>200
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17761645125646615)
,p_query_column_id=>3
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17761792312646616)
,p_query_column_id=>4
,p_column_alias=>'TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Time'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17761820300646617)
,p_query_column_id=>5
,p_column_alias=>'DURATION'
,p_column_display_sequence=>4
,p_column_heading=>'Duration (HH:MI)'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17761961869646618)
,p_query_column_id=>6
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>5
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_report_column_width=>200
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17913716369390510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17761347261646612)
,p_button_name=>'Exit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(173444233482459124)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17761244387646611)
,p_name=>'P47_SCHEDULE_SRNO'
,p_item_sequence=>56
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17913987329390512)
,p_name=>'CloseDialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17913716369390510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17914010685390513)
,p_event_id=>wwv_flow_imp.id(17913987329390512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

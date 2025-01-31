prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>'NON_CA_TREATMENT'
,p_alias=>'NON-CA-TREATMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Non CA Treatment'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_read_only_when_type=>'EXPRESSION'
,p_read_only_when=>'SECURITY.PKG_SECURITY.F_CHECK_PAGE_READONLY'
,p_read_only_when2=>'PLSQL'
,p_page_component_map=>'02'
,p_last_updated_by=>'MUHAMMADUSMAN1'
,p_last_upd_yyyymmddhh24miss=>'20250108185907'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51496798591237757)
,p_plug_name=>'Breadcrumb'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14451446309908206)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14616451605908289)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53911300499531804)
,p_plug_name=>'Non CA Treatment '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NCT.RADIATION_NO,',
'       NCT.TRANS_DATE,',
'       NCT.REASON,',
'       NCT.USER_MRNO,',
'       VNCT.STATUS_REQUEST,',
'       VNCT.DOCTOR_ID,',
'       VNCT.DISP_DOCTOR,',
'       VNCT.USER_NAME,',
'       VNCT.ROWID',
'  FROM RADIATION.NON_CA_TREATMENT NCT, RADIATION.VU_NON_CA_TREATMENT VNCT',
' WHERE NCT.RADIATION_NO = VNCT.RADIATION_NO',
'   AND NCT.RADIATION_NO = :P30_P_RADIATION_NO',
''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P30_P_RADIATION_NO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53911746189531808)
,p_plug_name=>'Page Parameter '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'AFTER_HEADER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53912995360531820)
,p_plug_name=>'Control'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14490621534908226)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53913022239531821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53912995360531820)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53913133600531822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53912995360531820)
,p_button_name=>'Delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_condition_type=>'IS_NOT_READ_ONLY'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(53913222305531823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(53912995360531820)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53911863182531809)
,p_name=>'P30_P_RADIATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53911746189531808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53911904541531810)
,p_name=>'P30_RADIATION_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_default=>'P30_P_RADIATION_NO'
,p_item_default_type=>'ITEM'
,p_prompt=>'Radiation No'
,p_source=>'RADIATION_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly;"'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912005834531811)
,p_name=>'P30_TRANS_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_prompt=>'Trans Date'
,p_source=>'TRANS_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912117856531812)
,p_name=>'P30_REASON'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_prompt=>'Reason'
,p_source=>'REASON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912275614531813)
,p_name=>'P30_USER_MRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_source=>'USER_MRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912364924531814)
,p_name=>'P30_STATUS_REQUEST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_source=>'STATUS_REQUEST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912417173531815)
,p_name=>'P30_DOCTOR_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_source=>'DOCTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912591501531816)
,p_name=>'P30_DISP_DOCTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_source=>'DISP_DOCTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53912654316531817)
,p_name=>'P30_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53914093992531831)
,p_name=>'P30_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_item_source_plug_id=>wwv_flow_imp.id(53911300499531804)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53913363545531824)
,p_name=>'CloseDialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(53913222305531823)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53913411108531825)
,p_event_id=>wwv_flow_imp.id(53913363545531824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.dialog.close(true)'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53913932675531830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53911300499531804)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'ProcessDMLNonCATreatment'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  CASE :APEX$ROW_STATUS',
'  -----------',
'  -- Insert',
'  -----------',
'    WHEN ''C'' THEN',
'      BEGIN',
'        INSERT INTO RADIATION.NON_CA_TREATMENT',
'          (RADIATION_NO, TRANS_DATE, REASON, USER_MRNO)',
'        VALUES',
'          (:P30_RADIATION_NO, SYSDATE, :P30_REASON, :GV_USER_MRNO);',
'      END;',
'    WHEN ''U'' THEN',
'      BEGIN',
'        ---------------------',
'        -- Insert / Update',
'        ---------------------',
'        MERGE INTO RADIATION.NON_CA_TREATMENT A',
'        USING (SELECT :P30_RADIATION_NO AS RADIATION_NO FROM DUAL) B',
'        ON (A.RADIATION_NO = B.RADIATION_NO)',
'        ',
'        WHEN MATCHED THEN',
'          UPDATE SET TRANS_DATE = :P30_TRANS_DATE, REASON = :P30_REASON',
'          ',
'        ',
'        WHEN NOT MATCHED THEN',
'          INSERT',
'            (RADIATION_NO, TRANS_DATE, REASON, USER_MRNO)',
'          VALUES',
'            (:P30_RADIATION_NO, SYSDATE, :P30_REASON, :GV_USER_MRNO);',
'      ',
'      END;',
'    ',
'    WHEN ''D'' THEN',
'      -----------',
'      -- Delete',
'      -----------',
'      BEGIN',
'        DELETE FROM RADIATION.NON_CA_TREATMENT WHERE ROWID = :P30_ROWID;',
'      END;',
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
,p_internal_uid=>53913932675531830
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(53911426002531805)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form NON_CA_TREATMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT NCT.RADIATION_NO,',
'         NCT.TRANS_DATE,',
'         NCT.REASON,',
'         NCT.USER_MRNO,',
'         VNCT.STATUS_REQUEST,',
'         VNCT.DOCTOR_ID,',
'         VNCT.DISP_DOCTOR,',
'         VNCT.USER_NAME,',
'         VNCT.ROWID',
'    INTO :P30_RADIATION_NO,',
'         :P30_TRANS_DATE,',
'         :P30_REASON,',
'         :P30_USER_MRNO,',
'         :P30_STATUS_REQUEST,',
'         :P30_DOCTOR_ID,',
'         :P30_DISP_DOCTOR,',
'         :P30_USER_NAME,',
'         :P30_ROWID',
'    FROM RADIATION.NON_CA_TREATMENT NCT, RADIATION.VU_NON_CA_TREATMENT VNCT',
'   WHERE NCT.RADIATION_NO = VNCT.RADIATION_NO',
'     AND NCT.RADIATION_NO = :P30_P_RADIATION_NO;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>53911426002531805
);
wwv_flow_imp.component_end;
end;
/

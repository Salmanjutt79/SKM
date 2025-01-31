prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'test'
,p_alias=>'TEST'
,p_step_title=>'test'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'$(window).on(''newDlg'', () => {console.log(''event fired''); setTimeout(() => $(window.parent.window).find(''.phyMenuDialog'').each((i, e) => adjPhyMenuDlgPosWdHt(e)), 1000); });'
,p_page_css_classes=>'js-phyMenu'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_last_updated_by=>'FARHANAKRAM'
,p_last_upd_yyyymmddhh24miss=>'20230825113822'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77277475655880601)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>26
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217835945276260242)
,p_plug_name=>'New'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>12
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_RESULT CLOB;',
'BEGIN',
'FOR REC IN (SELECT ''<div class="t-Alert t-Alert--horizontal t-Alert--defaultIcons t-Alert--removeHeading js-removeLandmark t-Alert--'' || CASE',
'          WHEN ALERT_TYPE = ''E'' THEN',
'           ''danger''',
'          WHEN ALERT_TYPE = ''W'' THEN',
'           ''warning''',
'          ELSE',
'           ''info''',
'        END || ''" id="'' || RADIATION_NO || ''-'' || SITE_ID || ''-'' ||',
'        ALERT_SRNO ||',
'        ''" role="region" aria-label="Alert Region">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon padding-sm">',
'      <span class="t-Icon " aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content padding-sm">',
'      <div class="t-Alert-body"><span>''||ALERT_TEXT||''</span>',
'	  <div class="u-pullRight">',
'	    ',
'		'' || CASE',
'          WHEN DISMISS_ALLOWED = ''Y'' THEN',
'           ''<button type="button" class="t-Button" onclick=dimissAlert('' ||',
'           RADIATION_NO || '','' || SITE_ID || '','' || ALERT_SRNO ||',
'           '')>Dismiss</button>''',
'          ELSE',
'           NULL',
'        END || ''<button type="button" class="t-Button" onclick=ackAlert('' ||',
'        RADIATION_NO || '','' || SITE_ID || '','' || ALERT_SRNO || '')>Acknowledge</button>',
'	  </div>',
'	  </div>',
'    </div>',
'  </div>',
'</div>'' html',
'  FROM (SELECT RADIATION_NO,',
'               SITE_ID,',
'               ALERT_SRNO,',
'               RA.ALERT_ID,',
'               RA.ALERT_TEXT ALERT_TEXT,',
'               A.ALERT_TYPE,',
'               RA.STATUS_ID,',
'               NULL SIGN_BY,',
'               SIGN_DATE,',
'               CASE',
'                 WHEN A.ALERT_TYPE = ''E'' THEN',
'                  1',
'                 WHEN A.ALERT_TYPE = ''W'' THEN',
'                  2',
'                 WHEN A.ALERT_TYPE = ''I'' THEN',
'                  3',
'                 ELSE',
'                  4',
'               END PRIORITY,',
'               A.DISMISS_ALLOWED,',
'               CASE',
'                 WHEN A.ALERT_TYPE = ''E'' THEN',
'                  ''N''',
'                 ELSE',
'                  ''Y''',
'               END ACKNOWLEDGE',
'          FROM RADIATION.RAD_ALERTS RA, RADIATION.DEF_ALERTS A',
'         WHERE RA.ALERT_ID = A.ALERT_ID',
'           AND RA.RADIATION_NO = ''SKM001200000231'' --P_RADIATION_NO',
'              -- AND RA.SITE_ID = P_SITE_ID',
'           AND RA.STATUS_ID = ''020''',
'        /*AND ((P_QUEUE_ID IS NULL AND P_PERFORMANCE_TYPE_ID IS NULL AND',
'        P_EVENT_ID IS NULL) OR EXISTS',
'         (SELECT 1',
'            FROM RADIATION.DEF_QUEUE_EVENT_ALERTS EA',
'           WHERE EA.QUEUE_ID = P_QUEUE_ID',
'             AND EA.PERFORMANCE_TYPE_ID = P_PERFORMANCE_TYPE_ID',
'             AND EA.EVENT_ID = P_EVENT_ID',
'             AND EA.ALERT_ID = RA.ALERT_ID',
'             AND EA.ACTIVE = ''Y''))*/',
'        )',
' ORDER BY 1, PRIORITY',
') LOOP',
'L_RESULT := L_RESULT||REC.HTML;',
'END LOOP;',
'RETURN L_RESULT;',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207248165738176717)
,p_button_sequence=>16
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(217832935713260212)
,p_button_sequence=>46
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173450385656459129)
,p_button_image_alt=>'modal3'
,p_button_redirect_url=>'f?p=&APP_ID.:9993:&SESSION.::&DEBUG.::P9993_APPLICATOR_ID:012'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(207248412064176720)
,p_name=>'P33_NEW'
,p_item_sequence=>36
,p_prompt=>'New'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207248243866176718)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(207248165738176717)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207248395010176719)
,p_event_id=>wwv_flow_imp.id(207248243866176718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let objectList = [];',
'',
'// Change start',
'let paramList = {};',
'let object = {',
'    "OBJECTCODE": ''#115@9991'',',
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
 p_id=>wwv_flow_imp.id(207248524948176721)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_NEW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207248631950176722)
,p_event_id=>wwv_flow_imp.id(207248524948176721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'L_BASE_URL varchar2(4000);',
'begin',
'      L_BASE_URL := APEX_PAGE.GET_URL(p_application => 115,',
'                                      p_page        => 9991,',
'                                    --  p_items       => L_PLIST,',
'                                     -- p_values      => L_PVAL,--APEX_UTIL.URL_ENCODE(L_PVAL),',
'                                      p_plain_url   => false);',
'      L_BASE_URL := APEX_UTIL.PREPARE_URL(P_URL       => L_BASE_URL,',
'                                          p_plain_url => false);',
'                                          :P33_NEW := L_BASE_URL;',
'end;'))
,p_attribute_03=>'P33_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207248735636176723)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207248931762176725)
,p_event_id=>wwv_flow_imp.id(207248735636176723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(this);'
);
wwv_flow_imp.component_end;
end;
/

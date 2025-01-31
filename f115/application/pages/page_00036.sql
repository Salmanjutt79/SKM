prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>'GENERIC_PENDING_TASK_Q'
,p_alias=>'GENERIC-PENDING-TASK-Q'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function Page_Navigation(application, page){',
'	',
'       vUrl = apex.util.makeApplicationUrl({',
'       appId: application,                   // default is $v("pFlowId") - current app',
'       pageId:page,                     // default is $v("pFlowStepId") - current page',
'       session: $v( "pInstance"),   // default is $v("pInstance") - current session',
'       //request: ''TEST_REQUEST'',      // default is $v("pRequest") - current request',
'       //debug: ''YES'',                 // default is $v("pdebug") - debug YES/NO',
'		 //itemNames:[''P14_COUNTRY_ID,P14_NEW''],        // item names array (no value by default)',
'      // itemValues:[p_country_id,''ABC''],      // item values array (no value by default)',
'       //printerFriendly: ''YES''        // no value by default',
'    });',
' apex.navigation.redirect(vUrl);',
'	}',
'',
''))
,p_step_template=>wwv_flow_imp.id(121281702253551247)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:t-PageBody--noContentPadding'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'MAZAM'
,p_last_upd_yyyymmddhh24miss=>'20231010185601'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(118905215299279714)
,p_name=>'Queue'
,p_template=>wwv_flow_imp.id(173422706534455514)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>6
,p_display_column=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_query varchar2(4000):=''SELECT * FROM ''||RADIATION.PKG_S18FRM00123.GET_QUERY_PENDING_TASK_Q_APEX(NVL(:P36_ASSIGNMENT_ID,195),:P36_TASK_MRNO);',
'begin',
'return v_query;',
'end;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P36_ASSIGNMENT_ID,P36_TASK_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1642597862350746)
,p_query_column_id=>1
,p_column_alias=>'MRNO'
,p_column_display_sequence=>10
,p_column_heading=>'MRNO'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1642622497350747)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Patient Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1642716915350748)
,p_query_column_id=>3
,p_column_alias=>'SITE'
,p_column_display_sequence=>30
,p_column_heading=>'Site'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1642828385350749)
,p_query_column_id=>4
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>40
,p_column_heading=>'Entered By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1642921532350750)
,p_query_column_id=>5
,p_column_alias=>'ENTERED_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Entered Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4075405582987901)
,p_query_column_id=>6
,p_column_alias=>'RADIATION_NO'
,p_column_display_sequence=>60
,p_column_heading=>'Radiation No'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4075534629987902)
,p_query_column_id=>7
,p_column_alias=>'SITE_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Site Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185773612474308990)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14554375113908257)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(14451446309908206)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(14616451605908289)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26637271734341635)
,p_button_sequence=>120
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1640343753350724)
,p_name=>'P36_ASSIGNMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118905215299279714)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1640440424350725)
,p_name=>'P36_TASK_MRNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(118905215299279714)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4075641165987903)
,p_name=>'CallObject'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#report_table_R118905215299279714'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4075735825987904)
,p_event_id=>wwv_flow_imp.id(4075641165987903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("getObject",',
'        {',
'                pageItems: ["P36_ASSIGNMENT_ID,P36_TASK_MRNO"]',
'        },',
'        {',
'                dataType: ''json'',',
'                success: function (data) {',
'                        apex.navigation.redirect(data.l_url);',
'                }',
'        });',
'',
'',
'// apex.server.process("getObject", ',
'// { ',
'//       pageItems: ["P36_ASSIGNMENT_ID,P36_TASK_MRNO"]',
'// },',
'// { ',
'//    dataType: ''json'',',
'//     success: function(data)  {',
'// //alert(data);',
'//           var obj = JSON.parse(data);',
'//          if(obj.status == "success"){',
'//         apex.navigation.redirect(data.l_url);',
'//         //apex.message.showPageSuccess(obj.message); ',
'    ',
'',
'//       }',
'//       else{',
'//           apex.message.alert(obj.message);',
'//           }',
'//     }',
'// });',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26637536724341638)
,p_name=>'CallObject_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26637271734341635)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26637643388341639)
,p_event_id=>wwv_flow_imp.id(26637536724341638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("getObject",',
'        {',
'                pageItems: ["P36_ASSIGNMENT_ID,P36_TASK_MRNO"]',
'        },',
'        {',
'                dataType: ''json'',',
'                success: function (data) {',
'                        apex.navigation.redirect(data.l_url);',
'                }',
'        });',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4075980124987906)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getObject'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_OBJECT_CODE DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE;',
'v_page_id number;',
'v_app_id number;',
'L_OBJECT_CODE DEFINITIONS.OBJECTS.OBJECT_CODE%TYPE;',
' l_url varchar2(2000);',
'  l_session number := v(''APP_SESSION'');',
'BEGIN',
'SELECT OBJECT_CODE INTO V_OBJECT_CODE FROM RADIATION.PENDING_TASK_Q_MASTER WHERE ASSIGNMENT_ID=:P36_ASSIGNMENT_ID;',
'',
'',
'    BEGIN',
'        SELECT T.PAGE_ID,S.APP_ID,T.OBJECT_CODE',
'        INTO v_page_id,v_app_id,L_OBJECT_CODE',
'        FROM DEFINITIONS.OBJECTS T,definitions.schemas  s',
'       WHERE T.SCHEMA_ID=S.SCHEMA_ID AND  T.OBJECT_TYPE_ID = ''APX''',
'         AND T.NAME = (SELECT S.NAME',
'                         FROM DEFINITIONS.OBJECTS S',
'                        WHERE S.OBJECT_CODE = V_OBJECT_CODE);',
'                            l_url := APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || v_app_id || '':''||v_page_id||'':''||l_session||''::NO::P48_TASK_MRNO:''||:P36_TASK_MRNO,',
'        p_checksum_type => ''SESSION'');',
'',
'    EXCEPTION',
'       WHEN OTHERS THEN',
'       NULL;',
'    END;',
'',
'apex_json.open_object;',
'apex_json.write( p_name => ''status'', p_value => ''success'');',
'apex_json.write( p_name => ''message'', p_value => ''Successfully'');',
'apex_json.write( p_name => ''l_url'', p_value => l_url);',
'',
'apex_json.write( p_name => ''vPageId'', p_value => v_page_id);',
'apex_json.write( p_name => ''vAppId'', p_value => v_app_id);',
'apex_json.close_object;',
'EXCEPTION ',
'WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write( p_name => ''status'', p_value => ''failed'');',
'    apex_json.write( p_name => ''message'', p_value => SQLERRM);',
'    --apex_json.write( p_name => ''message'', p_value => SQLERRM);',
'    apex_json.close_object;',
'END;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4075980124987906
);
wwv_flow_imp.component_end;
end;
/

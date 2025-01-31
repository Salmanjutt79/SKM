prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'AWAISWAHEED'
,p_last_upd_yyyymmddhh24miss=>'20241120123904'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(220460908509126329)
,p_name=>'USER_PROFILE'
,p_region_name=>'exitpopup_bg'
,p_template=>wwv_flow_imp.id(224460119684711122)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME AS FIRSTNAME, NULL AS LASTNAME, ',
'     --''f?p=&APP_ID.:5:&APP_SESSION.:T''||UPPER(:APP_USER) "IMAGE",',
'     ''f?p=&APP_ID.:0:&APP_SESSION.:APPLICATION_PROCESS=LOADIMAGE:::USER_IMAGE::GV_USER_MRNO'' "IMAGE",',
'   -- ''f?p=&APP_ID.:7:''||:APP_SESSION||'':::::'' "EDIT_PROFIL",--||''::NO::P10_ITEM:ABC'');',
'    --''f?p=&APP_ID.:7:''||:APP_SESSION||''::NO::P7_ID:''||ID "EDIT_PROFIL",--''::NO::P10_ITEM:ABC'');',
'    i.designation "DESIGNATION",',
'    i.email "EMAIL",',
'    I.DEPARTMENT DEPARTMENT,',
'    I.MRNO ID,',
'    I.MRNO "USER_ID"',
'FROM HRD.VU_INFORMATION I, PICTURES.HR_PICTURES P',
'WHERE I.MRNO = :GV_USER_MRNO',
'AND I.MRNO = P.MRNO(+)',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(225741781168730554)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461088963126330)
,p_query_column_id=>1
,p_column_alias=>'FIRSTNAME'
,p_column_display_sequence=>10
,p_column_heading=>'Firstname'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461158291126331)
,p_query_column_id=>2
,p_column_alias=>'LASTNAME'
,p_column_display_sequence=>20
,p_column_heading=>'Lastname'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461276071126332)
,p_query_column_id=>3
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>30
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461360881126333)
,p_query_column_id=>4
,p_column_alias=>'DESIGNATION'
,p_column_display_sequence=>40
,p_column_heading=>'Designation'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461491303126334)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461500521126335)
,p_query_column_id=>6
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>60
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461698861126336)
,p_query_column_id=>7
,p_column_alias=>'ID'
,p_column_display_sequence=>70
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(220461721471126337)
,p_query_column_id=>8
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>80
,p_column_heading=>'User Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(220461923937126339)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(220460908509126329)
,p_button_name=>'BTN_GLOBAL_VARIABLES'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_image_alt=>'Global Variables'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=100:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(220462044439126340)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(220460908509126329)
,p_button_name=>'BTN_LOGOUT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Logout'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=100:6:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(220461814460126338)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(220460908509126329)
,p_button_name=>'BTN_CHANGE_PASSWORD'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_image_alt=>'Change Password'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=100:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-key'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220462156142126341)
,p_name=>'PAGE_LOADS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220462272812126342)
,p_event_id=>wwv_flow_imp.id(220462156142126341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#exitpopup_bg").dialog({',
'',
'    autoOpen: false,',
'',
'    modal: false,',
'    dialogClass: ''PROF_DID''',
'',
'});',
'',
'/* Close when click Outside the Dialog*/',
'$(''html'')',
'    .bind(',
'        ''click'',',
'        function(e) {',
'            if ($(''#exitpopup_bg'').dialog(''isOpen'') && !$(e.target).is(''.ui-dialog, a'') && !$(e.target).closest(''.ui-dialog'').length && !$(e.target).is(''.image_icon'')&&!$(e.target).is(''.ui-dialog-titlebar-close'')) {',
'                $(''#exitpopup_bg'').dialog(''close'');',
'',
'',
'                $(''.image_icon'').removeClass(''et'');',
'                $(''.image_icon'').addClass(''st'');',
'            }',
'        }',
'    );',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220462344503126343)
,p_name=>'OPEN_PROFILE'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.st'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220462488331126344)
,p_event_id=>wwv_flow_imp.id(220462344503126343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'openModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''st'');',
'$(''.image_icon'').addClass(''et'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220462561423126345)
,p_name=>'CLOSE_PROFILE'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.et'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220462665029126346)
,p_event_id=>wwv_flow_imp.id(220462561423126345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''et'');',
'$(''.image_icon'').addClass(''st'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220462719872126347)
,p_name=>'USER_GUIDES'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.guide-btn'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220462887335126348)
,p_event_id=>wwv_flow_imp.id(220462719872126347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UserGuide",',
'        {}, {',
'        success: function (res) {',
'                //apex.message.alert(res.user_mrno+"  "+res.app_id +"      "+res.app_page_id+" "+res.page_url);',
'                //javascript:window.open(''f?p=207:2:''+apex.item(''pInstance'').getValue()+'':::1:P2_USER_NAME,P2_APP_ID,P2_PAGE_ID:''+res.user_mrno +'',''+ res.app_id+'',''+ res.app_page_id ,''_blank'');                ',
'                // javascript:window.open( res.page_url ,''_blank'');',
'                console.log(res.page_url);',
'                apex.navigation.redirect(res.page_url);',
'        },',
'        dataType: ''json''',
'}',
'',
')',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(220462976962126349)
,p_name=>'ADD_TO_FAVORITES'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fav-btn'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220463033329126350)
,p_event_id=>wwv_flow_imp.id(220462976962126349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("AddToFavorite",',
'        {}, {',
'        success: function (res) {',
'                apex.message.alert(res.message);',
'        },',
'        dataType: ''json''',
'}',
')'))
);
wwv_flow_imp.component_end;
end;
/

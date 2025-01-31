prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_name=>'test'
,p_alias=>'TEST2'
,p_step_title=>'test'
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
'',
'}',
'',
'function custNav(){',
'  vUrl = apex.util.makeApplicationUrl({ ',
'    appId: 115,                   // default is $v("pFlowId") - current app ',
'    pageId:48,                     // default is $v("pFlowStepId") - current page ',
'    session: $v( "pInstance" ),   // default is $v("pInstance") - current session ',
'    request: ''TEST_REQUEST'',      // default is $v("pRequest") - current request ',
'    debug: ''YES'',                 // default is $v("pdebug") - debug YES/NO ',
'    //itemNames:[],        // item names array (no value by default) ',
'    //itemValues:[],      // item values array (no value by default) ',
'    printerFriendly: ''YES''        // no value by default ',
'',
'}); ',
'',
'  //apex.navigation.redirect(vUrl); ',
'',
'  window.location.href =vUrl; ',
'',
' ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'AWAISWAHEED'
,p_last_upd_yyyymmddhh24miss=>'20231006154248'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26636838746341631)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>120
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30347251428843817)
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
 p_id=>wwv_flow_imp.id(26636986802341632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26636838746341631)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26637058781341633)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26636986802341632)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26637109139341634)
,p_event_id=>wwv_flow_imp.id(26637058781341633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Page_Navigation(115,48);',
'custNav();'))
);
wwv_flow_imp.component_end;
end;
/

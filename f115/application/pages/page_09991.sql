prompt --application/pages/page_09991
begin
--   Manifest
--     PAGE: 09991
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
 p_id=>9991
,p_name=>'model1'
,p_alias=>'MODEL1'
,p_step_title=>'model1'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#action-bar-containter ul {',
'    height: 10px;',
'}',
'#action-bar-containter ul:hover{',
'    height: 40px;',
'}',
'',
'#action-item-x{',
'   ',
'}'))
,p_page_css_classes=>'js-phyMenu'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'FARHANAKRAM'
,p_last_upd_yyyymmddhh24miss=>'20230922101034'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16653832995360014)
,p_plug_name=>'New'
,p_region_name=>'float-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14489219574908225)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16655272837360028)
,p_plug_name=>'New'
,p_region_name=>'farhan'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_05'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(211183194403691996)
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
 p_id=>wwv_flow_imp.id(16653934253360015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16653832995360014)
,p_button_name=>'New_1'
,p_button_static_id=>'plus'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614188390908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New 1'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'float-btn'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207249057484176726)
,p_button_sequence=>10
,p_button_name=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(207247858929176714)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Open Form'
,p_button_redirect_url=>'f?p=&APP_ID.:9992:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'accesskey="o"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16655312184360029)
,p_button_sequence=>10
,p_button_name=>'New_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New 2'
,p_button_position=>'REGION_POSITION_05'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16655612765360032)
,p_button_sequence=>20
,p_button_name=>'New_3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(173441340284459118)
,p_button_image_alt=>'dddd'
,p_button_position=>'REGION_POSITION_05'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(207249178302176727)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(207249057484176726)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(207249267404176728)
,p_event_id=>wwv_flow_imp.id(207249178302176727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.dialog.close(true, { selectedMRNO: ''mrno'', clinicID: "sfsf" });'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16653308527360009)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(207247858929176714)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16653414913360010)
,p_event_id=>wwv_flow_imp.id(16653308527360009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setSkmDialog(frameElement) {',
'    //js-phyMenu certer window if called directly',
'    let h = $(''#main'').outerHeight() + $(''#t_Footer'').outerHeight(), w = $(''#main'').outerWidth(), top = $(''#t_Header'').outerHeight(), left = $(''#t_Body_nav'').outerWidth(), url = $(''.skmMenuDialog'').find(''iframe'').first().attr(''src'');',
'    $(''.skmMenuDialog'').css(''height'', h).css(''width'', w).css(''top'', top).css(''left'', left);',
'    $(''.skmMenuDialog:not([data-pageid])'').addClass(''ui-resizable'').addClass(''ui-draggable'').attr(''data-pageid'', extractPageIdfromLink(url));',
'',
'    // }',
'}',
'',
'function phyMenuDialog(url, options, classes, trigElem) {',
'',
'    let isOpen = false, openedDialog, m = $(''.t-Body-main''), isPhyMenu = $(window.top.document).find(''.js-phyMenu'').length ? true : false;',
'',
'    let mainWindow = window.top;//trigElem.parent;',
'',
'',
'    if (isPhyMenu) {',
'        $(mainWindow.document).find(''.ui-dialog-content'').each((i, o) => { if ($(o).attr(''data-pageid'') == extractPageIdfromLink(url)) { isOpen = true; openedDialog = o; } });',
'        if (isOpen) {',
'',
'            if ($(openedDialog).dialog(''instance'')) {',
'                $(openedDialog).dialog("moveToTop");',
'                setSkmDialog(openedDialog);',
'            } else',
'                //apex.message.alert(''This page is already open.'');',
'                if (url.search(''&success_msg'') >= 0) apex.navigation.redirect(url);',
'                else location.reload(true);',
'        } else {',
'            apex.theme42.dialog(''f?p=115:9992:34789815289565\u0026p_dialog_cs=riW4b5PvwBI6oOxg2zambTQUjQG5Xl80yOrzGyc50V4Z7d_W4Ska43RUfAe7VeDBzIW66ZGAh0PjQ45fS01aVg'',{title:''model2'',h:''auto'',w:''720'',mxw:''960'',modal:true,dialog:null,dlgCls:''t-Dialog-p'
||'age--standard ''+''skmMenuDialog'',resizable:true, draggable:true},'''',''#t_Body'');',
'            setSkmDialog(mainWindow);',
'        }',
'    } else {',
'        if (options.dlgCls.includes(''js-phyMenu-maxWidth'')) options.w = m.width() * 0.9;',
'        apex.theme42.dialog(''f?p=115:9992:34789815289565\u0026p_dialog_cs=riW4b5PvwBI6oOxg2zambTQUjQG5Xl80yOrzGyc50V4Z7d_W4Ska43RUfAe7VeDBzIW66ZGAh0PjQ45fS01aVg'',{title:''model2'',h:''auto'',w:''720'',mxw:''960'',modal:true,dialog:null,dlgCls:''t-Dialog-page-'
||'-standard ''+''skmMenuDialog'',resizable:true, draggable:true},'''',''#t_Body'');',
'    }',
'}',
'',
'function closeAllDialog(pageId) {',
'    //$(".ui-dialog-content").dialog("close")',
'    //$($(window.top.document).find(''.phyMenuDialog'').get().reverse()).each((i, e) =>  $(e).dialog("close"))',
'    pageId ? undefined : $(window.top.document).find(".ui-dialog-content").dialog("close");',
'    if (pageId) $($(window.top.document).find(''.phyMenuDialog'').get().reverse()).each((i, e) => $(e).dialog("close"))',
'    else { $($(''.phyMenuDialog'').get().reverse()).each((i, e) => { if ($(e).attr(''data-pageid'') == pageId) $(e).dialog("close") }) }',
'    //$(window.top.document).find(".ui-dialog-content").each((i,e)=>console.log(   $(e).attr(''data-pageid'')   ))',
'}',
'',
'apex.jQuery("#t_TreeNav").on(''theme42layoutchanged'', function (event, obj) {',
'    setTimeout(() => setSkmDialog(), 100);',
'});',
'apex.jQuery(window).on(''apexwindowresized'', function () {',
'    setTimeout(() => setSkmDialog(), 100);',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16654193490360017)
,p_name=>'New_2'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16653934253360015)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16654270600360018)
,p_event_id=>wwv_flow_imp.id(16654193490360017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    //$(''#actions_menu ul'').html('''');',
'    $(window.top.document).find(''.skmMenuDialog'').get().forEach((e, i) => {',
'        let title = $(e).find(''.'' + ''ui-dialog-title'').text(), id = $(e).find(''.'' + ''ui-dialog-content'').attr(''id'');',
'        let link = "javascript:activateDialog(''" + id + "'');";',
'        //let link2 = "<button type=''button'' id=''d-btn-"+i+" onclick=activateDialog(''" + id + "'');>"+title+"</button>";',
'        //',
'        let b = ''<li id="actions_menu_'' + i + ''" class="a-Menu-item"><div class="a-Menu-inner"><a href="'' + link + ''" id="actions_menu_'' + i + ''" role="menuitem" class="a-Menu-label">'' + title + ''</a></div></li>'';',
'        $(''#actions_menu ul'').append(b);',
'    })',
'}, 10)',
'',
'',
'//ui-dialog-content',
'//ui-dialog-title'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16654536533360021)
,p_event_id=>wwv_flow_imp.id(16654193490360017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setContainer(){',
'    let htm = `<div class="t-Header-nav">',
'    <ul class="t-NavTabs t-NavTabs--inlineLabels-lg t-NavTabs--displayLabels-sm" id="action-bar">',
'    ',
'    </ul>',
'    </div>`;',
'    $(''#t_Header'').append(htm);',
'    //',
'}',
'function getEntry(id,label){',
'    return `<li class="t-NavTabs-item " id="action-item-${id}">',
'            <a href="javascript:activateDialog(''${id}'');" class="t-NavTabs-link  " title="${label}">',
'                <span class="t-NavTabs-label">${label}</span>',
'            </a>',
'        </li>`;',
'}',
'function getCloseAll(){',
'    return `<li class="t-NavTabs-item u-pullRight" id="action-item-x">',
'            <a href="javascript:skmCloseAllDialog();" class="t-NavTabs-link  " title="Close All">',
'                <span class="t-Icon fa fa-user" aria-hidden="true"></span>',
'            </a>',
'        </li>`;',
'}',
'',
'if (!$(''#action-bar'').length) setContainer();',
'$(''#action-bar'').html('''');',
'$(window.top.document).find(''.skmMenuDialog'').get().forEach((e, i) => {',
'    let title = $(e).find(''.'' + ''ui-dialog-title'').text(), id = $(e).find(''.'' + ''ui-dialog-content'').attr(''id'');',
'    $(''#action-bar'').append(getEntry(id,title));',
'});',
'$(''#action-bar'').append(getCloseAll());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16655494653360030)
,p_name=>'New_3'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16655312184360029)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16655502707360031)
,p_event_id=>wwv_flow_imp.id(16655494653360030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#farhan'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'<h1 id="farhan2">Hello</h1>'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16655768065360033)
,p_name=>'New_4'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16655612765360032)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16655820829360034)
,p_event_id=>wwv_flow_imp.id(16655768065360033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#farhan2'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'World'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

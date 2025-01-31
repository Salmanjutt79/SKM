prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN-PAGE'
,p_step_title=>'Login Page'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_welcome_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="slideshow">',
'  <li><span></span></li>',
'  <li><span></span></li>',
'  <li><span></span></li>',
'  <li><span></span></li>',
'</ul>'))
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Body { ',
'  background: url(#APP_IMAGES#IMG_3705.png); ',
'  background-position: center;',
'  background-repeat: no-repeat; ',
'  background-size: cover;',
'} ',
'',
'.frosted { ',
'  background: rgba(255, 255, 255, 0.716); ',
' -webkit-backdrop-filter: blur(10px); ',
'  backdrop-filter: blur(10px); ',
'} ',
'',
'',
'.slideshow {',
'  list-style: none;',
'  margin: 0px;',
'  background-repeat: true;',
'}',
'',
'.slideshow li span {',
'  width: 100%;',
'  height: 100%;',
'  position: absolute;',
'  top: 0px;',
'  left: 0px;',
'  color: transparent;',
'  background-size: cover;',
'  background-position: 50% 50%;',
'  background-repeat: none;',
'  opacity: 0;',
'  z-index: 0;',
'  -webkit-backface-visibility: hidden;',
'  backface-visibility: hidden;',
'  -webkit-animation: imageAnimation 40s linear infinite 0s;',
'  -moz-animation: imageAnimation 40s linear infinite 0s;',
'  animation: imageAnimation 40s linear infinite 0s;',
'}',
'',
'.slideshow li:nth-child(1) span {',
'  background-image: url(#APP_IMAGES#skm-lhr.png);',
'}',
'',
'',
'.slideshow li:nth-child(2) span {',
'  background-image: url(#APP_IMAGES#skm-pesh.jpg);',
'  -webkit-animation-delay: 10s;',
'  -moz-animation-delay: 10s;',
'  animation-delay: 10s;',
'}',
'',
'.slideshow li:nth-child(3) span {',
'  background-image: url(#APP_IMAGES#skm-khi.png);',
'  -webkit-animation-delay: 20s;',
'  -moz-animation-delay: 20s;',
'  animation-delay: 20s;',
'}',
'',
'.slideshow li:nth-child(4) span {',
'  background-image: url(#APP_IMAGES#skm-lhr.png);',
'  -webkit-animation-delay: 30s;',
'  -moz-animation-delay: 30s;',
'  animation-delay: 30s;',
'}',
'',
'@-webkit-keyframes imageAnimation {',
'  0% {',
'    opacity: 0;',
'    -webkit-animation-timing-function: ease-in;',
'  }',
'',
'  12.5% {',
'    opacity: 1;',
'    -webkit-animation-timing-function: ease-out;',
'  }',
'',
'  25% {',
'    opacity: 1;',
'  }',
'',
'  37.5% {',
'    opacity: 0;',
'  }',
'',
'  100% {',
'    opacity: 0;',
'  }',
'}',
'',
'@-moz-keyframes imageAnimation {',
'  0% {',
'    opacity: 0;',
'    -moz-animation-timing-function: ease-in;',
'  }',
'',
'  12.5% {',
'    opacity: 1;',
'    -moz-animation-timing-function: ease-out;',
'  }',
'',
'  25% {',
'    opacity: 1;',
'  }',
'',
'  37.5% {',
'    opacity: 0;',
'  }',
'',
'  100% {',
'    opacity: 0;',
'  }',
'}',
'',
'@keyframes imageAnimation {',
'  0% {',
'    opacity: 0;',
'    -webkit-animation-timing-function: ease-in;',
'    -moz-animation-timing-function: ease-in;',
'    animation-timing-function: ease-in;',
'  }',
'',
'  12.5% {',
'    opacity: 1;',
'    -webkit-animation-timing-function: ease-out;',
'    -moz-animation-timing-function: ease-out;',
'    animation-timing-function: ease-out;',
'  }',
'',
'  25% {',
'    opacity: 1;',
'  }',
'',
'  37.5% {',
'    opacity: 0;',
'  }',
'',
'  100% {',
'    opacity: 0;',
'  }',
'',
'}',
'',
'.no-cssanimations .slideshow li span {',
'  opacity: 1;',
'}',
''))
,p_step_template=>wwv_flow_imp.id(14460643165908211)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'10'
,p_last_updated_by=>'MASHRAF'
,p_last_upd_yyyymmddhh24miss=>'20220208160632'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43907724131537563)
,p_plug_name=>'Validation Messages'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(14523300436908242)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45961241902641572)
,p_plug_name=>'Login'
,p_region_css_classes=>'frosted'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(14539781475908250)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45965793955641634)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31587517692101065)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31596975677101073)
,p_branch_name=>'First time login'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:P5_CURRENT_MRNO,P5_FIRST_TIME_LOGIN,P5_CURRENT_PASSWORD,P5_ALERT_TEXT,P5_PWD_EXPIRE:&P2_MRNO.,&P2_FIRST_TIME_LOGIN.,&P2_PASSWORD.,&P2_LOGIN_MESSAGE.,N&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31587517692101065)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P9999_FIRST_TIME_LOGIN'
,p_branch_condition_text=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31597360418101073)
,p_branch_name=>'Password Expiry'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_PWD_EXPIRE,P5_CURRENT_MRNO,P5_ALERT_TEXT,P5_FIRST_TIME_LOGIN:&P2_PWD_EXPIRE.,&P2_MRNO.,&P2_LOGIN_MESSAGE.,N&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31587517692101065)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P9999_PWD_EXPIRE'
,p_branch_condition_text=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31583602916101062)
,p_name=>'P9999_LOGIN_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31584098165101063)
,p_name=>'P9999_FIRST_TIME_LOGIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31584442975101063)
,p_name=>'P9999_ALERT_TEXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31584840517101063)
,p_name=>'P9999_STOP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31585229639101064)
,p_name=>'P9999_SUPER_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31585639508101064)
,p_name=>'P9999_SHOW_ALERT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31586027651101064)
,p_name=>'P9999_PWD_EXPIRE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31586407022101064)
,p_name=>'P9999_WRONG_TRIES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31586819929101065)
,p_name=>'P9999_REMAIN_TRIES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43907724131537563)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31587965463101066)
,p_name=>'P9999_ORG_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANIZATION_ID',
'  FROM DEFINITIONS.ORGANIZATION',
'  WHERE ACTIVE = ''Y'';'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Username'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ORGANIZATION1'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_icon_css_classes=>'fa-building-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31588380896101066)
,p_name=>'P9999_DISP_MRNO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_prompt=>'Emp Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_tag_attributes=>'style="text-align:right;"'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31588745327101066)
,p_name=>'P9999_FULL_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_icon_css_classes=>'fa-address-book-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31589117889101067)
,p_name=>'P9999_PASSWORD'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31589579582101067)
,p_name=>'P9999_LOCATION_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT L.DESCRIPTION, L.LOCATION_ID ',
'  FROM DEFINITIONS.LOCATION L',
' WHERE L.LOCATION_ID IN',
'       (SELECT LOCATION_ID',
'          FROM SECURITY.USER_APPLICATION_LOCATION D',
'         WHERE D.USER_MRNO = :P9999_MRNO',
'           )',
'AND l.organization_id = :P9999_ORG_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P9999_ORG_ID'
,p_ajax_items_to_submit=>'P9999_LOCATION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(14612097829908286)
,p_item_icon_css_classes=>'fa-building-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31589905683101067)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_is_persistent=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31590876875101068)
,p_name=>'P9999_MRNO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45961241902641572)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'B'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31593179775101071)
,p_name=>'change_org_id'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_ORG_ID'
,p_condition_element=>'P9999_ORG_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31593687221101071)
,p_event_id=>wwv_flow_imp.id(31593179775101071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':GV_ORGANIZATION_ID := :P9999_ORG_ID;'
,p_attribute_02=>'P9999_ORG_ID'
,p_attribute_03=>'GV_ORGANIZATION_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31594083464101072)
,p_name=>'Page_Load'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31594585465101072)
,p_event_id=>wwv_flow_imp.id(31594083464101072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'HIS.SET_CONTEXT(''ORGANIZATION_ID'', ''SKM'');',
':GV_ORGANIZATION_ID := ''SKM'';'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31595026881101072)
,p_event_id=>wwv_flow_imp.id(31594083464101072)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_DISP_MRNO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31595443714101072)
,p_name=>'Validate User '
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_DISP_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31596404145101073)
,p_event_id=>wwv_flow_imp.id(31595443714101072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_PATIENT_TYPE_ID DEFINITIONS.PATIENT_TYPE.PATIENT_TYPE_ID%TYPE;',
'V_ALERT_TEXT VARCHAR2(4000);',
'V_STOP CHAR(1) := ''N'';',
'      BEGIN',
'      if :P9999_DISP_MRNO IS NOT NULL then ',
'        -- CALL THE PROCEDURE',
'      HIS.SET_CONTEXT(''ORGANIZATION_ID'', :P9999_ORG_ID);',
'        HIS.PKG_S30FRM00003_LOGIN.VALIDATE_MRNO(P_USER_MRNO            => NULL,',
'                                                P_LOCATION_ID          => NULL,',
'                                                P_PHYSICAL_LOCATION_ID => NULL,',
'                                                P_TERMINAL             => NULL,',
'                                                P_DISP_MRNO            => :P9999_DISP_MRNO,',
'                                                P_PREFIX               => ''600'',',
'                                                P_PREFIX_LOCATION_ID   => ''001'',',
'                                                P_MRNO                 => :P9999_MRNO,',
'                                                P_NAME                 => :P9999_FULL_NAME,',
'                                                P_PATIENT_TYPE_ID      => V_PATIENT_TYPE_ID,',
'                                                P_ALERT_TEXT           => V_ALERT_TEXT,',
'                                                P_STOP                 => V_STOP);',
'      ',
'     :P9999_DISP_MRNO := :P9999_MRNO;',
'     end if;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          NULL;',
'      END;',
''))
,p_attribute_02=>'P9999_DISP_MRNO'
,p_attribute_03=>'P9999_FULL_NAME,P9999_DISP_MRNO,P9999_MRNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31595967078101072)
,p_event_id=>wwv_flow_imp.id(31595443714101072)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_LOCATION_ID,P9999_MRNO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31591904217101070)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_DISP_MRNO),',
'    p_consent  => :P9999_REMEMBER = ''N'' );',
'END;',
'    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31591904217101070
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31591587766101069)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login Processing'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  p_wls_server  varchar2(30) := null;',
'  p_client_name varchar2(30) := null;',
'',
'  p_client_id         varchar2(30) := null;',
'  p_client_mac        varchar2(30) := null;',
'  p_dev_tool_id       varchar2(30) := null;',
'  p_order_location_id varchar2(30) := null;',
'  p_first_time_login  varchar2(30) := null;',
'  p_super_user        varchar2(30) := null;',
'  p_show_alert        varchar2(30) := null;',
'  p_calling_user      varchar2(30) := null;',
'',
'  p_calling_object   varchar2(30) := null;',
'  p_calling_event    varchar2(30) := null;',
'  p_calling_terminal varchar2(30) := null;',
'  p_pwd_expire       varchar2(30) := null;',
'  p_frst_time_login  varchar2(30) := null;',
'  p_wrong_tries      varchar2(30) := null;',
'  p_remain_tries     varchar2(30) := null;',
'  p_alert_text       varchar2(1000) := null;',
'  p_stop             varchar2(30) := null;',
'  p_error exception;',
'',
'begin',
'  security.pkg_login_apex.p_user_login_authentication(p_user_mrno         => :P9999_MRNO,',
'                                                      p_user_pwd          => :P9999_PASSWORD,',
'                                                      p_wls_server        => p_wls_server,',
'                                                      p_client_name       => p_client_name,',
'                                                      p_client_id         => p_client_id,',
'                                                      p_client_mac        => p_client_mac,',
'                                                      p_dev_tool_id       => p_dev_tool_id,',
'                                                      p_location_id       => :P9999_LOCATION_ID,',
'                                                      p_order_location_id => p_order_location_id,',
'                                                      p_first_time_login  => p_first_time_login,',
'                                                      p_super_user        => p_super_user,',
'                                                      p_show_alert        => p_show_alert,',
'                                                      p_calling_object    => p_calling_object,',
'                                                      p_calling_user      => p_calling_user,',
'                                                      p_calling_event     => p_calling_event,',
'                                                      p_calling_terminal  => p_calling_terminal,',
'                                                      p_pwd_expire        => p_pwd_expire,',
'                                                      p_frst_time_login   => p_frst_time_login,',
'                                                      p_wrong_tries       => p_wrong_tries,',
'                                                      p_remain_tries      => p_remain_tries,',
'                                                      p_alert_text        => p_alert_text,',
'                                                      p_stop              => p_stop);',
'  Apex_Util.Set_Session_State(''P9999_LOGIN_MESSAGE'',',
'                              ''FIRST TIME LOGIN VALUE '' ||',
'                              P_FRST_TIME_LOGIN || '' P_STOP '' || P_STOP);',
'',
'  IF NVL(P_FIRST_TIME_LOGIN, ''N'') = ''N'' AND NVL(P_SUPER_USER, ''N'') = ''N'' AND',
'     NVL(P_SHOW_ALERT, ''N'') = ''N'' AND NVL(P_PWD_EXPIRE, ''N'') = ''N'' AND',
'     NVL(P_FRST_TIME_LOGIN, ''N'') = ''N'' AND NVL(P_WRONG_TRIES, ''N'') = ''N'' AND',
'     NVL(P_REMAIN_TRIES, 0) = 0 and NVL(P_STOP, ''N'') = ''N'' THEN',
'    /*',
'    security.pkg_login_apex.p_user_authentication(:P9999_MRNO,',
'                        :P9999_PASSWORD,',
'                        :APP_ID ,',
'                        :P9999_LOCATION_ID,',
'                        :P9999_ORG_ID);',
'                        */',
'  ',
'    security.pkg_login_apex.p_user_authentication(p_user_mrno    => :P9999_MRNO,',
'                                                  p_password     => :P9999_PASSWORD,',
'                                                  p_app_id       => :APP_ID,',
'                                                  p_location     => :P9999_LOCATION_ID,',
'                                                  p_organization => :P9999_ORG_ID,',
'                                                  p_page_id      => :APP_page_id,',
'                                                  p_stop         => p_stop,',
'                                                  p_alert_text   => p_alert_text);',
'  ELSIF NVL(TRIM(P_STOP), ''N'') = ''Y'' AND NVL(P_PWD_EXPIRE, ''N'') = ''N'' AND',
'        NVL(P_FRST_TIME_LOGIN, ''N'') = ''N'' THEN',
'    Apex_Util.Set_Session_State(''P9999_LOGIN_MESSAGE'', p_alert_text);',
'    RAISE P_ERROR;',
'  ELSIF NVL(TRIM(P_PWD_EXPIRE), ''N'') = ''Y'' THEN',
'    Apex_Util.Set_Session_State(''P9999_PWD_EXPIRE'', ''Y'');',
'    Apex_Util.Set_Session_State(''P9999_FIRST_TIME_LOGIN'', ''N'');',
'    Apex_Util.Set_Session_State(''P9999_LOGIN_MESSAGE'', p_alert_text);',
'  ELSIF NVL(TRIM(P_FRST_TIME_LOGIN), ''N'') = ''Y'' THEN',
'    Apex_Util.Set_Session_State(''P9999_FIRST_TIME_LOGIN'', ''Y'');',
'    Apex_Util.Set_Session_State(''P9999_PWD_EXPIRE'', ''N'');',
'    Apex_Util.Set_Session_State(''P9999_LOGIN_MESSAGE'', ''Change your password'');',
'  ',
'  end if;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P9999_LOGIN_MESSAGE.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31587517692101065)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P9999_LOGIN_MESSAGE.',
''))
,p_internal_uid=>31591587766101069
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31592746095101071)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31587517692101065)
,p_process_when=>'P9999_LOGIN_MESSAGE'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>31592746095101071
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31592316736101071)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>31592316736101071
);
wwv_flow_imp.component_end;
end;
/

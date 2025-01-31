prompt --application/shared_components/security/authorizations/is_update_allowed
begin
--   Manifest
--     SECURITY SCHEME: IS_UPDATE_ALLOWED
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(27037679302527647)
,p_name=>'IS_UPDATE_ALLOWED'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  -- Boolean parameters are translated from/to integers: ',
'  -- 0/1/null <--> false/true/null ',
'  v_allowed    boolean := true;',
'  V_ALERT_TEXT VARCHAR2(2000);',
'begin',
'  -- Call the function',
'  v_allowed := security.pkg_login_apex.F_CHECK_PAGE_UPDATE(p_page_id     => :app_page_id,',
'                                                             app_id        => :app_id,',
'                                                             p_user_mrno   => :GV_USER_MRNO,',
'                                                             p_location_id => :GV_LOCATION_ID,',
'                                                             P_ORDER_LOCATION => :GV_ORDER_LOCATION_ID,',
'                                                             P_ALERT_TEXT  => :GV_ALERT_TEXT);',
'  -- Convert false/true/null to 0/1/null ',
'  --:result := sys.diutil.bool_to_int(result);',
'APEX_AUTHORIZATION.RESET_CACHE;',
'  return v_allowed;',
'',
'end;',
''))
,p_error_message=>'&GV_ALERT_TEXT.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/

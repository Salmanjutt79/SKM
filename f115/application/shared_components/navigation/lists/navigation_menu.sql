prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(14451967186908206)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14647980576908308)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121181221714310419)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Energy(Dialog)'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121182563374313221)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Request (Dialog)'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121182830060314454)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Site'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121507290588008021)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Accessories dialog'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(123148240085926187)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Toxicity - Other Dialog'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(123149012990928649)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Main Page'
,p_list_item_link_target=>'f?p=&APP_ID.:9998:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(185773158367308977)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'GENERIC_PENDING_TASK_Q'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(211182643588691990)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'model1'
,p_list_item_link_target=>'f?p=&APP_ID.:9991:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9991'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(211184398821694213)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'model2'
,p_list_item_link_target=>'f?p=&APP_ID.:9992:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9992'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3131672321234189)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'RAD_PERFORMANCE'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30346756542843791)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'test'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'49'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30347962498845163)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'testcopy'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_imp.component_end;
end;
/

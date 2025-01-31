prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(224665531400711291)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(226832632795218063)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>' '
,p_list_item_link_target=>'#'
,p_list_text_01=>'<img id="appguide" style="width:30px;height:30px;border-radius:50%;"  src="#WORKSPACE_FILES#help.png" alt="Guides" title="User Guides">'
,p_list_text_02=>'guide-btn'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(226836430584221895)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>' '
,p_list_item_link_target=>'#'
,p_list_text_01=>'<img style="width:30px;height:30px;border-radius:50%;"  src="#WORKSPACE_FILES#icon-fav.png" alt="Add Favorities" title="Add to Favorites">'
,p_list_text_02=>'fav-btn'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(226836822185225984)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>' '
,p_list_item_link_target=>'#'
,p_list_text_01=>'<img style="width:30px;height:30px;border-radius:50%;"  src="f?p=&APP_ID.:0:&APP_SESSION.:APPLICATION_PROCESS=LOADIMAGE:::USER_IMAGE:&APP_USER."  onerror="this.src=''#WORKSPACE_FILES#user_blank.png''" title="User Profile">'
,p_list_text_02=>'image_icon st'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

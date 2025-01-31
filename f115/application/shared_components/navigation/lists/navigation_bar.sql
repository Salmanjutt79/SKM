prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_imp.id(14639202674908300)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(53566643972915813)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>' '
,p_list_item_link_target=>'#'
,p_list_text_01=>'<img style="width:30px;height:30px;border-radius:50%;"  src="#WORKSPACE_FILES#help.png" alt="Guides" title="User Guides">'
,p_list_text_02=>'guide-btn'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14649443786908310)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>' '
,p_list_item_link_target=>'#'
,p_list_item_icon=>'-'
,p_list_text_01=>'<img style="width:30px;height:30px;border-radius:50%;"  src="#WORKSPACE_FILES#icon-fav.png" alt="Add Favorities" title="Add to Favorites">'
,p_list_text_02=>'fav-btn'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14649932431908310)
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

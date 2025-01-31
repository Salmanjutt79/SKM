prompt --application/shared_components/user_interface/templates/report/user_profile
begin
--   Manifest
--     ROW TEMPLATE: USER_PROFILE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(225741781168730554)
,p_row_template_name=>'User_Profile'
,p_internal_name=>'USER_PROFILE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="accountMenu_menu" class="a-Header-accountDialog" tabindex="-1">',
'    <div class="a-MediaBlock a-Menu-content">',
'        <div class="a-MediaBlock-graphic">',
'            <span class="a-Header-userPhoto a-Header-userPhoto--large">',
'        <img src="#IMAGE#" height="64" width="64" class="a-Header-photo" alt="Profile image for user #ID#">',
'      </span>',
'            <!--<a href="#EDIT_PROFIL#" class="a-Header-accountDialog-editProfile a-Menu-item a-Menu-label" id="EDIT_PROFILE_LINK">Edit Profile</a> -->',
'        </div>',
'        <div class="a-MediaBlock-content">',
'            <div class="a-Menu-label a-Menu-item" tabindex="-1">',
'                <span class="a-Header-dialogText a-Header-dialogName">#FIRSTNAME# #LASTNAME#</span>',
'                <span class="a-Header-dialogText a-Header-dialogUsername">#EMAIL#</span></div>',
'            <div class="a-Menu-label a-Menu-item" tabindex="-1">',
'                <span class="a-Header-dialogLabel">Department</span>',
'                <span class="a-Header-dialogValue">#DEPARTMENT#</span></div>',
'            <div class="a-Menu-label a-Menu-item" tabindex="-1">',
'                <span class="a-Header-dialogLabel">Designation</span><span class="a-Header-dialogValue">#DESIGNATION#</span></div>',
'        </div>',
'    </div>',
'</div>',
''))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>101
,p_theme_class_id=>4
,p_reference_id=>263940118632407708
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/

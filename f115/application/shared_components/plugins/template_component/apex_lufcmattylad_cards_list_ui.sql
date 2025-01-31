prompt --application/shared_components/plugins/template_component/apex_lufcmattylad_cards_list_ui
begin
--   Manifest
--     PLUGIN: APEX.LUFCMATTYLAD.CARDS_LIST_UI
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(47793954625095228709)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'APEX.LUFCMATTYLAD.CARDS_LIST_UI'
,p_display_name=>'Cards List UI'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','APEX.LUFCMATTYLAD.CARDS_LIST_UI'),'')
,p_css_file_urls=>'#PLUGIN_FILES#card-list-ui#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div><span aria-hidden="true" class="fa fa-star-o fa-5x fa-anim-spin"></span></div>',
'{else/}',
'',
'    <div class="luf-eachCard">',
'    <div class="luf-cardContent">',
'        <div class="luf-cardImage">',
'            <img src="#LOGO#" alt="#TITLE#-logo">',
'        </div>',
'        <div class="luf-cardInfo">',
'            <h2 class="luf-cardTitle">#TITLE#</h2>',
'        <span class="luf-cardSubTitle">#SUBTITLE#</span>',
'        <p class="luf-cardText">#DESCRIPTION#</p>',
'        </div>',
'    </div>',
'    <div class="luf-userActions">',
'        #SECONDARY_BUTTON#',
'        #PRIMARY_BUTTON#',
'    </div>',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<div class="luf-allCardsContainer">#APEX$ROWS#</div>'
,p_report_row_template=>'<span #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</span>'
,p_report_placeholder_count=>1
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Cards List UI Design Template Component gives a clean card with Image, Detail and Action Buttons'
,p_version_identifier=>'23.1.1'
,p_about_url=>'https://github.com/lufcmattylad/Cards-List-UI-Template-Component'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Kudos to G Rohit @ https://codepen.io/grohit/embed/PozVdow',
'Adapted to APEX by Matt Mulvaney'))
,p_files_version=>57
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(47793954869808228722)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'APILINK'
,p_prompt=>'Apilink'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(47793955302172228722)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(47793955631306228722)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'LOGO'
,p_prompt=>'Logo'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(47793956110415228722)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'SUBTITLE'
,p_prompt=>'Subtitle'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(47793956430626228722)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(47798072218172352966)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_name=>'Primary'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="rw-Button-primary{if IS_HOT/} is-hot{endif/} {if ICON_CLASSES/}rw-Button--iconText{else/}rw-Button--text{endif/} #CSS_CLASSES#" href="#LINK_URL#" title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif/}>',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(47799708490501278281)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_name=>'Secondary'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="rw-Button-primary btn-secondary{if IS_HOT/} is-hot{endif/} {if ICON_CLASSES/}rw-Button--iconText{else/}rw-Button--text{endif/} #CSS_CLASSES#" href="#LINK_URL#" title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif/}>',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(47798676374494207520)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_name=>'Primary'
,p_static_id=>'PRIMARY_BUTTON'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(47798072218172352966)
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(47799721693008282309)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_name=>'Secondary'
,p_static_id=>'SECONDARY_BUTTON'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
,p_template_id=>wwv_flow_imp.id(47799708490501278281)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '40696D706F72742075726C2868747470733A2F2F666F6E74732E676F6F676C65617069732E636F6D2F637373323F66616D696C793D50616C616E7175696E3A77676874403130303B3230303B3330303B3430303B3530303B3630303B3730302664697370';
wwv_flow_imp.g_varchar2_table(2) := '6C61793D73776170293B0D0A0D0A2E72772D427574746F6E2D7072696D617279207B0D0A2020666F6E742D73697A653A20313670783B0D0A2020666F6E742D66616D696C793A202250616C616E7175696E222C2073616E732D73657269663B0D0A202070';
wwv_flow_imp.g_varchar2_table(3) := '616464696E673A20313070783B0D0A20206D617267696E3A20313070783B0D0A2020637572736F723A20706F696E7465723B0D0A20206261636B67726F756E643A20233134316133313B0D0A2020636F6C6F723A20236666663B0D0A2020626F72646572';
wwv_flow_imp.g_varchar2_table(4) := '3A20303B0D0A2020626F726465722D7261646975733A203570783B0D0A20207472616E736974696F6E3A20616C6C20302E317320656173652D696E3B0D0A2020646973706C61793A20696E6C696E652D666C65783B0D0A20206A7573746966792D636F6E';
wwv_flow_imp.g_varchar2_table(5) := '74656E743A2063656E7465723B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A202077696474683A203430253B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E72772D427574746F6E2D7072696D617279';
wwv_flow_imp.g_varchar2_table(6) := '3A686F766572207B0D0A20206261636B67726F756E643A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A7D0D0A0D0A2E72772D427574746F6E2D7072696D6172793A666F637573207B0D0A20206F75746C696E653A206E6F6E65';
wwv_flow_imp.g_varchar2_table(7) := '3B0D0A7D0D0A0D0A2E62746E2D7365636F6E64617279207B0D0A20206261636B67726F756E643A20236666666666663B0D0A2020636F6C6F723A20233134316133313B0D0A7D0D0A0D0A2E62746E2D7365636F6E646172793A686F766572207B0D0A2020';
wwv_flow_imp.g_varchar2_table(8) := '636F6C6F723A20236666663B0D0A7D0D0A0D0A2E6C75662D616C6C4361726473436F6E7461696E6572207B0D0A20206D61782D77696474683A203131353070783B0D0A202077696474683A20313030253B0D0A2020666C65782D777261703A2077726170';
wwv_flow_imp.g_varchar2_table(9) := '3B0D0A2020646973706C61793A20666C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A20666C65782D73746172743B0D0A7D0D0A0D0A2E6C75662D6561636843617264207B0D0A20';
wwv_flow_imp.g_varchar2_table(10) := '206261636B67726F756E643A20236666663B0D0A2020626F726465722D7261646975733A20313070783B0D0A20206D696E2D6865696768743A2032323070783B0D0A20206D61782D77696474683A2033353070783B0D0A2020706F736974696F6E3A2072';
wwv_flow_imp.g_varchar2_table(11) := '656C61746976653B0D0A20206D617267696E3A20313070783B0D0A2020626F726465722D636F6C6F723A20236631663166313B0D0A2020626F726465722D7374796C653A20736F6C69643B0D0A2020626F726465722D77696474683A203170783B0D0A7D';
wwv_flow_imp.g_varchar2_table(12) := '0D0A2E6C75662D65616368436172643A686F766572207B0D0A2020626F782D736861646F773A2030203470782031307078202330303030303033303B0D0A7D0D0A2E6C75662D63617264496D616765207B0D0A20206D617267696E2D72696768743A2031';
wwv_flow_imp.g_varchar2_table(13) := '3670783B0D0A7D0D0A0D0A2E6C75662D63617264436F6E74656E74207B0D0A2020646973706C61793A20666C65783B0D0A202070616464696E673A20333070783B0D0A7D0D0A0D0A2E6C75662D636172645469746C65207B0D0A20206C696E652D686569';
wwv_flow_imp.g_varchar2_table(14) := '6768743A20312E323B0D0A20206D617267696E3A20303B0D0A7D0D0A0D0A2E6C75662D636172645375625469746C65207B0D0A2020666F6E742D73697A653A20313470783B0D0A2020636F6C6F723A20233135313932363B0D0A7D0D0A0D0A2E6C75662D';
wwv_flow_imp.g_varchar2_table(15) := '6361726454657874207B0D0A20206C696E652D6865696768743A20312E363B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A20206F7061636974793A20313B0D0A20207472616E736974696F6E3A20616C6C20302E3573206375626963';
wwv_flow_imp.g_varchar2_table(16) := '2D62657A69657228302E38332C20302C20302E31382C20302E3738293B0D0A7D0D0A0D0A2E6C75662D75736572416374696F6E73207B0D0A202077696474683A20313030253B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20206F7061';
wwv_flow_imp.g_varchar2_table(17) := '636974793A20303B0D0A20207472616E736974696F6E3A20616C6C20302E35732063756269632D62657A69657228302E38332C20302C20302E31382C20302E3738293B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020626F74746F6D';
wwv_flow_imp.g_varchar2_table(18) := '3A20303B0D0A7D0D0A0D0A2E6C75662D65616368436172643A686F766572202E6C75662D6361726454657874207B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A20616C6C20302E35732063756269632D62657A6965722830';
wwv_flow_imp.g_varchar2_table(19) := '2E38332C20302C20302E31382C20302E3738293B0D0A7D0D0A0D0A2E6C75662D65616368436172643A686F766572202E6C75662D75736572416374696F6E73207B0D0A20206261636B67726F756E643A20236631663166313B0D0A202070616464696E67';
wwv_flow_imp.g_varchar2_table(20) := '3A20313070783B0D0A2020626F726465722D7261646975733A2030203020357078203570783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20206F7061636974793A20313B0D0A20207472616E736974696F6E3A20616C6C20302E3573';
wwv_flow_imp.g_varchar2_table(21) := '2063756269632D62657A69657228302E38332C20302C20302E31382C20302E3738293B0D0A7D0D0A0D0A406D6564696120616C6C20616E6420286D61782D77696474683A2031303234707829207B0D0A20202E6C75662D616C6C4361726473436F6E7461';
wwv_flow_imp.g_varchar2_table(22) := '696E6572207B0D0A202020206A7573746966792D636F6E74656E743A2063656E7465723B0D0A20207D0D0A7D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(47795626704254131997)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_file_name=>'card-list-ui.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '40696D706F72742075726C2868747470733A2F2F666F6E74732E676F6F676C65617069732E636F6D2F637373323F66616D696C793D50616C616E7175696E3A77676874403130303B3230303B3330303B3430303B3530303B3630303B3730302664697370';
wwv_flow_imp.g_varchar2_table(2) := '6C61793D73776170293B2E72772D427574746F6E2D7072696D6172797B666F6E742D73697A653A313670783B666F6E742D66616D696C793A2250616C616E7175696E222C73616E732D73657269663B70616464696E673A313070783B6D617267696E3A31';
wwv_flow_imp.g_varchar2_table(3) := '3070783B637572736F723A706F696E7465723B6261636B67726F756E643A233134316133313B636F6C6F723A236666663B626F726465723A303B626F726465722D7261646975733A3570783B7472616E736974696F6E3A616C6C202E317320656173652D';
wwv_flow_imp.g_varchar2_table(4) := '696E3B646973706C61793A696E6C696E652D666C65783B6A7573746966792D636F6E74656E743A63656E7465723B616C69676E2D6974656D733A63656E7465723B77696474683A3430253B746578742D616C69676E3A63656E7465727D2E72772D427574';
wwv_flow_imp.g_varchar2_table(5) := '746F6E2D7072696D6172793A686F7665727B6261636B67726F756E643A766172282D2D75742D70616C657474652D7072696D617279297D2E72772D427574746F6E2D7072696D6172793A666F6375737B6F75746C696E653A307D2E62746E2D7365636F6E';
wwv_flow_imp.g_varchar2_table(6) := '646172797B6261636B67726F756E643A236666663B636F6C6F723A233134316133317D2E62746E2D7365636F6E646172793A686F7665727B636F6C6F723A236666667D2E6C75662D616C6C4361726473436F6E7461696E65727B6D61782D77696474683A';
wwv_flow_imp.g_varchar2_table(7) := '3131353070783B77696474683A313030253B666C65782D777261703A777261703B646973706C61793A666C65783B616C69676E2D6974656D733A63656E7465723B6A7573746966792D636F6E74656E743A666C65782D73746172747D2E6C75662D656163';
wwv_flow_imp.g_varchar2_table(8) := '68436172647B6261636B67726F756E643A236666663B626F726465722D7261646975733A313070783B6D696E2D6865696768743A32323070783B6D61782D77696474683A33353070783B706F736974696F6E3A72656C61746976653B6D617267696E3A31';
wwv_flow_imp.g_varchar2_table(9) := '3070783B626F726465722D636F6C6F723A236631663166313B626F726465722D7374796C653A736F6C69643B626F726465722D77696474683A3170787D2E6C75662D65616368436172643A686F7665727B626F782D736861646F773A3020347078203130';
wwv_flow_imp.g_varchar2_table(10) := '7078202330303030303033307D2E6C75662D63617264496D6167657B6D617267696E2D72696768743A313670787D2E6C75662D63617264436F6E74656E747B646973706C61793A666C65783B70616464696E673A333070787D2E6C75662D636172645469';
wwv_flow_imp.g_varchar2_table(11) := '746C657B6C696E652D6865696768743A312E323B6D617267696E3A307D2E6C75662D636172645375625469746C657B666F6E742D73697A653A313470783B636F6C6F723A233135313932367D2E6C75662D63617264546578747B6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(12) := '743A312E363B666F6E742D7765696768743A3430303B6F7061636974793A313B7472616E736974696F6E3A616C6C202E35732063756269632D62657A696572282E38332C302C2E31382C2E3738297D2E6C75662D75736572416374696F6E737B77696474';
wwv_flow_imp.g_varchar2_table(13) := '683A313030253B746578742D616C69676E3A63656E7465723B706F736974696F6E3A6162736F6C7574653B626F74746F6D3A307D2E6C75662D65616368436172643A686F766572202E6C75662D63617264546578742C2E6C75662D65616368436172643A';
wwv_flow_imp.g_varchar2_table(14) := '686F766572202E6C75662D75736572416374696F6E732C2E6C75662D75736572416374696F6E737B6F7061636974793A303B7472616E736974696F6E3A616C6C202E35732063756269632D62657A696572282E38332C302C2E31382C2E3738297D2E6C75';
wwv_flow_imp.g_varchar2_table(15) := '662D65616368436172643A686F766572202E6C75662D75736572416374696F6E737B6261636B67726F756E643A236631663166313B70616464696E673A313070783B626F726465722D7261646975733A30203020357078203570783B746578742D616C69';
wwv_flow_imp.g_varchar2_table(16) := '676E3A63656E7465723B6F7061636974793A317D406D6564696120616C6C20616E6420286D61782D77696474683A313032347078297B2E6C75662D616C6C4361726473436F6E7461696E65727B6A7573746966792D636F6E74656E743A63656E7465727D';
wwv_flow_imp.g_varchar2_table(17) := '7D';
null;
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(48051865376731717227)
,p_plugin_id=>wwv_flow_imp.id(47793954625095228709)
,p_file_name=>'card-list-ui.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/

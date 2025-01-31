prompt --application/shared_components/plugins/template_component/patientcard_radiation
begin
--   Manifest
--     PLUGIN: PATIENTCARD-RADIATION
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
 p_id=>wwv_flow_imp.id(62019303597164803817)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'PATIENTCARD-RADIATION'
,p_display_name=>'PatientCard-Radiation'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','PATIENTCARD-RADIATION'),'')
,p_css_file_urls=>'#PLUGIN_FILES#Patient-Card-RadiationCSS#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-rad-card" id="#SRNO#" data-srno="#SRNO#">',
'    <div class="t-rad-card set" id="#SRNO#" data-id="#SRNO#">',
'        <div class="container" id="row-1-#SRNO#">',
'            <div class="row c-top-row">',
'                <div class="col col-1  col-start">',
'                    <div class="container">',
'                        <div class="row ">',
'                            <div class="col col-12 apex-col-auto col-start col-end">',
'                                <div class="">',
'                                    <span id="TIME-#SRNO#" class="f-time " title="Appointment Time">#TIME#</span>',
'                                </div>',
'                            </div>',
'                        </div>',
'                        <div class="row ">',
'                            <div class="col col-12 apex-col-auto col-start col-end">',
'                                <div class="">',
'                                    <span id="DATE-#SRNO#" class="f-date " title="Appointment Date">#DATE#</span>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="col col-8  ">',
'                    <div class="container">',
'                        <div class="row ">',
'                            <div class="col col-4 apex-col-auto col-start">',
'                                <div class="">',
'                                    <span id="PATIENT_NAME-#SRNO#" class="f-name " title="Patient Name">#PATIENT_NAME#</span>',
'                                </div>',
'                                <div class="">',
'                                    <span id="PATIENT_MRNO-#SRNO#" class="f-mrno " title="Patient Medical Record No.">#PATIENT_MRNO#</span>',
'                                </div>',
'                            </div>',
'                            <div class="col col-4 apex-col-auto ">',
'                                <div class="">',
'                                    <span id="SITE-#SRNO#" class="f-site " title="Treatment Site"#SITE#</span>',
'                                </div>',
'                                <div class="">',
'                                    <span id="REQ_STATUS-#SRNO#" class="f-req-stat " title="Request Status">#REQ_STATUS#</span>',
'                                </div>',
'                            </div>',
'                            <div class="col col-4 apex-col-auto col-end">',
'                                <div class="">',
'                                    <span id="DOCTOR-#SRNO#" class="f-doctor " title="Doctor">#DOCTOR#</span>',
'                                </div>',
'',
'                                <div class="">',
'                                    <span id="PHYSIST-#SRNO#" class="f-physist " title="Physicist">#PHYSIST#</span>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="col col-1  ">',
'                    <div class="container">',
'                        <div class="row ">',
'                            <div class="col col-12 apex-col-auto col-start col-end">',
'                                {if ?FRACTION/}',
'                                <div class="f-fraction-cont">',
'                                    <span id="FRACTION-#SRNO#" class="f-fraction " title="Faraction No.">#FRACTION#</span>',
'                                </div>',
'                                {endif/}',
'                            </div>',
'                        </div>',
'                        <div class="row ">',
'                            <div class="col col-12 apex-col-auto col-start col-end">',
'',
'                                <div class="">',
'                                    <span id="TOT_FRACTION-#SRNO#" class="f-tot-fraction " title="Performed Fractions / Total Fractions">#TOT_FRACTION#</span>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="col col-2 apex-col-auto col-end">',
'                    <div class="container">',
'                        <div class="row ">',
'                            <div class="col col-6 apex-col-auto col-start">',
'',
'                                <div class="">',
'                                    <span id="APPT_STATUS-#SRNO#" class="f-appt-stat " title="Appointment Status">#APPT_STATUS#</span>',
'',
'                                </div>',
'                            </div>',
'                            <div class="col col-6 apex-col-auto col-end">',
'                                #ACTION#',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="container" id="row-2-#SRNO#">',
'            <div class="row ">',
'                <div class="col col-12 apex-col-auto col-start col-end">',
'                    <div class="container">',
'                        <div class="row ">',
'                            <div class="col col-10 apex-col-auto col-start">',
'',
'                                <div class="">',
'                                    <span id="REMARKS-#SRNO#" class="f-rmk " title="Remarks">#REMARKS#</span>',
'                                </div>',
'                            </div>',
'                            <div class="col col-1 apex-col-auto ">',
'',
'                                <div class="">',
'                                    <span id="RADIATION_NO-#SRNO#" class="f-rad-no " title="Radiation No.">#RADIATION_NO#</span>',
'                                </div>',
'                            </div>',
'                            <div class="col col-1 apex-col-auto col-end">  ',
'',
'                                <div class="">',
'                                    <span id="SRNO-#SRNO#" class="f-appt-srno " title="Appointment SRNO">#SRNO#</span>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        {if ?ALERTS/}',
'        <div class="container" id="row-3-#SRNO#">',
'            <div class="row ">',
'                <div class="col col-12 apex-col-auto col-start col-end">',
'                    <div class="container">',
'                        <div class="">',
'                            <span id="ALERTS-#SRNO#" class="f-alerts " title="Alerts">#ALERTS#</span>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'    {endif/}',
'</div>',
'<script>',
'  //  $( function() {',
'   // $( document ).tooltip();',
' // } );',
'</script>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>101
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62034861407390131086)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TIME'
,p_prompt=>'Time'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62034912229343138567)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035091960172905529)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'PATIENT_NAME'
,p_prompt=>'Patient Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035110408736906213)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'PATIENT_MRNO'
,p_prompt=>'Patient Mrno'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035263116246150548)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'SITE'
,p_prompt=>'Site'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035272383769152337)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'REQ_STATUS'
,p_prompt=>'Request Status'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035273570052152977)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'DOCTOR'
,p_prompt=>'Doctor'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035150707015910517)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'PHYSIST'
,p_prompt=>'Physist'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035279032368154803)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'FRACTION'
,p_prompt=>'Fraction ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035293407318157072)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'TOT_FRACTION'
,p_prompt=>'Total Fraction Display'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035744774046915470)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'APPT_STATUS'
,p_prompt=>'Appointment Status'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035333882386166232)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>170
,p_static_id=>'ACTION'
,p_prompt=>'Action'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035855773918924012)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'REMARKS'
,p_prompt=>'Remarks'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035870681886924765)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'RADIATION_NO'
,p_prompt=>'Radiation No'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62035884292146925511)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'SRNO'
,p_prompt=>'Srno'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(62036226532672169645)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'ALERTS'
,p_prompt=>'Alerts'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(16985760660339765)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'MACHINE_ID'
,p_prompt=>'Machine Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17189206340830756)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'PERFORMANCE_TYPE_ID'
,p_prompt=>'Performance Type Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17189563061832947)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'SCHEMA_ID'
,p_prompt=>'Schema Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17189847192838948)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'WORKFLOW_TYPE_ID'
,p_prompt=>'Workflow Type Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17190783760840016)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'WORK_FLOW_ID'
,p_prompt=>'Work Flow Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17191506343842183)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'NEXT_EVENT_ID'
,p_prompt=>'Next Event Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17370923257364772)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'QUEUE_ID'
,p_prompt=>'Queue Id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17391260875729549)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_static_id=>'LINK'
,p_prompt=>'Link'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(17396834540834976)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_static_id=>'IS_PATIENT_ADMITTED'
,p_prompt=>'Is Patient Admitted'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(9236406520679862)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_name=>'RowSelection'
,p_static_id=>'ROWSELECTION'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
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
wwv_flow_imp.g_varchar2_table(1) := '2E7261642D637573746F6D2D63617264202E612D4952522D7461626C65202E752D744C7B70616464696E673A3170783B636F6C6F723A766172282D2D746578742D7365636F6E6461792D636F6C6F72297D2E742D7261642D636172647B6261636B67726F';
wwv_flow_imp.g_varchar2_table(2) := '756E643A6C696E6561722D6772616469656E7428746F20626F74746F6D2C2366376662666320302C23653666326635203430252C236363653665632031303025293B70616464696E672D626C6F636B2D656E643A766172282D2D612D67762D63656C6C2D';
wwv_flow_imp.g_varchar2_table(3) := '70616464696E672D792C347078293B70616464696E672D626C6F636B2D73746172743A766172282D2D612D67762D63656C6C2D70616464696E672D792C347078293B70616464696E672D696E6C696E652D656E643A766172282D2D612D67762D63656C6C';
wwv_flow_imp.g_varchar2_table(4) := '2D70616464696E672D782C387078293B70616464696E672D696E6C696E652D73746172743A766172282D2D612D67762D63656C6C2D70616464696E672D782C387078293B626F726465723A3570787D2E742D7261642D636172643A686F7665722C2E742D';
wwv_flow_imp.g_varchar2_table(5) := '7261642D636172645B69732D6163746976655D7B6261636B67726F756E643A6C696E6561722D6772616469656E7428746F20626F74746F6D2C2366376662666320302C23666366656666203430252C236539663366352031303025297D2E662D6E616D65';
wwv_flow_imp.g_varchar2_table(6) := '2C2E662D74696D657B666F6E742D73697A653A766172282D2D746578742D7072696D6172792D666F6E7473697A65293B636F6C6F723A766172282D2D746578742D7072696D6172792D636F6C6F72297D2E662D617070742D737461742C2E662D646F6374';
wwv_flow_imp.g_varchar2_table(7) := '6F722C2E662D6672616374696F6E2C2E662D6D726E6F2C2E662D6E616D652C2E662D736974652C2E662D74696D657B666F6E742D7765696768743A3730307D2E662D6672616374696F6E7B636F6C6F723A766172282D2D75742D70616C657474652D7072';
wwv_flow_imp.g_varchar2_table(8) := '696D6172792D636F6E7472617374297D2E662D6672616374696F6E2D636F6E747B6261636B67726F756E642D636F6C6F723A766172282D2D75742D70616C657474652D7072696D617279293B6865696768743A333270783B77696474683A333270783B62';
wwv_flow_imp.g_varchar2_table(9) := '6F726465722D7261646975733A3970783B646973706C61793A666C65783B616C69676E2D6974656D733A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465727D2E662D617070742D73726E6F2C2E662D7261642D6E6F7B666F6E742D';
wwv_flow_imp.g_varchar2_table(10) := '73697A653A2E3672656D3B636F6C6F723A233636367D2E7261642D637573746F6D2D636172647B637572736F723A64656661756C747D2E7261642D637573746F6D2D63617264207370616E7B637572736F723A706F696E7465727D3A726F6F747B2D2D74';
wwv_flow_imp.g_varchar2_table(11) := '6578742D7072696D6172792D636F6C6F723A766172282D2D75742D70616C657474652D7072696D617279293B2D2D746578742D7365636F6E6461792D636F6C6F723A4845582823363636293B2D2D746578742D7072696D6172792D666F6E7473697A653A';
wwv_flow_imp.g_varchar2_table(12) := '3172656D7D';
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
 p_id=>wwv_flow_imp.id(10880270244573492)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_file_name=>'Patient-Card-RadiationCSS.min.css'
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
wwv_flow_imp.g_varchar2_table(1) := '2E7261642D637573746F6D2D63617264202E612D4952522D7461626C65202E752D744C7B0D0A2020202070616464696E673A203170783B0D0A20202020636F6C6F723A20766172282D2D746578742D7365636F6E6461792D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(2) := '2E742D7261642D636172647B0D0A202020206261636B67726F756E643A206C696E6561722D6772616469656E7428746F20626F74746F6D2C2020236637666266632030252C23653666326635203430252C236363653665632031303025293B0D0A202020';
wwv_flow_imp.g_varchar2_table(3) := '2070616464696E672D626C6F636B2D656E643A20766172282D2D612D67762D63656C6C2D70616464696E672D792C347078293B0D0A2020202070616464696E672D626C6F636B2D73746172743A20766172282D2D612D67762D63656C6C2D70616464696E';
wwv_flow_imp.g_varchar2_table(4) := '672D792C347078293B0D0A2020202070616464696E672D696E6C696E652D656E643A20766172282D2D612D67762D63656C6C2D70616464696E672D782C387078293B0D0A2020202070616464696E672D696E6C696E652D73746172743A20766172282D2D';
wwv_flow_imp.g_varchar2_table(5) := '612D67762D63656C6C2D70616464696E672D782C387078293B0D0A20202020626F726465723A203570783B0D0A7D0D0A2E742D7261642D636172645B69732D6163746976655D7B0D0A202020206261636B67726F756E643A206C696E6561722D67726164';
wwv_flow_imp.g_varchar2_table(6) := '69656E7428746F20626F74746F6D2C2020236637666266632030252C23666366656666203430252C236539663366352031303025293B0D0A7D0D0A2E742D7261642D636172643A686F7665727B0D0A202020206261636B67726F756E643A206C696E6561';
wwv_flow_imp.g_varchar2_table(7) := '722D6772616469656E7428746F20626F74746F6D2C2020236637666266632030252C23666366656666203430252C236539663366352031303025293B0D0A7D0D0A2E662D74696D652C2E662D6E616D657B0D0A20666F6E742D73697A653A20766172282D';
wwv_flow_imp.g_varchar2_table(8) := '2D746578742D7072696D6172792D666F6E7473697A65293B200D0A20636F6C6F723A20766172282D2D746578742D7072696D6172792D636F6C6F72293B0D0A7D0D0A2E662D74696D652C0D0A2E662D6E616D652C0D0A2E662D6D726E6F2C0D0A2E662D73';
wwv_flow_imp.g_varchar2_table(9) := '6974652C0D0A2E662D646F63746F722C0D0A2E662D6672616374696F6E2C0D0A2E662D617070742D737461747B0D0A666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E662D6672616374696F6E7B0D0A20202020636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(10) := '2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B3B0D0A7D0D0A2E662D6672616374696F6E2D636F6E747B0D0A202020206261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172';
wwv_flow_imp.g_varchar2_table(11) := '79293B0D0A202020206865696768743A20333270783B0D0A2020202077696474683A20333270783B0D0A20202020626F726465722D7261646975733A203970783B0D0A20202020646973706C61793A20666C65783B0D0A20202020616C69676E2D697465';
wwv_flow_imp.g_varchar2_table(12) := '6D733A2063656E7465723B0D0A202020206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E662D7261642D6E6F2C202E662D617070742D73726E6F7B0D0A20202020666F6E742D73697A653A202E3672656D3B0D0A2020202063';
wwv_flow_imp.g_varchar2_table(13) := '6F6C6F723A20233636363B0D0A7D0D0A2E7261642D637573746F6D2D636172647B0D0A20202020637572736F723A2064656661756C743B0D0A7D0D0A2E7261642D637573746F6D2D63617264207370616E7B0D0A20202020637572736F723A20706F696E';
wwv_flow_imp.g_varchar2_table(14) := '7465723B0D0A7D0D0A3A726F6F747B0D0A202020202D2D746578742D7072696D6172792D636F6C6F72203A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A202020202D2D746578742D7365636F6E6461792D636F6C6F72203A20';
wwv_flow_imp.g_varchar2_table(15) := '4845582823363636293B0D0A202020202D2D746578742D7072696D6172792D666F6E7473697A65203A203172656D3B0D0A7D0D0A';
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
 p_id=>wwv_flow_imp.id(62082808154664179947)
,p_plugin_id=>wwv_flow_imp.id(62019303597164803817)
,p_file_name=>'Patient-Card-RadiationCSS.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/

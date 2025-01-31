prompt --application/shared_components/plugins/process_type/prc_kadeyemiapex_savetodropbox
begin
--   Manifest
--     PLUGIN: PRC.KADEYEMIAPEX.SAVETODROPBOX
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
 p_id=>wwv_flow_imp.id(101986176843475873)
,p_plugin_type=>'PROCESS TYPE'
,p_name=>'PRC.KADEYEMIAPEX.SAVETODROPBOX'
,p_display_name=>'Save Files to Dropbox'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_PROC:APEX_APPL_AUTOMATION_ACTIONS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('PROCESS TYPE','PRC.KADEYEMIAPEX.SAVETODROPBOX'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 4/24/2021 5:50:36 PM (QP5 v5.294) */',
'-- =============================================================================',
'--',
'--  Author: Kehinde Adeyemi',
'--  Date: 24.04.2021',
'--  This plug-in lets users upload files to Dropbox.',
'--',
'--',
'--  License: MIT',
'--',
'--  GitHub: https://github.com/',
'--',
'--',
'-- Version 1',
'--',
'-- =============================================================================',
'',
'FUNCTION render (p_process   IN apex_plugin.t_process,',
'                 p_plugin    IN apex_plugin.t_plugin)',
'   RETURN apex_plugin.t_process_exec_result',
'AS',
'   l_result                    apex_plugin.t_process_exec_result;',
'',
'   -- general attributes',
'   l_access_token              p_process.attribute_01%TYPE := p_process.attribute_01;',
'   l_file_path                 p_process.attribute_02%TYPE := p_process.attribute_02;',
'   l_requested_visibility      p_process.attribute_03%TYPE',
'                                  := p_process.attribute_03;',
'   l_audience                  p_process.attribute_04%TYPE',
'                                  := p_process.attribute_04;',
'   l_access                    p_process.attribute_05%TYPE',
'                                  := p_process.attribute_05;',
'   l_filebrowse_item           p_process.attribute_09%TYPE',
'                                  := p_process.attribute_06;',
'   l_generated_urls            p_process.attribute_10%TYPE',
'                                  := p_process.attribute_07;',
'',
'',
'   l_response_authclob         CLOB;',
'   l_rest_authurl              VARCHAR2 (1000);',
'   l_parm_names                apex_application_global.vc_arr2;',
'   l_parm_values               apex_application_global.vc_arr2;',
'',
'   l_rest_url                  VARCHAR2 (1000);',
'   l_payload                   CLOB;',
'   l_response_clob             CLOB;',
'   l_fileid                    VARCHAR2 (1000);',
'   l_ext                       VARCHAR2 (20);',
'   l_mimetype                  VARCHAR2 (500);',
'   v_sqlerrm                   VARCHAR2 (1000);',
'   l_file_link                 VARCHAR2 (500);',
'   l_rest_linkurl              VARCHAR2 (1000);',
'   l_response_linkclob         CLOB;',
'   l_linkpayload               CLOB;',
'   l_preview_url               VARCHAR2 (1500);',
'   l_folder_path               VARCHAR2 (1000) := '''';',
'   l_drive_folder_id           VARCHAR2 (1000);',
'',
'',
'   l_savedfile_id              VARCHAR2 (1000);',
'   l_savedfile_name            VARCHAR2 (1000);',
'   l_savedfile_path            VARCHAR2 (1000);',
'',
'   l_rest_permissionurl        VARCHAR2 (1000);',
'   l_permissionpayload         CLOB;',
'   l_response_permissionclob   CLOB;',
'',
'',
'   l_rest_folderurl            VARCHAR2 (1000);',
'   l_folderpayload             CLOB;',
'   l_response_folderclob       CLOB;',
'',
'   l_rest_foldercrurl          VARCHAR2 (1000);',
'   l_foldercrpayload           CLOB;',
'   l_response_foldercrclob     CLOB;',
'',
'   l_preview_urls              VARCHAR2 (4000);',
'   l_file_names                apex_application_global.vc_arr2;',
'   l_count                     NUMBER := 0;',
'BEGIN',
'   ------------------Check if folder exists before file upload',
'   IF l_file_path IS NOT NULL',
'   THEN',
'      FOR i IN (SELECT folder_name from (SELECT column_value folder_name from apex_string.split (l_file_path, ''/'')) where folder_name is not null) loop',
'         BEGIN',
'            apex_web_service.g_request_headers.delete ();',
'            apex_web_service.g_request_headers (1).name := ''Content-Type'';',
'            apex_web_service.g_request_headers (1).VALUE :=',
'               ''application/json'';',
'            apex_web_service.g_request_headers (2).name := ''Authorization'';',
'            apex_web_service.g_request_headers (2).VALUE :=',
'               ''Bearer '' || l_access_token;',
'            l_rest_folderurl :=',
'               ''https://api.dropboxapi.com/2/files/list_folder'';',
'            l_folder_path :=',
'               l_folder_path || ''/'' || i.folder_name;',
'            l_folderpayload :=',
'               ''{',
'    "path":"''    || l_folder_path || ''"',
'          }'' ;',
'            -- 3. Call Web Service.',
'            l_response_folderclob :=',
'               apex_web_service.make_rest_request (',
'                  p_url           => l_rest_folderurl,',
'                  p_http_method   => ''POST'',',
'                  p_body          => l_folderpayload,',
'                  p_wallet_path   => NULL,',
'                  p_wallet_pwd    => '''');',
'',
'            IF JSON_VALUE (l_response_clob, ''$.error_summary'') LIKE',
'                  ''%path%not_found%''',
'            THEN',
'               BEGIN',
'                  apex_web_service.g_request_headers.delete ();',
'                  apex_web_service.g_request_headers (1).name :=',
'                     ''Content-Type'';',
'                  apex_web_service.g_request_headers (1).VALUE :=',
'                     ''application/json'';',
'                  apex_web_service.g_request_headers (2).name :=',
'                     ''Authorization'';',
'                  apex_web_service.g_request_headers (2).VALUE :=',
'                     ''Bearer '' || l_access_token;',
'',
'                  l_rest_foldercrurl :=',
'                     ''https://api.dropboxapi.com/2/files/create_folder_batch'';',
'                  l_foldercrpayload := ''{',
'    "paths": [',
'        "''                               || l_folder_path || ''"',
'            ],',
'    "autorename": false,',
'    "force_async": false',
'          }''       ;',
'                  -- 3. Call Web Service.',
'                  l_response_foldercrclob :=',
'                     apex_web_service.make_rest_request (',
'                        p_url           => l_rest_foldercrurl,',
'                        p_http_method   => ''POST'',',
'                        p_body          => l_foldercrpayload,',
'                        p_wallet_path   => NULL,',
'                        p_wallet_pwd    => '''');',
'',
'                  SELECT JSON_VALUE (l_response_clob,',
'                                     ''$.entries.metadata.id'')',
'                    INTO l_drive_folder_id',
'                    FROM DUAL;',
'               EXCEPTION',
'                  WHEN OTHERS',
'                  THEN',
'                     l_result.success_message :=',
'                        ''An error occurred during folder creation'';',
'               END;',
'            END IF;',
'         END;',
'      END LOOP;',
'   END IF;',
'',
'   l_file_names := APEX_UTIL.string_to_table (v (l_filebrowse_item));',
'',
'   -----------Upload file(s) from apex_application_temp_files',
'   FOR h IN 1 .. l_file_names.COUNT',
'   LOOP',
'      FOR i IN (SELECT filename, mime_type, blob_content file_blob',
'                  FROM apex_application_temp_files',
'                 WHERE name = l_file_names (h))',
'      LOOP',
'         COMMIT;',
'',
'         BEGIN',
'            apex_web_service.g_request_headers (1).name := ''Content-Type'';',
'            apex_web_service.g_request_headers (1).VALUE :=',
'               ''application/octet-stream'';',
'            apex_web_service.g_request_headers (2).name := ''Authorization'';',
'            apex_web_service.g_request_headers (2).VALUE :=',
'               ''Bearer '' || l_access_token;',
'            apex_web_service.g_request_headers (3).name := ''Dropbox-API-Arg'';',
'            apex_web_service.g_request_headers (3).VALUE :=',
'                  ''{"path": "''',
'               || NVL (l_file_path, '''')',
'               || ''/''',
'               || i.filename',
'               || ''", "mode": "add","autorename": true, "mute": false, "strict_conflict": false}'';',
'            l_rest_url :=',
'               ''https://content.dropboxapi.com/2/files/upload'';',
'',
'            -- 3. Call Web Service.',
'            l_response_clob :=',
'               apex_web_service.make_rest_request (',
'                  p_url           => l_rest_url,',
'                  p_http_method   => ''POST'',',
'                  p_body_blob     => i.file_blob,',
'                  p_wallet_path   => NULL,',
'                  p_wallet_pwd    => '''');',
'',
'',
'',
'            SELECT JSON_VALUE (l_response_clob, ''$.id''),',
'                   JSON_VALUE (l_response_clob, ''$.name''),',
'                   JSON_VALUE (l_response_clob, ''$.path_display'')',
'              INTO l_savedfile_id, l_savedfile_name, l_savedfile_path',
'              FROM DUAL;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               NULL;',
'         END;',
'',
'         -------------Get and set permission',
'',
'',
'         BEGIN',
'            l_rest_permissionurl :=',
'               ''https://api.dropboxapi.com/2/sharing/create_shared_link_with_settings'';',
'            apex_web_service.g_request_headers.delete ();',
'            apex_web_service.g_request_headers (1).name := ''Content-Type'';',
'            apex_web_service.g_request_headers (1).VALUE :=',
'               ''application/json'';',
'            apex_web_service.g_request_headers (2).name := ''Authorization'';',
'            apex_web_service.g_request_headers (2).VALUE :=',
'               ''Bearer '' || l_access_token;',
'',
'            l_permissionpayload :=',
'               ''{',
'    "path": "''   || l_savedfile_path || ''",',
'    "settings": {',
'        "requested_visibility": "'' || l_requested_visibility || ''",',
'        "audience": "'' || l_audience || ''",',
'        "access": "'' || l_access || ''"',
'    }',
'}''           ;',
'',
'',
'            -- 3. Call Web Service.',
'            l_response_permissionclob :=',
'               apex_web_service.make_rest_request (',
'                  p_url           => l_rest_permissionurl,',
'                  p_http_method   => ''POST'',',
'                  p_body          => l_permissionpayload,',
'                  p_wallet_path   => NULL,',
'                  p_wallet_pwd    => '''');',
'',
'',
'                  SELECT JSON_VALUE (l_response_permissionclob , ''$.url'')',
'              INTO l_preview_url',
'              FROM DUAL;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               NULL;',
'         END;',
'',
'',
'',
'         BEGIN',
'            apex_web_service.g_request_headers.delete ();',
'            apex_web_service.g_request_headers (1).name := ''Content-Type'';',
'            apex_web_service.g_request_headers (1).VALUE :=',
'               ''application/json'';',
'            apex_web_service.g_request_headers (2).name := ''Authorization'';',
'            apex_web_service.g_request_headers (2).VALUE :=',
'               ''Bearer '' || l_access_token;',
'            l_rest_linkurl :=',
'               ''https://api.dropboxapi.com/2/sharing/get_file_metadata'';',
'            l_linkpayload :=',
'               ''{',
'    "file": "''   || l_savedfile_id || ''",',
'    "actions": []',
'          }'' ;',
'',
'            -- 3. Call Web Service.',
'            l_response_linkclob :=',
'               apex_web_service.make_rest_request (',
'                  p_url           => l_rest_linkurl,',
'                  p_http_method   => ''POST'',',
'                  p_body          => l_linkpayload,',
'                  p_wallet_path   => NULL,',
'                  p_wallet_pwd    => '''');',
'',
'',
'            l_preview_urls :=',
'                  l_preview_urls',
'               || CHR (13)',
'               || CHR (10)',
'               || l_preview_url;',
'            l_count := l_count + 1;',
'         END;',
'      END LOOP;',
'   END LOOP;',
'',
'   IF l_preview_url IS NOT NULL',
'   THEN',
'      --',
'      APEX_UTIL.set_session_state (l_generated_urls, l_preview_urls);',
'',
'      --',
'      l_result.success_message := l_count || '' File(s) successfully uploaded'';',
'      --',
'      RETURN l_result;',
'   ELSE',
'      l_result.success_message := ''There are no files uploaded'';',
'',
'      RETURN l_result;',
'   END IF;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      l_result.success_message := ''An error occurred during file upload'';',
'',
'      RETURN l_result;',
'END render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_execution_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>369334698601506911
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0.2'
,p_plugin_comment=>'****Update made on the 13th April to ensure metadata is updated correctly'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101986420883475874)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Access Token'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101986873926475875)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'File Path'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'/home'
,p_help_text=>'File path on one drive where files will uploaded'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101987289891475875)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Requested Visibility'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'public'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The requested access for shared link'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101987610734475875)
,p_plugin_attribute_id=>wwv_flow_imp.id(101987289891475875)
,p_display_sequence=>10
,p_display_value=>'public'
,p_return_value=>'public'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101988101288475879)
,p_plugin_attribute_id=>wwv_flow_imp.id(101987289891475875)
,p_display_sequence=>20
,p_display_value=>'team_only'
,p_return_value=>'team_only'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101988624124475879)
,p_plugin_attribute_id=>wwv_flow_imp.id(101987289891475875)
,p_display_sequence=>30
,p_display_value=>'password'
,p_return_value=>'password'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101989182145475880)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Audience'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'public'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101989548365475882)
,p_plugin_attribute_id=>wwv_flow_imp.id(101989182145475880)
,p_display_sequence=>10
,p_display_value=>'public'
,p_return_value=>'public'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101990082605475882)
,p_plugin_attribute_id=>wwv_flow_imp.id(101989182145475880)
,p_display_sequence=>20
,p_display_value=>'team'
,p_return_value=>'team'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101990560308475883)
,p_plugin_attribute_id=>wwv_flow_imp.id(101989182145475880)
,p_display_sequence=>30
,p_display_value=>'no_one'
,p_return_value=>'no_one'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101991076541475883)
,p_plugin_attribute_id=>wwv_flow_imp.id(101989182145475880)
,p_display_sequence=>40
,p_display_value=>'password'
,p_return_value=>'password'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101991519236475883)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Access'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'viewer'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Requested access level you want the audience to gain from generated link'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101991932552475883)
,p_plugin_attribute_id=>wwv_flow_imp.id(101991519236475883)
,p_display_sequence=>10
,p_display_value=>'viewer'
,p_return_value=>'viewer'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101992450075475883)
,p_plugin_attribute_id=>wwv_flow_imp.id(101991519236475883)
,p_display_sequence=>20
,p_display_value=>'editor'
,p_return_value=>'editor'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(101992972970475886)
,p_plugin_attribute_id=>wwv_flow_imp.id(101991519236475883)
,p_display_sequence=>30
,p_display_value=>'max'
,p_return_value=>'max'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101993473303475886)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'File Browse Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Specify File Browse Item for uploads. Ensure APEX_APPLICATION_TEMP_FILES table storage is specified.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(101993869929475886)
,p_plugin_id=>wwv_flow_imp.id(101986176843475873)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Generate file links display item name'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Optional Text area or rich text editor to display links of uploaded file(s)'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/application_processes/loadimage
begin
--   Manifest
--     APPLICATION PROCESS: LOADIMAGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(226827666271208018)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOADIMAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (SELECT * FROM pictures.hr_pictures p where p.mrno=:GV_USER_MRNO) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( ''image/jpeg'', FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( c1.image));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || c1.mrno || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=3600'');  -- tell the browser to cache for one hour, adjust as necessary',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( c1.image );',
'     ',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

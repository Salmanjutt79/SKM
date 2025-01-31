prompt --application/shared_components/logic/application_processes/load_files
begin
--   Manifest
--     APPLICATION PROCESS: Load_files
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(297199266564936758)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load_files'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VBLOB blob;',
'v_mime_type varchar2(500);',
'vfile_name varchar2(500);',
'BEGIN',
'  SELECT DB_FIELD,',
'CASE WHEN UPPER(DOCUMENT_TYPE) in (''PDF'',''XLSX'',''XLS'',''DOCS'',''TXT'', ''DOCX'', ''avi'', ''MP4'')',
'THEN ''application/''|| UPPER(DOCUMENT_TYPE)',
'WHEN UPPER(DOCUMENT_TYPE) in (''JPG'',''PNG'',''JPEG'')',
'THEN ''image/''|| UPPER(DOCUMENT_TYPE)',
'WHEN UPPER(DOCUMENT_TYPE) in (''avi'',''MP4'')',
'THEN ''video/''|| UPPER(DOCUMENT_TYPE)',
'',
'END , DOCUMENT_NAME',
'INTO VBLOB, v_mime_type, vfile_name',
'FROM LOB.DOCUMENTS_STORE',
'WHERE DOCUMENT_ID = V(''P199_SEQ_ID'') ; --AND EGUIDED_ID=V(''P199_GUIDED_ID'');/* your item name*/',
'OWA_UTIL.MIME_HEADER(v_mime_type,FALSE);',
'  HTP.P(''Content-Length: '' || DBMS_LOB.GETLENGTH(VBLOB)); ',
'  HTP.P(''Content-Disposition: filename="'' || vfile_name || ''"'');',
'  OWA_UTIL.HTTP_HEADER_CLOSE;',
'  WPG_DOCLOAD.DOWNLOAD_FILE(VBLOB);',
'  ',
'/*owa_util.mime_header(v_mime_type,false);',
'htp.p(''Content-Length: '' || dbms_lob.getlength(v_Blob));',
'owa_util.http_header_close;',
'wpg_docload.download_file(v_Blob);*/',
'exception',
'when no_data_found then',
'null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>102
,p_name=>'Show Attachment'
,p_alias=>'SHOW-ATTACHMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Show Attachment'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P101_IMAGE{',
'        height:100vh !important;',
'        width: 100vw !important;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'MOHTASHAMBILAL'
,p_last_upd_yyyymmddhh24miss=>'20250110123110'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(816333679345452584)
,p_plug_name=>'Close Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>120
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1307003147699418593)
,p_plug_name=>'pdfViewer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224417960058711103)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="pdfViewer" style="width: 100%; height: 100vh;">',
'    <iframe src="" style="border: none;" type="application/pdf" width="100%" height="100%"></iframe>',
'</div>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'UPPER(:P102_DOCUMENT_TYPE) in(''PDF'',''APPLICATION/PDF'',''.PDF'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290616353076723980)
,p_button_sequence=>150
,p_button_name=>'Download'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_image_alt=>'File type is &P102_DOCUMENT_TYPE. kindly click here to download'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.:APPLICATION_PROCESS=Show_Attachment:NO:::P102_DOCUMENT_ID,:P102_DOCUMENT_TYPE,:P102_TABLE_NAME,:P102_PARAM_01,:P102_PARAM_02,:P102_PARAM_03,:P102_PARAM_04,:P102_PARAM_05,&P102_DOCUMENT_ID.,&P102_DOCUMENT_TYPE.,&P102_TABLE_NAME.,&P102_PARAM_01.,&P102_PARAM_02.,&P102_PARAM_03.,&P102_PARAM_04.,&P102_PARAM_05.'
,p_button_condition=>'P102_DOCUMENT_TYPE'
,p_button_condition2=>'PNG:JPG:JPEG:PDF:.png:.jpg:.jpeg:.pdf'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(290615867702723979)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(816333679345452584)
,p_button_name=>'Close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(401836846900167208)
,p_name=>'P102_TYPE'
,p_item_sequence=>110
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR(UPPER(REPLACE(A.DOCUMENT_TYPE, ''.'', '''')), 1, LENGTH(A.DOCUMENT_TYPE)) AS DOCUMENT_TYPE',
'    FROM (SELECT F.DOCUMENT_TYPE',
'            FROM LOB.DOCUMENTS_STORE F',
'           WHERE F.DOCUMENT_ID = :P102_DOCUMENT_ID',
'          UNION ALL',
'          SELECT E.DOCUMENT_TYPE',
'            FROM LEGAL_AFFAIRS.LAW_DOCUMENET_ATTACHMENT E',
'           WHERE NVL(E.DOCUMENT_ID, ''~'') =',
'                 NVL(:P102_DOCUMENT_ID, NVL(E.DOCUMENT_ID, ''~''))',
'             AND E.LAW_ID = :P102_PARAM_01',
'             AND E.LAW_SECTION_ID = :P102_PARAM_02',
'          UNION ALL',
'          SELECT D.DOCUMENT_TYPE',
'            FROM LEGAL_AFFAIRS.CONTRACT_REQUEST_WRITEUP D',
'           WHERE NVL(D.DOCUMENT_ID, ''~'') =',
'                 NVL(:P102_DOCUMENT_ID, NVL(D.DOCUMENT_ID, ''~''))',
'             AND D.REQUEST_NO = :P102_PARAM_01',
'             AND D.PARTY_ID = :P102_PARAM_02',
'        --   UNION ALL',
'        --   SELECT C.DOCUMENT_TYPE',
'        --     FROM LEGAL_AFFAIRS.CONTRACT_REQUEST_ANNEXURE C',
'        --    WHERE NVL(C.DOCUMENT_ID, ''~'') =',
'        --          NVL(:P102_DOCUMENT_ID, NVL(C.DOCUMENT_ID, ''~''))',
'        --      AND C.REQUEST_NO = :P102_PARAM_01',
'        --      AND C.PARTY_ID = :P102_PARAM_02',
'        --      AND C.ANNEXURE_NO = :P102_PARAM_03',
'        --   UNION ALL',
'        --   SELECT B.DOCUMENT_TYPE',
'        --     FROM LEGAL_AFFAIRS.AGREEMENT_TERM_ATTACHED_DOC B',
'        --    WHERE NVL(B.DOCUMENT_ID, ''~'') =',
'        --          NVL(:P102_DOCUMENT_ID, NVL(B.DOCUMENT_ID, ''~''))',
'        --      AND B.REQUEST_NO = :P102_PARAM_01',
'        --      AND B.PARTY_ID = :P102_PARAM_02',
'        --      AND B.AGREEMENT_TERM_TYPE = P102_PARAM_03',
'        --      AND B.SERIAL_NO = P102_PARAM_04',
'        ) A'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'P102_TYPE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(224555229740711188)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(401837187401167211)
,p_name=>'P102_DOCUMENT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(401837267158167212)
,p_name=>'P102_TABLE_NAME'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(401837429033167213)
,p_name=>'P102_PARAM_01'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(401837441608167214)
,p_name=>'P102_PARAM_02'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(426860423363309212)
,p_name=>'P102_PARAM_03'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(426860437842309213)
,p_name=>'P102_PARAM_04'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(426860558606309214)
,p_name=>'P102_PARAM_05'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(426860642517309215)
,p_name=>'P102_DOCUMENT_TYPE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(504848941691408497)
,p_name=>'P102_ACCESS_PATH'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1077446773882180791)
,p_name=>'P102_IMAGE'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_grid_label_column_span=>0
,p_display_when=>'UPPER(:P102_DOCUMENT_TYPE) in (''JPG'', ''image/JPG'',''PNG'',''IMAGE/PNG'',''JPEG'',''.JPG'',''.PNG'',''.JPEG'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ATTACHMENT',
'  FROM (SELECT G.DB_FIELD AS ATTACHMENT',
'          FROM LOB.DOCUMENTS_STORE G',
'         WHERE G.DOCUMENT_ID = :P102_DOCUMENT_ID',
'        --    AND :P102_TABLE_NAME = NULL',
'        ) A',
' WHERE A.ATTACHMENT IS NOT NULL;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290621087907723989)
,p_name=>'showDocument'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290621500551723989)
,p_event_id=>wwv_flow_imp.id(290621087907723989)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function getData() {',
'    try {',
'        // Fetch the document data from the APEX page',
'        let afetch = await fetch(''f?p=&APP_ID.:102:&SESSION.:APPLICATION_PROCESS=Show_Attachment:NO:::P102_DOCUMENT_ID,:P102_DOCUMENT_TYPE,:P102_TABLE_NAME,:P102_PARAM_01,:P102_PARAM_02,:P102_PARAM_03,:P102_PARAM_04,:P102_PARAM_05,&P102_DOCUMENT_ID.,'
||'&P102_DOCUMENT_TYPE.,&P102_TABLE_NAME.,&P102_PARAM_01.,&P102_PARAM_02.,&P102_PARAM_03.,&P102_PARAM_04.,&P102_PARAM_05.'');',
'        let path = apex.item("P102_ACCESS_PATH").getValue(); // accessPath should be initialized somewhere in your code',
'        // apex.message.alert(''File location: '' + (path ? ''On OS Path: '' + path : ''In Database''));',
'        if (!path) { // If no accessPath, assume the file is in the database',
'            let blob = await afetch.blob();',
'            let blobUrl = URL.createObjectURL(blob);',
'            //apex.message.alert(''File in DB'');',
'            // Check for the pdfContainer and iframe existence',
'            let pdfContainer = document.getElementById(''pdfViewer'');',
'            if (pdfContainer) {',
'                let iframe = pdfContainer.getElementsByTagName(''iframe'')[0];',
'                if (iframe) {',
'                    iframe.src = blobUrl;',
'                }',
'            } //else {',
'              //  apex.message.alert(''PDF container or iframe not found!'');',
'            //}',
'        } else { // File is on the OS, outside the database',
'            //apex.message.alert(''File on OS path:'' + path);',
'            let wsBaseURL=''https://wlsd.skm.org.pk:8008/reportcalling/pdf/'';  // for Dev',
'            // let wsBaseURL=''http://wlslhr1.skm.org.pk:7008/reportcalling/pdf/'';  // for Live',
'            let sourceMode=''from_local_path'';',
'',
'            let wsURL = wsBaseURL + sourceMode;',
'            // let docPath = path; // Ensure this value is populated correctly',
'            let docPath=''//192.192.9.107/hospitalrecords/Pathology/Workorders/2024/NOV/14-NOV-2024/0012000199591-HIS-20-21770.pdf'';   // file at Live server',
'',
'            $.ajax(',
'            {',
'                url: wsURL,            ',
'                //url: ''https://wlsd.skm.org.pk:8008/reportcalling/pdf/from_local_path'',            ',
'                type: "get",',
'                data: { ',
'                    reportPath:(docPath.replace('' '',''-''))',
'                },',
'                ',
'                beforeSend: function(){                    ',
'                    $wP=apex.widget.waitPopup();',
'                },',
'                success: function(response) ',
'                {',
'                    var bString = window.atob(response.data);',
'                    var bLength = bString.length;',
'                    var bytes = new Uint8Array(bLength);',
'                    for (var i = 0; i < bLength; i++) {',
'                        var ascii = bString.charCodeAt(i);',
'                        bytes[i] = ascii;',
'                    }',
'                    var bufferArray = bytes;',
'                    var blobStore = new Blob([bufferArray], { type: "application/pdf" });',
'                    if (window.navigator && window.navigator.msSaveOrOpenBlob) {',
'                        window.navigator.msSaveOrOpenBlob(blobStore);',
'                        return;',
'                    }',
'                    var data1 = window.URL.createObjectURL(blobStore);',
'                    window.open(data1);',
'                },',
'                complete:function(data){',
'                    $wP.remove();',
'                },            ',
'                error: function(response) ',
'                {',
'                    apex.message.alert(''Error Occured while calling Report service ''+response.responseJSON.message);    ',
'                }',
'             });',
'        }',
'    } catch (error) {',
'        // Catch any errors from the fetch or other async operations',
'        console.error(''Error fetching document:'', error);',
'        apex.message.alert(''Error fetching document. Please try again.'');',
'    }',
'}',
'getData();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290620170405723988)
,p_name=>'DA_CLOSE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(290615867702723979)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290620604488723988)
,p_event_id=>wwv_flow_imp.id(290620170405723988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(290621984365723990)
,p_name=>'DA_P102_ACCESS_PATH - Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_ACCESS_PATH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(290622495578723992)
,p_event_id=>wwv_flow_imp.id(290621984365723990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' null;',
'end;'))
,p_attribute_02=>'P102_ACCESS_PATH'
,p_attribute_03=>'P102_ACCESS_PATH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

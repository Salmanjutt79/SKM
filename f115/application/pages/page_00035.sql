prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'RADIATION_MENU'
,p_alias=>'RADIATION-MENU'
,p_step_title=>'RADIATION_MENU'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'js-skmMenu'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'03'
,p_last_updated_by=>'FARHANAKRAM'
,p_last_upd_yyyymmddhh24miss=>'20230920103537'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(271181719686010845)
,p_name=>'USER_PROFILE'
,p_region_name=>'exitpopup_bg'
,p_template=>wwv_flow_imp.id(14523300436908242)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT I.NAME AS FIRSTNAME, NULL AS LASTNAME, ',
'     --''f?p=&APP_ID.:5:&APP_SESSION.:T''||UPPER(:APP_USER) "IMAGE",',
'     ''f?p=&APP_ID.:0:&APP_SESSION.:APPLICATION_PROCESS=LOADIMAGE:::USER_IMAGE::GV_USER_MRNO'' "IMAGE",',
'   -- ''f?p=&APP_ID.:7:''||:APP_SESSION||'':::::'' "EDIT_PROFIL",--||''::NO::P10_ITEM:ABC'');',
'    --''f?p=&APP_ID.:7:''||:APP_SESSION||''::NO::P7_ID:''||ID "EDIT_PROFIL",--''::NO::P10_ITEM:ABC'');',
'    i.designation "DESIGNATION",',
'    i.email "EMAIL",',
'    I.DEPARTMENT DEPARTMENT,',
'    I.MRNO ID,',
'    I.MRNO "USER_ID"',
'FROM HRD.VU_INFORMATION I, PICTURES.HR_PICTURES P',
'WHERE I.MRNO = :GV_USER_MRNO',
'AND I.MRNO = P.MRNO(+)',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(77312025059002056)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193911939477130256)
,p_query_column_id=>1
,p_column_alias=>'FIRSTNAME'
,p_column_display_sequence=>10
,p_column_heading=>'Firstname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193912322096130256)
,p_query_column_id=>2
,p_column_alias=>'LASTNAME'
,p_column_display_sequence=>20
,p_column_heading=>'Lastname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193912788652130256)
,p_query_column_id=>3
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>30
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193913146331130256)
,p_query_column_id=>4
,p_column_alias=>'DESIGNATION'
,p_column_display_sequence=>40
,p_column_heading=>'Designation'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193913536961130256)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193913928747130257)
,p_query_column_id=>6
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>60
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193914315884130257)
,p_query_column_id=>7
,p_column_alias=>'ID'
,p_column_display_sequence=>70
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193914784430130257)
,p_query_column_id=>8
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>80
,p_column_heading=>'User Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273610358008096935)
,p_plug_name=>'Patient Info'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'        #patient-info {',
'                /* background-color: #e6e6e6; */',
'                /* border: black; */',
'                font-size: 62.5%;',
'                padding: 1em 2em;',
'        }',
'',
'        .t-Body-fullContent {',
'                border-bottom: 2px solid #7e7e86;',
'                box-shadow: 0.10rem 0.10rem 0.90rem 0.5rem #898e8d;',
'',
'        }',
'',
'',
'        #P0_PATIENT_MRNO {',
'                font-weight: bold;',
'                /* min-width: 7.5rem; */',
'        }',
'',
'        /* #P0_ALLERGIES {',
'                min-width: 7.5rem;',
'        } */',
'',
'',
'',
'        #P0_PATIENT_NAME {',
'                /* background-color: darkblue;',
'                color: white; */',
'                /* background-color: #e5e5e5; */',
'                /* border: 1px solid #a4afad; */',
'                /* box-shadow: 0.10rem 0.10rem 0.25rem 0.20rem #898e8d; */',
'                font-weight: bold;',
'        }',
'',
'        #P0_BED_NO,',
'        #P0_PATIENT_LOU,',
'        #P0_LTE,',
'        #P0_CLINICAL_PATHWAY {',
'                color: red;',
'                font-size: 0.65rem;',
'                font-weight: 500;',
'        }',
'',
'        /* #P0_AGE,',
'        #P0_GENDER {',
'                font-weight: 500;',
'        } */',
'',
'        /* #P0_DX_STATUS {',
'                margin-right: 1.5rem;',
'        } */',
'',
'        .col-2>.rel-col .col-1 {',
'                max-width: 70%;',
'                flex-basis: auto;',
'',
'        }',
'',
'',
'',
'  ',
'',
'        /********************************Utility Classes********************************************************/',
'        .label-bold {',
'                font-weight: bold;',
'        }',
'',
'        .label-darkblue {',
'                color: darkblue;',
'        }',
'',
'        .sm-font {',
'                font-weight: 0.5rem;',
'        }',
'',
'        .md-font {',
'                font-weight: 0.75rem;',
'        }',
'</style>',
'',
'<script>',
' ',
'',
'',
'',
'',
'',
'</script>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273912000958266756)
,p_plug_name=>'Parameters'
,p_plug_display_sequence=>20
,p_plug_display_point=>'AFTER_HEADER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(275009423950373839)
,p_plug_name=>'Patient Status'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,36'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    #patient-status>div.t-Region-bodyWrap>div.t-Region-body {',
'        padding: 0.5em 0.5em;',
'    }',
'',
'    #P0_DX_STATUS,',
'    #P0_ISOLATION_STATUS {',
'        font-size: 0.65rem;',
'        font-weight: bold;',
'    }',
'',
'    #P0_CODE_STATUS {',
'        color: red;',
'        font-size: 0.65rem;',
'        font-weight: bold;',
'    }',
'</style>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(275010100683373846)
,p_name=>'Image'
,p_region_name=>'image'
,p_template=>wwv_flow_imp.id(14542292946908251)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:margin-bottom-none:margin-left-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_display_point=>'REGION_POSITION_08'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.MRNO, SYS.DBMS_LOB.GETLENGTH(T.IMAGE) AS file_blob',
'  FROM PICTURES.HR_PICTURES T',
' WHERE MRNO = :P35_PATIENT_MRNO;',
''))
,p_display_when_condition=>'2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,36'
,p_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    /* #image img {',
'                width: 8rem;',
'                height: 9rem;',
'                border: 2px solid #D8D4D4;',
'        } */',
'',
'    /* #image {',
'                width: 200px;',
'                height: 70%;',
'                border: 2px solid red;',
'        } */',
'',
'    #image img {',
'        display: inline-block;',
'        width: 100%;',
'        height: 100%;',
'        object-fit: cover;',
'        /*border: 2px solid #D8D4D4; */',
'        border-radius: 50%;',
'        box-shadow: 7px 5px 30px 0px #fff;',
'        margin-top: 3px;',
'        margin-left: 3px;',
'        max-height: 5rem;',
'    }',
'',
'    #image img:hover {',
'        box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5)',
'    }',
'',
'',
'    #report_table_image {',
'        border: none;',
'    }',
'',
'    #FILE_BLOB {',
'        border: none;',
'        padding: 1em 0.5em;',
'',
'    }',
'',
'',
'',
'    #report_table_image>tbody>tr>td {',
'        border: none;',
'        background: #fff;',
'        padding: 1em 2em 0 0.5em;',
'',
'    }',
'</style>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P35_PATIENT_MRNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193905379848130248)
,p_query_column_id=>1
,p_column_alias=>'MRNO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193905747194130249)
,p_query_column_id=>2
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:HR_PICTURES:IMAGE:MRNO::MIMETYPE:MRNO:::::PICTURES'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297085682679063750)
,p_plug_name=>'&P35_PAGE_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(173422706534455514)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'34'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(297087226948063765)
,p_name=>'REGION_IMAGE'
,p_template=>wwv_flow_imp.id(14487809253908224)
,p_display_sequence=>2
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>1
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, MRNO, DBMS_LOB.GETLENGTH(IMAGE) AS FILE_BLOB',
'  FROM PICTURES.HR_PICTURES',
' WHERE MRNO = :P35_MRNO;',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(14577287341908269)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193903850297130245)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193904235444130246)
,p_query_column_id=>2
,p_column_alias=>'MRNO'
,p_column_display_sequence=>20
,p_column_heading=>'Mrno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193904690254130247)
,p_query_column_id=>3
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>30
,p_column_heading=>'File Blob'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193941649694130291)
,p_button_sequence=>110
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close All Dialog'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193915940126130259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(271181719686010845)
,p_button_name=>'BTN_GLOBAL_VARIABLES'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Global Variables'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=100:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193941249643130291)
,p_button_sequence=>10
,p_button_name=>'BTN_GLOBAL_VARIABLES'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(14614821261908288)
,p_button_image_alt=>'Global Variables'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=100:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193915157874130257)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(271181719686010845)
,p_button_name=>'BTN_LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Logout'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193940432531130291)
,p_button_sequence=>10
,p_button_name=>'BTN_LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Logout'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193915543110130259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(271181719686010845)
,p_button_name=>'BTN_CHANGE_PASSWORD'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Change Password'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=100:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-key'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193940834159130291)
,p_button_sequence=>10
,p_button_name=>'BTN_CHANGE_PASSWORD'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_image_alt=>'Change Password'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=100:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-key'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193906432821130249)
,p_name=>'P35_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193906836796130250)
,p_name=>'P35_PATIENT_NAME_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Patient Name '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193907222300130254)
,p_name=>'P35_DISP_SEX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Sex'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193907618435130254)
,p_name=>'P35_DISP_AGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193908078435130254)
,p_name=>'P35_RADIATION_NO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Radiation No '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193908493826130254)
,p_name=>'P35_RADIATION_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Radiation Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193908851647130254)
,p_name=>'P35_ICDNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'ICDNO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193909282800130254)
,p_name=>'P35_DISP_DIAGNOSIS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Diagnosis'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193909651149130255)
,p_name=>'P35_TREATMENT_INTENT_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Treatment Intent '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_REQUEST_TRT_INTENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TI.TREATMENT_INTENT_ID, TI.DESCRIPTION',
'  FROM RADIATION.TREATMENT_INTENT TI',
' WHERE TI.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193910057787130255)
,p_name=>'P35_DOCTOR_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Consultant '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RAD_REQUEST_DOCTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.DOCTOR_ID, DD.NAME FULL_NAME',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'           AND L.LOCATION_ID = :GV_LOCATION_ID)',
' ORDER BY DOCTOR_ID',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193910412633130255)
,p_name=>'P35_SIMULATION_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Radiation Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193910810198130255)
,p_name=>'P35_ANAESTHESIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Anaesthesia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_display_when=>'34'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193911226824130255)
,p_name=>'P35_CHEMOTHERAPY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(297085682679063750)
,p_prompt=>'Chemotherapy'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_display_when=>'34'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193916608066130259)
,p_name=>'P35_USER_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193917058754130260)
,p_name=>'P35_PHYSICAL_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>'GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193917462249130260)
,p_name=>'P35_PATIENT_VULNERABE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193917873467130260)
,p_name=>'P35_CHECK_PATIENT_ON_PATHWAY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193918262358130260)
,p_name=>'P35_STOP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193918615935130261)
,p_name=>'P35_ERROR_MSG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193919044718130268)
,p_name=>'P35_CONFIRM_MSG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193919418292130268)
,p_name=>'P35_CONSULTANT_CLINIC_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193919875397130271)
,p_name=>'P35_P_CLINICAL_PATHWAY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONST_491 VARCHAR2(10);',
'BEGIN',
'  V_CONST_491 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 491,',
'                                                           P_ORGANIZATION_ID => NVL(:GV_ORGANIZATION_ID,',
'                                                                                    SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                ''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID     => NVL(:GV_PHYSICAL_LOCATION_ID,',
'                                                                                    SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                ''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''N'');',
'  RETURN V_CONST_491;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193920276968130271)
,p_name=>'P35_P_VALIDATE_EMP_DEP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONST_428 VARCHAR2(10);',
'BEGIN',
'  V_CONST_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428, --PROVIDE CONSTANT ID',
'                                                               P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                               P_LOCATION_ID     => :GV_PHYSICAL_LOCATION_ID,',
'                                                               P_DEFAULT_VAL     => NULL),',
'                     ''$'');',
'  RETURN V_CONST_428;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193920617392130271)
,p_name=>'P35_P_CHECK_EMP_DEPENDENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONST_428 VARCHAR2(10);',
'BEGIN',
'  V_CONST_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428, --PROVIDE CONSTANT ID',
'                                                               P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                               P_LOCATION_ID     => :GV_PHYSICAL_LOCATION_ID,',
'                                                               P_DEFAULT_VAL     => NULL),',
'                     ''$'');',
'  RETURN V_CONST_428;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193921014668130271)
,p_name=>'P35_P_MRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193921458120130272)
,p_name=>'P35_P_ADMISSION_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193921810723130273)
,p_name=>'P35_P_USER_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193922264200130273)
,p_name=>'P35_P_SERVICE_INFO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193922658209130273)
,p_name=>'P35_P_CAD_PATIENT_ALERT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193923055579130273)
,p_name=>'P35_P_FUNCTIONALITY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193923489135130273)
,p_name=>'P35_P_DEFAULT_OPENING_OBJECT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193923882121130273)
,p_name=>'P35_P_PAT_TYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193924280887130273)
,p_name=>'P35_P_CONSULTANT_DEPARTMENT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193924600921130274)
,p_name=>'P35_P_VALUE_STORE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193925079657130274)
,p_name=>'P35_LOV_CHECK'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193925456675130274)
,p_name=>'P35_SET_MRNO_VALIDATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193925808752130274)
,p_name=>'P35_P_OBJECT_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193926256200130274)
,p_name=>'P35_GV_MRNO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193926684826130274)
,p_name=>'P35_GV_TERMINAL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_item_default=>'GV_TERMINAL'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193927024726130275)
,p_name=>'P35_RADIATION_NO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(273912000958266756)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193927734199130275)
,p_name=>'P35_DX_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(275009423950373839)
,p_prompt=>'Dx Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193928112802130275)
,p_name=>'P35_CODE_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(275009423950373839)
,p_prompt=>'Code Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193928565531130275)
,p_name=>'P35_ISOLATION_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(275009423950373839)
,p_prompt=>'Isolation Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193929631409130276)
,p_name=>'P35_PATIENT_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193930053147130276)
,p_name=>'P35_PATIENT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193930473616130276)
,p_name=>'P35_AGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193930872187130276)
,p_name=>'P35_ADMISSION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193931209934130276)
,p_name=>'P35_CANCER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193931625882130277)
,p_name=>'P35_CONSULTANT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193932084098130277)
,p_name=>'P35_ORDERABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193932491439130277)
,p_name=>'P35_IPD_OPD_EAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193932828594130277)
,p_name=>'P35_GENDER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193933229925130277)
,p_name=>'P35_CONSULTANT_MRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193933676200130277)
,p_name=>'P35_INHOUSE_DOCTOR_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193934040545130278)
,p_name=>'P35_ALLERGIES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Allergies '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193934402501130278)
,p_name=>'P35_HIS_USERID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193934886609130280)
,p_name=>'P35_FLAGS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Flags'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193935234883130280)
,p_name=>'P35_BED_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193935683262130282)
,p_name=>'P35_PRIMARY_CONSULTANT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Primary Consultant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193936051295130282)
,p_name=>'P35_PATIENT_VULNERABILITIES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193936412399130283)
,p_name=>'P35_CLINICAL_PATHWAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193936810007130283)
,p_name=>'P35_LTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193937216192130283)
,p_name=>'P35_PATIENT_LOU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193937606074130283)
,p_name=>'P35_UNIT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193938070282130283)
,p_name=>'P35_SERVICE_NO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Service No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193938452627130283)
,p_name=>'P35_SERVICE_STATUS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Service Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193938886316130283)
,p_name=>'P35_RANK_ABBREVIATION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Rank'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193939210885130288)
,p_name=>'P35_FORMATION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_prompt=>'Formation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193939648590130289)
,p_name=>'P35_CLINIC_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193940034089130289)
,p_name=>'P35_CONSULTANT_ID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(273610358008096935)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193942036953130291)
,p_name=>'P35_MENU_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193942419782130291)
,p_name=>'P35_PAGE_NAME'
,p_item_sequence=>60
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'         WHEN :APP_PAGE_ID = ''34'' THEN',
'          ''Radiotherapy Prescription''',
'         ELSE',
'          ''''',
'       END PAGE_NAME',
'  FROM DUAL',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193942852345130292)
,p_name=>'P35_MRNO_1'
,p_item_sequence=>10
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193943286737130292)
,p_name=>'P35_PATIENT_NAME_1_1'
,p_item_sequence=>20
,p_prompt=>'Patient Name '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193943696954130292)
,p_name=>'P35_DISP_SEX_1'
,p_item_sequence=>30
,p_prompt=>'Sex'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193944087749130292)
,p_name=>'P35_DISP_AGE_1'
,p_item_sequence=>40
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193944494443130292)
,p_name=>'P35_RADIATION_NO_1_1'
,p_item_sequence=>60
,p_prompt=>'Radiation No '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193944731536130293)
,p_name=>'P35_RADIATION_DATE_1'
,p_item_sequence=>70
,p_prompt=>'Radiation Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193945180118130294)
,p_name=>'P35_ICDNO_1'
,p_item_sequence=>90
,p_prompt=>'ICDNO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193945501424130294)
,p_name=>'P35_DISP_DIAGNOSIS_1'
,p_item_sequence=>100
,p_prompt=>'Diagnosis'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193945951049130294)
,p_name=>'P35_TREATMENT_INTENT_ID_1'
,p_item_sequence=>110
,p_prompt=>'Treatment Intent '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_RAD_REQUEST_TRT_INTENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TI.TREATMENT_INTENT_ID, TI.DESCRIPTION',
'  FROM RADIATION.TREATMENT_INTENT TI',
' WHERE TI.ACTIVE = ''Y''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193946367254130294)
,p_name=>'P35_DOCTOR_ID_1'
,p_item_sequence=>120
,p_prompt=>'Consultant '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RAD_REQUEST_DOCTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DD.DOCTOR_ID, DD.NAME FULL_NAME',
'  FROM DEFINITIONS.DOCTOR DD',
' WHERE DD.ACTIVE IN (''Y'', ''Z'')',
'   AND DD.CONSULTANT = ''Y''',
'   AND EXISTS',
' (SELECT 1',
'          FROM RADIATION.DEF_SETUP S, RADIATION.DEF_SETUP_LOCATIONS L',
'         WHERE DD.DOCTOR_ID = S.DOCTOR_ID',
'           AND S.SETUP_ID = L.SETUP_ID',
'           AND S.ACTIVE = ''Y''',
'           AND L.ACTIVE = ''Y''',
'           AND L.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'           AND L.LOCATION_ID = :GV_LOCATION_ID)',
' ORDER BY DOCTOR_ID',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193946731333130295)
,p_name=>'P35_SIMULATION_DATE_1'
,p_item_sequence=>130
,p_prompt=>'Radiation Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193947146077130295)
,p_name=>'P35_ANAESTHESIA_1'
,p_item_sequence=>140
,p_prompt=>'Anaesthesia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_display_when=>'34'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193947526567130295)
,p_name=>'P35_CHEMOTHERAPY_1'
,p_item_sequence=>150
,p_prompt=>'Chemotherapy'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_display_when=>'34'
,p_display_when_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_field_template=>wwv_flow_imp.id(14612352542908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193947994374130296)
,p_name=>'P35_USER_MRNO_1'
,p_item_sequence=>10
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193948336288130296)
,p_name=>'P35_PHYSICAL_LOCATION_ID_1'
,p_item_sequence=>20
,p_item_default=>'GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193948773420130296)
,p_name=>'P35_PATIENT_VULNERABE_1'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193949178433130296)
,p_name=>'P35_CHECK_PATIENT_ON_PATHWAY_1'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193949527506130296)
,p_name=>'P35_STOP_1'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193949918891130296)
,p_name=>'P35_ERROR_MSG_1'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193950343604130297)
,p_name=>'P35_CONFIRM_MSG_1'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193950760590130297)
,p_name=>'P35_CONSULTANT_CLINIC_ID_1'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193951177870130297)
,p_name=>'P35_P_CLINICAL_PATHWAY_1'
,p_item_sequence=>90
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONST_491 VARCHAR2(10);',
'BEGIN',
'  V_CONST_491 := DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 491,',
'                                                           P_ORGANIZATION_ID => NVL(:GV_ORGANIZATION_ID,',
'                                                                                    SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                ''ORGANIZATION_ID'')),',
'                                                           P_LOCATION_ID     => NVL(:GV_PHYSICAL_LOCATION_ID,',
'                                                                                    SYS_CONTEXT(''GLOBAL_CONTEXT'',',
'                                                                                                ''PHYSICAL_LOCATION_ID'')),',
'                                                           P_DEFAULT_VAL     => ''N'');',
'  RETURN V_CONST_491;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193951524044130297)
,p_name=>'P35_P_VALIDATE_EMP_DEP_1'
,p_item_sequence=>100
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONST_428 VARCHAR2(10);',
'BEGIN',
'  V_CONST_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428, --PROVIDE CONSTANT ID',
'                                                               P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                               P_LOCATION_ID     => :GV_PHYSICAL_LOCATION_ID,',
'                                                               P_DEFAULT_VAL     => NULL),',
'                     ''$'');',
'  RETURN V_CONST_428;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193951907603130297)
,p_name=>'P35_P_CHECK_EMP_DEPENDENT_1'
,p_item_sequence=>110
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_CONST_428 VARCHAR2(10);',
'BEGIN',
'  V_CONST_428 := NVL(DEFINITIONS.PKG_COMMON.GET_CONSTANT_VALUE(P_CONSTANT_ID     => 428, --PROVIDE CONSTANT ID',
'                                                               P_ORGANIZATION_ID => :GV_ORGANIZATION_ID,',
'                                                               P_LOCATION_ID     => :GV_PHYSICAL_LOCATION_ID,',
'                                                               P_DEFAULT_VAL     => NULL),',
'                     ''$'');',
'  RETURN V_CONST_428;',
'END;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193952349405130297)
,p_name=>'P35_P_MRNO_1'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193952747028130298)
,p_name=>'P35_P_ADMISSION_NO_1'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193953150729130298)
,p_name=>'P35_P_USER_TYPE_1'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193953579270130299)
,p_name=>'P35_P_SERVICE_INFO_1'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193953901306130299)
,p_name=>'P35_P_CAD_PATIENT_ALERT_1'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193954362935130299)
,p_name=>'P35_P_FUNCTIONALITY_1'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193954791919130299)
,p_name=>'P35_P_DEFAULT_OPENING_OBJECT_1'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193955106598130299)
,p_name=>'P35_P_PAT_TYPE_1'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193955507856130299)
,p_name=>'P35_P_CONSULTANT_DEPARTMENT_1'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193955900452130300)
,p_name=>'P35_P_VALUE_STORE_1'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193956359043130300)
,p_name=>'P35_LOV_CHECK_1'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193956722774130300)
,p_name=>'P35_SET_MRNO_VALIDATE_1'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193957169476130300)
,p_name=>'P35_P_OBJECT_CODE_1'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193957536494130300)
,p_name=>'P35_GV_MRNO_1'
,p_item_sequence=>250
,p_item_default=>'GV_USER_MRNO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193957931044130300)
,p_name=>'P35_GV_TERMINAL_1'
,p_item_sequence=>260
,p_item_default=>'GV_TERMINAL'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193958383973130301)
,p_name=>'P35_RADIATION_NO_2'
,p_item_sequence=>270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193958729968130301)
,p_name=>'P35_DX_STATUS_1'
,p_item_sequence=>10
,p_prompt=>'Dx Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193959174225130301)
,p_name=>'P35_CODE_STATUS_1'
,p_item_sequence=>20
,p_prompt=>'Code Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193959575153130301)
,p_name=>'P35_ISOLATION_STATUS_1'
,p_item_sequence=>30
,p_prompt=>'Isolation Status:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(14612103004908286)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193959964716130301)
,p_name=>'P35_PATIENT_MRNO_1'
,p_item_sequence=>10
,p_prompt=>'MRNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193960379150130301)
,p_name=>'P35_PATIENT_NAME_2'
,p_item_sequence=>20
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193960731703130302)
,p_name=>'P35_AGE_1'
,p_item_sequence=>30
,p_prompt=>'Age'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193961144695130302)
,p_name=>'P35_ADMISSION_NO_1'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193961515629130302)
,p_name=>'P35_CANCER_1'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193961977928130302)
,p_name=>'P35_CONSULTANT_1'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193962358579130302)
,p_name=>'P35_ORDERABLE_1'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193962718407130302)
,p_name=>'P35_IPD_OPD_EAR_1'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193963199078130303)
,p_name=>'P35_GENDER_1'
,p_item_sequence=>100
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193963564749130304)
,p_name=>'P35_CONSULTANT_MRNO_1'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193963904212130306)
,p_name=>'P35_INHOUSE_DOCTOR_ID_1'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193964323978130306)
,p_name=>'P35_ALLERGIES_1'
,p_item_sequence=>140
,p_prompt=>'Allergies '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193964771817130307)
,p_name=>'P35_HIS_USERID_1'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193965195880130307)
,p_name=>'P35_FLAGS_1'
,p_item_sequence=>160
,p_prompt=>'Flags'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193965537479130307)
,p_name=>'P35_BED_NO_1'
,p_item_sequence=>170
,p_prompt=>'Bed No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193965979945130307)
,p_name=>'P35_PRIMARY_CONSULTANT_1'
,p_item_sequence=>180
,p_prompt=>'Primary Consultant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193966302941130307)
,p_name=>'P35_PATIENT_VULNERABILITIES_1'
,p_item_sequence=>190
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193966705716130307)
,p_name=>'P35_CLINICAL_PATHWAY_1'
,p_item_sequence=>200
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193967168298130308)
,p_name=>'P35_LTE_1'
,p_item_sequence=>210
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193967531865130308)
,p_name=>'P35_PATIENT_LOU_1'
,p_item_sequence=>220
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193967989261130308)
,p_name=>'P35_UNIT_1'
,p_item_sequence=>230
,p_prompt=>'Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#:margin-left-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193968368434130308)
,p_name=>'P35_SERVICE_NO_1'
,p_item_sequence=>240
,p_prompt=>'Service No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193968737996130308)
,p_name=>'P35_SERVICE_STATUS_1'
,p_item_sequence=>250
,p_prompt=>'Service Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193969146329130308)
,p_name=>'P35_RANK_ABBREVIATION_1'
,p_item_sequence=>260
,p_prompt=>'Rank'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193969590088130309)
,p_name=>'P35_FORMATION_1'
,p_item_sequence=>270
,p_prompt=>'Formation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(14612214410908287)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193969920328130309)
,p_name=>'P35_CLINIC_ID_1'
,p_item_sequence=>280
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193970308068130309)
,p_name=>'P35_CONSULTANT_ID_1'
,p_item_sequence=>290
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193973443126130315)
,p_name=>'PAGE_LOADS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193973961634130315)
,p_event_id=>wwv_flow_imp.id(193973443126130315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#exitpopup_bg").dialog({',
'',
'    autoOpen: false,',
'',
'    modal: false,',
'    dialogClass: ''PROF_DID''',
'',
'});',
'',
'/* Close when click Outside the Dialog*/',
'$(''html'')',
'    .bind(',
'        ''click'',',
'        function (e) {',
'            if ($(''#exitpopup_bg'').dialog(''isOpen'') && !$(e.target).is(''.ui-dialog, a'') && !$(e.target).closest(''.ui-dialog'').length && !$(e.target).is(''.image_icon'') && !$(e.target).is(''.ui-dialog-titlebar-close'')) {',
'                $(''#exitpopup_bg'').dialog(''close'');',
'',
'',
'                $(''.image_icon'').removeClass(''et'');',
'                $(''.image_icon'').addClass(''st'');',
'            }',
'        }',
'    );',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193970702787130310)
,p_name=>'OPEN_PROFILE'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.st'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193971246509130312)
,p_event_id=>wwv_flow_imp.id(193970702787130310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'openModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''st'');',
'$(''.image_icon'').addClass(''et'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193971615235130312)
,p_name=>'CLOSE_PROFILE'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_icon.et'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193972171321130312)
,p_event_id=>wwv_flow_imp.id(193971615235130312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeModal("exitpopup_bg");',
'$(''.image_icon'').removeClass(''et'');',
'$(''.image_icon'').addClass(''st'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193972511007130313)
,p_name=>'USER_GUIDES'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.guide-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193973035731130315)
,p_event_id=>wwv_flow_imp.id(193972511007130313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("UserGuide",',
'    {}, {',
'    success: function (res) {',
'        //apex.message.alert(res.user_mrno+"  "+res.app_id +"      "+res.app_page_id+" "+res.page_url);',
'        //javascript:window.open(''f?p=207:2:''+apex.item(''pInstance'').getValue()+'':::1:P2_USER_NAME,P2_APP_ID,P2_PAGE_ID:''+res.user_mrno +'',''+ res.app_id+'',''+ res.app_page_id ,''_blank'');                ',
'        // javascript:window.open( res.page_url ,''_blank'');',
'        console.log(res.page_url);',
'        apex.navigation.redirect(res.page_url);',
'    },',
'    dataType: ''json''',
'}',
'',
')',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193974308774130315)
,p_name=>'ADD_TO_FAVORITES'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.fav-btn'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193974810062130315)
,p_event_id=>wwv_flow_imp.id(193974308774130315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("AddToFavorite",',
'        {}, {',
'        success: function (res) {',
'                apex.message.alert(res.message);',
'        },',
'        dataType: ''json''',
'}',
')'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193975242732130317)
,p_name=>'SetMRNO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp.component_end;
end;
/

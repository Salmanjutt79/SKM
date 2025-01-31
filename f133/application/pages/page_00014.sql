prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Library Reports'
,p_alias=>'LIBRARY-REPORTS'
,p_step_title=>'Library Reports'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/**************************************************** */',
'function showErrorInline(pData, pItem) {',
'        apex.message.clearErrors();',
'',
'        if (!apex.item(pItem).isEmpty()) {',
'                apex.item(pItem).setFocus();',
'        }',
'',
'        apex.message.showErrors([{',
'                type: "error",',
'                location: "inline",',
'                pageItem: pItem,',
'                message: pData,',
'                unsafe: false',
'        }',
'        ]);',
'}',
'',
'// /**************************************************** */',
'function updatePageItem() {',
'    const selectedOption = document.querySelector(''input[name="P14_REPORT_TYPES"]:checked'');',
'    apex.item("P14_PUBLISHER_COMPANY_DESC").setValue();',
'    apex.item("P14_BOOK_AUTHOR_DESC").setValue();',
'    apex.item("P14_ACTIVE_INACTIVE").setValue();',
'    apex.item("P14_ISSUABLE_REFERENCE").setValue();',
'    apex.item("P14_SUBJECT_DESC").setValue();',
'    apex.item("P14_BOOK_LIST_CATEGORY_DESC").setValue();',
'    apex.item("P14_ACCESS_NO").setValue();',
'    apex.item("P14_CONCERNED_EMPLOYEE_DESC").setValue();',
'    apex.item("P14_FROM_DATE").setValue();',
'    apex.item("P14_TO_DATE").setValue();',
'    apex.item("P14_BOOK_TYPE_DESC").setValue();',
'    if ($v(selectedOption) === ''1'') {   // < All Publishers'' List > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00010'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();        ',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    } else if ($v(selectedOption) === ''2'') {   // < Publisher with Books > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00011'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();        ',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").show();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    } else if ($v(selectedOption) === ''4'') {   // < Author with Books > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00012'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").show();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();        ',
'        return;',
'    } else if ($v(selectedOption) === ''5'') {   // < Books'' List > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00001'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").setValue(''Y'');',
'        return;',
'    } else if ($v(selectedOption) === ''17'') {   // < Accession List > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00020'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();        ',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").show();',
'        apex.item("P14_ISSUABLE_REFERENCE").show();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").setValue(''Y'');',
'        return;',
'    } else if ($v(selectedOption) === ''6'') {   // < Books List Subject Wise > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00016'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();        ',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").show();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    } else if ($v(selectedOption) === ''7'') {   // < Books List Category Wise > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00017'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").hide();',
'        apex.item("P14_ORDER_LOCATION_ID").hide();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").show();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    } else if ($v(selectedOption) === ''8'') {   // < Issued Books > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00013'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    } else if ($v(selectedOption) === ''12'') {   // < Issued Books History > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00015'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").show();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    }  else if ($v(selectedOption) === ''11'') {   // < Library Members Book Issuance History > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00006'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").show();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    }  else if ($v(selectedOption) === ''13'') {   // < Overdue Books > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00014'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    }  else if ($v(selectedOption) === ''14'') {   // < Overdue Books Reminder > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00002'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").show();',
'        apex.item("P14_FROM_DATE").hide();',
'        apex.item("P14_TO_DATE").hide();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    }  else if ($v(selectedOption) === ''10'') {   // < Library Fine List > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00018'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").hide();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").hide();',
'        apex.item("P14_FROM_DATE").show();',
'        apex.item("P14_TO_DATE").show();',
'        apex.item("P14_BOOK_TYPE_DESC").hide();',
'        return;',
'    }  else if ($v(selectedOption) === ''15'') {   // < Reserved Books > //',
'        apex.item("P14_REF_OBJECT_CODE").setValue(''S21REP00003'');',
'        apex.item("P14_DONE").setValue(''Y'');',
'        apex.item("P14_ORGANIZATION_ID").show();',
'        apex.item("P14_LOCATION_ID").show();',
'        apex.item("P14_ORDER_LOCATION_ID").show();',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").hide();',
'        apex.item("P14_BOOK_AUTHOR_DESC").hide();',
'        apex.item("P14_ACTIVE_INACTIVE").hide();',
'        apex.item("P14_ISSUABLE_REFERENCE").hide();',
'        apex.item("P14_SUBJECT_DESC").hide();',
'        apex.item("P14_BOOK_LIST_CATEGORY_DESC").hide();',
'        apex.item("P14_ACCESS_NO").show();',
'        apex.item("P14_CONCERNED_EMPLOYEE_DESC").show();',
'        apex.item("P14_BOOK_TYPE_DESC").show();',
'        apex.item("P14_FROM_DATE").show();',
'        apex.item("P14_TO_DATE").show();',
'        return;',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-cell { font-size: 13px ! important; ',
' /* font-weight: bold;  */',
'}',
'',
'#P33_REPORT_OUTPUT{',
'    COLOR: red;',
'    FONT-WEIGHT: BOLD;',
'}',
'/* #P33_LBX_LOCATION{',
'    COLOR: red;',
'    FONT-WEIGHT: BOLD;',
'}',
'#P33_LBX_DEPARTMENT{',
'    COLOR: red;',
'    FONT-WEIGHT: BOLD;',
'} */',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'AAHMED'
,p_last_upd_yyyymmddhh24miss=>'20250130154223'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1256307250053463210)
,p_plug_name=>'&P14_LABEL.'
,p_region_name=>'st_MAIN'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(225620970640730334)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1256307578158463213)
,p_plug_name=>'Control'
,p_parent_plug_id=>wwv_flow_imp.id(1256307250053463210)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <center><h3><b>Library Reports</b></h3></center>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1256308019634463217)
,p_plug_name=>'Reports Types'
,p_parent_plug_id=>wwv_flow_imp.id(1256307250053463210)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'      <h4><b>Report Types</b></h4>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(840109963165456587)
,p_plug_name=>'Items'
,p_parent_plug_id=>wwv_flow_imp.id(1256308019634463217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1256308063873463218)
,p_plug_name=>'Parameters'
,p_parent_plug_id=>wwv_flow_imp.id(1256307250053463210)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:brown; font-family:Arial">',
'   <h4><b>Report Filters</b></h4>',
'</span>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1261996253587720924)
,p_plug_name=>'Items'
,p_parent_plug_id=>wwv_flow_imp.id(1256308063873463218)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1261996116064720922)
,p_plug_name=>'Footer'
,p_parent_plug_id=>wwv_flow_imp.id(1256307250053463210)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(224469384760711125)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1039236596355667504)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(1261996116064720922)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(224479134835711131)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(303440500165256138)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1039236596355667504)
,p_button_name=>'Report'
,p_button_static_id=>'st_REPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(303440160126256134)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1039236596355667504)
,p_button_name=>'Exit'
,p_button_static_id=>'st_Exit'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(224557888008711191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=100:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303513440662334902)
,p_name=>'P14_ORDER_LOCATION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>':GV_ORDER_LOCATION_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Location :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OL.DESCRIPTION AS ORDER_LOCATION_DESC, OL.ORDER_LOCATION_ID ',
'  FROM DEFINITIONS.ORDER_LOCATION OL',
' WHERE OL.LOCATION_ID = :GV_LOCATION_ID',
'   AND OL.ORDER_LOCATION_ID IN (SELECT BC.ORDER_LOCATION_ID FROM SKM_LIBRARY.BATCH_COUNTER BC',
' WHERE BC.LOCATION_ID = :GV_LOCATION_ID)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303516942709334937)
,p_name=>'P14_PUBLISHER_COMPANY_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Publisher :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPTION AS PUBLISHER_COMPANY_DESC, T.PUBLISHER_COMPANY_ID ',
'  FROM SKM_LIBRARY.PUBLISHER T',
' WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'ORDER BY T.DESCRIPTION '))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'PUBLISHER_COMPANY_ID:P14_PUBLISHER_COMPANY_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517014250334938)
,p_name=>'P14_PUBLISHER_COMPANY_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517185338334939)
,p_name=>'P14_BOOK_AUTHOR_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Author :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.FIRST_NAME || '' '' || T.MIDDLE_NAME || '' '' || T.LAST_NAME AS BOOK_AUTHOR_DESC,',
'       T.AUTHOR_ID AS BOOK_AUTHOR_ID',
'  FROM SKM_LIBRARY.AUTHOR T',
' WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
' ORDER BY BOOK_AUTHOR_DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'BOOK_AUTHOR_ID:P14_BOOK_AUTHOR_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517211320334940)
,p_name=>'P14_BOOK_AUTHOR_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517347312334941)
,p_name=>'P14_SUBJECT_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517467154334942)
,p_name=>'P14_BOOK_LIST_CATEGORY_ID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517503015334943)
,p_name=>'P14_CONCERNED_EMPLOYEE_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(303517605125334944)
,p_name=>'P14_BOOK_TYPE_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(322971939585969424)
,p_name=>'P14_ORDER_LOCATION_DESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OL.DESCRIPTION',
'  FROM DEFINITIONS.ORDER_LOCATION OL',
' WHERE OL.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'   AND OL.LOCATION_ID = :GV_LOCATION_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(738606461618893551)
,p_name=>'P14_ACCESS_NO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Access No. :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCESS_NO',
'  FROM SKM_LIBRARY.ACCESSION_INFORMATION T',
' WHERE T.ORGANIZATION_ID = :GV_ORGANIZATION_ID',
'   AND T.LOCATION_ID = :GV_LOCATION_ID',
'   AND T.ORDER_LOCATION_ID = :GV_ORDER_LOCATION_ID',
'ORDER BY TO_NUMBER(ACCESS_NO)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<No Selection>'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(738606890543893556)
,p_name=>'P14_BOOK_TYPE_DESC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Book Type :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:Reservation Cancelled;C,Reserved;R'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(738607587492893563)
,p_name=>'P14_ACTIVE_INACTIVE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>'Y'
,p_prompt=>'Active/In-Active :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Active'' AS STATUS_DESC,',
'       ''Y'' AS STATUS_ID',
'  FROM DUAL',
'UNION ALL',
'SELECT ''In-Active'' AS STATUS_DESC,',
'       ''N'' AS STATUS_ID',
'  FROM DUAL',
'UNION ALL  ',
'SELECT ''Both'' AS STATUS_DESC,',
'       ''B'' AS STATUS_ID',
'  FROM DUAL    '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(840119636122456688)
,p_name=>'P14_DONE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(840119803769456690)
,p_name=>'P14_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>':GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Location :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT L.DESCRIPTION AS LOCATION_DESC, L.LOCATION_ID AS LOCATION_ID',
'  FROM DEFINITIONS.LOCATION L',
' WHERE L.ACTIVE = ''Y''',
'   AND L.ORGANIZATION_ID = :P14_ORGANIZATION_ID --SYS_CONTEXT(''GLOBAL_CONTEXT'', ''ORGANIZATION_ID'') ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(840120022162456692)
,p_name=>'P14_TO_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'To Date (DD-MON-YYYY) :'
,p_format_mask=>'DD-MON-RRRR'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(840120298077456694)
,p_name=>'P14_BOOK_LIST_CATEGORY_DESC'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Category :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SP.DESCRIPTION AS BOOK_LIST_CATEGORY_DESC, SP.SCORE_PARAMETER_ID AS BOOK_LIST_CATEGORY_ID',
'  FROM ICU.SCORE_PARAMETERS SP',
' WHERE SP.SCORE_CATEGORY_ID = ''BCT''',
'ORDER BY SP.DESCRIPTION',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<No Selection>'
,p_cSize=>200
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'BOOK_LIST_CATEGORY_ID:P14_BOOK_LIST_CATEGORY_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(840127663218456694)
,p_name=>'P14_REPORT_TYPES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(840109963165456587)
,p_item_default=>'1'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Publisher(s) List;1,Book(s) with Publisher;2,Author with Books;4,Book List;5,Accession List;17,Book List Subject Wise;6,Book List Category Wise;7,Issued Books;8,Issued Books History;12,Library Members Book Issuance History;11,Over Due Books;1'
||'3,Over Due Book Reminder;14,Library Fine List;10,Reserved Books;15'
,p_field_template=>wwv_flow_imp.id(224555119471711188)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(868361770605820650)
,p_name=>'P14_CONCERNED_EMPLOYEE_DESC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Employee :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LIBRARY_MEMBERS_LIST_P14'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.FIRST_NAME||'' ''||P.MIDDLE_NAME||'' ''||P.LAST_NAME AS CONCERNED_EMPLOYEE_DESC, P.MRNO CONCERNED_EMPLOYEE_CODE, SUBSTR(P.MRNO, -11) CONCERNED_EMPLOYEE_SHORT_CODE',
'  FROM REGISTRATION.PATIENT P, HRD.INFORMATION I, DEFINITIONS.DEPARTMENT D, DEFINITIONS.DESIGNATION G',
' WHERE P.MRNO = I.MRNO',
'   AND I.MRNO IN (SELECT DISTINCT ISSUED_TO ',
'                    FROM SKM_LIBRARY.LIBRARY_HISTORY)',
'   AND I.DEPARTMENT_ID = D.DEPARTMENT_ID (+)',
'   AND I.DESIGNATION_ID = G.DESIGNATION_ID (+)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<No Selection>'
,p_cSize=>200
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'CONCERNED_EMPLOYEE_CODE:P14_CONCERNED_EMPLOYEE_CODE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(868362010028820653)
,p_name=>'P14_ORGANIZATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>':GV_ORGANIZATION_ID'
,p_prompt=>'Organization :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.DESCRIPTION AS ORGANIZATION_DESC, O.ORGANIZATION_ID ',
'  FROM DEFINITIONS.ORGANIZATION O',
' WHERE O.ACTIVE = ''Y'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(868362384603820656)
,p_name=>'P14_SUBJECT_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Subject :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SP.DESCRIPTION AS SUBJECT_DESC, SP.SCORE_PARAMETER_ID AS SUBJECT_ID',
'  FROM ICU.SCORE_PARAMETERS SP',
' WHERE SP.SCORE_CATEGORY_ID = ''SUB''',
'ORDER BY SP.DESCRIPTION'))
,p_lov_display_null=>'YES'
,p_cSize=>300
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'SUBJECT_ID:P14_SUBJECT_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1039311239940667768)
,p_name=>'P14_REPORT_OUTPUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1039236596355667504)
,p_item_default=>'S0'
,p_prompt=>'Report Output :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:Screen;S0,Printer;P0'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm:margin-right-md'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1039839494039906307)
,p_name=>'P14_APP_SESSION'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1062750292989108047)
,p_name=>'P14_GV_USER_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1062750383630108048)
,p_name=>'P14_GV_TERMINAL'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1066040601745489413)
,p_name=>'P14_LOGIN_USER_NAME'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1256311035303463290)
,p_name=>'P14_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1256307250053463210)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1261982733574661782)
,p_name=>'P14_LBX_LOCATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1256307578158463213)
,p_item_default=>':GV_PHYSICAL_LOCATION_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Location :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LA.LOCATION_DESC, LA.LOCATION_ID',
'  FROM RADIOLOGY.V_LOCATION_GRANT LA',
' WHERE LA.USER_MRNO = :GV_USER_MRNO',
'   AND LA.ORG_ID = :GV_ORGANIZATION_ID',
'   AND LA.SHOW_IN_REPORTS = ''YES''',
'ORDER BY ORDER_BY'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_lov_null_value=>'000'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1261988792802665117)
,p_name=>'P14_LBX_DEPARTMENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1256307578158463213)
,p_item_default=>'029'
,p_prompt=>'Department :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT N.NATURE, N.NATURE_ID',
'  FROM DIAGNOSTIC.V_CLINICAL_NATURES N',
' WHERE N.NATURE_ID IN (''029'', ''030'', ''079'', ''099'')',
'   AND N.NATURE_ID IN (SELECT U.LOV_VALUE',
'                         FROM SECURITY.V_LOVS_USERS U',
'                        WHERE U.LOV_ID = ''00079''',
'                          AND U.USER_MRNO = :GV_USER_MRNO',
'                          AND U.STATUS = ''ACTIVE'')',
' ORDER BY N.NATURE_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_lov_null_value=>'000'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1262306644703369423)
,p_name=>'P14_LBX_OPTIONS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>'000'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1262306905811369426)
,p_name=>'P14_LOC_DESC_SHORT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>':GV_LOCATION_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1262309312609369450)
,p_name=>'P14_FROM_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'From Date (DD-MON-YYYY) :'
,p_format_mask=>'DD-MON-RRRR'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1262309476443369452)
,p_name=>'P14_LBX_CONS_RES'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>'C'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1263352726165589225)
,p_name=>'P14_REF_REPORT_ACCESS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1263352817693589226)
,p_name=>'P14_REF_OBJECT_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1303206448027527531)
,p_name=>'P14_LOGIN_USER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1305728046477085730)
,p_name=>'P14_ISSUABLE_REFERENCE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_prompt=>'Issuable/Referenced :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:Issuable;I,Reference;R'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(224555002738711188)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306874450092579723)
,p_name=>'P14_USERID'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(1261996253587720924)
,p_item_default=>':GV_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(303443934701256142)
,p_name=>'DA_Page Load'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303444995533256143)
,p_event_id=>wwv_flow_imp.id(303443934701256142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE,''YY''),''DD-MON-RRRR''), TO_CHAR(SYSDATE,''DD-MON-RRRR'')',
'  INTO :P14_FROM_DATE, :P14_TO_DATE',
'  FROM DUAL;',
'  '))
,p_attribute_03=>'P14_FROM_DATE,P14_TO_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303444467777256143)
,p_event_id=>wwv_flow_imp.id(303443934701256142)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'updatePageItem();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(303445398750256143)
,p_name=>'DA_Btn Report - Click'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(303440500165256138)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303446878626256144)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'check();'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303513782413334905)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''LOCATION_ID'',          :GV_LOCATION_ID);',
'    HIS.SET_CONTEXT(''ORGANIZATION_ID'',      :GV_ORGANIZATION_ID);',
'    HIS.SET_CONTEXT(''ORDER_LOCATION_ID'',    :GV_ORDER_LOCATION_ID);',
'    HIS.SET_CONTEXT(''USER_MRNO'',            :GV_USER_MRNO);',
'    HIS.SET_CONTEXT(''PHYSICAL_LOCATION_ID'', :GV_PHYSICAL_LOCATION_ID);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303516863951334936)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P14_REPORT_TYPES") === ''1'') || ($v("P14_REPORT_TYPES") === ''2'') || ($v("P14_REPORT_TYPES") === ''4'') || ($v("P14_REPORT_TYPES") === ''5'')) {',
'    let objectList = []; paramList = []; object = []; reportOutput = $v("P14_REPORT_OUTPUT"); vObjectCode = $v("P14_REF_OBJECT_CODE");',
'    // Change start',
'    if ($v("P14_REPORT_TYPES") === ''1'') {',
'        paramList = {"P_ORGANIZATION_ID": $v("GV_ORGANIZATION_ID")};',
'    } else if ($v("P14_REPORT_TYPES") === ''2'') {',
'        if ($v("P14_PUBLISHER_COMPANY_DESC") !== null && $v("P14_PUBLISHER_COMPANY_DESC") !== ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_PUBLISHER": $v("P14_PUBLISHER_COMPANY_DESC")'
||'}',
'        } else if ($v("P14_PUBLISHER_COMPANY_DESC") === null || $v("P14_PUBLISHER_COMPANY_DESC") === '''') {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")};',
'        }',
'    // } else if ($v("P14_REPORT_TYPES") === ''3'') {',
'        // paramList = {"P_FROM_DATE": $v("P36_FROM_DATE"),"P_TO_DATE": $v("P36_TO_DATE"),"P_CONTRACT_WITH_AFTER": $v("P36_NO_OF_DAYS_WITH"),"P_NO_OF_DAYS": $v("P36_NO_OF_DAYS"),"P_CONCERNED_DEPT_ID": $v("P36_CONCERNED_DEPARTMENT_ID"),"P_DEPARTMENT_I'
||'D": "","P_CONTRACT_MAIN_STATUS_ID": $v("P36_MAIN_STATUS_ID"),"P_CONTRACT_SUB_STATUS_ID": $v("P36_CONTRACT_SUB_STATUS_ID"),"P_OVER_DUE": $v("P36_OVER_DUE"),"P_ACK_BY_PARENT_DEPT": $v("P36_ACK_BY_PARENT_DEPT"),"P_ACK_BY_LEGAL": $v("P36_ACK_BY_LEGAL")}',
'    // }',
'    } else if ($v("P14_REPORT_TYPES") === ''4'') {',
'        if ($v("P14_BOOK_AUTHOR_DESC") !== null && $v("P14_BOOK_AUTHOR_DESC") !== ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_AUTHOR": $v("P14_BOOK_AUTHOR_DESC")}',
'        } else if ($v("P14_BOOK_AUTHOR_DESC") === null || $v("P14_BOOK_AUTHOR_DESC") === '''') {        ',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'        }',
'    } else if ($v("P14_REPORT_TYPES") === ''5'') {',
'        if ($v("P14_ACTIVE_INACTIVE") === ''Y'' || $v("P14_ACTIVE_INACTIVE") === ''N''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE")}',
'        } else if ($v("P14_ACTIVE_INACTIVE") === ''B''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'        }',
'    }',
'',
'    object = {"OBJECTCODE": vObjectCode, "METHOD": reportOutput, "PARAMLIST": paramList};',
'    console.log(object);',
'    objectList.push(object);',
'    // Change End',
'    return objectList;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303517730926334945)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P14_REPORT_TYPES") === ''17'' && ((($v("P14_ISSUABLE_REFERENCE") === ''R'') && ($v("P14_ACTIVE_INACTIVE") === ''Y'')) || (($v("P14_ISSUABLE_REFERENCE") === ''R'') && ($v("P14_ACTIVE_INACTIVE") === ''N'')) || (($v("P14_ISSUABLE_REFERENCE") === ''R'') && ('
||'$v("P14_ACTIVE_INACTIVE") === ''B'')) || ',
'    (($v("P14_ISSUABLE_REFERENCE") === ''I'') && ($v("P14_ACTIVE_INACTIVE") === ''Y'')) || (($v("P14_ISSUABLE_REFERENCE") === ''I'') && ($v("P14_ACTIVE_INACTIVE") === ''N'')) || (($v("P14_ISSUABLE_REFERENCE") === ''I'') && ($v("P14_ACTIVE_INACTIVE") === ''B'')))'
||') {',
'    let objectList = []; paramList = []; object = []; reportOutput = $v("P14_REPORT_OUTPUT"); vObjectCode = $v("P14_REF_OBJECT_CODE");',
'    // Change start',
'    if ($v("P14_REPORT_TYPES") === ''17'') {',
'        if (($v("P14_ISSUABLE_REFERENCE") === ''R'') && ($v("P14_ACTIVE_INACTIVE") === ''Y'')) {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE"),"P_ISSUE": ''Reference'',"P_ACTIVE_STATUS": ''Active''};',
'        } else if (($v("P14_ISSUABLE_REFERENCE") === ''R'') && ($v("P14_ACTIVE_INACTIVE") === ''N''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE"),"P_ISSUE": ''Reference'',"P_ACTIVE_STATUS": ''In Active''};',
'        } else if (($v("P14_ISSUABLE_REFERENCE") === ''R'') && ($v("P14_ACTIVE_INACTIVE") === ''B''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ISSUE": ''Reference'',"P_ACTIVE_STATUS": ''Active / In Active''};',
'        } else if (($v("P14_ISSUABLE_REFERENCE") === ''I'') && ($v("P14_ACTIVE_INACTIVE") === ''Y''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE"),"P_ISSUE": ''Issuable'',"P_ACTIVE_STATUS": ''Active''};',
'        } else if (($v("P14_ISSUABLE_REFERENCE") === ''I'') && ($v("P14_ACTIVE_INACTIVE") === ''N''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE"),"P_ISSUE": ''Issuable'',"P_ACTIVE_STATUS": ''In Active''};',
'        } else if (($v("P14_ISSUABLE_REFERENCE") === ''I'') && ($v("P14_ACTIVE_INACTIVE") === ''B''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ISSUE": ''Issuable'',"P_ACTIVE_STATUS": ''Active / In Active''};',
'        }',
'    }',
'',
'    object = {"OBJECTCODE": vObjectCode, "METHOD": reportOutput, "PARAMLIST": paramList};',
'    console.log(object);',
'    objectList.push(object);',
'    // Change End',
'    return objectList;',
'}    '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(322972074693969425)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P14_REPORT_TYPES") === ''17'' && (((($v("P14_ISSUABLE_REFERENCE") === null) || ($v("P14_ISSUABLE_REFERENCE") === '''')) && ($v("P14_ACTIVE_INACTIVE") === ''Y'')) || ((($v("P14_ISSUABLE_REFERENCE") === null) || ($v("P14_ISSUABLE_REFERENCE") === ''''))'
||' && ($v("P14_ACTIVE_INACTIVE") === ''N'')) || ((($v("P14_ISSUABLE_REFERENCE") === null) || ($v("P14_ISSUABLE_REFERENCE") === '''')) && ($v("P14_ACTIVE_INACTIVE") === ''B'')))) ',
'{',
'    let objectList = []; paramList = []; object = []; reportOutput = $v("P14_REPORT_OUTPUT"); vObjectCode = $v("P14_REF_OBJECT_CODE");',
'    // Change start',
'    if ($v("P14_REPORT_TYPES") === ''17'') {',
'        if ((($v("P14_ISSUABLE_REFERENCE") === null) || ($v("P14_ISSUABLE_REFERENCE") === '''')) && ($v("P14_ACTIVE_INACTIVE") === ''Y''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE"),"P_ISSUE": ''All'',"P_ACTIVE_STATUS": ''Active''};            ',
'        } else if ((($v("P14_ISSUABLE_REFERENCE") === null) || ($v("P14_ISSUABLE_REFERENCE") === '''')) && ($v("P14_ACTIVE_INACTIVE") === ''N''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ACTIVE": $v("P14_ACTIVE_INACTIVE"),"P_ISSUE": ''All'',"P_ACTIVE_STATUS": ''In Active''};',
'        } else if ((($v("P14_ISSUABLE_REFERENCE") === null) || ($v("P14_ISSUABLE_REFERENCE") === '''')) && ($v("P14_ACTIVE_INACTIVE") === ''B''))  {',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ISSUANCE_REFERENCE": $v("P14_ISSUABLE_REFERE'
||'NCE"),"P_ISSUE": ''All'',"P_ACTIVE_STATUS": ''Active / In Active''};            ',
'        }',
'    }',
'',
'    object = {"OBJECTCODE": vObjectCode, "METHOD": reportOutput, "PARAMLIST": paramList};',
'    console.log(object);',
'    objectList.push(object);',
'    // Change End',
'    return objectList;',
'}    '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303517894978334946)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P14_REPORT_TYPES") === ''6'') || ($v("P14_REPORT_TYPES") === ''7'') || ($v("P14_REPORT_TYPES") === ''8'') || ($v("P14_REPORT_TYPES") === ''12'') || ($v("P14_REPORT_TYPES") === ''11'') || ($v("P14_REPORT_TYPES") === ''13'')) {',
'    let objectList = []; paramList = []; object = []; reportOutput = $v("P14_REPORT_OUTPUT"); vObjectCode = $v("P14_REF_OBJECT_CODE");',
'    // Change start',
'    if ($v("P14_REPORT_TYPES") === ''6'') {',
'        paramList = {"P_ORGANIZATION_ID": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_SUBJECT": $v("P14_SUBJECT_DESC")}',
'    } else if ($v("P14_REPORT_TYPES") === ''7'') {',
'        paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_CATEGORY": $v("P14_BOOK_LIST_CATEGORY_DESC")}',
'    } else if ($v("P14_REPORT_TYPES") === ''8'') {',
'        paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'    } else if ($v("P14_REPORT_TYPES") === ''12'') {   // < Not working without Access No > //',
'        if ($v("P14_ACCESS_NO") !== null && $v("P14_ACCESS_NO") !== ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_ACCESS_NO": $v("P14_ACCESS_NO")}',
'        } else if ($v("P14_ACCESS_NO") === null || $v("P14_ACCESS_NO") === ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'        }',
'    } else if ($v("P14_REPORT_TYPES") === ''11'') {   // < Not working without Employee Code > //',
'        if ($v("P14_CONCERNED_EMPLOYEE_DESC") !== null && $v("P14_CONCERNED_EMPLOYEE_DESC") !== ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_MRNO": $v("P14_CONCERNED_EMPLOYEE_DESC")}',
'        } else if ($v("P14_CONCERNED_EMPLOYEE_DESC") === null || $v("P14_CONCERNED_EMPLOYEE_DESC") === ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'        }',
'    } else if ($v("P14_REPORT_TYPES") === ''13'') {   // < Not working without Employee Code > //',
'        paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'    }',
'',
'    object = {"OBJECTCODE": vObjectCode, "METHOD": reportOutput, "PARAMLIST": paramList};',
'    console.log(object);',
'    objectList.push(object);',
'    // Change End',
'    return objectList;',
'}    '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303517981937334947)
,p_event_id=>wwv_flow_imp.id(303445398750256143)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_SKM.CALL.REPORT6370752912'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (($v("P14_REPORT_TYPES") === ''14'') || ($v("P14_REPORT_TYPES") === ''10'') || ($v("P14_REPORT_TYPES") === ''15'')) {',
'    let objectList = []; paramList = []; object = []; reportOutput = $v("P14_REPORT_OUTPUT"); vObjectCode = $v("P14_REF_OBJECT_CODE");',
'    // Change start',
'    if ($v("P14_REPORT_TYPES") === ''14'') {   // < Not working without Employee Code > //',
'        if ($v("P14_CONCERNED_EMPLOYEE_DESC") !== null && $v("P14_CONCERNED_EMPLOYEE_DESC") !== ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_MRNO": $v("P14_CONCERNED_EMPLOYEE_DESC")}',
'        } else if ($v("P14_CONCERNED_EMPLOYEE_DESC") === null || $v("P14_CONCERNED_EMPLOYEE_DESC") === ''''){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'        }',
'    } else if ($v("P14_REPORT_TYPES") === ''10'') {   // < Not working in any case > //',
'        if (($v("P14_FROM_DATE") !== null && $v("P14_FROM_DATE") !== '''') && ($v("P14_TO_DATE") !== null && $v("P14_TO_DATE") !== '''')){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_DATE": ''AND LH.RECEIVED_DATE BETWEEN ''+$v("P'
||'14_FROM_DATE")+'' AND ''+$v("P14_TO_DATE")}',
'        } else if (($v("P14_FROM_DATE") === null || $v("P14_FROM_DATE") === '''') || ($v("P14_TO_DATE") === null || $v("P14_TO_DATE") === '''')){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC")}',
'        }',
'    } else if (($v("P14_REPORT_TYPES") === ''15'') && (($v("P14_FROM_DATE") !== null && $v("P14_FROM_DATE") !== '''') && ($v("P14_TO_DATE") !== null && $v("P14_TO_DATE") !== ''''))) {   // < Not working in any case > //',
'        if (($v("P14_FROM_DATE") !== null && $v("P14_FROM_DATE") !== '''') && ($v("P14_TO_DATE") !== null && $v("P14_TO_DATE") !== '''')){',
'            paramList = {"P_ORGANIZATION": $v("P14_ORGANIZATION_ID"),"P_LOCATION_ID": $v("P14_LOCATION_ID"),"P_ORDER_LOCATION_ID": $v("P14_ORDER_LOCATION_ID"),"P_LOC_DESC": $v("P14_ORDER_LOCATION_DESC"),"P_DATE": ''AND LH.RECEIVED_DATE BETWEEN ''+$v("P'
||'14_FROM_DATE")+'' AND ''+$v("P14_TO_DATE")}',
'        }',
'    }',
'',
'    object = {"OBJECTCODE": vObjectCode, "METHOD": reportOutput, "PARAMLIST": paramList};',
'    console.log(object);',
'    objectList.push(object);',
'    // Change End',
'    return objectList;',
'}    '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(303443044371256140)
,p_name=>'DA_P14_REPORT_TYPES - Change'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_REPORT_TYPES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(303443510428256141)
,p_event_id=>wwv_flow_imp.id(303443044371256140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'updatePageItem();',
'// $s("P14_REF_REPORT_ACCESS",_.st_A.REPORT_ACCESS);',
'// $s("P14_REF_OBJECT_CODE",_.st_A.OBJECT_CODE);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(322971719271969422)
,p_name=>'DA_Btn Report - Get Focus'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(303440500165256138)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(322971805266969423)
,p_event_id=>wwv_flow_imp.id(322971719271969422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P14_REPORT_TYPES") === ''2''){',
'    if ($v("P14_PUBLISHER_COMPANY_DESC") === null || $v("P14_PUBLISHER_COMPANY_DESC") === ''''){',
'        apex.message.alert(''Please select appropriate "Publisher" to view the report...'');',
'        apex.item("P14_PUBLISHER_COMPANY_DESC").setFocus();',
'        return;',
'    }',
'} else if ($v("P14_REPORT_TYPES") === ''4''){',
'    if ($v("P14_BOOK_AUTHOR_DESC") === null || $v("P14_BOOK_AUTHOR_DESC") === ''''){',
'        apex.message.alert(''Please select appropriate "Author" to view the report...'');',
'        apex.item("P14_BOOK_AUTHOR_DESC").setFocus();',
'        return;',
'    }',
'} else if (($v("P14_REPORT_TYPES") === ''15'') && (($v("P14_FROM_DATE") === null || $v("P14_FROM_DATE") === '''') || ($v("P14_TO_DATE") === null || $v("P14_TO_DATE") === ''''))){',
'    if ($v("P14_FROM_DATE") === null || $v("P14_FROM_DATE") === ''''){',
'        apex.message.alert(''Please enter "From Date" to view the report...'');',
'        apex.item("P14_FROM_DATE").setFocus();',
'    } else if ($v("P14_TO_DATE") === null || $v("P14_TO_DATE") === ''''){',
'        apex.message.alert(''Please enter "To Date" to view the report...'');        ',
'        apex.item("P14_TO_DATE").setFocus();',
'    }',
'    return;',
'}'))
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(303441328955256139)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session State'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>303441328955256139
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(303441728693256139)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HIS.SET_CONTEXT(''FULL_NAME'', REPLACE(:GV_USER_NAME,'' '',''%20''));',
'    :P14_ORGANIZATION_ID := :GV_ORGANIZATION_ID;',
'    :P14_LOCATION_ID     := :GV_LOCATION_ID;',
'    :P14_LOGIN_USER      := :GV_USER_MRNO;',
'    :P14_LOGIN_USER_NAME := :GV_USER_NAME;',
'    :P14_APP_SESSION     := :APP_SESSION;',
'    :P14_GV_USER_ID      := :GV_USER_ID;',
'    :P14_GV_TERMINAL     := :GV_TERMINAL;',
'    :P14_LABEL := ''Library Reports'';',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>303441728693256139
);
wwv_flow_imp.component_end;
end;
/

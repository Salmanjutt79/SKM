prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'TestCM'
,p_alias=>'TESTCM'
,p_step_title=>'TestCM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'SALMAN'
,p_last_upd_yyyymmddhh24miss=>'20250131160857'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90304238077973489)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(224491510530711138)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(224381228970711047)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(224559348106711192)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(90305057427974101)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(224557729654711191)
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
);
wwv_flow_imp.component_end;
end;
/

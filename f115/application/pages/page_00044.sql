prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>'RADIATION_MENU_NEW'
,p_alias=>'RADIATION-MENU-NEW'
,p_step_title=>'RADIATION_MENU_NEW'
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'js-skmMenu'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(18461431621897107)
,p_navigation_list_template_id=>wwv_flow_imp.id(14599686320908280)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'FARHANAKRAM'
,p_last_upd_yyyymmddhh24miss=>'20230920120741'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16656666924360042)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(14542292946908251)
,p_plug_display_sequence=>20
,p_plug_source=>'<DIV ID=''FARHAN''></DIV>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(292139123272130374)
,p_plug_name=>'Patient Info'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(14487809253908224)
,p_plug_display_sequence=>10
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16656386660360039)
,p_button_sequence=>10
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(14614904670908288)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212459102672163720)
,p_name=>'P44_PATIENT_MRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212459524410163720)
,p_name=>'P44_PATIENT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212459944879163720)
,p_name=>'P44_AGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212460343450163720)
,p_name=>'P44_ADMISSION_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212460681197163720)
,p_name=>'P44_CANCER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212461097145163721)
,p_name=>'P44_CONSULTANT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212461555361163721)
,p_name=>'P44_ORDERABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212461962702163721)
,p_name=>'P44_IPD_OPD_EAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212462299857163721)
,p_name=>'P44_GENDER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212462701188163721)
,p_name=>'P44_CONSULTANT_MRNO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212463147463163721)
,p_name=>'P44_INHOUSE_DOCTOR_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212463511808163722)
,p_name=>'P44_ALLERGIES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212463873764163722)
,p_name=>'P44_HIS_USERID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212464357872163724)
,p_name=>'P44_FLAGS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212464706146163724)
,p_name=>'P44_BED_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212465154525163726)
,p_name=>'P44_PRIMARY_CONSULTANT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212465522558163726)
,p_name=>'P44_PATIENT_VULNERABILITIES'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212465883662163727)
,p_name=>'P44_CLINICAL_PATHWAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212466281270163727)
,p_name=>'P44_LTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212466687455163727)
,p_name=>'P44_PATIENT_LOU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212467077337163727)
,p_name=>'P44_UNIT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212467541545163727)
,p_name=>'P44_SERVICE_NO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212467923890163727)
,p_name=>'P44_SERVICE_STATUS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212468357579163727)
,p_name=>'P44_RANK_ABBREVIATION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212468682148163732)
,p_name=>'P44_FORMATION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
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
 p_id=>wwv_flow_imp.id(212469119853163733)
,p_name=>'P44_CLINIC_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(212469505352163733)
,p_name=>'P44_CONSULTANT_ID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(292139123272130374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16656131230360037)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_PATIENT_MRNO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16656220071360038)
,p_event_id=>wwv_flow_imp.id(16656131230360037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    V_BLOCK_DATA      RADIATION.PKG_S18FRM00010.PATIENT_TAB;',
'    V_EMP_TO_PAT_MRNO RADIATION.RADIATION_MASTER.MRNO%TYPE;',
'    V_ALERT_TEXT      VARCHAR2(4000);',
'    V_STOP            CHAR(1) := ''N'';',
'    V_INDEX           BINARY_INTEGER;',
'    V_MRNO  RADIATION.RADIATION_MASTER.MRNO%TYPE:=:P44_PATIENT_MRNO;',
'    V_OBJECT_CODE     VARCHAR2(11);',
'    EX_CUSTOM   EXCEPTION;',
'  BEGIN',
'    IF V_MRNO IS NOT NULL THEN',
'      BEGIN',
'        -- CALL THE PROCEDURE',
'        HRD.SET_MRNO(P_TYPE => ''PAT'',P_DISP_MRNO  => V_MRNO,P_MRNO => V_MRNO,P_ALERT_TEXT => V_ALERT_TEXT,P_STOP       => V_STOP);',
'      END;',
'      IF V_STOP = ''Y'' THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'      IF NVL(HRD.CHECK_EMPLOYEE(P_MRNO => V_MRNO), ''~'') IN',
'         (''E'', ''D'') THEN',
'        BEGIN',
'          HRD.PKG_MRNO.GET_PATIENT_AGAINST_EMP(P_EMP_CODE     => V_MRNO,P_PATIENT_MRNO => V_EMP_TO_PAT_MRNO,P_STOP         => V_STOP,P_ALERT_TEXT   => V_ALERT_TEXT);',
'          IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'            RAISE EX_CUSTOM;',
'          END IF;',
'          IF V_MRNO <> V_EMP_TO_PAT_MRNO THEN',
'            V_ALERT_TEXT := ''This MRNO '' || V_MRNO ||',
'                            '' is converted to another MRNO '' ||',
'                            V_EMP_TO_PAT_MRNO || '', kindly use this MRNO '' ||',
'                            V_EMP_TO_PAT_MRNO || '' to access EMR.'';',
'            RAISE EX_CUSTOM;',
'          END IF;',
'        END;',
'        V_MRNO := V_EMP_TO_PAT_MRNO;',
'      END IF;',
'      :P0_MRNO := V_MRNO;',
'      IF V_MRNO IS NOT NULL THEN',
'        -- CALL THE PROCEDURE',
'        HIS.PKG_CONFIDENTIAL_PATIENT.CONFIDENTIAL_ALLOWED(P_PATIENT_MRNO => V_MRNO,',
'  P_USER_MRNO    => :GV_USER_MRNO,',
'  P_OBJECT_CODE  => V_OBJECT_CODE,',
'  P_TERMINAL     => :GV_TERMINAL,',
'  P_EVENT        => ''PKG_FORM* (Package Body)'',',
'  P_ALERT        => V_ALERT_TEXT,',
'  P_STOP         => V_STOP);',
'      ',
'        IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'          RAISE EX_CUSTOM;',
'        END IF;',
'      END IF;',
'      RADIATION.PKG_S18FRM00010.QUERY_PATIENT(P_MRNO        => V_MRNO,',
'                                              P_BLOCK_DATA  => V_BLOCK_DATA,',
'                                              P_USER_MRNO   => :GV_USER_MRNO,',
'                                              P_OBJECT_CODE => V_OBJECT_CODE,',
'                                              P_TERMINAL    => :GV_TERMINAL,',
'                                              P_ALERT_TEXT  => V_ALERT_TEXT,',
'                                              P_STOP        => V_STOP);',
'      IF NVL(V_STOP, ''N'') = ''Y'' THEN',
'        RAISE EX_CUSTOM;',
'      ELSIF NVL(V_STOP, ''N'') = ''N'' AND V_ALERT_TEXT IS NOT NULL THEN',
'        RAISE EX_CUSTOM;',
'      END IF;',
'      --****************--',
'      V_INDEX := V_BLOCK_DATA.FIRST;',
'     ',
'    END IF;',
'  EXCEPTION',
'  WHEN EX_CUSTOM THEN',
'    RAISE_APPLICATION_ERROR(-20007,V_ALERT_TEXT);',
'  END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16656415634360040)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16656386660360039)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16656598774360041)
,p_event_id=>wwv_flow_imp.id(16656415634360040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':FARHAN := ''FARHAN AKRAM0'';',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

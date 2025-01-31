prompt --application/shared_components/user_interface/lovs/lov_rad_app_queue_next_event
begin
--   Manifest
--     LOV_RAD_APP_QUEUE_NEXT_EVENT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>115
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(184936130407818316)
,p_lov_name=>'LOV_RAD_APP_QUEUE_NEXT_EVENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT DESCRIPTION, ID',
'    FROM (SELECT RADIATION.PKG_WORKFLOW.GET_EVENT_DESC(A.DECISION_ID) DESCRIPTION,',
'                 A.DECISION_ID ID',
'            FROM (SELECT TO_NUMBER(:P38_ND_NEXT_EVENT_ID) DECISION_ID',
'                    FROM DUAL',
'                   WHERE TO_NUMBER(:P38_ND_NEXT_EVENT_ID) IS NOT NULL',
'                  UNION',
'                  SELECT ED.DECISION_ID',
'                    FROM DEFINITIONS.EVENT_DECISION ED',
'                   WHERE ED.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'                     AND ED.PURCHASE_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'                     AND ED.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'                     AND ED.EVENT_ID = :P38_ND_EVENT_ID',
'                  UNION',
'                  SELECT QE.EVENT_ID',
'                    FROM RADIATION.DEF_QUEUE_EVENTS     QE,',
'                         DEFINITIONS.PR_TYPE_FLOW_EVENT FE,',
'                         DEFINITIONS.EVENT              EV',
'                   WHERE QE.QUEUE_ID = :P38_GROUP',
'                     AND QE.EVENT_ID = FE.EVENT_ID',
'                     AND FE.EVENT_ID = EV.EVENT_ID',
'                     AND QE.PERFORMABLE = ''Y''',
'                     AND EV.USER_RUNTIME = ''Y'') A',
'          ',
'           WHERE NOT EXISTS',
'           (SELECT 1',
'                    FROM RADIATION.SCHEDULE_WORKFLOW RDW',
'                   WHERE RDW.SR_NO = :P38_ND_SR_NO',
'                     AND RDW.EVENT_ID = A.DECISION_ID',
'                     AND RDW.SCHEMA_ID = :P38_ND_SCHEMA_ID',
'                     AND RDW.WORKFLOW_TYPE_ID = :P38_ND_PURCHASE_TYPE_ID',
'                     AND RDW.WORK_FLOW_ID = :P38_ND_WORK_FLOW_ID',
'                     AND RDW.EVENT_ID = :P38_ND_EVENT_ID));',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ASSESSMENT'
,p_return_column_name=>'ID'
,p_display_column_name=>'DESCRIPTION'
,p_default_sort_column_name=>'DESCRIPTION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/

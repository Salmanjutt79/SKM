prompt --application/shared_components/user_interface/templates/region/customstandardregion
begin
--   Manifest
--     REGION TEMPLATE: CUSTOMSTANDARDREGION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(225620970640730334)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region t-Region--accent1 #REGION_CSS_CLASSES#" style="border-radius: 10px;"',
'    id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <div class="t-Region-header" style="border-radius: 10px 10px 0px 0px;">',
'        <div class="t-Region-headerItems t-Region-headerItems--title">',
'            <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'            <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'        </div>',
'        <div class="t-Region-headerItems t-Region-headerItems--buttons">',
'            #COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'        <div class="t-Region-refreshButton">',
'            <button class="t-Button t-Button--noLabel t-Button--icon t-Button--link" data-action="[#REGION_STATIC_ID#]refresh" onclick="void(0);" type="button" id="#REGION_STATIC_ID#-refresh" title="Refresh" aria-label="Button">',
'      <span class="t-Icon fa fa-refresh" aria-hidden="true"></span>',
'    </button>',
'        </div>',
'    </div>',
'    <div class="t-Region-bodyWrap" style="border-radius: 10px;">',
'        <div class="t-Region-buttons t-Region-buttons--top">',
'            <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'            <div class="t-Region-buttons-right">#NEXT#</div>',
'        </div>',
'        <div class="t-Region-body">',
'            #BODY#',
'            #SUB_REGIONS#',
'            <button style="display: none;" type="button" class="t-Button t-Button--icon t-Button--success t-Button--simple t-Button--stretch t-Button--iconLeft btn-add-row hide-initially" id="#REGION_STATIC_ID#_btn_add" data-action="[#REGION_STATIC_I'
||'D#]row-add-row">',
'       <span aria-hidden="true" class="t-Icon t-Icon--left fa fa-plus-circle">',
'           </span>Add Row',
'           </button>',
'        </div>',
'        <div class="t-Region-buttons t-Region-buttons--bottom">',
'            <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'            <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'        </div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'SKM-Standard-Region'
,p_internal_name=>'CUSTOMSTANDARDREGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>101
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>254853620281980118
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225621339581730363)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225621835983730364)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225622366491730364)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225622849450730365)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225623358202730366)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225623850253730366)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225624377690730366)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225624814188730366)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225625397829730366)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225625803580730367)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(225626352271730367)
,p_plug_template_id=>wwv_flow_imp.id(225620970640730334)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp.component_end;
end;
/

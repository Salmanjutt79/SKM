prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.4'
,p_default_workspace_id=>100000
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'HMIS'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225034840682729644)
,p_theme_id=>101
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>201188169057771954
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225035160716729645)
,p_theme_id=>101
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>201188562229771954
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225035583219729645)
,p_theme_id=>101
,p_name=>'Vita (SKM)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Region-BG":"#f6f6f6","@g_Region-FG":"#262626","@g_Form-Item-BG":"#ffffff","@g_Form-Item-FG":"#000000","@g_Form-Label":"#000000","@l_Button-Danger-BG":"#b80f00","@l_Button-Danger-Text":"#ffffff","@l_Button-Warning-BG":"#ffbe0'
||'c","@l_Button-Warning-Text":"#000000","@l_Button-Success-BG":"#217500","@l_Button-Success-Text":"#ffffff","@l_Button-Hot-BG":"#045fb4","@l_Button-Hot-Text":"#ffffff","@g_Accent-BG":"#0455a0","@g_Color-Palette-1":"#1d76a5","@g_Color-Palette-1-FG":"#ff'
||'ffff","@g_Color-Palette-2":"#0c7484","@g_Color-Palette-2-FG":"#e4f9fd","@g_Color-Palette-3":"#1c7472","@g_Color-Palette-3-FG":"#f0fcfb","@g_Color-Palette-4":"#2a7a5d","@g_Color-Palette-4-FG":"#f0faf6","@g_Color-Palette-5":"#4c7733","@g_Color-Palette-'
||'5-FG":"#ffffff","@g_Color-Palette-8":"#ae4d10","@g_Color-Palette-8-FG":"#ffffff","@g_Color-Palette-9":"#d6251b","@g_Color-Palette-9-FG":"#ffffff","@g_Color-Palette-10":"#d31e57","@g_Color-Palette-10-FG":"#ffffff","@g_Color-Palette-11":"#b73985","@g_C'
||'olor-Palette-11-FG":"#ffffff","@g_Color-Palette-15":"#5b7081","@g_Color-Palette-15-FG":"#ffffff","@g_Disabled-BG":"#676767","@g_Disabled-FG":"#ffffff","@irrBg":"#ffffff"},"customCSS":".t-Form-label,t-Button-label {\n  font-weight: 600;\n}\n.apex-item'
||'-text,input.apex-item-text.apex-item-popup-lov{\n    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);\n}\ninput.apex-item-text.apex-item-popup-lov{\n    background-color: lemonchiffon;\n}\n:root{\n--a-button-font-weight : 600;\n--a-field-input-state-borde'
||'r-color : #757474;\n--a-field-input-border-color : #757474;\n--a-button-state-border-color : #757474;\n--a-button-hover-border-color : #757474;\n--a-iconlist-item-background-color: #ffffff;\n}\n.apex-item-multi:disabled, .apex-item-select:disabled, .'
||'apex-item-text:disabled, .apex-item-textarea:disabled,\n .datetimepicker_newMonth:disabled,.apex-item-multi.apex_disabled, .apex-item-select.apex_disabled, .apex-item-text.apex_disabled, .apex-item-textarea.apex_disabled,\n .datetimepicker_newMonth.a'
||'pex_disabled,.apex-item-multi:read-only, .apex-item-select.readonly, .apex-item-text:read-only, .apex-item-textarea:read-only,\n .datetimepicker_newMonth:read-only, .u-TF-item--select:disabled, .u-TF-item--text:disabled, select.group_selectlist:disab'
||'led,\n  select.listmanager:disabled,a-date-picker.apex_disabled, a-date-picker.is-disabled, a-date-picker:read-only{\n    filter: brightness(95%);\n    opacity: 100%; \n}\nspan.t-Icon--left{\n    margin-right: 2px;\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#vita_skm.css'
,p_theme_roller_read_only=>true
,p_reference_id=>123946742923347835
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225035979150729650)
,p_theme_id=>101
,p_name=>'Vita (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Nav-Exp":"330px","@Side-Exp":"15rem","@Actions-Exp":"12.5rem","@g_Container-BorderRadius":"0.125rem","@g_Body-Title-BG":"#ffffff","@g_Body-Title-FG":"#000000","@g_Region-Header-BG":"#ffffff","@g_Region-Header-FG":"#262626","@g'
||'_Form-BorderRadius":"0.125rem","@g_Form-Label":"#262626","@g_Nav-BG":"#062848","@g_Nav-FG":"#ffffff","@g_Nav-Accent-BG":"#056ac8","@g_Nav-Accent-FG":"#ffffff","@g_Color-Palette-9":"#bd0c0c","@g_Color-Palette-9-FG":"#ffffff"},"customCSS":".t-Region-he'
||'ader { line-height: 6px\n}\n\n\n.t-Header-branding {\n    background-color: white;\n    color: black;\n    box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;\n    font-family: ''Times New Roman'', Times, serif;\n  \n    font-'
||'weight: bold;\n}\n\n.t-Button-badge {\n  padding: 0 0rem;\n  display: inline-block;\n  -webkit-margin-start: var(--a-button-icon-spacing, 0.25rem);\n  margin-inline-start: var(--a-button-icon-spacing, 0.25rem);\n  width: 30px;\n  height: 30px;\n  bor'
||'der-radius: 50%;\n}\n\n.t-Header-logo-link img{\n    max-height: 50px;\n}\n\n.t-Button--navBar .t-Button-badge{\n    background-color: transparent;\n}\n\n.t-Header-navBar--center{\n    padding-right: 1rem;\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#114988593195284870.css'
,p_theme_roller_read_only=>false
,p_reference_id=>177135083292027651
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225036323552729650)
,p_theme_id=>101
,p_name=>'Vita (copy_1) (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Nav-Exp":"310px","@Side-Exp":"15rem","@Actions-Exp":"12.5rem","@g_Container-BorderRadius":"0.125rem","@g_Body-Title-BG":"#ffffff","@g_Body-Title-FG":"#000000","@g_Region-Header-BG":"#ffffff","@g_Region-Header-FG":"#262626","@g'
||'_Form-BorderRadius":"0.125rem","@g_Form-Label":"#262626","@g_Nav-BG":"#062848","@g_Nav-FG":"#ffffff","@g_Nav-Accent-BG":"#056ac8","@g_Nav-Accent-FG":"#ffffff","@g_Color-Palette-9":"#bd0c0c","@g_Color-Palette-9-FG":"#ffffff"},"customCSS":".t-Region-he'
||'ader { line-height: 6px\n}\n\n\n.t-Header-branding {\n    background-color: white;\n    color: black;\n    box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;\n    font-family: ''Times New Roman'', Times, serif;\n  \n    font-'
||'weight: bold;\n}\n\n.t-Button-badge {\n  padding: 0 0rem;\n  display: inline-block;\n  -webkit-margin-start: var(--a-button-icon-spacing, 0.25rem);\n  margin-inline-start: var(--a-button-icon-spacing, 0.25rem);\n  width: 30px;\n  height: 30px;\n  bor'
||'der-radius: 50%;\n}\n\n.t-Header-logo-link img{\n    max-height: 50px;\n}\n\n.t-Button--navBar .t-Button-badge{\n    background-color: transparent;\n}\n\n.t-Header-navBar--center{\n    padding-right: 1rem;\n}\n\n@media(max-width:700px){\n.t-Header-lo'
||'go-link .apex-logo-text{\n    display: none;\n}\n.auto-slider{\n    height: 150px;\n}\n.guide-btn{\n    display: none;\n}\n.t-Footer{\n    display: none;\n}\n}\n","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#359079275864896063.css'
,p_theme_roller_read_only=>false
,p_reference_id=>421225765961638844
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225036796346729650)
,p_theme_id=>101
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>201188911656771956
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225037146761729650)
,p_theme_id=>101
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>201189305140771956
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(225037540783729650)
,p_theme_id=>101
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>201189763085771957
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/templates/region/login_login
begin
--   Manifest
--     REGION TEMPLATE: LOGIN_LOGIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1600476898799620
,p_default_application_id=>100
,p_default_id_offset=>1602442419489645
,p_default_owner=>'PAY'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(409676422768553982)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="custom-login-wrapper" id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'',
'  <!-- LEFT BRAND PANEL -->',
'  <div class="custom-login-left">',
'    #REGION_IMAGE#',
'    <h2 class="brand-title">MAGNA PROCESSING INDUSTRY</h2>',
unistr('    <p class="brand-subtitle">Smart \2022 Fast \2022 Reliable</p>'),
'    <p class="brand-tagline">Manage your operations with confidence</p>',
'    <p class="brand-description">',
'      Our system is designed to streamline industrial operations, reduce errors,',
'      and improve efficiency across every department. With integrated modules for ',
'      production, inventory, HR, accounting, and sales, you stay in complete control ',
'      of your business with real-time visibility and smarter decision-making.',
'    </p>',
'  </div>',
'',
'  <!-- RIGHT LOGIN PANEL -->',
'  <div class="custom-login-right">',
'    <div class="login-box">',
'',
'      <!-- Logo -->',
'      <div class="login-avatar">',
'        <img src="#APP_FILES#logo.PNG" alt="User Avatar" class="circle-logo">',
'      </div>',
'',
'      <h3 class="login-title">WELCOME</h3>',
'',
'      <div class="t-Login-body">',
'        #BODY#',
'      </div>',
'',
'      <div class="t-Login-links">',
'        #EDIT##CREATE#',
'      </div>',
'',
'      <div class="t-Login-subRegions">',
'        #SUB_REGIONS#',
'      </div>',
'',
'    </div>',
'  </div>',
'',
'</div>',
''))
,p_page_plug_template_name=>'login login'
,p_internal_name=>'LOGIN_LOGIN'
,p_image_template=>'<img class="t-Login-logo" src="#REGION_IMAGE_URL#" alt="" data-app-icon />'
,p_theme_id=>42
,p_theme_class_id=>23
,p_preset_template_options=>'t-Login-region--headerHidden js-removeLandmark'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(409676797436553986)
,p_plug_template_id=>wwv_flow_imp.id(409676422768553982)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(409677366229553987)
,p_plug_template_id=>wwv_flow_imp.id(409676422768553982)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(409677816786553988)
,p_plug_template_id=>wwv_flow_imp.id(409676422768553982)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(409678371281553988)
,p_plug_template_id=>wwv_flow_imp.id(409676422768553982)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(409678822490553989)
,p_plug_template_id=>wwv_flow_imp.id(409676422768553982)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/

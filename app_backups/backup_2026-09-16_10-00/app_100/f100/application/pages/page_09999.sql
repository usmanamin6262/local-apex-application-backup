prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1600476898799620
,p_default_application_id=>100
,p_default_id_offset=>1602442419489645
,p_default_owner=>'PAY'
);
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'attandance - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================',
'   DESKTOP LAYOUT',
'   ============================ */',
'.custom-login-wrapper {',
'  display: flex;',
'  height: 100vh;',
'  overflow: hidden;',
'}',
'',
'/* LEFT PANEL */',
'.custom-login-left {',
'  flex: 1;',
'  background: linear-gradient(135deg, #004d40, #00695c);',
'  color: #fff;',
'  display: flex;',
'  flex-direction: column;',
'  justify-content: center;',
'  align-items: center;',
'  padding: 50px 40px;',
'  text-align: center;',
'  border-radius: 16px 0 0 16px;',
'  box-shadow: 0 8px 25px rgba(0,0,0,0.6);',
'  position: relative;',
'  overflow: hidden;',
'}',
'',
'/* Glowing background effect */',
'.custom-login-left::before {',
'  content: "";',
'  position: absolute;',
'  top: -50%;',
'  left: -50%;',
'  width: 200%;',
'  height: 200%;',
'  background: radial-gradient(circle, rgba(0,255,100,0.25) 0%, transparent 70%);',
'  animation: glowMove 6s infinite linear;',
'  z-index: 0;',
'}',
'',
'@keyframes glowMove {',
'  0%   { transform: rotate(0deg); }',
'  100% { transform: rotate(360deg); }',
'}',
'',
'/* Keep text above glow */',
'.custom-login-left > * {',
'  z-index: 1;',
'  position: relative;',
'}',
'',
'.brand-title {',
'  font-size: 32px;',
'  font-weight: bold;',
'  text-shadow: 0 0 12px #00e676;',
'}',
'',
'.brand-subtitle {',
'  font-size: 18px;',
'  margin-bottom: 5px;',
'}',
'',
'.brand-tagline {',
'  font-size: 14px;',
'  margin-bottom: 15px;',
'}',
'',
'.brand-description {',
'  font-size: 14px;',
'  line-height: 1.6;',
'  max-width: 420px;',
'  opacity: .9;',
'}',
'',
'/* RIGHT PANEL */',
'.custom-login-right {',
'  flex: 1;',
'  background: #f7f7f7;',
'  display: flex;',
'  justify-content: center;',
'  align-items: center;',
'}',
'',
'.login-box {',
'  background: #ffffff;',
'  padding: 40px;',
'  border-radius: 12px;',
'  width: 350px;',
'  text-align: center;',
'  box-shadow: 0px 4px 20px rgba(0,0,0,0.1);',
'}',
'',
'/* Logo avatar */',
'.login-avatar {',
'  width: 100px;',
'  height: 100px;',
'  border-radius: 50%;',
'  border: 3px solid #00c853;',
'  display: flex;',
'  justify-content: center;',
'  align-items: center;',
'  margin: 0 auto 20px;',
'  transition: 0.3s;',
'}',
'',
'.circle-logo {',
'  width: 85px;',
'  height: 85px;',
'  object-fit: cover;',
'  border-radius: 50%;',
'}',
'',
'.login-avatar:hover {',
'  box-shadow: 0 0 14px #00c853;',
'}',
'',
'.login-title {',
'  font-size: 22px;',
'  margin-bottom: 20px;',
'  font-weight: bold;',
'}',
'',
'/* Inputs Highlight */',
'.t-Form-fieldContainer input[type="text"],',
'.t-Form-fieldContainer input[type="password"] {',
'  border: 2px solid #ccc;',
'  border-radius: 8px;',
'  padding: 10px;',
'  width: 100%;',
'  transition: 0.3s;',
'}',
'',
'.t-Form-fieldContainer input:focus {',
'  border-color: #00c853;',
'  box-shadow: 0 0 10px #00c853;',
'}',
'',
'/* Login Button */',
'.t-Login-buttons .t-Button {',
'  width: 100%;',
'  border-radius: 8px;',
'  background-color: #009688 !important;',
'  border: none !important;',
'  padding: 12px;',
'  color: #fff !important;',
'  font-size: 16px;',
'  font-weight: bold;',
'  letter-spacing: 1px;',
'  transition: 0.3s;',
'}',
'',
'.t-Login-buttons .t-Button:hover {',
'  background-color: #00c853 !important;',
'  box-shadow: 0 0 12px #00c853;',
'}',
'',
'/* ============================',
unistr('   MOBILE VIEW (\2264 600px)'),
'   ============================ */',
'@media (max-width: 600px) {',
'',
'  .custom-login-wrapper {',
'    flex-direction: column;',
'    height: auto;',
'  }',
'',
'  .custom-login-left {',
'    width: 100%;',
'    padding: 30px 20px;',
'    border-radius: 0;',
'    box-shadow: none;',
'    height: auto;',
'  }',
'',
'  .brand-title { font-size: 24px; }',
'  .brand-subtitle { font-size: 14px; }',
'  .brand-tagline { font-size: 12px; }',
'  .brand-description { font-size: 13px; max-width: 300px; }',
'',
'  .custom-login-right {',
'    width: 100%;',
'    padding: 20px;',
'    background: #ffffff;',
'  }',
'',
'  .login-box {',
'    width: 100%;',
'    max-width: 330px;',
'    padding: 25px;',
'  }',
'',
'  .login-avatar {',
'    width: 80px;',
'    height: 80px;',
'  }',
'',
'  .circle-logo {',
'    width: 65px;',
'    height: 65px;',
'  }',
'',
'  .login-title {',
'    font-size: 18px;',
'    margin-bottom: 15px;',
'  }',
'',
'  .t-Form-fieldContainer input {',
'    padding: 10px;',
'    font-size: 14px;',
'  }',
'',
'  .t-Login-buttons .t-Button {',
'    font-size: 14px;',
'    padding: 10px;',
'  }',
'}',
''))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(409478657192311087)
,p_plug_name=>'attandance'
,p_icon_css_classes=>'fa-ai'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerIcon'
,p_plug_template=>wwv_flow_imp.id(409676422768553982)
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#logo.PNG'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(409480314136311106)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(409478657192311087)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409479120364311101)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(409478657192311087)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409479517974311102)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(409478657192311087)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409479952846311104)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(409478657192311087)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(409482475914311111)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2616784020335681
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(409482948860311111)
,p_page_process_id=>wwv_flow_imp.id(409482475914311111)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(409483413592311112)
,p_page_process_id=>wwv_flow_imp.id(409482475914311111)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(409480618049311106)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2614926155335676
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(409481047443311109)
,p_page_process_id=>wwv_flow_imp.id(409480618049311106)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(409481498338311110)
,p_page_process_id=>wwv_flow_imp.id(409480618049311106)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(409482035206311110)
,p_page_process_id=>wwv_flow_imp.id(409480618049311106)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(409484362145311112)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2618670251335682
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(409483939709311112)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>2618247815335682
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1600476898799620
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'PAY'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'python api test'
,p_alias=>'PYTHON-API-TEST'
,p_step_title=>'python api test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1630594472026717)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1631054856026722)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630615568026718)
,p_name=>'P4_PRODUCT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1630594472026717)
,p_prompt=>'Product Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630703520026719)
,p_name=>'P4_QUANTITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1630594472026717)
,p_prompt=>'QUANTITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630858012026720)
,p_name=>'P4_PRICE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1630594472026717)
,p_prompt=>'Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1631140171026723)
,p_name=>'P4_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1630594472026717)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630964951026721)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'    l_response CLOB;',
'    l_message  VARCHAR2(4000);',
'    l_status   VARCHAR2(100);',
'BEGIN',
'',
'    -- Call FastAPI',
'    l_response := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'        p_url         => ''http://10.0.10.51:8000/productid/'' || :P4_ID,',
'        p_http_method => ''GET''',
'    );',
'',
'    -- Parse JSON response',
'    APEX_JSON.PARSE(l_response);',
'',
'    -- Get API status',
'    l_status := APEX_JSON.GET_VARCHAR2(''status'');',
'',
'',
'    -- =========================================',
'    -- API ERROR',
'    -- =========================================',
'    IF l_status = ''error'' THEN',
'',
'        l_message := APEX_JSON.GET_VARCHAR2(''message'');',
'',
'        APEX_ERROR.ADD_ERROR(',
'            p_message          => ''API Error: '' || l_message,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'',
'        -- Clear items',
'        :P4_PRODUCT_NAME := NULL;',
'        :P4_PRICE         := NULL;',
'        :P4_QUANTITY      := NULL;',
'',
'        RETURN;',
'',
'    END IF;',
'',
'',
'    -- =========================================',
'    -- SUCCESS',
'    -- =========================================',
'    :P4_PRODUCT_NAME :=',
'        APEX_JSON.GET_VARCHAR2(''data.product_name'');',
'',
'    :P4_PRICE :=',
'        APEX_JSON.GET_NUMBER(''data.price'');',
'',
'    :P4_QUANTITY :=',
'        APEX_JSON.GET_NUMBER(''data.quantity'');',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'',
'        APEX_ERROR.ADD_ERROR(',
'            p_message          => ''API/Oracle Error: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1630964951026721
);
wwv_flow_imp.component_end;
end;
/

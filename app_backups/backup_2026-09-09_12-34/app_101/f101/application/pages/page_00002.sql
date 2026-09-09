prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'image upload'
,p_alias=>'IMAGE-UPLOAD'
,p_step_title=>'image upload'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1630404159026716)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    html, body {',
'        margin: 0;',
'        padding: 0;',
'        width: 100%;',
'        height: 100%;',
'    }',
'',
'    #formsOuter {',
'        width: 100%;',
'        height: 100vh;',
'        display: flex;',
'    }',
'',
'    #formsInner {',
'        width: 100%;',
'        height: 100%;',
'    }',
'',
'    iframe {',
'        width: 100%;',
'        height: 100vh;',
'        border: 0;',
'        display: block;',
'    }',
'',
'    /* Mobile */',
'    @media screen and (max-width: 768px) {',
'        iframe {',
'            height: 100vh;',
'        }',
'    }',
'</style>',
'',
'<div id="formsOuter">',
'    <div id="formsInner">',
'',
'        <iframe ',
'            id="forms_iframe"',
'            src="&P2_NEW.&P2_NAME."',
'            scrolling="no">',
'        </iframe>',
'',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1629150174026703)
,p_button_sequence=>30
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1628933362026701)
,p_name=>'P2_IMAGE'
,p_item_sequence=>10
,p_prompt=>'Image'
,p_display_as=>'NATIVE_IMAGE_UPLOAD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_cropping', 'N',
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_ICON',
  'preview_size', 'AUTO',
  'purge_files_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1629005018026702)
,p_name=>'P2_NAME'
,p_item_sequence=>20
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630368081026715)
,p_name=>'P2_NEW'
,p_item_sequence=>40
,p_item_default=>'http://localhost:8080'
,p_prompt=>'New'
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
 p_id=>wwv_flow_imp.id(1629275809026704)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_blob       BLOB;',
'    l_orig_name  VARCHAR2(255);',
'    l_ext        VARCHAR2(10);',
'    l_filename   VARCHAR2(255);',
'    l_file       UTL_FILE.FILE_TYPE;',
'    l_buffer     RAW(32767);',
'    l_amount     BINARY_INTEGER := 32767;',
'    l_pos        INTEGER := 1;',
'    l_blob_len   INTEGER;',
'BEGIN',
'    -- 1. APEX temporary table se original file aur blob uthayein',
'    SELECT filename, blob_content ',
'    INTO l_orig_name, l_blob',
'    FROM apex_application_temp_files',
'    WHERE name = :P2_IMAGE;',
'',
'    -- 2. Original file se extension alag karein (misal: .png ya .jpg)',
'    l_ext := SUBSTR(l_orig_name, INSTR(l_orig_name, ''.'', -1));',
'',
'    -- 3. User ke diye hue page item (:P2_CUSTOM_NAME) ke sath extension jor dein',
'    l_filename := TRIM(:P2_NAME) || l_ext;',
'',
'    l_blob_len := DBMS_LOB.getlength(l_blob);',
'',
'    -- 4. E:\image mein user ke bataye hue naam se file kholein',
'    l_file := UTL_FILE.fopen(''IMAGE_DIR'', l_filename, ''wb'', 32767);',
'',
'    -- 5. BLOB ko chunks mein parh kar file mein write karein',
'    WHILE l_pos <= l_blob_len LOOP',
'        DBMS_LOB.read(l_blob, l_amount, l_pos, l_buffer);',
'        UTL_FILE.put_raw(l_file, l_buffer, TRUE);',
'        l_pos := l_pos + l_amount;',
'    END LOOP;',
'',
'    -- 6. File band kar dein',
'    UTL_FILE.fclose(l_file);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        IF UTL_FILE.is_open(l_file) THEN',
'            UTL_FILE.fclose(l_file);',
'        END IF;',
'        RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1629150174026703)
,p_internal_uid=>1629275809026704
);
wwv_flow_imp.component_end;
end;
/

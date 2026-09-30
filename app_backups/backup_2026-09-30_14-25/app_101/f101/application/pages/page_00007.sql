prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'interview'
,p_alias=>'INTERVIEW'
,p_step_title=>'interview'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
);
wwv_flow_imp.component_end;
end;
/

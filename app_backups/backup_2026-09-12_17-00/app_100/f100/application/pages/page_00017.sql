prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'COST CENTER'
,p_alias=>'COST-CENTER1'
,p_step_title=>'COST CENTER'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(415200870512868529)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>70
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(415197800844868498)
,p_name=>'Present_Employees'
,p_title=>'Present_Employees'
,p_parent_plug_id=>wwv_flow_imp.id(415200870512868529)
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.emp_code,p.emp_name,p.emp_fname,p.shift,p.dept_desc,p.desg_name,',
' TO_CHAR(a.date_in, ''HH24:MI'') AS time_in,',
'    TO_CHAR(a.date_out, ''HH24:MI'') AS time_out',
'FROM Attendance@payroll a ,employee_vw@payroll p',
'WHERE a.emp_code=p.emp_code',
'    -- AND a.attn_type =''P''',
'AND trunc(a.date_in) =trunc(sysdate)',
'     and a.date_in is not null',
'      and p.dept_id=:P17_LOC_ID',
'      and p.quit_status=''SERVING''',
'      AND P.COST_ID=:P17_COST',
'      and p.loc_id=:P17_LOCATION'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411769785812541199)
,p_query_column_id=>1
,p_column_alias=>'EMP_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Emp Code'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_EMPLOYEE:#EMP_CODE#'
,p_column_linktext=>'#EMP_CODE#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411770179373541199)
,p_query_column_id=>2
,p_column_alias=>'EMP_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Emp Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411770545341541200)
,p_query_column_id=>3
,p_column_alias=>'EMP_FNAME'
,p_column_display_sequence=>30
,p_column_heading=>'Emp Fname'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411770921843541200)
,p_query_column_id=>4
,p_column_alias=>'SHIFT'
,p_column_display_sequence=>40
,p_column_heading=>'Shift'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411771326675541201)
,p_query_column_id=>5
,p_column_alias=>'DEPT_DESC'
,p_column_display_sequence=>50
,p_column_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411771764444541202)
,p_query_column_id=>6
,p_column_alias=>'DESG_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Desgination'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411772154497541202)
,p_query_column_id=>7
,p_column_alias=>'TIME_IN'
,p_column_display_sequence=>70
,p_column_heading=>'Time In'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411769350268541198)
,p_query_column_id=>8
,p_column_alias=>'TIME_OUT'
,p_column_display_sequence=>80
,p_column_heading=>'Time Out'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(415198763572868508)
,p_name=>'Absent Employees'
,p_parent_plug_id=>wwv_flow_imp.id(415200870512868529)
,p_template=>2100526641005906379
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT ',
'    p.emp_code,',
'    p.emp_name,',
'    p.emp_fname,',
'    p.shift,',
'    p.dept_desc,',
'    p.desg_name,',
'    a.date_in,',
'    a.date_out',
'FROM employee_vw@payroll p',
'LEFT JOIN Attendance@payroll a',
'    ON a.emp_code = p.emp_code',
'   AND TRUNC(a.att_date) = TRUNC(SYSDATE)',
'WHERE p.dept_id = :P17_LOC_ID',
'  AND p.quit_status = ''SERVING''',
'  AND (a.date_in IS NULL OR a.date_in IS NULL) -- ensure no check-in today',
'   AND P.COST_ID=:P17_COST',
'   and p.loc_id=:P17_LOCATION',
'ORDER BY p.emp_name;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411765700650541193)
,p_query_column_id=>1
,p_column_alias=>'EMP_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Emp Code'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411766149117541194)
,p_query_column_id=>2
,p_column_alias=>'EMP_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Emp Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411766515801541194)
,p_query_column_id=>3
,p_column_alias=>'EMP_FNAME'
,p_column_display_sequence=>30
,p_column_heading=>'Emp Fname'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411766897328541195)
,p_query_column_id=>4
,p_column_alias=>'SHIFT'
,p_column_display_sequence=>40
,p_column_heading=>'Shift'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411767336969541195)
,p_query_column_id=>5
,p_column_alias=>'DEPT_DESC'
,p_column_display_sequence=>50
,p_column_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411767766148541196)
,p_query_column_id=>6
,p_column_alias=>'DESG_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Desgination'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411768185122541196)
,p_query_column_id=>7
,p_column_alias=>'DATE_IN'
,p_column_display_sequence=>70
,p_column_heading=>'Date In'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411768521994541197)
,p_query_column_id=>8
,p_column_alias=>'DATE_OUT'
,p_column_display_sequence=>80
,p_column_heading=>'Date Out'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(415282530398221385)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'/* ===========================',
'   Blue Corporate Theme (Compact)',
'=========================== */',
'.corp-box {',
'    background: #0059d4;',
'    border-radius: 14px;',
unistr('    padding: 18px 26px;             /* \2193 Reduced height */'),
'    max-width: 900px;',
'    margin: 0 auto 20px auto;       ',
'    color: #ffffff;',
'    box-shadow: 0 8px 22px rgba(0,0,0,0.12);',
'    border: 1px solid #0041a8;',
'    font-family: ''Segoe UI'', Arial, sans-serif;',
'}',
'',
'.title-line {',
unistr('    font-size: 1.5em;               /* \2193 Reduced */'),
'    font-weight: 700;',
unistr('    margin-bottom: 6px;             /* \2193 Less gap */'),
'    text-align: center;',
'}',
'',
'.subtitle-line {',
unistr('    font-size: 0.95em;              /* \2193 Smaller */'),
unistr('    line-height: 1.4;               /* \2193 Tighter lines */'),
'    text-align: center;',
'    max-width: 760px;',
'    margin: 0 auto;',
'}',
'',
'/* Highlight styles */',
'.highlight-dept { ',
'    background: rgba(255,255,255,0.28); ',
'    color: #00ffea; ',
'    font-weight: 600; ',
unistr('    padding: 2px 6px;               /* \2193 Smaller box */'),
'    border-radius: 5px; ',
'}',
'',
'.highlight-date { ',
'    color: #ff6a00; ',
'    font-weight: 600; ',
'    text-decoration: underline; ',
'}',
'</style>',
'',
'<div class="corp-box">',
'    <div class="title-line">Today''s Attendance Summary</div>',
'',
'    <div class="subtitle-line">',
'        Attendance overview for the  ',
'        <span class="highlight-dept">&P17_DEPARTMENT.</span> Department<br>',
'',
'        Date: ',
'        <span class="highlight-date">',
'            &P17_NEW_1_1.',
'        </span><br><br>',
'',
'        Below is the complete attendance status including ',
'        check-in/check-out timing, presence information, ',
'        and other daily activity records for the selected department.',
'    </div>',
'</div>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(411764612950541184)
,p_button_sequence=>80
,p_button_name=>'See_Adsent_Employees_in_this_department'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'See Adsent Employees In This Department'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415206292096868519)
,p_name=>'P17_LOC_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415206385446868520)
,p_name=>'P17_LOCATION'
,p_item_sequence=>20
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.dept_desc from employee_vw@payroll p',
'where p.dept_id=:P17_LOC_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415291248960221409)
,p_name=>'P17_NEW_1_1'
,p_item_sequence=>30
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415291657101221413)
,p_name=>'P17_COST'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415291854963221415)
,p_name=>'P17_DEPARTMENT'
,p_item_sequence=>50
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.dept_desc from employee_vw@payroll p',
'where p.dept_id=:P17_LOC_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(411774500039541210)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(411764612950541184)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(411774996512541210)
,p_event_id=>wwv_flow_imp.id(411774500039541210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(415198763572868508)
);
wwv_flow_imp.component_end;
end;
/

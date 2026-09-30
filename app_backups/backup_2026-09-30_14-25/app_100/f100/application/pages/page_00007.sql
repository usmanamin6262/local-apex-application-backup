prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'employee work report'
,p_alias=>'EMPLOYEE-WORK-REPORT'
,p_step_title=>'employee work report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* =====================================================',
unistr('   ORACLE APEX \2014 CLASSIC REPORT (ONLY)'),
'   Clean, elegant, modern styling',
'   ===================================================== */',
'',
unistr('/* Wrapper (safe \2013 only applies to classic reports) */'),
'.report-container {',
'  width: 100%;',
'  overflow-x: auto;',
'  margin-bottom: 1rem;',
'}',
'',
'/* TABLE BASE */',
'.report-container table {',
'  width: 100%;',
'  border-collapse: collapse;',
'  background: #fff;',
'  border-radius: 8px;',
'  overflow: hidden;',
'  font-size: 0.95rem;',
'  box-shadow: 0 2px 14px rgba(0,0,0,0.06);',
'}',
'',
'/* HEADER */',
'.report-container table thead th {',
'  background: #f4f6f9;',
'  padding: 12px 14px;',
'  text-align: left;',
'  font-weight: 600;',
'  color: #333;',
'  border-bottom: 1px solid #e5e7eb;',
'  white-space: nowrap;',
'}',
'',
'/* BODY */',
'.report-container table tbody td {',
'  padding: 10px 14px;',
'  border-bottom: 1px solid #f0f2f4;',
'  color: #333;',
'  vertical-align: middle;',
'}',
'',
'/* ZEBRA STRIPING */',
'.report-container table tbody tr:nth-child(odd) {',
'  background: #fafbfc;',
'}',
'',
'/* ROW HOVER */',
'.report-container table tbody tr:hover {',
'  background: #eef3ff;',
'  transition: 0.18s ease;',
'}',
'',
'/* RESPONSIVE TEXT WRAP */',
'.report-container table td {',
'  word-break: break-word;',
'}',
'',
'/* COMPACT VERSION (Optional class) */',
'.report-compact table td,',
'.report-compact table th {',
'  padding: 6px 8px !important;',
'  font-size: 0.87rem;',
'}',
'',
'/* ALIGN RIGHT CLASS (Optional for numeric columns) */',
'.text-right { text-align: right !important; }',
'',
'/* ALIGN CENTER CLASS */',
'.text-center { text-align: center !important; }',
'',
'/* BADGE (Optional for status columns) */',
'.badge {',
'  display: inline-block;',
'  padding: 4px 8px;',
'  font-size: 0.8rem;',
'  font-weight: 600;',
'  border-radius: 6px;',
'  color: #fff;',
'}',
'.badge-success { background: #28a745; }',
'.badge-danger  { background: #dc3545; }',
'.badge-info    { background: #0d6efd; }',
'.badge-warning { background: #f0ad4e; color: #000; }',
'',
'/* DARK MODE (Automatic with prefers-color-scheme) */',
'@media (prefers-color-scheme: dark) {',
'  .report-container table {',
'    background: #0e1117;',
'    color: #e5e7eb;',
'  }',
'',
'  .report-container table thead th {',
'    background: #1c2230;',
'    color: #fff;',
'    border-bottom: 1px solid #2d3545;',
'  }',
'',
'  .report-container table tbody tr:nth-child(odd) {',
'    background: #161b24;',
'  }',
'',
'  .report-container table tbody tr:hover {',
'    background: #243047;',
'  }',
'',
'  .report-container table tbody td {',
'    border-bottom: 1px solid #232a36;',
'    color: #e5e7eb;',
'  }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(409904121126328357)
,p_name=>'New'
,p_template=>2100526641005906379
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.EMP_CODE AS "Code",',
'    p.EMP_NAME AS "Name",',
'    p.DEPT_DESC AS "Department",',
'    p.DESG_NAME AS "Designation",',
'    p.LOC_NAME AS "Location",',
'    a.att_date,',
'    TO_CHAR(a.att_date, ''DAY'') AS "Day",',
'',
'    -- Time IN in green',
'    ''<span style="color:green; font-weight:bold;">'' ',
'        || TO_CHAR(a.date_in, ''HH24:MI'') || ''</span>'' AS "Time IN",',
'',
'    -- Time OUT in red',
'    ''<span style="color:red; font-weight:bold;">'' ',
'        || TO_CHAR(a.date_out, ''HH24:MI'') || ''</span>'' AS "Time Out",',
'',
'    a.attn_type,',
'    a.reason,',
'',
'    CASE ',
'        WHEN a.attn_type = ''A'' THEN',
'            ''<span style="color:red; font-weight:bold;">Absent &#x1F534;</span>''',
'',
'        WHEN a.attn_type = ''HL'' THEN',
'            ''<span style="color:orange; font-weight:bold;">Half Leave &#x1F7E1;</span>''',
'',
'        WHEN a.attn_type IN (''P'',''PR'') THEN',
'            ''<span style="color:green; font-weight:bold;">Present &#x1F7E2;</span>''',
'',
'        WHEN a.attn_type IN (''R'',''GH'',''SL'') THEN',
'            ''<span style="color:gray; font-weight:bold;">REST &#x1F6CC;</span>''',
'',
'        ELSE',
'            ''<span style="color:gray; font-weight:bold;">Unknown &#x1F6CC;</span>''',
'    END AS "Status",',
'',
'    ROUND(',
'        (a.date_out - a.date_in) * 24,',
'        2',
'    ) AS hours_worked,',
'',
'    o.oh_hrs',
'',
'FROM EMPLOYEE_VW@PAYROLL p',
'',
'JOIN Attendance@PAYROLL a',
'    ON p.emp_code = a.emp_code',
'',
'LEFT JOIN OVERTIME_AUTO_VW@PAYROLL o',
'    ON o.emp_code = a.emp_code',
'   AND TRUNC(o.date_in) = TRUNC(a.date_in)',
'',
'WHERE',
'    a.att_date BETWEEN',
'        TO_DATE(:P7_FROM_DATE, ''MM-DD-YYYY'')',
'        AND',
'        TO_DATE(:P7_TO_DATE, ''MM-DD-YYYY'')',
'',
'    AND a.emp_code = :P7_CODE',
'',
'    AND (',
'        :P7_LEAVE = ''ALL''',
'',
'        OR (',
'            :P7_LEAVE = ''R''',
'            AND a.attn_type IN (''R'',''GH'',''SL'')',
'        )',
'',
'        OR (',
'            :P7_LEAVE <> ''R''',
'            AND a.attn_type = :P7_LEAVE',
'        )',
'',
'        OR (',
'            :P7_LEAVE = ''O''',
'            AND o.oh_hrs IS NOT NULL',
'        )',
'',
'        OR (',
'            :P7_LEAVE = ''P''',
'            AND a.attn_type IN (''P'',''PR'')',
'        )',
'    )',
'',
'ORDER BY',
'    a.att_date;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>31
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download in Excel'
,p_prn_output=>'Y'
,p_prn_format=>'HTM'
,p_prn_output_link_text=>'Download'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409906151971328377)
,p_query_column_id=>1
,p_column_alias=>'Code'
,p_column_display_sequence=>10
,p_column_heading=>'Code'
,p_column_html_expression=>'<b>#Code#</b>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409906266764328378)
,p_query_column_id=>2
,p_column_alias=>'Name'
,p_column_display_sequence=>20
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409906295580328379)
,p_query_column_id=>3
,p_column_alias=>'Department'
,p_column_display_sequence=>30
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409906402488328380)
,p_query_column_id=>4
,p_column_alias=>'Designation'
,p_column_display_sequence=>40
,p_column_heading=>'Designation'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409994932808218431)
,p_query_column_id=>5
,p_column_alias=>'Location'
,p_column_display_sequence=>50
,p_column_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995039758218432)
,p_query_column_id=>6
,p_column_alias=>'ATT_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Date'
,p_column_html_expression=>'<b>#ATT_DATE#</b>'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995103525218433)
,p_query_column_id=>7
,p_column_alias=>'Day'
,p_column_display_sequence=>70
,p_column_heading=>'Day'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995256853218434)
,p_query_column_id=>8
,p_column_alias=>'Time IN'
,p_column_display_sequence=>80
,p_column_heading=>'Time In'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995323395218435)
,p_query_column_id=>9
,p_column_alias=>'Time Out'
,p_column_display_sequence=>90
,p_column_heading=>'Time Out'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995472404218436)
,p_query_column_id=>10
,p_column_alias=>'ATTN_TYPE'
,p_column_display_sequence=>100
,p_column_heading=>'Attn Type'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995520486218437)
,p_query_column_id=>11
,p_column_alias=>'REASON'
,p_column_display_sequence=>110
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995624695218438)
,p_query_column_id=>12
,p_column_alias=>'Status'
,p_column_display_sequence=>120
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409995738265218439)
,p_query_column_id=>13
,p_column_alias=>'HOURS_WORKED'
,p_column_display_sequence=>130
,p_column_heading=>'Hours Worked'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410034899302234555)
,p_query_column_id=>14
,p_column_alias=>'OH_HRS'
,p_column_display_sequence=>140
,p_column_heading=>'Oh Hrs'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409905645234328372)
,p_name=>'P7_CODE'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409905789940328373)
,p_name=>'P7_LEAVE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409905823203328374)
,p_name=>'P7_FROM_DATE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409905988407328375)
,p_name=>'P7_TO_DATE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/

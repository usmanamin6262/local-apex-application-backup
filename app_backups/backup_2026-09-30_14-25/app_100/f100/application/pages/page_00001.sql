prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'attandance'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.querySelectorAll(''.value'').forEach(el => {',
'    let countTo = parseInt(el.textContent || 0);',
'    let count = 0;',
'    let increment = Math.ceil(countTo / 100);',
'    let interval = setInterval(() => {',
'        count += increment;',
'        if(count >= countTo){',
'            count = countTo;',
'            clearInterval(interval);',
'        }',
'        el.textContent = count;',
'    }, 20);',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css");',
'',
'/* Background */',
'body {',
'    font-family: ''Poppins'', sans-serif;',
'    background: #f2f4f7;',
'    margin: 0;',
'    padding: 0;',
'}',
'',
'/* Grid Layout */',
'.glass-grid {',
'    display: grid;',
'    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));',
'    gap: 25px;',
'    padding: 40px;',
'}',
'',
'/* Clean Sharp Industry Card */',
'.glass-card {',
'    background: #ffffff;',
'    border-radius: 18px;',
'    padding: 25px 20px;',
'    text-align: center;',
'',
'    /* Sharp shadow, no blur */',
'    box-shadow: ',
'        0 5px 15px rgba(0, 0, 0, 0.12),',
'        0 2px 4px rgba(0,0,0,0.08);',
'',
'    border: 1px solid #e6e6e6;',
'',
'    transition: 0.25s ease-in-out;',
'}',
'',
'/* Hover effect - clean pop */',
'.glass-card:hover {',
'    transform: translateY(-8px);',
'    box-shadow: ',
'        0 10px 25px rgba(0, 0, 0, 0.18),',
'        0 4px 8px rgba(0,0,0,0.1);',
'}',
'',
'/* Icons */',
'.icon {',
'    font-size: 48px;',
'    margin-bottom: 12px;',
'}',
'',
'/* Title */',
'.title {',
'    font-size: 20px;',
'    font-weight: 600;',
'    color: #444;',
'    margin-bottom: 6px;',
'}',
'',
'/* Number */',
'.value {',
'    font-size: 42px;',
'    font-weight: 700;',
'    color: #111;',
'}',
'',
'/* Color Themes (Sharp, Solid Colors) */',
'',
'.blue-card .icon,',
'.blue-card .title,',
'.blue-card .value { color: #1e6bff; }',
'',
'.green-card .icon,',
'.green-card .title,',
'.green-card .value { color: #05a85c; }',
'',
'.purple-card .icon,',
'.purple-card .title,',
'.purple-card .value { color: #8f00d4; }',
'',
'.teal-card .icon,',
'.teal-card .title,',
'.teal-card .value { color: #009e9e; }',
'',
'.pink-card .icon,',
'.pink-card .title,',
'.pink-card .value { color: #ff3b8d; }',
'',
'.orange-card .icon,',
'.orange-card .title,',
'.orange-card .value { color: #ff7b00; }',
'',
'//for heading',
'.emp-heading {',
'  display: flex;',
'  align-items: center;',
'  gap: 12px;',
'  color: #1f4bd8;          /* Primary blue */',
'  font-weight: 700;',
'  letter-spacing: .3px;',
'  margin-bottom: 16px;',
'}',
'',
'.emp-icon {',
'  background: #e8edff;     /* Soft blue background */',
'  color: #1f4bd8;',
'  border-radius: 50%;',
'  padding: 10px;',
'  font-size: 18px;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(406973787705617154)
,p_plug_name=>'Location Wise Employee Strength Chart'
,p_title=>'Location Wise Employee Strength Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="emp-heading">',
'  <span class="emp-icon t-Icon fa fa-users"></span>',
'  Location Wise Employee Strength Chart',
'</h3>',
'',
''))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(406973977759617155)
,p_region_id=>wwv_flow_imp.id(406973787705617154)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(406974077414617156)
,p_chart_id=>wwv_flow_imp.id(406973977759617155)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select E.loc_name,COUNT(E.emp_code) AS TOTAL_EMPLOYEE',
'from employee_vw@payroll e',
'where e.quit_status=''SERVING''',
'AND E.emp_type IN (''P'',''T'')',
'GROUP BY E.loc_name',
'ORDER BY E.loc_name'))
,p_items_value_column_name=>'TOTAL_EMPLOYEE'
,p_items_label_column_name=>'LOC_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(406974540327617161)
,p_chart_id=>wwv_flow_imp.id(406973977759617155)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(406974668909617162)
,p_chart_id=>wwv_flow_imp.id(406973977759617155)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(409995823540218440)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="glass-grid">',
'',
'  <!-- Total Employees -->',
'  <div class="glass-card light-card blue-card"',
'     onclick="apex.navigation.redirect(''f?p=&APP_ID.:10:&SESSION.'');"',
'',
'       style="cursor:pointer;">',
'      <i class="fa fa-users icon"></i>',
'      <h3 class="title">Total Employees</h3>',
'      <p class="value">&P1_TOTAL_EMPLOYEE.</p>',
'  </div>',
'',
'  <!-- Shift A Employees -->',
'  <div class="glass-card light-card green-card"',
'       onclick="apex.navigation.redirect(''f?p=&APP_ID.:9:&SESSION.'');"',
'       style="cursor:pointer;">',
'      <i class="fa fa-sun icon"></i>',
'      <h3 class="title">Shift A Employees</h3>',
'      <p class="value">&P1_SHIFTA.</p>',
'  </div>',
'',
'  <!-- Shift B Employees -->',
'  <div class="glass-card light-card purple-card"',
'       onclick="apex.navigation.redirect(''f?p=&APP_ID.:11:&SESSION.'');"',
'       style="cursor:pointer;">',
'      <i class="fa fa-moon icon"></i>',
'      <h3 class="title">Shift B Employees</h3>',
'      <p class="value">&P1_SHIFTB.</p>',
'  </div>',
'',
'  <!-- General Shift Employees -->',
'  <div class="glass-card light-card teal-card"',
'       onclick="apex.navigation.redirect(''f?p=&APP_ID.:8:&SESSION.'');"',
'       style="cursor:pointer;">',
'      <i class="fa fa-building icon"></i>',
'      <h3 class="title">General Shift Employees</h3>',
'      <p class="value">&P1_GENRAL_SHIFT.</p>',
'  </div>',
'',
'  <!-- Today Present -->',
'  <div class="glass-card light-card teal-card"',
'       onclick="apex.navigation.redirect(''f?p=&APP_ID.:13:&SESSION.'');"',
'       style="cursor:pointer;">',
'      <i class="fa fa-check-circle icon"></i>',
'      <h3 class="title">Today Present</h3>',
'      <p class="value">&P1_PRESSENT.</p>',
'  </div>',
'',
'  <!-- Today Absent',
'  <div class="glass-card light-card pink-card"',
'       onclick="apex.navigation.redirect(''f?p=&APP_ID.:15:&SESSION.'');"',
'       style="cursor:pointer;">',
'      <i class="fa fa-times-circle icon"></i>',
'      <h3 class="title">Today Absent</h3>',
'      <p class="value">&P1_ADSENT.</p>',
'  </div> -->',
'',
'  <!-- Today Late -->',
'  <!-- <div class="glass-card light-card orange-card"',
'       onclick="apex.navigation.redirect(''f?p=&APP_ID.:16:&SESSION.'');"',
'       style="cursor:pointer;">',
'      <i class="fa fa-clock icon"></i>',
'      <h3 class="title">Today Late</h3>',
'      <p class="value">5</p>',
'  </div> -->',
'',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(410384817637655644)
,p_name=>'New'
,p_template=>2100526641005906379
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    p.emp_code   AS EMPLOYEE_CODE,',
'    p.emp_name   AS EMPLOYEE_NAME,',
'    p.emp_fname  AS FATHER_NAME,',
'    p.gross_pay,',
'    p.hire_date,',
'    p.shift,',
'    p.dept_desc  AS DEPARTMENT,',
'    p.desg_name  AS DESIGNATION,',
'',
'',
'    /* EMP TYPE WITH APEX ICON + COLOR */',
'    CASE p.emp_type',
'        WHEN ''C'' THEN',
'            ''<span class="t-Badge t-Badge--warning">',
'                <span class="t-Icon fa fa-briefcase"></span>',
'                Contract',
'             </span>''',
'        WHEN ''P'' THEN',
'            ''<span class="t-Badge t-Badge--success">',
'                <span class="t-Icon fa fa-id-badge"></span>',
'                Permanent',
'             </span>''',
'        WHEN ''T'' THEN',
'            ''<span class="t-Badge t-Badge--info">',
'                <span class="t-Icon fa fa-user-clock"></span>',
'                Trial',
'             </span>''',
'        WHEN ''D'' THEN',
'            ''<span class="t-Badge t-Badge--danger">',
'                <span class="t-Icon fa fa-hammer"></span>',
'                Daily Wages',
'             </span>''',
'        ELSE',
'            ''<span class="t-Badge">',
'                <span class="t-Icon fa fa-question-circle"></span>',
'                Unknown',
'             </span>''',
'    END AS EMPLOYEE_STATUS',
'',
'FROM employee_vW@PAYROLL p',
'WHERE p.quit_status = ''SERVING''',
'AND TO_CHAR(p.hire_date,''MM-YYYY'') = TO_CHAR(SYSDATE,''MM-YYYY'')',
'order by p.hire_date asc;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="emp-heading">',
'  <span class="emp-icon t-Icon fa fa-users"></span>',
'  Employees Hired This Month',
'</h3>',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
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
,p_sort_null=>'F'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595220117490046)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Code'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595333847490047)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Employee Name'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_EMP_CODE:#EMPLOYEE_CODE#'
,p_column_linktext=>'#EMPLOYEE_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595396832490048)
,p_query_column_id=>3
,p_column_alias=>'FATHER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Father Name'
,p_column_html_expression=>'<b>#FATHER_NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595566332490049)
,p_query_column_id=>4
,p_column_alias=>'GROSS_PAY'
,p_column_display_sequence=>40
,p_column_heading=>'Gross Pay'
,p_column_html_expression=>'<b>#GROSS_PAY#</b>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595655686490050)
,p_query_column_id=>5
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Hire Date'
,p_column_html_expression=>'<b>#HIRE_DATE#</b>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595737006490051)
,p_query_column_id=>6
,p_column_alias=>'SHIFT'
,p_column_display_sequence=>60
,p_column_heading=>'Shift'
,p_column_html_expression=>'<b>#SHIFT#</b>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595883007490052)
,p_query_column_id=>7
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>70
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411595965406490053)
,p_query_column_id=>8
,p_column_alias=>'DESIGNATION'
,p_column_display_sequence=>80
,p_column_heading=>'Designation'
,p_column_html_expression=>'<b>#DESIGNATION#</b>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411596098080490055)
,p_query_column_id=>9
,p_column_alias=>'EMPLOYEE_STATUS'
,p_column_display_sequence=>100
,p_column_heading=>'Employee Status'
,p_column_html_expression=>'<b>#EMPLOYEE_STATUS#</b>'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(411597387358490067)
,p_name=>'New'
,p_template=>2100526641005906379
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    p.emp_code   AS EMPLOYEE_CODE,',
'    p.emp_name   AS EMPLOYEE_NAME,',
'    p.emp_fname  AS FATHER_NAME,',
'    p.gross_pay,',
'    p.hire_date,',
'    p.shift,',
'    p.dept_desc  AS DEPARTMENT,',
'    p.desg_name  AS DESIGNATION,',
'   ',
'',
'    /* EMP TYPE WITH APEX ICON + COLOR */',
'    CASE p.emp_type',
'        WHEN ''C'' THEN',
'            ''<span class="t-Badge t-Badge--warning">',
'                <span class="t-Icon fa fa-briefcase"></span>',
'                Contract',
'             </span>''',
'        WHEN ''P'' THEN',
'            ''<span class="t-Badge t-Badge--success">',
'                <span class="t-Icon fa fa-id-badge"></span>',
'                Permanent',
'             </span>''',
'        WHEN ''T'' THEN',
'            ''<span class="t-Badge t-Badge--info">',
'                <span class="t-Icon fa fa-user-clock"></span>',
'                Trainee',
'             </span>''',
'        WHEN ''D'' THEN',
'            ''<span class="t-Badge t-Badge--danger">',
'                <span class="t-Icon fa fa-hammer"></span>',
'                Daily Wages',
'             </span>''',
'        ELSE',
'            ''<span class="t-Badge">',
'                <span class="t-Icon fa fa-question-circle"></span>',
'                Unknown',
'             </span>''',
'    END AS EMPLOYEE_STATUS',
'',
'FROM employee_vw@PAYROLL p',
'WHERE p.quit_status = ''SERVING''',
'AND TO_CHAR(P.quit_date,''MM-YYYY'') = TO_CHAR(SYSDATE,''MM-YYYY'');',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 class="emp-heading">',
'  <span class="emp-icon t-Icon fa fa-users"></span>',
'  Employees Leave This Month',
'</h3>',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411597480129490068)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Employee Code'
,p_column_html_expression=>'<b>#EMPLOYEE_CODE#</b>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_default_sort_column_sequence=>8
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411597514331490069)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Employee Name'
,p_column_html_expression=>'<b>#EMPLOYEE_NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411597616979490070)
,p_query_column_id=>3
,p_column_alias=>'FATHER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Father Name'
,p_column_html_expression=>'<b>#FATHER_NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411597763715490071)
,p_query_column_id=>4
,p_column_alias=>'GROSS_PAY'
,p_column_display_sequence=>40
,p_column_heading=>'Gross Pay'
,p_column_html_expression=>'<b>#GROSS_PAY#</b>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411597816933490072)
,p_query_column_id=>5
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Hire Date'
,p_column_html_expression=>'<b>#HIRE_DATE#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411597965747490073)
,p_query_column_id=>6
,p_column_alias=>'SHIFT'
,p_column_display_sequence=>60
,p_column_heading=>'Shift'
,p_column_html_expression=>'<b>#SHIFT#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411598043219490074)
,p_query_column_id=>7
,p_column_alias=>'DEPARTMENT'
,p_column_display_sequence=>70
,p_column_heading=>'Department'
,p_column_html_expression=>'<b>#DEPARTMENT#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411598109474490075)
,p_query_column_id=>8
,p_column_alias=>'DESIGNATION'
,p_column_display_sequence=>80
,p_column_heading=>'Designation'
,p_column_html_expression=>'<b>#DESIGNATION#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411598340719490077)
,p_query_column_id=>9
,p_column_alias=>'EMPLOYEE_STATUS'
,p_column_display_sequence=>100
,p_column_heading=>'Employee Status'
,p_column_html_expression=>'<b>#EMPLOYEE_STATUS#</b>'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409995901192218441)
,p_name=>'P1_TOTAL_EMPLOYEE'
,p_item_sequence=>10
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*) from employee_vw@PAYROLL p',
'where p.quit_status=''SERVING''',
'AND EMP_TYPE IN (''P'',''T'');'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409996075552218442)
,p_name=>'P1_SHIFTA'
,p_item_sequence=>20
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*) from employee_vw@PAYROLL p',
'where p.quit_status=''SERVING''',
'AND P.shift =''A''',
'AND EMP_TYPE IN (''P'',''T'');'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409996164895218443)
,p_name=>'P1_SHIFTB'
,p_item_sequence=>30
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*) from employee_vw@PAYROLL p',
'where p.quit_status=''SERVING''',
'AND P.shift =''B''',
'AND EMP_TYPE IN (''P'',''T'');'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409996264428218444)
,p_name=>'P1_GENRAL_SHIFT'
,p_item_sequence=>40
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COUNT(*) from employee_vw@PAYROLL p',
'where p.quit_status=''SERVING''',
'AND P.shift =''G''',
'AND EMP_TYPE IN (''P'',''T'');'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409996334329218445)
,p_name=>'P1_PRESSENT'
,p_item_sequence=>50
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)',
'FROM attendance@PAYROLL p',
'WHERE p.date_in IS NOT NULL',
'  AND p.date_out IS NULL',
'  AND TRUNC(p.att_date) = TRUNC(SYSDATE);'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409996421374218446)
,p_name=>'P1_ADSENT'
,p_item_sequence=>60
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (',
'    (SELECT COUNT(*)',
'     FROM attendance@PAYROLL p',
'     WHERE p.date_in IS NOT NULL',
'       AND p.date_out IS NULL',
'       AND TRUNC(p.att_date) = TRUNC(SYSDATE))',
'    -',
'    (select COUNT(*) from employee_vw@PAYROLL p',
'where p.quit_status=''SERVING'')',
') AS total',
'FROM dual;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/

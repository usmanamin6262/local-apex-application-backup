prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Employee Detail'
,p_alias=>'EMPLOYEE-DETAIL'
,p_step_title=>'Employee Detail'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* =========================================',
unistr('   KPI SECTION \2192 HORIZONTAL SCROLL LAYOUT'),
'   ========================================= */',
'#dash_region .kpis {',
'  display: flex;',
'  flex-wrap: nowrap;        /* force one row */',
'  gap: 16px;',
'  overflow-x: auto;         /* horizontal scroll */',
'  padding-bottom: 8px;      ',
'  scrollbar-width: thin;    /* Firefox */',
'}',
'',
'#dash_region .kpis::-webkit-scrollbar {',
'  height: 6px;',
'}',
'#dash_region .kpis::-webkit-scrollbar-thumb {',
'  background: #ccc;',
'  border-radius: 3px;',
'}',
'#dash_region .kpis::-webkit-scrollbar-track {',
'  background: transparent;',
'}',
'',
'/* =========================================',
'   KPI CARD STYLE',
'   ========================================= */',
'#dash_region .kpi-card {',
'  flex: 0 0 210px;           /* fixed card width */',
'  background: #fff;',
'  border-radius: 12px;',
'  box-shadow: 0 4px 12px rgba(0,0,0,0.08);',
'  padding: 16px;',
'  transition: transform 0.2s ease, box-shadow 0.2s ease;',
'  border-top: 5px solid transparent;',
'}',
'',
'#dash_region .kpi-card:hover {',
'  transform: translateY(-4px);',
'  box-shadow: 0 8px 20px rgba(0,0,0,0.12);',
'}',
'',
'#dash_region .kpi-icon {',
'  font-size: 1.6rem;',
'}',
'',
'#dash_region .kpi-label {',
'  font-size: 0.95rem;',
'  font-weight: 600;',
'  margin-top: 8px;',
'  color: #111827;',
'}',
'',
'#dash_region .kpi-value {',
'  font-size: 1.4rem;',
'  font-weight: 700;',
'  margin: 6px 0;',
'  color: #047857; /* default green */',
'}',
'',
'#dash_region .kpi-meta {',
'  font-size: 0.82rem;',
'  color: #6b7280;',
'}',
'',
'/* =========================================',
'   20 UNIQUE KPI CARD COLORS',
'   ========================================= */',
'#dash_region .kpi-card:nth-child(1)  { border-top-color: #ff9800; }  /* orange */',
'#dash_region .kpi-card:nth-child(2)  { border-top-color: #0072ff; }  /* blue */',
'#dash_region .kpi-card:nth-child(3)  { border-top-color: #f44336; }  /* red */',
'#dash_region .kpi-card:nth-child(4)  { border-top-color: #4caf50; }  /* green */',
'#dash_region .kpi-card:nth-child(5)  { border-top-color: #9c27b0; }  /* purple */',
'#dash_region .kpi-card:nth-child(6)  { border-top-color: #795548; }  /* brown */',
'#dash_region .kpi-card:nth-child(7)  { border-top-color: #00bcd4; }  /* cyan */',
'#dash_region .kpi-card:nth-child(8)  { border-top-color: #e91e63; }  /* pink */',
'#dash_region .kpi-card:nth-child(9)  { border-top-color: #8bc34a; }  /* light green */',
'#dash_region .kpi-card:nth-child(10) { border-top-color: #3f51b5; }  /* indigo */',
'#dash_region .kpi-card:nth-child(11) { border-top-color: #ff5722; }  /* deep orange */',
'#dash_region .kpi-card:nth-child(12) { border-top-color: #009688; }  /* teal */',
'#dash_region .kpi-card:nth-child(13) { border-top-color: #cddc39; }  /* lime */',
'#dash_region .kpi-card:nth-child(14) { border-top-color: #673ab7; }  /* deep purple */',
'#dash_region .kpi-card:nth-child(15) { border-top-color: #2196f3; }  /* bright blue */',
'#dash_region .kpi-card:nth-child(16) { border-top-color: #ffeb3b; }  /* yellow */',
'#dash_region .kpi-card:nth-child(17) { border-top-color: #607d8b; }  /* blue-grey */',
'#dash_region .kpi-card:nth-child(18) { border-top-color: #b71c1c; }  /* dark red */',
'#dash_region .kpi-card:nth-child(19) { border-top-color: #1b5e20; }  /* dark green */',
'#dash_region .kpi-card:nth-child(20) { border-top-color: #0d47a1; }  /* dark blue */',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'Set entire page background to white',
'body {',
'    background-color: white !important;',
'}/* ============================= */',
unistr('/* \D83D\DDBC\FE0F SLIDESHOW SECTION */'),
'/* ============================= */',
'.slideshow-container {',
'  position: relative;',
'  max-height: 30%;',
'  max-width: 100%;',
'  margin: auto;',
'}',
'',
'.mySlides {',
'  display: none;',
'}',
'',
'.mySlides img {',
'  vertical-align: middle;',
'  width: 100%;',
'  height: 30%;',
'}',
'',
'.fade {',
'  animation: fade 1.5s;',
'}',
'',
'@keyframes fade {',
'  from { opacity: 0.4; }',
'  to { opacity: 1; }',
'}',
'',
'.mySlides:first-child {',
'  display: block; /* Ensures first image shows before JS runs */',
'}',
'',
'/* ============================= */',
unistr('/* \D83D\DCCA KPI DASHBOARD SECTION */'),
'/* ============================= */',
'',
unistr('/* KPI section layout \2192 allow multiple lines (responsive) */'),
'#dash_region .kpis {',
'  display: flex;',
unistr('  flex-wrap: wrap;              /* \2705 allow wrapping to new lines */'),
'  gap: 16px;                    /* space between cards */',
'  justify-content: flex-start;  /* align neatly */',
'  align-items: stretch;         /* equal height per row */',
'  padding: 8px;',
'  overflow-x: hidden;           /* disable horizontal scroll */',
'}',
'',
unistr('/* KPI card \2192 clean, modern look */'),
'#dash_region .kpi-card {',
'  flex: 0 0 185px;              /* fixed width */',
'  background: #fff;',
'  border-radius: 12px;',
'  box-shadow: 0 4px 12px rgba(0,0,0,0.08);',
'  padding: 16px;',
'  transition: transform 0.2s ease, box-shadow 0.2s ease;',
'  border-top: 5px solid transparent; /* top color band */',
'}',
'',
'#dash_region .kpi-card:hover {',
'  transform: translateY(-4px);',
'  box-shadow: 0 8px 20px rgba(0,0,0,0.12);',
'}',
'',
'/* KPI text and icons */',
'#dash_region .kpi-icon {',
'  font-size: 1.6rem;',
'}',
'',
'#dash_region .kpi-label {',
'  font-size: 0.95rem;',
'  font-weight: 600;',
'  margin-top: 8px;',
'  color: #111827;',
'}',
'',
'#dash_region .kpi-value {',
'  font-size: 1.4rem;',
'  font-weight: 700;',
'  margin: 6px 0;',
'  color: #047857;',
'}',
'',
'#dash_region .kpi-meta {',
'  font-size: 0.82rem;',
'  color: #6b7280;',
'}',
'',
unistr('/* \D83C\DFA8 Different colors per card */'),
'#dash_region #kpi-total-purchase { border-top-color: #ff9800; }  /* orange */',
'#dash_region #kpi-total-sales    { border-top-color: #0072ff; }  /* blue */',
'#dash_region #kpi-total-exp      { border-top-color: #f44336; }  /* red */',
'#dash_region #kpi-net-profit     { border-top-color: #4caf50; }  /* green */',
'#dash_region #kpi-receivables    { border-top-color: #9c27b0; }  /* purple */',
'#dash_region #kpi-payables       { border-top-color: #795548; }  /* brown */',
'',
'/* Optional: fallback color by order */',
'#dash_region .kpi-card:nth-child(1) { border-top-color: #ff9800; }',
'#dash_region .kpi-card:nth-child(2) { border-top-color: #0072ff; }',
'#dash_region .kpi-card:nth-child(3) { border-top-color: #f44336; }',
'#dash_region .kpi-card:nth-child(4) { border-top-color: #4caf50; }',
'#dash_region .kpi-card:nth-child(5) { border-top-color: #9c27b0; }',
'#dash_region .kpi-card:nth-child(6) { border-top-color: #795548; }',
'',
'/* ============================= */',
unistr('/* \D83D\DCF1 RESPONSIVE DESIGN */'),
'/* ============================= */',
'',
'/* For medium screens (tablets) */',
'@media (max-width: 992px) {',
'  #dash_region .kpi-card {',
'    flex: 0 0 calc(33.33% - 16px); /* 3 per row */',
'  }',
'}',
'',
'/* For small screens (mobiles) */',
'@media (max-width: 600px) {',
'  #dash_region .kpi-card {',
'    flex: 0 0 calc(50% - 12px); /* 2 per row */',
'  }',
'}',
'',
'/* For very small screens */',
'@media (max-width: 400px) {',
'  #dash_region .kpi-card {',
'    flex: 0 0 100%; /* 1 per row */',
'  }',
'}',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'/* =========================================',
unistr('   \D83C\DF10 GLOBAL'),
'   ========================================= */',
'body {',
'  background: #ffffff !important;',
'  font-family: Arial, Tahoma, sans-serif;',
'}',
'',
'/* =========================================',
unistr('   \D83D\DCCA KPI CONTAINER'),
'   ========================================= */',
'#dash_region .kpis {',
'  display: flex;',
'  flex-wrap: wrap;',
'  gap: 16px;',
'  padding: 12px;',
'  justify-content: flex-start;',
'}',
'',
'/* =========================================',
unistr('   \D83C\DFAF KPI CARD'),
'   ========================================= */',
'#dash_region .kpi-card {',
'  flex: 0 0 190px;',
'  background: #fff;',
'  border-radius: 12px;',
'  padding: 16px;',
'  box-shadow: 0 4px 12px rgba(0,0,0,0.08);',
'  border-top: 5px solid transparent;',
'  transition: transform 0.2s ease, box-shadow 0.2s ease;',
'}',
'',
'#dash_region .kpi-card:hover {',
'  transform: translateY(-4px);',
'  box-shadow: 0 8px 20px rgba(0,0,0,0.12);',
'}',
'',
'/* =========================================',
unistr('   \D83D\DE00 ICON'),
'   ========================================= */',
'#dash_region .kpi-icon {',
'  font-size: 36px;',
'  line-height: 1;',
'  margin-bottom: 6px;',
'  font-family:',
'    "Segoe UI Emoji",',
'    "Apple Color Emoji",',
'    "Noto Color Emoji";',
'}',
'',
'/* =========================================',
unistr('   \D83D\DCDD TEXT'),
'   ========================================= */',
'#dash_region .kpi-label {',
'  font-size: 0.95rem;',
'  font-weight: 600;',
'  color: #111827;',
'  margin-top: 4px;',
'}',
'',
'#dash_region .kpi-value {',
'  font-size: 1.5rem;',
'  font-weight: 700;',
'  margin: 6px 0;',
'  color: #047857;',
'}',
'',
'#dash_region .kpi-meta {',
'  font-size: 0.82rem;',
'  color: #6b7280;',
'}',
'',
'/* =========================================',
unistr('   \D83C\DFA8 UNIQUE BORDER COLORS FOR 70 CARDS'),
'        (Hue increments + Sat/Light variation)',
'   ========================================= */',
'',
'/* =========================================',
unistr('   \D83D\DEE0 ICON MAPPING'),
'   ========================================= */',
unistr('.icon-MONEY::before      { content: "\D83D\DCB0"; }'),
unistr('.icon-BUILDING::before   { content: "\D83C\DFE2"; }'),
unistr('.icon-CLIPBOARD::before  { content: "\D83D\DCCB"; }'),
unistr('.icon-MEGAPHONE::before  { content: "\D83D\DCE3"; }'),
unistr('.icon-LAPTOP::before     { content: "\D83D\DCBB"; }'),
unistr('.icon-PEOPLE::before     { content: "\D83D\DC65"; }'),
unistr('.icon-FACTORY::before    { content: "\D83C\DFED"; }'),
unistr('.icon-SHIELD::before     { content: "\D83D\DEE1\FE0F"; }'),
unistr('.icon-BOX::before        { content: "\D83D\DCE6"; }'),
unistr('.icon-HOSPITAL::before   { content: "\D83C\DFE5"; }'),
unistr('.icon-CART::before       { content: "\D83D\DED2"; }'),
unistr('.icon-SHIP::before       { content: "\D83D\DEA2"; }'),
unistr('.icon-THREAD::before     { content: "\D83E\DDF5"; }'),
unistr('.icon-CHECK::before      { content: "\2705"; }'),
unistr('.icon-FLASK::before      { content: "\D83E\DDEA"; }'),
unistr('.icon-PALETTE::before    { content: "\D83C\DFA8"; }'),
unistr('.icon-MONITOR::before    { content: "\D83D\DDA5\FE0F"; }'),
unistr('.icon-BOLT::before       { content: "\26A1"; }'),
unistr('.icon-PLUG::before       { content: "\D83D\DD0C"; }'),
unistr('.icon-GEAR::before       { content: "\2699\FE0F"; }'),
unistr('.icon-BATTERY::before    { content: "\D83D\DD0B"; }'),
unistr('.icon-TOOLS::before      { content: "\D83D\DEE0\FE0F"; }'),
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(409712827448211871)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.emp_code,',
'    p.emp_name,',
'    a.att_date,',
'    -- Calculate hours worked (date_out - date_in) in hours',
'    ROUND((a.date_out - a.date_in) * 24, 2) AS hours_worked',
'FROM EMPLOYEE_VW@PAYROLL p',
'JOIN Attendance@PAYROLL a ',
'    ON p.emp_code = a.emp_code',
'WHERE a.att_date BETWEEN :P6_FROM_DATE AND :P6_TO_DATE',
'  AND a.attn_type = ''P''  -- Only present days',
'  and p.emp_code = :P6_CODE',
'ORDER BY a.att_date, p.emp_code;',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>'<h2> Day Wise Working Graph </h2>'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(409713446597211877)
,p_region_id=>wwv_flow_imp.id(409712827448211871)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(409713591497211878)
,p_chart_id=>wwv_flow_imp.id(409713446597211877)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.emp_code AS "Employee Code",',
'    p.emp_name AS "Employee Name",',
'    TO_CHAR(a.att_date,''MM-DD-YYYY DY'') AS "Date",',
'    -- Calculate hours worked (date_out - date_in) in hours',
'    ROUND((a.date_out - a.date_in) * 24, 2) AS "Hours Worked"',
'FROM EMPLOYEE_VW@PAYROLL p',
'JOIN Attendance@PAYROLL a ',
'    ON p.emp_code = a.emp_code',
'WHERE a.att_date BETWEEN :P6_FROM_DATE AND :P6_TO_DATE',
'  AND a.attn_type = ''P''          -- Only present days',
'  AND p.emp_code = :P6_CODE      -- Filter for specific employee',
'',
'  ORDER BY a.att_date ASC',
'',
''))
,p_ajax_items_to_submit=>'P6_CODE,P6_FROM_DATE,P6_TO_DATE'
,p_series_name_column_name=>'Date'
,p_items_value_column_name=>'Hours Worked'
,p_items_z_column_name=>'Hours Worked'
,p_group_name_column_name=>'Hours Worked'
,p_group_short_desc_column_name=>'Date'
,p_items_label_column_name=>'Date'
,p_items_short_desc_column_name=>'Hours Worked'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(409713658581211879)
,p_chart_id=>wwv_flow_imp.id(409713446597211877)
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
 p_id=>wwv_flow_imp.id(409713761264211880)
,p_chart_id=>wwv_flow_imp.id(409713446597211877)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(409901833584328334)
,p_name=>'New'
,p_template=>2072724515482255512
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'    -- 1. Static Block',
'    SELECT  ',
'        1 AS seq,',
'        ''Employee of Magna'' AS title,',
'        ''MAGNA'' AS value,',
unistr('        ''\D83C\DFED'' AS icon,'),
'        ''Complete detail of Magna Processing (M2) Employee'' AS meta,',
'        NULL AS type',
'    FROM DUAL',
'',
'    UNION ALL',
'',
'    -- 2. Present Days',
'    SELECT ',
'        2 AS seq,',
'        ''Total Working Day'' AS title,',
'        CAST(COUNT(*) AS VARCHAR2(20)) AS value,',
unistr('        ''\2705'' AS icon,'),
'        ''Total working day in this month'' AS meta,',
'        ''P'' AS type',
'    FROM Attendance@payroll a',
'    WHERE a.emp_code = :P6_CODE',
'      AND a.attn_type IN (''P'', ''PR'')',
'      AND TRUNC(a.att_date) BETWEEN TO_DATE(:P6_FROM_DATE, ''MM/DD/YYYY'') AND TO_DATE(:P6_TO_DATE, ''MM/DD/YYYY'')',
'',
'    UNION ALL',
'',
'    -- 3. Half Day',
'    SELECT ',
'        3 AS seq,',
'        ''Total Half Working Day'' AS title,',
'        CAST(COUNT(*) AS VARCHAR2(20)) AS value,',
unistr('        ''\2714\FE0F'' AS icon,'),
'        ''Total Half working day in this month'' AS meta,',
'        ''HL'' AS type',
'    FROM Attendance@payroll a',
'    WHERE a.emp_code = :P6_CODE',
'      AND a.attn_type = ''HL''',
'      AND TRUNC(a.att_date) BETWEEN TO_DATE(:P6_FROM_DATE, ''MM/DD/YYYY'') AND TO_DATE(:P6_TO_DATE, ''MM/DD/YYYY'')',
'',
'    UNION ALL',
'',
'    -- 4. Absent Days',
'    SELECT ',
'        4 AS seq,',
'        ''Total Absent Days'' AS title,',
'        CAST(COUNT(*) AS VARCHAR2(20)) AS value,',
unistr('        ''\D83D\DED1'' AS icon,'),
'        ''Total Absent Days in this month'' AS meta,',
'        ''A'' AS type',
'    FROM Attendance@payroll a',
'    WHERE a.emp_code = :P6_CODE',
'      AND a.attn_type = ''A''',
'      AND TRUNC(a.att_date) BETWEEN TO_DATE(:P6_FROM_DATE, ''MM/DD/YYYY'') AND TO_DATE(:P6_TO_DATE, ''MM/DD/YYYY'')',
'',
'    UNION ALL',
'',
'    -- 5. Leaves With Pay',
'    SELECT ',
'        5 AS seq,',
'        ''Leaves With Pay'' AS title,',
'        CAST(COUNT(*) AS VARCHAR2(20)) AS value,',
unistr('        ''\D83D\DCB0'' AS icon,'),
'        ''Total Leaves With Pay in this month'' AS meta,',
'        ''R'' AS type',
'    FROM Attendance@payroll a',
'    WHERE a.emp_code = :P6_CODE',
'      AND a.attn_type IN (''R'', ''GH'', ''SL'')',
'      AND TRUNC(a.att_date) BETWEEN TO_DATE(:P6_FROM_DATE, ''MM/DD/YYYY'') AND TO_DATE(:P6_TO_DATE, ''MM/DD/YYYY'')',
'',
'    UNION ALL',
'',
'    -- 6. Complete Working Status',
'    SELECT ',
'        6 AS seq,',
'        ''Complete Working Status'' AS title,',
'        CAST(COUNT(*) AS VARCHAR2(20)) AS value,',
unistr('        ''\D83D\DCCA'' AS icon,'),
'        ''Complete Working Status in this month'' AS meta,',
'        ''ALL'' AS type',
'    FROM Attendance@payroll a',
'    WHERE a.emp_code = :P6_CODE',
'      AND TRUNC(a.att_date) BETWEEN TO_DATE(:P6_FROM_DATE, ''MM/DD/YYYY'') AND TO_DATE(:P6_TO_DATE, ''MM/DD/YYYY'')',
'',
'    UNION ALL',
'',
'    -- 7. Overtime',
'    SELECT ',
'        7 AS seq,',
'        ''Total Over Time Hours'' AS title,',
'        CAST(SUM(O.oh_hrs) AS VARCHAR2(20)) AS value,',
unistr('        ''\23F1\FE0F'' AS icon,'),
'        ''Total Over Time Hours in this Month'' AS meta,',
'        ''O'' AS type',
'    FROM OVERTIME_AUTO_VW@payroll O',
'    WHERE O.emp_code = :P6_CODE',
'      AND TRUNC(O.date_in) BETWEEN TO_DATE(:P6_FROM_DATE, ''MM/DD/YYYY'') AND TO_DATE(:P6_TO_DATE, ''MM/DD/YYYY'')',
'',
'    -- UNION ALL',
'',
'    -- -- 8. Leave Balance',
'    -- SELECT ',
'    --     8 AS seq,',
'    --     ''Total Leaves In Balance'' AS title,',
'    --     CAST(SUM(l.NO_OF_L) AS VARCHAR2(20)) AS value,',
unistr('    --     ''\D83C\DF34'' AS icon,'),
'    --     ''Total leaves available in balance'' AS meta,',
'    --     NULL AS type',
'    -- FROM leave_ledger@payroll l',
'    -- WHERE l.emp_code = :P6_CODE',
')',
'ORDER BY seq;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6_CODE,P6_FROM_DATE,P6_TO_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(409918559706849973)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download '
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409902374035328339)
,p_query_column_id=>1
,p_column_alias=>'SEQ'
,p_column_display_sequence=>50
,p_column_heading=>'Seq'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409902061272328336)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_CODE,P7_FROM_DATE,P7_LEAVE,P7_TO_DATE:&P6_CODE.,&P6_FROM_DATE.,#TYPE#,&P6_TO_DATE.'
,p_column_linktext=>'#TITLE#'
,p_column_link_attr=>'#TITLE#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409901934262328335)
,p_query_column_id=>3
,p_column_alias=>'VALUE'
,p_column_display_sequence=>10
,p_column_heading=>'Value'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409902110326328337)
,p_query_column_id=>4
,p_column_alias=>'ICON'
,p_column_display_sequence=>30
,p_column_heading=>'Icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409902249309328338)
,p_query_column_id=>5
,p_column_alias=>'META'
,p_column_display_sequence=>40
,p_column_heading=>'Meta'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409906077217328376)
,p_query_column_id=>6
,p_column_alias=>'TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(409903560006328351)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'/* ===========================',
'   Blue Corporate Theme Version',
'=========================== */',
'.corp-box {',
'    background: #0059d4;',
'    border-radius: 16px;',
'    padding: 28px 36px;',
'    max-width: 900px;',
'    margin: 0 auto 30px auto;',
'    color: #ffffff;',
'    box-shadow: 0 10px 30px rgba(0,0,0,0.15);',
'    border: 1px solid #0041a8;',
'    font-family: ''Segoe UI'', Arial, sans-serif;',
'}',
'',
'.title-line {',
'    font-size: 1.8em;',
'    font-weight: 700;',
'    margin: 0 0 12px 0;',
'    text-align: center;',
'}',
'',
'.subtitle-line {',
'    font-size: 1.05em;',
'    line-height: 1.55;',
'    text-align: center;',
'    max-width: 760px;',
'    margin: 0 auto;',
'}',
'',
'/* Color-coded highlights */',
'.highlight-name { color: #ffe600; font-weight: 700; }       /* Yellow for Name */',
'.highlight-code { background: rgba(255,255,255,0.3); color: #00ffea; font-weight: 600; padding: 2px 8px; border-radius: 6px; } /* Cyan for Code */',
'.highlight-from-date { color: #ff6a00; font-weight: 600; text-decoration: underline; }  /* Orange for From Date */',
'.highlight-to-date { color: #ff4081; font-weight: 600; text-decoration: underline; }    /* Pink for To Date */',
'</style>',
'',
'<div class="corp-box">',
'    <div class="title-line">Employee Work Summary Overview</div>',
'    <div class="subtitle-line">',
'        Below, you can view the complete details for ',
'        <span class="highlight-name">&P6_NAME.</span> ',
'        (Code: <span class="highlight-code">&P6_CODE.</span>)<br>',
'        From: <span class="highlight-from-date">&P6_FROM_DATE.</span> ',
'        To: <span class="highlight-to-date">&P6_TO_DATE.</span>.<br>',
'        This section provides a day-wise summary of leave activity, ',
'        work logs, and a graphical analysis showing the daily work ratio.',
'    </div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(411692171144879455)
,p_name=>'New'
,p_template=>2072724515482255512
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''TOTAL LOAN'' AS title,',
'    SUM(L.Amount) AS value,',
'    ''MONEY'' as icon,',
'    ''Total Loan Status'' AS meta,',
'    :P6_CODE as employee_code',
'FROM LOAN_LEDGER_VW@payroll L',
'WHERE L.Emp_Code = :P6_CODE;',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(411721831385762104)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411692222901879456)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Title'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_CODE:#EMPLOYEE_CODE#'
,p_column_linktext=>'#TITLE#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411692333375879457)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>20
,p_column_heading=>'Value'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411692548159879459)
,p_query_column_id=>3
,p_column_alias=>'ICON'
,p_column_display_sequence=>40
,p_column_heading=>'Icon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411692481207879458)
,p_query_column_id=>4
,p_column_alias=>'META'
,p_column_display_sequence=>30
,p_column_heading=>'Meta'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411692657543879460)
,p_query_column_id=>5
,p_column_alias=>'EMPLOYEE_CODE'
,p_column_display_sequence=>50
,p_column_heading=>'Employee Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409901508441328331)
,p_name=>'P6_CODE'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409901684258328332)
,p_name=>'P6_FROM_DATE'
,p_item_sequence=>60
,p_prompt=>'New'
,p_format_mask=>'YYYY-MM-DD'
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
 p_id=>wwv_flow_imp.id(409901742857328333)
,p_name=>'P6_TO_DATE'
,p_item_sequence=>80
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409903776173328353)
,p_name=>'P6_NAME'
,p_item_sequence=>70
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  ',
'    P.EMP_NAME AS "Name"',
'',
'FROM EMPLOYEE_VW@PAYROLL P',
'',
'WHERE P.EMP_CODE=:P6_CODE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(409996572714218447)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(409901833584328334)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(409996654413218448)
,p_event_id=>wwv_flow_imp.id(409996572714218447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHARE'
,p_attribute_02=>'qaq'
,p_attribute_03=>'current_page'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

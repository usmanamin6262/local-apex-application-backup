prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'employee wise attendance'
,p_alias=>'EMPLOYEE-WISE-ATTENDANCE'
,p_step_title=>'employee wise attendance'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================= */',
unistr('/* \D83C\DF0D GLOBAL */'),
'/* ============================= */',
'body {',
'  background-color: white !important;',
'}',
'',
'/* ============================= */',
unistr('/* \D83D\DCCA KPI DASHBOARD SECTION */'),
'/* ============================= */',
'#dash_region .kpis {',
'  display: flex;',
'  flex-wrap: wrap;              /* responsive rows */',
'  gap: 16px;',
'  justify-content: flex-start;',
'  align-items: stretch;',
'  padding: 8px;',
'  overflow-x: hidden;',
'}',
'',
'/* KPI CARD */',
'#dash_region .kpi-card {',
'  flex: 0 0 185px;',
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
'/* KPI CONTENT */',
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
'/* ============================= */',
unistr('/* \D83C\DFA8 KPI CARD COLORS (ORDER BASED) */'),
'/* ============================= */',
'#dash_region .kpi-card:nth-child(1)  { border-top-color: #ff9800; }',
'#dash_region .kpi-card:nth-child(2)  { border-top-color: #0072ff; }',
'#dash_region .kpi-card:nth-child(3)  { border-top-color: #f44336; }',
'#dash_region .kpi-card:nth-child(4)  { border-top-color: #4caf50; }',
'#dash_region .kpi-card:nth-child(5)  { border-top-color: #9c27b0; }',
'#dash_region .kpi-card:nth-child(6)  { border-top-color: #795548; }',
'#dash_region .kpi-card:nth-child(7)  { border-top-color: #00bcd4; }',
'#dash_region .kpi-card:nth-child(8)  { border-top-color: #e91e63; }',
'#dash_region .kpi-card:nth-child(9)  { border-top-color: #8bc34a; }',
'#dash_region .kpi-card:nth-child(10) { border-top-color: #3f51b5; }',
'#dash_region .kpi-card:nth-child(11) { border-top-color: #ff5722; }',
'#dash_region .kpi-card:nth-child(12) { border-top-color: #009688; }',
'#dash_region .kpi-card:nth-child(13) { border-top-color: #cddc39; }',
'#dash_region .kpi-card:nth-child(14) { border-top-color: #673ab7; }',
'#dash_region .kpi-card:nth-child(15) { border-top-color: #2196f3; }',
'#dash_region .kpi-card:nth-child(16) { border-top-color: #ffeb3b; }',
'#dash_region .kpi-card:nth-child(17) { border-top-color: #607d8b; }',
'#dash_region .kpi-card:nth-child(18) { border-top-color: #b71c1c; }',
'#dash_region .kpi-card:nth-child(19) { border-top-color: #1b5e20; }',
'#dash_region .kpi-card:nth-child(20) { border-top-color: #0d47a1; }',
'',
'/* ============================= */',
unistr('/* \D83D\DCF1 RESPONSIVE */'),
'/* ============================= */',
'@media (max-width: 992px) {',
'  #dash_region .kpi-card {',
'    flex: 0 0 calc(33.33% - 16px);',
'  }',
'}',
'',
'@media (max-width: 600px) {',
'  #dash_region .kpi-card {',
'    flex: 0 0 calc(50% - 12px);',
'  }',
'}',
'',
'@media (max-width: 400px) {',
'  #dash_region .kpi-card {',
'    flex: 0 0 100%;',
'  }',
'}',
'',
'',
'',
'',
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
unistr('.icon-TOOLS::before      { content: "\D83D\DEE0\FE0F"; }')))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(410302224780302778)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(410299155112302747)
,p_name=>'Present_Employees'
,p_title=>'Present_Employees'
,p_parent_plug_id=>wwv_flow_imp.id(410302224780302778)
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
'    TO_CHAR(a.date_out, ''HH24:MI'') AS time_out,',
'      ''<span style="',
'            display:inline-block;',
'            background-color:#FFD700;',
'            color:#000;',
'            padding:5px 12px;',
'            border-radius:12px;',
'            font-weight:bold;',
'            text-align:center;',
'            font-size:0.9rem;',
'            box-shadow:0 2px 5px rgba(0,0,0,0.2);',
'            cursor:default;',
'            ">VIEW MONTHLY STATUS</span>'' AS STATUS',
'FROM Attendance@payroll a ,employee_vw@payroll p',
'WHERE a.emp_code=p.emp_code',
'    -- AND a.attn_type =''P''',
'AND trunc(a.date_in) =trunc(sysdate)',
'     and a.date_in is not null',
'      and p.dept_id=:P15_LOC_ID',
'      and p.quit_status=''SERVING''',
'      AND P.COST_ID=:P15_COST',
'      and p.loc_id=:P15_LOCATION'))
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
 p_id=>wwv_flow_imp.id(410299292960302749)
,p_query_column_id=>1
,p_column_alias=>'EMP_CODE'
,p_column_display_sequence=>10
,p_column_heading=>'Emp Code'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410299460337302750)
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
 p_id=>wwv_flow_imp.id(410299518687302751)
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
 p_id=>wwv_flow_imp.id(410299646361302752)
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
 p_id=>wwv_flow_imp.id(410299707069302753)
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
 p_id=>wwv_flow_imp.id(410299817459302754)
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
 p_id=>wwv_flow_imp.id(410383658950655632)
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
 p_id=>wwv_flow_imp.id(410383713078655633)
,p_query_column_id=>8
,p_column_alias=>'TIME_OUT'
,p_column_display_sequence=>80
,p_column_heading=>'Time Out'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411691888324879452)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>90
,p_column_heading=>'Status'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_EMPLOYEE:#EMP_CODE#'
,p_column_linktext=>'#STATUS#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(410300117840302757)
,p_name=>'Absent Employees'
,p_parent_plug_id=>wwv_flow_imp.id(410302224780302778)
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
'    a.date_out,',
'      ''<span style="',
'            display:inline-block;',
'            background-color:#FFD700;',
'            color:#000;',
'            padding:5px 12px;',
'            border-radius:12px;',
'            font-weight:bold;',
'            text-align:center;',
'            font-size:0.9rem;',
'            box-shadow:0 2px 5px rgba(0,0,0,0.2);',
'            cursor:default;',
'            ">VIEW MONTHLY STATUS</span>'' AS STATUS',
'FROM employee_vw@payroll p',
'LEFT JOIN Attendance@payroll a',
'    ON a.emp_code = p.emp_code',
'   AND TRUNC(a.att_date) = TRUNC(SYSDATE)',
'WHERE p.dept_id = :P15_LOC_ID',
'  AND p.quit_status = ''SERVING''',
'  AND (a.date_in IS NULL OR a.date_in IS NULL) -- ensure no check-in today',
'   AND P.COST_ID=:P15_COST',
'   and p.loc_id=:P15_LOCATION',
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
 p_id=>wwv_flow_imp.id(410300231682302758)
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
 p_id=>wwv_flow_imp.id(410300347069302759)
,p_query_column_id=>2
,p_column_alias=>'EMP_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Emp Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410300470465302760)
,p_query_column_id=>3
,p_column_alias=>'EMP_FNAME'
,p_column_display_sequence=>30
,p_column_heading=>'Emp Fname'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410300526767302761)
,p_query_column_id=>4
,p_column_alias=>'SHIFT'
,p_column_display_sequence=>40
,p_column_heading=>'Shift'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410300645053302762)
,p_query_column_id=>5
,p_column_alias=>'DEPT_DESC'
,p_column_display_sequence=>50
,p_column_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410300702864302763)
,p_query_column_id=>6
,p_column_alias=>'DESG_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Desgination'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410300884081302764)
,p_query_column_id=>7
,p_column_alias=>'DATE_IN'
,p_column_display_sequence=>70
,p_column_heading=>'Date In'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(410300978137302765)
,p_query_column_id=>8
,p_column_alias=>'DATE_OUT'
,p_column_display_sequence=>80
,p_column_heading=>'Date Out'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411691904509879453)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>90
,p_column_heading=>'Status'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_EMPLOYEE:#EMP_CODE#'
,p_column_linktext=>'#STATUS#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(410383884665655634)
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
'        <span class="highlight-dept">&P15_DEPARTMENT.</span> Department<br>',
'',
'        Date: ',
'        <span class="highlight-date">',
'            &P15_NEW_1_1.',
'        </span><br><br>',
'',
'        Below is the complete attendance status including ',
'        check-in/check-out timing, presence information, ',
'        and other daily activity records for the selected department.',
'    </div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(411693362808879467)
,p_name=>'New'
,p_template=>2072724515482255512
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''TOTAL LOAN'' AS title,',
'    SUM(L.Amount) AS value,',
'    ''MONEY'' AS icon,',
'    ''Total Loan of '' || :P15_DEPARTMENT || '' Department'' AS meta,',
'    :P15_COST   AS cost_id,',
'    :P15_LOC_ID AS dept_id',
'FROM LOAN_LEDGER_VW@payroll L',
'JOIN employee_vw@payroll E',
'  ON L.Emp_Code = E.emp_code',
'WHERE E.cost_id = :P15_COST',
'  AND E.dept_id = :P15_LOC_ID',
'  AND   E.loc_id=:P15_LOCATION;',
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
 p_id=>wwv_flow_imp.id(411693626068879470)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Title'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_COST_CENTER,P21_DEPARTMENT,P21_LOCATION:#COST_ID#,#DEPT_ID#,&P15_LOCATION.'
,p_column_linktext=>'#TITLE#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411693725655879471)
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
 p_id=>wwv_flow_imp.id(411693849575879472)
,p_query_column_id=>3
,p_column_alias=>'ICON'
,p_column_display_sequence=>30
,p_column_heading=>'Icon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411693897021879473)
,p_query_column_id=>4
,p_column_alias=>'META'
,p_column_display_sequence=>40
,p_column_heading=>'Meta'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411694044949879474)
,p_query_column_id=>5
,p_column_alias=>'COST_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Cost Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411694161275879475)
,p_query_column_id=>6
,p_column_alias=>'DEPT_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Dept Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(410301086554302766)
,p_button_sequence=>90
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
 p_id=>wwv_flow_imp.id(410298940476302745)
,p_name=>'P15_LOC_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(410299033826302746)
,p_name=>'P15_LOCATION'
,p_item_sequence=>20
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.dept_desc from employee_vw@payroll p',
'where p.dept_id=:P15_LOC_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(410383897339655635)
,p_name=>'P15_NEW_1_1'
,p_item_sequence=>30
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(410384305480655639)
,p_name=>'P15_COST'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(410384503342655641)
,p_name=>'P15_DEPARTMENT'
,p_item_sequence=>50
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.dept_desc from employee_vw@payroll p',
'where p.dept_id=:P15_LOC_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(410302012851302776)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(410301086554302766)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(410302133723302777)
,p_event_id=>wwv_flow_imp.id(410302012851302776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(410300117840302757)
);
wwv_flow_imp.component_end;
end;
/

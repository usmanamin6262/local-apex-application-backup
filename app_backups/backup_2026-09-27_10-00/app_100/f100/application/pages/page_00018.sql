prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'COST CENTER'
,p_alias=>'COST-CENTER2'
,p_step_title=>'COST CENTER'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'#dash_region .kpi-card:nth-child(1)  { border-top-color: hsl(0, 65%, 55%); }',
'#dash_region .kpi-card:nth-child(2)  { border-top-color: hsl(10, 68%, 52%); }',
'#dash_region .kpi-card:nth-child(3)  { border-top-color: hsl(20, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(4)  { border-top-color: hsl(30, 72%, 53%); }',
'#dash_region .kpi-card:nth-child(5)  { border-top-color: hsl(40, 65%, 50%); }',
'#dash_region .kpi-card:nth-child(6)  { border-top-color: hsl(50, 70%, 55%); }',
'#dash_region .kpi-card:nth-child(7)  { border-top-color: hsl(60, 68%, 52%); }',
'#dash_region .kpi-card:nth-child(8)  { border-top-color: hsl(70, 72%, 50%); }',
'#dash_region .kpi-card:nth-child(9)  { border-top-color: hsl(80, 65%, 53%); }',
'#dash_region .kpi-card:nth-child(10) { border-top-color: hsl(90, 70%, 50%); }',
unistr('/* Repeat incrementally for all 70 cards with hue step ~5\201310\00B0, slight sat/light variations */'),
'#dash_region .kpi-card:nth-child(11) { border-top-color: hsl(100, 68%, 52%); }',
'#dash_region .kpi-card:nth-child(12) { border-top-color: hsl(110, 72%, 55%); }',
'#dash_region .kpi-card:nth-child(13) { border-top-color: hsl(120, 65%, 50%); }',
'#dash_region .kpi-card:nth-child(14) { border-top-color: hsl(130, 70%, 53%); }',
'#dash_region .kpi-card:nth-child(15) { border-top-color: hsl(140, 68%, 52%); }',
'/* Continue the pattern up to card 70 */',
'#dash_region .kpi-card:nth-child(70) { border-top-color: hsl(690, 70%, 50%); }',
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(415208360615897685)
,p_name=>'New'
,p_template=>2072724515482255512
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    /* ================= DYNAMIC COST CENTERS ================= */',
'    SELECT',
'        ',
'        P.COST_NAME AS title,',
'''<span style="font-size:22px; color:#4FA3D1; margin-right:5px;"><i class="fa fa-users"></i></span>'' ||',
'''<span style="font-weight:bold; color:#2C3E50;">'' || COUNT(p.emp_code) || ''</span>'' AS value',
'',
',',
'',
'',
'        CASE',
'            -- Production / Drying / Machines',
'            WHEN UPPER(P.COST_NAME) LIKE ''%SINGEING%''        THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%KIER%''            THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%DRYING%''          THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%ZIMMER%''          THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%ZIMMER COLOUR%''   THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%REGGIANI%''        THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%REGGIANI COLOUR%'' THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%ALKAN STENTER%''   THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%BABCOCK STENTER%'' THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%MONFORT STENTER%'' THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%BRUCKNER STENTER%'' THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%CALENDER%''        THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%OPEN JIGGER%''     THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%JET MACHINE%''     THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%OPNER MACHINE%''   THEN ''FACTORY''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%STITCHING UNIT%'' THEN ''THREAD''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%BRUSHING MACHINE%'' THEN ''THREAD''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%DIGITAL MACHINE%'' THEN ''MONITOR''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%PRINTING TOUCHING%'' THEN ''MONITOR''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%SAMPLING MACHINE%'' THEN ''MONITOR''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%SAMPLE ROOM%''     THEN ''PALETTE''',
'',
'            -- Chemical / Lab / Dyeing',
'            WHEN UPPER(P.COST_NAME) LIKE ''%CHEMICAL%''        THEN ''FLASK''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%MERCERIZING%''     THEN ''FLASK''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%COAL LAB%''        THEN ''FLASK''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%GREY%''            THEN ''FLASK''',
'',
'            -- Utilities / Power / Steam',
'            WHEN UPPER(P.COST_NAME) LIKE ''%STEAM BOILER%''    THEN ''BOLT''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%POWER GENERATOR%'' THEN ''BOLT''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%ROTARY MECHANICAL%'' THEN ''GEAR''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%SOAPER MACHINE%''  THEN ''GEAR''',
'',
'            -- HR / Admin / Security',
'            WHEN UPPER(P.COST_NAME) LIKE ''%HR%'' OR UPPER(P.COST_NAME) LIKE ''%COMPLIANCE%'' THEN ''PEOPLE''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%ADMIN%''           THEN ''BUILDING''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%SECURITY%''        THEN ''SHIELD''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%CEO STAFF%''       THEN ''PEOPLE''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%DISPENSARY%''     THEN ''HOSPITAL''',
'',
'            -- Stores / Shops / Canteen',
'            WHEN UPPER(P.COST_NAME) LIKE ''%SHOP%''           THEN ''BOX''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%CANTEEN%''        THEN ''CART''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%FACTORY AREA%''   THEN ''FACTORY''',
'',
'            -- Maintenance / Civil / Fire Safety',
'            WHEN UPPER(P.COST_NAME) LIKE ''%CIVIL%''          THEN ''TOOLS''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%FIRE%''           THEN ''SHIELD''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%MANTINANCE%''     THEN ''TOOLS''',
'',
'            -- Quality / Rejection / Testing',
'            WHEN UPPER(P.COST_NAME) LIKE ''%QUALITY%''        THEN ''CHECK''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%REJECTION%''      THEN ''CHECK''',
'',
'            -- Misc / Biomass / Sample Creation',
'            WHEN UPPER(P.COST_NAME) LIKE ''%BIO MASS%''       THEN ''FLASK''',
'            WHEN UPPER(P.COST_NAME) LIKE ''%CREATION%''       THEN ''PALETTE''',
'',
'            ELSE ''BUILDING''',
'        END AS icon,',
'',
'        ''Today Attendance of '' || P.COST_NAME AS meta,',
'        NULL AS type,',
'       :P18_DEPT_ID AS loc_id,',
'        P.COST_ID AS cost_id,',
'        :P18_LOCATION AS location',
'    FROM department@payroll d',
'    LEFT JOIN employee_vw@payroll P',
'           ON P.dept_id = d.dept_id',
'          AND P.loc_id = :P18_LOCATION',
'   -- LEFT JOIN attendance@payroll a',
'          -- ON a.emp_code = P.emp_code',
'          --AND TRUNC(a.date_in) = TRUNC(SYSDATE)',
'    WHERE  p.quit_status=''SERVING''',
'      AND P.DEPT_ID = :P18_DEPT_ID',
'    GROUP BY P.COST_ID, P.COST_NAME, d.dept_id',
'',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1 class="location-title">COST CENTER</h1>',
'',
'<style>',
'.location-title {',
'  text-align: center;        /* Center the text horizontally */',
'  color: #ff5722;            /* Choose any color you like */',
'  font-size: 3rem;           /* Optional: make it bigger */',
'  font-weight: bold;         /* Optional: make it bold */',
'  margin-top: 20px;          /* Optional: spacing from top */',
'  text-transform: uppercase; /* Optional: all caps */',
'}',
'</style>',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P18_LOCATION'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(411721831385762104)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'XML'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411778279138570387)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>100
,p_column_heading=>'Title'
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_COST,P15_LOC_ID,P15_LOCATION,P15_DEPARTMENT:#COST_ID#,#LOC_ID#,#LOCATION#,#TITLE#'
,p_column_linktext=>'#TITLE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411779028425570388)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>30
,p_column_heading=>'Value'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411779439829570389)
,p_query_column_id=>3
,p_column_alias=>'ICON'
,p_column_display_sequence=>40
,p_column_heading=>'Icon'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411779812961570389)
,p_query_column_id=>4
,p_column_alias=>'META'
,p_column_display_sequence=>50
,p_column_heading=>'Meta'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411777069317570385)
,p_query_column_id=>5
,p_column_alias=>'TYPE'
,p_column_display_sequence=>110
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411776608510570384)
,p_query_column_id=>6
,p_column_alias=>'LOC_ID'
,p_column_display_sequence=>120
,p_column_heading=>'Loc Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411777827459570386)
,p_query_column_id=>7
,p_column_alias=>'COST_ID'
,p_column_display_sequence=>150
,p_column_heading=>'Cost Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411777441001570385)
,p_query_column_id=>8
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>140
,p_column_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(411690984515879443)
,p_name=>'P18_DEPT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416513235917085039)
,p_name=>'P18_LOCATION'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp.component_end;
end;
/

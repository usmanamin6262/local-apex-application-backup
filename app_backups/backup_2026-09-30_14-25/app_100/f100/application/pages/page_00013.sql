prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'DEPARTMENTS'
,p_alias=>'DEPARTMENTS'
,p_step_title=>'DEPARTMENTS'
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
'/* 70 visually distinct cards */',
'#dash_region .kpi-card:nth-child(1)  { border-top-color: hsl(0, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(2)  { border-top-color: hsl(5, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(3)  { border-top-color: hsl(10, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(4)  { border-top-color: hsl(15, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(5)  { border-top-color: hsl(20, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(6)  { border-top-color: hsl(25, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(7)  { border-top-color: hsl(30, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(8)  { border-top-color: hsl(35, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(9)  { border-top-color: hsl(40, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(10) { border-top-color: hsl(45, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(11) { border-top-color: hsl(50, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(12) { border-top-color: hsl(55, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(13) { border-top-color: hsl(60, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(14) { border-top-color: hsl(65, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(15) { border-top-color: hsl(70, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(16) { border-top-color: hsl(75, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(17) { border-top-color: hsl(80, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(18) { border-top-color: hsl(85, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(19) { border-top-color: hsl(90, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(20) { border-top-color: hsl(95, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(21) { border-top-color: hsl(100, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(22) { border-top-color: hsl(105, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(23) { border-top-color: hsl(110, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(24) { border-top-color: hsl(115, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(25) { border-top-color: hsl(120, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(26) { border-top-color: hsl(125, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(27) { border-top-color: hsl(130, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(28) { border-top-color: hsl(135, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(29) { border-top-color: hsl(140, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(30) { border-top-color: hsl(145, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(31) { border-top-color: hsl(150, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(32) { border-top-color: hsl(155, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(33) { border-top-color: hsl(160, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(34) { border-top-color: hsl(165, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(35) { border-top-color: hsl(170, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(36) { border-top-color: hsl(175, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(37) { border-top-color: hsl(180, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(38) { border-top-color: hsl(185, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(39) { border-top-color: hsl(190, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(40) { border-top-color: hsl(195, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(41) { border-top-color: hsl(200, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(42) { border-top-color: hsl(205, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(43) { border-top-color: hsl(210, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(44) { border-top-color: hsl(215, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(45) { border-top-color: hsl(220, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(46) { border-top-color: hsl(225, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(47) { border-top-color: hsl(230, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(48) { border-top-color: hsl(235, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(49) { border-top-color: hsl(240, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(50) { border-top-color: hsl(245, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(51) { border-top-color: hsl(250, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(52) { border-top-color: hsl(255, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(53) { border-top-color: hsl(260, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(54) { border-top-color: hsl(265, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(55) { border-top-color: hsl(270, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(56) { border-top-color: hsl(275, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(57) { border-top-color: hsl(280, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(58) { border-top-color: hsl(285, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(59) { border-top-color: hsl(290, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(60) { border-top-color: hsl(295, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(61) { border-top-color: hsl(300, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(62) { border-top-color: hsl(305, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(63) { border-top-color: hsl(310, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(64) { border-top-color: hsl(315, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(65) { border-top-color: hsl(320, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(66) { border-top-color: hsl(325, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(67) { border-top-color: hsl(330, 70%, 50%); }',
'#dash_region .kpi-card:nth-child(68) { border-top-color: hsl(335, 72%, 52%); }',
'#dash_region .kpi-card:nth-child(69) { border-top-color: hsl(340, 68%, 53%); }',
'#dash_region .kpi-card:nth-child(70) { border-top-color: hsl(345, 70%, 50%); }',
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
 p_id=>wwv_flow_imp.id(415172154127581939)
,p_name=>'New'
,p_template=>2072724515482255512
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ================= DYNAMIC LOCATIONS ================= */',
'SELECT',
'    loc_name AS title,',
'   '''' AS value,  -- count of active employees',
'    CASE',
'        WHEN UPPER(loc_name) LIKE ''%STITCHING (M2)%''      THEN ''THREAD''',
'        WHEN UPPER(loc_name) LIKE ''%CHEMICAL (M2)%''       THEN ''PALETTE''',
'        WHEN UPPER(loc_name) LIKE ''%SAEED TRADERS%''       THEN ''BOX''',
'        WHEN UPPER(loc_name) LIKE ''%EMBROIDERY%''          THEN ''PALETTE''',
'        WHEN UPPER(loc_name) LIKE ''%PROCESSING (M2)%''     THEN ''FACTORY''',
'        WHEN UPPER(loc_name) LIKE ''%REACTIVE HALL%''       THEN ''GEAR''',
'        WHEN UPPER(loc_name) LIKE ''%ABDULLAH COLLECTION%'' THEN ''MONEY''',
'        WHEN UPPER(loc_name) LIKE ''%LAHORE UNIT+FF GODOWN%'' THEN ''BOX''',
'        ELSE ''BUILDING''',
'    END AS icon,',
'    ''Active employees at '' || loc_name AS meta,',
'    loc_id as location',
' ',
'FROM employee_vw@PAYROLL',
'WHERE quit_status = ''SERVING''',
'GROUP BY loc_id, loc_name',
'ORDER BY loc_name;',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1 class="location-title">LOCATION</h1>',
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
 p_id=>wwv_flow_imp.id(411742412741254674)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>100
,p_column_heading=>'Title'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_LOCATION:#LOCATION#'
,p_column_linktext=>'#TITLE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411743206676254675)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(411743691802254675)
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
 p_id=>wwv_flow_imp.id(411744086434254676)
,p_query_column_id=>4
,p_column_alias=>'META'
,p_column_display_sequence=>50
,p_column_heading=>'Meta'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(409092120202696564)
,p_query_column_id=>5
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>110
,p_column_heading=>'Location'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/

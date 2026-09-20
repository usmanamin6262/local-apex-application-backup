prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Irragular Employee'
,p_alias=>'IRRAGULAR-EMPLOYEE'
,p_step_title=>'Irragular Employee'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(374733239111433109)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>110
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(374731658037433093)
,p_plug_name=>'EMPLOYEE ATTENDANCE'
,p_parent_plug_id=>wwv_flow_imp.id(374733239111433109)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    P.EMP_CODE AS "Code",',
'    P.EMP_NAME AS "Name",',
'    P.DEPT_DESC AS "Department",',
'    P.DESG_NAME AS "Designation",',
'    P.LOC_NAME AS "Location",',
'',
'    a.att_date AS "Attendance Date",',
'',
'    TO_CHAR(a.att_date, ''DAY'') AS "Day",',
'',
'    /* Time IN */',
'    CASE',
'        WHEN a.date_in IS NOT NULL THEN',
'            ''<span style="color:green;font-weight:bold;">''',
'            || TO_CHAR(a.date_in, ''HH24:MI'')',
'            || ''</span>''',
'        ELSE',
'            ''<span style="color:gray;">--</span>''',
'    END AS "Time IN",',
'',
'    /* Time OUT */',
'    CASE',
'        WHEN a.date_out IS NOT NULL THEN',
'            ''<span style="color:red;font-weight:bold;">''',
'            || TO_CHAR(a.date_out, ''HH24:MI'')',
'            || ''</span>''',
'        ELSE',
'            ''<span style="color:gray;">--</span>''',
'    END AS "Time OUT",',
'',
'    a.attn_type AS "Attendance Type",',
'',
'    a.reason AS "Reason",',
'',
'    /* Status */',
'    CASE',
'        WHEN a.attn_type = ''A'' THEN',
'            ''<span style="color:red;font-weight:bold;">''',
'            || ''Absent &#x1F534;</span>''',
'',
'        WHEN a.attn_type = ''HL'' THEN',
'            ''<span style="color:orange;font-weight:bold;">''',
'            || ''Half Leave &#x1F7E1;</span>''',
'',
'        WHEN a.attn_type = ''P'' THEN',
'            ''<span style="color:green;font-weight:bold;">''',
'            || ''Present &#x1F7E2;</span>''',
'',
'        ELSE',
'            ''<span style="color:gray;">Unknown</span>''',
'    END AS "Status",',
'',
'    /* Working Hours */',
'    CASE',
'        WHEN a.date_in IS NOT NULL',
'         AND a.date_out IS NOT NULL',
'        THEN ROUND(',
'                (a.date_out - a.date_in) * 24,',
'                2',
'             )',
'        ELSE',
'            NULL',
'    END AS "Hours Worked",',
'',
'    /* OUT Time */',
'    CASE',
'        WHEN a.date_out IS NOT NULL THEN',
'            TO_CHAR(a.date_out, ''HH24:MI'')',
'        ELSE',
'            NULL',
'    END AS "OUT",',
'',
'    ',
'',
'   ',
'',
'    /*',
'     * Detail Button',
'     */',
'    ''<span style="',
'        display:inline-block;',
'        background-color:#FFD700;',
'        color:#000;',
'        padding:5px 12px;',
'        border-radius:12px;',
'        font-weight:bold;',
'        text-align:center;',
'        font-size:0.9rem;',
'        box-shadow:0 2px 6px rgba(0,0,0,0.2);',
'        cursor:default;',
'    ">VIEW DETAIL</span>'' AS "View Detail"',
'',
'FROM EMPLOYEE_VW@PAYROLL P',
'',
'JOIN Attendance@PAYROLL a',
'    ON p.emp_code = a.emp_code',
'',
'WHERE',
'    TRUNC(a.att_date) BETWEEN',
'        TO_DATE(:P19_FROM_DATE, ''MM-DD-YYYY'')',
'        AND',
'        TO_DATE(:P19_TO_DATE, ''MM-DD-YYYY'')',
'',
'    AND ',
'        a.emp_code = :P19_EMPLOYEE',
'    ',
'',
'    AND (',
'        :P19_DESIGNATION IS NULL',
'        OR p.desg_id = :P19_DESIGNATION',
'    )',
'',
'    AND (',
'        :P19_DEPARTMENT IS NULL',
'        OR p.dept_id = :P19_DEPARTMENT',
'    )',
'',
'ORDER BY',
'    a.att_date,',
'    p.emp_code,',
'    a.date_in;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_FROM_DATE,P19_TO_DATE,P19_EMPLOYEE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(374731724840433094)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'USMAN'
,p_internal_uid=>181461663945844728
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374731834373433095)
,p_db_column_name=>'Code'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374731869479433096)
,p_db_column_name=>'Name'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_html_expression=>'<b>#Name#</b>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732040061433097)
,p_db_column_name=>'Department'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732079611433098)
,p_db_column_name=>'Designation'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732204875433099)
,p_db_column_name=>'Location'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732331164433100)
,p_db_column_name=>'Time IN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732498807433102)
,p_db_column_name=>'Status'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732600944433103)
,p_db_column_name=>'Day'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Day'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732677107433104)
,p_db_column_name=>'Attendance Date'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Attendance Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732804387433105)
,p_db_column_name=>'Attendance Type'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Attendance Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374732892386433106)
,p_db_column_name=>'Reason'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733024232433107)
,p_db_column_name=>'Hours Worked'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Hours Worked'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733105107433108)
,p_db_column_name=>'View Detail'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'View Detail'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_CODE,P6_FROM_DATE,P6_TO_DATE,P6_NAME:#Code#,&P19_FROM_DATE.,&P19_TO_DATE.,#Name#'
,p_column_linktext=>'#View Detail#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384534538658270371)
,p_db_column_name=>'Time OUT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384534643153270372)
,p_db_column_name=>'OUT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Out'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(384553816698273198)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1912838'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Code:Name:Department:Designation:Location:Day:Attendance Date:Time IN:OUT:Attendance Type:Status:Reason:Hours Worked:View Detail:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(415111709116513162)
,p_plug_name=>'ALL EMPLOYEES'
,p_parent_plug_id=>wwv_flow_imp.id(374733239111433109)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    P.EMP_CODE AS "Code",',
'    P.EMP_NAME AS "Name",',
'    P.DEPT_DESC AS "Department",',
'    P.DESG_NAME AS "Designation",',
'    P.LOC_NAME AS "Location",',
'',
'    /* Working */',
'    SUM(',
'        CASE',
'            WHEN a.attn_type = ''P'' THEN 1',
'            ELSE 0',
'        END',
'    ) AS "Working",',
'',
'    /* Half Leave */',
'    SUM(',
'        CASE',
'            WHEN a.attn_type = ''HL'' THEN 1',
'            ELSE 0',
'        END',
'    ) AS "Half Leave",',
'',
'    /* Leave / Absent */',
'    SUM(',
'        CASE',
'            WHEN a.attn_type = ''A'' THEN 1',
'            ELSE 0',
'        END',
'    ) AS "Leave",',
'',
'    /* GH Holiday */',
'    SUM(',
'        CASE',
'            WHEN a.attn_type = ''GH'' THEN 1',
'            ELSE 0',
'        END',
'    ) AS "GH Holiday",',
'',
'    /* Total Attendance Records */',
'    COUNT(a.att_date) AS "Total Days",',
'',
'    /* Working Days including Half Leave as 0.5 */',
'    ROUND(',
'        SUM(',
'            CASE',
'                WHEN a.attn_type = ''P'' THEN 1',
'                WHEN a.attn_type = ''HL'' THEN 0.5',
'                ELSE 0',
'            END',
'        ),',
'        2',
'    ) AS "Working Days",',
'',
'    /* Average Working Hours */',
'    ROUND(',
'        AVG(',
'            CASE',
'                WHEN a.date_in IS NOT NULL',
'                 AND a.date_out IS NOT NULL',
'                THEN (a.date_out - a.date_in) * 24',
'            END',
'        ),',
'        2',
'    ) AS "Average Hours",',
'',
'    /* Total Working Hours */',
'    ROUND(',
'        SUM(',
'            CASE',
'                WHEN a.date_in IS NOT NULL',
'                 AND a.date_out IS NOT NULL',
'                THEN (a.date_out - a.date_in) * 24',
'                ELSE 0',
'            END',
'        ),',
'        2',
'    ) AS "Total Hours",',
'',
'    /* Attendance Percentage */',
'    ROUND(',
'        (',
'            SUM(',
'                CASE',
'                    WHEN a.attn_type = ''P'' THEN 1',
'                    WHEN a.attn_type = ''HL'' THEN 0.5',
'                    ELSE 0',
'                END',
'            )',
'            /',
'            NULLIF(COUNT(a.att_date), 0)',
'        ) * 100,',
'        2',
'    ) AS "Working %"',
'',
'FROM EMPLOYEE_VW@PAYROLL P',
'',
'JOIN Attendance@PAYROLL a',
'    ON p.emp_code = a.emp_code',
'',
'WHERE',
'    TRUNC(a.att_date) BETWEEN',
'        TO_DATE(:P19_FROM_DATE, ''MM-DD-YYYY'')',
'        AND',
'        TO_DATE(:P19_TO_DATE, ''MM-DD-YYYY'')',
'',
'    AND (',
'        :P19_EMPLOYEE IS NULL',
'        OR a.emp_code = :P19_EMPLOYEE',
'    )',
'',
'    AND (',
'        :P19_DESIGNATION IS NULL',
'        OR p.desg_id = :P19_DESIGNATION',
'    )',
'',
'    AND (',
'        :P19_DEPARTMENT IS NULL',
'        OR p.dept_id = :P19_DEPARTMENT',
'    )',
'',
'GROUP BY',
'    P.EMP_CODE,',
'    P.EMP_NAME,',
'    P.DEPT_DESC,',
'    P.DESG_NAME,',
'    P.LOC_NAME',
'',
'ORDER BY',
'    P.EMP_CODE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_FROM_DATE,P19_TO_DATE,P19_EMPLOYEE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(415111773644513163)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MAGNA'
,p_internal_uid=>8246081750537733
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(415111907158513164)
,p_db_column_name=>'Code'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Code'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(415111984479513165)
,p_db_column_name=>'Name'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_html_expression=>'<b>#Name#</b>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(415112145974513166)
,p_db_column_name=>'Department'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(415112186604513167)
,p_db_column_name=>'Designation'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(415112281181513168)
,p_db_column_name=>'Location'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733337112433110)
,p_db_column_name=>'Working'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Working'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733452526433111)
,p_db_column_name=>'Half Leave'
,p_display_order=>70
,p_column_identifier=>'U'
,p_column_label=>'Half Leave'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733550176433112)
,p_db_column_name=>'Leave'
,p_display_order=>80
,p_column_identifier=>'V'
,p_column_label=>'Leave'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733655818433113)
,p_db_column_name=>'GH Holiday'
,p_display_order=>90
,p_column_identifier=>'W'
,p_column_label=>'Gh Holiday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733687627433114)
,p_db_column_name=>'Total Days'
,p_display_order=>100
,p_column_identifier=>'X'
,p_column_label=>'Total Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733785568433115)
,p_db_column_name=>'Working Days'
,p_display_order=>110
,p_column_identifier=>'Y'
,p_column_label=>'Working Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374733920240433116)
,p_db_column_name=>'Average Hours'
,p_display_order=>120
,p_column_identifier=>'Z'
,p_column_label=>'Average Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384534088252270367)
,p_db_column_name=>'Total Hours'
,p_display_order=>130
,p_column_identifier=>'AA'
,p_column_label=>'Total Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(384534179918270368)
,p_db_column_name=>'Working %'
,p_display_order=>140
,p_column_identifier=>'AB'
,p_column_label=>'Working %'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(415278686892121663)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'30115'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Code:Name:Department:Designation:Location'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(412267967858276772)
,p_button_sequence=>90
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(412267572833276770)
,p_button_sequence=>100
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RR,19::'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415118852919513262)
,p_name=>'P19_EMPLOYEE'
,p_item_sequence=>50
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct(p.emp_name),p.emp_code from  EMPLOYEE_VW@PAYROLL p',
'where p.dept_id =:P19_DEPARTMENT',
'and p.desg_id =:P19_DESIGNATION'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P19_DEPARTMENT,P19_DESIGNATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="border-radius:5px; border:1px solid SKYBLUE; padding:5px;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415118964475513263)
,p_name=>'P19_DEPARTMENT'
,p_item_sequence=>30
,p_prompt=>'DEPARTMENT'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select distinct(p.dept_desc),p.dept_id from  EMPLOYEE_VW@PAYROLL p'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'style="border-radius:5px; border:1px solid SKYBLUE; padding:5px;"'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415119073521513264)
,p_name=>'P19_DESIGNATION'
,p_item_sequence=>40
,p_prompt=>'DESIGNATION'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'select distinct(p.desg_name),p.desg_id from  EMPLOYEE_VW@PAYROLL p',
'where p.dept_id =:P19_DEPARTMENT'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P19_DEPARTMENT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="border-radius:5px; border:1px solid SKYBLUE; padding:5px;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415119175550513265)
,p_name=>'P19_FROM_DATE'
,p_item_sequence=>60
,p_prompt=>'FROM DATE'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TRUNC(SYSDATE, ''MM''), ''MM-DD-YYYY'') AS first_day_of_month',
'FROM dual;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415119269781513266)
,p_name=>'P19_TO_DATE'
,p_item_sequence=>70
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(412275037638276849)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(412267967858276772)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(412275513055276853)
,p_event_id=>wwv_flow_imp.id(412275037638276849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(415111709116513162)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(384534330064270369)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(412267967858276772)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(384534386451270370)
,p_event_id=>wwv_flow_imp.id(384534330064270369)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(374731658037433093)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

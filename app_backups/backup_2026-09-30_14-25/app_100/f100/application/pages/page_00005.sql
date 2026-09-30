prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'All Employees'
,p_alias=>'ALL-EMPLOYEES'
,p_step_title=>'All Employees'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(409710131556211844)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    P.EMP_CODE AS "Code",',
'    P.EMP_NAME AS "Name",',
'    P.DEPT_DESC AS "Department",',
'    P.DESG_NAME AS "Designation",',
'    P.LOC_NAME AS "Location",',
'',
'    a.att_date,',
'',
'    TO_CHAR(a.att_date, ''DY'', ''NLS_DATE_LANGUAGE=ENGLISH'') AS "Day",',
'',
'    -- Time IN',
'    ''<span style="color:green; font-weight:bold;">'' ||',
'    TO_CHAR(a.date_in, ''HH24:MI'') ||',
'    ''</span>'' AS "Time IN",',
'',
'    -- Time OUT',
'    CASE',
'        WHEN a.date_out IS NOT NULL THEN',
'            ''<span style="color:red; font-weight:bold;">'' ||',
'            TO_CHAR(a.date_out, ''HH24:MI'') ||',
'            ''</span>''',
'        ELSE',
'            ''<span style="color:orange; font-weight:bold;">IN</span>''',
'    END AS "Time Out",',
'',
'    a.attn_type,',
'    a.reason,',
'',
'    -- Status',
'    CASE ',
'        WHEN a.attn_type = ''A'' THEN ',
'            ''<span style="color:red; font-weight:bold;">',
'             Absent &#x1F534;</span>''',
'',
'        WHEN a.attn_type = ''HL'' THEN ',
'            ''<span style="color:orange; font-weight:bold;">',
'             Half Leave &#x1F7E1;</span>''',
'',
'        WHEN a.attn_type IN (''P'',''OD'') THEN ',
'            ''<span style="color:green; font-weight:bold;">',
'             Present &#x1F7E2;</span>''',
'',
'        ELSE ',
'            ''<span style="color:gray;">Unknown</span>''',
'    END AS "Status",',
'',
'    /*',
'       DAILY TOTAL DUTY TIME',
'',
'       Agar OUT hai:',
'           OUT - IN',
'',
'       Agar OUT nahi hai aur aaj ka din hai:',
'           SYSDATE - IN',
'',
'       Agar multiple IN/OUT hain:',
'           tamam sessions ka SUM',
'    */',
'',
'    ROUND(',
'        (',
'            SUM(',
'                CASE',
'                    WHEN a.date_in IS NOT NULL THEN',
'                        (',
'                            CASE',
'                                WHEN a.date_out IS NOT NULL THEN',
'                                    a.date_out',
'                                WHEN TRUNC(a.att_date) = TRUNC(SYSDATE) THEN',
'                                    SYSDATE',
'                                ELSE',
'                                    a.date_in',
'                            END',
'                            - a.date_in',
'                        )',
'                    ELSE 0',
'                END',
'            ) OVER (',
'                PARTITION BY a.emp_code, TRUNC(a.att_date)',
'            )',
'        ) * 24,',
'        2',
'    ) AS "Hours Worked",',
'',
'    /*',
'       Exact HH:MM Duty Time',
'       Example:',
'       8.62 hours -> 08:37',
'       7.50 hours -> 07:30',
'    */',
'',
'    LPAD(',
'        TRUNC(',
'            SUM(',
'                CASE',
'                    WHEN a.date_in IS NOT NULL THEN',
'                        (',
'                            CASE',
'                                WHEN a.date_out IS NOT NULL THEN',
'                                    a.date_out',
'                                WHEN TRUNC(a.att_date) = TRUNC(SYSDATE) THEN',
'                                    SYSDATE',
'                                ELSE',
'                                    a.date_in',
'                            END',
'                            - a.date_in',
'                        )',
'                    ELSE 0',
'                END',
'            ) OVER (',
'                PARTITION BY a.emp_code, TRUNC(a.att_date)',
'            ) * 24',
'        ),',
'        2,',
'        ''0''',
'    )',
'    || '':'' ||',
'    LPAD(',
'        MOD(',
'            TRUNC(',
'                SUM(',
'                    CASE',
'                        WHEN a.date_in IS NOT NULL THEN',
'                            (',
'                                CASE',
'                                    WHEN a.date_out IS NOT NULL THEN',
'                                        a.date_out',
'                                    WHEN TRUNC(a.att_date) = TRUNC(SYSDATE) THEN',
'                                        SYSDATE',
'                                    ELSE',
'                                        a.date_in',
'                                END',
'                                - a.date_in',
'                            )',
'                        ELSE 0',
'                    END',
'                ) OVER (',
'                    PARTITION BY a.emp_code, TRUNC(a.att_date)',
'                ) * 24 * 60',
'            ),',
'            60',
'        ),',
'        2,',
'        ''0''',
'    ) AS "EXACT DUTY TIME",',
'',
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
'    ">VIEW DETAIL</span>'' AS "VIEW DETAIL"',
'',
'FROM EMPLOYEE_VW@PAYROLL P',
'',
'JOIN Attendance@PAYROLL a',
'    ON p.emp_code = a.emp_code',
'',
'WHERE a.att_date BETWEEN ',
'        TO_DATE(:P5_FROM_DATE, ''MM-DD-YYYY'')',
'    AND TO_DATE(:P5_TO_DATE, ''MM-DD-YYYY'')',
'',
'  AND a.emp_code = NVL(:P5_EMPLOYEE, a.emp_code)',
'',
'  AND P.DESG_ID = NVL(:P5_DESIGNATION, P.DESG_ID)',
'',
'  AND P.DEPT_ID = NVL(:P5_DEPARTMENT, P.DEPT_ID)',
'',
'ORDER BY ',
'    a.att_date,',
'    a.emp_code,',
'    a.date_in;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_FROM_DATE,P5_TO_DATE,P5_EMPLOYEE'
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
 p_id=>wwv_flow_imp.id(409710196084211845)
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
,p_internal_uid=>2844504190236415
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409710329598211846)
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
 p_id=>wwv_flow_imp.id(409710406919211847)
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
 p_id=>wwv_flow_imp.id(409710568414211848)
,p_db_column_name=>'Department'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409710609044211849)
,p_db_column_name=>'Designation'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409710703621211850)
,p_db_column_name=>'Location'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409711676531211859)
,p_db_column_name=>'ATT_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409712222881211865)
,p_db_column_name=>'Time IN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Time In'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409712355751211866)
,p_db_column_name=>'Time Out'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Time Out'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409712434045211867)
,p_db_column_name=>'ATTN_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Attn Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409712559660211868)
,p_db_column_name=>'REASON'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409712675205211869)
,p_db_column_name=>'Status'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(409712759840211870)
,p_db_column_name=>'Day'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Day'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374730838400433085)
,p_db_column_name=>'Hours Worked'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Hours Worked'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374730959184433086)
,p_db_column_name=>'EXACT DUTY TIME'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Exact Duty Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(374730984804433087)
,p_db_column_name=>'VIEW DETAIL'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'View Detail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(409877109331820345)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'30115'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Code:Name:Department:Designation:Location:ATT_DATE:Day:Time IN:Time Out:Status:REASON'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(409711703713211860)
,p_button_sequence=>90
,p_button_name=>'Search'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(409903215225328348)
,p_button_sequence=>100
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RR,5::'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409711107751211854)
,p_name=>'P5_EMPLOYEE'
,p_item_sequence=>50
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct(p.emp_name),p.emp_code from  EMPLOYEE_VW@PAYROLL p',
'where p.dept_id =:P5_DEPARTMENT',
'and p.desg_id =:P5_DESIGNATION'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P5_DEPARTMENT,P5_DESIGNATION'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409711219307211855)
,p_name=>'P5_DEPARTMENT'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409711328353211856)
,p_name=>'P5_DESIGNATION'
,p_item_sequence=>40
,p_prompt=>'DESIGNATION'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct(p.desg_name),p.desg_id from  EMPLOYEE_VW@PAYROLL p',
'where p.dept_id =:P5_DEPARTMENT'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P5_DEPARTMENT'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409711430382211857)
,p_name=>'P5_FROM_DATE'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(409711524613211858)
,p_name=>'P5_TO_DATE'
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
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(409711840605211861)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(409711703713211860)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(409711939329211862)
,p_event_id=>wwv_flow_imp.id(409711840605211861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(409710131556211844)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>'HIRARCHY'
,p_alias=>'HIRARCHY'
,p_step_title=>'HIRARCHY'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'20'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(406957821865553423)
,p_plug_name=>'New'
,p_title=>'Employee Hierarchy Schame'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    E.emp_code AS NODE_ID,',
'    E.repor_to AS PARENT_NODE_ID,',
'    E.emp_name || '' ('' || E.dept_desc || '')'' AS NODE_LABEL',
'FROM employee_vw@payroll E',
'WHERE E.quit_status = ''SERVING''',
'--AND E.hod = ''Y''',
'START WITH E.emp_code = 12645',
'CONNECT BY NOCYCLE PRIOR E.emp_code = E.repor_to;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'icon_type_css_class', 'a-Icon',
  'node_id_column', 'NODE_ID',
  'node_label_column', 'NODE_LABEL',
  'node_value_column', 'PARENT_NODE_ID',
  'parent_key_column', 'PARENT_NODE_ID',
  'start_tree_with', 'NULL',
  'tree_hierarchy', 'SQL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/

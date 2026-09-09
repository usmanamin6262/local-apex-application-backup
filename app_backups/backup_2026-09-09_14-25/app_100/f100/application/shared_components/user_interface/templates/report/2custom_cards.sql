prompt --application/shared_components/user_interface/templates/report/2custom_cards
begin
--   Manifest
--     ROW TEMPLATE: 2CUSTOM_CARDS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1600476898799620
,p_default_application_id=>100
,p_default_id_offset=>1602442419489645
,p_default_owner=>'PAY'
);
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(411721831385762104)
,p_row_template_name=>'2custom cards'
,p_internal_name=>'2CUSTOM_CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<article class="kpi-card">',
'  <div class="kpi-icon">',
'    <span class="icon icon-#ICON#"></span>',
'  </div>',
'',
'  <div class="kpi-label">#TITLE#</div>',
'  <div class="kpi-value">#VALUE#</div>',
'  <div class="kpi-meta">#META#</div>',
'</article>',
''))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   <div id="dash_region" class="dash-wrap">',
'  <div class="dash-inner">',
'    <section class="kpis" role="region" aria-label="Key performance indicators">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       </section>',
'  </div>',
'</div>',
''))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/

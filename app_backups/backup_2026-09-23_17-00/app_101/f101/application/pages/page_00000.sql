prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1600476898799620
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'PAY'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1632314608026735)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="notif-bell" style="position:relative; cursor:pointer; display:inline-block;">',
unistr('    <span style="font-size:22px;">\D83D\DD14</span>'),
'    <span id="notif-badge" style="display:none; position:absolute; top:-5px; right:-8px; background:#e02424; color:white; border-radius:50%; padding:2px 6px; font-size:11px; font-weight:bold;">0</span>',
'</div>',
'',
'<div id="notif-dropdown" style="display:none; position:absolute; top:40px; right:0; width:320px; max-height:400px; overflow-y:auto; background:white; box-shadow:0 5px 20px rgba(0,0,0,0.15); border-radius:10px; z-index:9999;">',
'    <div id="notif-list" style="padding:10px;">Loading...</div>',
'    <div style="padding:10px; text-align:center; border-top:1px solid #eee;">',
'        <a href="f?p=&APP_ID.:20:&SESSION.::::" style="color:#1976d2; font-size:13px;">See All Notifications</a>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1632471647026736)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1632530850026737)
,p_event_id=>wwv_flow_imp.id(1632471647026736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function loadNotifications() {',
'    apex.server.process("GET_NOTIFICATIONS", {}, {',
'        success: function(data) {',
'            $("#notif-badge").text(data.unread_count);',
'            $("#notif-badge").css("display", data.unread_count > 0 ? "inline-block" : "none");',
'',
'            var html = "";',
'            if (data.items.length === 0) {',
'                html = "<div style=''padding:15px; text-align:center; color:#999;''>Koi notification nahi</div>";',
'            } else {',
'                data.items.forEach(function(item) {',
'                    var bgColor = item.is_read === "N" ? "#f0f7ff" : "#fff";',
'                    html += "<div onclick=\"markRead(" + item.id + ", ''" + item.link + "'')\" style=''padding:10px; border-bottom:1px solid #eee; cursor:pointer; background:" + bgColor + ";''>" +',
'                        "<div style=''font-weight:600; font-size:13px;''>" + item.title + "</div>" +',
'                        "<div style=''font-size:12px; color:#666; margin-top:3px;''>" + item.message + "</div>" +',
'                        "<div style=''font-size:11px; color:#aaa; margin-top:3px;''>" + item.date + "</div>" +',
'                        "</div>";',
'                });',
'            }',
'            $("#notif-list").html(html);',
'        }',
'    });',
'}',
'',
'function markRead(id, link) {',
'    apex.server.process("MARK_NOTIF_READ", { x01: id }, {',
'        success: function() {',
'            loadNotifications();',
'            if (link) {',
'                window.location.href = link;',
'            }',
'        }',
'    });',
'}',
'',
'$(function() {',
'    loadNotifications();',
'',
'    // Har 30 second mein refresh (naye notifications ke liye)',
'    setInterval(loadNotifications, 30000);',
'',
'    $("#notif-bell").on("click", function() {',
'        $("#notif-dropdown").toggle();',
'    });',
'',
'    // Bahar click karne se band ho jaye',
'    $(document).on("click", function(e) {',
'        if (!$(e.target).closest("#notif-bell, #notif-dropdown").length) {',
'            $("#notif-dropdown").hide();',
'        }',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1632647377026738)
,p_name=>'New_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1632734766026739)
,p_event_id=>wwv_flow_imp.id(1632647377026738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'',
'    v_count := PKG_NOTIFICATIONS.GET_UNREAD_COUNT(:APP_USER);',
'',
'    HTP.PRN(''{"unread_count": '' || v_count || '', "items": ['');',
'',
'    FOR rec IN (',
'        SELECT NOTIFICATION_ID,',
'               TITLE,',
'               MESSAGE,',
'               LINK_URL,',
'               IS_READ,',
'               TO_CHAR(CREATED_DATE, ''DD-Mon HH24:MI'') AS CREATED_STR',
'        FROM NOTIFICATIONS',
'        WHERE TARGET_USER = :APP_USER',
'        ORDER BY CREATED_DATE DESC',
'        FETCH FIRST 10 ROWS ONLY',
'    ) LOOP',
'',
'        HTP.PRN(',
'            ''{"id":'' || rec.NOTIFICATION_ID ||',
'            '',"title":"'' || REPLACE(rec.TITLE, ''"'', ''\"'') || ''"'' ||',
'            '',"message":"'' || REPLACE(rec.MESSAGE, ''"'', ''\"'') || ''"'' ||',
'            '',"link":"'' || NVL(rec.LINK_URL, '''') || ''"'' ||',
'            '',"is_read":"'' || rec.IS_READ || ''"'' ||',
'            '',"date":"'' || rec.CREATED_STR || ''"},''',
'        );',
'',
'    END LOOP;',
'',
'    HTP.PRN('']}'');',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

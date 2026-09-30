prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'contracts send on whats app'
,p_alias=>'CONTRACTS-SEND-ON-WHATS-APP'
,p_step_title=>'contracts send on whats app'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('// Isi FastAPI server ka URL \2014 jo pehle se WhatsApp/Email ke liye use ho raha hai'),
'var WA_REPORT_API_URL = "http://10.0.10.51:8000/send/whatsapp";',
' ',
'var waPopupCurrentLink = "";',
'var waPopupCurrentContract = "";',
'var waLastPhone = "";',
'var waLastName = "";',
' ',
'function waPopupOpen(link, contractName) {',
'    waPopupCurrentLink = link;',
'    waPopupCurrentContract = contractName || "";',
' ',
'    $("#wa-popup-phone").val(waLastPhone);',
'    $("#wa-popup-name").val(waLastName);',
'    $("#wa-popup-status").text("").removeClass("success error");',
' ',
'    $("#wa-popup-overlay").css("display", "flex");',
'    $("#wa-popup-phone").trigger("focus");',
'}',
' ',
'function waPopupClose() {',
'    $("#wa-popup-overlay").hide();',
'}',
' ',
'function waPopupSend() {',
'    var phone = $("#wa-popup-phone").val().trim();',
'    var name = $("#wa-popup-name").val().trim();',
' ',
'    if (!phone) {',
'        $("#wa-popup-status").text("Phone number likhein.").removeClass("success").addClass("error");',
'        return;',
'    }',
'    if (!name) {',
'        $("#wa-popup-status").text("Sender ka naam likhein.").removeClass("success").addClass("error");',
'        return;',
'    }',
' ',
'    waLastPhone = phone;',
'    waLastName = name;',
' ',
'    var message = name + " ne aapko ek report bheji hai";',
'    if (waPopupCurrentContract) {',
'        message += " (" + waPopupCurrentContract + ")";',
'    }',
'    message += ":\n" + waPopupCurrentLink;',
' ',
'    $("#wa-popup-status").text("Bhej raha hoon...").removeClass("success error");',
'    $("#wa-popup-send").prop("disabled", true);',
' ',
'    $.ajax({',
'        url: WA_REPORT_API_URL,',
'        method: "POST",',
'        contentType: "application/json",',
'        data: JSON.stringify({ phone: phone, message: message }),',
'        timeout: 30000',
'    })',
'    .done(function (response) {',
'        if (response.status === "success") {',
'            $("#wa-popup-status").text(response.message || "Bhej diya gaya.").removeClass("error").addClass("success");',
'            setTimeout(waPopupClose, 1500);',
'        } else {',
'            $("#wa-popup-status").text(response.message || "Error aayi.").removeClass("success").addClass("error");',
'        }',
'    })',
'    .fail(function () {',
unistr('        $("#wa-popup-status").text("Connection error \2014 server se jawab nahi mila.").removeClass("success").addClass("error");'),
'    })',
'    .always(function () {',
'        $("#wa-popup-send").prop("disabled", false);',
'    });',
'}',
' ',
'$(function () {',
'    // Report ke andar kisi bhi "Send WhatsApp" button ka click pakadna',
unistr('    // (event delegation \2014 IR refresh hone pe bhi kaam karega)'),
'    $(document).on("click", ".send-wa-btn", function () {',
'        var link = $(this).data("link");',
'        var contractName = $(this).data("contract");',
'        waPopupOpen(link, contractName);',
'    });',
' ',
'    $(document).on("click", "#wa-popup-cancel", function () {',
'        waPopupClose();',
'    });',
' ',
'    $(document).on("click", "#wa-popup-send", function () {',
'        waPopupSend();',
'    });',
' ',
'    // Overlay ke bahar click karne pe bhi band ho jaye',
'    $(document).on("click", "#wa-popup-overlay", function (e) {',
'        if (e.target.id === "wa-popup-overlay") {',
'            waPopupClose();',
'        }',
'    });',
' ',
'    // Enter key se bhi send ho jaye',
'    $(document).on("keypress", "#wa-popup-phone, #wa-popup-name", function (e) {',
'        if (e.which === 13) {',
'            e.preventDefault();',
'            waPopupSend();',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.send-wa-btn {',
'    background: #25D366;',
'    color: #fff;',
'    border: none;',
'    border-radius: 6px;',
'    padding: 5px 10px;',
'    font-size: 12px;',
'    cursor: pointer;',
'}',
' ',
'.send-wa-btn:hover {',
'    background: #1ebe5a;',
'}',
' ',
'#wa-popup-overlay {',
'    display: none;',
'    position: fixed;',
'    top: 0; left: 0; right: 0; bottom: 0;',
'    background: rgba(0,0,0,0.4);',
'    z-index: 9999;',
'    align-items: center;',
'    justify-content: center;',
'}',
' ',
'#wa-popup-box {',
'    background: #fff;',
'    border-radius: 10px;',
'    padding: 24px;',
'    width: 320px;',
'    box-shadow: 0 4px 20px rgba(0,0,0,0.2);',
'    font-family: -apple-system, "Segoe UI", Arial, sans-serif;',
'}',
' ',
'#wa-popup-box h3 {',
'    margin: 0 0 16px 0;',
'    font-size: 16px;',
'    color: #222;',
'}',
' ',
'#wa-popup-box label {',
'    display: block;',
'    font-size: 13px;',
'    color: #555;',
'    margin-bottom: 4px;',
'    margin-top: 12px;',
'}',
' ',
'#wa-popup-box input {',
'    width: 100%;',
'    padding: 8px 10px;',
'    border: 1px solid #ccc;',
'    border-radius: 6px;',
'    font-size: 14px;',
'    box-sizing: border-box;',
'}',
' ',
'#wa-popup-box input:focus {',
'    border-color: #25D366;',
'    outline: none;',
'}',
' ',
'.wa-popup-actions {',
'    display: flex;',
'    gap: 8px;',
'    margin-top: 20px;',
'}',
' ',
'.wa-popup-actions button {',
'    flex: 1;',
'    padding: 9px;',
'    border-radius: 6px;',
'    border: none;',
'    cursor: pointer;',
'    font-size: 14px;',
'}',
' ',
'#wa-popup-send {',
'    background: #25D366;',
'    color: #fff;',
'}',
' ',
'#wa-popup-send:hover {',
'    background: #1ebe5a;',
'}',
' ',
'#wa-popup-cancel {',
'    background: #eee;',
'    color: #333;',
'}',
' ',
'#wa-popup-cancel:hover {',
'    background: #ddd;',
'}',
' ',
'#wa-popup-status {',
'    margin-top: 10px;',
'    font-size: 13px;',
'}',
' ',
'#wa-popup-status.success { color: #1ebe5a; }',
'#wa-popup-status.error { color: #d9534f; }',
' ',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1631735390026729)
,p_plug_name=>'report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   ',
'',
'    ''<button type="button"',
'             class="send-wa-btn"',
'             data-link="'' ||',
'             apex_escape.html_attribute(',
'                 ''http://103.55.69.5:9002/reports/rwservlet?mc&report=D:\MC\REPORTS\SALE_PERFORMA_MADEUPS_COMM.rdf&CONT_NO=202600272&P_CCODE=2''',
'             ) ||',
'             ''"',
'             data-contract="'' ||',
'             apex_escape.html_attribute(',
'                 ''pdf''',
'             ) ||',
'             ''">',
unistr('        \D83D\DCAC WhatsApp'),
'     </button>'' AS send_wa_btn',
'',
'FROM dual'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(1631852160026730)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>1631852160026730
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1632199098026733)
,p_db_column_name=>'SEND_WA_BTN'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Send Wa Btn'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2804844274688654)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28049'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEND_WA_BTN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1632078405026732)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'<div id="wa-popup-overlay">',
'    <div id="wa-popup-box">',
'        <h3>Report WhatsApp par bhejein</h3>',
' ',
'        <label for="wa-popup-phone">Phone Number (country code ke sath)</label>',
'        <input type="text" id="wa-popup-phone" placeholder="923001234567">',
' ',
'        <label for="wa-popup-name">Sender ka naam</label>',
'        <input type="text" id="wa-popup-name" placeholder="e.g. Usman">',
' ',
'        <div id="wa-popup-status"></div>',
' ',
'        <div class="wa-popup-actions">',
'            <button id="wa-popup-cancel" type="button">Cancel</button>',
'            <button id="wa-popup-send" type="button">Send</button>',
'        </div>',
'    </div>',
'</div>',
' '))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/

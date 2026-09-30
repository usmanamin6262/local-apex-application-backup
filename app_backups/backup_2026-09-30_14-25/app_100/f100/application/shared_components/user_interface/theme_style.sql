prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1600476898799620
,p_default_application_id=>100
,p_default_id_offset=>1602442419489645
,p_default_owner=>'PAY'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(205484575138909916)
,p_theme_id=>42
,p_name=>'Vita (copy_2)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{},"customCSS":"/* =========================================================\n   GLOBAL APEX THEME - PURE BLUE EDITION (V4 SOFT BLUE HEADER)\n   Features a light blue accent color for headers and regions\n   instead of stark whit'
||'e.\n   ========================================================= */\n\n/* === PAGE BASE === */\nbody {\n    background-color: #f0f6ff;\n    font-family: ''Inter'', -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Arial, sans-serif;\n    color: #1'
||'e293b;\n    margin: 0;\n    padding: 0;\n    line-height: 1.6;\n}\n\n/* =========================================================\n   REGIONS\n   ========================================================= */\n.t-Region {\n    background: #ffffff;\n   '
||' border-radius: 10px;\n    border: 1px solid #cbd5e1;\n    padding: 24px;\n    margin-bottom: 20px;\n    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -2px rgba(0, 0, 0, 0.05);\n    transition: all 0.25s ease-in-out;\n}\n\n.t-Region:hover'
||' {\n    box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.08), 0 4px 6px -4px rgba(0, 0, 0, 0.08);\n    border-color: #93c5fd;\n}\n\n/* === REGION HEADER === */\n.t-Region-headerItems--title {\n    background: #e0f2fe;\n    color: #0369a1;\n    font-weigh'
||'t: 700;\n    font-size: 15px;\n    padding: 14px 20px;\n    border-bottom: 1px solid #bae6fd;\n    border-radius: 10px 10px 0 0;\n    letter-spacing: -0.1px;\n    position: relative;\n    overflow: hidden;\n    box-shadow: none;\n}\n\n.t-Region-heade'
||'rItems--title::after {\n    display: none;\n}\n\n.t-Region-headerItems--title .fa {\n    margin-right: 8px;\n    color: #0284c7;\n}\n\n/* =========================================================\n   FORM LABELS\n   =================================='
||'======================= */\n.t-Form-label,\n.t-Form-checkboxLabel,\n.t-Form-radioLabel {\n    color: #334155 !important;\n    font-weight: 600 !important;\n    font-size: 13px !important;\n    letter-spacing: 0.2px;\n    margin-bottom: 6px;\n}\n\n.t-'
||'Form-label .u-Req {\n    color: #ef4444 !important;\n    font-weight: 700;\n}\n\n/* =========================================================\n   INPUTS (UNIVERSAL)\n   ========================================================= */\ninput[type=\"text\"'
||'],\ninput[type=\"number\"],\ninput[type=\"date\"],\ninput[type=\"email\"],\ninput[type=\"password\"],\ntextarea,\nselect,\n.apex-item-text,\n.apex-item-select,\n.apex-item-popup-lov {\n    width: 100%;\n    height: 38px;\n    padding: 8px 14px;\n    '
||'font-size: 14px;\n    font-weight: 400;\n    color: #0f172a;\n    border: 1px solid #cbd5e1;\n    border-radius: 6px;\n    background-color: #ffffff;\n    transition: all 0.2s ease;\n    box-sizing: border-box;\n}\n\n/* === TEXTAREA === */\ntextarea,'
||'\n.apex-item-textarea {\n    height: 80px;\n    resize: vertical;\n    font-family: inherit;\n}\n\n/* === INPUT FOCUS === */\ninput:focus,\ntextarea:focus,\nselect:focus {\n    outline: none;\n    border-color: #2563eb;\n    box-shadow: 0 0 0 3px rgb'
||'a(37, 99, 235, 0.15);\n    background-color: #ffffff;\n}\n\n/* === INPUT HOVER === */\ninput:hover,\ntextarea:hover,\nselect:hover {\n    border-color: #93c5fd;\n}\n\n/* === ERROR STATE === */\n.apex-item-error {\n    border-color: #ef4444 !important'
||';\n    background-color: #fef2f2 !important;\n}\n\n.a-Form-error {\n    color: #dc2626;\n    font-size: 12px;\n    font-weight: 500;\n    margin-top: 4px;\n}\n\n/* =========================================================\n   POPUP LOV BUTTON\n   ==='
||'====================================================== */\n.apex-item-popup-lov,\ninput.apex-item-popup-lov,\n.apex-item-group input.apex-item-popup-lov,\n.a-Popup-lov input,\n.apex-item-popup-lov-input {\n    border: 1px solid #cbd5e1 !important;\n '
||'   border-right: none !important;\n    border-radius: 6px 0 0 6px !important;\n}\n\n.apex-item-popup-lov-button {\n    background: #f1f5f9;\n    border: 1px solid #cbd5e1;\n    border-left: none;\n    color: #475569;\n    height: 38px;\n    border-ra'
||'dius: 0 6px 6px 0;\n    cursor: pointer;\n    transition: all 0.2s ease;\n    font-weight: 600;\n}\n\n.apex-item-popup-lov-button:hover {\n    background: #e2e8f0;\n    color: #1e293b;\n    transform: none;\n}\n\n/* =================================='
||'=======================\n   INTERACTIVE REPORT (IR) & CLASSIC REPORT\n   ========================================================= */\n.a-IRR-table thead th,\n.a-IRR-header,\n.t-Report-report thead th,\n.t-Report thead th,\n.t-Report-groupHeader,\n.t'
||'-Report tr.t-Report-groupHeader td,\n.a-IRR-groupHeader,\n.a-IRR-table tr.t-Report-groupHeader td,\n.t-Report td.t-Report-groupHeader,\n.a-IRR-table td,\n.t-Report-report td,\n.t-Report td,\n.a-IRR-pagination,\n.a-IRR-pagination a,\n.t-Report-paginat'
||'ionLinks,\n.t-Report-paginationLinks a {\n    font-weight: 700;\n}\n\n/* =========================================================\n   BUTTONS\n   ========================================================= */\n.t-Button {\n    background: #2563eb;\n  '
||'  color: #ffffff;\n    border: none;\n    font-size: 13px;\n    font-weight: 600;\n    padding: 8px 18px;\n    border-radius: 6px;\n    cursor: pointer;\n    transition: all 0.2s ease;\n    letter-spacing: 0.2px;\n    box-shadow: 0 1px 3px 0 rgba(0, '
||'0, 0, 0.1);\n    display: inline-flex;\n    align-items: center;\n    gap: 6px;\n    position: relative;\n    overflow: hidden;\n}\n\n.t-Button::after {\n    display: none;\n}\n\n.t-Button:hover {\n    transform: translateY(-1px);\n    background: #1'
||'d4ed8;\n    box-shadow: 0 4px 6px -1px rgba(37, 99, 235, 0.2);\n}\n\n.t-Button:active {\n    transform: scale(0.98);\n}\n\n/* === BUTTON VARIANTS === */\n.t-Button--primary {\n    background: #2563eb;\n}\n\n.t-Button--primary:hover {\n    background:'
||' #1d4ed8;\n}\n\n.t-Button--hot {\n    background: #0f172a;\n}\n\n.t-Button--hot:hover {\n    background: #1e293b;\n}\n\n.t-Button--danger {\n    background: #dc2626 !important;\n    color: #fff !important;\n    font-weight: 600;\n}\n\n.t-Button--dang'
||'er:hover {\n    background: #b91c1c !important;\n    transform: translateY(-1px);\n    box-shadow: 0 4px 6px -1px rgba(220, 38, 38, 0.2);\n}\n\n.t-Button--success {\n    background: #16a34a;\n}\n\n.t-Button--success:hover {\n    background: #15803d;\'
||'n}\n\n.t-Button--warning {\n    background: #d97706;\n    color: #fff;\n}\n\n.t-Button--warning:hover {\n    background: #b45309;\n}\n\n.t-Button--small {\n    padding: 5px 12px;\n    font-size: 12px;\n}\n\n.t-Button--large {\n    padding: 12px 24px;'
||'\n    font-size: 15px;\n}\n\n/* =========================================================\n   HEADER & NAVIGATION (SOFT BLUE TINT)\n   ========================================================= */\n.t-Header-branding {\n    background: #e0f2fe !import'
||'ant;\n    border-bottom: 1px solid #bae6fd;\n    padding: 12px 24px;\n    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.03);\n}\n\n.t-Header-logo-link {\n    color: #0369a1 !important;\n    font-weight: 700;\n    font-size: 17px;\n    letter-spacing: -0.3p'
||'x;\n    display: inline-flex;\n    align-items: center;\n}\n\n.t-Header-logo-link .fa {\n    color: #0284c7;\n    margin-right: 8px;\n    font-size: 18px;\n}\n\n/* Navigation Bar */\n.t-NavigationBar {\n    background: #f8fafc;\n    border-bottom: 1p'
||'x solid #e2e8f0;\n    padding: 4px 12px;\n}\n\n.t-NavigationBar-item a {\n    color: #475569 !important;\n    font-size: 13px;\n    font-weight: 500;\n    padding: 6px 14px !important;\n    border-radius: 6px;\n    transition: all 0.15s ease;\n}\n\n.'
||'t-NavigationBar-item a:hover {\n    background: #e0f2fe;\n    color: #0369a1 !important;\n    border-radius: 6px;\n}\n\n.t-NavigationBar-item.a-active a {\n    background: #e0f2fe;\n    color: #0369a1 !important;\n    font-weight: 600;\n    border-ra'
||'dius: 6px;\n}\n\n/* =========================================================\n   BREADCRUMB\n   ========================================================= */\n.t-Breadcrumb {\n    background: transparent;\n    padding: 6px 0;\n}\n\n.t-Breadcrumb-item'
||' a {\n    color: #64748b;\n    font-weight: 500;\n    font-size: 13px;\n}\n\n.t-Breadcrumb-item a:hover {\n    color: #2563eb;\n    text-decoration: underline;\n}\n\n.t-Breadcrumb-item.is-active {\n    color: #0f172a;\n    font-weight: 600;\n}\n\n/* '
||'=========================================================\n   ALERTS / MESSAGES\n   ========================================================= */\n.t-Alert {\n    border-radius: 6px;\n    padding: 12px 16px;\n    border-left: 4px solid;\n    font-size'
||': 13px;\n}\n\n.t-Alert--success {\n    background: #f0fdf4;\n    border-color: #16a34a;\n    color: #166534;\n}\n\n.t-Alert--danger {\n    background: #fef2f2;\n    border-color: #dc2626;\n    color: #991b1b;\n}\n\n.t-Alert--warning {\n    background'
||': #fffbeb;\n    border-color: #d97706;\n    color: #92400e;\n}\n\n.t-Alert--info {\n    background: #eff6ff;\n    border-color: #2563eb;\n    color: #1e40af;\n}\n\n/* =========================================================\n   TABS\n   ============'
||'============================================= */\n.t-Tabs-tab {\n    background: #f1f5f9;\n    border: 1px solid #cbd5e1;\n    border-bottom: none;\n    padding: 8px 16px;\n    font-weight: 500;\n    color: #475569;\n    border-radius: 6px 6px 0 0;\n'
||'    transition: all 0.15s ease;\n}\n\n.t-Tabs-tab:hover {\n    background: #e2e8f0;\n    color: #1e293b;\n}\n\n.t-Tabs-tab.is-active {\n    background: #ffffff;\n    border-top: 2px solid #2563eb;\n    border-bottom: 2px solid #ffffff;\n    color: #2'
||'563eb;\n    font-weight: 600;\n}\n\n/* =========================================================\n   SELECT LISTS / DROPDOWNS\n   ========================================================= */\nselect,\n.apex-item-select {\n    appearance: none;\n    b'
||'ackground-image: url(\"data:image/svg+xml,%3Csvg xmlns=''http://www.w3.org/2000/svg'' width=''12'' height=''8'' viewBox=''0 0 12 8''%3E%3Cpath d=''M1 1l5 5 5-5'' stroke=''%2364748b'' stroke-width=''2'' fill=''none''/%3E%3C/svg%3E\");\n    background-repeat: no-repea'
||'t;\n    background-position: right 12px center;\n    padding-right: 36px;\n}\n\n/* =========================================================\n   CHECKBOXES & RADIO BUTTONS\n   ========================================================= */\ninput[type=\'
||'"checkbox\"],\ninput[type=\"radio\"] {\n    accent-color: #2563eb;\n    width: 16px;\n    height: 16px;\n    cursor: pointer;\n}\n\n/* =========================================================\n   SCROLLBAR\n   ======================================='
||'================== */\n::-webkit-scrollbar {\n    width: 6px;\n    height: 6px;\n}\n\n::-webkit-scrollbar-track {\n    background: #f1f5f9;\n}\n\n::-webkit-scrollbar-thumb {\n    background: #cbd5e1;\n    border-radius: 3px;\n}\n\n::-webkit-scrollbar'
||'-thumb:hover {\n    background: #94a3b8;\n}\n\n/* =========================================================\n   TOOLTIP\n   ========================================================= */\n.t-Tooltip {\n    background: #0f172a;\n    color: #ffffff;\n   '
||' border-radius: 4px;\n    padding: 4px 8px;\n    font-size: 11px;\n}\n\n/* =========================================================\n   MODAL / DIALOG\n   ========================================================= */\n.t-Dialog {\n    border-radius: '
||'10px;\n    border: 1px solid #cbd5e1;\n    box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);\n}\n\n.t-Dialog-header {\n    background: #e0f2fe;\n    color: #0369a1;\n    padding: 16px 20px;\n    border-bottom: 1px'
||' solid #bae6fd;\n    border-radius: 10px 10px 0 0;\n    font-weight: 700;\n}\n\n/* =========================================================\n   PAGE ITEMS SPECIFIC\n   ========================================================= */\n.apex-item-display '
||'{\n    font-weight: 600;\n    color: #0f172a;\n    padding: 6px 0;\n}\n\n/* =========================================================\n   RESPONSIVE MOBILE\n   ========================================================= */\n@media (max-width: 768px) {\'
||'n    body {\n        padding: 6px;\n        font-size: 13px;\n    }\n\n    .t-Region {\n        padding: 14px;\n        border-radius: 8px;\n    }\n\n    .t-Region-headerItems--title {\n        font-size: 14px;\n        padding: 12px 14px;\n    }\n\n'
||'    .t-Form-label {\n        font-size: 12px !important;\n    }\n\n    input,\n    textarea,\n    select {\n        height: 36px;\n        font-size: 13px;\n        padding: 6px 10px;\n    }\n\n    .t-Button {\n        width: 100%;\n        padding: '
||'10px;\n        font-size: 13px;\n        justify-content: center;\n    }\n\n    .t-NavigationBar-item a {\n        font-size: 12px;\n        padding: 6px 10px !important;\n    }\n}\n\n@media (max-width: 480px) {\n    .t-Region {\n        padding: 10p'
||'x;\n    }\n\n    .t-Region-headerItems--title {\n        font-size: 13px;\n        padding: 10px 12px;\n    }\n\n    input,\n    textarea,\n    select {\n        height: 34px;\n        font-size: 12px;\n        padding: 5px 8px;\n    }\n\n    .t-Butt'
||'on {\n        padding: 8px;\n        font-size: 12px;\n    }\n}\n\n/* ===== Interactive Grid Fixed Row Height ===== */\n.a-GV-cell,\n.a-GV-cell input,\n.a-GV-cell select,\n.a-GV-cell textarea,\n.a-IG input,\n.a-IG select,\n.a-IG textarea {\n    heigh'
||'t: 30px !important;\n    min-height: 30px !important;\n    max-height: 30px !important;\n    line-height: 30px !important;\n    box-sizing: border-box;\n    padding: 2px 6px !important;\n    font-weight: 600 !important;\n}\n\n.a-GV-row {\n    height:'
||' 34px !important;\n}\n\n.a-GV-cell {\n    padding: 2px 4px !important;\n}\n\n.a-GV-focus,\n.a-GV-cell.is-active,\n.a-GV-cell.is-selected {\n    outline: none !important;\n    box-shadow: none !important;\n}\n\n.a-IG *,\n.a-GV * {\n    transition: non'
||'e !important;\n    animation: none !important;\n}\n\n\n\n","useCustomLess":"Y"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#203882132719420271.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(409720773824530344)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Button-BorderRadius":"24px","@g_Form-BorderRadius":"30px","@irrBg":"#e1f5f6"},"customCSS":"/* === PAGE BACKGROUND === */\nbody {\n  background-color: #d9f0ff; /* soft sky blue */\n  font-family: Arial, Tahoma, sans-serif;\n '
||' color: #2e2e2e;\n  margin: 0;\n  padding: 0;\n}\n\n/* === REGION HEADERS === */\n.t-Region-headerItems--title {\n  background: linear-gradient(to bottom, #e0f4ff, #b3e5ff); /* sky gradient */\n  color: #003366;\n  font-weight: 800;\n  font-size: 16p'
||'x;\n  letter-spacing: 0.5px;\n  padding: 8px 12px;\n  border-bottom: 1px solid #8fd3f4;\n  border-radius: 6px 6px 0 0;\n}\n\n/* === REGION BOX === */\n.t-Region {\n  background: #fafdff;\n  border-radius: 6px;\n  border: 1px solid #b6e0f9;\n  padding'
||': 16px;\n  margin-bottom: 12px;\n}\n\n/* === FORM LABELS === */\n.t-Form-label,\n.t-Form-checkboxLabel,\n.t-Form-radioLabel {\n  color: #003366 !important;\n  font-weight: 800 !important;\n  font-size: 14px !important;\n  letter-spacing: 0.4px;\n  ma'
||'rgin: 0 0 2px 0;\n  display: block;\n  line-height: 1.2;\n}\n\n.t-Form-label .u-Req,\n.t-Form-label--req {\n  color: #e74c3c !important;\n  font-weight: 900 !important;\n}\n\n/* === UNIVERSAL FIELD STYLE === */\ninput[type=\"text\"],\ninput[type=\"pa'
||'ssword\"],\ninput[type=\"number\"],\ninput[type=\"date\"],\ninput[type=\"email\"],\ninput[type=\"tel\"],\ntextarea,\nselect,\n.apex-item-text,\n.apex-item-select,\n.apex-item-popup-lov {\n  width: 100%;\n  height: 32px;\n  padding: 6px 10px;\n  font-'
||'size: 13px;\n  font-weight: 600;\n  color: #003366;\n  border: 1px solid #66bff5;\n  border-radius: 4px;\n  background-color: #fff;\n  box-sizing: border-box;\n  transition: all 0.25s ease-in-out;\n  position: relative;\n}\n\n/* === TEXTAREA === */\n'
||'textarea,\n.apex-item-textarea {\n  height: 64px;\n  resize: vertical;\n}\n\n/* === FIELD FOCUS === */\ninput:focus,\ntextarea:focus,\nselect:focus,\n.apex-item-popup-lov:focus {\n  outline: none;\n  border-color: #4dabf7;\n  background-color: #fdfdf'
||'d;\n  transform: scale(1.02);\n  animation: fieldGlow 1.5s ease-in-out infinite;\n}\n\n.apex-item-error {\n  border-color: #e74c3c !important;\n  box-shadow: 0 0 6px rgba(231, 76, 60, 0.6);\n}\n\n/* === GLOW EFFECT === */\n@keyframes fieldGlow {\n  0'
||'%   { box-shadow: 0 0 6px rgba(102, 191, 245, 0.3); }\n  50%  { box-shadow: 0 0 12px rgba(102, 191, 245, 0.6); }\n  100% { box-shadow: 0 0 6px rgba(102, 191, 245, 0.3); }\n}\n\n/* === LOV BUTTON === */\n.apex-item-popup-lov-button {\n  background: li'
||'near-gradient(to bottom, #b3e5ff, #66bff5);\n  border: 1px solid #5ca9db;\n  border-radius: 0 4px 4px 0;\n  padding: 6px 10px;\n  color: #fff;\n  cursor: pointer;\n  height: 34px;\n  box-shadow: 1px 1px 4px rgba(92, 183, 211, 0.3);\n  transition: all'
||' 0.25s ease-in-out;\n}\n\n.apex-item-popup-lov-button:hover {\n  background: linear-gradient(to bottom, #66bff5, #4dabf7);\n  transform: scale(1.05);\n}\n\n/* === RIPPLE EFFECT === */\ninput:active::after,\ntextarea:active::after,\nselect:active::aft'
||'er,\n.apex-item-popup-lov:active::after {\n  content: \"\";\n  position: absolute;\n  width: 120%;\n  height: 120%;\n  top: 50%;\n  left: 50%;\n  background: rgba(102, 191, 245, 0.3);\n  border-radius: 50%;\n  transform: translate(-50%, -50%) scale(0'
||');\n  animation: rippleAnim 0.6s ease-out;\n}\n\n@keyframes rippleAnim {\n  to {\n    transform: translate(-50%, -50%) scale(1.5);\n    opacity: 0;\n  }\n}\n\n/* === BUTTONS === */\n.t-Button {\n  background: linear-gradient(to bottom, #b3e5ff, #66bf'
||'f5);\n  color: #fff;\n  border: 1px solid #5ca9db;\n  font-size: 14px;\n  font-weight: bold;\n  padding: 8px 16px;\n  border-radius: 6px;\n  cursor: pointer;\n  box-shadow: 2px 2px 6px rgba(92, 183, 211, 0.3);\n  transition: background 0.3s ease, tra'
||'nsform 0.1s ease;\n}\n\n.t-Button:hover {\n  background: linear-gradient(to bottom, #66bff5, #4dabf7);\n  box-shadow: 2px 4px 12px rgba(92, 183, 211, 0.45);\n}\n\n/* === GRID HEADERS === */\n.a-GV-table th,\n.a-IRR-header,\n.t-Report-colHead {\n  bac'
||'kground-color: #cceeff;\n  color: #003366;\n  font-weight: bold;\n  text-align: left;\n  padding: 6px 10px;\n}\n\n/* === GRID CELLS === */\n.a-GV-table td,\n.a-IRR-table td {\n  font-size: 14px;\n  color: #2e2e2e;\n  padding: 6px 10px;\n  border-top:'
||' 1px solid #b6e0f9;\n}\n\n/* === HEADER / NAVIGATION (Compact) === */\n.t-Header-branding {\n  background-color: #e0f7ff !important;\n  border-bottom: 1px solid #b6e0f9;\n  padding: 2px 6px !important;\n  min-height: 38px !important;\n}\n\n.t-Header-'
||'logo-link {\n  color: #003366 !important;\n  font-weight: bold;\n  font-size: 14px;\n  line-height: 1.1;\n}\n\n.t-Header-nav {\n  background-color: #e0f7ff !important;\n  border-top: 1px solid #b6e0f9;\n}\n\n.t-NavigationBar-item a {\n  color: #00336'
||'6 !important;\n  font-size: 12px;\n  font-weight: 500;\n  padding: 4px 8px !important;\n  min-height: 28px !important;\n}\n\n.t-NavigationBar-item a:hover {\n  background-color: #b3e5ff;\n}\n","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#408118331405040699.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/

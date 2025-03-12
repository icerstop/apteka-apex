prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>67541494403004847
,p_default_application_id=>292
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155865'
);
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>unistr('Statystyki Zam\00F3wie\0144')
,p_alias=>unistr('STATYSTYKI-ZAM\00D3WIE\0143')
,p_step_title=>unistr('Statystyki Zam\00F3wie\0144')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220194964359588526)
,p_plug_name=>unistr('10 Najdro\017Cszych Zam\00F3wie\0144')
,p_title=>unistr('10 Najdro\017Cszych Zam\00F3wie\0144')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180745201244957815)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT zamowienie_id,',
'       wartosc_zamowienia',
'FROM (',
'    SELECT z.zamowienie_id,',
'           SUM(z.ilosc * l.cena) AS wartosc_zamowienia',
'    FROM Zamowienia z',
'    JOIN Leki l ON z.lek_id = l.lek_id',
'    GROUP BY z.zamowienie_id',
'    ORDER BY SUM(z.ilosc * l.cena) DESC',
')',
'WHERE ROWNUM <= 10;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('10 Najdro\017Cszych Zam\00F3wie\0144')
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
 p_id=>wwv_flow_imp.id(220195048607588527)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.BILSKI@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>220195048607588527
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(220195185124588528)
,p_db_column_name=>'ZAMOWIENIE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Zamowienie Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(220195295616588529)
,p_db_column_name=>'WARTOSC_ZAMOWIENIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Wartosc Zamowienia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(256002430264969460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2560025'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ZAMOWIENIE_ID:WARTOSC_ZAMOWIENIA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194524185663862722)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(220194964359588526)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>unistr('<h2>10 Najdro\017Cszych Zam\00F3wie\0144</h2>')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220195440668588531)
,p_plug_name=>unistr('\0141\0105czna Suma Warto\015Bci Zam\00F3wie\0144')
,p_title=>unistr('\0141\0105czna Suma Warto\015Bci Zam\00F3wie\0144')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>10
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_sum   NUMBER;',
'  v_html  CLOB;',
'BEGIN',
unistr('  -- 1. Pobierz \0142\0105czn\0105 kwot\0119 (SUM) do zmiennej:'),
'  SELECT SUM(z.ilosc * l.cena)',
'    INTO v_sum',
'    FROM Zamowienia z',
'    JOIN Leki l ON z.lek_id = l.lek_id;',
'    ',
'  -- 2. Zbuduj fragment HTML:',
'  v_html := ''<p>''',
'    || TO_CHAR(v_sum, ''999G999G999D99'')',
'    || ''</p>'';',
'    ',
unistr('  -- 3. Wy\015Bwietl HTML w regionie'),
'  htp.prn(v_html);',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220195560823588532)
,p_plug_name=>unistr('\015Arednia Warto\015B\0107 Zam\00F3wienia')
,p_title=>unistr('\015Arednia Warto\015B\0107 Zam\00F3wienia')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_avg   NUMBER;',
'  v_html  CLOB;',
'BEGIN',
unistr('  -- 1. Oblicz \015Bredni\0105 warto\015B\0107 zam\00F3wienia:'),
'  SELECT AVG(x.wartosc_zamowienia)',
'    INTO v_avg',
'    FROM (',
'      SELECT z.zamowienie_id,',
'             SUM(z.ilosc * l.cena) AS wartosc_zamowienia',
'        FROM Zamowienia z',
'        JOIN Leki l ON z.lek_id = l.lek_id',
'       GROUP BY z.zamowienie_id',
'    ) x;',
'    ',
'  -- 2. Zbuduj HTML:',
'  v_html := ''<p>''',
'    || TO_CHAR(v_avg, ''999G999G999D99'')',
'    || ''</p>'';',
'    ',
unistr('  -- 3. Wy\015Bwietl'),
'  htp.prn(v_html);',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(255332561137876682)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180767403354957834)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(180651755834957693)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(180830208787957909)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(255333285037876683)
,p_plug_name=>unistr('Status Zam\00F3wie\0144')
,p_title=>unistr('Status Zam\00F3wie\0144')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(255333628565876683)
,p_region_id=>wwv_flow_imp.id(255333285037876683)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(255335304656876686)
,p_chart_id=>wwv_flow_imp.id(255333628565876683)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT status_zamowienia, COUNT(*) AS liczba_zam\00F3wie\0144'),
'FROM Zamowienia',
'GROUP BY status_zamowienia;',
''))
,p_max_row_count=>20
,p_items_value_column_name=>unistr('LICZBA_ZAM\00D3WIE\0143')
,p_items_label_column_name=>'STATUS_ZAMOWIENIA'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp.component_end;
end;
/

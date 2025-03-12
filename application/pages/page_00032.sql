prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Informacje Pacjenta'
,p_alias=>'INFORMACJE-PACJENTA'
,p_step_title=>'Informacje Pacjenta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194525726783862738)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nazwa AS lek_nazwa,',
'       COUNT(*) AS liczba_przepisanych,',
'       ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER (), 2) AS procent',
'  FROM Recepty r',
'  JOIN Leki l ON r.lek_id = l.lek_id',
' WHERE r.pacjent_id = :P32_PACJENT_ID',
' GROUP BY l.nazwa',
' ORDER BY liczba_przepisanych DESC',
' FETCH FIRST 10 ROWS ONLY',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(194525858072862739)
,p_region_id=>wwv_flow_imp.id(194525726783862738)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(194525967508862740)
,p_chart_id=>wwv_flow_imp.id(194525858072862739)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.nazwa AS lek_nazwa,',
'       COUNT(*) AS liczba_przepisanych,',
'       ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER (), 2) AS procent',
'  FROM Recepty r',
'  JOIN Leki l ON r.lek_id = l.lek_id',
' WHERE r.pacjent_id = :P32_PACJENT_ID',
' GROUP BY l.nazwa',
' ORDER BY liczba_przepisanych DESC',
' FETCH FIRST 10 ROWS ONLY',
''))
,p_items_value_column_name=>'LICZBA_PRZEPISANYCH'
,p_items_label_column_name=>'LEK_NAZWA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(194526000503862741)
,p_chart_id=>wwv_flow_imp.id(194525858072862739)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(194526142027862742)
,p_chart_id=>wwv_flow_imp.id(194525858072862739)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220196422170588541)
,p_plug_name=>'Dane Pacjenta'
,p_title=>'Dane Pacjenta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180745201244957815)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT imie,',
'       nazwisko,',
'       data_urodzenia,',
'       adres,',
'       telefon,',
'       pesel',
'FROM Pacjenci',
'WHERE pesel = :P32_PESEL',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Dane Pacjenta'
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
 p_id=>wwv_flow_imp.id(307669255546661421)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.BILSKI@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>307669255546661421
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307669378132661422)
,p_db_column_name=>'IMIE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Imie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307669494732661423)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307669587316661424)
,p_db_column_name=>'DATA_URODZENIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Data Urodzenia'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307669633574661425)
,p_db_column_name=>'ADRES'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Adres'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307669739673661426)
,p_db_column_name=>'TELEFON'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Telefon'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307669860241661427)
,p_db_column_name=>'PESEL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pesel'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(310461703016986937)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3104618'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMIE:NAZWISKO:DATA_URODZENIA:ADRES:TELEFON:PESEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220197130954588548)
,p_plug_name=>'Recepty Pacjenta'
,p_title=>'Recepty Pacjenta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180745201244957815)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT data_realizacji,',
'       lek_nazwa,',
'       lek_typ,',
'       lek_dawkowanie,',
'       lek_ilosc',
'  FROM TABLE(LekiPacjenta(:P32_PACJENT_ID));',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P32_PACJENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Recepty Pacjenta'
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
 p_id=>wwv_flow_imp.id(307669929029661428)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.BILSKI@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>307669929029661428
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307670228100661431)
,p_db_column_name=>'DATA_REALIZACJI'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Data Realizacji'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(194525164801862732)
,p_db_column_name=>'LEK_NAZWA'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Lek Nazwa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(194525256932862733)
,p_db_column_name=>'LEK_TYP'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Lek Typ'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(194525381058862734)
,p_db_column_name=>'LEK_DAWKOWANIE'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Lek Dawkowanie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(194525461730862735)
,p_db_column_name=>'LEK_ILOSC'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Lek Ilosc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(310467824021988476)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3104679'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DATA_REALIZACJI:LEK_DAWKOWANIE:LEK_ILOSC:LEK_NAZWA:LEK_TYP:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(306382331767554828)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(307668269015661411)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(306382331767554828)
,p_button_name=>'P32_BTN_SZUKAJ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(180828771063957905)
,p_button_image_alt=>'Szukaj'
,p_button_position=>'SMART_FILTERS'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194525090410862731)
,p_name=>'P32_PACJENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(306382331767554828)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pacjent_id ',
'FROM Pacjenci',
'WHERE pesel = :P32_PESEL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220196315951588540)
,p_name=>'P32_PESEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(306382331767554828)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'PESEL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(180826122711957897)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(194524382384862724)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P32_PESEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''PESEL'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(220196315951588540)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(194524419418862725)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P32_PESEL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>unistr('Pole ''PESEL'' musi sk\0142ada\0107 si\0119 wy\0142\0105cznie z cyfr')
,p_associated_item=>wwv_flow_imp.id(220196315951588540)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(194524531387862726)
,p_validation_name=>'New_2'
,p_validation_sequence=>30
,p_validation=>'LENGTH(:P32_PESEL) = 11'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('PESEL musi mie\0107 11 cyfr')
,p_associated_item=>wwv_flow_imp.id(220196315951588540)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

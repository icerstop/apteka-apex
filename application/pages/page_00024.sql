prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>unistr('Statystyki Pacjent\00F3w')
,p_alias=>'STATYSTYKI-PACJENCI'
,p_step_title=>unistr('Statystyki Pacjent\00F3w')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194526218685862743)
,p_plug_name=>unistr('Wiek Pacjent\00F3w')
,p_title=>unistr('Wiek Pacjent\00F3w')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(194526309404862744)
,p_region_id=>wwv_flow_imp.id(194526218685862743)
,p_chart_type=>'bubble'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
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
 p_id=>wwv_flow_imp.id(194526455762862745)
,p_chart_id=>wwv_flow_imp.id(194526309404862744)
,p_seq=>10
,p_name=>unistr('Wiek Pacjent\00F3w')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM data_urodzenia) AS wiek,',
'    COUNT(*) AS liczba_pacjentow',
'FROM',
'    Pacjenci',
'GROUP BY',
'    EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM data_urodzenia)',
'ORDER BY',
'    wiek;',
''))
,p_items_x_column_name=>'WIEK'
,p_items_y_column_name=>'LICZBA_PACJENTOW'
,p_items_label_column_name=>'WIEK'
,p_line_style=>'solid'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(194526571418862746)
,p_chart_id=>wwv_flow_imp.id(194526309404862744)
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
 p_id=>wwv_flow_imp.id(194526641251862747)
,p_chart_id=>wwv_flow_imp.id(194526309404862744)
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
 p_id=>wwv_flow_imp.id(219074829775236831)
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
 p_id=>wwv_flow_imp.id(219075509579236832)
,p_plug_name=>unistr('P\0142e\0107 Pacjent\00F3w')
,p_title=>unistr('P\0142e\0107 Pacjent\00F3w')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(219075965813236833)
,p_region_id=>wwv_flow_imp.id(219075509579236832)
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
 p_id=>wwv_flow_imp.id(219077618702236834)
,p_chart_id=>wwv_flow_imp.id(219075965813236833)
,p_seq=>10
,p_name=>unistr('P\0142e\0107 Pacjent\00F3w')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE ',
'        WHEN UPPER(SUBSTR(IMIE, -1)) = ''A'' THEN ''Kobieta''',
unistr('        ELSE ''M\0119\017Cczyzna'''),
'    END AS PLEC,',
'    COUNT(*) AS LICZBA',
'FROM PACJENCI',
'GROUP BY ',
'    CASE ',
'        WHEN UPPER(SUBSTR(IMIE, -1)) = ''A'' THEN ''Kobieta''',
unistr('        ELSE ''M\0119\017Cczyzna'''),
'    END;',
''))
,p_max_row_count=>20
,p_series_name_column_name=>'PLEC'
,p_items_value_column_name=>'LICZBA'
,p_items_label_column_name=>'PLEC'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219078223572236836)
,p_plug_name=>unistr('Grupy Wiekowe Pacjent\00F3w')
,p_title=>unistr('Grupy Wiekowe Pacjent\00F3w')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(219078664840236836)
,p_region_id=>wwv_flow_imp.id(219078223572236836)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(219079197087236836)
,p_chart_id=>wwv_flow_imp.id(219078664840236836)
,p_seq=>10
,p_name=>unistr('Wiek Pacjent\00F3w')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    CASE ',
'        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) < 13 THEN ''Dzieci''',
'        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) BETWEEN 13 AND 19 THEN ''Nastolatkowie''',
unistr('        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) BETWEEN 20 AND 35 THEN ''M\0142odzi doro\015Bli'''),
unistr('        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) BETWEEN 36 AND 64 THEN ''Doro\015Bli'''),
'        ELSE ''Seniorzy''',
'    END AS GRUPA_WIEKOWA,',
'    COUNT(*) AS LICZBA',
'FROM PACJENCI',
'GROUP BY ',
'    CASE ',
'        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) < 13 THEN ''Dzieci''',
'        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) BETWEEN 13 AND 19 THEN ''Nastolatkowie''',
unistr('        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) BETWEEN 20 AND 35 THEN ''M\0142odzi doro\015Bli'''),
unistr('        WHEN TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_URODZENIA) / 12) BETWEEN 36 AND 64 THEN ''Doro\015Bli'''),
'        ELSE ''Seniorzy''',
'    END',
'ORDER BY LICZBA DESC;',
''))
,p_max_row_count=>20
,p_series_name_column_name=>'GRUPA_WIEKOWA'
,p_items_value_column_name=>'LICZBA'
,p_items_label_column_name=>'GRUPA_WIEKOWA'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp.component_end;
end;
/

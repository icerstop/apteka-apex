prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Statystyki Recept'
,p_alias=>'STATYSTYKI-RECEPT'
,p_step_title=>'Statystyki Recept'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212636675118800121)
,p_plug_name=>unistr('Recepty Miesi\0119cznie')
,p_title=>unistr('Recepty Miesi\0119cznie')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(212636734044800122)
,p_region_id=>wwv_flow_imp.id(212636675118800121)
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
 p_id=>wwv_flow_imp.id(212636869452800123)
,p_chart_id=>wwv_flow_imp.id(212636734044800122)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
unistr('    TO_CHAR(data_wystawienia, ''MM'') AS MIESIAC,  -- Kolumna zawieraj\0105ca numer kwarta\0142u (1,2,3,4)'),
'    COUNT(*)                       AS LICZBA_RECEPT',
'FROM Recepty',
'GROUP BY ',
'    TO_CHAR(data_wystawienia, ''MM'')',
'ORDER BY ',
'    TO_CHAR(data_wystawienia, ''MM'');',
''))
,p_series_name_column_name=>'MIESIAC'
,p_items_value_column_name=>'LICZBA_RECEPT'
,p_items_label_column_name=>'MIESIAC'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(212636905086800124)
,p_chart_id=>wwv_flow_imp.id(212636734044800122)
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
 p_id=>wwv_flow_imp.id(212637051331800125)
,p_chart_id=>wwv_flow_imp.id(212636734044800122)
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
 p_id=>wwv_flow_imp.id(217047110698291593)
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
 p_id=>wwv_flow_imp.id(217047853648291594)
,p_plug_name=>'Statusy Recept'
,p_title=>'Statusy Recept'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(217048252750291595)
,p_region_id=>wwv_flow_imp.id(217047853648291594)
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
 p_id=>wwv_flow_imp.id(217049962474291597)
,p_chart_id=>wwv_flow_imp.id(217048252750291595)
,p_seq=>10
,p_name=>'Statusy Recept'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Zrealizowana'' AS label, COUNT(*) AS value',
'FROM RECEPTY',
'WHERE STATUS = ''Zrealizowana''',
'UNION ALL',
unistr('SELECT ''Oczekuj\0105ca'' AS label, COUNT(*) AS value'),
'FROM RECEPTY',
unistr('WHERE STATUS = ''Oczekuj\0105ca'''),
'UNION ALL',
'SELECT ''W trakcie'' AS label, COUNT(*) AS value',
'FROM RECEPTY',
'WHERE STATUS = ''W trakcie'';',
''))
,p_max_row_count=>20
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217050615337291605)
,p_plug_name=>'Czas Realizacji Recept'
,p_title=>'Czas Realizacji Recept'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(217051015516291605)
,p_region_id=>wwv_flow_imp.id(217050615337291605)
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
 p_id=>wwv_flow_imp.id(217051593449291606)
,p_chart_id=>wwv_flow_imp.id(217051015516291605)
,p_seq=>10
,p_name=>'Dni Realizacji'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NVL(DATA_REALIZACJI - DATA_WYSTAWIENIA + 1, 1) AS label, ',
'    COUNT(*) AS value',
'FROM ',
'    RECEPTY',
'WHERE ',
'    STATUS = ''Zrealizowana''',
'GROUP BY ',
'    NVL(DATA_REALIZACJI - DATA_WYSTAWIENIA + 1, 1)',
'ORDER BY ',
'    label;',
''))
,p_max_row_count=>20
,p_items_x_column_name=>'LABEL'
,p_items_y_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_color=>'#000000'
,p_line_style=>'dotted'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(212636212061800117)
,p_chart_id=>wwv_flow_imp.id(217051015516291605)
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
 p_id=>wwv_flow_imp.id(212636393790800118)
,p_chart_id=>wwv_flow_imp.id(217051015516291605)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(212638089672800135)
,p_plug_name=>unistr('\015Arednia Oczekiwania Na Recept\0119')
,p_parent_plug_id=>wwv_flow_imp.id(217050615337291605)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180745201244957815)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_avg_wait NUMBER;',
'BEGIN',
'    SELECT ROUND(AVG(NVL(DATA_REALIZACJI - DATA_WYSTAWIENIA + 1, 1)), 2)',
'      INTO v_avg_wait',
'      FROM RECEPTY',
'     WHERE STATUS = ''Zrealizowana'';',
'',
unistr('    -- "Wypisujemy" tre\015B\0107 w regionie (HTML)'),
unistr('    htp.p(''<h2>\015Aredni czas realizacji wynosi: '' || v_avg_wait || '' dni</h2>'');'),
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(217052142932291606)
,p_plug_name=>'Recepty Kwartalnie'
,p_title=>'Recepty Kwartalnie'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(180755086921957822)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(217052510646291607)
,p_region_id=>wwv_flow_imp.id(217052142932291606)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
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
 p_id=>wwv_flow_imp.id(217054208118291608)
,p_chart_id=>wwv_flow_imp.id(217052510646291607)
,p_seq=>10
,p_name=>'Recepty Kwartalnie'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
unistr('    TO_CHAR(data_wystawienia, ''Q'') AS KWARTAL,  -- Kolumna zawieraj\0105ca numer kwarta\0142u (1,2,3,4)'),
'    COUNT(*)                       AS LICZBA_RECEPT',
'FROM Recepty',
'GROUP BY ',
'    TO_CHAR(data_wystawienia, ''Q'')',
'ORDER BY ',
'    TO_CHAR(data_wystawienia, ''Q'');',
''))
,p_max_row_count=>20
,p_series_name_column_name=>'KWARTAL'
,p_items_value_column_name=>'LICZBA_RECEPT'
,p_items_label_column_name=>'KWARTAL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(217053018158291607)
,p_chart_id=>wwv_flow_imp.id(217052510646291607)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(217053692930291608)
,p_chart_id=>wwv_flow_imp.id(217052510646291607)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212636430287800119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(217052142932291606)
,p_button_name=>unistr('Miesi\0119cznie')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>unistr('Miesi\0119cznie')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212637426959800129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(212636675118800121)
,p_button_name=>'Kwartalnie'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>'Kwartalnie'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212637145018800126)
,p_name=>unistr('Poka\017C Miesi\0119cznie')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212636430287800119)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212637291274800127)
,p_event_id=>wwv_flow_imp.id(212637145018800126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(212636675118800121)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212637351478800128)
,p_event_id=>wwv_flow_imp.id(212637145018800126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217052142932291606)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212637526611800130)
,p_name=>unistr('Poka\017C kwartalnie')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212637426959800129)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212637678087800131)
,p_event_id=>wwv_flow_imp.id(212637526611800130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(217052142932291606)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(212637733362800132)
,p_event_id=>wwv_flow_imp.id(212637526611800130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(212636675118800121)
);
wwv_flow_imp.component_end;
end;
/

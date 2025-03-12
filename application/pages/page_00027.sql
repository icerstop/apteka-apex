prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'Mapa Aptek'
,p_alias=>'MAPA-APTEK'
,p_step_title=>'Mapa Aptek'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219383981897464702)
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
 p_id=>wwv_flow_imp.id(219384661161464704)
,p_plug_name=>'Mapa Aptek'
,p_region_name=>'mapa_aptek'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180689874607957765)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ''Apteka'' AS TYPE,',
'    NAZWA AS TITLE,',
'    CAST(LATITUDE AS NUMBER) AS LATITUDE,',
'    CAST(LONGITUDE AS NUMBER) AS LONGITUDE,',
'    ADRES AS DESCRIPTION',
'FROM APTEKI',
'UNION ALL',
'SELECT ',
'    ''Twoja lokalizacja'' AS TYPE,',
'    ''Moja lokalizacja'' AS TITLE,',
'    CAST(:P27_LATITUDE AS NUMBER) AS LATITUDE,',
'    CAST(:P27_LONGITUDE AS NUMBER) AS LONGITUDE,',
'    ''To jest Twoja obecna lokalizacja'' AS DESCRIPTION',
'FROM DUAL',
'WHERE :P27_LATITUDE IS NOT NULL AND :P27_LONGITUDE IS NOT NULL',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(219385082273464704)
,p_region_id=>wwv_flow_imp.id(219384661161464704)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(219385550951464706)
,p_map_region_id=>wwv_flow_imp.id(219385082273464704)
,p_name=>'Mapa Aptek'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212639428763800149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(219384661161464704)
,p_button_name=>'Lokalizacja'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>'Lokalizacja'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220192509261588502)
,p_name=>'P27_LATITUDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(219384661161464704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(220192696785588503)
,p_name=>'P27_LONGITUDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(219384661161464704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(212639553178800150)
,p_name=>'Lokalizacja'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(212639428763800149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220192439432588501)
,p_event_id=>wwv_flow_imp.id(212639553178800150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (navigator.geolocation) {',
'    navigator.geolocation.getCurrentPosition(function (position) {',
'        var latitude = position.coords.latitude;',
'        var longitude = position.coords.longitude;',
'',
unistr('        // Przypisanie warto\015Bci do ukrytych p\00F3l w APEX'),
'        $s("P27_LATITUDE", latitude);',
'        $s("P27_LONGITUDE", longitude);',
'',
unistr('        // Od\015Bwie\017Cenie regionu mapy'),
'        apex.region("mapa_aptek").refresh();',
'    }, function (error) {',
unistr('        alert("Nie uda\0142o si\0119 pobra\0107 lokalizacji u\017Cytkownika: " + error.message);'),
'    });',
'} else {',
unistr('    alert("Geolokalizacja nie jest wspierana przez Twoj\0105 przegl\0105dark\0119.");'),
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(220192713038588504)
,p_event_id=>wwv_flow_imp.id(212639553178800150)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(219384661161464704)
);
wwv_flow_imp.component_end;
end;
/

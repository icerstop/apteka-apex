prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Mapa Szpitali'
,p_alias=>'MAPA-SZPITALI'
,p_step_title=>'Mapa Szpitali'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'19'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219252211299334391)
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
 p_id=>wwv_flow_imp.id(219252947854334393)
,p_plug_name=>'Mapa Szpitali'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180689874607957765)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SZPITALE'
,p_include_rowid_column=>false
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(219253352822334394)
,p_region_id=>wwv_flow_imp.id(219252947854334393)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(219253863783334399)
,p_map_region_id=>wwv_flow_imp.id(219253352822334394)
,p_name=>'Mapa Szpitali'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_table_name=>'SZPITALE'
,p_include_rowid_column=>false
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'NAZWA'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp.component_end;
end;
/

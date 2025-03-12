prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 292
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>67541494403004847
,p_default_application_id=>292
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155865'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(180918827418958116)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(180678387864957749)
,p_default_dialog_template=>wwv_flow_imp.id(180673107803957745)
,p_error_template=>wwv_flow_imp.id(180663113663957736)
,p_printer_friendly_template=>wwv_flow_imp.id(180678387864957749)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(180663113663957736)
,p_default_button_template=>wwv_flow_imp.id(180828667132957905)
,p_default_region_template=>wwv_flow_imp.id(180755086921957822)
,p_default_chart_template=>wwv_flow_imp.id(180755086921957822)
,p_default_form_template=>wwv_flow_imp.id(180755086921957822)
,p_default_reportr_template=>wwv_flow_imp.id(180755086921957822)
,p_default_tabform_template=>wwv_flow_imp.id(180755086921957822)
,p_default_wizard_template=>wwv_flow_imp.id(180755086921957822)
,p_default_menur_template=>wwv_flow_imp.id(180767403354957834)
,p_default_listr_template=>wwv_flow_imp.id(180755086921957822)
,p_default_irr_template=>wwv_flow_imp.id(180745201244957815)
,p_default_report_template=>wwv_flow_imp.id(180793411418957859)
,p_default_label_template=>wwv_flow_imp.id(180826122711957897)
,p_default_menu_template=>wwv_flow_imp.id(180830208787957909)
,p_default_calendar_template=>wwv_flow_imp.id(180830324906957913)
,p_default_list_template=>wwv_flow_imp.id(180824299732957892)
,p_default_nav_list_template=>wwv_flow_imp.id(180815205378957885)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(180815205378957885)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(180813437881957883)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(180691282792957766)
,p_default_dialogr_template=>wwv_flow_imp.id(180688443351957763)
,p_default_option_label=>wwv_flow_imp.id(180826122711957897)
,p_default_required_label=>wwv_flow_imp.id(180827472801957900)
,p_default_navbar_list_template=>wwv_flow_imp.id(180816228207957886)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>71
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

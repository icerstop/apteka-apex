prompt --application/shared_components/user_interface/lovs/zamowienia_status
begin
--   Manifest
--     ZAMOWIENIA.STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>67541494403004847
,p_default_application_id=>292
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155865'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(251781241890063196)
,p_lov_name=>'ZAMOWIENIA.STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(251781241890063196)||'.'
,p_location=>'STATIC'
,p_version_scn=>458054625
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(251781527022063196)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Zrealizowane'
,p_lov_return_value=>'Zrealizowane'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(251781936412063197)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Oczekuj\0105ce')
,p_lov_return_value=>unistr('Oczekuj\0105ce')
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(251782358209063199)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'W trakcie'
,p_lov_return_value=>'W trakcie'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/szpitale_typy
begin
--   Manifest
--     SZPITALE.TYPY
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
 p_id=>wwv_flow_imp.id(213216481140165304)
,p_lov_name=>'SZPITALE.TYPY'
,p_lov_query=>'.'||wwv_flow_imp.id(213216481140165304)||'.'
,p_location=>'STATIC'
,p_version_scn=>452328969
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(213216706767165313)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Specjalistyczny'
,p_lov_return_value=>'Specjalistyczny'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(213217163048165318)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Dzieci\0119cy')
,p_lov_return_value=>unistr('Dzieci\0119cy')
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(213217534094165319)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Publiczny'
,p_lov_return_value=>'Publiczny'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(213217996242165319)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Prywatny'
,p_lov_return_value=>'Prywatny'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(213218352001165320)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Hospicjum'
,p_lov_return_value=>'Hospicjum'
);
wwv_flow_imp.component_end;
end;
/

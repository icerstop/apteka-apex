prompt --application/shared_components/user_interface/lovs/lekarze_imie
begin
--   Manifest
--     LEKARZE.IMIE
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
 p_id=>wwv_flow_imp.id(181055566037958568)
,p_lov_name=>'LEKARZE.IMIE'
,p_lov_query=>'select IMIE || '' '' || NAZWISKO AS IMIE_NAZWISKO, LEKARZ_ID FROM LEKARZE'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'LEKARZE'
,p_return_column_name=>'LEKARZ_ID'
,p_display_column_name=>'IMIE_NAZWISKO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>452378013
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/farmaceuci_imie
begin
--   Manifest
--     FARMACEUCI.IMIE
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
 p_id=>wwv_flow_imp.id(181039066711958516)
,p_lov_name=>'FARMACEUCI.IMIE'
,p_lov_query=>'SELECT IMIE || '' '' || NAZWISKO AS IMIE_NAZWISKO, FARMACEUTA_ID FROM FARMACEUCI'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'FARMACEUCI'
,p_return_column_name=>'FARMACEUTA_ID'
,p_display_column_name=>'IMIE_NAZWISKO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>448882639
);
wwv_flow_imp.component_end;
end;
/

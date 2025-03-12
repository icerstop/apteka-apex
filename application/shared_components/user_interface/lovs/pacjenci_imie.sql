prompt --application/shared_components/user_interface/lovs/pacjenci_imie
begin
--   Manifest
--     PACJENCI.IMIE
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
 p_id=>wwv_flow_imp.id(181054884840958566)
,p_lov_name=>'PACJENCI.IMIE'
,p_lov_query=>'SELECT IMIE || '' '' || NAZWISKO AS IMIE_NAZWISKO, PACJENT_ID FROM PACJENCI'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'PACJENCI'
,p_return_column_name=>'PACJENT_ID'
,p_display_column_name=>'IMIE_NAZWISKO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>452296979
);
wwv_flow_imp.component_end;
end;
/

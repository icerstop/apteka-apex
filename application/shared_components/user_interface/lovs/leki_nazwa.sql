prompt --application/shared_components/user_interface/lovs/leki_nazwa
begin
--   Manifest
--     LEKI.NAZWA
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
 p_id=>wwv_flow_imp.id(181101438371958715)
,p_lov_name=>'LEKI.NAZWA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nazwa as nazwa_leku, lek_id from leki',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'LEKI'
,p_return_column_name=>'LEK_ID'
,p_display_column_name=>'NAZWA_LEKU'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>453132348
);
wwv_flow_imp.component_end;
end;
/

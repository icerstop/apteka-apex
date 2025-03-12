prompt --application/shared_components/user_interface/lovs/recepty_status
begin
--   Manifest
--     RECEPTY.STATUS
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
 p_id=>wwv_flow_imp.id(181007497032958417)
,p_lov_name=>'RECEPTY.STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT STATUS',
'FROM RECEPTY;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'RECEPTY'
,p_return_column_name=>'STATUS'
,p_display_column_name=>'STATUS'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'STATUS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>452321496
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/apteki_nazwa
begin
--   Manifest
--     APTEKI.NAZWA
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
 p_id=>wwv_flow_imp.id(180976452729958315)
,p_lov_name=>'APTEKI.NAZWA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'APTEKI'
,p_return_column_name=>'APTEKA_ID'
,p_display_column_name=>'NAZWA'
,p_default_sort_column_name=>'NAZWA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>446762489
);
wwv_flow_imp.component_end;
end;
/

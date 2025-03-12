prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 292
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>67541494403004847
,p_default_application_id=>292
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155865'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(349984928939694236)
,p_name=>'SYS_C00134461'
,p_message_text=>unistr('Nie mo\017Cna usun\0105\0107, poniewa\017C recepta jest wykorzystana w innej tabeli')
,p_version_scn=>472719316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(349982728847686926)
,p_name=>'SYS_C00134461'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna usun\0105\0107, poniewa\017C recepta jest wykorzystana w innej tabeli')
,p_version_scn=>472718796
);
wwv_flow_imp.component_end;
end;
/

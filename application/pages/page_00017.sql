prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>67541494403004847
,p_default_application_id=>292
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS155865'
);
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Rodzicepacjentow'
,p_alias=>'RODZICEPACJENTOW'
,p_page_mode=>'MODAL'
,p_step_title=>'Rodzicepacjentow'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(180652524658957697)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181069310748958615)
,p_plug_name=>'Rodzicepacjentow'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180688443351957763)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RODZICEPACJENTOW'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181073905017958621)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180691282792957766)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181074349525958621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(181073905017958621)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181075765061958622)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(181073905017958621)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_RODZIC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181076162665958623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(181073905017958621)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_RODZIC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181076532052958623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(181073905017958621)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj rodzica pacjenta'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_RODZIC_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181069727003958616)
,p_name=>'P17_RODZIC_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_item_source_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rodzic ID'
,p_source=>'RODZIC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181070124823958616)
,p_name=>'P17_IMIE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_item_source_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imie'
,p_source=>'IMIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181070538796958617)
,p_name=>'P17_NAZWISKO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_item_source_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nazwisko'
,p_source=>'NAZWISKO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181070946389958617)
,p_name=>'P17_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_item_source_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adres'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181071354270958618)
,p_name=>'P17_TELEFON'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_item_source_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_prompt=>'Telefon'
,p_source=>'TELEFON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181071731625958618)
,p_name=>'P17_DZIECKO_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_item_source_plug_id=>wwv_flow_imp.id(181069310748958615)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dziecko'
,p_source=>'DZIECKO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PACJENCI.IMIE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(180826122711957897)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'NONE'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869023932945640)
,p_validation_name=>'null2'
,p_validation_sequence=>20
,p_validation=>':P17_IMIE IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''imi\0119'' nie mo\017Ce by\0107 puste.')
,p_associated_item=>wwv_flow_imp.id(181070124823958616)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869147922945641)
,p_validation_name=>'null3'
,p_validation_sequence=>30
,p_validation=>':P17_NAZWISKO IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''nazwisko'' nie mo\017Ce by\0107 puste!')
,p_associated_item=>wwv_flow_imp.id(181070538796958617)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869242570945642)
,p_validation_name=>'null4'
,p_validation_sequence=>40
,p_validation=>':P17_adres IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''adres'' nie mo\017Ce by\0107 puste.')
,p_associated_item=>wwv_flow_imp.id(181070946389958617)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869332931945643)
,p_validation_name=>'null6'
,p_validation_sequence=>50
,p_validation=>':P17_telefon IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''telefon'' nie mo\017Ce by\0107 puste.')
,p_associated_item=>wwv_flow_imp.id(181071354270958618)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869445543945644)
,p_validation_name=>'null5'
,p_validation_sequence=>60
,p_validation=>':P17_dziecko_id IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''dziecko id'' nie mo\017Ce by\0107 puste.')
,p_associated_item=>wwv_flow_imp.id(181071731625958618)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869561988945645)
,p_validation_name=>'9cyfr'
,p_validation_sequence=>70
,p_validation=>'REGEXP_LIKE(:P17_telefon, ''^[0-9]{9}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''telefon'' musi zawiera\0107 tylko i wy\0142\0105cznie 9 cyfr!')
,p_associated_item=>wwv_flow_imp.id(181071354270958618)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869619493945646)
,p_validation_name=>'litery2'
,p_validation_sequence=>80
,p_validation=>'REGEXP_LIKE(:P17_nazwisko, ''^[[:alpha:]]+$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''nazwisko'' musi zawiera\0107 tylko litery.')
,p_associated_item=>wwv_flow_imp.id(181070538796958617)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869768587945647)
,p_validation_name=>'litery1'
,p_validation_sequence=>90
,p_validation=>'REGEXP_LIKE(:P17_imie, ''^[[:alpha:]]+$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''imi\0119'' mo\017Ce zawiera\0107 tylko litery.')
,p_associated_item=>wwv_flow_imp.id(181070124823958616)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181074402616958621)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181074349525958621)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181075266727958622)
,p_event_id=>wwv_flow_imp.id(181074402616958621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181077305569958624)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(181069310748958615)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Rodzicepacjentow'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>181077305569958624
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181077781966958626)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>181077781966958626
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181076942635958624)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(181069310748958615)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Rodzicepacjentow'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>181076942635958624
);
wwv_flow_imp.component_end;
end;
/

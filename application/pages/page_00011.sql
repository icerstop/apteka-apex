prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Pacjenci'
,p_alias=>'PACJENCI'
,p_page_mode=>'MODAL'
,p_step_title=>'Pacjenci'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(180652524658957697)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181021392210958464)
,p_plug_name=>'Pacjenci'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180688443351957763)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PACJENCI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181026691594958471)
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
 p_id=>wwv_flow_imp.id(181027065029958471)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(181026691594958471)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181028477444958473)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(181026691594958471)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_PACJENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181028896567958473)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(181026691594958471)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_PACJENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181029240559958474)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(181026691594958471)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj pacjenta'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_PACJENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181021733135958464)
,p_name=>'P11_PACJENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_source=>'PACJENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181022197595958465)
,p_name=>'P11_IMIE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_prompt=>'Imie'
,p_source=>'IMIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181022541545958465)
,p_name=>'P11_NAZWISKO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_prompt=>'Nazwisko'
,p_source=>'NAZWISKO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181022942758958466)
,p_name=>'P11_DATA_URODZENIA'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_prompt=>'Data Urodzenia'
,p_source=>'DATA_URODZENIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181023342155958467)
,p_name=>'P11_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_prompt=>'Adres'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181023752730958468)
,p_name=>'P11_TELEFON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_prompt=>'Telefon'
,p_source=>'TELEFON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181024114566958468)
,p_name=>'P11_PESEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_item_source_plug_id=>wwv_flow_imp.id(181021392210958464)
,p_prompt=>'Pesel'
,p_source=>'PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183283532350062113)
,p_validation_name=>'niemozebycpuste'
,p_validation_sequence=>10
,p_validation=>'P11_IMIE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''Imi\0119'' nie mo\017Ce by\0107 puste')
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(181022197595958465)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183283847688062116)
,p_validation_name=>'isntNULL_'
,p_validation_sequence=>20
,p_validation=>'P11_NAZWISKO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''Nazwisko'' nie mo\017Ce by\0107 puste!')
,p_associated_item=>wwv_flow_imp.id(181022541545958465)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183283926305062117)
,p_validation_name=>'NOTnull'
,p_validation_sequence=>30
,p_validation=>'P11_ADRES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''Adres'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181023342155958467)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183284004081062118)
,p_validation_name=>'isntNULL'
,p_validation_sequence=>40
,p_validation=>'P11_DATA_URODZENIA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''Data Urodzenia'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181022942758958466)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183284144997062119)
,p_validation_name=>'przyszlosc'
,p_validation_sequence=>50
,p_validation=>':P11_DATA_URODZENIA <= SYSDATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Niepoprawna data urodzenia'
,p_associated_item=>wwv_flow_imp.id(181022942758958466)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183284380422062121)
,p_validation_name=>unistr('Pole ''Telefon'' musi zawiera\0107 wy\0142\0105cznie cyfry')
,p_validation_sequence=>50
,p_validation=>'P11_TELEFON'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>unistr('Pole ''Telefon'' musi zawiera\0107 wy\0142\0105cznie cyfry')
,p_associated_item=>wwv_flow_imp.id(181023752730958468)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183284251606062120)
,p_validation_name=>unistr('Pole ''Telefon'' nie mo\017Ce by\0107 puste')
,p_validation_sequence=>60
,p_validation=>'P11_TELEFON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''Telefon'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181023752730958468)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183284490657062122)
,p_validation_name=>unistr('Pole ''PESEL'' nie mo\017Ce by\0107 puste')
,p_validation_sequence=>80
,p_validation=>'P11_PESEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''PESEL'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181024114566958468)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183284541805062123)
,p_validation_name=>'Niepoprawne znaki w polu ''PESEL'''
,p_validation_sequence=>90
,p_validation=>'P11_PESEL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Niepoprawne znaki w polu ''PESEL'''
,p_associated_item=>wwv_flow_imp.id(181024114566958468)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(194524639328862727)
,p_validation_name=>'wylacznieLitery'
,p_validation_sequence=>100
,p_validation=>'REGEXP_LIKE(:P11_IMIE, ''^[A-Za-z]+$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Imi\0119'' musi zawiera\0107 wy\0142\0105cznie litery')
,p_associated_item=>wwv_flow_imp.id(181022197595958465)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(194524743837862728)
,p_validation_name=>'tylkoLitery'
,p_validation_sequence=>110
,p_validation=>'REGEXP_LIKE(:P11_NAZWISKO, ''^[A-Za-z]+$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Nazwisko'' musi zawiera\0107 wy\0142\0105cznie litery')
,p_associated_item=>wwv_flow_imp.id(181022541545958465)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283867406927945624)
,p_validation_name=>'11cyfr'
,p_validation_sequence=>120
,p_validation=>'REGEXP_LIKE(:P11_PESEL, ''^[0-9]{11}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''PESEL'' musi sk\0142ada\0107 si\0119 tylko i wy\0142\0105cznie z 11 cyfr.')
,p_associated_item=>wwv_flow_imp.id(181024114566958468)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283867524696945625)
,p_validation_name=>'9cyfr'
,p_validation_sequence=>130
,p_validation=>'REGEXP_LIKE(:P11_TELEFON, ''^[0-9]{9}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''TELEFON'' musi sk\0142ada\0107 si\0119 z 9 cyfr.')
,p_associated_item=>wwv_flow_imp.id(181023752730958468)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181027191094958471)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181027065029958471)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181027925659958472)
,p_event_id=>wwv_flow_imp.id(181027191094958471)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181030004425958474)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(181021392210958464)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Pacjenci'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>181030004425958474
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181030458099958475)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>181030458099958475
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181029604628958474)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(181021392210958464)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Pacjenci'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>181029604628958474
);
wwv_flow_imp.component_end;
end;
/

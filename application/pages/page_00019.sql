prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Szpitale'
,p_alias=>'SZPITALE'
,p_page_mode=>'MODAL'
,p_step_title=>'Szpitale'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(180652524658957697)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181084757687958665)
,p_plug_name=>'Szpitale'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(180688443351957763)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SZPITALE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181088690938958669)
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
 p_id=>wwv_flow_imp.id(181089018404958670)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(181088690938958669)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181090489827958671)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(181088690938958669)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_SZPITAL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181090825686958671)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(181088690938958669)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_SZPITAL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181091285073958672)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(181088690938958669)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(180828667132957905)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj szpital'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_SZPITAL_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181085139941958665)
,p_name=>'P19_SZPITAL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Szpital ID'
,p_source=>'SZPITAL_ID'
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
 p_id=>wwv_flow_imp.id(181085590164958666)
,p_name=>'P19_NAZWA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_prompt=>'Nazwa'
,p_source=>'NAZWA'
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
 p_id=>wwv_flow_imp.id(181085947902958666)
,p_name=>'P19_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
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
 p_id=>wwv_flow_imp.id(181086377314958667)
,p_name=>'P19_NUMER_TELEFONU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_prompt=>'Numer Telefonu'
,p_source=>'NUMER_TELEFONU'
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
 p_id=>wwv_flow_imp.id(181086791425958667)
,p_name=>'P19_TYP_SZPITALA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_prompt=>'Typ Szpitala'
,p_source=>'TYP_SZPITALA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SZPITALE.TYPY'
,p_lov=>'.'||wwv_flow_imp.id(213216481140165304)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(180827472801957900)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(194526974886862750)
,p_name=>'P19_LONGITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_prompt=>unistr('D\0142ugo\015B\0107 Geograficzna')
,p_source=>'LONGITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(180826122711957897)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(341242716147118101)
,p_name=>'P19_LATITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_item_source_plug_id=>wwv_flow_imp.id(181084757687958665)
,p_prompt=>unistr('Szeroko\015B\0107 Geograficzna')
,p_source=>'LATITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(180826122711957897)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283865324743945603)
,p_validation_name=>unistr('Nazwa szpitala nie mo\017Ce by\0107 pusta')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P19_NAZWA IS NULL OR TRIM(:P19_NAZWA) = '''' THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Nazwa szpitala nie mo\017Ce by\0107 pusta.')
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(341243192496118105)
,p_validation_name=>'New_3'
,p_validation_sequence=>10
,p_validation=>':P19_LONGITUDE >= -180 AND :P19_LONGITUDE <= 180'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''D\0142ugo\015B\0107 Geograficzna'' musi sk\0142ada\0107 si\0119 z liczb i by\0107 w zakresie [-180, 180]')
,p_associated_item=>wwv_flow_imp.id(194526974886862750)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283865410084945604)
,p_validation_name=>unistr('Adres szpitala nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :P19_ADRES IS NULL OR TRIM(:P19_ADRES) = '''' THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Adres szpitala nie mo\017Ce by\0107 pusty.')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283869938423945649)
,p_validation_name=>'null2'
,p_validation_sequence=>40
,p_validation=>':P19_NAZWA IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Nazwa'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181085590164958666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(283870079194945650)
,p_validation_name=>'null3'
,p_validation_sequence=>50
,p_validation=>':P19_adres IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Adres'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181085947902958666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(318002902464437601)
,p_validation_name=>'null4'
,p_validation_sequence=>60
,p_validation=>':P19_numer_telefonu IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pole ''Numer Telefonu'' nie mo\017Ce by\0107 puste'),
''))
,p_associated_item=>wwv_flow_imp.id(181086377314958667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(318003053788437602)
,p_validation_name=>'null5'
,p_validation_sequence=>70
,p_validation=>':P19_typ_szpitala IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Typ Szpitala'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(181086791425958667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(318003178980437603)
,p_validation_name=>'9cfyr'
,p_validation_sequence=>80
,p_validation=>'REGEXP_LIKE(:P19_NUMER_TELEFONU, ''^[0-9]{9}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Numer Telefonu'' musi zawiera\0107 9 cyfr')
,p_associated_item=>wwv_flow_imp.id(181086377314958667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(318003262982437604)
,p_validation_name=>'litery'
,p_validation_sequence=>90
,p_validation=>'REGEXP_LIKE(:P19_typ_szpitala, ''^[[:alpha:]]+$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Typ Szpitala'' musi sk\0142ada\0107 si\0119 z liter')
,p_associated_item=>wwv_flow_imp.id(181086791425958667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(318003301332437605)
,p_validation_name=>'tylkoLitery1'
,p_validation_sequence=>100
,p_validation=>'REGEXP_LIKE(:P19_nazwa, ''^[[:alpha:] ]+$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Nazwa'' mo\017Ce sk\0142ada\0107 si\0119 tylko z liter.')
,p_associated_item=>wwv_flow_imp.id(181085590164958666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(341242801123118102)
,p_validation_name=>'New'
,p_validation_sequence=>110
,p_validation=>'P19_LONGITUDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''D\0142ugo\015B\0107 Geograficzna'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(194526974886862750)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(341242926141118103)
,p_validation_name=>'New_1'
,p_validation_sequence=>120
,p_validation=>'P19_LATITUDE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pole ''Szeroko\015B\0107 Geograficzna'' nie mo\017Ce by\0107 puste')
,p_associated_item=>wwv_flow_imp.id(341242716147118101)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(341243047018118104)
,p_validation_name=>'New_2'
,p_validation_sequence=>130
,p_validation=>'P19_LONGITUDE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>unistr('Pole ''D\0142ugo\015B\0107 Geograficzna'' musi sk\0142ada\0107 si\0119 z liczb i by\0107 w zakresie [-180, 180]')
,p_associated_item=>wwv_flow_imp.id(194526974886862750)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(341243260096118106)
,p_validation_name=>'New_4'
,p_validation_sequence=>140
,p_validation=>'P19_LATITUDE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>unistr('Pole ''Szeroko\015B\0107 Geograficzna'' musi sk\0142ada\0107 si\0119 z liczb i by\0107 w zakresie [-90, 90]')
,p_associated_item=>wwv_flow_imp.id(341242716147118101)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(341243396686118107)
,p_validation_name=>'New_5'
,p_validation_sequence=>150
,p_validation=>':P19_LATITUDEE >= -90 AND :P19_LATITUDE <= 90'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Pole ''Szeroko\015B\0107 Geograficzna'' musi sk\0142ada\0107 si\0119 z liczb i by\0107 w zakresie [-90, 90]')
,p_associated_item=>wwv_flow_imp.id(341242716147118101)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181089122409958670)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181089018404958670)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181089943002958671)
,p_event_id=>wwv_flow_imp.id(181089122409958670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181092014202958673)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(181084757687958665)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Szpitale'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>181092014202958673
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181092460629958673)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>181092460629958673
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(181091681017958672)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(181084757687958665)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Szpitale'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>181091681017958672
);
wwv_flow_imp.component_end;
end;
/

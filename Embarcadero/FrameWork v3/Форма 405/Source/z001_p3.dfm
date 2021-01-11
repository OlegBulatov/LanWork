inherited z001_p3_frame: Tz001_p3_frame
  Width = 1035
  Height = 669
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1035
    Height = 644
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 3
            LastCol = 16
            Caption = 'Параметры расчетов по операциям с ценными бумагами'
          end
          item
            FirstCol = 17
            LastCol = 21
            Caption = 'Характеристика ценной бумаги'
          end
          item
            FirstCol = 26
            LastCol = 29
            Caption = 'Контрагент'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 11
            LastCol = 13
            Caption = 'Резидент'
          end
          item
            FirstCol = 14
            LastCol = 16
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 26
            LastCol = 27
            Caption = 'Банк-нерезидента'
          end
          item
            FirstCol = 28
            LastCol = 29
            Caption = 'Нерезидент'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'N_GR'
        PickList.Strings = ()
        Title.Caption = '№ раз.'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = 'Стр.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OP'
        PickList.Strings = ()
        Title.Caption = 'Дата операции'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T011_TYPE_ID'
        PickList.Strings = ()
        Title.Caption = 'Код опер.'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T006_NAME'
        PickList.Strings = ()
        Title.Caption = 'Код н. пл.'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Кол-во бумаг'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_CR_ID'
        PickList.Strings = ()
        Title.Caption = 'Код вал. плат.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM'
        PickList.Strings = ()
        Title.Caption = 'Всего'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PROC'
        PickList.Strings = ()
        Title.Caption = 'Проценты'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Всего ($)'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROC_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Проценты ($)'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T033_ID'
        PickList.Strings = ()
        Title.Caption = 'ID типа'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T012_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T012_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T034_ID'
        PickList.Strings = ()
        Title.Caption = 'ID типа'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T013_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T013_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C10'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T025_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код типа эмитента (ДИТ)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Код типа ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_ON'
        PickList.Strings = ()
        Title.Caption = 'Дата регистр.'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OFF'
        PickList.Strings = ()
        Title.Caption = 'Дата погашения'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_CR_ID'
        PickList.Strings = ()
        Title.Caption = 'Код вал. ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N8'
        PickList.Strings = ()
        Title.Caption = 'МЕНА'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N9'
        PickList.Strings = ()
        Title.Caption = 'РАССРОЧКА'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_10'
        PickList.Strings = ()
        Title.Caption = 'ПАКЕТ'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C11'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C12'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C16'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C17'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C18'
        PickList.Strings = ()
        Title.Caption = 'BIC уполномоченного банка'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C19'
        PickList.Strings = ()
        Title.Caption = 'SWIFT банка-нерезидента'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_C20'
        PickList.Strings = ()
        Title.Caption = 'Цифр. код страны банка-нерезидента'
        Width = 120
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1035
  end
end

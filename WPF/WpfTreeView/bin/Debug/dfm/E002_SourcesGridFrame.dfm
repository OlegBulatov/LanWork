inherited E002_SourcesGrid: TE002_SourcesGrid
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T002_BANK_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код банка'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название банка'
        Width = 350
        Visible = True
      end>
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select distinct'
      '--  T030_ID, '
      '  ISIN,'
      '  T027_SEC_TYPE,'
      '--  T002_NUMB_IN_YEA_DESC,'
      '  T002_BANK_CODE,'
      '  BANK_NAME'
      'from V_405_DR_SOURCES'
      ':T030_IDS')
    Variables.Data = {
      0300000001000000090000003A543033305F4944530100000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543033305F49440100000000000D000000543032
      375F5345435F5459504501000000000015000000543030325F4E554D425F494E
      5F5945415F444553430100000000000E000000543030325F42414E4B5F434F44
      450100000000000900000042414E4B5F4E414D45010000000000040000004953
      494E010000000000}
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 255
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 250
    end
  end
end

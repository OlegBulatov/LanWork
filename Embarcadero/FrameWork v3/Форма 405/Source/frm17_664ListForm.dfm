inherited frm17_664List: Tfrm17_664List
  Left = 140
  Top = 145
  Caption = 'Данные формы 664'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T090_MONTH_DATE'
          SortType = stAsc
        end
        item
          FieldName = 'T090_BANC_KODE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T090_BANC_KODE'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер КО'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование КО'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T090_MONTH_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата периода с фикт.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период с фикт.'
          Width = 110
          Visible = True
        end>
    end
  end
  inherited pnlButtons: TPanel
    TabOrder = 2
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      ' T090_BANC_KODE,'
      ' T090_ID,'
      ' T090_MONTH_DATE,'
      ' T055_LONG_NAME,'
      ' BANK_NAME'
      'from V_405_DBF_664')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543039305F49440100000000000E000000543035
      355F4C4F4E475F4E414D450100000000000E000000543039305F42414E435F4B
      4F44450100000000000F000000543039305F4D4F4E54485F4441544501000000
      00000900000042414E4B5F4E414D45010000000000}
    object odsListT090_BANC_KODE: TStringField
      FieldName = 'T090_BANC_KODE'
      Required = True
      Size = 9
    end
    object odsListT090_ID: TFloatField
      FieldName = 'T090_ID'
      Required = True
    end
    object odsListT090_MONTH_DATE: TDateTimeField
      FieldName = 'T090_MONTH_DATE'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 250
    end
  end
  inherited OpenDialog: TOpenDialog
    Top = 136
  end
end

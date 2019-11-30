inherited E001_LogMIP: TE001_LogMIP
  Width = 994
  Height = 479
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 265
    Width = 994
    Height = 10
    Cursor = crVSplit
    Align = alTop
  end
  inherited xxxDBGrid: TxxxDBGrid
    Width = 994
    Height = 219
    Align = alTop
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end
      item
        Headers = <>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T170_SHORT_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Эмитент'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_INN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'ИНН'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_USD_RATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Операции - Цена, $'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_SHS3_USD_SAL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '405 shs3 млн долл'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_SHS3_CNT_SAL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '405 shs3 млн шт'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_USD_SAL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '405 dr млн долл'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_DR_CNT_SAL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '405 dr млн шт'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_EMISS_SIZE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Эмиссия'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_USD_SAL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Движение по 405 млн.$'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_405_CNT_SAL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Движение по 405 млн.шт'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_OTH_CNT_711_405'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Прочие шт., сокращение разрыва 711 и 405'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_OTH_USD_E'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Прочие $ Всего'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_O_PER_USD'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Переоценка (если не автомат)'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_CNT_RATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Остаток млн. шт. оценка'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_E_USD_RATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Остаток $'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T170_LOG_TEXT'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Текст ошибки'
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 994
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 994
    inherited Panel1: TPanel
      Left = 967
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 275
    Width = 994
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 10
      Top = 2
      Width = 119
      Height = 17
      AutoSize = False
      Caption = 'Текст ошибки :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel [5]
    Left = 0
    Top = 300
    Width = 994
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object DBMemo1: TDBMemo
      Left = 0
      Top = 4
      Width = 529
      Height = 101
      AutoDisplay = False
      DataField = 'T170_LOG_TEXT'
      DataSource = dsList
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '  T170_SHORT_NAME,'
      '  T170_INN,'
      '  T170_O_USD_RATE,'
      '  T170_O_405_SHS3_USD_SAL,'
      '  T170_O_405_SHS3_CNT_SAL,'
      '  T170_O_DR_USD_SAL,'
      '  T170_O_DR_CNT_SAL,'
      '  T170_E_EMISS_SIZE,'
      '  T170_O_405_USD_SAL,'
      '  T170_O_405_CNT_SAL,'
      '  T170_O_OTH_CNT_711_405,'
      '  T170_O_OTH_USD_E,'
      '  T170_O_PER_USD,'
      '  T170_E_CNT_RATE,'
      '  T170_E_USD_RATE,'
      '  T170_LOG_TEXT'
      'from T170_MIP_LOG')
    QBEDefinition.QBEFieldDefs = {
      04000000100000000F000000543137305F53484F52545F4E414D450100000000
      0008000000543137305F494E4E0100000000000F000000543137305F4F5F5553
      445F5241544501000000000017000000543137305F4F5F3430355F534853335F
      5553445F53414C01000000000017000000543137305F4F5F3430355F53485333
      5F434E545F53414C01000000000011000000543137305F4F5F44525F5553445F
      53414C01000000000011000000543137305F4F5F44525F434E545F53414C0100
      0000000011000000543137305F455F454D4953535F53495A4501000000000012
      000000543137305F4F5F3430355F5553445F53414C0100000000001200000054
      3137305F4F5F3430355F434E545F53414C01000000000016000000543137305F
      4F5F4F54485F434E545F3731315F34303501000000000010000000543137305F
      4F5F4F54485F5553445F450100000000000E000000543137305F4F5F5045525F
      5553440100000000000F000000543137305F455F434E545F5241544501000000
      00000F000000543137305F455F5553445F524154450100000000000D00000054
      3137305F4C4F475F54455854010000000000}
    object odsListT170_SHORT_NAME: TStringField
      FieldName = 'T170_SHORT_NAME'
      Size = 255
    end
    object odsListT170_INN: TStringField
      FieldName = 'T170_INN'
      Size = 25
    end
    object odsListT170_O_USD_RATE: TFloatField
      FieldName = 'T170_O_USD_RATE'
    end
    object odsListT170_O_405_SHS3_USD_SAL: TFloatField
      FieldName = 'T170_O_405_SHS3_USD_SAL'
    end
    object odsListT170_O_405_SHS3_CNT_SAL: TFloatField
      FieldName = 'T170_O_405_SHS3_CNT_SAL'
    end
    object odsListT170_O_DR_USD_SAL: TFloatField
      FieldName = 'T170_O_DR_USD_SAL'
    end
    object odsListT170_O_DR_CNT_SAL: TFloatField
      FieldName = 'T170_O_DR_CNT_SAL'
    end
    object odsListT170_E_EMISS_SIZE: TFloatField
      FieldName = 'T170_E_EMISS_SIZE'
    end
    object odsListT170_O_405_USD_SAL: TFloatField
      FieldName = 'T170_O_405_USD_SAL'
    end
    object odsListT170_O_405_CNT_SAL: TFloatField
      FieldName = 'T170_O_405_CNT_SAL'
    end
    object odsListT170_O_OTH_CNT_711_405: TFloatField
      FieldName = 'T170_O_OTH_CNT_711_405'
    end
    object odsListT170_O_OTH_USD_E: TFloatField
      FieldName = 'T170_O_OTH_USD_E'
    end
    object odsListT170_O_PER_USD: TFloatField
      FieldName = 'T170_O_PER_USD'
    end
    object odsListT170_E_CNT_RATE: TFloatField
      FieldName = 'T170_E_CNT_RATE'
    end
    object odsListT170_E_USD_RATE: TFloatField
      FieldName = 'T170_E_USD_RATE'
    end
    object odsListT170_LOG_TEXT: TStringField
      FieldName = 'T170_LOG_TEXT'
      Size = 2000
    end
  end
end

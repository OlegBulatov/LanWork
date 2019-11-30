inherited A30_SumMinus: TA30_SumMinus
  Width = 912
  Height = 446
  inherited xxxDBGrid: TxxxDBGrid
    Top = 127
    Width = 912
    Height = 319
    AdvSettings.Indexes = <
      item
        FieldName = 'T072_ID'
        SortType = stAsc
      end
      item
        FieldName = 'T071_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 4
            LastCol = 5
            Caption = 'Мат. страна'
          end
          item
            FirstCol = 6
            LastCol = 7
            Caption = 'Страна контр.'
          end
          item
            FirstCol = 8
            LastCol = 10
            Caption = 'Валюта'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T072_ID'
        PickList.Strings = ()
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T072_NAME_EN'
        PickList.Strings = ()
        Title.Caption = 'Инструмент'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T071_ID'
        PickList.Strings = ()
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T071_NAME_EN'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_M_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'ISO'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T062_M_LAT2'
        PickList.Strings = ()
        Title.Caption = 'LAT2'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_C_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'ISO'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T062_C_LAT2'
        PickList.Strings = ()
        Title.Caption = 'LAT2'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'ISO'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISO_LAT3'
        PickList.Strings = ()
        Title.Caption = 'LAT3'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISO_LAT3_BIS'
        PickList.Strings = ()
        Title.Caption = 'LAT3 БМР'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T070_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DATA_ALL'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$ (данные)'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_MINUS'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$ (корр.)'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_MINUS'
        PickList.Strings = ()
        Title.Caption = 'Отрицательный остаток'
        Width = 90
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 102
    Width = 912
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 912
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    inline VersionFilter: TA114_ReportVersion
      Left = 4
      Top = 4
      inherited lcb: TxxxDBLookupCheckCombo
        LookupField = 'T070_ID'
        OnCloseUp = VersionFilterlcbCloseUp
      end
      inherited cb: TCheckBox
        Enabled = False
        Visible = False
      end
    end
    inline BisSectorFilter: TA115_ReportBisSector
      Left = 4
      Top = 54
      TabOrder = 1
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
    end
    inline BisInstrumentFilter: TA116_ReportInstrument
      Left = 4
      Top = 29
      TabOrder = 2
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
    end
    object Button1: TButton
      Left = 392
      Top = 5
      Width = 95
      Height = 25
      Action = actRefresh
      TabOrder = 3
    end
    inline A30_ShowMinus1: TA30_ShowMinus
      Left = 394
      Top = 54
      Width = 194
      TabOrder = 4
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 81
    Width = 912
    inherited Panel1: TPanel
      Left = 885
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT DATA_ALL,'
      '      ISO_LAT3,'
      '      ISO_LAT3_BIS, '
      '      T020_M_COUNTRY,'
      '      T021_CURRENCY,'
      '      T021_C_COUNTRY, '
      '      T062_C_LAT2,'
      '      T062_M_LAT2,'
      '      T070_ID, '
      '      T071_ID,'
      '      T071_NAME_EN,'
      '      T072_ID, '
      '      T072_NAME_EN,'
      '      IS_MINUS,'
      '      DATA_MINUS,'
      '      T055_ID'
      'FROM V_410_BIS_ALL_MINUS'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000001000000008000000444154415F414C4C010000000000080000004953
      4F5F4C4154330100000000000C00000049534F5F4C4154335F42495301000000
      00000E000000543032305F4D5F434F554E5452590100000000000D0000005430
      32315F43555252454E43590100000000000E000000543032315F435F434F554E
      5452590100000000000B000000543036325F435F4C4154320100000000000B00
      0000543036325F4D5F4C41543201000000000007000000543037305F49440100
      0000000007000000543037315F49440100000000000C000000543037315F4E41
      4D455F454E01000000000007000000543037325F49440100000000000C000000
      543037325F4E414D455F454E0100000000000800000049535F4D494E55530100
      000000000A000000444154415F4D494E55530100000000000700000054303535
      5F4944010000000000}
    object odsListT072_ID: TFloatField
      FieldName = 'T072_ID'
    end
    object odsListT072_NAME_EN: TStringField
      FieldName = 'T072_NAME_EN'
      Size = 255
    end
    object odsListT071_ID: TFloatField
      FieldName = 'T071_ID'
    end
    object odsListT071_NAME_EN: TStringField
      FieldName = 'T071_NAME_EN'
      Size = 255
    end
    object odsListT020_M_COUNTRY: TIntegerField
      FieldName = 'T020_M_COUNTRY'
    end
    object odsListT062_M_LAT2: TStringField
      FieldName = 'T062_M_LAT2'
      Size = 3
    end
    object odsListT021_C_COUNTRY: TIntegerField
      FieldName = 'T021_C_COUNTRY'
    end
    object odsListT062_C_LAT2: TStringField
      FieldName = 'T062_C_LAT2'
      Size = 3
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListISO_LAT3_BIS: TStringField
      FieldName = 'ISO_LAT3_BIS'
      Size = 3
    end
    object odsListDATA_ALL: TFloatField
      FieldName = 'DATA_ALL'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListDATA_MINUS: TFloatField
      FieldName = 'DATA_MINUS'
      DisplayFormat = '### ### ##0.0000'
    end
    object odsListT070_ID: TFloatField
      FieldName = 'T070_ID'
      Visible = False
    end
    object odsListIS_MINUS: TStringField
      FieldName = 'IS_MINUS'
      Size = 1
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
  end
end

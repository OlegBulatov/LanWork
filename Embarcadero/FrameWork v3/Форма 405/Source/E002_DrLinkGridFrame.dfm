inherited E002_DrLinkGrid: TE002_DrLinkGrid
  Width = 874
  inherited xxxDBGrid: TxxxDBGrid
    Top = 120
    Width = 874
    Height = 283
    AdvSettings.Indexes = <
      item
        FieldName = 'IS_MAIN'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'IS_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип эмиссии'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISIN'
        PickList.Strings = ()
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег № ц.б.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T025_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Тип эмитента'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН эмитента'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна эмитента'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TICKER'
        PickList.Strings = ()
        Title.Caption = 'Тикер'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXCH'
        PickList.Strings = ()
        Title.Caption = 'Биржа'
        Width = 50
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 74
    Width = 874
  end
  inherited paFilters: TPanel
    Width = 874
    Height = 74
    inherited GroupBox1: TGroupBox
      Height = 66
      inline IsinFilter: TfmTextFilter
        Left = 8
        Top = 13
        Width = 482
        inherited lbCaption: TLabel
          Width = 21
          Caption = 'ISIN'
        end
        inherited ed: TEdit
          Left = 130
          Width = 321
        end
      end
      inline SecTypeFilter: TC002_TypeSec
        Left = 8
        Top = 37
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 130
          DisplaySelectAll = 'Все'
          ListStyle = [lsChecked, lsSizeable]
        end
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 99
    Width = 874
    inherited Panel1: TPanel
      Left = 847
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T030_ID,'
      '  IS_MAIN,'
      '  ISIN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T026_ID,'
      '  T026_SEC_REGN,'
      '  T028_ID,'
      '  T028_ID_MAIN,'
      '  T028_SHOT_NAME,'
      '  T025_LONG_NAME,'
      '  T028_INN,'
      '  T028_COUNTRY_ID,'
      '  COUNTRY,'
      '  TICKER,'
      '  EXCH'
      'from V_405_IIPS_EMISSIONS'
      ':ISIN'
      '')
    Variables.Data = {0300000001000000050000003A4953494E0100000002000000200000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000543033305F494401000000000004000000495349
      4E01000000000007000000543032375F49440100000000000D00000054303237
      5F5345435F5459504501000000000007000000543032365F4944010000000000
      0D000000543032365F5345435F5245474E01000000000007000000543032385F
      49440100000000000C000000543032385F49445F4D41494E0100000000000E00
      0000543032385F53484F545F4E414D450100000000000E000000543032355F4C
      4F4E475F4E414D4501000000000008000000543032385F494E4E010000000000
      0F000000543032385F434F554E5452595F494401000000000007000000434F55
      4E545259010000000000060000005449434B4552010000000000040000004558
      43480100000000000700000049535F4D41494E010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListISIN: TStringField
      FieldName = 'ISIN'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_LONG_NAME: TStringField
      FieldName = 'T025_LONG_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 250
    end
    object odsListTICKER: TStringField
      FieldName = 'TICKER'
      Size = 50
    end
    object odsListEXCH: TStringField
      FieldName = 'EXCH'
      Size = 50
    end
    object odsListIS_MAIN: TStringField
      DisplayWidth = 12
      FieldName = 'IS_MAIN'
      Size = 12
    end
  end
  object odsSecTypes: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID'
      'FROM   V_405_SEC_TYPE'
      'WHERE  T027_SEC_TYPE IN (:SEC_TYPES)')
    Variables.Data = {
      03000000010000000A0000003A5345435F545950455301000000020000002000
      00000000}
    Session = dmMain.OracleSession
    Left = 472
    Top = 200
  end
end

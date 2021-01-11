inherited K001_ReesterEmissionsMain: TK001_ReesterEmissionsMain
  inherited xxxDBGrid: TxxxDBGrid
    Top = 160
    Height = 243
    Columns = <
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 200
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 114
    inherited tlbSeach: TToolBar
      Visible = False
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 139
  end
  object paFilters: TPanel [3]
    Left = 0
    Top = 0
    Width = 635
    Height = 114
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 393
      Height = 109
      Caption = ' Фильтр '
      TabOrder = 0
      inline SecTypeFilter: TK002_EmissionSecTypeFilter
        Left = 9
        Top = 35
      end
      inline SecRegnFilter: TK001_IssuerInnFilter
        Left = 9
        Top = 58
        TabOrder = 1
        inherited lbCaption: TLabel
          Width = 32
          Caption = 'Рег №'
        end
      end
      inline IsinFilter: TK001_IssuerInnFilter
        Left = 9
        Top = 80
        TabOrder = 2
        inherited lbCaption: TLabel
          Width = 21
          Caption = 'ISIN'
        end
      end
    end
    object btnRefresh: TButton
      Left = 412
      Top = 9
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
  end
  inherited actList: TActionList
    Left = 32
    Top = 324
  end
  inherited dsList: TDataSource
    Left = 249
    Top = 263
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T030_IS_MAIN,'
      '       T030_ID,'
      '       T030_PARENT_ID,'
      '       T028_ID,'
      '       T028_PARENT_ID,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T010_ID,'
      '       T010_ISIN,'
      '       T030_RECORD_TYPE,'
      '       T028_SHOT_NAME,'
      '       T028_INN,'
      '       REC_TYPE'
      'from   V_405_REESTERS_LINKS_BTM'
      'where  T030_IS_MAIN = 1'
      ':T030_ID'
      ':T028_ID')
    Variables.Data = {
      0300000002000000080000003A543033305F4944010000000200000020000000
      0000080000003A543032385F49440100000002000000200000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000C000000543033305F49535F4D41494E0100000000000700
      0000543033305F49440100000000000E000000543033305F504152454E545F49
      4401000000000007000000543032385F49440100000000000E00000054303238
      5F504152454E545F494401000000000007000000543032375F49440100000000
      000D000000543032375F5345435F545950450100000000000700000054303236
      5F49440100000000000D000000543032365F5345435F5245474E010000000000
      07000000543031305F494401000000000009000000543031305F4953494E0100
      0000000010000000543033305F5245434F52445F545950450100000000000E00
      0000543032385F53484F545F4E414D45010000000000080000005245435F5459
      504501000000000008000000543032385F494E4E010000000000}
    Left = 209
    Top = 261
    object odsListT030_IS_MAIN: TIntegerField
      FieldName = 'T030_IS_MAIN'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_PARENT_ID: TFloatField
      FieldName = 'T030_PARENT_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
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
    object odsListT010_ID: TFloatField
      FieldName = 'T010_ID'
    end
    object odsListT010_ISIN: TStringField
      FieldName = 'T010_ISIN'
      Size = 255
    end
    object odsListT030_RECORD_TYPE: TIntegerField
      FieldName = 'T030_RECORD_TYPE'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListREC_TYPE: TFloatField
      FieldName = 'REC_TYPE'
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 32
  end
  inherited oqAdd: TOracleQuery
    Left = 295
    Top = 264
  end
  inherited oqUpdate: TOracleQuery
    Left = 295
    Top = 300
  end
  inherited oqDelete: TOracleQuery
    Left = 295
    Top = 340
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 209
    Top = 322
  end
  inherited pmFilter: TPopupMenu
    Left = 352
    Top = 232
  end
end

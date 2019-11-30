inherited A002_DIFF401: TA002_DIFF401
  Width = 1223
  Height = 584
  inherited xxxDBGrid: TxxxDBGrid
    Top = 82
    Width = 1223
    Height = 502
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'REGN_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование КО'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Рег. № КО'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T997_404_LIST'
        PickList.Strings = ()
        Title.Caption = 'Показатель 404'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_SEC'
        PickList.Strings = ()
        Title.Caption = 'Показатель 401'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_F404'
        PickList.Strings = ()
        Title.Caption = 'Сумма в 404 форме'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_F401'
        PickList.Strings = ()
        Title.Caption = 'Сумма в 401 форме'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFF'
        PickList.Strings = ()
        Title.Caption = 'Расхождение'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_DATE_OPEN'
        PickList.Strings = ()
        Title.Caption = 'Дата сравнения'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_DATE_CLOSE'
        PickList.Strings = ()
        Title.Caption = 'Дата исправления'
        Width = 116
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 57
    Width = 1223
    inherited tlbFilter: TToolBar
      Left = 0
      Height = 22
      Align = alNone
    end
    inherited tlbSelect: TToolBar
      Left = 420
      Width = 210
      ButtonHeight = 22
      ButtonWidth = 108
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actCompare
        ImageIndex = 19
      end
      object ToolButton2: TToolButton
        Left = 191
        Top = 0
        Caption = 'удалить'
        ImageIndex = 23
        Visible = False
        OnClick = DelExecute
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1223
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    inline PeriodOne: TG004_PeriodSelect
      Left = 4
      Top = 4
      Width = 300
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 120
        Width = 181
      end
    end
    inline BankFilter: TA08_BankFilter
      Left = 4
      Top = 29
      Width = 300
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 120
        Width = 181
      end
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
    end
    object Button1: TButton
      Left = 317
      Top = 2
      Width = 68
      Height = 25
      Action = actRefresh
      TabOrder = 2
    end
  end
  inherited actList: TActionList
    Left = 8
    Top = 196
    object actCompare: TAction
      Caption = 'Сверить заново'
      OnExecute = actCompareExecute
    end
    object Del: TAction
      Caption = 'Del'
      OnExecute = DelExecute
    end
  end
  inherited dsList: TDataSource
    Left = 273
    Top = 183
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'#9'   regn_name,'#9' '#9
      #9'   T996_BANK_CODE,'
      #9'   T996_F404,'
      #9'   T996_F401,'
      #9'   diff,'#9
      #9'   T996_PERIOD,'
      #9'   T996_SEC,'
      'T997_404_LIST,'
      #9'   T996_DATE_OPEN,'
      #9'   T996_DATE_CLOSE'
      'FROM v_996_DIFF_401')
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000E000000543939365F42414E4B5F434F4445010000000000
      09000000543939365F4634303401000000000009000000543939365F46343031
      0100000000000B000000543939365F504552494F440100000000000800000054
      3939365F5345430100000000000E000000543939365F444154455F4F50454E01
      00000000000F000000543939365F444154455F434C4F53450100000000000900
      00005245474E5F4E414D4501000000000004000000444946460100000000000D
      000000543939375F3430345F4C495354010000000000}
    Top = 181
    object odsListREGN_NAME: TStringField
      FieldName = 'REGN_NAME'
      Size = 57
    end
    object odsListT996_BANK_CODE: TStringField
      FieldName = 'T996_BANK_CODE'
      Size = 57
    end
    object odsListT996_F404: TFloatField
      FieldName = 'T996_F404'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT996_F401: TFloatField
      FieldName = 'T996_F401'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListDIFF: TFloatField
      FieldName = 'DIFF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT996_PERIOD: TFloatField
      FieldName = 'T996_PERIOD'
    end
    object odsListT996_SEC: TStringField
      FieldName = 'T996_SEC'
      Size = 5
    end
    object odsListT996_DATE_OPEN: TDateTimeField
      FieldName = 'T996_DATE_OPEN'
    end
    object odsListT996_DATE_CLOSE: TDateTimeField
      FieldName = 'T996_DATE_CLOSE'
    end
    object odsListT997_404_LIST: TStringField
      FieldName = 'T997_404_LIST'
      Size = 4000
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 263
  end
  inherited oqAdd: TOracleQuery
    Left = 311
    Top = 224
  end
  inherited oqUpdate: TOracleQuery
    Left = 263
    Top = 244
  end
  inherited oqDelete: TOracleQuery
    Left = 311
    Top = 268
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 185
    Top = 234
  end
  object oqCompare: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_404_996_DIFF.p_diff_401(:period,:bcode);'
      '  COMMIT;'
      'end;')
    Variables.Data = {
      0300000002000000070000003A504552494F4404000000000000000000000006
      0000003A42434F4445050000000000000000000000}
    Left = 432
    Top = 240
  end
  object oqDel: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_404_996_diff.p_del(:period);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000070000003A504552494F44040000000000000000000000}
    Left = 496
    Top = 200
  end
end

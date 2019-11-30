inherited A002_DIFF_411: TA002_DIFF_411
  Width = 1022
  Height = 700
  inherited xxxDBGrid: TxxxDBGrid
    Top = 98
    Width = 1022
    Height = 602
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
        FieldName = 'T997_401'
        PickList.Strings = ()
        Title.Caption = 'Показатель 401'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T997_410'
        PickList.Strings = ()
        Title.Caption = 'Показатель 410'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_F404'
        PickList.Strings = ()
        Title.Caption = 'Сумма в форме 404'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_F411'
        PickList.Strings = ()
        Title.Caption = 'Сумма в форме 410 - 401'
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
        FieldName = 'T996_SEC'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T996_DATE_OPEN'
        PickList.Strings = ()
        Title.Caption = 'Дата нахождения'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T996_DATE_CLOSE'
        PickList.Strings = ()
        Title.Caption = 'Дата Закрытия'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 73
    Width = 1022
    inherited tlbSelect: TToolBar
      Width = 210
      ButtonHeight = 22
      ButtonWidth = 108
      ShowCaptions = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Caption = 'Сверить заново'
        ImageIndex = 19
      end
      object ToolButton2: TToolButton
        Left = 191
        Top = 0
        Action = Del
        ImageIndex = 23
      end
    end
  end
  inherited paFilters: TPanel
    Width = 1022
    Height = 73
    inherited GroupBox1: TGroupBox
      Width = 1013
      Height = 68
      inline PeriodOne: TG004_PeriodSelect
        Left = 8
        Top = 15
        Width = 300
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 120
          Width = 181
        end
      end
      inline BankFilter: TA08_BankFilter
        Left = 8
        Top = 40
        Width = 300
        inherited lcb: TxxxDBLookupCheckCombo
          Left = 120
          Width = 181
        end
        inherited cb: TCheckBox
          Checked = False
          State = cbUnchecked
        end
      end
    end
    inherited Button1: TButton
      Left = 331
      Top = 19
    end
  end
  inherited actList: TActionList
    object actCompare: TAction
      Caption = 'actCompare'
      OnExecute = actCompareExecute
    end
    object Del: TAction
      Caption = 'Удалить'
      Visible = False
      OnExecute = DelExecute
    end
  end
  inherited dsList: TDataSource
    Top = 191
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'#9'   regn_name,'#9' '#9
      #9'   T996_BANK_CODE,'
      #9'   T996_F404,'
      #9'   T996_F411,'
      #9'   diff,'#9
      #9'   T996_PERIOD,'
      #9'   T996_SEC,'
      '  T997_401,'
      '  T997_410,'
      '  T997_404_LIST,'
      #9'   T996_DATE_OPEN,'
      #9'   T996_DATE_CLOSE'
      'FROM v_996_DIFF_411')
    QBEDefinition.QBEFieldDefs = {
      040000000C000000090000005245474E5F4E414D450100000000000E00000054
      3939365F42414E4B5F434F444501000000000009000000543939365F46343034
      01000000000009000000543939365F4634313101000000000004000000444946
      460100000000000B000000543939365F504552494F4401000000000008000000
      543939365F5345430100000000000E000000543939365F444154455F4F50454E
      0100000000000F000000543939365F444154455F434C4F534501000000000008
      000000543939375F34303101000000000008000000543939375F343130010000
      0000000D000000543939375F3430345F4C495354010000000000}
    Top = 141
    object odsListREGN_NAME: TStringField
      FieldName = 'REGN_NAME'
      Size = 57
    end
    object odsListT996_BANK_CODE: TStringField
      FieldName = 'T996_BANK_CODE'
      Size = 9
    end
    object odsListT996_F404: TFloatField
      FieldName = 'T996_F404'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT996_F411: TFloatField
      FieldName = 'T996_F411'
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
    object odsListT997_401: TStringField
      FieldName = 'T997_401'
      Size = 5
    end
    object odsListT997_410: TStringField
      FieldName = 'T997_410'
      Size = 5
    end
    object odsListT997_404_LIST: TStringField
      FieldName = 'T997_404_LIST'
      Size = 4000
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 80
    Top = 199
  end
  inherited oqAdd: TOracleQuery
    Left = 231
    Top = 152
  end
  inherited oqUpdate: TOracleQuery
    Top = 156
  end
  object oqCompare: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_404_996_DIFF.p_diff_411(:period,:bcode);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A504552494F4405000000000000000000000006
      0000003A42434F4445050000000000000000000000}
    Left = 320
    Top = 128
  end
  object oqDel: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_404_996_diff.p_del11(:period);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000070000003A504552494F44040000000000000000000000}
    Left = 360
    Top = 128
  end
end

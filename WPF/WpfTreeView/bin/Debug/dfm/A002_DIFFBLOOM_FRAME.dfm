inherited A002_DIFFBLOOM: TA002_DIFFBLOOM
  Width = 676
  Height = 404
  Align = alClient
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 676
    Height = 79
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    inline PeriodOne: TG004_PeriodSelect
      Left = 4
      Top = 4
      Width = 300
      TabOrder = 3
      inherited cb: TCheckBox [1]
      end
      inherited lcb: TxxxDBLookupCheckCombo [2]
        Left = 120
        Width = 181
      end
    end
    inline BankFilter: TA08_BankFilter
      Left = 4
      Top = 28
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
    inline Part: TA12_Part
      Left = 321
      Top = 4
      Width = 300
      TabOrder = 1
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 90
        Width = 211
      end
    end
    object Button1: TButton
      Left = 637
      Top = 2
      Width = 68
      Height = 25
      Action = actRefresh
      TabOrder = 2
    end
    inline err_filter: TA002_err_filter
      Left = 321
      Top = 28
      Width = 300
      TabOrder = 4
      inherited lbCaption: TLabel
        Width = 60
        Caption = 'Тип ошибки'
      end
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 90
        Width = 211
      end
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
    end
    object edDiffProc: TEdit
      Left = 124
      Top = 52
      Width = 180
      Height = 21
      TabOrder = 5
      Text = '10'
    end
    object CheckBox1: TCheckBox
      Left = 4
      Top = 54
      Width = 114
      Height = 17
      Caption = 'Расхождение в %'
      State = cbGrayed
      TabOrder = 6
    end
  end
  inherited xxxDBGrid: TxxxDBGrid
    Top = 104
    Width = 676
    Height = 300
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGN_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BCODE'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип бумаги'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PART'
        PickList.Strings = ()
        Title.Caption = 'Часть'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        PickList.Strings = ()
        Title.Caption = 'Описание ошибки'
        Width = 255
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F404'
        PickList.Strings = ()
        Title.Caption = 'Значение в форме 404'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOOM'
        PickList.Strings = ()
        Title.Caption = 'Значение в Bloomberg'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEVIATION'
        PickList.Strings = ()
        Title.Caption = 'Отклонение'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_DES'
        PickList.Strings = ()
        Title.Caption = 'Комментарии ДС'
        Width = 500
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 79
    Width = 676
    inherited tlbNav: TToolBar
      Left = 242
    end
    inherited tlbList: TToolBar
      Left = 0
    end
    inherited tlbFilter: TToolBar
      inherited tbFilter: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 133
      ButtonHeight = 22
      ButtonWidth = 102
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 83
        Top = 0
        Caption = 'Данные по Isin'
        ImageIndex = 40
      end
    end
  end
  inherited actList: TActionList
    object actCompare: TAction
      Caption = 'actCompare'
      OnExecute = actCompareExecute
    end
    object actDelDiff: TAction
      Caption = 'Удалить'
      OnExecute = actDelDiffExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  ID_ISIN, '
      '  PART,'
      '  sectype,'
      '  stype,'
      '  err_id,'
      '  DESCR, '
      '  F404, '
      '  deviation,'
      '  BLOOM, '
      '  PERIOD,'
      '  BCODE ,'
      '  ds_des,'#9
      '  REGN_NAME '#9
      'FROM V_DIFF_BLOOMBERG')
    QBEDefinition.QBEFieldDefs = {
      040000000D0000000700000049445F4953494E01000000000005000000444553
      4352010000000000040000004634303401000000000005000000424C4F4F4D01
      000000000006000000504552494F44010000000000090000005245474E5F4E41
      4D450100000000000500000042434F4445010000000000040000005041525401
      0000000000060000004552525F49440100000000000900000044455649415449
      4F4E010000000000070000005345435459504501000000000005000000535459
      50450100000000000600000044535F444553010000000000}
    Top = 117
    object odsListID_ISIN: TStringField
      FieldName = 'ID_ISIN'
      Size = 265
    end
    object odsListREGN_NAME: TStringField
      FieldName = 'REGN_NAME'
      Size = 57
    end
    object odsListPART: TFloatField
      FieldName = 'PART'
    end
    object odsListDESCR: TStringField
      FieldName = 'DESCR'
      Size = 255
    end
    object odsListF404: TStringField
      FieldName = 'F404'
      Size = 40
    end
    object odsListBLOOM: TStringField
      FieldName = 'BLOOM'
      Size = 255
    end
    object odsListPERIOD: TFloatField
      FieldName = 'PERIOD'
    end
    object odsListBCODE: TStringField
      FieldName = 'BCODE'
      Size = 9
    end
    object odsListERR_ID: TFloatField
      FieldName = 'ERR_ID'
    end
    object odsListDEVIATION: TStringField
      FieldName = 'DEVIATION'
      Size = 14
    end
    object odsListSECTYPE: TFloatField
      FieldName = 'SECTYPE'
    end
    object odsListSTYPE: TStringField
      FieldName = 'STYPE'
      Size = 255
    end
    object odsListDS_DES: TStringField
      FieldName = 'DS_DES'
      Size = 256
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 112
    Top = 215
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_404_996_diff.p_delBLOOM(:period);'
      '  COMMIT;'
      'end;'
      '')
    Variables.Data = {0300000001000000070000003A504552494F44040000000000000000000000}
  end
  object oqCompare: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_404_utilits.p_compare_diff(:period,:bcode,:part);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000070000003A504552494F4404000000000000000000000006
      0000003A42434F4445050000000000000000000000050000003A504152540400
      00000000000000000000}
    Left = 336
    Top = 136
  end
  object oqDiffProc: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_404_utilits.p_set_diffproc(:iDiffProc);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A494449464650524F4304000000000000000000
      0000}
    Left = 440
    Top = 144
  end
end

inherited A05_BankGroupMembersEdit: TA05_BankGroupMembersEdit
  Width = 912
  Height = 629
  inherited PanelLeft: TPanel
    Width = 433
    Height = 629
    inherited Panel1: TPanel
      Width = 431
      inherited Label1: TLabel
        Width = 162
        Caption = 'Список кредитных организаций'
      end
    end
    inline ListLeft: TA05_BankGroupMembersEditLeft
      Left = 1
      Top = 23
      Height = 605
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Height = 580
        Columns = <
          item
            Expanded = False
            FieldName = 'REGN'
            PickList.Strings = ()
            Title.Caption = 'Рег. №'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            PickList.Strings = ()
            Title.Caption = 'Наименование'
            Width = 320
            Visible = True
          end>
      end
      inherited actList: TActionList
        Top = 140
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Left = 433
    Width = 1
    Height = 629
    BevelOuter = bvNone
  end
  inherited PanelRight: TPanel
    Left = 482
    Width = 383
    Height = 629
    inherited Panel2: TPanel
      Width = 381
      inherited Label2: TLabel
        Width = 75
        Caption = 'Состав группы'
      end
    end
    inline ListRight: TA05_BankGroupMembersEditRight
      Left = 1
      Top = 23
      Width = 381
      Height = 605
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 381
        Height = 580
        Columns = <
          item
            Expanded = False
            FieldName = 'REGN'
            PickList.Strings = ()
            Title.Caption = 'Рег. №'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            PickList.Strings = ()
            Title.Caption = 'Наименование'
            Width = 320
            Visible = True
          end>
      end
      inherited paToolButton: TPanel
        Width = 381
      end
      inherited actList: TActionList
        Top = 144
      end
    end
  end
  inherited Splitter2: TRxSplitter
    Left = 481
    Width = 1
    Height = 629
    BevelOuter = bvNone
  end
  inherited PanelB: TPanel
    Left = 434
    Height = 629
  end
  inherited PanelC: TPanel
    Left = 865
    Height = 629
    Visible = False
  end
  inherited actList: TActionList
    Left = 444
    Top = 204
    inherited actLeft: TAction
      OnExecute = actLeftExecute
    end
    inherited actLeftAll: TAction
      OnExecute = actLeftAllExecute
    end
    inherited actRight: TAction
      OnExecute = actRightExecute
    end
    inherited actRightAll: TAction
      OnExecute = actRightAllExecute
    end
  end
  inherited oqLeft: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroupMembers_Add(:REGN);'
      'end;')
    Variables.Data = {0300000001000000050000003A5245474E050000000000000000000000}
    Left = 498
    Top = 240
  end
  inherited oqLeftAll: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroupMembers_AddAll;'
      'end;')
    Left = 498
    Top = 276
  end
  inherited oqRightAll: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroupMembers_DeleteAll;'
      'end;')
    Left = 498
  end
  inherited oqRight: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroupMembers_Delete(:REGN);'
      'end;')
    Variables.Data = {0300000001000000050000003A5245474E050000000000000000000000}
    Left = 498
    Top = 372
  end
end

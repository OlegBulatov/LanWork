inherited A14_ItemsGroupMembersEdit: TA14_ItemsGroupMembersEdit
  Width = 912
  Height = 629
  inherited PanelLeft: TPanel
    Width = 433
    Height = 629
    inherited Panel1: TPanel
      Width = 431
      inherited Label1: TLabel
        Width = 105
        Caption = 'Список показателей'
      end
    end
    inline ListLeft: TA14_ItemsGroupMembersEditLeft
      Left = 1
      Top = 23
      Width = 431
      Height = 605
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 431
        Height = 580
        Columns = <
          item
            Expanded = False
            FieldName = 'T037_CODE'
            PickList.Strings = ()
            Title.Caption = 'Код'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T037_NAME'
            PickList.Strings = ()
            Title.Caption = 'Наименование'
            Width = 320
            Visible = True
          end>
      end
      inherited paToolButton: TPanel
        Width = 431
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
    inline ListRight: TA14_ItemsGroupMembersEditRight
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
            FieldName = 'T037_CODE'
            PickList.Strings = ()
            Title.Caption = 'Код'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T037_NAME'
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
      '  Pk_410_HandCorrect.p_ItemsGroupMembers_Add(:T037_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033375F4944040000000000000000000000}
    Left = 498
    Top = 240
  end
  inherited oqLeftAll: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ItemsGroupMembers_AddAll;'
      'end;')
    Left = 498
    Top = 276
  end
  inherited oqRightAll: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ItemsGroupMembers_DeleteAll;'
      'end;')
    Left = 498
  end
  inherited oqRight: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ItemsGroupMembers_Delete(:T037_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033375F4944040000000000000000000000}
    Left = 498
    Top = 372
  end
end

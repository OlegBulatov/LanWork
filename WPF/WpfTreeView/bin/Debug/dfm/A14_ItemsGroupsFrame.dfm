inherited A14_FormItemGroups: TA14_FormItemGroups
  Width = 729
  Height = 568
  inherited PanelTop: TPanel
    Width = 729
    Height = 269
    inherited Panel1: TPanel
      Width = 727
      inherited Label1: TLabel
        Width = 105
        Caption = 'Группы показателей'
      end
    end
    inline GroupsList: TA14_ItemsGroupsList
      Left = 1
      Top = 23
      Width = 727
      Height = 245
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 727
        Height = 220
      end
      inherited paToolButton: TPanel
        Width = 727
      end
    end
  end
  inherited PanelBottom: TPanel
    Top = 272
    Width = 729
    Height = 296
    inherited Panel2: TPanel
      Width = 727
      inherited Label2: TLabel
        Width = 75
        Caption = 'Состав группы'
      end
    end
    inline GroupMembersList: TA14_ItemsGroupMembersList
      Left = 1
      Top = 23
      Width = 727
      Height = 272
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 727
        Height = 247
      end
      inherited paToolButton: TPanel
        Width = 727
      end
      inherited actList: TActionList
        inherited actEdit: TAction
          OnUpdate = GroupMembersListactEditUpdate
        end
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Top = 269
    Width = 729
  end
end

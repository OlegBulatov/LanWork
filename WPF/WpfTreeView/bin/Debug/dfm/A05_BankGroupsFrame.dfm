inherited A05_BankGroups: TA05_BankGroups
  Width = 822
  Height = 631
  inherited PanelTop: TPanel
    Width = 822
    Height = 289
    inherited Panel1: TPanel
      Width = 820
      inherited Label1: TLabel
        Width = 55
        Caption = 'Группы КО'
      end
    end
    inline GroupsList: TA05_BankGroupsList
      Left = 1
      Top = 23
      Width = 820
      Height = 265
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 820
        Height = 240
      end
      inherited paToolButton: TPanel
        Width = 820
      end
    end
  end
  inherited PanelBottom: TPanel
    Top = 290
    Width = 822
    Height = 341
    inherited Panel2: TPanel
      Width = 820
      inherited Label2: TLabel
        Width = 75
        Caption = 'Состав группы'
      end
    end
    inline GroupMembersList: TA05_BankGroupMembersList
      Left = 1
      Top = 23
      Width = 820
      Height = 317
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 820
        Height = 292
      end
      inherited paToolButton: TPanel
        Width = 820
      end
      inherited actList: TActionList
        inherited actEdit: TAction
          OnUpdate = GroupMembersListactEditUpdate
        end
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Top = 289
    Width = 822
    Height = 1
  end
end

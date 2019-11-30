inherited A06_CountryGroups: TA06_CountryGroups
  Width = 833
  Height = 574
  inherited PanelTop: TPanel
    Width = 833
    Height = 273
    inherited Panel1: TPanel
      Width = 831
      inherited Label1: TLabel
        Width = 69
        Caption = 'Группы стран'
      end
    end
    inline GroupsList: TA06_CountryGroupsList
      Left = 1
      Top = 23
      Width = 831
      Height = 249
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 831
        Height = 224
      end
      inherited paToolButton: TPanel
        Width = 831
      end
    end
  end
  inherited PanelBottom: TPanel
    Left = 240
    Top = 274
    Width = 593
    Height = 300
    inherited Panel2: TPanel
      Width = 591
      inherited Label2: TLabel
        Width = 75
        Caption = 'Состав группы'
      end
    end
    inline GroupMembersList: TA06_CountryGroupMembersList
      Left = 1
      Top = 23
      Width = 591
      Height = 276
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 591
        Height = 251
      end
      inherited paToolButton: TPanel
        Width = 591
      end
      inherited actList: TActionList
        inherited actEdit: TAction
          OnUpdate = GroupMembersListactEditUpdate
        end
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Top = 273
    Width = 833
    Height = 1
  end
  object RxSplitter1: TRxSplitter [3]
    Left = 237
    Top = 274
    Width = 3
    Height = 300
    ControlFirst = Panel3
    ControlSecond = GroupMembersList
    Align = alLeft
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 274
    Width = 237
    Height = 300
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 237
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = clGrayText
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 4
        Width = 46
        Height = 13
        Caption = 'Периоды'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    inline GroupMembersPeriods: TA06_CountryGroupMembersPeriods
      Top = 22
      Width = 237
      Height = 278
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 237
        Height = 253
      end
      inherited paToolButton: TPanel
        Width = 237
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'select T033_ID,'
          '--       T058_ID,'
          '       DATE_START,'
          '       DATE_END'
          'from   V_410_COUNTRY_GROUP_PERIODS'
          'where  T033_ID = :T033_ID'
          'order by DATE_START')
        AfterScroll = GroupMembersPeriodsodsListAfterScroll
      end
    end
  end
end

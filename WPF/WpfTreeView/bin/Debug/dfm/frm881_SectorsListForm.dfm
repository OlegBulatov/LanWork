inherited frm881_SectorsList: Tfrm881_SectorsList
  Left = 81
  Top = 32
  Width = 917
  Height = 702
  Caption = 'frm881_SectorsList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Left = 90
    Top = 0
    Width = 3
    Height = 623
    Cursor = crHSplit
    Align = alRight
  end
  inherited spRight: TSplitter
    Left = 0
    Top = 623
    Width = 909
    Height = 0
    Cursor = crVSplit
    Align = alBottom
  end
  inherited paRight: TPanel
    Left = 0
    Top = 623
    Width = 909
    Height = 0
    Align = alBottom
    Enabled = False
    Visible = False
  end
  inherited paMain: TPanel
    Width = 90
    Height = 623
    inherited ToolBar2: TToolBar
      Width = 90
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 90
      Height = 558
      AdvSettings.Indexes = <
        item
          FieldName = 'SECTOR_POS'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'SECTOR_POS'
          PickList.Strings = ()
          Title.Caption = '№'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LEVEL_SECTOR_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 500
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 90
      inherited Panel1: TPanel
        Left = 365
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 90
      inherited Panel1: TPanel
        Left = 477
      end
    end
  end
  inherited Panel1: TPanel
    Left = 93
    Top = 0
    Width = 816
    Height = 623
    Align = alRight
    inherited pc01: TPageControl
      Width = 814
      Height = 621
      inherited ts01: TTabSheet
        Caption = 'Отрасли'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 656
    Width = 909
  end
  inherited pnlButtons: TPanel
    Top = 623
    Width = 909
    TabOrder = 2
    inherited OKBtn: TButton
      Left = 1190
    end
    inherited CancelBtn: TButton
      Left = 1270
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actShowDetail: TAction
      Caption = 'Отрасли'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T140_ID,'
      '         SECTOR_NAME,'
      '         LEVEL_SECTOR_NAME,'
      '         SECTOR_LEVEL,'
      '         SECTOR_POS,'
      '    SECTOR_NUMBER'
      'FROM     V_405_SECTORS  ')
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543134305F49440100000000000B000000534543
      544F525F4E414D450100000000000C000000534543544F525F4C4556454C0100
      000000000A000000534543544F525F504F53010000000000110000004C455645
      4C5F534543544F525F4E414D450100000000000D000000534543544F525F4E55
      4D424552010000000000}
    object odsListSECTOR_NAME: TStringField
      FieldName = 'SECTOR_NAME'
      Required = True
      Size = 512
    end
    object odsListSECTOR_LEVEL: TIntegerField
      FieldName = 'SECTOR_LEVEL'
      Required = True
    end
    object odsListSECTOR_POS: TIntegerField
      FieldName = 'SECTOR_POS'
      Required = True
    end
    object odsListLEVEL_SECTOR_NAME: TStringField
      FieldName = 'LEVEL_SECTOR_NAME'
      Size = 4000
    end
    object odsListT140_ID: TIntegerField
      FieldName = 'T140_ID'
      Required = True
    end
    object odsListSECTOR_NUMBER: TStringField
      FieldName = 'SECTOR_NUMBER'
      Required = True
      Size = 16
    end
  end
end

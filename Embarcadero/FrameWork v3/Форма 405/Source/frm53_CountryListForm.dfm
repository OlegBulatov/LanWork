inherited frm53_CountryList: Tfrm53_CountryList
  Left = 152
  Top = 96
  Width = 803
  Caption = 'Справочник стран'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 211
    Width = 795
    Height = 2
  end
  inherited spRight: TSplitter
    Left = 792
    Height = 211
  end
  inherited paRight: TPanel
    Left = 795
    Height = 211
  end
  inherited paMain: TPanel
    Width = 792
    Height = 211
    inherited ToolBar2: TToolBar
      Width = 792
      ButtonWidth = 120
      inherited ToolButton5: TToolButton
        Left = 602
      end
      inherited ToolButton7: TToolButton
        Left = 610
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 792
      Height = 146
      AdvSettings.Indexes = <
        item
          FieldName = 'SN015_ISO_DIG'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'SN015_ISO_DIG'
          PickList.Strings = ()
          Title.Caption = 'Код ISO'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SN015_FULL_RUS_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SN015_SHORT_RUS_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокращенное наименование'
          Width = 340
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 792
      inherited Panel1: TPanel
        Left = 765
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 792
      inherited Panel1: TPanel
        Left = 765
      end
    end
  end
  inherited Panel1: TPanel
    Top = 213
    Width = 795
    Height = 271
    inherited pc01: TPageControl
      Width = 793
      Height = 269
      inherited ts01: TTabSheet
        Caption = 
          'Проставьте галочки напротив кварталов, в которых страна имела не' +
          'гативную репутацию'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 795
  end
  inherited pnlButtons: TPanel
    Width = 795
    inherited OKBtn: TButton
      Left = 637
    end
    inherited CancelBtn: TButton
      Left = 717
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
      Caption = 'Репутация страны'
      Hint = 'Показать/скрыть закладку'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT SN015_ISO_DIG, SN015_FULL_RUS_NAME, SN015_SHORT_RUS_NAME'
      'FROM V_405_GOS_LIST')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000D000000534E3031355F49534F5F44494701000000000013
      000000534E3031355F46554C4C5F5255535F4E414D4501000000000014000000
      534E3031355F53484F52545F5255535F4E414D450100000000000A000000534E
      3031355F464C4147010000000000}
    AfterScroll = odsListAfterScroll
    object odsListSN015_ISO_DIG: TFloatField
      FieldName = 'SN015_ISO_DIG'
      Required = True
    end
    object odsListSN015_FULL_RUS_NAME: TStringField
      FieldName = 'SN015_FULL_RUS_NAME'
      Size = 250
    end
    object odsListSN015_SHORT_RUS_NAME: TStringField
      FieldName = 'SN015_SHORT_RUS_NAME'
      Size = 250
    end
  end
end

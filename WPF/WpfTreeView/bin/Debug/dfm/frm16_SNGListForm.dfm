inherited frm16_SNGList: Tfrm16_SNGList
  Caption = 'frm16_SNGList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 23
    Height = 251
  end
  inherited paRight: TPanel
    Top = 23
    Height = 251
  end
  inherited paMain: TPanel
    Top = 23
    Height = 251
    inherited paToolBars: TPanel
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 186
      AdvSettings.Indexes = <
        item
          FieldName = 'SN015_SHORT_RUS_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'SN015_ISO_DIG'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SN015_SHORT_RUS_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end>
    end
  end
  inline fm01_Period1: Tfm01_Period [5]
    Width = 706
    Align = alTop
    TabOrder = 4
    inherited lcbPeriod: TDBLookupComboBox
      Left = 112
      Width = 153
      Anchors = [akLeft, akTop, akBottom]
      KeyField = 'T055_ID'
      OnCloseUp = fm01_Period1lcbPeriodCloseUp
    end
  end
  inherited ActionList: TActionList [6]
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
  end
  inherited dsList: TDataSource [7]
  end
  inherited PopupMenu: TPopupMenu [8]
  end
  inherited odsList: TOracleDataSet [9]
    SQL.Strings = (
      '  SELECT   SN015_ISO_DIG,'
      '           SN015_SHORT_RUS_NAME'
      '  FROM     V_NR_COUNTRY_SNG V1'
      '   WHERE       T055_ID = :T055_ID')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D000000534E3031355F49534F5F44494701000000000014
      000000534E3031355F53484F52545F5255535F4E414D45010000000000}
    object odsListSN015_ISO_DIG: TFloatField
      FieldName = 'SN015_ISO_DIG'
      Required = True
    end
    object odsListSN015_SHORT_RUS_NAME: TStringField
      FieldName = 'SN015_SHORT_RUS_NAME'
      Size = 250
    end
  end
  inherited oqAdd: TOracleQuery [10]
  end
  inherited oqUpdate: TOracleQuery [11]
  end
  inherited oqDelete: TOracleQuery [12]
  end
  inherited oqDupl: TOracleQuery [13]
  end
end

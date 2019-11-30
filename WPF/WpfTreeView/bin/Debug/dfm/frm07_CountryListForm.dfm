inherited frm07_CountryList: Tfrm07_CountryList
  Caption = 'Список стран'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton5: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'SN015_FULL_RUS_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное название (рус.)'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SN015_SHORT_RUS_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокр. название (рус.)'
          Width = 400
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited paLeft02: TPanel
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft04: TPanel
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited Panel1: TPanel
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited paLeft02: TPanel
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft04: TPanel
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited Panel1: TPanel
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      ' SN015_ISO_DIG,'
      ' SN015_FULL_RUS_NAME,'
      ' SN015_SHORT_RUS_NAME'
      'FROM V_NR_GOS_LIST'
      '')
    QBEDefinition.QBEFieldDefs = {
      03000000030000000D000000534E3031355F49534F5F44494701000000001300
      0000534E3031355F46554C4C5F5255535F4E414D45010000000014000000534E
      3031355F53484F52545F5255535F4E414D450100000000}
    object odsListSN015_ISO_DIG: TFloatField
      FieldName = 'SN015_ISO_DIG'
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

inherited frm08_IssTypeList: Tfrm08_IssTypeList
  Left = 83
  Top = 153
  Caption = 'frm08_IssTypeList'
  PixelsPerInch = 120
  TextHeight = 16
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
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокр. название'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Длинное название'
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
          Left = 11
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
          Left = 11
        end
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T025_ID,'
      '  T025_SHOT_NAME,'
      '  T025_LONG_NAME'
      'FROM V_NR_ISSUER_TYPE')
    QBEDefinition.QBEFieldDefs = {
      030000000300000007000000543032355F494401000000000E00000054303235
      5F53484F545F4E414D4501000000000E000000543032355F4C4F4E475F4E414D
      450100000000}
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT025_LONG_NAME: TStringField
      FieldName = 'T025_LONG_NAME'
      Required = True
      Size = 255
    end
  end
end

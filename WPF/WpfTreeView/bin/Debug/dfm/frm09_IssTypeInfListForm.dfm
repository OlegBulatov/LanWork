inherited frm09_IssTypeInfList: Tfrm09_IssTypeInfList
  Caption = 'frm09_IssTypeInfList'
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
          FieldName = 'T037_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сокр. название'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_LONG_NAME'
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
      'SELECT'
      '  T037_ID,'
      '  T037_SHOT_NAME,'
      '  T037_LONG_NAME'
      'FROM V_NR_ISSUER_INF_TYPE')
    QBEDefinition.QBEFieldDefs = {
      030000000300000007000000543033375F494401000000000E00000054303337
      5F53484F545F4E414D4501000000000E000000543033375F4C4F4E475F4E414D
      450100000000}
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
      Required = True
    end
    object odsListT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT037_LONG_NAME: TStringField
      FieldName = 'T037_LONG_NAME'
      Required = True
      Size = 255
    end
  end
end

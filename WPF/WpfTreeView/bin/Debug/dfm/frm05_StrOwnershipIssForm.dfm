inherited frm05_StrOwnershipIss: Tfrm05_StrOwnershipIss
  Caption = 'Структура эмитента'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
      inherited ToolButton5: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'M030_PRC'
          PickList.Strings = ()
          Title.Caption = 'Процент'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_BUY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Собственник'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 100
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
      ' M030_ID,'
      ' M030_SALE_ID,'
      ' M030_PRC,'
      ' M030_BUY_NAME,'
      ' M030_TYPE'
      'FROM V_NR_ISSUER_STRUCT'
      'WHERE M030_SALE_ID = :T028_ID'
      'ORDER BY M030_PRC')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000005000000070000004D3033305F4944010000000000080000004D3033
      305F5052430100000000000D0000004D3033305F4255595F4E414D4501000000
      0000090000004D3033305F545950450100000000000C0000004D3033305F5341
      4C455F4944010000000000}
    Master = frm05_StrOwnershipIssSel.odsList
    MasterFields = 'T028_ID'
    object odsListM030_ID: TFloatField
      FieldName = 'M030_ID'
      Required = True
    end
    object odsListM030_PRC: TFloatField
      FieldName = 'M030_PRC'
    end
    object odsListM030_BUY_NAME: TStringField
      FieldName = 'M030_BUY_NAME'
      Size = 255
    end
    object odsListM030_TYPE: TStringField
      FieldName = 'M030_TYPE'
      Size = 1
    end
    object odsListM030_SALE_ID: TFloatField
      FieldName = 'M030_SALE_ID'
      Required = True
    end
  end
end

inherited frm17_RasprProfitList: Tfrm17_RasprProfitList
  Left = 56
  Top = 188
  Width = 970
  Height = 500
  Caption = 'Справочники: распределенная прибыль'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 951
    Height = 410
  end
  inherited Panel2: TPanel
    Top = 429
    Width = 954
    inherited Panel3: TPanel
      Left = 789
    end
  end
  inherited paRight: TPanel
    Left = 954
    Height = 410
  end
  inherited paMain: TPanel
    Width = 951
    Height = 410
    inherited paToolBars: TPanel
      Width = 951
      inherited ToolBar2: TToolBar
        Top = 23
        Width = 959
        inherited ToolButton17: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton18: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton19: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        object ToolButton6: TToolButton
          Left = 676
          Top = 0
          Action = actDBF
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Width = 951
      Height = 322
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'M050_DATE'
          SortType = stDesc
        end
        item
          FieldName = 'M050_TYPE_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'T001_OP_SUM_CROSS'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата объяв.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сум. за акц. (руб.)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_VAL_DIV_USD_SUM'
          PickList.Strings = ()
          Title.Caption = 'Полная сумма объяв. ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Налог'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип инв.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата опер.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа ($) '
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_PROC_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Валовый платеж'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_PROC_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Процент налога'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 951
      inherited Panel1: TPanel
        Left = 924
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 951
      inherited Panel1: TPanel
        Left = 924
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 23
      Width = 951
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
    end
  end
  inherited StatusBar: TStatusBar
    Top = 410
    Width = 954
  end
  inherited ActionList: TActionList
    object actDBF: TAction
      Caption = 'Экспорт в DBF'
      ImageIndex = 40
      OnExecute = actDBFExecute
      OnUpdate = actDBFUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  M014_ID,'
      ' T028_SHOT_NAME,'
      ' T028_CODE,'
      ' T027_SEC_TYPE,'
      ' M050_DATE,'
      ' M050_SUM, '
      ' M050_COUNT,'
      ' M050_TAX_VALUE,'
      ' M050_TYPE_DESC,'
      ' T001_DATE_OP,'
      ' T001_OP_SUM_CROSS, '
      ' M079_PROC_SUM,'
      ' M079_TOTAL_SUM,'
      ' M079_PROC_VALUE,'
      ' M050_VAL_DIV_USD_SUM'
      'FROM V_NR_RASPR_PROFIT'
      'WHERE M014_ID = :M014_ID')
    Variables.Data = {
      0300000001000000080000003A4D3031345F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F0000000E000000543032385F53484F545F4E414D45010000000000
      09000000543032385F434F4445010000000000090000004D3035305F44415445
      010000000000080000004D3035305F53554D0100000000000A0000004D303530
      5F434F554E540100000000000E0000004D3035305F5441585F56414C55450100
      000000000E0000004D3035305F545950455F444553430100000000000C000000
      543030315F444154455F4F5001000000000011000000543030315F4F505F5355
      4D5F43524F53530100000000000D0000004D3037395F50524F435F53554D0100
      000000000E0000004D3037395F544F54414C5F53554D0100000000000F000000
      4D3037395F50524F435F56414C55450100000000000D000000543032375F5345
      435F54595045010000000000070000004D3031345F4944010000000000140000
      004D3035305F56414C5F4449565F5553445F53554D010000000000}
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListM050_DATE: TDateTimeField
      FieldName = 'M050_DATE'
      Required = True
    end
    object odsListM050_SUM: TFloatField
      FieldName = 'M050_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_COUNT: TFloatField
      FieldName = 'M050_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListM050_TAX_VALUE: TFloatField
      FieldName = 'M050_TAX_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 6
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_PROC_SUM: TFloatField
      FieldName = 'M079_PROC_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_TOTAL_SUM: TFloatField
      FieldName = 'M079_TOTAL_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_PROC_VALUE: TFloatField
      FieldName = 'M079_PROC_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListM014_ID: TFloatField
      FieldName = 'M014_ID'
      Required = True
    end
    object odsListM050_VAL_DIV_USD_SUM: TFloatField
      FieldName = 'M050_VAL_DIV_USD_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
end

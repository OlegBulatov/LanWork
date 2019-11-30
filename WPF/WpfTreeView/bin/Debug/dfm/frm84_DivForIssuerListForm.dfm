inherited frm84_DivForIssuerList: Tfrm84_DivForIssuerList
  Left = 288
  Top = 140
  Width = 806
  Height = 606
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 154
    Width = 798
  end
  inherited spRight: TSplitter
    Left = 795
    Height = 154
  end
  inherited Panel2: TPanel
    Top = 157
    Width = 798
    inherited Panel3: TPanel
      Left = 633
    end
  end
  inherited paRight: TPanel
    Left = 795
    Height = 154
  end
  inherited Panel1: TPanel
    Top = 209
    Width = 798
    Visible = False
    inherited pc01: TPageControl
      Width = 796
    end
  end
  inherited paMain: TPanel
    Width = 795
    Height = 154
    inherited paToolBars: TPanel
      Width = 795
      inherited ToolBar2: TToolBar
        Width = 795
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
        end
        inherited tbSimFilter: TToolButton
          Enabled = False
          Visible = False
        end
        inherited tbSep01: TToolButton
          Visible = False
        end
        inherited tlbSearch: TToolBar
          Enabled = False
          Visible = False
          inherited tbSearch: TToolButton
            Enabled = False
            Visible = False
          end
        end
        inherited ToolButton13: TToolButton
          Visible = False
        end
        inherited tbExcel: TToolButton
          AutoSize = True
        end
        inherited ToolButton7: TToolButton
          Left = 678
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 795
      Height = 89
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 2
              LastCol = 3
              Caption = 'Ожидаем'
            end
            item
              FirstCol = 4
              LastCol = 5
              Caption = 'Выплачено'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'M050_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата объяв.'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма на 1 акцию (руб)'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_NR'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_NR_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT_TOTAL'
          PickList.Strings = ()
          Title.Caption = 'Кол-во бумаг'
          Width = 90
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 795
      Visible = False
      inherited Panel1: TPanel
        Left = 768
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 795
      Visible = False
      inherited Panel1: TPanel
        Left = 768
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 190
    Width = 798
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  M050_ID,'
      '  T028_ID,'
      '  T027_ID,'
      '  M050_DATE,'
      '  M050_SUM,'
      '  M050_711_COUNT,'
      '  M050_OTH_COUNT,'
      '  T028_CODE,'
      '  T025_SHOT_NAME,'
      '  T027_SEC_TYPE,'
      '  M050_USD_SUM,'
      '  M050_SUM_PR,'
      '  M050_SUM_PORTF,'
      '  M050_EMISS_SIZE,'
      '  M050_FIKS_DATE,'
      '  M050_NR_PR,'
      '  M050_NR_PORTF,'
      '  M050_NR_TOTAL_SUM,'
      '  M050_TAX_SUM_PR,'
      '  M050_TAX_SUM_PORTF,'
      '  M050_TAX_VALUE,'
      '  M050_SUM_NR,'
      '  M050_TAX_SUM_NR,'
      '  M050_CALC_AUTO,'
      '  M050_TAX_VALUE_HAND,'
      '  M050_TAX_VALUE_AUTO,'
      '  M050_SUM_PAY_PR,'
      '  M050_SUM_PAY_PORTF,'
      '  M050_SUM_PAY_NR,'
      '  M050_CALC_AUTO_PORTF,'
      '  M050_TAX_VALUE_HAND_PORTF,'
      '  M050_TAX_VALUE_AUTO_PORTF,'
      '  M050_TAX_VALUE_PORTF,'
      '  M050_SUM_NR_RUB,'
      '  M079_TOTAL_RUB_SUM,'
      '  M079_TOTAL_SUM,'
      '  M050_CURR,'
      '  M050_ALL_SUM,'
      '  M050_ALL_SUM_USD,'
      '  M050_TYPE,'
      ' TYPE_DESC, '
      '  CURR_DESC,'
      ' T001_OP_COUNT_TOTAL,'
      '  M050_TOOL_TYPE,'
      '  TOOL_TYPE_DESC'
      'FROM V_NR_DIVIDENDS_LIST_PAY'
      'WHERE T028_ID = :T028_ID'
      'AND T027_ID = :T027_ID')
    QBEDefinition.QBEFieldDefs = {
      040000002D000000070000004D3035305F494401000000000007000000543032
      385F494401000000000007000000543032375F4944010000000000090000004D
      3035305F44415445010000000000080000004D3035305F53554D010000000000
      0E0000004D3035305F3731315F434F554E540100000000000E0000004D303530
      5F4F54485F434F554E5401000000000009000000543032385F434F4445010000
      0000000E000000543032355F53484F545F4E414D450100000000000D00000054
      3032375F5345435F545950450100000000000C0000004D3035305F5553445F53
      554D0100000000000B0000004D3035305F53554D5F50520100000000000E0000
      004D3035305F53554D5F504F5254460100000000000F0000004D3035305F454D
      4953535F53495A450100000000000E0000004D3035305F46494B535F44415445
      0100000000000A0000004D3035305F4E525F50520100000000000D0000004D30
      35305F4E525F504F525446010000000000110000004D3035305F4E525F544F54
      414C5F53554D0100000000000F0000004D3035305F5441585F53554D5F505201
      0000000000120000004D3035305F5441585F53554D5F504F5254460100000000
      000E0000004D3035305F5441585F56414C55450100000000000B0000004D3035
      305F53554D5F4E520100000000000F0000004D3035305F5441585F53554D5F4E
      520100000000000E0000004D3035305F43414C435F4155544F01000000000013
      0000004D3035305F5441585F56414C55455F48414E4401000000000013000000
      4D3035305F5441585F56414C55455F4155544F0100000000000F0000004D3035
      305F53554D5F5041595F5052010000000000120000004D3035305F53554D5F50
      41595F504F5254460100000000000F0000004D3035305F53554D5F5041595F4E
      52010000000000140000004D3035305F43414C435F4155544F5F504F52544601
      0000000000190000004D3035305F5441585F56414C55455F48414E445F504F52
      5446010000000000190000004D3035305F5441585F56414C55455F4155544F5F
      504F525446010000000000140000004D3035305F5441585F56414C55455F504F
      5254460100000000000F0000004D3035305F53554D5F4E525F52554201000000
      0000120000004D3037395F544F54414C5F5255425F53554D0100000000000900
      00004D3035305F435552520100000000000C0000004D3035305F414C4C5F5355
      4D010000000000100000004D3035305F414C4C5F53554D5F5553440100000000
      00090000004D3035305F5459504501000000000009000000545950455F444553
      4301000000000009000000435552525F444553430100000000000E0000004D30
      37395F544F54414C5F53554D01000000000013000000543030315F4F505F434F
      554E545F544F54414C0100000000000E0000004D3035305F544F4F4C5F545950
      450100000000000E000000544F4F4C5F545950455F44455343010000000000}
    AfterScroll = odsListAfterScroll
    object odsListM050_SUM_NR_RUB: TFloatField
      FieldName = 'M050_SUM_NR_RUB'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_TOTAL_RUB_SUM: TFloatField
      FieldName = 'M079_TOTAL_RUB_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_TOTAL_SUM: TFloatField
      FieldName = 'M079_TOTAL_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT001_OP_COUNT_TOTAL: TFloatField
      FieldName = 'T001_OP_COUNT_TOTAL'
      DisplayFormat = '### ### ### ##0'
    end
  end
end

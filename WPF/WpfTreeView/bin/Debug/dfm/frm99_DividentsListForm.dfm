inherited frm99_DividentsList: Tfrm99_DividentsList
  Left = 150
  Top = 25
  Width = 794
  Caption = 'Объявления'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 357
    Width = 786
  end
  inherited spRight: TSplitter
    Left = 783
    Height = 357
  end
  inherited Panel2: TPanel
    Top = 545
    Width = 786
    inherited Panel3: TPanel
      Left = 621
      inherited OKBtn: TButton
        Left = 548
      end
      inherited CancelBtn: TButton
        Left = 627
      end
    end
  end
  inherited paRight: TPanel
    Left = 783
    Height = 357
  end
  inherited Panel1: TPanel
    Top = 379
    Width = 786
    Height = 166
    inherited pc01: TPageControl
      Width = 784
      Height = 164
      inherited ts01: TTabSheet
        Caption = 'Выплаты дивидендов'
      end
    end
  end
  inherited paMain: TPanel
    Width = 783
    Height = 357
    inherited ToolBar2: TToolBar
      Width = 783
      inherited ToolButton5: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 783
      Height = 292
      AdvSettings.Indexes = <
        item
          FieldName = 'M050_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 5
              Caption = 'Сумма всего'
            end
            item
              FirstCol = 6
              LastCol = 7
              Caption = 'Cумма за акцию'
            end
            item
              FirstCol = 8
              LastCol = 12
              Caption = 'Прямые'
            end
            item
              FirstCol = 13
              LastCol = 17
              Caption = 'Портфельные'
            end
            item
              FirstCol = 18
              LastCol = 21
              Caption = 'Итого'
            end>
        end
        item
          Headers = <>
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
          FieldName = 'M050_FIKS_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата фиксации реестра'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип ввода'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CURR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Валюта ввода'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_ALL_SUM'
          PickList.Strings = ()
          Title.Caption = 'в валюте ввода'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_ALL_SUM_USD'
          PickList.Strings = ()
          Title.Caption = 'в $'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM'
          PickList.Strings = ()
          Title.Caption = 'в валюте ввода'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_USD_SUM'
          PickList.Strings = ()
          Title.Caption = 'в $'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Процент налога'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_711_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_PR'
          PickList.Strings = ()
          Title.Caption = 'Ожидаемая сумма ($)'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_PAY_PR'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_SUM_PR'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_VALUE_PORTF'
          PickList.Strings = ()
          Title.Caption = 'Процент налога'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_OTH_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_PORTF'
          PickList.Strings = ()
          Title.Caption = 'Ожидаемая сумма ($)'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_PAY_PORTF'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_SUM_PORTF'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_NR_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_NR'
          PickList.Strings = ()
          Title.Caption = 'Ожидаемая сумма ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_SUM_PAY_NR'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TAX_SUM_NR'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_NR_PR'
          PickList.Strings = ()
          Title.Caption = 'Доля у прям.'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_NR_PORTF'
          PickList.Strings = ()
          Title.Caption = 'Доля у портф.'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_EMISS_SIZE'
          PickList.Strings = ()
          Title.Caption = 'Общий объем эмиссии'
          Width = 95
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 783
      inherited Panel1: TPanel
        Left = 756
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 783
      inherited Panel1: TPanel
        Left = 756
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 360
    Width = 786
  end
  inherited ActionList: TActionList
    inherited actShowDetail: TAction
      Caption = 'Операции'
      Hint = 'Показать/скрыть операции дивидендов'
    end
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
      '  M050_CURR,'
      '  M050_ALL_SUM,'
      '  M050_TYPE,'
      '  M050_ALL_SUM_USD,'
      '  TYPE_DESC,'
      '  CURR_DESC'
      'FROM V_NR_DIVIDENDS_LIST'
      'WHERE T028_ID = :T028_ID'
      'AND T027_ID = :T027_ID')
    Variables.Data = {
      0300000002000000080000003A543032385F4944030000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000027000000070000004D3035305F494401000000000007000000543032
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
      525446010000000000090000004D3035305F435552520100000000000C000000
      4D3035305F414C4C5F53554D010000000000090000004D3035305F5459504501
      0000000000100000004D3035305F414C4C5F53554D5F55534401000000000009
      000000545950455F4445534301000000000009000000435552525F4445534301
      0000000000}
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListM050_DATE: TDateTimeField
      FieldName = 'M050_DATE'
      Required = True
    end
    object odsListM050_SUM: TFloatField
      FieldName = 'M050_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00000'
      EditFormat = '0.00'
    end
    object odsListM050_711_COUNT: TFloatField
      FieldName = 'M050_711_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListM050_OTH_COUNT: TFloatField
      FieldName = 'M050_OTH_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListM050_USD_SUM: TFloatField
      FieldName = 'M050_USD_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00000'
      EditFormat = '0.00'
    end
    object odsListM050_EMISS_SIZE: TFloatField
      FieldName = 'M050_EMISS_SIZE'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListM050_FIKS_DATE: TDateTimeField
      FieldName = 'M050_FIKS_DATE'
    end
    object odsListM050_NR_PR: TFloatField
      FieldName = 'M050_NR_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_NR_PORTF: TFloatField
      FieldName = 'M050_NR_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_NR_TOTAL_SUM: TFloatField
      FieldName = 'M050_NR_TOTAL_SUM'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListM050_SUM_PR: TFloatField
      FieldName = 'M050_SUM_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM_PORTF: TFloatField
      FieldName = 'M050_SUM_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_VALUE: TFloatField
      FieldName = 'M050_TAX_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM_NR: TFloatField
      FieldName = 'M050_SUM_NR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_SUM_NR: TFloatField
      FieldName = 'M050_TAX_SUM_NR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_SUM_PR: TFloatField
      FieldName = 'M050_TAX_SUM_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_SUM_PORTF: TFloatField
      FieldName = 'M050_TAX_SUM_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_CALC_AUTO: TStringField
      FieldName = 'M050_CALC_AUTO'
      Size = 1
    end
    object odsListM050_TAX_VALUE_HAND: TFloatField
      FieldName = 'M050_TAX_VALUE_HAND'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_VALUE_AUTO: TFloatField
      FieldName = 'M050_TAX_VALUE_AUTO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM_PAY_PR: TFloatField
      FieldName = 'M050_SUM_PAY_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM_PAY_PORTF: TFloatField
      FieldName = 'M050_SUM_PAY_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_SUM_PAY_NR: TFloatField
      FieldName = 'M050_SUM_PAY_NR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_CALC_AUTO_PORTF: TStringField
      FieldName = 'M050_CALC_AUTO_PORTF'
      Required = True
      Size = 1
    end
    object odsListM050_TAX_VALUE_HAND_PORTF: TFloatField
      FieldName = 'M050_TAX_VALUE_HAND_PORTF'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_VALUE_AUTO_PORTF: TFloatField
      FieldName = 'M050_TAX_VALUE_AUTO_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TAX_VALUE_PORTF: TFloatField
      FieldName = 'M050_TAX_VALUE_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_CURR: TStringField
      FieldName = 'M050_CURR'
    end
    object odsListM050_ALL_SUM: TFloatField
      FieldName = 'M050_ALL_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE: TStringField
      FieldName = 'M050_TYPE'
    end
    object odsListM050_ALL_SUM_USD: TFloatField
      FieldName = 'M050_ALL_SUM_USD'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListTYPE_DESC: TStringField
      FieldName = 'TYPE_DESC'
      Size = 8
    end
    object odsListCURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 3
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.M050_DATE := :M050_DATE;'
      '  v_rec.M050_SUM := :M050_SUM;'
      '  v_rec.M050_FIKS_DATE := :M050_FIKS_DATE;'
      '  v_rec.M050_TAX_VALUE_HAND := :M050_TAX_VALUE_HAND;'
      '  v_rec.M050_TAX_VALUE_AUTO := :M050_TAX_VALUE_AUTO;'
      '  v_rec.M050_CALC_AUTO := :M050_CALC_AUTO;'
      '  v_rec.M050_TAX_VALUE_HAND_PORTF := :M050_TAX_VALUE_HAND_PORTF;'
      '  v_rec.M050_TAX_VALUE_AUTO_PORTF := :M050_TAX_VALUE_AUTO_PORTF;'
      '  v_rec.M050_CALC_AUTO_PORTF := :M050_CALC_AUTO_PORTF;'
      '  v_rec.M050_CURR := :M050_CURR;'
      '  v_rec.M050_ALL_SUM := :M050_ALL_SUM;'
      '  v_rec.M050_TYPE := :M050_TYPE;'
      ''
      '  Pk_NResident.p_div_add(v_rec);'
      '  :M050_ID := v_rec.M050_ID;'
      'END;'
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      030000000F000000080000003A543032375F4944040000000000000000000000
      080000003A543032385F49440400000000000000000000000A0000003A4D3035
      305F444154450C0000000000000000000000080000003A4D3035305F49440400
      000000000000000000000F0000003A4D3035305F46494B535F444154450C0000
      000000000000000000090000003A4D3035305F53554D04000000000000000000
      0000140000003A4D3035305F5441585F56414C55455F48414E44040000000000
      000000000000140000003A4D3035305F5441585F56414C55455F4155544F0400
      000000000000000000000F0000003A4D3035305F43414C435F4155544F050000
      0000000000000000001A0000003A4D3035305F5441585F56414C55455F48414E
      445F504F5254460400000000000000000000001A0000003A4D3035305F544158
      5F56414C55455F4155544F5F504F525446040000000000000000000000150000
      003A4D3035305F43414C435F4155544F5F504F52544605000000000000000000
      00000A0000003A4D3035305F435552520500000000000000000000000D000000
      3A4D3035305F414C4C5F53554D0400000000000000000000000A0000003A4D30
      35305F54595045050000000000000000000000}
    Left = 112
    Top = 200
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M050_ID := :M050_ID;'
      '  v_rec.M050_DATE := :M050_DATE;'
      '  v_rec.M050_SUM := :M050_SUM;'
      '  v_rec.M050_FIKS_DATE := :M050_FIKS_DATE;'
      '  v_rec.M050_TAX_VALUE_HAND := :M050_TAX_VALUE_HAND;'
      '  v_rec.M050_TAX_VALUE_AUTO := :M050_TAX_VALUE_AUTO;'
      '  v_rec.M050_CALC_AUTO := :M050_CALC_AUTO;'
      '  v_rec.M050_TAX_VALUE_HAND_PORTF := :M050_TAX_VALUE_HAND_PORTF;'
      '  v_rec.M050_TAX_VALUE_AUTO_PORTF := :M050_TAX_VALUE_AUTO_PORTF;'
      '  v_rec.M050_CALC_AUTO_PORTF := :M050_CALC_AUTO_PORTF;'
      '  v_rec.M050_CURR := :M050_CURR;'
      '  v_rec.M050_ALL_SUM := :M050_ALL_SUM;'
      '  v_rec.M050_TYPE := :M050_TYPE;'
      ''
      '  Pk_NResident.p_div_update(v_rec);'
      '  :M050_ID := v_rec.M050_ID;'
      'END;'
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      030000000D000000080000003A4D3035305F4944040000000000000000000000
      0A0000003A4D3035305F444154450C00000000000000000000000F0000003A4D
      3035305F46494B535F444154450C0000000000000000000000090000003A4D30
      35305F53554D040000000000000000000000140000003A4D3035305F5441585F
      56414C55455F48414E44040000000000000000000000140000003A4D3035305F
      5441585F56414C55455F4155544F0400000000000000000000000F0000003A4D
      3035305F43414C435F4155544F0500000000000000000000001A0000003A4D30
      35305F5441585F56414C55455F48414E445F504F525446040000000000000000
      0000001A0000003A4D3035305F5441585F56414C55455F4155544F5F504F5254
      46040000000000000000000000150000003A4D3035305F43414C435F4155544F
      5F504F5254460500000000000000000000000A0000003A4D3035305F43555252
      0500000000000000000000000D0000003A4D3035305F414C4C5F53554D040000
      0000000000000000000A0000003A4D3035305F54595045050000000000000000
      000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M050_ID := :M050_ID;'
      '  Pk_NResident.p_div_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A4D3035305F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      '--DECLARE'
      '--  v_rec Pk_NResident.t_M050_rec;'
      '--BEGIN'
      '--  -- выполняем процедуру'
      '--  v_rec.M050_ID := :M050_ID;'
      '--  v_rec.T027_ID := :T027_ID;'
      '--  v_rec.T028_ID := :T028_ID;'
      '--  v_rec.M050_FIKS_DATE := :M050_FIKS_DATE;'
      '--  :o_result := Pk_NResident.f_div_check(v_rec);'
      '--END;'
      ' '
      ' ')
  end
  object oqTaxDefault: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :v_tax := PK_NResident.f_get_tax_default(:T028_ID, :T027_ID, :' +
        'M050_TYPE, :M050_DATE);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000060000003A565F5441580400000000000000000000000800
      00003A543032385F4944040000000000000000000000080000003A543032375F
      49440400000000000000000000000A0000003A4D3035305F5459504504000000
      00000000000000000A0000003A4D3035305F444154450C000000000000000000
      0000}
    Left = 376
    Top = 144
  end
  object oqBindPay: TOracleQuery
    SQL.Strings = (
      'begin'
      ' :v_result := PK_NResident.f_bind_pay_exists(:M050_ID);'
      'end; ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000090000003A565F524553554C540400000000000000000000
      00080000003A4D3035305F4944040000000000000000000000}
    Left = 376
    Top = 272
  end
end

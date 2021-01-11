inherited frm83_RemainsRates: Tfrm83_RemainsRates
  Left = 30
  Top = 164
  Width = 942
  Height = 363
  Caption = 'Несвязанные остатки по данным формы 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 931
    Height = 277
  end
  inherited paRight: TPanel
    Left = 934
    Height = 277
  end
  inherited paMain: TPanel
    Width = 931
    Height = 277
    inherited ToolBar2: TToolBar
      Width = 931
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Left = 267
      end
      inherited ToolBar1: TToolBar
        Left = 275
      end
      inherited sp02: TToolButton
        Left = 344
      end
      inherited tbSimFilter: TToolButton
        Left = 352
      end
      inherited tbSep01: TToolButton
        Left = 436
      end
      inherited tlbSearch: TToolBar
        Left = 444
      end
      inherited ToolButton13: TToolButton
        Left = 504
      end
      inherited tbExcel: TToolButton
        Left = 512
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 931
      Height = 212
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 9
              Caption = 'На начало периода '
            end
            item
              FirstCol = 10
              LastCol = 15
              Caption = 'На конец периода'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY'
          PickList.Strings = ()
          Title.Caption = 'Валюта номинала'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL_PREV'
          PickList.Strings = ()
          Title.Caption = 'Непогашенный номинал'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T121_NKD_PREV'
          PickList.Strings = ()
          Title.Caption = 'НКД'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T095_MRATE_PREV'
          PickList.Strings = ()
          Title.Caption = 'Котировка с НКД'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EX_DIV_CORR_PREV'
          PickList.Strings = ()
          Title.Caption = 'Поправка на экс.-див. дату'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRICE_PREV'
          PickList.Strings = ()
          Title.Caption = 'Цена для расчетов в валюте номинала'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T095_MRATE_PREV_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL'
          PickList.Strings = ()
          Title.Caption = 'Непогашенный номинал'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T121_NKD'
          PickList.Strings = ()
          Title.Caption = 'НКД'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T095_MRATE'
          PickList.Strings = ()
          Title.Caption = 'Котировка с НКД'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EX_DIV_CORR'
          PickList.Strings = ()
          Title.Caption = 'Поправка на экс.-див. дату'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          PickList.Strings = ()
          Title.Caption = 'Цена для расчетов в валюте номинала'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T095_MRATE_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 931
      inherited Panel1: TPanel
        Left = 904
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 931
      inherited Panel1: TPanel
        Left = 904
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 310
    Width = 934
  end
  inherited pnlButtons: TPanel
    Top = 277
    Width = 934
    inherited OKBtn: TButton
      Left = 776
    end
    inherited CancelBtn: TButton
      Left = 856
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Caption = 'Перейти к 405'
      Enabled = False
      Hint = 'Перейти к 405'
      ImageIndex = 1
    end
    inherited actEditAttributes: TAction
      Enabled = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT t030_id,'
      '       t026_sec_regn,'
      '       t027_id,'
      '       t028_shot_name,'
      '       T028_INN,'
      '       t031_currency,'
      '       t031_nominal_prev,'
      '       t031_nominal,'
      '       t121_nkd_prev,'
      '       t121_nkd,'
      '       t095_mrate_prev,'
      '       t095_mrate_prev_comment,'
      '       t095_MARKET_RATE_PREV,'
      '       t095_mrate,'
      '       t095_mrate_comment,'
      '       t095_MARKET_RATE,'
      '       ex_div_corr_prev,'
      '       ex_div_corr,'
      '       price_prev,'
      '       price'
      '  FROM v_405_calc_remains_tab_101'
      ' WHERE t027_id = :t027_id')
    Variables.Data = {
      0300000001000000080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000140000000E000000543032385F53484F545F4E414D45010000000000
      07000000543033305F49440100000000000D000000543032365F5345435F5245
      474E01000000000007000000543032375F49440100000000000D000000543033
      315F43555252454E435901000000000011000000543033315F4E4F4D494E414C
      5F505245560100000000000C000000543033315F4E4F4D494E414C0100000000
      000D000000543132315F4E4B445F505245560100000000000800000054313231
      5F4E4B440100000000000F000000543039355F4D524154455F50524556010000
      0000000A000000543039355F4D524154450100000000001000000045585F4449
      565F434F52525F505245560100000000000B00000045585F4449565F434F5252
      0100000000000A00000050524943455F50524556010000000000050000005052
      49434501000000000015000000543039355F4D41524B45545F524154455F5052
      455601000000000010000000543039355F4D41524B45545F5241544501000000
      000017000000543039355F4D524154455F505245565F434F4D4D454E54010000
      00000012000000543039355F4D524154455F434F4D4D454E5401000000000008
      000000543032385F494E4E010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT031_NOMINAL_PREV: TFloatField
      FieldName = 'T031_NOMINAL_PREV'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT121_NKD_PREV: TFloatField
      FieldName = 'T121_NKD_PREV'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT121_NKD: TFloatField
      FieldName = 'T121_NKD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT095_MRATE_PREV: TFloatField
      FieldName = 'T095_MRATE_PREV'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListT095_MRATE: TFloatField
      FieldName = 'T095_MRATE'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListEX_DIV_CORR_PREV: TFloatField
      FieldName = 'EX_DIV_CORR_PREV'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListEX_DIV_CORR: TFloatField
      FieldName = 'EX_DIV_CORR'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListPRICE_PREV: TFloatField
      FieldName = 'PRICE_PREV'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListT095_MARKET_RATE_PREV: TFloatField
      FieldName = 'T095_MARKET_RATE_PREV'
    end
    object odsListT095_MARKET_RATE: TFloatField
      FieldName = 'T095_MARKET_RATE'
    end
    object odsListT095_MRATE_PREV_COMMENT: TStringField
      FieldName = 'T095_MRATE_PREV_COMMENT'
      Size = 255
    end
    object odsListT095_MRATE_COMMENT: TStringField
      FieldName = 'T095_MRATE_COMMENT'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
  end
  inherited oqUpdate: TOracleQuery
    Variables.Data = {
      0300000006000000080000003A543035355F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000D0000003A434F55
      4E545F52454D41494E0400000000000000000000000F0000003A5553445F5355
      4D5F52454D41494E040000000000000000000000080000003A543033305F4944
      0400000000000000000000000F0000003A543039365F42414E4B5F434F444505
      0000000000000000000000}
  end
end

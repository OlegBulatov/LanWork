inherited frm90_ProfitList: Tfrm90_ProfitList
  Left = 240
  Top = 104
  Width = 1009
  Height = 699
  Caption = 'frm90_ProfitList'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 998
    Height = 613
  end
  inherited Panel2: TPanel
    Top = 632
    Width = 1001
    inherited Panel3: TPanel
      Left = 836
    end
  end
  inherited paRight: TPanel
    Left = 1001
    Height = 613
  end
  inherited paMain: TPanel
    Width = 998
    Height = 613
    inherited paToolBars: TPanel
      Width = 998
      inherited ToolBar2: TToolBar
        Width = 998
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        object ToolButton6: TToolButton
          Left = 674
          Top = 0
          Width = 8
          Caption = 'ToolButton6'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton8: TToolButton
          Left = 682
          Top = 0
          Width = 8
          Caption = 'ToolButton8'
          ImageIndex = 0
          Style = tbsSeparator
          Visible = False
        end
        object ToolButton9: TToolButton
          Left = 690
          Top = 0
          Action = actDraftData
          AutoSize = True
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 114
      Width = 998
      Height = 499
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_START_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Месяц'
            end
            item
              FirstCol = 4
              LastCol = 9
              Caption = 'Операции'
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = 'Переоценка'
            end
            item
              FirstCol = 13
              LastCol = 15
              Caption = 'Прочие изменения'
            end>
        end
        item
          Headers = <>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_MONTH_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CURR_DESC'
          PickList.Strings = ()
          Title.Caption = 'Валюта ввода'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_START_SUM'
          PickList.Strings = ()
          Title.Caption = 'Остаток на начало ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_OPER_SUM'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_PROFIT_SUM'
          PickList.Strings = ()
          Title.Caption = 'КЧП (после вычета) ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_TOTAL_PROFIT'
          PickList.Strings = ()
          Title.Caption = 'КЧП (до вычета) ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_MINOR_PROFIT'
          PickList.Strings = ()
          Title.Caption = 'Чистая прибыль миноритариев ($)'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_DIVIDENDS'
          PickList.Strings = ()
          Title.Caption = 'Дивиденды ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_OTHERS_SUM'
          PickList.Strings = ()
          Title.Caption = 'Прочие доходы/ расходы ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_COURSE_DIFF'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_DIFF_OPU'
          PickList.Strings = ()
          Title.Caption = 'ОПУ ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_DIFF_OSS'
          PickList.Strings = ()
          Title.Caption = 'ОСС ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_OTHER_CHANGES'
          PickList.Strings = ()
          Title.Caption = 'Всего ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_OTHER_OPU'
          PickList.Strings = ()
          Title.Caption = 'ОПУ ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_OTHER_OSS'
          PickList.Strings = ()
          Title.Caption = 'ОСС ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_OTH_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Прочие компенс. ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_END_SUM'
          PickList.Strings = ()
          Title.Caption = 'Остаток на конец ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M020_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 72
      Width = 998
      inherited Panel1: TPanel
        Left = 971
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 93
      Width = 998
      inherited Panel1: TPanel
        Left = 971
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 23
      Width = 998
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label2: TLabel
        Left = 5
        Top = 3
        Width = 42
        Height = 13
        Caption = 'Месяц с'
      end
      object Label1: TLabel
        Left = 5
        Top = 27
        Width = 48
        Height = 13
        Caption = 'Месяц по'
      end
      object Label3: TLabel
        Left = 192
        Top = 3
        Width = 116
        Height = 13
        Caption = 'Рассчитаны прогнозы:'
      end
      object Label4: TLabel
        Left = 192
        Top = 27
        Width = 127
        Height = 13
        Caption = 'Схема прогнозирования:'
      end
      object txt01: TDBText
        Left = 331
        Top = 3
        Width = 29
        Height = 13
        AutoSize = True
        DataField = 'HAS_FORECAST'
        DataSource = dsForecast
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txt02: TDBText
        Left = 331
        Top = 27
        Width = 29
        Height = 13
        AutoSize = True
        DataField = 'M025_NAME'
        DataSource = dsForecast
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lcb01: TDBLookupComboBox
        Left = 59
        Top = 0
        Width = 119
        Height = 21
        KeyField = 'T055_ID'
        ListField = 'T055_LONG_NAME'
        ListSource = ds01
        TabOrder = 0
      end
      object lcb02: TDBLookupComboBox
        Left = 59
        Top = 24
        Width = 119
        Height = 21
        KeyField = 'T055_ID'
        ListField = 'T055_LONG_NAME'
        ListSource = ds02
        TabOrder = 1
      end
      object CheckBox1: TCheckBox
        Left = 876
        Top = 3
        Width = 97
        Height = 17
        Hint = 'Показать/скрыть детализацию'
        Anchors = [akTop, akRight]
        Caption = 'Операции'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 1059
        Top = 16
        Width = 97
        Height = 17
        Hint = 'Показать/скрыть детализацию'
        Anchors = [akTop, akRight]
        Caption = 'Переоценка'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox3: TCheckBox
        Left = 876
        Top = 27
        Width = 121
        Height = 17
        Hint = 'Показать/скрыть детализацию'
        Anchors = [akTop, akRight]
        Caption = 'Прочие изменения'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = CheckBox1Click
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 613
    Width = 1001
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
    object actDraftData: TAction
      Caption = 'Ввести данные'
      Hint = 'Ввести первичные данные'
      OnExecute = actDraftDataExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      ' M020_ID,'
      ' M029_ID,'
      ' T055_ID,'
      ' T055_START_DATE,'
      ' T055_MONTH_NAME, '
      ' T055_YEAR_ID,'
      ' T055_YEAR_NAME,'
      ' M020_CURR, CURR_DESC,'
      ' M020_TYPE, '
      ' M020_TYPE_DESC, '
      ' M020_START_SUM, '
      ' M020_OPER_SUM, '
      ' M020_PROFIT_SUM, '
      ' M020_TOTAL_PROFIT, '
      ' M020_MINOR_PROFIT, '
      ' - M020_DIVIDENDS '
      '      as M020_DIVIDENDS, '
      ' M020_OTHERS_SUM, '
      ' M020_COURSE_DIFF, '
      ' M020_DIFF_OPU, '
      ' M020_DIFF_OSS, '
      ' M020_OTHER_CHANGES, '
      ' M020_OTHER_OPU, '
      ' M020_OTHER_OSS, '
      ' M020_END_SUM, '
      ' M020_END_SUM_ORG, '
      ' M020_MINOR_PROFIT_ORG, '
      ' M020_TOTAL_PROFIT_ORG, '
      ' M020_OTHERS_SUM_ORG, '
      ' M020_DIFF_OPU_ORG, '
      ' M020_DIFF_OSS_ORG, '
      ' M020_OTHER_OPU_ORG, '
      ' M020_OTHER_OSS_ORG, '
      ' M020_OTH_REMAIN, '
      ' M020_REMAIN_TYPE '
      'from V_NR_REINVEST_PROFITS'
      'WHERE M029_ID = :T028_ID'
      'and T055_ID >= :T055_ID1'
      'and T055_ID <= :T055_ID2'
      '')
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      090000003A543035355F494431040000000000000000000000090000003A5430
      35355F494432040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000023000000070000004D3032305F494401000000000007000000543035
      355F4944010000000000090000004D3032305F43555252010000000000090000
      004D3032305F545950450100000000000E0000004D3032305F53544152545F53
      554D0100000000000D0000004D3032305F4F5045525F53554D0100000000000F
      0000004D3032305F50524F4649545F53554D010000000000110000004D303230
      5F544F54414C5F50524F464954010000000000110000004D3032305F4D494E4F
      525F50524F4649540100000000000F0000004D3032305F4F54484552535F5355
      4D010000000000100000004D3032305F434F555253455F444946460100000000
      000D0000004D3032305F444946465F4F50550100000000000D0000004D303230
      5F444946465F4F5353010000000000120000004D3032305F4F544845525F4348
      414E4745530100000000000E0000004D3032305F4F544845525F4F5055010000
      0000000E0000004D3032305F4F544845525F4F53530100000000000C0000004D
      3032305F454E445F53554D0100000000000F000000543035355F53544152545F
      444154450100000000000E0000004D3032305F4449564944454E445301000000
      00000F000000543035355F4D4F4E54485F4E414D450100000000000C00000054
      3035355F594541525F49440100000000000E000000543035355F594541525F4E
      414D450100000000000E0000004D3032305F545950455F444553430100000000
      0009000000435552525F44455343010000000000150000004D3032305F4D494E
      4F525F50524F4649545F4F5247010000000000150000004D3032305F544F5441
      4C5F50524F4649545F4F5247010000000000130000004D3032305F4F54484552
      535F53554D5F4F5247010000000000110000004D3032305F444946465F4F5055
      5F4F5247010000000000110000004D3032305F444946465F4F53535F4F524701
      0000000000120000004D3032305F4F544845525F4F50555F4F52470100000000
      00120000004D3032305F4F544845525F4F53535F4F5247010000000000070000
      004D3032395F49440100000000000F0000004D3032305F4F54485F52454D4149
      4E010000000000100000004D3032305F52454D41494E5F545950450100000000
      00100000004D3032305F454E445F53554D5F4F5247010000000000}
    object odsListM020_ID: TFloatField
      FieldName = 'M020_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListM020_CURR: TStringField
      FieldName = 'M020_CURR'
      OnChange = odsListM020_CURRChange
      Size = 3
    end
    object odsListM020_TYPE: TFloatField
      FieldName = 'M020_TYPE'
    end
    object odsListM020_START_SUM: TFloatField
      FieldName = 'M020_START_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OPER_SUM: TFloatField
      FieldName = 'M020_OPER_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_PROFIT_SUM: TFloatField
      FieldName = 'M020_PROFIT_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_TOTAL_PROFIT: TFloatField
      FieldName = 'M020_TOTAL_PROFIT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_MINOR_PROFIT: TFloatField
      FieldName = 'M020_MINOR_PROFIT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHERS_SUM: TFloatField
      FieldName = 'M020_OTHERS_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_COURSE_DIFF: TFloatField
      FieldName = 'M020_COURSE_DIFF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_DIFF_OPU: TFloatField
      FieldName = 'M020_DIFF_OPU'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_DIFF_OSS: TFloatField
      FieldName = 'M020_DIFF_OSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHER_CHANGES: TFloatField
      FieldName = 'M020_OTHER_CHANGES'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHER_OPU: TFloatField
      FieldName = 'M020_OTHER_OPU'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHER_OSS: TFloatField
      FieldName = 'M020_OTHER_OSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_END_SUM: TFloatField
      FieldName = 'M020_END_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListM020_DIVIDENDS: TFloatField
      FieldName = 'M020_DIVIDENDS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT055_MONTH_NAME: TStringField
      FieldName = 'T055_MONTH_NAME'
      Required = True
      Size = 255
    end
    object odsListT055_YEAR_ID: TFloatField
      FieldName = 'T055_YEAR_ID'
      Required = True
    end
    object odsListT055_YEAR_NAME: TStringField
      FieldName = 'T055_YEAR_NAME'
      Required = True
      Size = 255
    end
    object odsListM020_TYPE_DESC: TStringField
      FieldName = 'M020_TYPE_DESC'
      Size = 7
    end
    object odsListCURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 3
    end
    object odsListM020_MINOR_PROFIT_ORG: TFloatField
      FieldName = 'M020_MINOR_PROFIT_ORG'
      OnChange = odsListM020_MINOR_PROFIT_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_TOTAL_PROFIT_ORG: TFloatField
      FieldName = 'M020_TOTAL_PROFIT_ORG'
      OnChange = odsListM020_TOTAL_PROFIT_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHERS_SUM_ORG: TFloatField
      FieldName = 'M020_OTHERS_SUM_ORG'
      OnChange = odsListM020_OTHERS_SUM_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_DIFF_OPU_ORG: TFloatField
      FieldName = 'M020_DIFF_OPU_ORG'
      OnChange = odsListM020_DIFF_OPU_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_DIFF_OSS_ORG: TFloatField
      FieldName = 'M020_DIFF_OSS_ORG'
      OnChange = odsListM020_DIFF_OSS_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHER_OPU_ORG: TFloatField
      FieldName = 'M020_OTHER_OPU_ORG'
      OnChange = odsListM020_OTHER_OPU_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_OTHER_OSS_ORG: TFloatField
      FieldName = 'M020_OTHER_OSS_ORG'
      OnChange = odsListM020_OTHER_OSS_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM029_ID: TFloatField
      FieldName = 'M029_ID'
      Required = True
    end
    object odsListM020_OTH_REMAIN: TFloatField
      FieldName = 'M020_OTH_REMAIN'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM020_REMAIN_TYPE: TStringField
      FieldName = 'M020_REMAIN_TYPE'
      Required = True
      OnChange = odsListM020_REMAIN_TYPEChange
      Size = 1
    end
    object odsListM020_END_SUM_ORG: TFloatField
      FieldName = 'M020_END_SUM_ORG'
      Required = True
      OnChange = odsListM020_END_SUM_ORGChange
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Nr_Prof_Utils.t_M020_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M020_ID := :M020_ID;'
      '  v_rec.M029_ID := :M029_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.M020_CURR := :M020_CURR;'
      '  v_rec.M020_TYPE := :M020_TYPE;'
      '  v_rec.M020_START_SUM := :M020_START_SUM;'
      '  v_rec.M020_OPER_SUM := :M020_OPER_SUM;'
      '  v_rec.M020_PROFIT_SUM := :M020_PROFIT_SUM;'
      '  v_rec.M020_TOTAL_PROFIT := :M020_TOTAL_PROFIT;'
      '  v_rec.M020_TOTAL_PROFIT_ORG := :M020_TOTAL_PROFIT_ORG;'
      '  v_rec.M020_MINOR_PROFIT := :M020_MINOR_PROFIT;'
      '  v_rec.M020_MINOR_PROFIT_ORG := :M020_MINOR_PROFIT_ORG;'
      ''
      '  -- потому что отображаем и храним с противоположными знаками'
      '  v_rec.M020_DIVIDENDS := - :M020_DIVIDENDS;'
      ''
      '  v_rec.M020_OTHERS_SUM := :M020_OTHERS_SUM;'
      '  v_rec.M020_OTHERS_SUM_ORG := :M020_OTHERS_SUM_ORG;'
      '  v_rec.M020_COURSE_DIFF := :M020_COURSE_DIFF;'
      '  v_rec.M020_DIFF_OPU := :M020_DIFF_OPU;'
      '  v_rec.M020_DIFF_OPU_ORG := :M020_DIFF_OPU_ORG;'
      '  v_rec.M020_DIFF_OSS := :M020_DIFF_OSS;'
      '  v_rec.M020_DIFF_OSS_ORG := :M020_DIFF_OSS_ORG;'
      '  v_rec.M020_OTHER_CHANGES := :M020_OTHER_CHANGES;'
      '  v_rec.M020_OTHER_OPU := :M020_OTHER_OPU;'
      '  v_rec.M020_OTHER_OPU_ORG := :M020_OTHER_OPU_ORG;'
      '  v_rec.M020_OTHER_OSS := :M020_OTHER_OSS;'
      '  v_rec.M020_OTHER_OSS_ORG := :M020_OTHER_OSS_ORG;'
      '  v_rec.M020_OTH_REMAIN := :M020_OTH_REMAIN;'
      '  v_rec.M020_REMAIN_TYPE := :M020_REMAIN_TYPE;'
      '  v_rec.M020_END_SUM := :M020_END_SUM;'
      '  v_rec.M020_END_SUM_ORG := :M020_END_SUM_ORG;'
      ''
      '  Pk_Nr_Prof_Utils.p_profit_update(v_rec);'
      '  :M020_ID := v_rec.M020_ID;'
      'END;'
      ' '
      ' '
      ' ')
    Variables.Data = {
      030000001D000000080000003A4D3032305F4944040000000000000000000000
      0F0000003A4D3032305F53544152545F53554D0400000000000000000000000E
      0000003A4D3032305F4F5045525F53554D040000000000000000000000100000
      003A4D3032305F50524F4649545F53554D040000000000000000000000120000
      003A4D3032305F544F54414C5F50524F46495404000000000000000000000012
      0000003A4D3032305F4D494E4F525F50524F4649540400000000000000000000
      000F0000003A4D3032305F4449564944454E4453040000000000000000000000
      100000003A4D3032305F4F54484552535F53554D040000000000000000000000
      110000003A4D3032305F434F555253455F444946460400000000000000000000
      000E0000003A4D3032305F444946465F4F50550400000000000000000000000E
      0000003A4D3032305F444946465F4F5353040000000000000000000000130000
      003A4D3032305F4F544845525F4348414E474553040000000000000000000000
      0F0000003A4D3032305F4F544845525F4F50550400000000000000000000000F
      0000003A4D3032305F4F544845525F4F53530400000000000000000000000D00
      00003A4D3032305F454E445F53554D0400000000000000000000000A0000003A
      4D3032305F435552520500000000000000000000000A0000003A4D3032305F54
      595045040000000000000000000000080000003A543035355F49440400000000
      00000000000000160000003A4D3032305F544F54414C5F50524F4649545F4F52
      47040000000000000000000000160000003A4D3032305F4D494E4F525F50524F
      4649545F4F5247040000000000000000000000140000003A4D3032305F4F5448
      4552535F53554D5F4F5247040000000000000000000000120000003A4D303230
      5F444946465F4F50555F4F5247040000000000000000000000120000003A4D30
      32305F444946465F4F53535F4F5247040000000000000000000000130000003A
      4D3032305F4F544845525F4F50555F4F52470400000000000000000000001300
      00003A4D3032305F4F544845525F4F53535F4F52470400000000000000000000
      00080000003A4D3032395F4944040000000000000000000000110000003A4D30
      32305F52454D41494E5F54595045050000000000000000000000100000003A4D
      3032305F4F54485F52454D41494E040000000000000000000000110000003A4D
      3032305F454E445F53554D5F4F5247040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Nr_Prof_Utils.t_M020_rec;'
      'BEGIN'
      '  -- выполняем процедуру  '
      '  v_rec.M020_ID := :M020_ID;'
      '  v_rec.M029_ID := :M029_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  :O_result := Pk_Nr_Prof_Utils.f_profit_check(v_rec);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000004000000080000003A543035355F4944040000000000000000000000
      090000003A4F5F524553554C54040000000000000000000000080000003A4D30
      32305F4944040000000000000000000000080000003A4D3032395F4944040000
      000000000000000000}
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      #9'V1.T055_LONG_NAME,'
      #9'V1.T055_ID'
      'FROM V_NR_TIME V1'
      'WHERE V1.T055_TYPE = '#39'M'#39
      'AND V1.T055_ID > 1762'
      'ORDER BY V1.T055_ID '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000543035355F4C4F4E475F4E414D45010000000000
      07000000543035355F49440100000000000C0000004D3032375F44454641554C
      54010000000000}
    Session = dmMain.OracleSession
    AfterScroll = ods01AfterScroll
    Left = 176
    Top = 65535
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 208
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      #9'V1.T055_LONG_NAME,'
      #9'V1.T055_ID'
      'FROM V_NR_TIME V1'
      'WHERE V1.T055_TYPE = '#39'M'#39
      'AND V1.T055_ID > 1762'
      'ORDER BY V1.T055_ID '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000543035355F4C4F4E475F4E414D45010000000000
      07000000543035355F49440100000000000C0000004D3032375F44454641554C
      54010000000000}
    Session = dmMain.OracleSession
    AfterScroll = ods02AfterScroll
    Left = 176
    Top = 39
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods02T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 208
    Top = 40
  end
  object odsGetStartSum: TOracleDataSet
    SQL.Strings = (
      'select V1.M020_END_SUM, V1.M020_CURR '
      'from M020_REINVEST_PROFITS V1'
      'where'
      '    V1.T055_ID = (SELECT V3.T055_ID'
      '    FROM   V_NR_TIME V2, '
      '           V_NR_TIME V3'
      '    WHERE  V3.T055_TYPE = '#39'M'#39
      '    AND    V2.T055_ID = :T055_ID'
      
        '    AND    ADD_MONTHS(TRUNC(V2.T055_START_DATE),- 1) BETWEEN V3.' +
        'T055_START_DATE AND V3.T055_END_DATE)'
      'and V1.M029_ID = :M029_ID'
      ' ')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A4D3032395F4944040000000000000000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 259
    object odsGetStartSumM020_END_SUM: TFloatField
      FieldName = 'M020_END_SUM'
    end
    object odsGetStartSumM020_CURR: TStringField
      FieldName = 'M020_CURR'
      Size = 3
    end
  end
  object oqStartCourse: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :o_result := Pk_Nr_Utils.f_get_start_month_course(:CURR, :T055' +
        '_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00050000003A43555252050000000000000000000000080000003A543035355F
      4944040000000000000000000000}
    Left = 184
    Top = 300
  end
  object oqCourse: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :o_result := Pk_Nr_Utils.f_get_month_course(:CURR, :T055_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00050000003A43555252050000000000000000000000080000003A543035355F
      4944040000000000000000000000}
    Left = 256
    Top = 260
  end
  object oqMultiUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Nr_Prof_Utils.t_M020_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M020_ID := :M020_ID;'
      '  v_rec.M020_CURR := :M020_CURR;'
      '  v_rec.M020_TYPE := :M020_TYPE;'
      '  Pk_Nr_Prof_Utils.p_profit_multi_update(v_rec);'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4D3032305F4944040000000000000000000000
      0A0000003A4D3032305F435552520500000000000000000000000A0000003A4D
      3032305F54595045040000000000000000000000}
    Left = 336
    Top = 264
  end
  object odsForecast: TOracleDataSet
    SQL.Strings = (
      'select * from V_NR_REINVEST_ISSUER_FORECASTS'
      'WHERE M029_ID = :T028_ID'
      '')
    ReadBuffer = 50
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000090000004D3032355F4E414D45010000000000090000004D
      3033355F44415445010000000000090000004D3032335F4E414D450100000000
      00090000004D3032375F4E414D450100000000000C0000004841535F464F5245
      43415354010000000000070000004D3032395F4944010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 400
    Top = 11
    object odsForecastHAS_FORECAST: TStringField
      FieldName = 'HAS_FORECAST'
      Size = 3
    end
    object odsForecastM035_DATE: TDateTimeField
      FieldName = 'M035_DATE'
    end
    object odsForecastM023_NAME: TStringField
      FieldName = 'M023_NAME'
      Size = 255
    end
    object odsForecastM027_NAME: TStringField
      FieldName = 'M027_NAME'
      Size = 255
    end
    object odsForecastM029_ID: TFloatField
      FieldName = 'M029_ID'
      Required = True
    end
    object odsForecastM025_NAME: TStringField
      FieldName = 'M025_NAME'
      Size = 255
    end
  end
  object dsForecast: TDataSource
    DataSet = odsForecast
    Left = 432
    Top = 11
  end
  object oqEndCourse: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :o_result := Pk_Nr_Utils.f_get_end_month_course(:CURR, :T055_I' +
        'D);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00050000003A43555252050000000000000000000000080000003A543035355F
      4944040000000000000000000000}
    Left = 184
    Top = 260
  end
end

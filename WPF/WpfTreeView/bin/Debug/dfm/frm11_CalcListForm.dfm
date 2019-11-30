inherited frm11_CalcList: Tfrm11_CalcList
  Left = 107
  Top = 156
  Width = 1036
  Height = 631
  Caption = 'Расчеты по дивидендам'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1025
    Height = 545
  end
  inherited Panel2: TPanel
    Top = 564
    Width = 1028
    inherited Panel3: TPanel
      Left = 863
    end
  end
  inherited paRight: TPanel
    Left = 1028
    Height = 545
  end
  inherited paMain: TPanel
    Width = 1025
    Height = 545
    inherited ToolBar2: TToolBar
      Top = 26
      Width = 1025
      inherited ToolButton17: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton5: TToolButton
        Action = actCalc
        Enabled = False
        Visible = False
      end
      object ToolButton6: TToolButton
        Left = 674
        Top = 0
        Action = actCalc
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 91
      Width = 1025
      Height = 454
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_START_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 2
              LastCol = 8
              Caption = 'Чистая задолженность по дивидендам (в млн. $)'
            end
            item
              FirstCol = 9
              LastCol = 15
              Caption = 'Задолженность по налогам (в млн. $)'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_REMAINS_BEG'
          PickList.Strings = ()
          Title.Caption = 'Вх. остаток'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_SUM'
          PickList.Strings = ()
          Title.Caption = 'Рост'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_SUM_ADD'
          PickList.Strings = ()
          Title.Caption = 'Снижение'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_OVERRATE'
          PickList.Strings = ()
          Title.Caption = 'Переоц.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_SUM_OTH_OPER'
          PickList.Strings = ()
          Title.Caption = 'Пр. опер.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_SUM_OTH_CHNG'
          PickList.Strings = ()
          Title.Caption = 'Пр. изм.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_REMAINS_END'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_REMAINS_BEG'
          PickList.Strings = ()
          Title.Caption = 'Вх. остаток'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_SUM'
          PickList.Strings = ()
          Title.Caption = 'Рост'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_ADD'
          PickList.Strings = ()
          Title.Caption = 'Снижение'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_OVERRATE'
          PickList.Strings = ()
          Title.Caption = 'Переоц.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_OTH_OPER'
          PickList.Strings = ()
          Title.Caption = 'Пр. опер.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_OTH_CHNG'
          PickList.Strings = ()
          Title.Caption = 'Пр. изм.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_TAX_REMAINS_END'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_CALC_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата расчета'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M009_CALC_STATUS_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Статус расчета'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 49
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 70
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inline fm31_TypeInvest: Tfm31_TypeInvest
      Width = 1025
      Align = alTop
      TabOrder = 4
      inherited Label1: TLabel
        Width = 43
        Caption = 'Тип инв.'
      end
      inherited Lookup01: TDBLookupComboBox
        Left = 51
        Top = 5
        Width = 119
        Anchors = [akLeft, akTop, akBottom]
        DataField = ''
      end
      inherited odsList: TOracleDataSet
        AfterScroll = fm31_TypeInvestodsListAfterScroll
        Left = 312
      end
      inherited dsList: TDataSource
        Left = 280
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 545
    Width = 1028
  end
  inherited ActionList: TActionList
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    object actCalc: TAction
      Caption = 'Рассчитать'
      ImageIndex = 28
      OnExecute = actCalcExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '       T055_START_DATE, '
      '       T055_LONG_NAME, '
      '       M009_SUM, '
      '       M009_SUM_ADD, '
      '       M009_OVERRATE, '
      '       M009_REMAINS_BEG, '
      '       M009_REMAINS_END, '
      '       M009_TAX_SUM, '
      '       M009_TAX_ADD, '
      '       M009_TAX_OVERRATE, '
      '       M009_TAX_REMAINS_BEG, '
      '       M009_TAX_REMAINS_END, '
      '       M009_SUM_OTH_OPER, '
      '       M009_TAX_OTH_OPER, '
      '       M009_SUM_OTH_CHNG, '
      '       M009_TAX_OTH_CHNG, '
      '       T028_ID, '
      '       M009_CALC_STATUS, '
      '       M009_CALC_STATUS_DESCR, '
      '       TO_DATE(NULL) M009_CALC_DATE,'
      '       TO_NUMBER(M050_TYPE) M050_TYPE,'
      '       T055_ID,'
      '       T027_ID'
      'FROM V_NR_ARREARS_OF_DIVIDENDS'
      '--FROM V_NR_ARREARS_OF_DIVIDENDS'
      'WHERE T028_ID = :T028_ID'
      'AND :T027_ID =  T027_ID'
      'AND :M050_TYPE = M050_TYPE')
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000A0000003A4D3035
      305F54595045040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000170000000F000000543035355F53544152545F444154450100000000
      000E000000543035355F4C4F4E475F4E414D45010000000000080000004D3030
      395F53554D0100000000000C0000004D3030395F53554D5F4144440100000000
      000D0000004D3030395F4F56455252415445010000000000100000004D303039
      5F52454D41494E535F424547010000000000100000004D3030395F52454D4149
      4E535F454E44010000000000110000004D3030395F5441585F4F564552524154
      45010000000000140000004D3030395F5441585F52454D41494E535F42454701
      0000000000140000004D3030395F5441585F52454D41494E535F454E44010000
      000000100000004D3030395F43414C435F5354415455530100000000000E0000
      004D3030395F43414C435F4441544501000000000007000000543032385F4944
      01000000000007000000543035355F49440100000000000C0000004D3030395F
      5441585F53554D01000000000007000000543032375F49440100000000001600
      00004D3030395F43414C435F5354415455535F44455343520100000000000C00
      00004D3030395F5441585F414444010000000000090000004D3035305F545950
      45010000000000110000004D3030395F53554D5F4F54485F4F50455201000000
      0000110000004D3030395F5441585F4F54485F4F504552010000000000110000
      004D3030395F53554D5F4F54485F43484E47010000000000110000004D303039
      5F5441585F4F54485F43484E47010000000000}
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListM009_SUM: TFloatField
      FieldName = 'M009_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_SUM_ADD: TFloatField
      FieldName = 'M009_SUM_ADD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_OVERRATE: TFloatField
      FieldName = 'M009_OVERRATE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_REMAINS_BEG: TFloatField
      FieldName = 'M009_REMAINS_BEG'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_REMAINS_END: TFloatField
      FieldName = 'M009_REMAINS_END'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_TAX_SUM: TFloatField
      FieldName = 'M009_TAX_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_TAX_OVERRATE: TFloatField
      FieldName = 'M009_TAX_OVERRATE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_TAX_REMAINS_BEG: TFloatField
      FieldName = 'M009_TAX_REMAINS_BEG'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_TAX_REMAINS_END: TFloatField
      FieldName = 'M009_TAX_REMAINS_END'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListM009_CALC_STATUS: TStringField
      FieldName = 'M009_CALC_STATUS'
      Size = 1
    end
    object odsListM009_CALC_STATUS_DESCR: TStringField
      FieldName = 'M009_CALC_STATUS_DESCR'
      Size = 16
    end
    object odsListM009_CALC_DATE: TDateTimeField
      FieldName = 'M009_CALC_DATE'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListM009_TAX_ADD: TFloatField
      FieldName = 'M009_TAX_ADD'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE: TFloatField
      FieldName = 'M050_TYPE'
    end
    object odsListM009_SUM_OTH_OPER: TFloatField
      FieldName = 'M009_SUM_OTH_OPER'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_TAX_OTH_OPER: TFloatField
      FieldName = 'M009_TAX_OTH_OPER'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_SUM_OTH_CHNG: TFloatField
      FieldName = 'M009_SUM_OTH_CHNG'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM009_TAX_OTH_CHNG: TFloatField
      FieldName = 'M009_TAX_OTH_CHNG'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_M009_rec;'
      'BEGIN'
      '  v_rec.M009_ID := :M009_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_reC.T027_ID := :T027_ID;'
      '  v_rec.M050_TYPE := :M050_TYPE;'
      '  v_rec.M009_SUM_CHANGE := :M009_SUM_CHANGE;'
      '  v_rec.M009_TAX_SUM_CHANGE := :M009_TAX_SUM_CHANGE;'
      '  PK_NResident.p_arrears_update(v_rec);'
      '  :M009_ID := v_rec.M009_ID;'
      'END;')
    Variables.Data = {
      0300000007000000080000003A4D3030395F4944040000000000000000000000
      080000003A543032385F4944040000000000000000000000080000003A543035
      355F4944040000000000000000000000100000003A4D3030395F53554D5F4348
      414E4745040000000000000000000000140000003A4D3030395F5441585F5355
      4D5F4348414E47450400000000000000000000000A0000003A4D3035305F5459
      5045040000000000000000000000080000003A543032375F4944040000000000
      000000000000}
  end
  object oqCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NResident.p_arrears_calc_all;'
      'END;'
      '')
    Session = dmMain.OracleSession
    Left = 768
    Top = 8
  end
  object oqCheckRecalc: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_NResident.p_check_recalc;'
      'end;')
    Session = dmMain.OracleSession
    Left = 808
    Top = 8
  end
end

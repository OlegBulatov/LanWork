inherited frm60_DividentsList: Tfrm60_DividentsList
  Left = 135
  Top = 104
  Width = 807
  Caption = 'Дивиденды'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Width = 799
  end
  inherited spRight: TSplitter
    Left = 796
  end
  inherited paRight: TPanel
    Left = 799
  end
  inherited paMain: TPanel
    Width = 796
    inherited ToolBar2: TToolBar
      Width = 796
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 796
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
          FieldName = 'T050_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата объяв.'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма на 1 акцию (руб)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_USD_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма на 1 акцию ($)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_711_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б. (711)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_OTH_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б. (прочие)'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_TAX_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Процент налога'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма выплат ($)'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_TAX_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T050_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 138
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 796
      inherited Panel1: TPanel
        Left = 769
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 796
      inherited Panel1: TPanel
        Left = 769
      end
    end
  end
  inherited Panel1: TPanel
    Width = 799
    inherited pc01: TPageControl
      Width = 797
      inherited ts01: TTabSheet
        Caption = 'Операции дивидендов'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 799
  end
  inherited pnlButtons: TPanel
    Width = 799
    inherited OKBtn: TButton
      Left = 641
    end
    inherited CancelBtn: TButton
      Left = 721
    end
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
      '  T050_ID,'
      '  T028_ID,'
      '  T027_ID,'
      '  T050_DATE,'
      '  T050_SUM,'
      '  T050_711_COUNT,'
      '  T050_OTH_COUNT,'
      '  T050_TYPE,'
      '  T050_ROWID,'
      '  T050_TYPE_DESC,'
      '  T028_CODE,'
      '  T028_SHOT_NAME,'
      '  T025_SHOT_NAME,'
      '  T027_SEC_TYPE,'
      '  T050_USD_SUM,'
      '  T050_TAX_SUM,'
      '  T050_TAX_VALUE,'
      'T050_TOTAL_SUM'
      'FROM V_405_DIVIDENDS_LIST')
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543032375F49440100000000000D000000543032
      375F5345435F5459504501000000000007000000543032385F49440100000000
      000E000000543032385F53484F545F4E414D4501000000000009000000543032
      385F434F44450100000000000E000000543032355F53484F545F4E414D450100
      0000000007000000543035305F494401000000000009000000543035305F4441
      544501000000000008000000543035305F53554D0100000000000E0000005430
      35305F3731315F434F554E540100000000000E000000543035305F4F54485F43
      4F554E5401000000000009000000543035305F545950450100000000000E0000
      00543035305F545950455F444553430100000000000C000000543035305F5553
      445F53554D0100000000000C000000543035305F5441585F53554D0100000000
      000E000000543035305F5441585F56414C55450100000000000E000000543035
      305F544F54414C5F53554D010000000000}
    object odsListT050_ID: TFloatField
      FieldName = 'T050_ID'
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
    object odsListT050_DATE: TDateTimeField
      FieldName = 'T050_DATE'
      Required = True
    end
    object odsListT050_SUM: TFloatField
      FieldName = 'T050_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT050_711_COUNT: TFloatField
      FieldName = 'T050_711_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT050_OTH_COUNT: TFloatField
      FieldName = 'T050_OTH_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT050_TYPE: TIntegerField
      FieldName = 'T050_TYPE'
      Required = True
    end
    object odsListT050_TYPE_DESC: TStringField
      FieldName = 'T050_TYPE_DESC'
      Size = 11
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Visible = False
      Size = 255
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT050_USD_SUM: TFloatField
      FieldName = 'T050_USD_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.0000'
      EditFormat = '0.0000'
    end
    object odsListT050_TAX_SUM: TFloatField
      FieldName = 'T050_TAX_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT050_TAX_VALUE: TFloatField
      FieldName = 'T050_TAX_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT050_TOTAL_SUM: TFloatField
      FieldName = 'T050_TOTAL_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T050_DATE := :T050_DATE;'
      '--  v_rec.T050_TYPE := :T050_TYPE;'
      '  v_rec.T050_711_COUNT := :T050_711_COUNT_1;'
      '  v_rec.T050_OTH_COUNT := :T050_OTH_COUNT_1;'
      '  v_rec.T050_SUM := :T050_SUM_1;'
      '  v_rec.T050_TAX_VALUE := :T050_TAX_VALUE_1;'
      ''
      
        '  Pk_Form_405.p_dividends_add(v_rec, :T050_EDIT_1, :T050_ID_1, :' +
        'T050_EDIT_2, :T050_ID_2, :T050_711_COUNT_2, :T050_OTH_COUNT_2, :' +
        'T050_SUM_2, :T050_TAX_VALUE_2);'
      '  :T050_ID := v_rec.T050_ID;'
      '  :T027_ID := v_rec.T027_ID;'
      '  :T028_ID := v_rec.T028_ID;'
      '  :T050_DATE := v_rec.T050_DATE;'
      '--  :T050_TYPE := v_rec.T050_TYPE;'
      '--  :T050_711_COUNT := v_rec.T050_711_COUNT;'
      '--  :T050_OTH_COUNT := v_rec.T050_OTH_COUNT;'
      '--  :T050_SUM := v_rec.T050_SUM;'
      '--  :T050_TAX_VALUE := v_rec.T050_TAX_VALUE;'
      'END;'
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000010000000080000003A543032375F4944040000000000000000000000
      080000003A543032385F49440400000000000000000000000A0000003A543035
      305F444154450C0000000000000000000000110000003A543035305F3731315F
      434F554E545F31040000000000000000000000110000003A543035305F4F5448
      5F434F554E545F310400000000000000000000000B0000003A543035305F5355
      4D5F31040000000000000000000000110000003A543035305F5441585F56414C
      55455F310400000000000000000000000A0000003A543035305F49445F310400
      000000000000000000000A0000003A543035305F49445F320400000000000000
      00000000110000003A543035305F3731315F434F554E545F3204000000000000
      0000000000110000003A543035305F4F54485F434F554E545F32040000000000
      0000000000000B0000003A543035305F53554D5F320400000000000000000000
      00110000003A543035305F5441585F56414C55455F3204000000000000000000
      0000080000003A543035305F49440400000000000000000000000C0000003A54
      3035305F454449545F310500000000000000000000000C0000003A543035305F
      454449545F32050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T050_ID := :T050_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T050_DATE := :T050_DATE;'
      '--  v_rec.T050_TYPE := :T050_TYPE;'
      '  v_rec.T050_711_COUNT := :T050_711_COUNT_1;'
      '  v_rec.T050_OTH_COUNT := :T050_OTH_COUNT_1;'
      '  v_rec.T050_SUM := :T050_SUM_1;'
      '  v_rec.T050_TAX_VALUE := :T050_TAX_VALUE_1;'
      ''
      
        '  Pk_Form_405.p_dividends_update(v_rec, :T050_EDIT_1, :T050_ID_1' +
        ', :T050_EDIT_2, :T050_ID_2, :T050_711_COUNT_2, :T050_OTH_COUNT_2' +
        ', :T050_SUM_2, :T050_TAX_VALUE_2);'
      '  :T050_ID := v_rec.T050_ID;'
      '  :T027_ID := v_rec.T027_ID;'
      '  :T028_ID := v_rec.T028_ID;'
      '  :T050_DATE := v_rec.T050_DATE;'
      '--  :T050_TYPE := v_rec.T050_TYPE;'
      '--  :T050_711_COUNT := v_rec.T050_711_COUNT;'
      '--  :T050_OTH_COUNT := v_rec.T050_OTH_COUNT;'
      '--  :T050_SUM := v_rec.T050_SUM;'
      '--  :T050_TAX_VALUE := v_rec.T050_TAX_VALUE;'
      'END;'
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000010000000080000003A543035305F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F49440400000000000000000000000A0000003A543035305F444154450C00
      00000000000000000000110000003A543035305F3731315F434F554E545F3104
      0000000000000000000000110000003A543035305F4F54485F434F554E545F31
      0400000000000000000000000B0000003A543035305F53554D5F310400000000
      00000000000000110000003A543035305F5441585F56414C55455F3104000000
      00000000000000000A0000003A543035305F49445F3104000000000000000000
      00000A0000003A543035305F49445F3204000000000000000000000011000000
      3A543035305F3731315F434F554E545F32040000000000000000000000110000
      003A543035305F4F54485F434F554E545F320400000000000000000000000B00
      00003A543035305F53554D5F32040000000000000000000000110000003A5430
      35305F5441585F56414C55455F320400000000000000000000000C0000003A54
      3035305F454449545F310500000000000000000000000C0000003A543035305F
      454449545F32050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T050_ID := :T050_ID;'
      '  Pk_Form_405.p_dividend_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543035305F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T050_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T050_ID := :T050_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T050_DATE := :T050_DATE;'
      '  v_rec.T050_TYPE := :T050_TYPE;'
      '  :o_result := Pk_Form_405.f_dividend_check(v_rec);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000006000000080000003A543035305F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F49440400000000000000000000000A0000003A543035305F444154450C00
      00000000000000000000090000003A4F5F524553554C54040000000000000000
      0000000A0000003A543035305F54595045030000000000000000000000}
  end
end

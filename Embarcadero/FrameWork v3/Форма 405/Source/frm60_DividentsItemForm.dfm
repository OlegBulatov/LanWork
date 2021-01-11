inherited frm60_DividentsItem: Tfrm60_DividentsItem
  Left = 141
  Top = 238
  Width = 890
  Height = 374
  Caption = 'Операции дивидендов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 879
    Height = 288
  end
  inherited paRight: TPanel
    Left = 882
    Height = 288
  end
  inherited paMain: TPanel
    Width = 879
    Height = 288
    inherited ToolBar2: TToolBar
      Width = 879
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 879
      Height = 223
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата операции'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T079_PROC_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T079_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Валовый платеж ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T079_PROC_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Процент налога'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T079_TAX_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма чистого налога ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T079_CALC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип расчета'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T005_DISPLAY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Раздел'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'КО'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_ROW_NUM'
          PickList.Strings = ()
          Title.Caption = '№ строки'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_REG_NUM'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 105
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 879
      inherited Panel1: TPanel
        Left = 852
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 879
      inherited Panel1: TPanel
        Left = 852
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 321
    Width = 882
  end
  inherited pnlButtons: TPanel
    Top = 288
    Width = 882
    inherited OKBtn: TButton
      Left = 724
    end
    inherited CancelBtn: TButton
      Left = 804
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Hint = 'Изменить состав группы резидентов...'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'T002_ID, T001_PART_ID, T005_DISPLAY_NAME, '
      '   T002_BANK_CODE, T002_REPORT_DATE, T002_NUMB_IN_YEA, '
      '   T002_NUMB_IN_YEA_DESC, T002_KP_ID, T001_ID, '
      '   T001_ROW_PREFIX, T001_ROW_NUM, T001_DATE_OP, '
      '   T001_TYPE_ID, T016_BOND_ID, T001_OP_ID, '
      '   T011_TYPE_ID, T001_OP_PAY_ID, T006_NAME, '
      '   T001_OP_COUNT, T001_OP_CR_ID, T001_OP_CR_DESC, '
      '   T001_OP_SUM, T001_OP_PROC, T012_ID, '
      '   T001_REZID_NAME, T001_REZID_CO_ID, T001_REZID_TYPE, '
      '   T013_ID, T001_NREZID_NAME, T001_NREZID_CO_ID, '
      '   T001_NREZID_COUNTRY, T001_NREZID_TYPE, T028_SHOT_NAME, '
      '   T028_CODE, T025_CODE, T001_REG_NUM, '
      '   T025_SHOT_NAME, T050_ID, T050_DESC, T079_TOTAL_SUM,'
      '   T079_PROC_SUM, T079_PROC_VALUE, T079_CALC_TYPE, T079_TAX_SUM,'
      '   T001_ROWID'
      'FROM V_405_DIVIDENDS_SUM'
      'WHERE T050_ID = :T050_ID')
    Variables.Data = {
      0300000001000000080000003A543035305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000002C00000007000000543035305F494401000000000007000000543030
      325F49440100000000000C000000543030315F504152545F4944010000000000
      11000000543030355F444953504C41595F4E414D450100000000000E00000054
      3030325F42414E4B5F434F444501000000000010000000543030325F5245504F
      52545F4441544501000000000010000000543030325F4E554D425F494E5F5945
      4101000000000015000000543030325F4E554D425F494E5F5945415F44455343
      0100000000000A000000543030325F4B505F4944010000000000070000005430
      30315F49440100000000000F000000543030315F524F575F5052454649580100
      000000000C000000543030315F524F575F4E554D0100000000000C0000005430
      30315F444154455F4F500100000000000C000000543030315F545950455F4944
      0100000000000C000000543031365F424F4E445F49440100000000000A000000
      543030315F4F505F49440100000000000C000000543031315F545950455F4944
      0100000000000E000000543030315F4F505F5041595F49440100000000000900
      0000543030365F4E414D450100000000000D000000543030315F4F505F434F55
      4E540100000000000D000000543030315F4F505F43525F49440100000000000F
      000000543030315F4F505F43525F444553430100000000000B00000054303031
      5F4F505F53554D0100000000000C000000543030315F4F505F50524F43010000
      00000007000000543031325F49440100000000000F000000543030315F52455A
      49445F4E414D4501000000000010000000543030315F52455A49445F434F5F49
      440100000000000F000000543030315F52455A49445F54595045010000000000
      07000000543031335F494401000000000010000000543030315F4E52455A4944
      5F4E414D4501000000000011000000543030315F4E52455A49445F434F5F4944
      01000000000013000000543030315F4E52455A49445F434F554E545259010000
      00000010000000543030315F4E52455A49445F545950450100000000000E0000
      00543032385F53484F545F4E414D4501000000000009000000543032385F434F
      444501000000000009000000543032355F434F44450100000000000C00000054
      3030315F5245475F4E554D0100000000000E000000543032355F53484F545F4E
      414D4501000000000009000000543035305F444553430100000000000E000000
      543037395F544F54414C5F53554D0100000000000D000000543037395F50524F
      435F53554D0100000000000F000000543037395F50524F435F56414C55450100
      000000000E000000543037395F43414C435F545950450100000000000C000000
      543037395F5441585F53554D010000000000}
    MasterFields = 'T050_ID'
    object odsListT002_ID: TFloatField
      FieldName = 'T002_ID'
      Required = True
    end
    object odsListT001_PART_ID: TFloatField
      FieldName = 'T001_PART_ID'
      Required = True
    end
    object odsListT005_DISPLAY_NAME: TStringField
      FieldName = 'T005_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_REPORT_DATE: TDateTimeField
      FieldName = 'T002_REPORT_DATE'
      Required = True
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T002_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT002_KP_ID: TIntegerField
      FieldName = 'T002_KP_ID'
      Required = True
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_ROW_PREFIX: TIntegerField
      FieldName = 'T001_ROW_PREFIX'
      Required = True
    end
    object odsListT001_ROW_NUM: TIntegerField
      FieldName = 'T001_ROW_NUM'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_TYPE_ID: TStringField
      FieldName = 'T001_TYPE_ID'
      Required = True
      Size = 255
    end
    object odsListT016_BOND_ID: TFloatField
      FieldName = 'T016_BOND_ID'
      Required = True
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
      Required = True
    end
    object odsListT011_TYPE_ID: TFloatField
      FieldName = 'T011_TYPE_ID'
      Required = True
    end
    object odsListT001_OP_PAY_ID: TFloatField
      FieldName = 'T001_OP_PAY_ID'
      Required = True
    end
    object odsListT006_NAME: TStringField
      FieldName = 'T006_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_OP_CR_DESC: TStringField
      FieldName = 'T001_OP_CR_DESC'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT001_OP_PROC: TFloatField
      FieldName = 'T001_OP_PROC'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT001_REZID_NAME: TStringField
      FieldName = 'T001_REZID_NAME'
      Required = True
      Size = 255
    end
    object odsListT001_REZID_CO_ID: TStringField
      FieldName = 'T001_REZID_CO_ID'
      Size = 255
    end
    object odsListT001_REZID_TYPE: TFloatField
      FieldName = 'T001_REZID_TYPE'
      Required = True
    end
    object odsListT013_ID: TFloatField
      FieldName = 'T013_ID'
      Required = True
    end
    object odsListT001_NREZID_NAME: TStringField
      FieldName = 'T001_NREZID_NAME'
      Size = 255
    end
    object odsListT001_NREZID_CO_ID: TFloatField
      FieldName = 'T001_NREZID_CO_ID'
      Required = True
    end
    object odsListT001_NREZID_COUNTRY: TStringField
      FieldName = 'T001_NREZID_COUNTRY'
      Size = 250
    end
    object odsListT001_NREZID_TYPE: TFloatField
      FieldName = 'T001_NREZID_TYPE'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT001_REG_NUM: TStringField
      FieldName = 'T001_REG_NUM'
      Required = True
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 265
    end
    object odsListT050_ID: TFloatField
      FieldName = 'T050_ID'
    end
    object odsListT050_DESC: TStringField
      FieldName = 'T050_DESC'
      Size = 522
    end
    object odsListT079_TOTAL_SUM: TFloatField
      FieldName = 'T079_TOTAL_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT079_PROC_SUM: TFloatField
      FieldName = 'T079_PROC_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT079_PROC_VALUE: TFloatField
      FieldName = 'T079_PROC_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT079_CALC_TYPE: TStringField
      FieldName = 'T079_CALC_TYPE'
      Size = 7
    end
    object odsListT079_TAX_SUM: TFloatField
      FieldName = 'T079_TAX_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  Pk_Hand_Correct_405.p_procent_update(:T001_ID, :T001_OP_SUM, :' +
        'T050_TAX_VALUE, :T079_PROC_VALUE);'
      'END;'
      ''
      ' ')
    Variables.Data = {
      0300000004000000080000003A543030315F4944040000000000000000000000
      0C0000003A543030315F4F505F53554D04000000000000000000000010000000
      3A543037395F50524F435F56414C55450400000000000000000000000F000000
      3A543035305F5441585F56414C5545040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Hand_Correct_405.p_del_dividend_from_sum(:T001_ID);'
      '  commit;'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
  end
end

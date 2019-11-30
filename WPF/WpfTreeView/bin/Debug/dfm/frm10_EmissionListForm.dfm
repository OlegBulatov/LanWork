inherited frm10_EmissionList: Tfrm10_EmissionList
  Left = 153
  Top = 169
  Caption = 'frm10_EmissionList'
  ClientHeight = 324
  ClientWidth = 734
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 731
    Height = 272
  end
  inherited Panel2: TPanel
    Top = 291
    Width = 734
    inherited Panel3: TPanel
      Left = 569
    end
  end
  inherited paRight: TPanel
    Left = 734
    Height = 272
  end
  inherited paMain: TPanel
    Width = 731
    Height = 272
    inherited ToolBar2: TToolBar
      Width = 731
      inherited ToolButton5: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 731
      Height = 207
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата окончания'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_ISIN'
          PickList.Strings = ()
          Title.Caption = 'Код ц.б. (ISIN)'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL'
          PickList.Strings = ()
          Title.Caption = 'Номинал'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_EMISSION_SIZE'
          PickList.Strings = ()
          Title.Caption = 'Размер эмиссии'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_REG_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата регистрации'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T024_NAME'
          PickList.Strings = ()
          Title.Caption = 'Способ размещения'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T023_NAME'
          PickList.Strings = ()
          Title.Caption = 'Состояние выплат'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_COUPON_PER'
          PickList.Strings = ()
          Title.Caption = 'Периодичность выплаты купона'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 69
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 731
      inherited Panel1: TPanel
        Left = 704
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 731
      inherited Panel1: TPanel
        Left = 704
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 272
    Width = 734
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  /*+ FIRST_ROWS */'
      '        T030_ROWID,'
      '        T031_ID,'
      '        T030_ID,'
      '        T026_ID,'
      '        T026_SEC_REGN,'
      '        T027_ID,'
      '        T027_SEC_TYPE,'
      '        T028_ID,'
      '        T028_SHOT_NAME,'
      '        T025_SHOT_NAME,'
      '        T028_CODE,'
      '        T031_REG_DATE,'
      '        T031_ISIN,'
      '        T024_ID,'
      '        T024_NAME,'
      '        T023_ID,'
      '        T023_NAME,'
      '        T031_START_DATE,'
      '        T031_END_DATE,'
      '        T031_CURRENCY,'
      '        T031_NOMINAL,'
      '        T031_EMISSION_SIZE,'
      '        T031_COUPON_PER'
      'FROM   DPB_405_BOSS.V_405_EMISSION_PARENT'
      'WHERE T028_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      '')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      030000001600000007000000543033305F494401000000000700000054303236
      5F494401000000000D000000543032365F5345435F5245474E01000000000700
      0000543032375F494401000000000D000000543032375F5345435F5459504501
      0000000007000000543032385F494401000000000E000000543032385F53484F
      545F4E414D45010000000009000000543032385F434F444501000000000E0000
      00543032355F53484F545F4E414D45010000000007000000543033315F494401
      000000000D000000543033315F5245475F444154450100000000090000005430
      33315F4953494E010000000007000000543032345F4944010000000009000000
      543032345F4E414D45010000000007000000543032335F494401000000000900
      0000543032335F4E414D4501000000000F000000543033315F53544152545F44
      41544501000000000D000000543033315F454E445F4441544501000000000D00
      0000543033315F43555252454E435901000000000C000000543033315F4E4F4D
      494E414C010000000012000000543033315F454D495353494F4E5F53495A4501
      000000000F000000543033315F434F55504F4E5F5045520100000000}
    object odsListT031_ID: TFloatField
      FieldName = 'T031_ID'
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
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
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT031_REG_DATE: TDateTimeField
      FieldName = 'T031_REG_DATE'
    end
    object odsListT031_ISIN: TStringField
      FieldName = 'T031_ISIN'
      Size = 255
    end
    object odsListT024_ID: TFloatField
      FieldName = 'T024_ID'
    end
    object odsListT024_NAME: TStringField
      FieldName = 'T024_NAME'
      Size = 255
    end
    object odsListT023_ID: TFloatField
      FieldName = 'T023_ID'
    end
    object odsListT023_NAME: TStringField
      FieldName = 'T023_NAME'
      Size = 255
    end
    object odsListT031_START_DATE: TDateTimeField
      FieldName = 'T031_START_DATE'
    end
    object odsListT031_END_DATE: TDateTimeField
      FieldName = 'T031_END_DATE'
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT031_EMISSION_SIZE: TFloatField
      FieldName = 'T031_EMISSION_SIZE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT031_COUPON_PER: TFloatField
      FieldName = 'T031_COUPON_PER'
    end
  end
end

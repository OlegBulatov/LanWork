inherited frm15_EmissionList: Tfrm15_EmissionList
  Left = 240
  Top = 109
  Caption = 'Эмиссии'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited pc01: TPageControl
      ActivePage = TabSheet1
      inherited ts01: TTabSheet
        Caption = 'Размер эмиссии'
      end
      object TabSheet1: TTabSheet
        Caption = 'Матрица погашения'
        ImageIndex = 1
      end
    end
  end
  inherited paMain: TPanel
    inherited paToolBars: TPanel
      inherited ToolBar2: TToolBar
        ButtonWidth = 113
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton7: TToolButton
          Left = 680
          Caption = 'Размер эмиссии'
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
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
          FieldName = 'T031_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата окончания'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T031_DATE_ANNUL'
          PickList.Strings = ()
          Title.Caption = 'Дата аннулирования'
          Width = 85
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
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
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
      '        T031_END_DATE,'
      '        T031_CURRENCY,'
      '        T031_NOMINAL,'
      '        T031_COUPON_PER,'
      '        T031_DATE_ANNUL'
      'FROM   V_NR_EMISSION_PARENT'
      'WHERE T028_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ''
      '')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001500000007000000543033315F494401000000000007000000543033
      305F494401000000000007000000543032365F49440100000000000D00000054
      3032365F5345435F5245474E01000000000007000000543032375F4944010000
      0000000D000000543032375F5345435F54595045010000000000070000005430
      32385F49440100000000000E000000543032385F53484F545F4E414D45010000
      0000000E000000543032355F53484F545F4E414D450100000000000900000054
      3032385F434F44450100000000000D000000543033315F5245475F4441544501
      000000000009000000543033315F4953494E0100000000000700000054303234
      5F494401000000000009000000543032345F4E414D4501000000000007000000
      543032335F494401000000000009000000543032335F4E414D45010000000000
      0D000000543033315F454E445F444154450100000000000D000000543033315F
      43555252454E43590100000000000C000000543033315F4E4F4D494E414C0100
      000000000F000000543033315F434F55504F4E5F5045520100000000000F0000
      00543033315F444154455F414E4E554C010000000000}
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
    object odsListT031_END_DATE: TDateTimeField
      FieldName = 'T031_END_DATE'
    end
    object odsListT031_CURRENCY: TStringField
      FieldName = 'T031_CURRENCY'
      Size = 3
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0.000'
      EditFormat = '0.000'
    end
    object odsListT031_COUPON_PER: TFloatField
      FieldName = 'T031_COUPON_PER'
    end
    object odsListT031_DATE_ANNUL: TDateTimeField
      FieldName = 'T031_DATE_ANNUL'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_T030_rec;'
      '  v_inf_rec Pk_NResident.t_T031_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_inf_rec.T031_REG_DATE := :T031_REG_DATE;'
      '  v_inf_rec.T031_ISIN := :T031_ISIN;'
      '  v_inf_rec.T024_ID := :T024_ID;'
      '  v_inf_rec.T023_ID := :T023_ID;'
      '  v_inf_rec.T031_END_DATE := :T031_END_DATE;'
      '  v_inf_rec.T031_DATE_ANNUL := :T031_DATE_ANNUL;'
      '  v_inf_rec.T031_CURRENCY := :T031_CURRENCY;'
      '  v_inf_rec.T031_NOMINAL := :T031_NOMINAL;'
      '  v_inf_rec.T031_COUPON_PER := :T031_COUPON_PER;'
      '  Pk_NResident.p_emission_inf_add(v_rec, v_inf_rec);'
      '  :T030_ID := v_rec.T030_ID;'
      'END;'
      ''
      ' '
      ' '
      '')
    Variables.Data = {
      030000000D000000080000003A543032365F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000080000003A543033305F494404000000
      00000000000000000E0000003A543033315F5245475F444154450C0000000000
      0000000000000A0000003A543033315F4953494E050000000000000000000000
      080000003A543032335F4944040000000000000000000000080000003A543032
      345F49440400000000000000000000000E0000003A543033315F454E445F4441
      54450C00000000000000000000000E0000003A543033315F43555252454E4359
      0400000000000000000000000D0000003A543033315F4E4F4D494E414C040000
      000000000000000000100000003A543033315F434F55504F4E5F504552040000
      000000000000000000100000003A543033315F444154455F414E4E554C0C0000
      000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_NResident.t_T030_rec;'
      '   v_inf_rec Pk_NResident.t_T031_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_inf_rec.T031_REG_DATE := :T031_REG_DATE;'
      '  v_inf_rec.T031_ISIN := :T031_ISIN;'
      '  v_inf_rec.T024_ID := :T024_ID;'
      '  v_inf_rec.T023_ID := :T023_ID;'
      '  v_inf_rec.T031_END_DATE := :T031_END_DATE;'
      '  v_inf_rec.T031_DATE_ANNUL := :T031_DATE_ANNUL;'
      '  v_inf_rec.T031_CURRENCY := :T031_CURRENCY;'
      '  v_inf_rec.T031_NOMINAL := :T031_NOMINAL;'
      '  v_inf_rec.T031_COUPON_PER := :T031_COUPON_PER;'
      '  Pk_NResident.p_emission_inf_update(v_rec, v_inf_rec);'
      'END;'
      ''
      ' '
      '')
    Variables.Data = {
      030000000D000000080000003A543033305F4944040000000000000000000000
      080000003A543032365F4944040000000000000000000000080000003A543032
      375F4944040000000000000000000000080000003A543032385F494404000000
      00000000000000000E0000003A543033315F5245475F444154450C0000000000
      0000000000000A0000003A543033315F4953494E050000000000000000000000
      080000003A543032335F4944040000000000000000000000080000003A543032
      345F49440400000000000000000000000E0000003A543033315F454E445F4441
      54450C00000000000000000000000E0000003A543033315F43555252454E4359
      0400000000000000000000000D0000003A543033315F4E4F4D494E414C040000
      000000000000000000100000003A543033315F434F55504F4E5F504552040000
      000000000000000000100000003A543033315F444154455F414E4E554C0C0000
      000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  PK_NResident.p_emission_delete(v_rec);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      0300000003000000080000003A543033305F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_T030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T026_ID := :T026_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  :o_result := Pk_NResident.f_emission_check(v_rec);'
      'END;'
      ' '
      ''
      '')
    Variables.Data = {
      0300000005000000080000003A543032365F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000090000003A4F5F524553554C54040000
      000000000000000000080000003A543033305F49440400000000000000000000
      00}
  end
end

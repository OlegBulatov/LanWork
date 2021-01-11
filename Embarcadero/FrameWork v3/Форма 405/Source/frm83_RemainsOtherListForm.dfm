inherited frm83_RemainsOtherList: Tfrm83_RemainsOtherList
  Caption = 'frm83_RemainsOtherList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T104_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T104_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T104_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма (вал. ном.)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T104_CROSS_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма ($)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T104_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 60
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T104_ID,'
      '  T030_ID,'
      '  T104_DATE,'
      '  T104_COUNT,'
      '  T104_SUM,'
      '  T104_CROSS_SUM,'
      '  T104_TYPE,'
      '  T104_TYPE_DESC'
      'FROM V_405_REMAINS_OTH_CHANGES'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543130345F494401000000000007000000543033
      305F494401000000000009000000543130345F444154450100000000000A0000
      00543130345F434F554E5401000000000008000000543130345F53554D010000
      0000000E000000543130345F43524F53535F53554D0100000000000900000054
      3130345F545950450100000000000E000000543130345F545950455F44455343
      010000000000}
    object odsListT104_ID: TFloatField
      FieldName = 'T104_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT104_DATE: TDateTimeField
      FieldName = 'T104_DATE'
      Required = True
    end
    object odsListT104_COUNT: TFloatField
      FieldName = 'T104_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT104_SUM: TFloatField
      FieldName = 'T104_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.00'
    end
    object odsListT104_CROSS_SUM: TFloatField
      FieldName = 'T104_CROSS_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.00'
    end
    object odsListT104_TYPE: TStringField
      FieldName = 'T104_TYPE'
      Required = True
      Size = 1
    end
    object odsListT104_TYPE_DESC: TStringField
      FieldName = 'T104_TYPE_DESC'
      Size = 6
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_FORM_405.t_T104_rec;'
      'BEGIN'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T104_DATE := :T104_DATE;'
      '  v_rec.T104_COUNT := :T104_COUNT;'
      '  v_rec.T104_SUM := :T104_SUM;'
      '  v_rec.T104_TYPE := :T104_TYPE;'
      '  PK_FORM_405.p_T104_oth_change_add(:T055_ID, v_rec);'
      '  :T104_ID := v_rec.T104_ID;'
      'END;')
    Variables.Data = {
      0300000007000000080000003A543033305F4944040000000000000000000000
      080000003A543130345F49440400000000000000000000000A0000003A543130
      345F444154450C00000000000000000000000B0000003A543130345F434F554E
      54040000000000000000000000090000003A543130345F53554D040000000000
      0000000000000A0000003A543130345F54595045050000000000000000000000
      080000003A543035355F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_FORM_405.t_T104_rec;'
      'BEGIN'
      '  v_rec.T104_ID := :T104_ID;'
      '  v_rec.T104_DATE := :T104_DATE;'
      '  v_rec.T104_COUNT := :T104_COUNT;'
      '  v_rec.T104_SUM := :T104_SUM;'
      '  v_rec.T104_TYPE := :T104_TYPE;'
      '  PK_FORM_405.p_T104_oth_change_update(:T055_ID, v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000006000000080000003A543130345F4944040000000000000000000000
      0A0000003A543130345F444154450C0000000000000000000000090000003A54
      3130345F53554D0400000000000000000000000A0000003A543130345F545950
      450500000000000000000000000B0000003A543130345F434F554E5404000000
      0000000000000000080000003A543035355F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_FORM_405.t_T104_rec;'
      'BEGIN'
      '  v_rec.T104_ID := :T104_ID;'
      '  PK_FORM_405.p_T104_oth_change_delete(:T055_ID, v_rec);  '
      'END;')
    Variables.Data = {
      0300000002000000080000003A543130345F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
  end
end

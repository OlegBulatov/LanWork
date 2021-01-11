inherited frm83_RemainsOthOpsList: Tfrm83_RemainsOthOpsList
  Caption = 'frm83_RemainsOthOpsList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T110_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T110_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол. ц.б.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T110_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма (вал. ном.)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T110_CROSS_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма ($)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T110_TYPE_DESC'
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
      '  T110_ID,'
      '  T030_ID,'
      '  T110_DATE,'
      '  T110_COUNT,'
      '  T110_SUM,'
      '  T110_CROSS_SUM,'
      '  T110_TYPE,'
      '  T110_TYPE_DESC'
      'FROM V_405_REMAINS_OTH_OPERS'
      'WHERE T030_ID = :T030_ID'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543033305F494401000000000007000000543131
      305F494401000000000009000000543131305F444154450100000000000A0000
      00543131305F434F554E5401000000000008000000543131305F53554D010000
      0000000E000000543131305F43524F53535F53554D0100000000000900000054
      3131305F545950450100000000000E000000543131305F545950455F44455343
      010000000000}
    object odsListT110_ID: TFloatField
      FieldName = 'T110_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT110_DATE: TDateTimeField
      FieldName = 'T110_DATE'
      Required = True
    end
    object odsListT110_COUNT: TFloatField
      FieldName = 'T110_COUNT'
      Required = True
    end
    object odsListT110_SUM: TFloatField
      FieldName = 'T110_SUM'
      Required = True
    end
    object odsListT110_CROSS_SUM: TFloatField
      FieldName = 'T110_CROSS_SUM'
    end
    object odsListT110_TYPE: TStringField
      FieldName = 'T110_TYPE'
      Required = True
      Size = 1
    end
    object odsListT110_TYPE_DESC: TStringField
      FieldName = 'T110_TYPE_DESC'
      Size = 6
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_FORM_405.t_T110_rec;'
      'BEGIN'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T110_DATE := :T110_DATE;'
      '  v_rec.T110_COUNT := :T110_COUNT;'
      '  v_rec.T110_SUM := :T110_SUM;'
      '  v_rec.T110_TYPE := :T110_TYPE;'
      '  PK_FORM_405.p_T110_oth_oper_add(:T055_ID, v_rec);'
      '  :T110_ID := v_rec.T110_ID;'
      'END;'
      ' ')
    Variables.Data = {
      0300000007000000080000003A543033305F4944040000000000000000000000
      0A0000003A543131305F444154450C00000000000000000000000B0000003A54
      3131305F434F554E54040000000000000000000000090000003A543131305F53
      554D0400000000000000000000000A0000003A543131305F5459504505000000
      0000000000000000080000003A543035355F4944040000000000000000000000
      080000003A543131305F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_FORM_405.t_T110_rec;'
      'BEGIN'
      '  v_rec.T110_ID := :T110_ID;'
      '  v_rec.T110_DATE := :T110_DATE;'
      '  v_rec.T110_COUNT := :T110_COUNT;'
      '  v_rec.T110_SUM := :T110_SUM;'
      '  v_rec.T110_TYPE := :T110_TYPE;'
      '  PK_FORM_405.p_T110_oth_oper_update(:T055_ID, v_rec);'
      'END;'
      ''
      ' ')
    Variables.Data = {
      0300000006000000080000003A543131305F4944040000000000000000000000
      0A0000003A543131305F444154450C00000000000000000000000B0000003A54
      3131305F434F554E54040000000000000000000000090000003A543131305F53
      554D0400000000000000000000000A0000003A543131305F5459504505000000
      0000000000000000080000003A543035355F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_FORM_405.t_T110_rec;'
      'BEGIN'
      '  v_rec.T110_ID := :T110_ID;'
      '  PK_FORM_405.p_T110_oth_oper_delete(:T055_ID, v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000002000000080000003A543131305F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
  end
end

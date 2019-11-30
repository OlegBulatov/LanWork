inherited A05_BankGroupMembersList: TA05_BankGroupMembersList
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'REGN'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_NAME_P'
        PickList.Strings = ()
        Title.Caption = 'Город'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_ADR'
        PickList.Strings = ()
        Title.Caption = 'Адрес'
        Width = 180
        Visible = True
      end>
  end
  inherited actList: TActionList
    inherited actEdit: TAction
      Enabled = True
      Hint = 'Изменить состав группы'
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T030_ID,'
      '  REGN,'
      '  BANK_NAME,'
      '  BANK_NAME_P,'
      '  BANK_ADR'
      'from V_410_BANK_GROUP_LINKS'
      '  WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543033305F494401000000000004000000524547
      4E0100000000000900000042414E4B5F4E414D450100000000000B0000004241
      4E4B5F4E414D455F500100000000000800000042414E4B5F4144520100000000
      00}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 45
    end
    object odsListBANK_NAME_P: TStringField
      FieldName = 'BANK_NAME_P'
      Size = 30
    end
    object odsListBANK_ADR: TStringField
      FieldName = 'BANK_ADR'
      Size = 30
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroupMembers_Update(:T030_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
  end
  object oqBeforeEdit: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_BankGroupMembers_Fill(:T030_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    Left = 420
    Top = 104
  end
end

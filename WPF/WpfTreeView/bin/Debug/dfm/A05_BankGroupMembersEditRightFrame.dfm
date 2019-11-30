inherited A05_BankGroupMembersEditRight: TA05_BankGroupMembersEditRight
  Width = 431
  inherited xxxDBGrid: TxxxDBGrid
    Width = 431
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
        FieldName = 'NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 328
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 431
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  REGN,'
      '  NAME'
      'from V_410_BANK_GROUP_RIGHT')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004E414D45010000000000040000005245474E0100
      00000000}
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 45
    end
  end
end

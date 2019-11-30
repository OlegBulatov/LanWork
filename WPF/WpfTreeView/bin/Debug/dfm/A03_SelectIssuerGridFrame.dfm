inherited A03_SelectIssuerGrid: TA03_SelectIssuerGrid
  Width = 566
  inherited xxxDBGrid: TxxxDBGrid
    Width = 566
    AdvSettings.Indexes = <
      item
        FieldName = 'T028_SHOT_NAME'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 450
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_ID'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 80
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 566
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T028_COUNTRY_ID'
      'from V_404_ISSUERS_MAIN')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000F000000543032385F434F554E5452
      595F4944010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
  end
  object oqLocate: TOracleQuery
    SQL.Strings = (
      'SELECT T028_ID'
      'FROM   V_404_ISSUERS_MAIN'
      'WHERE  UPPER(T028_SHOT_NAME) LIKE (UPPER(:ANAME))')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000060000003A414E414D45050000000000000000000000}
    Left = 208
    Top = 312
  end
end

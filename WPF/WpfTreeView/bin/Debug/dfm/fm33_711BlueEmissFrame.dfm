inherited fm33_711BlueEmiss: Tfm33_711BlueEmiss
  Height = 76
  inherited Label1: TLabel
    Top = 56
    Width = 56
    Caption = '–ег. номер'
  end
  object Label2: TLabel [1]
    Left = 5
    Top = 32
    Width = 40
    Height = 13
    Caption = '“ип ц.б.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 5
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Ёмитент'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited Lookup01: TxxxDBLookupCheckCombo
    Top = 52
    LookupField = 'T030_ID'
    LookupDisplay = 'T026_SEC_REGN'
  end
  object lcSecType: TDBLookupComboBox [4]
    Left = 104
    Top = 28
    Width = 251
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DropDownRows = 10
    KeyField = 'T027_ID'
    ListField = 'T027_SEC_TYPE'
    ListSource = dsSecType
    TabOrder = 1
    OnCloseUp = lcSecTypeCloseUp
    OnKeyDown = lcSecTypeKeyDown
  end
  object lcIssuers: TDBLookupComboBox [5]
    Left = 104
    Top = 4
    Width = 251
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DropDownRows = 10
    KeyField = 'T028_ID'
    ListField = 'T028_SHOT_NAME'
    ListSource = dsIssuers
    TabOrder = 2
    OnCloseUp = lcIssuersCloseUp
    OnKeyDown = lcIssuersKeyDown
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT    T030_ID,T028_PARENT_ID, T027_ID,T026_ID, T026_SEC_REGN'
      'FROM      V_405_EMISSION_BLUE'
      'where T028_PARENT_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      'ORDER BY  T026_SEC_REGN'
      ' ')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543033305F49440100000000000E000000543032
      385F504152454E545F494401000000000007000000543032375F494401000000
      000007000000543032365F49440100000000000D000000543032365F5345435F
      5245474E010000000000}
    Left = 256
    Top = 32
  end
  inherited dsList: TDataSource
    Left = 288
    Top = 32
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      'SELECT    T028_ID, T028_SHOT_NAME'
      'FROM      V_405_ISSUER_BLUE'
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 112
    Top = 8
    object odsIssuersT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsIssuersT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 514
    end
  end
  object dsIssuers: TDataSource
    DataSet = odsIssuers
    Left = 144
    Top = 8
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'#9'T028_PARENT_ID T028_ID, T027_SEC_TYPE'
      'FROM   V_405_SEC_TYPE_BLUE'
      'where T028_PARENT_ID = :T028_ID'
      'ORDER BY  T027_SEC_TYPE'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F5459504501000000000007000000543032385F49440100000000
      00}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 184
    Top = 16
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSecTypeT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 216
    Top = 16
  end
end

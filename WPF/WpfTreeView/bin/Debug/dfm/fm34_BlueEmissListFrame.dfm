inherited fm34_BlueEmissList: Tfm34_BlueEmissList
  Height = 269
  inherited Label1: TLabel
    Top = 56
    Width = 77
    Caption = '���. ����� �.�.'
  end
  object Label3: TLabel [1]
    Left = 5
    Top = 8
    Width = 43
    Height = 13
    Caption = '�������'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 5
    Top = 32
    Width = 40
    Height = 13
    Caption = '��� �.�.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited gr01: TxxxDBGrid
    Top = 52
    Height = 217
    Columns = <
      item
        Expanded = False
        FieldName = 'T030_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Width = 205
        Visible = True
      end>
  end
  object lcIssuers: TDBLookupComboBox [4]
    Left = 104
    Top = 4
    Width = 251
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DropDownRows = 10
    KeyField = 'T028_ID'
    ListField = 'T028_SHOT_NAME'
    ListSource = dsIssuers
    TabOrder = 1
    OnCloseUp = lcIssuersCloseUp
    OnKeyDown = lcIssuersKeyDown
  end
  object lcSecType: TDBLookupComboBox [5]
    Left = 104
    Top = 28
    Width = 251
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DropDownRows = 10
    KeyField = 'T027_ID'
    ListField = 'T027_SEC_TYPE'
    ListSource = dsSecType
    TabOrder = 2
    OnCloseUp = lcSecTypeCloseUp
    OnKeyDown = lcSecTypeKeyDown
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT    T030_ID,T028_PARENT_ID, T027_ID,T026_ID, T026_SEC_REGN'
      'FROM      V_405_EMISSION_BLUE'
      'where T028_PARENT_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      'ORDER BY  T026_SEC_REGN')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543033305F49440100000000000E000000543032
      385F504152454E545F494401000000000007000000543032375F494401000000
      000007000000543032365F49440100000000000D000000543032365F5345435F
      5245474E010000000000}
    QueryAllRecords = False
    Top = 168
    object ods01T030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object ods01T028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
      Required = True
    end
    object ods01T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods01T026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object ods01T026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
  end
  inherited ds01: TDataSource
    Top = 168
  end
  inherited PopupMenu: TPopupMenu
    Top = 197
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
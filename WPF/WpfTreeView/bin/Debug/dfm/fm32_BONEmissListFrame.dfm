inherited fm32_BONEmissList: Tfm32_BONEmissList
  Height = 253
  inherited Label1: TLabel
    Top = 80
    Width = 77
    Caption = 'Рег. номер ц.б.'
  end
  object Label2: TLabel [1]
    Left = 5
    Top = 56
    Width = 70
    Height = 13
    Caption = 'Тип операции'
    Layout = tlCenter
  end
  object Label3: TLabel [2]
    Left = 5
    Top = 32
    Width = 53
    Height = 13
    Caption = 'Период по'
    Layout = tlCenter
  end
  object Label4: TLabel [3]
    Left = 5
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Период с'
    Layout = tlCenter
  end
  inherited gr01: TxxxDBGrid
    Top = 76
    Height = 177
    Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    Columns = <
      item
        Expanded = False
        FieldName = 'T026_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Width = 150
        Visible = True
      end>
  end
  object lcSec: TDBLookupComboBox [5]
    Left = 103
    Top = 52
    Width = 252
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 14
    DropDownWidth = -1
    KeyField = 'T027_ID'
    ListField = 'T027_SEC_TYPE'
    ListSource = dsSec
    TabOrder = 1
    OnCloseUp = lcSecCloseUp
  end
  object lcPeriodEnd: TDBLookupComboBox [6]
    Left = 103
    Top = 28
    Width = 252
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 14
    DropDownWidth = -1
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = dsPeriodEnd
    TabOrder = 2
    OnCloseUp = lcPeriodEndCloseUp
  end
  object lcPeriodStart: TDBLookupComboBox [7]
    Left = 103
    Top = 4
    Width = 252
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 14
    DropDownWidth = -1
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = dsPeriodStart
    TabOrder = 3
    OnCloseUp = lcPeriodStartCloseUp
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT V1.T026_ID,'
      '       V1.T027_ID,'
      '       V1.T028_SHOT_NAME,'
      '       V1.T026_SEC_REGN'
      'FROM   V_405_EMISSION_BON V1'
      'WHERE  V1.T027_ID = :T027_ID'
      'AND V1.T055_ID BETWEEN :T055_ID_S AND :T055_ID_E'
      'GROUP BY V1.T026_ID,'
      '       V1.T027_ID,'
      '       V1.T028_SHOT_NAME,'
      '       V1.T026_SEC_REGN'
      'ORDER  BY V1.T026_SEC_REGN,'
      'V1.T028_SHOT_NAME')
    Variables.Data = {
      0300000003000000080000003A543032375F4944040000000000000000000000
      0A0000003A543035355F49445F530400000000000000000000000A0000003A54
      3035355F49445F45040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543032365F494401000000000007000000543032
      375F49440100000000000E000000543032385F53484F545F4E414D4501000000
      00000D000000543032365F5345435F5245474E010000000000}
    Left = 128
    Top = 99
    object ods01T026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object ods01T027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object ods01T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object ods01T026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
  end
  inherited ds01: TDataSource
    Left = 160
    Top = 99
  end
  inherited PopupMenu: TPopupMenu
    Left = 160
    Top = 128
  end
  object odsSec: TOracleDataSet
    SQL.Strings = (
      'SELECT   T027_ID,'
      '         T027_SEC_TYPE'
      'FROM     T027_SEC_TYPE'
      
        'WHERE    T027_SEC_TYPE IN ('#39'BON1'#39', '#39'BON2'#39', '#39'BON3'#39', '#39'BON4'#39', '#39'BON5' +
        #39', '#39'BON6'#39', '#39'BON7'#39', '#39'BON11'#39')'
      'ORDER BY T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 128
    Top = 67
    object odsSecT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
  end
  object dsSec: TDataSource
    DataSet = odsSec
    Left = 160
    Top = 67
  end
  object odsPeriodEnd: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, '
      '               T055_LONG_NAME'
      'FROM     V_405_REP109_PERIODS'
      'WHERE T055_ID >= :T055_ID_S'
      'ORDER BY T055_START_DATE'
      '')
    Variables.Data = {
      03000000010000000A0000003A543035355F49445F5304000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 128
    Top = 35
    object odsPeriodEndT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsPeriodEndT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object dsPeriodEnd: TDataSource
    DataSet = odsPeriodEnd
    Left = 160
    Top = 35
  end
  object odsPeriodStart: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, '
      '               T055_LONG_NAME'
      'FROM     V_405_REP109_PERIODS'
      'ORDER BY T055_START_DATE'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 128
    object odsPeriodStartT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsPeriodStartT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object dsPeriodStart: TDataSource
    DataSet = odsPeriodStart
    Left = 160
  end
end

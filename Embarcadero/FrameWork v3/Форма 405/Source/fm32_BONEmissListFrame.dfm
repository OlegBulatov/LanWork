inherited fm32_BONEmissList: Tfm32_BONEmissList
  Height = 253
  ExplicitHeight = 253
  inherited Label1: TLabel
    Top = 80
    Width = 77
    Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1094'.'#1073'.'
    ExplicitTop = 80
    ExplicitWidth = 77
  end
  object Label2: TLabel [1]
    Left = 5
    Top = 56
    Width = 41
    Height = 13
    Caption = #1058#1080#1087' '#1094'.'#1073'.'
    Layout = tlCenter
  end
  object Label3: TLabel [2]
    Left = 5
    Top = 32
    Width = 53
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076' '#1087#1086
    Layout = tlCenter
  end
  object Label4: TLabel [3]
    Left = 5
    Top = 8
    Width = 46
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076' '#1089
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
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
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
      0400000003000000100000003A0054003000320037005F004900440004000000
      0000000000000000140000003A0054003000350035005F00490044005F005300
      040000000000000000000000140000003A0054003000350035005F0049004400
      5F004500040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000E00000054003000320036005F0049004400010000000000
      0E00000054003000320037005F00490044000100000000001C00000054003000
      320038005F00530048004F0054005F004E0041004D0045000100000000001A00
      000054003000320036005F005300450043005F005200450047004E0001000000
      0000}
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
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000320037005F0049004400010000000000
      1A00000054003000320037005F005300450043005F0054005900500045000100
      00000000}
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
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0054003000350035005F00490044005F005300
      040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000350035005F0049004400010000000000
      1C00000054003000350035005F004C004F004E0047005F004E0041004D004500
      010000000000}
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
      '--ORDER BY T055_START_DATE'
      'ORDER BY T055_ID'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000E00000054003000350035005F0049004400010000000000
      1C00000054003000350035005F004C004F004E0047005F004E0041004D004500
      010000000000}
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

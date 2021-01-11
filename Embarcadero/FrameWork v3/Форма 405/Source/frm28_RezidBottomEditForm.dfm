inherited frm28_RezidBottomEdit: Tfrm28_RezidBottomEdit
  Left = 321
  Top = 343
  ClientHeight = 185
  ClientWidth = 386
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 32
    Width = 24
    Height = 13
    Caption = 'ИНН'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 57
    Width = 19
    Height = 13
    Caption = 'Тип'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 81
    Width = 36
    Height = 13
    Caption = 'Регион'
  end
  object Label5: TLabel [4]
    Left = 7
    Top = 105
    Width = 43
    Height = 13
    Caption = 'Отрасль'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 129
    Width = 36
    Height = 13
    Caption = 'Сектор'
  end
  inherited Panel2: TPanel
    Top = 152
    Width = 386
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 221
    end
  end
  object ed01: TDBEdit [7]
    Left = 98
    Top = 4
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T012_NAME'
    DataSource = frm28_RezidBottom.dsList
    TabOrder = 0
  end
  object ed02: TDBEdit [8]
    Left = 98
    Top = 29
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T012_CODE'
    DataSource = frm28_RezidBottom.dsList
    TabOrder = 1
  end
  object lcb01: TDBLookupComboBox [9]
    Left = 98
    Top = 54
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T033_ID'
    DataSource = frm28_RezidBottom.dsList
    KeyField = 'T033_ID'
    ListField = 'T033_NAME'
    ListSource = ds01
    TabOrder = 2
  end
  object lcb02: TDBLookupComboBox [10]
    Left = 98
    Top = 78
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T012_REGION_CODE'
    DataSource = frm28_RezidBottom.dsList
    KeyField = 'KOD1'
    ListField = 'NAME_RUS'
    ListSource = ds02
    TabOrder = 4
  end
  object lcb03: TDBLookupComboBox [11]
    Left = 97
    Top = 102
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T012_INDUSTRY_CODE'
    DataSource = frm28_RezidBottom.dsList
    KeyField = 'CODE'
    ListField = 'INDUSTRY'
    ListSource = ds03
    TabOrder = 5
  end
  object lcb04: TDBLookupComboBox [12]
    Left = 96
    Top = 128
    Width = 280
    Height = 21
    DataField = 'T140_ID'
    DataSource = frm28_RezidBottom.dsList
    KeyField = 'T140_ID'
    ListField = 'SECTOR_NAME'
    ListSource = ds04
    TabOrder = 6
  end
  inherited ActionList1: TActionList
    Left = 32
    Top = 40
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T033_ID, T033_NAME'
      'from     V_405_REZID_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033305F494401000000000009000000454D49
      535F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 24
    object ods01T033_ID: TFloatField
      FieldName = 'T033_ID'
      Required = True
    end
    object ods01T033_NAME: TStringField
      FieldName = 'T033_NAME'
      Required = True
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 232
    Top = 24
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'SELECT CODE, INDUSTRY'
      'FROM SN017_INDUSTRY')
    QBEDefinition.QBEFieldDefs = {
      040000000200000004000000434F444501000000000008000000494E44555354
      5259010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 92
    object ods03CODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 255
    end
    object ods03INDUSTRY: TStringField
      FieldName = 'INDUSTRY'
      Required = True
      Size = 255
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 232
    Top = 60
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT KOD1, NAME_RUS'
      'FROM SN018_REGIONS')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004B4F4431010000000000080000004E414D455F52
      5553010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 60
    object ods02KOD1: TFloatField
      FieldName = 'KOD1'
    end
    object ods02NAME_RUS: TStringField
      FieldName = 'NAME_RUS'
      Size = 250
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 228
    Top = 92
  end
  object ods04: TOracleDataSet
    SQL.Strings = (
      'select T140_ID,'
      '       LEVEL_SECTOR_NAME as SECTOR_NAME'
      'from   V_405_SECTORS'
      'order  by SECTOR_POS')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543134305F49440100000000000B000000534543
      544F525F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 128
    Top = 128
  end
  object ds04: TDataSource
    DataSet = ods04
    Left = 168
    Top = 128
  end
end

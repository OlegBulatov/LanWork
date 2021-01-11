inherited frm50_IssuerBottomEdit: Tfrm50_IssuerBottomEdit
  Left = 321
  Top = 343
  ClientHeight = 230
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
  object Label3: TLabel [1]
    Left = 8
    Top = 32
    Width = 19
    Height = 13
    Caption = 'Тип'
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 57
    Width = 24
    Height = 13
    Caption = 'ИНН'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 108
    Width = 36
    Height = 13
    Caption = 'Регион'
  end
  inherited Panel2: TPanel
    Top = 197
    Width = 386
    TabOrder = 4
    inherited Panel3: TPanel
      Left = 221
    end
  end
  object ed01: TDBEdit [5]
    Left = 98
    Top = 4
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_SHOT_NAME'
    DataSource = frm50_IssuerBottom.dsList
    TabOrder = 0
  end
  object lcb01: TDBLookupComboBox [6]
    Left = 98
    Top = 29
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T025_ID'
    DataSource = frm50_IssuerBottom.dsList
    KeyField = 'T025_ID'
    ListField = 'T025_SHOT_NAME'
    ListSource = ds01
    TabOrder = 1
  end
  object ed02: TDBEdit [7]
    Left = 98
    Top = 54
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_INN'
    DataSource = frm50_IssuerBottom.dsList
    TabOrder = 2
  end
  inline fm13_Country: Tfm13_Country [8]
    Top = 79
    Width = 386
    TabOrder = 3
    inherited lcbSelect: TDBLookupComboBox
      Width = 280
      DataField = 'T028_COUNTRY_ID'
    end
  end
  object lcbRegion: TDBLookupComboBox
    Left = 98
    Top = 104
    Width = 280
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'T028_REGION_CODE'
    DataSource = frm50_IssuerBottom.dsList
    DropDownRows = 10
    KeyField = 'REGION_CODE'
    ListField = 'REGION_NAME'
    ListSource = dsRegion
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  inline fm42_Industry: Tfm42_Industry
    Top = 129
    Width = 386
    TabOrder = 6
    inherited lcbSelect: TDBLookupComboBox
      Width = 280
      DataField = 'T028_INDUSTRY_CODE'
      OnCloseUp = fm42_IndustrylcbSelectCloseUp
    end
    inherited ed01: TDBEdit
      Width = 279
    end
    inherited fm43_Sectors1: Tfm43_Sectors
      Width = 386
      inherited lcbSelect: TDBLookupComboBox
        Width = 280
        DataField = 'T140_ID'
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 16
    Top = 176
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T025_ID, T025_SHOT_NAME'
      'from     V_405_ISSUER_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032355F49440100000000000E000000543032
      355F53484F545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 288
    Top = 16
    object ods01T025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object ods01T025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    OnDataChange = ds01DataChange
    Left = 328
    Top = 16
  end
  object odsRegion: TOracleDataSet
    SQL.Strings = (
      'SELECT  REGION_CODE, REGION_NAME'
      'FROM V_405_REGIONS_ADV'
      'ORDER BY REGION_NAME'
      '')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000B000000524547494F4E5F434F44450100000000000B0000
      00524547494F4E5F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 96
    object odsRegionREGION_CODE: TFloatField
      FieldName = 'REGION_CODE'
    end
    object odsRegionREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 250
    end
  end
  object dsRegion: TDataSource
    DataSet = odsRegion
    Left = 224
    Top = 96
  end
end

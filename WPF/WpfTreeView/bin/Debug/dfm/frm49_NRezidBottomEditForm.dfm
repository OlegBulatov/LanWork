inherited frm49_NRezidBottomEdit: Tfrm49_NRezidBottomEdit
  Left = 321
  Top = 343
  ClientHeight = 108
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
    Top = 57
    Width = 19
    Height = 13
    Caption = 'Тип'
  end
  inherited Panel2: TPanel
    Top = 75
    Width = 386
    TabOrder = 3
    inherited Panel3: TPanel
      Left = 221
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 4
    Width = 282
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T013_NAME'
    DataSource = frm49_NRezidBottom.dsList
    TabOrder = 0
  end
  object lcb01: TDBLookupComboBox [4]
    Left = 98
    Top = 54
    Width = 282
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T034_ID'
    DataSource = frm49_NRezidBottom.dsList
    KeyField = 'T034_ID'
    ListField = 'T034_NAME'
    ListSource = ds01
    TabOrder = 2
  end
  inline fm13_Country: Tfm13_Country [5]
    Top = 29
    Width = 388
    TabOrder = 1
    inherited lcbSelect: TDBLookupComboBox
      Width = 282
      DataField = 'T013_CODE'
      DataSource = frm49_NRezidBottom.dsList
    end
  end
  inherited ActionList1: TActionList
    Left = 32
    Top = 40
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T034_ID, T034_NAME'
      'from     V_405_NREZID_TYPE'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033345F494401000000000009000000543033
      345F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 288
    Top = 40
    object ods01T034_ID: TFloatField
      FieldName = 'T034_ID'
      Required = True
    end
    object ods01T034_NAME: TStringField
      FieldName = 'T034_NAME'
      Required = True
      Size = 50
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 328
    Top = 40
  end
end

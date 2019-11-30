inherited frm91_DraftProfitEdit: Tfrm91_DraftProfitEdit
  Left = 435
  Top = 400
  ClientHeight = 162
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 9
    Width = 38
    Height = 13
    Caption = 'Период'
  end
  object Label3: TLabel [1]
    Left = 4
    Top = 33
    Width = 38
    Height = 13
    Caption = 'Валюта'
  end
  object Label4: TLabel [2]
    Left = 4
    Top = 53
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  inherited Panel2: TPanel
    Top = 129
  end
  object lcb02: TDBLookupComboBox [4]
    Left = 104
    Top = 29
    Width = 313
    Height = 21
    DataField = 'M021_CURR'
    DataSource = frm91_DraftProfitList.dsList
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
    ListSource = ds02
    TabOrder = 1
  end
  object m01: TDBMemo [5]
    Left = 104
    Top = 53
    Width = 312
    Height = 73
    DataField = 'M021_DESCR'
    DataSource = frm91_DraftProfitList.dsList
    TabOrder = 2
  end
  object lcb01: TDBLookupComboBox [6]
    Left = 104
    Top = 5
    Width = 314
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'M032_ID'
    DataSource = frm91_DraftProfitList.dsList
    DropDownRows = 14
    DropDownWidth = -1
    KeyField = 'M032_ID'
    ListField = 'M032_NAME'
    ListSource = ds01
    TabOrder = 3
  end
  inherited ActionList: TActionList
    Left = 304
    Top = 9
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select ISO_ID, ISO_LAT3, CURR_DESC'
      'from V_NR_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000600000049534F5F49440100000000000900000043555252
      5F444553430100000000000800000049534F5F4C415433010000000000}
    Session = dmMain.OracleSession
    Left = 312
    Top = 41
    object ods02ISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object ods02CURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
    object ods02ISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 360
    Top = 41
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT M032_ID, M032_NAME'
      'FROM V_NR_PERIODS'
      'WHERE M032_YEAR_ID = :T055_ID'
      'ORDER BY UPPER(M032_ID)')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D3033325F4944010000000000090000004D3033
      325F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 200
    Top = 9
    object ods01M032_ID: TFloatField
      FieldName = 'M032_ID'
      Required = True
    end
    object ods01M032_NAME: TStringField
      FieldName = 'M032_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 232
    Top = 9
  end
end

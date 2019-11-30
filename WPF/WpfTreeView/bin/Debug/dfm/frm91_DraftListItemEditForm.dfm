inherited frm91_DraftListItemEdit: Tfrm91_DraftListItemEdit
  Left = 523
  Top = 434
  ClientHeight = 177
  ClientWidth = 423
  OnCreate = FormCreate
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
    Width = 48
    Height = 13
    Caption = 'Значение'
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 56
    Width = 70
    Height = 13
    Caption = 'Комментарий'
  end
  inherited Panel2: TPanel
    Top = 144
    Width = 423
    inherited Panel3: TPanel
      Left = 258
    end
  end
  object lcb01: TDBLookupComboBox [4]
    Left = 144
    Top = 4
    Width = 273
    Height = 21
    DataField = 'M028_ID'
    DataSource = frm91_DraftProfitListItem.dsList
    KeyField = 'M028_ID'
    ListField = 'M028_NAME'
    ListSource = ds01
    TabOrder = 1
  end
  object ed01: TDBEdit [5]
    Left = 144
    Top = 28
    Width = 273
    Height = 21
    DataField = 'M022_VALUE'
    DataSource = frm91_DraftProfitListItem.dsList
    TabOrder = 2
  end
  object DBMemo1: TDBMemo [6]
    Left = 144
    Top = 52
    Width = 273
    Height = 89
    DataField = 'M022_COMMENT'
    DataSource = frm91_DraftProfitListItem.dsList
    TabOrder = 3
  end
  inherited ActionList: TActionList
    Left = 68
    Top = 8
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select M028_ID, M028_NAME'
      'from V_NR_REINVEST_DATA_TYPE'
      'where M028_TYPE = '#39'D'#39)
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D3032385F4944010000000000090000004D3032
      385F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 320
    object ods01M028_ID: TFloatField
      FieldName = 'M028_ID'
      Required = True
    end
    object ods01M028_NAME: TStringField
      FieldName = 'M028_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 360
  end
end

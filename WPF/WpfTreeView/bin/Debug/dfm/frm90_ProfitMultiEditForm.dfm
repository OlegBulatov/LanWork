inherited frm90_ProfitMultiEdit: Tfrm90_ProfitMultiEdit
  Top = 210
  ClientHeight = 97
  ClientWidth = 302
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 9
    Width = 38
    Height = 13
    Caption = 'Валюта'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 31
    Width = 54
    Height = 13
    Caption = 'Состояние'
  end
  inherited Panel2: TPanel
    Top = 64
    Width = 302
    inherited Panel3: TPanel
      Left = 137
    end
    inherited PrevBtn: TBitBtn
      Width = 14
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 24
      Width = 14
      Enabled = False
      Visible = False
    end
  end
  object lcb01: TDBLookupComboBox [3]
    Left = 98
    Top = 4
    Width = 191
    Height = 21
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
    ListSource = ds01
    TabOrder = 1
  end
  object lcb02: TDBLookupComboBox [4]
    Left = 98
    Top = 27
    Width = 191
    Height = 21
    KeyField = 'ET_ID'
    ListField = 'ET_NAME'
    ListSource = ds02
    TabOrder = 2
  end
  inherited ActionList: TActionList
    Left = 48
    Top = 64
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select ET_ID, ET_NAME from V_NR_REINVEST_EDIT_TYPES')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000500000045545F49440100000000000700000045545F4E41
      4D45010000000000}
    Session = dmMain.OracleSession
    Left = 192
    Top = 32
    object ods02ET_ID: TFloatField
      FieldName = 'ET_ID'
    end
    object ods02ET_NAME: TStringField
      FieldName = 'ET_NAME'
      Size = 22
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 224
    Top = 33
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select ISO_ID, ISO_LAT3, CURR_DESC'
      'from V_NR_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000600000049534F5F49440100000000000900000043555252
      5F444553430100000000000800000049534F5F4C415433010000000000}
    Session = dmMain.OracleSession
    Left = 128
    Top = 8
    object ods01ISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object ods01CURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
    object ods01ISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 160
    Top = 8
  end
end

inherited frm59_DayEdit: Tfrm59_DayEdit
  ClientHeight = 87
  ClientWidth = 295
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Месяц'
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 32
    Width = 85
    Height = 13
    Caption = 'Кол-во раб. дней'
  end
  inherited Panel2: TPanel
    Top = 54
    Width = 295
    inherited Panel3: TPanel
      Left = 130
    end
  end
  object ed01: TDBEdit [3]
    Left = 98
    Top = 29
    Width = 192
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T063_MONTH_COUNT'
    DataSource = frm59_DayList.dsList
    TabOrder = 1
  end
  object lcb01: TDBLookupComboBox [4]
    Left = 98
    Top = 4
    Width = 192
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T055_ID'
    DataSource = frm59_DayList.dsList
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds01
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 56
    Top = 32
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select T055_ID, T055_LONG_NAME'
      'from V_405_TIME'
      'where T055_TYPE='#39'M'#39
      'order by T055_START_DATE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    QueryAllRecords = False
    Session = dmMain.OracleSession
    Left = 208
    Top = 8
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 248
    Top = 8
  end
end

inherited frm18_DivPaymentEdit: Tfrm18_DivPaymentEdit
  ClientHeight = 106
  ClientWidth = 270
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Месяц'
  end
  inherited Panel2: TPanel
    Top = 73
    Width = 270
    inherited Panel3: TPanel
      Left = 105
    end
    inherited PrevBtn: TBitBtn
      Width = 0
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 8
      Width = 0
      Visible = False
    end
  end
  object lcb01: TDBLookupComboBox [2]
    Left = 120
    Top = 4
    Width = 146
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'T055_ID'
    DataSource = frm18_DivPaymentList.dsList
    DropDownRows = 14
    DropDownWidth = -1
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds01
    TabOrder = 1
  end
  object ed01: TDBEdit [3]
    Left = 120
    Top = 28
    Width = 146
    Height = 21
    DataField = 'M051_PROCENT'
    DataSource = frm18_DivPaymentList.dsList
    TabOrder = 2
  end
  object cb01: TDBCheckBox [4]
    Left = 4
    Top = 32
    Width = 109
    Height = 17
    Caption = 'Процент выплат'
    DataField = 'M051_USE_HAND'
    DataSource = frm18_DivPaymentList.dsList
    TabOrder = 3
    ValueChecked = 'N'
    ValueUnchecked = 'Y'
    OnClick = cb01Click
  end
  object cb02: TDBCheckBox [5]
    Left = 4
    Top = 56
    Width = 97
    Height = 17
    Caption = 'Сумма выплат'
    DataField = 'M051_USE_HAND'
    DataSource = frm18_DivPaymentList.dsList
    TabOrder = 4
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
    OnClick = cb02Click
  end
  object ed02: TDBEdit [6]
    Left = 120
    Top = 52
    Width = 146
    Height = 21
    DataField = 'M051_HAND_SUM'
    DataSource = frm18_DivPaymentList.dsList
    TabOrder = 5
  end
  inherited ActionList: TActionList
    Left = 16
    Top = 80
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID, T055_LONG_NAME'
      'FROM V_NR_TIME'
      'WHERE T055_TYPE = '#39'M'#39)
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543035355F49440100000000000E000000543035
      355F4C4F4E475F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 144
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
    Left = 176
  end
end

inherited frm90_ProfitAddWiz: Tfrm90_ProfitAddWiz
  Left = 285
  Top = 280
  BorderStyle = bsDialog
  Caption = 'Выберите период'
  ClientHeight = 77
  ClientWidth = 377
  OldCreateOrder = True
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Месяц'
  end
  object Button1: TButton
    Left = 212
    Top = 46
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Далее >>'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 292
    Top = 46
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Отмена'
    ModalResult = 2
    TabOrder = 1
  end
  object lcb01: TDBLookupComboBox
    Left = 98
    Top = 4
    Width = 271
    Height = 21
    KeyField = 'T055_ID'
    ListField = 'T055_LONG_NAME'
    ListSource = ds01
    TabOrder = 2
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 136
    Top = 32
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select V1.T055_ID, V1.T055_START_DATE, V1.T055_LONG_NAME'
      'from V_NR_TIME V1'
      'where V1.T055_ID >= :T055_START_ID'
      'and V1.T055_ID <= :T055_END_ID'
      'and V1.T055_TYPE = '#39'M'#39
      'minus'
      'select T055_ID, T055_START_DATE, T055_MONTH_NAME'
      'from V_NR_REINVEST_PROFITS'
      'where T055_ID >= :T055_START_ID'
      'and T055_ID <= :T055_END_ID'
      'and M029_ID = :M029_ID')
    Variables.Data = {
      03000000030000000E0000003A543035355F53544152545F4944040000000000
      0000000000000C0000003A543035355F454E445F494404000000000000000000
      0000080000003A4D3035325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F49440100000000000F000000543035
      355F53544152545F444154450100000000000E000000543035355F4C4F4E475F
      4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 96
    Top = 32
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object ods01T055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
end

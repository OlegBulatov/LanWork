inherited frm90_ProfitIssSelEdit: Tfrm90_ProfitIssSelEdit
  ClientHeight = 322
  ClientWidth = 504
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 7
    Top = 7
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  object Label2: TLabel [1]
    Left = 7
    Top = 48
    Width = 24
    Height = 13
    Caption = 'ИНН'
  end
  object Label3: TLabel [2]
    Left = 7
    Top = 111
    Width = 56
    Height = 13
    Caption = 'Рег. номер'
  end
  object Label4: TLabel [3]
    Left = 270
    Top = 111
    Width = 31
    Height = 13
    Caption = 'Тикер'
  end
  object Label5: TLabel [4]
    Left = 7
    Top = 154
    Width = 71
    Height = 13
    Caption = 'Руководитель'
  end
  object Label7: TLabel [5]
    Left = 7
    Top = 207
    Width = 31
    Height = 13
    Caption = 'Адрес'
  end
  object Label6: TLabel [6]
    Left = 9
    Top = 258
    Width = 68
    Height = 13
    Caption = 'Ориг. валюта'
  end
  inherited Panel2: TPanel
    Top = 289
    Width = 504
    inherited Panel3: TPanel
      Left = 339
    end
  end
  object ed01: TDBEdit [8]
    Left = 98
    Top = 3
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_SHOT_NAME'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 1
  end
  inline fm08_IssType: Tfm08_IssType [9]
    Top = 24
    Width = 506
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    inherited btnSelect: TSpeedButton
      Width = 90
      Height = 20
      Caption = 'Тип эмитента'
    end
    inherited lcbSelect: TDBLookupComboBox
      Left = 98
      Width = 402
      DataField = 'T025_ID'
      DataSource = frm05_StrOwnershipIssSel.dsList
    end
    inherited dsSelect: TDataSource
      OnDataChange = fm08_IssTypedsSelectDataChange
    end
  end
  inline fm13_Country: Tfm13_Country
    Top = 66
    Width = 506
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    inherited btnSelect: TSpeedButton
      Height = 20
    end
    inherited lcbSelect: TDBLookupComboBox
      Width = 402
      DataField = 'T028_COUNTRY_ID'
      DataSource = frm05_StrOwnershipIssSel.dsList
    end
  end
  inline fm09_IssTypeInf: Tfm09_IssTypeInf
    Top = 87
    Width = 506
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    inherited btnSelect: TSpeedButton
      Width = 90
      Height = 20
      Caption = 'Код эмитента'
    end
    inherited lcbSelect: TDBLookupComboBox
      Left = 98
      Width = 402
      DataField = 'T037_ID'
      DataSource = frm05_StrOwnershipIssSel.dsList
    end
  end
  object ed02: TDBEdit
    Left = 98
    Top = 45
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_INN'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 5
  end
  object ed03: TDBEdit
    Left = 98
    Top = 108
    Width = 147
    Height = 21
    DataField = 'T036_REG_NUMBER'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 6
  end
  object ed04: TDBEdit
    Left = 318
    Top = 108
    Width = 182
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_TICKER_SKRIN'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 7
  end
  object cb01: TDBCheckBox
    Left = 97
    Top = 132
    Width = 97
    Height = 17
    Caption = 'Признак банк'
    DataField = 'T036_ISBANK'
    DataSource = frm05_StrOwnershipIssSel.dsList
    ReadOnly = True
    TabOrder = 8
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  object cb02: TDBCheckBox
    Left = 318
    Top = 132
    Width = 97
    Height = 17
    Caption = 'Связывать'
    DataField = 'T036_INCLUDE'
    DataSource = frm05_StrOwnershipIssSel.dsList
    ReadOnly = True
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object ed05: TDBEdit
    Left = 98
    Top = 152
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_COMPANY_HEAD'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 10
  end
  object m01: TDBMemo
    Left = 98
    Top = 200
    Width = 402
    Height = 55
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_MAIL_ADDRESS'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 11
  end
  inline fm42_Industry: Tfm42_Industry
    Top = 176
    Width = 505
    TabOrder = 12
    inherited lcbSelect: TDBLookupComboBox
      Width = 402
      DataField = 'T028_INDUSTRY_CODE'
      DataSource = frm90_ProfitIssSel.dsList
    end
  end
  object lcb01: TDBLookupComboBox
    Left = 98
    Top = 255
    Width = 402
    Height = 21
    DataField = 'T036_CR_ID'
    DataSource = frm05_StrOwnershipIssSel.dsList
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
    ListSource = ds01
    TabOrder = 13
  end
  inherited ActionList: TActionList
    Left = 312
    Top = 24
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT * FROM V_NR_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000600000049534F5F4944010000000000090000004E414D45
      5F525553480100000000000800000049534F5F4C415433010000000000090000
      00435552525F44455343010000000000}
    Session = dmMain.OracleSession
    Left = 240
    Top = 248
    object ods01ISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object ods01NAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 100
    end
    object ods01ISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object ods01CURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 272
    Top = 248
  end
end

inherited frm05_StrOwnershipIssSelEdit: Tfrm05_StrOwnershipIssSelEdit
  ClientHeight = 409
  ClientWidth = 504
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 7
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 48
    Width = 24
    Height = 13
    Caption = 'ИНН'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 132
    Width = 56
    Height = 13
    Caption = 'Рег. номер'
  end
  object Label4: TLabel [3]
    Left = 270
    Top = 132
    Width = 31
    Height = 13
    Caption = 'Тикер'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 175
    Width = 71
    Height = 13
    Caption = 'Руководитель'
  end
  object Label7: TLabel [5]
    Left = 8
    Top = 252
    Width = 31
    Height = 13
    Caption = 'Адрес'
  end
  object Label6: TLabel [6]
    Left = 8
    Top = 308
    Width = 68
    Height = 13
    Caption = 'Ориг. валюта'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 90
    Width = 36
    Height = 13
    Caption = 'Регион'
  end
  inherited Panel2: TPanel
    Top = 376
    Width = 504
    inherited Panel3: TPanel
      Left = 339
    end
  end
  object ed01: TDBEdit [9]
    Left = 98
    Top = 3
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_SHOT_NAME'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 1
  end
  inline fm08_IssType: Tfm08_IssType [10]
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
    Top = 108
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
    Top = 129
    Width = 147
    Height = 21
    DataField = 'T036_REG_NUMBER'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 6
  end
  object ed04: TDBEdit
    Left = 318
    Top = 129
    Width = 182
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_TICKER_SKRIN'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 7
  end
  object cb01: TDBCheckBox
    Left = 97
    Top = 153
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
    Top = 153
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
    Top = 173
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_COMPANY_HEAD'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 10
  end
  object m01: TDBMemo
    Left = 98
    Top = 246
    Width = 402
    Height = 55
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_MAIL_ADDRESS'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 11
  end
  inline fm42_Industry: Tfm42_Industry
    Top = 197
    Width = 505
    TabOrder = 12
    inherited lcbSelect: TDBLookupComboBox
      Width = 402
      DataField = 'T028_INDUSTRY_CODE'
      DataSource = frm05_StrOwnershipIssSel.dsList
    end
    inherited ed01: TDBEdit
      Width = 402
    end
    inherited odsSelect: TOracleDataSet
      SQL.Strings = (
        'SELECT CODE,'
        '  INDUSTRY,'
        ' T112_GROUP_NAME'
        'FROM V_NR_INDUSTRY_ADV'
        'ORDER BY CODE')
    end
  end
  object lcb01: TDBLookupComboBox
    Left = 98
    Top = 305
    Width = 402
    Height = 21
    DataField = 'T036_CR_ID'
    DataSource = frm05_StrOwnershipIssSel.dsList
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
    ListSource = ds01
    TabOrder = 13
  end
  object cb03: TDBCheckBox
    Left = 98
    Top = 330
    Width = 97
    Height = 17
    Caption = 'Дивиденды'
    DataField = 'M029_IS_DIV'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 14
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object cb04: TDBCheckBox
    Left = 318
    Top = 330
    Width = 177
    Height = 17
    Caption = 'Реинвестированные доходы'
    DataField = 'M029_IS_REINV'
    DataSource = frm05_StrOwnershipIssSel.dsList
    TabOrder = 15
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object lcbSelectRgn: TDBLookupComboBox
    Left = 98
    Top = 87
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'T028_REGION_CODE'
    DataSource = frm05_StrOwnershipIssSel.dsList
    DropDownRows = 10
    KeyField = 'REGION_CODE'
    ListField = 'REGION_NAME'
    ListSource = dsSelectRgn
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
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
    Top = 269
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
    Top = 269
  end
  object odsSelectRgn: TOracleDataSet
    SQL.Strings = (
      'SELECT REGION_CODE,'
      '  REGION_NAME'
      'FROM V_NR_REGIONS_ADV'
      'ORDER BY REGION_NAME'
      '')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000B000000524547494F4E5F434F44450100000000000B0000
      00524547494F4E5F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 232
    Top = 93
    object odsSelectRgnREGION_CODE: TFloatField
      FieldName = 'REGION_CODE'
    end
    object odsSelectRgnREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 250
    end
  end
  object dsSelectRgn: TDataSource
    DataSet = odsSelectRgn
    Left = 272
    Top = 93
  end
end

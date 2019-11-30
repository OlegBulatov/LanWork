inherited frm05_StrOwnershipIssEdit: Tfrm05_StrOwnershipIssEdit
  Caption = 'Редактирование эмитента'
  ClientHeight = 299
  ClientWidth = 506
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
  object Label3: TLabel [1]
    Left = 7
    Top = 46
    Width = 24
    Height = 13
    Caption = 'ИНН'
  end
  object Label6: TLabel [2]
    Left = 7
    Top = 107
    Width = 56
    Height = 13
    Caption = 'Рег. номер'
  end
  object Label7: TLabel [3]
    Left = 270
    Top = 107
    Width = 31
    Height = 13
    Caption = 'Тикер'
  end
  object Label8: TLabel [4]
    Left = 7
    Top = 148
    Width = 71
    Height = 13
    Caption = 'Руководитель'
  end
  object Label9: TLabel [5]
    Left = 7
    Top = 168
    Width = 43
    Height = 13
    Caption = 'Отрасль'
  end
  object Label10: TLabel [6]
    Left = 7
    Top = 189
    Width = 31
    Height = 13
    Caption = 'Адрес'
  end
  object Label2: TLabel [7]
    Left = 9
    Top = 244
    Width = 68
    Height = 13
    Caption = 'Ориг. валюта'
  end
  inherited Panel2: TPanel
    Top = 266
    Width = 506
    inherited Panel3: TPanel
      Left = 341
      Anchors = [akTop, akRight]
      inherited OKBtn: TButton
        Anchors = [akTop, akRight]
        Enabled = False
      end
      inherited CancelBtn: TButton
        Anchors = [akTop, akRight]
        Enabled = False
      end
    end
    inherited PrevBtn: TBitBtn
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Enabled = False
      Visible = False
    end
  end
  object cb01: TDBCheckBox [9]
    Left = 98
    Top = 128
    Width = 111
    Height = 13
    Caption = 'Признак банк'
    DataField = 'T036_ISBANK'
    DataSource = frm05_StrOwnershipIssSel.dsList
    ReadOnly = True
    TabOrder = 1
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  object cb02: TDBCheckBox [10]
    Left = 319
    Top = 128
    Width = 78
    Height = 13
    Caption = 'Связывать'
    DataField = 'T036_INCLUDE'
    DataSource = frm05_StrOwnershipIssSel.dsList
    ReadOnly = True
    TabOrder = 2
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
  end
  object DBMemo1: TDBMemo [11]
    Left = 98
    Top = 185
    Width = 402
    Height = 56
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_MAIL_ADDRESS'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object ed01: TDBEdit [12]
    Left = 98
    Top = 3
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_SHOT_NAME'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object ed02: TDBEdit [13]
    Left = 98
    Top = 44
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T028_INN'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 5
  end
  object ed03: TDBEdit [14]
    Left = 98
    Top = 105
    Width = 147
    Height = 21
    DataField = 'T036_REG_NUMBER'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 6
  end
  object ed04: TDBEdit [15]
    Left = 318
    Top = 105
    Width = 183
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_TICKER_SCRIN'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 7
  end
  object ed05: TDBEdit [16]
    Left = 98
    Top = 145
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_COMPANY_HEAD'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
  object ed06: TDBEdit [17]
    Left = 98
    Top = 165
    Width = 402
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T036_INDUSTRY'
    DataSource = frm05_StrOwnershipIssSel.dsList
    Enabled = False
    ReadOnly = True
    TabOrder = 9
  end
  inline fm13_Country: Tfm13_Country [18]
    Top = 64
    Width = 507
    Height = 20
    Anchors = [akLeft, akTop, akRight]
    Enabled = False
    TabOrder = 10
    inherited btnSelect: TSpeedButton
      Left = 6
      Height = 20
    end
    inherited lcbSelect: TDBLookupComboBox
      Width = 403
      DataField = 'SN015_ISO_DIG'
      Enabled = False
    end
    inherited odsSelect: TOracleDataSet
      Left = 152
    end
    inherited dsSelect: TDataSource
      Left = 184
    end
  end
  inline fm08_IssType: Tfm08_IssType
    Top = 24
    Width = 506
    Height = 20
    Anchors = [akLeft, akTop, akRight]
    Enabled = False
    TabOrder = 11
    inherited btnSelect: TSpeedButton
      Left = 6
      Width = 90
      Height = 20
    end
    inherited lcbSelect: TDBLookupComboBox
      Left = 98
      Width = 403
      DataField = 'T025_ID'
      Enabled = False
    end
    inherited odsSelect: TOracleDataSet
      Left = 152
    end
    inherited dsSelect: TDataSource
      Left = 184
    end
  end
  inline fm09_IssTypeInf: Tfm09_IssTypeInf
    Top = 85
    Width = 505
    Height = 20
    Anchors = [akLeft, akTop, akRight]
    Enabled = False
    TabOrder = 12
    inherited btnSelect: TSpeedButton
      Left = 6
      Width = 90
      Height = 20
    end
    inherited lcbSelect: TDBLookupComboBox
      Left = 98
      Width = 403
      DataField = 'T037_ID'
      Enabled = False
    end
    inherited odsSelect: TOracleDataSet
      Left = 152
    end
    inherited dsSelect: TDataSource
      Left = 184
    end
  end
  object lcb01: TDBLookupComboBox
    Left = 98
    Top = 241
    Width = 402
    Height = 21
    DataField = 'T036_CR_ID'
    DataSource = frm05_StrOwnershipIssSel.dsList
    KeyField = 'ISO_ID'
    ListField = 'CURR_DESC'
    ListSource = ds01
    TabOrder = 13
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 272
    Top = 248
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
end

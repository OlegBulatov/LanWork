inherited frm63_711Edit: Tfrm63_711Edit
  Left = 362
  Top = 144
  ClientHeight = 619
  ClientWidth = 472
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 7
    Width = 15
    Height = 13
    Caption = 'ТУ'
  end
  object Label4: TLabel [1]
    Left = 8
    Top = 32
    Width = 88
    Height = 13
    Caption = 'Отчетный период'
  end
  object Label5: TLabel [2]
    Left = 8
    Top = 57
    Width = 74
    Height = 13
    Caption = 'Рег. номер КО'
  end
  object Label11: TLabel [3]
    Left = 8
    Top = 312
    Width = 76
    Height = 13
    Caption = 'Дробная часть'
  end
  object Label10: TLabel [4]
    Left = 8
    Top = 287
    Width = 63
    Height = 13
    Caption = 'Целая часть'
  end
  object Label2: TLabel [5]
    Left = 8
    Top = 82
    Width = 85
    Height = 13
    Caption = 'Номер лицензии'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 237
    Width = 73
    Height = 13
    Caption = 'Условный код'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 262
    Width = 82
    Height = 13
    Caption = 'Код заполнения'
  end
  object Label21: TLabel [8]
    Left = 8
    Top = 512
    Width = 70
    Height = 26
    Caption = 'Комментарий'#13#10'ДПБ'
  end
  inherited Panel2: TPanel
    Top = 586
    Width = 472
    TabOrder = 12
    inherited Panel3: TPanel
      Left = 307
    end
  end
  object ed01: TDBEdit [10]
    Left = 104
    Top = 4
    Width = 361
    Height = 21
    DataField = 'T051_KP_ID'
    DataSource = frm63_711List.dsList
    TabOrder = 0
  end
  object lcb01: TDBLookupComboBox [11]
    Left = 104
    Top = 29
    Width = 361
    Height = 21
    DataField = 'T051_NUMB_IN_YEA'
    DataSource = frm63_711List.dsList
    KeyField = 'T051_NUMB_IN_YEA'
    ListField = 'T051_NUMB_IN_YEA_DESC'
    ListSource = ds01
    TabOrder = 1
  end
  object ed02: TDBEdit [12]
    Left = 104
    Top = 79
    Width = 361
    Height = 21
    DataField = 'T052_REGNUM'
    DataSource = frm63_711List.dsList
    TabOrder = 4
  end
  object ed05: TDBEdit [13]
    Left = 104
    Top = 284
    Width = 361
    Height = 21
    DataField = 'T052_N_ST1'
    DataSource = frm63_711List.dsList
    TabOrder = 8
  end
  object ed06: TDBEdit [14]
    Left = 104
    Top = 309
    Width = 361
    Height = 21
    DataField = 'T052_N_ST2'
    DataSource = frm63_711List.dsList
    TabOrder = 9
  end
  object lcb02: TDBLookupComboBox [15]
    Left = 104
    Top = 54
    Width = 361
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'T051_BANK_CODE'
    DataSource = frm63_711List.dsList
    KeyField = 'REGN'
    ListField = 'BANKNAME'
    ListSource = ds02
    TabOrder = 2
  end
  object ed03: TDBEdit [16]
    Left = 104
    Top = 234
    Width = 360
    Height = 21
    DataField = 'T052_SENNAME'
    DataSource = frm63_711List.dsList
    TabOrder = 6
  end
  object ed04: TDBEdit [17]
    Left = 104
    Top = 259
    Width = 360
    Height = 21
    DataField = 'T052_KOD_NUM'
    DataSource = frm63_711List.dsList
    TabOrder = 7
  end
  object GroupBox1: TGroupBox [18]
    Left = 5
    Top = 102
    Width = 462
    Height = 99
    Caption = 'Сведения об эмиссии: '
    TabOrder = 3
    inline fm05_Emission: Tfm05_Emission
      Left = 2
      Top = 15
      Width = 458
      Height = 82
      Align = alClient
      inherited btnSelect: TSpeedButton
        Caption = 'Наименование...'
      end
      inherited lcbSelect: TDBLookupComboBox
        Width = 352
        DataField = 'T030_ID'
        DataSource = frm63_711List.dsList
      end
      inherited ed03: TDBEdit
        Width = 154
      end
      inherited ed01: TDBEdit
        Width = 352
      end
    end
  end
  inline fm12_Currency: Tfm12_Currency [19]
    Left = 6
    Top = 208
    TabOrder = 5
    inherited lcbSelect: TDBLookupComboBox
      DataField = 'T052_CURR'
      DataSource = frm63_711List.dsList
    end
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 334
    Width = 458
    Height = 171
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Кол-во ценных бумаг на счетах'
    TabOrder = 10
    object Label3: TLabel
      Left = 38
      Top = 20
      Width = 54
      Height = 13
      Caption = 'KL_S_UFR'
    end
    object Label6: TLabel
      Left = 235
      Top = 20
      Width = 48
      Height = 13
      Caption = 'KL_ZG_R'
    end
    object Label9: TLabel
      Left = 38
      Top = 44
      Width = 47
      Height = 13
      Caption = 'KL_S_KO'
    end
    object Label12: TLabel
      Left = 235
      Top = 44
      Width = 48
      Height = 13
      Caption = 'KL_ZG_N'
    end
    object Label13: TLabel
      Left = 38
      Top = 116
      Width = 46
      Height = 13
      Caption = 'KL_L_KO'
    end
    object Label14: TLabel
      Left = 235
      Top = 116
      Width = 35
      Height = 13
      Caption = 'KL_EM'
    end
    object Label15: TLabel
      Left = 38
      Top = 92
      Width = 39
      Height = 13
      Caption = 'KL_L_R'
    end
    object Label16: TLabel
      Left = 235
      Top = 92
      Width = 33
      Height = 13
      Caption = 'KL_ES'
    end
    object Label17: TLabel
      Left = 38
      Top = 68
      Width = 54
      Height = 13
      Caption = 'KL_S_UFN'
    end
    object Label18: TLabel
      Left = 235
      Top = 68
      Width = 35
      Height = 13
      Caption = 'KL_DU'
    end
    object Label19: TLabel
      Left = 38
      Top = 140
      Width = 39
      Height = 13
      Caption = 'KL_L_N'
    end
    object Label20: TLabel
      Left = 235
      Top = 140
      Width = 26
      Height = 13
      Caption = 'KL_X'
    end
    object ed07: TDBEdit
      Left = 98
      Top = 18
      Width = 119
      Height = 21
      DataField = 'T064_COUNT_1'
      DataSource = frm63_711List.dsList
      TabOrder = 0
    end
    object ed13: TDBEdit
      Left = 296
      Top = 18
      Width = 154
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T064_COUNT_7'
      DataSource = frm63_711List.dsList
      TabOrder = 6
    end
    object ed08: TDBEdit
      Left = 98
      Top = 42
      Width = 119
      Height = 21
      DataField = 'T064_COUNT_2'
      DataSource = frm63_711List.dsList
      TabOrder = 1
    end
    object ed14: TDBEdit
      Left = 296
      Top = 42
      Width = 154
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T064_COUNT_8'
      DataSource = frm63_711List.dsList
      TabOrder = 7
    end
    object ed11: TDBEdit
      Left = 98
      Top = 114
      Width = 119
      Height = 21
      DataField = 'T064_COUNT_5'
      DataSource = frm63_711List.dsList
      TabOrder = 4
    end
    object ed17: TDBEdit
      Left = 296
      Top = 114
      Width = 154
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T064_COUNT_11'
      DataSource = frm63_711List.dsList
      TabOrder = 10
    end
    object ed10: TDBEdit
      Left = 98
      Top = 90
      Width = 119
      Height = 21
      DataField = 'T064_COUNT_4'
      DataSource = frm63_711List.dsList
      TabOrder = 3
    end
    object ed16: TDBEdit
      Left = 296
      Top = 90
      Width = 154
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T064_COUNT_10'
      DataSource = frm63_711List.dsList
      TabOrder = 9
    end
    object ed09: TDBEdit
      Left = 98
      Top = 66
      Width = 119
      Height = 21
      DataField = 'T064_COUNT_3'
      DataSource = frm63_711List.dsList
      TabOrder = 2
    end
    object ed15: TDBEdit
      Left = 296
      Top = 66
      Width = 154
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T064_COUNT_9'
      DataSource = frm63_711List.dsList
      TabOrder = 8
    end
    object ed12: TDBEdit
      Left = 98
      Top = 138
      Width = 119
      Height = 21
      DataField = 'T064_COUNT_6'
      DataSource = frm63_711List.dsList
      TabOrder = 5
    end
    object ed18: TDBEdit
      Left = 296
      Top = 138
      Width = 154
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'T064_COUNT_12'
      DataSource = frm63_711List.dsList
      TabOrder = 11
    end
  end
  object mDPBCmt: TDBMemo
    Left = 103
    Top = 512
    Width = 361
    Height = 73
    DataField = 'T052_DPB_COMMENT'
    DataSource = frm63_711List.dsList
    ScrollBars = ssVertical
    TabOrder = 11
  end
  inherited ActionList1: TActionList
    Left = 32
    Top = 296
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT DISTINCT T051_NUMB_IN_YEA, T051_NUMB_IN_YEA_DESC '
      'FROM   T051_711_HEADER')
    QBEDefinition.QBEFieldDefs = {
      040000000200000010000000543035315F4E554D425F494E5F59454101000000
      000015000000543035315F4E554D425F494E5F5945415F444553430100000000
      00}
    Session = dmMain.OracleSession
    Left = 376
    Top = 8
    object ods01T051_NUMB_IN_YEA: TStringField
      FieldName = 'T051_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object ods01T051_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T051_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 416
    Top = 8
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'select REGN, REGN || '#39' ('#39' || NAME || '#39')'#39' as BankName'
      'from V_BANC_LIST'
      'order by REGN')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000005245474E0100000000000800000042414E4B4E41
      4D45010000000000}
    Session = dmMain.OracleSession
    Left = 376
    Top = 48
    object ods02REGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object ods02BANKNAME: TStringField
      FieldName = 'BANKNAME'
      Size = 262
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 416
    Top = 48
  end
end

inherited frm14_StrOwnTabEditItem: Tfrm14_StrOwnTabEditItem
  Left = 278
  Top = 234
  Caption = 'Редактирование структуры'
  ClientHeight = 254
  ClientWidth = 352
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 165
    Width = 70
    Height = 13
    Caption = 'Комментарий'
  end
  inherited Panel2: TPanel
    Top = 221
    Width = 352
    inherited Panel3: TPanel
      Left = 187
    end
    inherited PrevBtn: TBitBtn
      Width = 9
      Enabled = False
      Visible = False
    end
    inherited NextBtn: TBitBtn
      Left = 16
      Width = 9
      Enabled = False
      Visible = False
    end
  end
  inline fm09_Issuer: Tfm09_Issuer [2]
    Top = 8
    Width = 345
    TabOrder = 1
    inherited btnSelect: TSpeedButton
      Width = 112
      Caption = 'Собственник..'
    end
    inherited lcbSelect: TDBLookupComboBox
      Left = 120
      Top = 2
      Width = 225
      DataField = 'T028_ID'
    end
    inherited odsSelect: TOracleDataSet
      SQL.Strings = (
        'SELECT T028_ID,'
        '               T028_CODE,'
        
          '               T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T028_' +
          'SHOT_NAME'
        'FROM     V_NR_ISSUERS_LIST V1'
        '/*'
        'WHERE :T028_SALE_ID = :T028_SALE_ID'
        'AND :M011_ID = :M011_ID'
        'AND NVL(:T028_ID_TEK, 0) = NVL(:T028_ID_TEK, 0)'
        '*/'
        'WHERE T028_ID <> :T028_SALE_ID'
        '/*'
        'AND NOT EXISTS (SELECT NULL'
        '                                FROM V_NR_ISSUER_STRUCT V2'
        '                                WHERE V1.T028_ID = V2.T028_ID'
        
          '                                AND V1.T028_ID <> NVL(:T028_ID_T' +
          'EK, 0)'
        '                                AND M011_ID = :M011_ID)'
        '*/'
        'ORDER BY T028_SHOT_NAME'
        ' '
        ' '
        ' '
        ' ')
      Variables.Data = {
        03000000010000000D0000003A543032385F53414C455F494404000000000000
        0000000000}
      Left = 192
    end
  end
  inline fm31_TypeInvest: Tfm31_TypeInvest
    Top = 32
    Width = 345
    TabOrder = 2
    inherited Lookup01: TDBLookupComboBox
      Width = 225
    end
  end
  inline fm33_DataSource: Tfm33_DataSource
    Top = 57
    Width = 345
    TabOrder = 3
    inherited Label1: TLabel
      Caption = 'Источник данных'
    end
    inherited Lookup01: TDBLookupComboBox
      Width = 225
    end
  end
  object memo01: TDBMemo
    Left = 88
    Top = 159
    Width = 257
    Height = 55
    DataField = 'M030_COMMENT'
    DataSource = frm14_StrOwnTabListItem.dsList
    TabOrder = 4
  end
  object gb01: TGroupBox
    Left = 8
    Top = 84
    Width = 337
    Height = 68
    Caption = ' Доля собственника '
    TabOrder = 5
    object ed01: TDBEdit
      Left = 200
      Top = 15
      Width = 129
      Height = 21
      DataField = 'M030_PRC'
      DataSource = frm14_StrOwnTabListItem.dsList
      TabOrder = 0
    end
    object ed02: TDBEdit
      Left = 200
      Top = 40
      Width = 129
      Height = 21
      DataField = 'M030_COUNT'
      DataSource = frm14_StrOwnTabListItem.dsList
      TabOrder = 1
    end
  end
  object cb01: TDBCheckBox
    Left = 16
    Top = 101
    Width = 97
    Height = 17
    Caption = 'Процент'
    DataField = 'M030_ENTER_PROC'
    DataSource = frm14_StrOwnTabListItem.dsList
    TabOrder = 6
    ValueChecked = 'Y'
    ValueUnchecked = 'N'
    OnClick = cb01Click
  end
  object cb02: TDBCheckBox
    Left = 16
    Top = 126
    Width = 97
    Height = 17
    Caption = 'Кол-во бумаг'
    DataField = 'M030_ENTER_PROC'
    DataSource = frm14_StrOwnTabListItem.dsList
    TabOrder = 7
    ValueChecked = 'N'
    ValueUnchecked = 'Y'
    OnClick = cb02Click
  end
  inherited ActionList: TActionList
    Left = 40
    Top = 197
  end
  object oqPercent: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :v_percent := PK_NResident.f_iss_prc_calc(:M011_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A565F50455243454E5404000000000000000000
      0000080000003A4D3031315F4944040000000000000000000000}
    Left = 8
    Top = 152
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :v_count := PK_NResident.f_nr_emiss_calc(:T028_ID, :T027_ID, :' +
        'V_DATE) - PK_NResident.f_iss_count_calc(:M011_ID);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000005000000080000003A4D3031315F4944040000000000000000000000
      080000003A565F434F554E54040000000000000000000000080000003A543032
      385F4944040000000000000000000000080000003A543032375F494404000000
      0000000000000000070000003A565F444154450C0000000000000000000000}
    Left = 48
    Top = 152
  end
  object oqCalcPrcByCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  :V_RESULT := PK_NResident.f_calc_prc_by_count(:M011_ID, :M030_' +
        'COUNT);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4D3031315F4944040000000000000000000000
      0B0000003A4D3033305F434F554E54040000000000000000000000090000003A
      565F524553554C540400000008000000000000000000000000000000}
    Left = 8
    Top = 184
  end
end

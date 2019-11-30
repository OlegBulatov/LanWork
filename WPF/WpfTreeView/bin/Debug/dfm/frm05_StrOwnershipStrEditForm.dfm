inherited frm05_StrOwnershipStrEdit: Tfrm05_StrOwnershipStrEdit
  Left = 278
  Top = 235
  Caption = 'Редактирование структуры'
  ClientHeight = 205
  ClientWidth = 408
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 7
    Top = 89
    Width = 43
    Height = 13
    Caption = 'Процент'
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 120
    Width = 70
    Height = 13
    Caption = 'Комментарий'
  end
  inherited Panel2: TPanel
    Top = 172
    Width = 408
    inherited Panel3: TPanel
      Left = 243
    end
  end
  inline fm09_Issuer: Tfm09_Issuer [3]
    Top = 8
    Width = 401
    TabOrder = 1
    inherited btnSelect: TSpeedButton
      Width = 112
      Caption = ' Эмитент'
    end
    inherited lcbSelect: TDBLookupComboBox
      Left = 120
      Top = 2
      Width = 281
      DataField = 'T028_ID'
      DataSource = frm14_StrOwnTabListItem.dsList
    end
    inherited odsSelect: TOracleDataSet
      SQL.Strings = (
        'SELECT T028_ID,'
        '               T028_CODE,'
        
          '               T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T028_' +
          'SHOT_NAME'
        'FROM     V_NR_ISSUERS_LIST V1'
        '--WHERE :T028_SALE_ID = :T028_SALE_ID'
        '--AND :M011_ID = :M011_ID'
        '--AND NVL(:T028_ID_TEK, 0) = NVL(:T028_ID_TEK, 0)'
        ''
        'WHERE T028_ID <> :T028_SALE_ID'
        'AND NOT EXISTS (SELECT NULL'
        '                                FROM V_NR_ISSUER_STRUCT V2'
        '                                WHERE V1.T028_ID = V2.T028_ID'
        
          '                                AND V1.T028_ID <> NVL(:T028_ID_T' +
          'EK, 0)'
        '                                AND M011_ID = :M011_ID)'
        'ORDER BY T028_SHOT_NAME'
        ' '
        ' '
        ' '
        ' ')
      Variables.Data = {
        03000000030000000D0000003A543032385F53414C455F494404000000000000
        0000000000080000003A4D3031315F49440400000000000000000000000C0000
        003A543032385F49445F54454B040000000000000000000000}
      Left = 192
    end
  end
  object ed01: TDBEdit
    Left = 120
    Top = 87
    Width = 65
    Height = 21
    DataField = 'M030_PRC'
    DataSource = frm14_StrOwnTabListItem.dsList
    TabOrder = 2
  end
  inline fm31_TypeInvest: Tfm31_TypeInvest
    Top = 32
    Width = 401
    TabOrder = 3
    inherited Lookup01: TDBLookupComboBox
      Width = 281
      DataSource = frm14_StrOwnTabListItem.dsList
    end
  end
  inline fm33_DataSource: Tfm33_DataSource
    Top = 57
    Width = 401
    TabOrder = 4
    inherited Lookup01: TDBLookupComboBox
      Width = 281
      DataSource = frm14_StrOwnTabListItem.dsList
    end
  end
  object memo01: TDBMemo
    Left = 120
    Top = 114
    Width = 281
    Height = 55
    DataField = 'M030_COMMENT'
    DataSource = frm14_StrOwnTabListItem.dsList
    TabOrder = 5
  end
  inherited ActionList: TActionList
    Left = 40
  end
end

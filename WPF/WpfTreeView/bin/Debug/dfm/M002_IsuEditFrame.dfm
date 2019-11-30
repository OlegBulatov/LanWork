inherited M002_IsuEdit: TM002_IsuEdit
  Width = 576
  Height = 260
  object Label1: TLabel [0]
    Left = 8
    Top = 34
    Width = 102
    Height = 13
    Caption = 'Наименование ИСУ'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 59
    Width = 94
    Height = 13
    Caption = 'Наименование УК'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 104
    Width = 103
    Height = 13
    Caption = 'Номер лицензии УК'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 128
    Width = 42
    Height = 13
    Caption = 'ИНН УК'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 152
    Width = 94
    Height = 13
    Caption = 'Рег. № правил ДУ'
  end
  object Label6: TLabel [5]
    Left = 300
    Top = 128
    Width = 93
    Height = 13
    Caption = 'Дата регистрации'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 176
    Width = 70
    Height = 13
    Caption = 'Тип эмитента'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 201
    Width = 40
    Height = 13
    Caption = 'Тип ц.б.'
  end
  object Label9: TLabel [8]
    Left = 300
    Top = 152
    Width = 103
    Height = 13
    Caption = 'Дата изменения УК'
  end
  object Label10: TLabel [9]
    Left = 300
    Top = 176
    Width = 90
    Height = 13
    Caption = 'Дата исключения'
  end
  object Label11: TLabel [10]
    Left = 300
    Top = 104
    Width = 61
    Height = 13
    Caption = 'Код валюты'
  end
  object Label12: TLabel [11]
    Left = 300
    Top = 200
    Width = 133
    Height = 13
    Caption = 'Дата обновления реестра'
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 222
    Width = 103
    Height = 13
    Caption = 'Признак действ. КО'
  end
  object Label14: TLabel [13]
    Left = 8
    Top = 8
    Width = 127
    Height = 13
    Caption = 'Наименование эмитента'
  end
  object edIsuName: TDBEdit [14]
    Left = 144
    Top = 30
    Width = 424
    Height = 21
    TabOrder = 0
  end
  object edMasterName: TDBEdit [15]
    Left = 144
    Top = 54
    Width = 424
    Height = 21
    TabOrder = 1
  end
  object edMasterLic: TDBEdit [16]
    Left = 144
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edMasterInn: TDBEdit [17]
    Left = 144
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edSecRegn: TDBEdit [18]
    Left = 144
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object lcbIssuerType: TxxxDBLookupCheckCombo [19]
    Left = 144
    Top = 171
    Width = 122
    Height = 21
    DropDownCount = 8
    LookupField = 'T037_SHOT_NAME'
    LookupDisplay = 'T037_SHOT_NAME'
    LookupSource = dsIssuerType
    TabOrder = 5
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object edActualBank: TDBEdit [20]
    Left = 144
    Top = 219
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object lcbSecType: TxxxDBLookupCheckCombo [21]
    Left = 144
    Top = 195
    Width = 122
    Height = 21
    DropDownCount = 8
    LookupField = 'T027_SEC_TYPE'
    LookupDisplay = 'T027_SEC_TYPE'
    LookupSource = dsSecType
    TabOrder = 7
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object lcbCurrency: TxxxDBLookupCheckCombo [22]
    Left = 448
    Top = 99
    Width = 121
    Height = 21
    DropDownCount = 8
    ListStyle = [lsSizeable]
    LookupField = 'ISO_LAT3'
    LookupDisplay = 'ISO_LAT3;NAME_RUSH'
    LookupSource = dsCurrency
    TabOrder = 8
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object deAnnDate: TDateEdit [23]
    Left = 448
    Top = 171
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 9
  end
  object deRegDate: TDateEdit [24]
    Left = 448
    Top = 123
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 10
  end
  object deChangeDate: TDateEdit [25]
    Left = 448
    Top = 147
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 11
  end
  object deUpdateDate: TDateEdit [26]
    Left = 448
    Top = 194
    Width = 121
    Height = 21
    GlyphKind = gkDropDown
    NumGlyphs = 1
    TabOrder = 12
  end
  object edIssuerName: TDBEdit [27]
    Left = 144
    Top = 6
    Width = 424
    Height = 21
    TabOrder = 13
  end
  inherited actList: TActionList
    Left = 16
    Top = 56
  end
  object odsIssuerType: TOracleDataSet
    SQL.Strings = (
      'select T037_ID,'
      '       T037_SHOT_NAME,'
      '       T037_LONG_NAME'
      'from   V_405_ISSUER_INF_TYPE'
      'where  T037_ID NOT IN (8, 9)'
      'order by T037_SHOT_NAME')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543033375F49440100000000000E000000543033
      375F53484F545F4E414D450100000000000E000000543033375F4C4F4E475F4E
      414D45010000000000}
    Session = dmMain.OracleSession
    Left = 160
    Top = 144
  end
  object dsIssuerType: TDataSource
    DataSet = odsIssuerType
    Left = 192
    Top = 144
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'select T027_ID,'
      '       T027_SEC_TYPE'
      'from   V_405_SEC_TYPE'
      'order by T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 160
    Top = 176
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 192
    Top = 176
  end
  object odsCurrency: TOracleDataSet
    SQL.Strings = (
      'SELECT ISO_LAT3,'
      
        '       UPPER(SUBSTR(NAME_RUSH, 1, 1)) || LOWER(SUBSTR(NAME_RUSH,' +
        ' 2)) AS NAME_RUSH'
      'FROM   V_405_CURRENCY_LAST'
      'WHERE  ISO_LAT3 <> '#39'KLR'#39
      'ORDER BY ISO_LAT3')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000800000049534F5F4C415433010000000000090000004E41
      4D455F52555348010000000000}
    Session = dmMain.OracleSession
    Left = 464
    Top = 64
  end
  object dsCurrency: TDataSource
    DataSet = odsCurrency
    Left = 496
    Top = 64
  end
end

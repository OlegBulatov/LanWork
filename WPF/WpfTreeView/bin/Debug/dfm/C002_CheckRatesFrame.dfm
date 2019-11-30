inherited C002_CheckRates: TC002_CheckRates
  Width = 991
  Height = 736
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 490
    Width = 991
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  inherited xxxDBGrid: TxxxDBGrid
    Top = 163
    Width = 991
    Height = 327
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T027_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'OP_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код опер.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZID'
        PickList.Strings = ()
        Title.Caption = 'Резидент'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZID'
        PickList.Strings = ()
        Title.Caption = 'Нерезидент'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAY_DIR'
        PickList.Strings = ()
        Title.Caption = 'Направл. платежа'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'К-во ц.б. (шт.)'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECORD_CNT'
        PickList.Strings = ()
        Title.Caption = 'К-во операций'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_SUM_DIR'
        PickList.Strings = ()
        Title.Caption = 'Сумма (млн.$)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVG_PRICE'
        PickList.Strings = ()
        Title.Caption = 'Ср. цена 405 ($)'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVG_RATE'
        PickList.Strings = ()
        Title.Caption = 'Ср. цена на бирже ($)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_PRICE'
        PickList.Strings = ()
        Title.Caption = 'Сумма цен 405 ($)'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE_DIFF'
        PickList.Strings = ()
        Title.Caption = 'Макс. разница цен (%)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_PRICE_DIFF'
        PickList.Strings = ()
        Title.Caption = 'Откл. суммы цен (%)'
        Width = 50
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 138
    Width = 991
  end
  object paFilters: TPanel [3]
    Left = 0
    Top = 0
    Width = 991
    Height = 138
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    inline SecTypeFilter: TC002_TypeSec
      Left = 4
      Top = 48
      Width = 470
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 130
        Width = 341
      end
      inherited actList: TActionList
        Left = 632
      end
      inherited dsList: TDataSource
        Left = 600
      end
      inherited odsList: TOracleDataSet
        Left = 568
      end
    end
    object Button1: TButton
      Left = 483
      Top = 2
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 1
    end
    inline PeriodFilter: TC002_Period
      Left = 4
      Top = 4
      Width = 477
      TabOrder = 2
      inherited cb: TCheckBox
        Enabled = False
      end
    end
    inline OpCodeFilter: TC002_OpCode
      Left = 4
      Top = 26
      Width = 470
      TabOrder = 3
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 130
        Width = 341
      end
    end
    inline DeltaFilter: TfmTextFilter
      Left = 265
      Top = 114
      Width = 213
      TabOrder = 4
      inherited lbCaption: TLabel
        Width = 146
        Caption = 'Макс. откл. цены больше (%)'
      end
      inherited cb: TCheckBox
        Checked = False
        State = cbUnchecked
      end
      inherited ed: TEdit
        Left = 170
        Width = 36
        Text = '20'
      end
    end
    inline IssuerGroupFilter: TG001_IssuerGroup
      Left = 4
      Top = 70
      Width = 470
      TabOrder = 5
      inherited lcb: TxxxDBLookupCheckCombo
        Left = 130
        Width = 341
        DropDownCount = 6
      end
      inherited actList: TActionList
        Left = 264
      end
    end
    inline IssuerFilter: TC002_Issuer
      Left = 488
      Top = 70
      TabOrder = 6
      Visible = False
    end
    object cbNoRates: TCheckBox
      Left = 4
      Top = 95
      Width = 253
      Height = 17
      Caption = 'Показывать записи без биржевых цен'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    inline Delta2Filter: TfmTextFilter
      Left = 4
      Top = 114
      Width = 224
      TabOrder = 8
      inherited lbCaption: TLabel
        Width = 147
        Caption = 'Откл. суммы цен меньше (%)'
      end
      inherited ed: TEdit
        Left = 171
        Width = 37
        Text = '20'
      end
    end
  end
  inline DetailsList: TC002_CheckRatesBottom [4]
    Top = 495
    Width = 991
    Height = 241
    Align = alBottom
    TabOrder = 3
    inherited xxxDBGrid: TxxxDBGrid
      Width = 991
      Height = 216
    end
    inherited paToolButton: TPanel
      Width = 991
      inherited tlbSelect: TToolBar
        Width = 353
      end
    end
    inherited odsList: TOracleDataSet
      Master = odsList
      MasterFields = 
        'T027_ID;T001_OP_ID;T002_BANK_CODE;T028_ID_MAIN;T012_ID_MAIN;T013' +
        '_ID_MAIN;OP_COUNT'
    end
  end
  inherited actList: TActionList [5]
    Left = 8
    Top = 287
  end
  inherited dsList: TDataSource [6]
    Top = 237
  end
  inherited odsList: TOracleDataSet [7]
    SQL.Strings = (
      'select /*+ NO_MERGE(V_405_IIPS_OPERATIONS) */'
      '       T027_ID,'
      '       SEC_TYPE,'
      '       T001_OP_ID,'
      '       OP_CODE,'
      '       T002_BANK_CODE,'
      '       T028_ID_MAIN,'
      '       ISSUER,'
      '       T012_ID_MAIN,'
      '       REZID,'
      '       T013_ID_MAIN,'
      '       NREZID,'
      '       PAY_DIR,'
      '       CASE'
      '         WHEN PAY_GROUP_ID IS NULL THEN OP_COUNT'
      '         ELSE OLD_OP_COUNT'
      '       END'
      '         OP_COUNT,'
      '       COUNT(*) as RECORD_CNT,'
      '       SUM(OP_SUM) as OP_SUM,'
      '       SUM(OP_SUM_DIR) as OP_SUM_DIR,'
      '       AVG(T001_PRICE) as AVG_PRICE,'
      '       AVG(T001_RATE) as AVG_RATE,'
      '       MAX(PRICE_DIFF) as PRICE_DIFF,'
      '       SUM(T001_PRICE) as SUM_PRICE,'
      
        '       ABS ( (SUM(T001_PRICE) - AVG(T001_RATE)) / DECODE (SUM(T0' +
        '01_RATE), 0, NULL, SUM(T001_RATE)) * 100) as SUM_PRICE_DIFF'
      ''
      'from   V_405_IIPS_OPERATIONS'
      ''
      'where  T055_ID >= :T055_ID_S -- 1936'
      'and    T055_ID <= :T055_ID_E -- 1938'
      '--and    T027_ID IN (3)'
      '--and    T001_OP_ID IN (1)'
      ''
      ':T042_ID'
      ''
      'group by'
      '       T027_ID,'
      '       SEC_TYPE,'
      '       T001_OP_ID,'
      '       OP_CODE,'
      '       T002_BANK_CODE,'
      '       T028_ID_MAIN,'
      '       ISSUER,'
      '       T012_ID_MAIN,'
      '       REZID,'
      '       T013_ID_MAIN,'
      '       NREZID,'
      '       PAY_DIR,'
      '       CASE'
      '         WHEN PAY_GROUP_ID IS NULL THEN OP_COUNT'
      '         ELSE OLD_OP_COUNT'
      '       END'
      'having COUNT(*) > 1'
      ':NO_RATES'
      ':DELTA'
      ':DELTA2'
      '           ')
    Variables.Data = {
      03000000060000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F4504000000000000000000000006000000
      3A44454C54410100000002000000200000000000080000003A543034325F4944
      0100000002000000200000000000090000003A4E4F5F52415445530100000002
      000000200000000000070000003A44454C544132010000000200000020000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      04000000150000000E000000543030325F42414E4B5F434F4445010000000000
      07000000543032375F4944010000000000080000005345435F54595045010000
      000000070000004F505F434F4445010000000000060000004953535545520100
      000000000500000052455A4944010000000000060000004E52455A4944010000
      000000070000005041595F444952010000000000080000004F505F434F554E54
      010000000000060000004F505F53554D0100000000000A0000004F505F53554D
      5F444952010000000000090000004156475F5052494345010000000000080000
      004156475F524154450100000000000A00000050524943455F44494646010000
      0000000A000000543030315F4F505F49440100000000000A0000005245434F52
      445F434E540100000000000C000000543032385F49445F4D41494E0100000000
      000C000000543031325F49445F4D41494E0100000000000C000000543031335F
      49445F4D41494E0100000000000900000053554D5F5052494345010000000000
      0E00000053554D5F50524943455F44494646010000000000}
    Top = 235
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListSEC_TYPE: TStringField
      FieldName = 'SEC_TYPE'
      Size = 255
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
    end
    object odsListOP_CODE: TFloatField
      FieldName = 'OP_CODE'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListISSUER: TStringField
      FieldName = 'ISSUER'
      Size = 255
    end
    object odsListREZID: TStringField
      FieldName = 'REZID'
      Size = 255
    end
    object odsListNREZID: TStringField
      FieldName = 'NREZID'
      Size = 255
    end
    object odsListPAY_DIR: TIntegerField
      FieldName = 'PAY_DIR'
    end
    object odsListOP_COUNT: TFloatField
      FieldName = 'OP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListRECORD_CNT: TFloatField
      FieldName = 'RECORD_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOP_SUM: TFloatField
      FieldName = 'OP_SUM'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListOP_SUM_DIR: TFloatField
      FieldName = 'OP_SUM_DIR'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListAVG_PRICE: TFloatField
      FieldName = 'AVG_PRICE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListAVG_RATE: TFloatField
      FieldName = 'AVG_RATE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListPRICE_DIFF: TFloatField
      FieldName = 'PRICE_DIFF'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListSUM_PRICE: TFloatField
      FieldName = 'SUM_PRICE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT028_ID_MAIN: TFloatField
      FieldName = 'T028_ID_MAIN'
    end
    object odsListT012_ID_MAIN: TFloatField
      FieldName = 'T012_ID_MAIN'
    end
    object odsListT013_ID_MAIN: TFloatField
      FieldName = 'T013_ID_MAIN'
    end
    object odsListSUM_PRICE_DIFF: TFloatField
      FieldName = 'SUM_PRICE_DIFF'
      DisplayFormat = '### ### ### ##0'
    end
  end
  inherited PopupMenu: TPopupMenu [8]
    Left = 8
    Top = 250
  end
  inherited oqAdd: TOracleQuery [9]
    Top = 238
  end
  inherited oqUpdate: TOracleQuery [10]
    Top = 274
  end
  inherited oqDelete: TOracleQuery [11]
    Top = 314
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 296
  end
end

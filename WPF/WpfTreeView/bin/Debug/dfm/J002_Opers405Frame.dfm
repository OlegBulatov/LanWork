inherited J002_Opers405: TJ002_Opers405
  Width = 1016
  Height = 319
  inherited xxxDBGrid: TxxxDBGrid
    Top = 118
    Width = 1016
    Height = 201
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 2
            LastCol = 5
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 6
            LastCol = 9
            Caption = 'Главная эмиссия'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_DATE_OP'
        PickList.Strings = ()
        Title.Caption = 'Дата операции'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Title.Caption = 'Рег №'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T010_ISIN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ISIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Рег №'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_TYPE_ID'
        PickList.Strings = ()
        Title.Caption = 'Код опер.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_PAY_ID'
        PickList.Strings = ()
        Title.Caption = 'Напр. плат.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESID_NAME'
        PickList.Strings = ()
        Title.Caption = 'Резидент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESID_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Гл. резидент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRESID_NAME'
        PickList.Strings = ()
        Title.Caption = 'Нерезидент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRESID_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Гл. нерезидент'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'Кол-во, шт.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_CR_ID'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OP_SUM_CROSS'
        PickList.Strings = ()
        Title.Caption = 'Сумма ($)'
        Width = 90
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 93
    Width = 1016
    inherited tlbSelect: TToolBar
      Width = 89
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 35
        Top = 0
        Action = actLink
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 62
        Top = 0
        Action = actUnlink
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 1016
    Height = 72
    inherited GroupBox1: TGroupBox
      Left = 6
      Width = 939
      Height = 63
      object Label1: TLabel
        Left = 101
        Top = 40
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = 'по'
      end
      object f_OpDateFrom: TDateTimePicker
        Left = 119
        Top = 14
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 43032
        Time = 43032
        DateFormat = dfShort
        DateMode = dmUpDown
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
      end
      object f_Bank: TEdit
        Left = 308
        Top = 14
        Width = 74
        Height = 21
        TabOrder = 1
      end
      object cb_Isin: TCheckBox
        Left = 716
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Код ISIN'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = cb_IsinClick
      end
      object f_Isin: TEdit
        Left = 783
        Top = 14
        Width = 133
        Height = 21
        TabOrder = 3
      end
      object cb_SecType: TCheckBox
        Left = 547
        Top = 16
        Width = 64
        Height = 17
        Caption = 'Тип ц.б.'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = cb_SecTypeClick
      end
      object f_SecType: TEdit
        Left = 615
        Top = 14
        Width = 90
        Height = 21
        TabOrder = 5
      end
      object cb_OpType: TCheckBox
        Left = 391
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Код операции'
        Checked = True
        State = cbChecked
        TabOrder = 6
        OnClick = cb_OpTypeClick
      end
      object f_OpType: TEdit
        Left = 484
        Top = 14
        Width = 54
        Height = 21
        TabOrder = 7
      end
      object cb_OpCount: TCheckBox
        Left = 547
        Top = 39
        Width = 67
        Height = 17
        Caption = 'К-во, шт.'
        Checked = True
        State = cbChecked
        TabOrder = 8
        OnClick = cb_OpCountClick
      end
      object f_OpCount: TEdit
        Left = 615
        Top = 38
        Width = 90
        Height = 21
        TabOrder = 9
      end
      object cb_Currency: TCheckBox
        Left = 390
        Top = 39
        Width = 62
        Height = 17
        Caption = 'Валюта'
        Checked = True
        State = cbChecked
        TabOrder = 10
        OnClick = cb_CurrencyClick
      end
      object f_Currency: TEdit
        Left = 484
        Top = 38
        Width = 54
        Height = 21
        TabOrder = 11
      end
      object cb_OpSum: TCheckBox
        Left = 716
        Top = 40
        Width = 60
        Height = 17
        Caption = 'Сумма'
        Checked = True
        State = cbChecked
        TabOrder = 12
        OnClick = cb_OpSumClick
      end
      object f_OpSum: TEdit
        Left = 783
        Top = 38
        Width = 133
        Height = 21
        TabOrder = 13
      end
      object cb_OpDir: TCheckBox
        Left = 215
        Top = 39
        Width = 93
        Height = 17
        Caption = 'Направление'
        Checked = True
        State = cbChecked
        TabOrder = 14
        OnClick = cb_OpDirClick
      end
      object f_OpDir: TEdit
        Left = 308
        Top = 38
        Width = 74
        Height = 21
        TabOrder = 15
        Text = 'S (OUTR)'
      end
      object cb_Bank: TCheckBox
        Left = 215
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Код КО'
        Checked = True
        State = cbChecked
        TabOrder = 16
        OnClick = cb_BankClick
      end
      object cb_OpDate: TCheckBox
        Left = 8
        Top = 16
        Width = 108
        Height = 17
        Caption = 'Дата операции c'
        Checked = True
        State = cbChecked
        TabOrder = 17
        OnClick = cb_OpDateClick
      end
      object f_OpDateTo: TDateTimePicker
        Left = 119
        Top = 36
        Width = 85
        Height = 22
        CalAlignment = dtaLeft
        Date = 43032
        Time = 43032
        DateFormat = dfShort
        DateMode = dmUpDown
        Kind = dtkDate
        ParseInput = False
        TabOrder = 18
      end
    end
    inherited Button1: TButton
      Left = 963
    end
    object cbNotFilter: TCheckBox
      Left = 965
      Top = 43
      Width = 164
      Height = 17
      Caption = 'Отключить автофильтр'
      TabOrder = 2
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 72
    Width = 1016
    inherited Panel1: TPanel
      Left = 989
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 295
    object actLink: TAction
      Caption = 'Связать'
      Hint = 'Связать операцию ф417 с операцией ф405'
      ImageIndex = 22
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actUnlink: TAction
      Caption = 'Отвязать'
      Hint = 'Отвязать операцию ф417 от операции ф405'
      ImageIndex = 23
      OnExecute = actUnlinkExecute
      OnUpdate = actUnlinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 234
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T001_ID,'
      '  T002_BANK_CODE,'
      '  T001_DATE_OP,'
      '  T027_SEC_TYPE,'
      '  T010_ISIN,'
      '  T026_SEC_REGN,'
      '  T028_SHOT_NAME,'
      '  T027_SEC_TYPE_MAIN,'
      '  T010_ISIN_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T001_OP_TYPE_ID,'
      '  T001_OP_PAY_ID,'
      '  RESID_NAME,'
      '  RESID_NAME_MAIN,'
      '  NRESID_NAME,'
      '  NRESID_NAME_MAIN,'
      '  T001_OP_COUNT,'
      '  T001_OP_CR_ID,'
      '  T001_OP_SUM,'
      '  T001_OP_SUM_CROSS,'
      '  LINKS_1,'
      '  LINKS_2'
      'from V_405_417_405_DATA'
      'where '
      '('
      'T001_DATE_OP BETWEEN :OP_DATE_FROM AND :OP_DATE_TO'
      ':BANK_FILTER'
      ':ISIN_FILTER'
      ':SEC_TYPE_FILTER'
      ':OP_TYPE_FILTER'
      ':OP_DIR_FILTER'
      ':OP_COUNT_FILTER'
      ':OP_CURRENCY_FILTER'
      ':OP_SUM_FILTER'
      ')'
      ':T001_ID_FILTER')
    Variables.Data = {
      030000000B0000000C0000003A4953494E5F46494C5445520100000002000000
      200000000000100000003A5345435F545950455F46494C544552010000000200
      00002000000000000F0000003A4F505F545950455F46494C5445520100000002
      000000200000000000100000003A4F505F434F554E545F46494C544552010000
      0002000000200000000000130000003A4F505F43555252454E43595F46494C54
      455201000000020000002000000000000E0000003A4F505F53554D5F46494C54
      455201000000020000002000000000000E0000003A4F505F4449525F46494C54
      455201000000020000002000000000000C0000003A42414E4B5F46494C544552
      01000000020000002000000000000D0000003A4F505F444154455F46524F4D0C
      00000000000000000000000B0000003A4F505F444154455F544F0C0000000000
      0000000000000F0000003A543030315F49445F46494C54455201000000020000
      00200000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000170000000E000000543030325F42414E4B5F434F4445010000000000
      0C000000543030315F444154455F4F500100000000000D000000543032375F53
      45435F5459504501000000000009000000543031305F4953494E010000000000
      12000000543032375F5345435F545950455F4D41494E0100000000000E000000
      543031305F4953494E5F4D41494E0100000000000D000000543032365F534543
      5F5245474E0100000000000E000000543032385F53484F545F4E414D45010000
      00000012000000543032365F5345435F5245474E5F4D41494E01000000000013
      000000543032385F53484F545F4E414D455F4D41494E0100000000000F000000
      543030315F4F505F545950455F49440100000000000D000000543030315F4F50
      5F434F554E540100000000000D000000543030315F4F505F43525F4944010000
      0000000E000000543030315F4F505F5041595F49440100000000000A00000052
      455349445F4E414D450100000000000B0000004E52455349445F4E414D450100
      000000000F00000052455349445F4E414D455F4D41494E010000000000100000
      004E52455349445F4E414D455F4D41494E0100000000000B000000543030315F
      4F505F53554D01000000000011000000543030315F4F505F53554D5F43524F53
      5301000000000007000000543030315F4944010000000000070000004C494E4B
      535F31010000000000070000004C494E4B535F32010000000000}
    AfterScroll = odsListAfterScroll
    Top = 232
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT010_ISIN: TStringField
      FieldName = 'T010_ISIN'
      Size = 255
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT010_ISIN_MAIN: TStringField
      FieldName = 'T010_ISIN_MAIN'
      Size = 255
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT001_OP_TYPE_ID: TFloatField
      FieldName = 'T001_OP_TYPE_ID'
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
    end
    object odsListT001_OP_CR_ID: TStringField
      FieldName = 'T001_OP_CR_ID'
      Size = 3
    end
    object odsListT001_OP_PAY_ID: TStringField
      FieldName = 'T001_OP_PAY_ID'
      Size = 255
    end
    object odsListRESID_NAME: TStringField
      FieldName = 'RESID_NAME'
      Size = 255
    end
    object odsListNRESID_NAME: TStringField
      FieldName = 'NRESID_NAME'
      Size = 255
    end
    object odsListRESID_NAME_MAIN: TStringField
      FieldName = 'RESID_NAME_MAIN'
      Size = 255
    end
    object odsListNRESID_NAME_MAIN: TStringField
      FieldName = 'NRESID_NAME_MAIN'
      Size = 255
    end
    object odsListT001_OP_SUM: TFloatField
      FieldName = 'T001_OP_SUM'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
    end
    object odsListLINKS_1: TFloatField
      FieldName = 'LINKS_1'
    end
    object odsListLINKS_2: TFloatField
      FieldName = 'LINKS_2'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 226
  end
  inherited oqAdd: TOracleQuery
    Top = 235
  end
  inherited oqUpdate: TOracleQuery
    Top = 271
  end
  inherited oqDelete: TOracleQuery
    Top = 311
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 293
  end
  inherited pmFilter: TPopupMenu
    Left = 344
    Top = 104
  end
  object oqDivider: TOracleQuery
    SQL.Strings = (
      'select SUBSTR(TO_CHAR(3/2), 2, 1) from DUAL')
    Session = dmMain.OracleSession
    Left = 440
    Top = 224
  end
  object oqLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_417_Data.p_link_op(:T174_ID, :OP_PART, :T001_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543137345F4944040000000000000000000000
      080000003A543030315F4944040000000000000000000000080000003A4F505F
      50415254040000000000000000000000}
    Left = 432
    Top = 288
  end
  object oqUnLink: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_417_DATA.p_unlink_op(:T174_ID, :OP_PART, :T001_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4F505F50415254040000000000000000000000
      080000003A543030315F4944040000000000000000000000080000003A543137
      345F4944040000000000000000000000}
    Left = 488
    Top = 288
  end
  object odsLinks: TOracleDataSet
    SQL.Strings = (
      'select T174_ID,'
      '       T176_PART'
      'from   V_405_417_LINKS'
      'where  T174_ID = :T174_ID'
      'and    T001_ID = :T001_ID')
    Variables.Data = {
      0300000002000000080000003A543030315F4944040000000000000000000000
      080000003A543137345F4944040000000000000000000000}
    Session = dmMain.OracleSession
    Left = 640
    Top = 232
  end
end

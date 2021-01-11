object C003_FictiveCriteria: TC003_FictiveCriteria
  Left = 908
  Top = 499
  BorderStyle = bsDialog
  Caption = 'Настойка критериев оценки фиктивности операций'
  ClientHeight = 374
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 215
    Width = 122
    Height = 13
    Caption = '1. Фиктивный резидент'
  end
  object Label2: TLabel
    Left = 32
    Top = 237
    Width = 134
    Height = 13
    Caption = '2. Фиктивный нерезидент'
  end
  object Label3: TLabel
    Left = 32
    Top = 288
    Width = 122
    Height = 13
    Caption = '1. Фиктивный резидент'
  end
  object Label4: TLabel
    Left = 32
    Top = 311
    Width = 261
    Height = 13
    Caption = '2. Ликвидация КО (признак "действующая КО" = 0)'
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 524
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 350
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Готово'
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 438
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Отменить'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cbInnInList: TCheckBox
    Left = 32
    Top = 32
    Width = 251
    Height = 17
    Caption = 'ИНН резидента в списке крупных компаний'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 351
    Top = 26
    Width = 75
    Height = 25
    Action = actView
    TabOrder = 2
  end
  object Button4: TButton
    Left = 439
    Top = 26
    Width = 75
    Height = 25
    Caption = 'Вставить'
    TabOrder = 3
    OnClick = Button4Click
  end
  object cbRezType: TCheckBox
    Left = 32
    Top = 56
    Width = 137
    Height = 17
    Caption = 'Тип резидента'
    TabOrder = 4
  end
  object lcbRezType: TxxxDBLookupCheckCombo
    Left = 193
    Top = 54
    Width = 145
    Height = 21
    DropDownCount = 5
    ListStyle = [lsChecked]
    LookupField = 'T033_ID'
    LookupDisplay = 'T033_SHORT_NAME'
    LookupSource = dsRezType
    TabOrder = 5
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object cbDirection: TCheckBox
    Left = 32
    Top = 82
    Width = 142
    Height = 17
    Caption = 'Направление платежа'
    TabOrder = 6
  end
  object cbSecType: TCheckBox
    Left = 32
    Top = 108
    Width = 137
    Height = 17
    Caption = 'Код типа ц.б.'
    TabOrder = 7
  end
  object lcbSecType: TxxxDBLookupCheckCombo
    Left = 193
    Top = 106
    Width = 145
    Height = 21
    DropDownCount = 16
    ListStyle = [lsChecked, lsSizeable]
    LookupField = 'T027_ID'
    LookupDisplay = 'T027_SEC_TYPE'
    LookupSource = dsSecType
    TabOrder = 8
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object cbSum: TCheckBox
    Left = 32
    Top = 134
    Width = 153
    Height = 17
    Caption = 'Сумма платежа, всего ($)'
    TabOrder = 9
  end
  object cbbSumSign: TComboBox
    Left = 193
    Top = 132
    Width = 39
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      ' <'
      ' >'
      ' =')
  end
  object edSum: TEdit
    Left = 229
    Top = 132
    Width = 108
    Height = 21
    TabOrder = 11
    Text = 'edSum'
  end
  object cbOpCode: TCheckBox
    Left = 32
    Top = 160
    Width = 153
    Height = 17
    Caption = 'Код операции'
    TabOrder = 12
  end
  object lcbOpCode: TxxxDBLookupCheckCombo
    Left = 192
    Top = 158
    Width = 145
    Height = 21
    DropDownCount = 8
    ListStyle = [lsChecked]
    LookupField = 'T011_ID'
    LookupDisplay = 'T011_TYPE_ID'
    LookupSource = dsOpCode
    TabOrder = 13
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object cbNotFictive: TCheckBox
    Left = 16
    Top = 8
    Width = 448
    Height = 17
    Caption = 'Нефиктивная (если выполняется хотя бы одно из выбранных условий)'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    State = cbChecked
    TabOrder = 14
  end
  object cbFictive: TCheckBox
    Left = 16
    Top = 191
    Width = 383
    Height = 17
    Hint = 'Фиктивная'
    Caption = 'Фиктивная (если выполняются одновременно оба условия)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object cbUnderQuestion: TCheckBox
    Left = 16
    Top = 263
    Width = 403
    Height = 17
    Hint = 'Под вопросом'
    Caption = 'Под вопросом (если выполняются одновременно оба условия)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object stCount: TStaticText
    Left = 283
    Top = 32
    Width = 54
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'stCount'
    Color = clWhite
    ParentColor = False
    TabOrder = 17
  end
  object lcbDirection: TxxxDBLookupCheckCombo
    Left = 193
    Top = 80
    Width = 145
    Height = 21
    DropDownCount = 3
    LookupField = 'T006_DIRECTION'
    LookupDisplay = 'T006_DIR_NAME'
    LookupSource = dsDirection
    TabOrder = 18
    Advanced.ShowSelectionHint = False
    Advanced.Autorefresh = False
  end
  object odsRezType: TOracleDataSet
    SQL.Strings = (
      'select T033_ID,'
      '       T033_SHORT_NAME,'
      '       T033_NAME'
      'from   V_405_REZID_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543033335F49440100000000000F000000543033
      335F53484F52545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 352
    Top = 48
  end
  object dsRezType: TDataSource
    DataSet = odsRezType
    Left = 384
    Top = 48
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'select T027_ID,'
      '       T027_SEC_TYPE'
      'from   V_405_SEC_TYPE'
      'order by'
      '       T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    Session = dmMain.OracleSession
    Left = 352
    Top = 104
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 384
    Top = 104
  end
  object odsOpCode: TOracleDataSet
    SQL.Strings = (
      'select T011_ID,'
      '       T011_TYPE_ID'
      'from   V_OPERATION_TYPE'
      'order by'
      '      T011_TYPE_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543031315F49440100000000000C000000543031
      315F545950455F4944010000000000}
    Session = dmMain.OracleSession
    Left = 352
    Top = 152
  end
  object dsOpCode: TDataSource
    DataSet = odsOpCode
    Left = 384
    Top = 152
  end
  object odsInn: TOracleDataSet
    SQL.Strings = (
      'select T226_ID,'
      '       T226_USER'
      '       T226_COMPANY_INN,'
      '       T226_COMPANY_NAME,'
      '       T226_LOAD_DATE'
      'from   V_405_FICTIVE_SETS_INN')
    Session = dmMain.OracleSession
    Left = 456
    Top = 288
  end
  object ActionList1: TActionList
    Left = 472
    Top = 144
    object actView: TAction
      Caption = 'Просмотреть'
      OnExecute = actViewExecute
      OnUpdate = actViewUpdate
    end
  end
  object dlgLoad: TOpenDialog
    Filter = 'Файлы Excel (*.xls, *.xlsx)|*.xls;*xlsx|Все файлы (*.*)|*.*'
    Title = 'Выберите файл'
    Left = 472
    Top = 56
  end
  object oqSet: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_Class_Utils.p_set_fictive('
      '    :DataSelect,'
      '    :NameCheckNotFictive,'
      '    :NameCheckInnInList,'
      '    :NameCheckRezType,'
      '    :NameRezTypes,'
      '    :NameCheckDirection,'
      '    :NameDirection,'
      '    :NameCheckSecType,'
      '    :NameSecTypes,'
      '    :NameCheckSum,'
      '    :NameSumSign,'
      '    :NameSum,'
      '    :NameCheckOpCode,'
      '    :NameOpCodes,'
      '    :NameCheckFictive,'
      '    :NameCheckUnderQuestion'
      '    );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000100000000B0000003A4441544153454C454354050000000000000000
      000000140000003A4E414D45434845434B4E4F54464943544956450500000000
      000000000000000D0000003A4E414D4552455A54595045530500000000000000
      00000000130000003A4E414D45434845434B444952454354494F4E0500000000
      000000000000000E0000003A4E414D45444952454354494F4E05000000000000
      0000000000110000003A4E414D45434845434B53454354595045050000000000
      0000000000000D0000003A4E414D455345435459504553050000000000000000
      0000000D0000003A4E414D45434845434B53554D050000000000000000000000
      0C0000003A4E414D4553554D5349474E05000000000000000000000008000000
      3A4E414D4553554D050000000000000000000000100000003A4E414D45434845
      434B4F50434F44450500000000000000000000000C0000003A4E414D454F5043
      4F444553050000000000000000000000130000003A4E414D45434845434B494E
      4E494E4C495354050000000000000000000000110000003A4E414D4543484543
      4B46494354495645050000000000000000000000170000003A4E414D45434845
      434B554E4445525155455354494F4E050000000000000000000000110000003A
      4E414D45434845434B52455A54595045050000000000000000000000}
    Left = 376
    Top = 288
  end
  object odsDirection: TOracleDataSet
    SQL.Strings = (
      'select T006_DIRECTION,'
      '       T006_DIR_NAME'
      'from   V_405_DIRECTION'
      'where  T006_DIRECTION IN (0, 1)'
      'order by T006_DIRECTION      ')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000E000000543030365F444952454354494F4E010000000000
      0D000000543030365F4449525F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 352
    Top = 76
  end
  object dsDirection: TDataSource
    DataSet = odsDirection
    Left = 384
    Top = 76
  end
  object oqInnKoErrors: TOracleQuery
    SQL.Strings = (
      'select HAS_ERRORS'
      'from   V_405_INN_KO_DATA')
    Session = dmMain.OracleSession
    Left = 304
    Top = 288
  end
end

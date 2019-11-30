inherited M002_IsuList: TM002_IsuList
  Width = 762
  Height = 595
  inherited xxxDBGrid: TxxxDBGrid
    Top = 187
    Width = 762
    Height = 408
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T185_ISSUER_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование эмитента'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T185_ISU_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование ИСУ'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T185_MASTER_COMPANY_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование УК'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_MASTER_COMPANY_LIC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Номер лицензии УК'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_MASTER_COMPANY_INN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'ИНН УК'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_ISSUER_TYPE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Тип эмитента'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_ACTUAL_BANK'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Действ. КО'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T027_SEC_TYPE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Тип ц.б.'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_SEC_REGN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Рег.№ правил ДУ'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_REG_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата регистрации'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_MASTER_CHANGE_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата изменения УК'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_ANNUAL_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата исключения'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_CURRENCY'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Код валюты'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T185_DATA_CHANGE_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата обновл. реестра'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T185_CHANGE_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата создания записи'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T185_CHANGE_USER'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Автор'
        Width = 150
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 162
    Width = 762
    inherited tlbSelect: TToolBar
      Width = 102
      ButtonHeight = 22
      ButtonWidth = 71
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actHistory
        AutoSize = True
        ImageIndex = 12
      end
    end
  end
  inherited paFilters: TPanel
    Width = 762
    Height = 141
    inherited GroupBox1: TGroupBox
      Height = 135
      object Label1: TLabel
        Left = 342
        Top = 16
        Width = 12
        Height = 13
        Caption = 'по'
      end
      object cbChangeDate: TCheckBox
        Left = 8
        Top = 16
        Width = 166
        Height = 17
        Caption = 'Дата обновления реестра c'
        TabOrder = 0
      end
      object cbLicNum: TCheckBox
        Left = 8
        Top = 38
        Width = 156
        Height = 17
        Caption = 'Номер лицензии УК'
        TabOrder = 1
      end
      object cbInn: TCheckBox
        Left = 8
        Top = 61
        Width = 156
        Height = 17
        Caption = 'ИНН УК'
        TabOrder = 2
      end
      object cbSecRegn: TCheckBox
        Left = 8
        Top = 85
        Width = 155
        Height = 17
        Caption = 'Рег.№ правил ДУ'
        TabOrder = 3
      end
      object cbShowHistory: TCheckBox
        Left = 8
        Top = 109
        Width = 139
        Height = 17
        Caption = 'Показывать историю'
        TabOrder = 4
      end
      object lcbChangeDate1: TxxxDBLookupCheckCombo
        Left = 175
        Top = 14
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'T185_DATA_CHANGE_DATE'
        LookupDisplay = 'T185_DATA_CHANGE_DATE'
        LookupSource = dsChangeDate1
        TabOrder = 5
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbLicNum: TxxxDBLookupCheckCombo
        Left = 175
        Top = 37
        Width = 331
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'T185_MASTER_COMPANY_LIC'
        LookupDisplay = 'T185_MASTER_COMPANY_LIC'
        LookupSource = dsLicNum
        TabOrder = 6
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbInn: TxxxDBLookupCheckCombo
        Left = 175
        Top = 60
        Width = 331
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'T185_MASTER_COMPANY_INN'
        LookupDisplay = 'T185_MASTER_COMPANY_INN'
        LookupSource = dsInn
        TabOrder = 7
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbSecRegn: TxxxDBLookupCheckCombo
        Left = 175
        Top = 83
        Width = 331
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'T185_SEC_REGN'
        LookupDisplay = 'T185_SEC_REGN'
        LookupSource = dsSecRegn
        TabOrder = 8
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbChangeDate2: TxxxDBLookupCheckCombo
        Left = 360
        Top = 14
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'T185_DATA_CHANGE_DATE'
        LookupDisplay = 'T185_DATA_CHANGE_DATE'
        LookupSource = dsChangeDate2
        TabOrder = 9
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 141
    Width = 762
    inherited Panel1: TPanel
      Left = 735
    end
  end
  inherited actList: TActionList
    Top = 376
    object actHistory: TAction
      Caption = 'История'
      Hint = 'Показать историю изменений'
      OnExecute = actHistoryExecute
      OnUpdate = actHistoryUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 315
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T185_ID,'
      '       T185_ISSUER_NAME,'
      '       T185_ISU_NAME,'
      '       T185_MASTER_COMPANY_NAME,'
      '       T185_MASTER_COMPANY_LIC,'
      '       T185_MASTER_COMPANY_INN,'
      '       T037_ID,'
      '       T185_ISSUER_TYPE,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T185_SEC_REGN,'
      '       T185_REG_DATE,'
      '       T185_MASTER_CHANGE_DATE,'
      '       T185_ANNUAL_DATE,'
      '       T185_CURRENCY,'
      '       T185_ACTUAL_BANK,'
      '       T185_DATA_CHANGE_DATE,'
      '       T185_CHANGE_DATE,'
      '       T185_CHANGE_USER,'
      '       T185_IS_DELETED,'
      '       T185_DATA_TYPE,'
      '       HAS_HISTORY'
      'from   V_405_ISU_DATA'
      'where  T185_DATA_TYPE IN ('#39'D'#39', :SHOW_HISTORY)')
    Variables.Data = {
      03000000010000000D0000003A53484F575F484953544F525905000000000000
      0000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001600000007000000543138355F494401000000000010000000543138
      355F4953535545525F4E414D450100000000000D000000543138355F4953555F
      4E414D4501000000000018000000543138355F4D41535445525F434F4D50414E
      595F4E414D4501000000000017000000543138355F4D41535445525F434F4D50
      414E595F4C494301000000000017000000543138355F4D41535445525F434F4D
      50414E595F494E4E01000000000007000000543033375F494401000000000010
      000000543138355F4953535545525F5459504501000000000007000000543032
      375F49440100000000000D000000543032375F5345435F545950450100000000
      000D000000543138355F5345435F5245474E0100000000000D00000054313835
      5F5245475F4441544501000000000017000000543138355F4D41535445525F43
      48414E47455F4441544501000000000010000000543138355F414E4E55414C5F
      444154450100000000000D000000543138355F43555252454E43590100000000
      0010000000543138355F41435455414C5F42414E4B0100000000001500000054
      3138355F444154415F4348414E47455F44415445010000000000100000005431
      38355F4348414E47455F4441544501000000000010000000543138355F434841
      4E47455F555345520100000000000F000000543138355F49535F44454C455445
      440100000000000E000000543138355F444154415F545950450100000000000B
      0000004841535F484953544F5259010000000000}
    Top = 313
    object odsListT185_ID: TFloatField
      FieldName = 'T185_ID'
    end
    object odsListT185_ISSUER_NAME: TStringField
      FieldName = 'T185_ISSUER_NAME'
      Size = 513
    end
    object odsListT185_ISU_NAME: TStringField
      FieldName = 'T185_ISU_NAME'
      Size = 255
    end
    object odsListT185_MASTER_COMPANY_NAME: TStringField
      FieldName = 'T185_MASTER_COMPANY_NAME'
      Size = 255
    end
    object odsListT185_MASTER_COMPANY_LIC: TStringField
      FieldName = 'T185_MASTER_COMPANY_LIC'
      Size = 255
    end
    object odsListT185_MASTER_COMPANY_INN: TStringField
      FieldName = 'T185_MASTER_COMPANY_INN'
      Size = 255
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT185_ISSUER_TYPE: TStringField
      FieldName = 'T185_ISSUER_TYPE'
      Size = 255
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Size = 255
    end
    object odsListT185_SEC_REGN: TStringField
      FieldName = 'T185_SEC_REGN'
      Size = 255
    end
    object odsListT185_REG_DATE: TDateTimeField
      FieldName = 'T185_REG_DATE'
    end
    object odsListT185_MASTER_CHANGE_DATE: TDateTimeField
      FieldName = 'T185_MASTER_CHANGE_DATE'
    end
    object odsListT185_ANNUAL_DATE: TDateTimeField
      FieldName = 'T185_ANNUAL_DATE'
    end
    object odsListT185_CURRENCY: TStringField
      FieldName = 'T185_CURRENCY'
      Size = 3
    end
    object odsListT185_ACTUAL_BANK: TIntegerField
      FieldName = 'T185_ACTUAL_BANK'
    end
    object odsListT185_DATA_CHANGE_DATE: TDateTimeField
      FieldName = 'T185_DATA_CHANGE_DATE'
    end
    object odsListT185_CHANGE_DATE: TDateTimeField
      FieldName = 'T185_CHANGE_DATE'
    end
    object odsListT185_CHANGE_USER: TStringField
      FieldName = 'T185_CHANGE_USER'
      Size = 255
    end
    object odsListT185_IS_DELETED: TFloatField
      FieldName = 'T185_IS_DELETED'
    end
    object odsListT185_DATA_TYPE: TStringField
      FieldName = 'T185_DATA_TYPE'
      Size = 1
    end
    object odsListHAS_HISTORY: TFloatField
      FieldName = 'HAS_HISTORY'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 307
  end
  inherited oqAdd: TOracleQuery
    Top = 316
  end
  inherited oqUpdate: TOracleQuery
    Top = 352
  end
  inherited oqDelete: TOracleQuery
    Top = 392
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 374
  end
  inherited pmFilter: TPopupMenu
    Top = 284
  end
  object odsChangeDate1: TOracleDataSet
    SQL.Strings = (
      'select distinct T185_DATA_CHANGE_DATE'
      'from   V_405_ISU_DATA'
      'order by T185_DATA_CHANGE_DATE DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000100000015000000543138355F444154415F4348414E47455F444154
      45010000000000}
    Session = dmMain.OracleSession
    Left = 188
    Top = 4
  end
  object dsChangeDate1: TDataSource
    DataSet = odsChangeDate1
    Left = 228
    Top = 4
  end
  object odsLicNum: TOracleDataSet
    SQL.Strings = (
      'select distinct T185_MASTER_COMPANY_LIC'
      'from   V_405_ISU_DATA'
      'order by T185_MASTER_COMPANY_LIC')
    QBEDefinition.QBEFieldDefs = {
      040000000100000017000000543138355F4D41535445525F434F4D50414E595F
      4C4943010000000000}
    Session = dmMain.OracleSession
    Left = 388
    Top = 28
  end
  object dsLicNum: TDataSource
    DataSet = odsLicNum
    Left = 420
    Top = 28
  end
  object odsInn: TOracleDataSet
    SQL.Strings = (
      'select distinct T185_MASTER_COMPANY_INN'
      'from   V_405_ISU_DATA'
      'order by T185_MASTER_COMPANY_INN')
    QBEDefinition.QBEFieldDefs = {
      040000000100000017000000543138355F4D41535445525F434F4D50414E595F
      494E4E010000000000}
    Session = dmMain.OracleSession
    Left = 324
    Top = 52
  end
  object dsInn: TDataSource
    DataSet = odsInn
    Left = 356
    Top = 52
  end
  object odsSecRegn: TOracleDataSet
    SQL.Strings = (
      'select distinct T185_SEC_REGN'
      'from   V_405_ISU_DATA'
      'order by T185_SEC_REGN')
    QBEDefinition.QBEFieldDefs = {04000000010000000D000000543138355F5345435F5245474E010000000000}
    Session = dmMain.OracleSession
    Left = 388
    Top = 76
  end
  object dsSecRegn: TDataSource
    DataSet = odsSecRegn
    Left = 420
    Top = 76
  end
  object odsChangeDate2: TOracleDataSet
    SQL.Strings = (
      'select distinct T185_DATA_CHANGE_DATE'
      'from   V_405_ISU_DATA'
      'order by T185_DATA_CHANGE_DATE DESC')
    QBEDefinition.QBEFieldDefs = {
      040000000100000015000000543138355F444154415F4348414E47455F444154
      45010000000000}
    Session = dmMain.OracleSession
    Left = 364
    Top = 4
  end
  object dsChangeDate2: TDataSource
    DataSet = odsChangeDate2
    Left = 460
    Top = 4
  end
end

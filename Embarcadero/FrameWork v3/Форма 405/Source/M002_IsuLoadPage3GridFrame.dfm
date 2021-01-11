inherited M002_IsuLoadPage3Grid: TM002_IsuLoadPage3Grid
  Width = 884
  inherited xxxDBGrid: TxxxDBGrid
    Top = 139
    Width = 884
    Height = 264
    AdvSettings.Indexes = <
      item
        FieldName = 'T186_LINE_NO'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T186_LINE_NO'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '№ строки'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T186_ISSUER_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование эмитента'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T186_ISU_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование ИСУ'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T186_MASTER_COMPANY_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Наименование УК'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_MASTER_COMPANY_LIC'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Номер лицензии УК'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_MASTER_COMPANY_INN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'ИНН УК'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_ISSUER_TYPE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Тип эмитента'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_ACTUAL_BANK'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Действ. КО'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_SEC_TYPE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Тип ц.б.'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_SEC_REGN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Рег.№ правил ДУ'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_REG_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата регистрации'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_MASTER_CHANGE_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата изменения УК'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_ANN_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата исключения'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_CURRENCY'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Код валюты'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T186_DATA_CHANGE_DATE'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата обновления'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T186_ERR_DESC'
        PickList.Strings = ()
        Title.Caption = 'Ошибки'
        Width = 150
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 114
    Width = 884
  end
  inherited paFilters: TPanel
    Width = 884
    Height = 93
    inherited GroupBox1: TGroupBox
      Height = 85
      object cbLicNum: TCheckBox
        Left = 8
        Top = 14
        Width = 126
        Height = 17
        Caption = 'Номер лицензии УК'
        TabOrder = 0
      end
      object lcbLicNum: TxxxDBLookupCheckCombo
        Left = 136
        Top = 12
        Width = 368
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'T186_MASTER_COMPANY_LIC'
        LookupDisplay = 'T186_MASTER_COMPANY_LIC'
        LookupSource = dsLicNum
        TabOrder = 1
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object lcbInn: TxxxDBLookupCheckCombo
        Left = 136
        Top = 35
        Width = 368
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'T186_MASTER_COMPANY_INN'
        LookupDisplay = 'T186_MASTER_COMPANY_INN'
        LookupSource = dsInn
        TabOrder = 2
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
      object cbInn: TCheckBox
        Left = 8
        Top = 37
        Width = 97
        Height = 17
        Caption = 'ИНН УК'
        TabOrder = 3
      end
      object cbSecRegn: TCheckBox
        Left = 8
        Top = 60
        Width = 115
        Height = 17
        Caption = 'Рег.№ правил ДУ'
        TabOrder = 4
      end
      object lcbSecRegn: TxxxDBLookupCheckCombo
        Left = 136
        Top = 58
        Width = 368
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Не выбрано'
        EmptyItemColor = clWindowText
        ListStyle = [lsChecked]
        LookupField = 'T186_SEC_REGN'
        LookupDisplay = 'T186_SEC_REGN'
        LookupSource = dsSecRegn
        TabOrder = 5
        Advanced.ShowSelectionHint = False
        Advanced.Autorefresh = False
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 93
    Width = 884
    inherited Panel1: TPanel
      Left = 857
    end
  end
  inherited actList: TActionList
    Top = 316
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited dsList: TDataSource
    Top = 255
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T186_LINE_NO,'
      '       T186_ISSUER_NAME,'
      '       T186_ISU_NAME,'
      '       T186_MASTER_COMPANY_NAME,'
      '       T186_MASTER_COMPANY_LIC,'
      '       T186_MASTER_COMPANY_INN,'
      '       T186_MASTER_COMPANY_INN_ERR,'
      '       T186_ISSUER_TYPE,'
      '       T186_SEC_TYPE,'
      '       T027_ID,'
      '       T186_SEC_TYPE_ERR,'
      '       T186_SEC_REGN,'
      '       T186_SEC_REGN_ERR,'
      '       T186_REG_DATE,'
      '       T186_REG_DATE_ERR,'
      '       T186_MASTER_CHANGE_DATE,'
      '       T186_MASTER_CHANGE_DATE_ERR,'
      '       T186_ANN_DATE,'
      '       T186_ANN_DATE_ERR,'
      '       T186_CURRENCY,'
      '       T186_CURRENCY_ERR,'
      '       T186_DATA_CHANGE_DATE,'
      '       T186_DATA_CHANGE_DATE_ERR,'
      '       T186_ACTUAL_BANK,'
      '       T186_SEC_REGN_DUPL,'
      '--       T186_LOAD_DATE,'
      '--       T186_LOAD_FILE,'
      '--       T186_LOAD_USER'
      '       T186_ERR_DESC,'
      '       T186_HAS_ERRORS'
      'from   V_405_ISU_DATA_FILE')
    QBEDefinition.QBEFieldDefs = {
      040000001B0000000C000000543138365F4C494E455F4E4F0100000000001000
      0000543138365F4953535545525F4E414D450100000000000D00000054313836
      5F4953555F4E414D4501000000000018000000543138365F4D41535445525F43
      4F4D50414E595F4E414D4501000000000017000000543138365F4D4153544552
      5F434F4D50414E595F4C494301000000000017000000543138365F4D41535445
      525F434F4D50414E595F494E4E0100000000001B000000543138365F4D415354
      45525F434F4D50414E595F494E4E5F4552520100000000001000000054313836
      5F4953535545525F545950450100000000000D000000543138365F5345435F54
      59504501000000000011000000543138365F5345435F545950455F4552520100
      000000000D000000543138365F5345435F5245474E0100000000001100000054
      3138365F5345435F5245474E5F4552520100000000000D000000543138365F52
      45475F4441544501000000000011000000543138365F5245475F444154455F45
      525201000000000017000000543138365F4D41535445525F4348414E47455F44
      4154450100000000001B000000543138365F4D41535445525F4348414E47455F
      444154455F4552520100000000000D000000543138365F414E4E5F4441544501
      000000000011000000543138365F414E4E5F444154455F455252010000000000
      0D000000543138365F43555252454E435901000000000011000000543138365F
      43555252454E43595F45525201000000000015000000543138365F444154415F
      4348414E47455F4441544501000000000010000000543138365F41435455414C
      5F42414E4B01000000000007000000543032375F494401000000000019000000
      543138365F444154415F4348414E47455F444154455F4552520100000000000D
      000000543138365F4552525F4445534301000000000012000000543138365F53
      45435F5245474E5F4455504C0100000000000F000000543138365F4841535F45
      52524F5253010000000000}
    Top = 253
    object odsListT186_LINE_NO: TFloatField
      FieldName = 'T186_LINE_NO'
    end
    object odsListT186_ISSUER_NAME: TStringField
      FieldName = 'T186_ISSUER_NAME'
      Size = 4000
    end
    object odsListT186_ISU_NAME: TStringField
      FieldName = 'T186_ISU_NAME'
      Size = 255
    end
    object odsListT186_MASTER_COMPANY_NAME: TStringField
      FieldName = 'T186_MASTER_COMPANY_NAME'
      Size = 4000
    end
    object odsListT186_MASTER_COMPANY_LIC: TStringField
      FieldName = 'T186_MASTER_COMPANY_LIC'
      Size = 255
    end
    object odsListT186_MASTER_COMPANY_INN: TStringField
      FieldName = 'T186_MASTER_COMPANY_INN'
      Size = 255
    end
    object odsListT186_MASTER_COMPANY_INN_ERR: TFloatField
      FieldName = 'T186_MASTER_COMPANY_INN_ERR'
    end
    object odsListT186_ISSUER_TYPE: TStringField
      FieldName = 'T186_ISSUER_TYPE'
      Size = 255
    end
    object odsListT186_SEC_TYPE: TStringField
      FieldName = 'T186_SEC_TYPE'
      Size = 8
    end
    object odsListT186_SEC_TYPE_ERR: TFloatField
      FieldName = 'T186_SEC_TYPE_ERR'
    end
    object odsListT186_SEC_REGN: TStringField
      FieldName = 'T186_SEC_REGN'
      Size = 255
    end
    object odsListT186_SEC_REGN_ERR: TFloatField
      FieldName = 'T186_SEC_REGN_ERR'
    end
    object odsListT186_REG_DATE: TStringField
      FieldName = 'T186_REG_DATE'
      Size = 255
    end
    object odsListT186_REG_DATE_ERR: TFloatField
      FieldName = 'T186_REG_DATE_ERR'
    end
    object odsListT186_MASTER_CHANGE_DATE: TStringField
      FieldName = 'T186_MASTER_CHANGE_DATE'
      Size = 255
    end
    object odsListT186_MASTER_CHANGE_DATE_ERR: TFloatField
      FieldName = 'T186_MASTER_CHANGE_DATE_ERR'
    end
    object odsListT186_ANN_DATE: TStringField
      FieldName = 'T186_ANN_DATE'
      Size = 255
    end
    object odsListT186_ANN_DATE_ERR: TFloatField
      FieldName = 'T186_ANN_DATE_ERR'
    end
    object odsListT186_CURRENCY: TStringField
      FieldName = 'T186_CURRENCY'
      Size = 3
    end
    object odsListT186_CURRENCY_ERR: TFloatField
      FieldName = 'T186_CURRENCY_ERR'
    end
    object odsListT186_ACTUAL_BANK: TStringField
      FieldName = 'T186_ACTUAL_BANK'
      Size = 1
    end
    object odsListT186_DATA_CHANGE_DATE: TStringField
      FieldName = 'T186_DATA_CHANGE_DATE'
      Size = 255
    end
    object odsListT186_DATA_CHANGE_DATE_ERR: TFloatField
      FieldName = 'T186_DATA_CHANGE_DATE_ERR'
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT186_ERR_DESC: TStringField
      FieldName = 'T186_ERR_DESC'
      Size = 4000
    end
    object odsListT186_SEC_REGN_DUPL: TFloatField
      FieldName = 'T186_SEC_REGN_DUPL'
    end
    object odsListT186_HAS_ERRORS: TFloatField
      FieldName = 'T186_HAS_ERRORS'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 247
  end
  inherited oqAdd: TOracleQuery
    Top = 256
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_rec PK_405_Inn_Ko_Isu.t_T186_rec;'
      'begin'
      '  v_rec.T186_LINE_NO             := :T186_LINE_NO;'
      '  v_rec.T186_ISSUER_NAME         := :T186_ISSUER_NAME;'
      '  v_rec.T186_ISU_NAME            := :T186_ISU_NAME;'
      '  v_rec.T186_MASTER_COMPANY_NAME := :T186_MASTER_COMPANY_NAME;'
      '  v_rec.T186_MASTER_COMPANY_LIC  := :T186_MASTER_COMPANY_LIC;'
      '  v_rec.T186_MASTER_COMPANY_INN  := :T186_MASTER_COMPANY_INN;'
      '  v_rec.T186_ISSUER_TYPE         := :T186_ISSUER_TYPE;'
      '  v_rec.T186_SEC_TYPE            := :T186_SEC_TYPE;'
      '  v_rec.T186_SEC_REGN            := :T186_SEC_REGN;'
      '  v_rec.T186_REG_DATE            := :T186_REG_DATE;'
      '  v_rec.T186_MASTER_CHANGE_DATE  := :T186_MASTER_CHANGE_DATE;'
      '  v_rec.T186_ANN_DATE            := :T186_ANN_DATE;'
      '  v_rec.T186_CURRENCY            := :T186_CURRENCY;'
      '  v_rec.T186_ACTUAL_BANK         := :T186_ACTUAL_BANK;'
      '  v_rec.T186_DATA_CHANGE_DATE    := :T186_DATA_CHANGE_DATE;'
      ''
      '  PK_405_Inn_Ko_Isu.p_update_isu_file_data(v_rec);'
      'end;')
    Variables.Data = {
      030000000F0000000D0000003A543138365F4C494E455F4E4F05000000000000
      00000000000E0000003A543138365F4953555F4E414D45050000000000000000
      000000190000003A543138365F4D41535445525F434F4D50414E595F4E414D45
      050000000000000000000000180000003A543138365F4D41535445525F434F4D
      50414E595F4C4943050000000000000000000000180000003A543138365F4D41
      535445525F434F4D50414E595F494E4E05000000000000000000000011000000
      3A543138365F4953535545525F545950450500000000000000000000000E0000
      003A543138365F5345435F545950450500000000000000000000000E0000003A
      543138365F5345435F5245474E0500000000000000000000000E0000003A5431
      38365F5245475F44415445050000000000000000000000180000003A54313836
      5F4D41535445525F4348414E47455F444154450500000000000000000000000E
      0000003A543138365F414E4E5F444154450500000000000000000000000E0000
      003A543138365F43555252454E4359050000000000000000000000110000003A
      543138365F41435455414C5F42414E4B05000000000000000000000016000000
      3A543138365F444154415F4348414E47455F4441544505000000000000000000
      0000110000003A543138365F4953535545525F4E414D45050000000000000000
      000000}
    Top = 292
  end
  inherited oqDelete: TOracleQuery
    Top = 332
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 314
  end
  object odsLicNum: TOracleDataSet
    SQL.Strings = (
      'select distinct T186_MASTER_COMPANY_LIC'
      'from   V_405_ISU_DATA_FILE'
      'order  by T186_MASTER_COMPANY_LIC')
    QBEDefinition.QBEFieldDefs = {
      040000000100000017000000543138365F4D41535445525F434F4D50414E595F
      4C4943010000000000}
    Session = dmMain.OracleSession
    Left = 148
    Top = 12
  end
  object dsLicNum: TDataSource
    DataSet = odsLicNum
    Left = 188
    Top = 12
  end
  object odsInn: TOracleDataSet
    SQL.Strings = (
      'select distinct T186_MASTER_COMPANY_INN'
      'from   V_405_ISU_DATA_FILE'
      'order by T186_MASTER_COMPANY_INN')
    QBEDefinition.QBEFieldDefs = {
      040000000100000017000000543138365F4D41535445525F434F4D50414E595F
      494E4E010000000000}
    Session = dmMain.OracleSession
    Left = 148
    Top = 36
  end
  object dsInn: TDataSource
    DataSet = odsInn
    Left = 188
    Top = 36
  end
  object odsSecRegn: TOracleDataSet
    SQL.Strings = (
      'select distinct T186_SEC_REGN'
      'from   V_405_ISU_DATA_FILE'
      'order by T186_SEC_REGN')
    QBEDefinition.QBEFieldDefs = {04000000010000000D000000543138365F5345435F5245474E010000000000}
    Session = dmMain.OracleSession
    Left = 148
    Top = 60
  end
  object dsSecRegn: TDataSource
    DataSet = odsSecRegn
    Left = 188
    Top = 60
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_Inn_Ko_Isu.p_save_isu_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 352
    Top = 256
  end
end

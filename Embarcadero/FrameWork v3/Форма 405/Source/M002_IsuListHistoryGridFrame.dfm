inherited M002_IsuListHistoryGrid: TM002_IsuListHistoryGrid
  Width = 723
  inherited xxxDBGrid: TxxxDBGrid
    Width = 723
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
    Width = 723
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 723
    inherited Panel1: TPanel
      Left = 696
    end
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
      '       T185_DATA_TYPE'
      'from   V_405_ISU_DATA'
      '--where  T185_DATA_TYPE = '#39'H'#39
      'where  T185_ID = :T185_ID')
    Variables.Data = {
      0300000001000000080000003A543138355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001500000007000000543138355F494401000000000010000000543138
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
      440100000000000E000000543138355F444154415F54595045010000000000}
    object odsListT185_ID: TFloatField
      FieldName = 'T185_ID'
    end
    object odsListT185_ISSUER_NAME: TStringField
      FieldName = 'T185_ISSUER_NAME'
      Size = 511
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
  end
end

inherited frm47_IssuerGroupBottom: Tfrm47_IssuerGroupBottom
  Left = 240
  Top = 298
  Caption = 'Эмитенты, входящие в группу'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_REG_NUMBER'
          PickList.Strings = ()
          Title.Caption = 'ОГРН'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_TICKER_SKRIN'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_ISBANK'
          PickList.Strings = ()
          Title.Caption = 'Признак Банк'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания'
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'T028_ID,'
      'T028_SHOT_NAME,'
      'T036_ISBANK,'
      'T036_INCLUDE,'
      'T028_INN,'
      'T025_ID,'
      'T025_SHOT_NAME,'
      'T036_TICKER_SKRIN,'
      'T036_MAIL_ADDRESS,'
      'T036_REG_NUMBER,'
      'T036_COMPANY_HEAD,'
      'T028_COUNTRY_ID,'
      'COUNTRY_NAME, T028_CODE'
      'FROM   V_405_ISSUER_GROUP_ITEM'
      'WHERE T042_ID = :T042_ID')
    Variables.Data = {
      0300000001000000080000003A543034325F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000B000000543033365F495342414E4B
      0100000000000C000000543033365F494E434C55444501000000000008000000
      543032385F494E4E01000000000007000000543032355F49440100000000000E
      000000543032355F53484F545F4E414D4501000000000011000000543033365F
      5449434B45525F534B52494E01000000000011000000543033365F4D41494C5F
      414444524553530100000000000F000000543033365F5245475F4E554D424552
      01000000000011000000543033365F434F4D50414E595F484541440100000000
      000F000000543032385F434F554E5452595F49440100000000000C000000434F
      554E5452595F4E414D4501000000000009000000543032385F434F4445010000
      000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Size = 1
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 1
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT036_TICKER_SKRIN: TStringField
      FieldName = 'T036_TICKER_SKRIN'
      Size = 30
    end
    object odsListT036_MAIL_ADDRESS: TStringField
      FieldName = 'T036_MAIL_ADDRESS'
      Size = 255
    end
    object odsListT036_REG_NUMBER: TStringField
      FieldName = 'T036_REG_NUMBER'
      Size = 255
    end
    object odsListT036_COMPANY_HEAD: TStringField
      FieldName = 'T036_COMPANY_HEAD'
      Size = 355
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
  end
end

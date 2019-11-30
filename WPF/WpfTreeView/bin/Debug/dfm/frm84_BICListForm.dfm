inherited frm84_BICList: Tfrm84_BICList
  Left = 303
  Top = 253
  Caption = 'Справочник SWIFT'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'KOD'
          PickList.Strings = ()
          Title.Caption = 'Код SWIFT'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_SWIFT'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISO_LAT3'
          PickList.Strings = ()
          Title.Caption = 'Код страны'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_GOS'
          PickList.Strings = ()
          Title.Caption = 'Наименование страны'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTYPE'
          PickList.Strings = ()
          Title.Caption = 'Код категории'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      'ID, CODE, KOD_BANK, '
      '   KOD_BRANCH, NAME_SWIFT, ISO_DIG, '
      '   ISO_LAT2, ISO_LAT3, NAME_GOS, '
      '   SUBTYPE, KOD, CO_TYPE, '
      '   CB_DATE, CE_DATE, CC_DATE'
      'FROM V_405_SW_LIST_BO')
    QBEDefinition.QBEFieldDefs = {
      040000000F00000002000000494401000000000004000000434F444501000000
      0000080000004B4F445F42414E4B0100000000000A0000004B4F445F4252414E
      43480100000000000A0000004E414D455F535749465401000000000007000000
      49534F5F4449470100000000000800000049534F5F4C41543201000000000008
      00000049534F5F4C415433010000000000080000004E414D455F474F53010000
      0000000700000053554254595045010000000000030000004B4F440100000000
      0007000000434F5F545950450100000000000700000043425F44415445010000
      0000000700000043455F444154450100000000000700000043435F4441544501
      0000000000}
    object odsListID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object odsListCODE: TFloatField
      FieldName = 'CODE'
    end
    object odsListKOD_BANK: TStringField
      FieldName = 'KOD_BANK'
      Size = 8
    end
    object odsListKOD_BRANCH: TStringField
      FieldName = 'KOD_BRANCH'
      Size = 3
    end
    object odsListNAME_SWIFT: TStringField
      FieldName = 'NAME_SWIFT'
      Size = 250
    end
    object odsListISO_DIG: TStringField
      FieldName = 'ISO_DIG'
      Size = 3
    end
    object odsListISO_LAT2: TStringField
      FieldName = 'ISO_LAT2'
      Size = 2
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListNAME_GOS: TStringField
      FieldName = 'NAME_GOS'
      Size = 250
    end
    object odsListSUBTYPE: TStringField
      FieldName = 'SUBTYPE'
      Size = 4
    end
    object odsListKOD: TStringField
      FieldName = 'KOD'
      Size = 11
    end
    object odsListCO_TYPE: TIntegerField
      FieldName = 'CO_TYPE'
    end
    object odsListCB_DATE: TDateTimeField
      FieldName = 'CB_DATE'
    end
    object odsListCE_DATE: TDateTimeField
      FieldName = 'CE_DATE'
    end
    object odsListCC_DATE: TDateTimeField
      FieldName = 'CC_DATE'
    end
  end
end

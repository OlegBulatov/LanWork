inherited A06_CountryGroupMembersList: TA06_CountryGroupMembersList
  Width = 585
  Height = 446
  inherited xxxDBGrid: TxxxDBGrid
    Width = 585
    Height = 400
    AdvSettings.Indexes = <
      item
        FieldName = 'POSITION'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'POSITION'
        PickList.Strings = ()
        Title.Caption = '№ п.п'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISO_DIG'
        PickList.Strings = ()
        Title.Caption = 'Цифровой код'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISO_LAT2'
        PickList.Strings = ()
        Title.Caption = 'Буквенный код'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CO_NAME_LONG'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 480
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 585
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 585
    inherited Panel1: TPanel
      Left = 558
    end
  end
  inherited actList: TActionList
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  ISO_DIG,'
      '  ISO_LAT2,'
      '  CO_NAME_LONG,'
      '  POSITION,'
      '  T059_ID'
      'from V_410_COUNTRY_GROUP_LINKS'
      'where T059_ID = :T059_ID'
      '')
    Variables.Data = {
      0300000001000000080000003A543035395F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000050000000700000049534F5F4449470100000000000C000000434F5F
      4E414D455F4C4F4E4701000000000008000000504F534954494F4E0100000000
      000800000049534F5F4C41543201000000000007000000543035395F49440100
      00000000}
    object odsListISO_DIG: TFloatField
      FieldName = 'ISO_DIG'
    end
    object odsListISO_LAT2: TStringField
      FieldName = 'ISO_LAT2'
      Size = 2
    end
    object odsListCO_NAME_LONG: TStringField
      FieldName = 'CO_NAME_LONG'
      Size = 250
    end
    object odsListPOSITION: TFloatField
      FieldName = 'POSITION'
    end
    object odsListT059_ID: TFloatField
      FieldName = 'T059_ID'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_Update(:T059_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543035395F4944040000000000000000000000}
  end
  object oqBeforeEdit: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupMembers_Fill(:T059_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543035395F4944040000000000000000000000}
    Left = 420
    Top = 104
  end
end

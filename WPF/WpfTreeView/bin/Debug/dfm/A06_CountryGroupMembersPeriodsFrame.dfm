inherited A06_CountryGroupMembersPeriods: TA06_CountryGroupMembersPeriods
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'DATE_START'
        PickList.Strings = ()
        Title.Caption = 'Дата начала'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_END'
        PickList.Strings = ()
        Title.Caption = 'Дата окончания'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbList: TToolBar
      ShowCaptions = False
      inherited tbUpdate: TToolButton
        Left = 35
      end
      inherited tbDelete: TToolButton
        Left = 62
      end
    end
    inherited tlbExcel: TToolBar
      Left = 431
      Enabled = False
      Visible = False
    end
    inherited tlbSeach: TToolBar
      Left = 465
      Enabled = False
      Visible = False
      inherited tbSeparator04: TToolButton
        Enabled = False
      end
      inherited tbSearch: TToolButton
        Enabled = False
      end
    end
    inherited tlbFilter: TToolBar
      Left = 350
    end
    inherited tlbSelect: TToolBar
      Left = 319
      Enabled = False
    end
  end
  inherited actList: TActionList
    inherited actAdd: TAction
      Enabled = True
      Hint = 'Добавить дату начала периода'
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Hint = 'Изменить дату начала периода'
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Hint = 'Удалить дату начала периода'
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T033_ID,'
      '       T059_ID,'
      '       DATE_START,'
      '       DATE_END'
      'from   V_410_COUNTRY_GROUP_PERIODS'
      'where  T033_ID = :T033_ID'
      'order by DATE_START')
    Variables.Data = {
      0300000001000000080000003A543033335F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033335F49440100000000000A000000444154
      455F535441525401000000000008000000444154455F454E4401000000000007
      000000543035395F4944010000000000}
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
    end
    object odsListT059_ID: TFloatField
      FieldName = 'T059_ID'
    end
    object odsListDATE_START: TDateTimeField
      FieldName = 'DATE_START'
    end
    object odsListDATE_END: TDateTimeField
      FieldName = 'DATE_END'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :T059_ID := Pk_410_HandCorrect.f_CountryGroupPeriod_Add (:T033' +
        '_ID,'
      
        '                                                           :DATE' +
        '_START);'
      'end;')
    Variables.Data = {
      0300000003000000080000003A543033335F4944040000000000000000000000
      0B0000003A444154455F53544152540C0000000000000000000000080000003A
      543035395F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupPeriod_Edit (:T059_ID,'
      '                                                :DATE_START);'
      'end;')
    Variables.Data = {
      03000000020000000B0000003A444154455F53544152540C0000000000000000
      000000080000003A543035395F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CountryGroupPeriod_Del (:T059_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543035395F4944040000000000000000000000}
  end
end

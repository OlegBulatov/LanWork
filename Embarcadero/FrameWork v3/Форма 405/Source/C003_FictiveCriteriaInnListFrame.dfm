inherited C003_FictiveCriteriaInnListGrid: TC003_FictiveCriteriaInnListGrid
  Width = 738
  Height = 597
  inherited xxxDBGrid: TxxxDBGrid
    Width = 738
    Height = 551
    AdvSettings.Indexes = <
      item
        FieldName = 'T226_COMPANY_INN'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T226_COMPANY_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T226_COMPANY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название эмитента'
        Width = 600
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 738
    inherited tlbList: TToolBar
      Width = 245
    end
    inherited tlbExcel: TToolBar
      Left = 322
    end
    inherited tlbSeach: TToolBar
      Left = 356
      Width = 71
    end
    inherited tlbFilter: TToolBar
      Left = 427
    end
    inherited tlbSelect: TToolBar
      Left = 508
      Width = 35
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 738
    inherited Panel1: TPanel
      Left = 711
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T226_ID,'
      '       T226_COMPANY_INN,'
      '       T226_COMPANY_NAME,'
      '       T226_LOAD_DATE'
      'from   V_405_FICTIVE_SETS_INN')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543232365F494401000000000009000000543232
      365F5553455201000000000010000000543232365F434F4D50414E595F494E4E
      01000000000011000000543232365F434F4D50414E595F4E414D450100000000
      000E000000543232365F4C4F41445F44415445010000000000}
    object odsListT226_ID: TFloatField
      FieldName = 'T226_ID'
    end
    object odsListT226_COMPANY_INN: TStringField
      FieldName = 'T226_COMPANY_INN'
      Size = 16
    end
    object odsListT226_COMPANY_NAME: TStringField
      FieldName = 'T226_COMPANY_NAME'
      Size = 255
    end
    object odsListT226_LOAD_DATE: TDateTimeField
      FieldName = 'T226_LOAD_DATE'
    end
  end
end

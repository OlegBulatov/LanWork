inherited A13_Regions: TA13_Regions
  Width = 924
  Height = 564
  inherited xxxDBGrid: TxxxDBGrid
    Width = 924
    Height = 539
    AdvSettings.Indexes = <
      item
        FieldName = 'KOD1'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'CODE'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'KOD1'
        PickList.Strings = ()
        Title.Caption = 'Цифровой код'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_RUS'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_RUS1'
        PickList.Strings = ()
        Title.Caption = 'Административный центр'
        Width = 150
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 924
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  CODE,'
      '  KOD1,'
      '  NAME_RUS,'
      '  NAME_RUS1'
      'FROM DS_BOP_BOSS.VS_BOP_REGIONS')
    QBEDefinition.QBEFieldDefs = {
      040000000400000004000000434F4445010000000000040000004B4F44310100
      00000000080000004E414D455F525553010000000000090000004E414D455F52
      555331010000000000}
    object odsListCODE: TFloatField
      FieldName = 'CODE'
    end
    object odsListKOD1: TFloatField
      FieldName = 'KOD1'
    end
    object odsListNAME_RUS: TStringField
      FieldName = 'NAME_RUS'
      Size = 250
    end
    object odsListNAME_RUS1: TStringField
      FieldName = 'NAME_RUS1'
      Size = 250
    end
  end
end

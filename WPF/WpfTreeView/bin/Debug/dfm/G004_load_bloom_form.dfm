inherited G004_load_bloom: TG004_load_bloom
  Width = 805
  Height = 585
  inherited xxxDBGrid: TxxxDBGrid
    Top = 27
    Width = 788
    Height = 560
    Align = alTop
    Columns = <
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ISIN'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNTRY_OF_INCORPORATION'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNCY'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMINAL'
        PickList.Strings = ()
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 788
    Height = 27
    inherited tlbNav: TToolBar
      Height = 27
    end
    inherited tlbList: TToolBar
      Height = 27
    end
    inherited tlbExcel: TToolBar
      Height = 27
    end
    inherited tlbSeach: TToolBar
      Height = 27
    end
    inherited tlbFilter: TToolBar
      Height = 27
    end
    inherited tlbSelect: TToolBar
      Height = 27
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T026_SEC_REGN,'
      '       ID_ISIN,'
      '       CNTRY_OF_INCORPORATION,'
      '       CRNCY,'
      '       T055_ID,'
      '       NOMINAL'
      'FROM V_BLOOM_ISINS_ALL')
    QBEDefinition.QBEFieldDefs = {
      04000000060000000D000000543032365F5345435F5245474E01000000000007
      00000049445F4953494E01000000000016000000434E5452595F4F465F494E43
      4F52504F524154494F4E0100000000000500000043524E435901000000000007
      000000543035355F4944010000000000070000004E4F4D494E414C0100000000
      00}
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Size = 265
    end
    object odsListID_ISIN: TStringField
      FieldName = 'ID_ISIN'
      Size = 255
    end
    object odsListCNTRY_OF_INCORPORATION: TStringField
      FieldName = 'CNTRY_OF_INCORPORATION'
      Size = 255
    end
    object odsListCRNCY: TStringField
      FieldName = 'CRNCY'
      Size = 255
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListNOMINAL: TFloatField
      FieldName = 'NOMINAL'
    end
  end
end

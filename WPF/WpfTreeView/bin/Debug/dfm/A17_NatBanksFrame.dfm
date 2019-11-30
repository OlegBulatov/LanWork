inherited A17_NatBanks: TA17_NatBanks
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'CODE'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'STATE_DIG'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATE_NM'
        PickList.Strings = ()
        Title.Caption = 'Наименование страны'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODE'
        PickList.Strings = ()
        Title.Caption = 'Код организации'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_RUS'
        PickList.Strings = ()
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_ENG'
        PickList.Strings = ()
        Title.Caption = 'Наименование (анг.)'
        Width = 360
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
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
      Width = 94
    end
    inherited tlbSelect: TToolBar
      Left = 521
      Width = 35
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select STATE_DIG,'
      '       STATE_NM,'
      '       CODE,'
      '       NAME_RUS,'
      '       NAME_ENG,'
      '       CE_DATE,'
      '       ID'
      'from   V_410_NSI_SMO_BO'
      '')
    QBEDefinition.QBEFieldDefs = {
      04000000070000000900000053544154455F4449470100000000000800000053
      544154455F4E4D01000000000004000000434F4445010000000000080000004E
      414D455F525553010000000000080000004E414D455F454E4701000000000007
      00000043455F44415445010000000000020000004944010000000000}
    object odsListSTATE_DIG: TFloatField
      FieldName = 'STATE_DIG'
    end
    object odsListSTATE_NM: TStringField
      FieldName = 'STATE_NM'
      Size = 255
    end
    object odsListCODE: TFloatField
      FieldName = 'CODE'
    end
    object odsListNAME_RUS: TStringField
      FieldName = 'NAME_RUS'
      Size = 255
    end
    object odsListNAME_ENG: TStringField
      FieldName = 'NAME_ENG'
      Size = 255
    end
    object odsListCE_DATE: TDateTimeField
      FieldName = 'CE_DATE'
    end
    object odsListID: TFloatField
      FieldName = 'ID'
    end
  end
end

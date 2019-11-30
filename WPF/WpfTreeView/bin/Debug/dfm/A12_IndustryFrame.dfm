inherited A12_Industry: TA12_Industry
  Width = 1047
  Height = 606
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1047
    Height = 581
    AdvSettings.Indexes = <
      item
        FieldName = 'T112_ID'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T112_ID'
        PickList.Strings = ()
        Title.Caption = 'Цифровой код'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T112_GROUP_LETTER'
        PickList.Strings = ()
        Title.Caption = 'Буквенный код'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T112_GROUP_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 500
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1047
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  T112_ID,'
      '  T112_GROUP_LETTER,'
      '  T112_GROUP_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_INDUSTRY')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543131325F494401000000000011000000543131
      325F47524F55505F4C45545445520100000000000F000000543131325F47524F
      55505F4E414D45010000000000}
    object odsListT112_ID: TFloatField
      FieldName = 'T112_ID'
    end
    object odsListT112_GROUP_LETTER: TStringField
      FieldName = 'T112_GROUP_LETTER'
      Size = 3
    end
    object odsListT112_GROUP_NAME: TStringField
      FieldName = 'T112_GROUP_NAME'
      Size = 255
    end
  end
end

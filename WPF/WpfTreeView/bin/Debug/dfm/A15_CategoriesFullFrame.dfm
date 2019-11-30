inherited A15_CategoriesFull: TA15_CategoriesFull
  Width = 1094
  Height = 797
  inherited xxxDBGrid: TxxxDBGrid
    Width = 1094
    Height = 772
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 3
            LastCol = 4
            Caption = 'Вкл. в расчет'
          end
          item
            FirstCol = 5
            LastCol = 7
            Caption = 'Источник'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T100_ORDER_POS'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '№'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T100_HIERARCHY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Категория'
        Width = 393
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T203_NAME'
        PickList.Strings = ()
        Title.Caption = 'Ответственный'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T100_FLAG_IN_NAME'
        PickList.Strings = ()
        Title.Caption = 'Поступило'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T100_FLAG_OUT_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Изъято'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IND_NAME'
        PickList.Strings = ()
        Title.Caption = 'Отрасль'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T100_DESC'
        PickList.Strings = ()
        Title.Caption = 'Описание'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T100_TYPE_DESC'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = -1
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 1094
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
      'SELECT'
      '  T100_ID,'
      '  T100_PARENT_ID,'
      '  T100_DISPL_NAME,'
      '  T100_TYPE,'
      '  T100_TYPE_DESC,'
      '  T100_DESC,'
      '  T203_ID,'
      '  T203_NAME,'
      '  T100_ENABLED,'
      '  T100_POSITION,'
      '  T100_IMAGE_INDEX,'
      '  T100_SELECTED_INDEX,'
      '  T100_HIERARCHY_NAME,'
      '  NODE_LEVEL,'
      '  T100_ORDER_POS,'
      '  T100_FLAG_IN,'
      '  T100_FLAG_IN_NAME,'
      '  T100_FLAG_OUT,'
      '  T100_FLAG_OUT_NAME,'
      '  T100_DEF_INDUSTRY,'
      '  IND_NAME,'
      '  T100_DEF_REGION,'
      '  REG_NAME,'
      '  T100_DEF_COUNTRY,'
      '  CNT_NAME'
      'FROM DS_BOP_BOSS.VS_BOP_CATEGORIES_FULL')
    QBEDefinition.QBEFieldDefs = {
      040000001900000007000000543130305F49440100000000000E000000543130
      305F504152454E545F49440100000000000F000000543130305F444953504C5F
      4E414D4501000000000009000000543130305F545950450100000000000E0000
      00543130305F545950455F4445534301000000000009000000543130305F4445
      534301000000000007000000543230335F494401000000000009000000543230
      335F4E414D450100000000000C000000543130305F454E41424C454401000000
      00000D000000543130305F504F534954494F4E01000000000010000000543130
      305F494D4147455F494E44455801000000000013000000543130305F53454C45
      435445445F494E44455801000000000013000000543130305F48494552415243
      48595F4E414D450100000000000A0000004E4F44455F4C4556454C0100000000
      000E000000543130305F4F524445525F504F530100000000000C000000543130
      305F464C41475F494E01000000000011000000543130305F464C41475F494E5F
      4E414D450100000000000D000000543130305F464C41475F4F55540100000000
      0012000000543130305F464C41475F4F55545F4E414D45010000000000110000
      00543130305F4445465F494E44555354525901000000000008000000494E445F
      4E414D450100000000000F000000543130305F4445465F524547494F4E010000
      000000080000005245475F4E414D4501000000000010000000543130305F4445
      465F434F554E54525901000000000008000000434E545F4E414D450100000000
      00}
    object odsListT100_ID: TFloatField
      FieldName = 'T100_ID'
    end
    object odsListT100_PARENT_ID: TFloatField
      FieldName = 'T100_PARENT_ID'
    end
    object odsListT100_DISPL_NAME: TStringField
      FieldName = 'T100_DISPL_NAME'
      Size = 128
    end
    object odsListT100_TYPE: TStringField
      FieldName = 'T100_TYPE'
      Size = 1
    end
    object odsListT100_TYPE_DESC: TStringField
      FieldName = 'T100_TYPE_DESC'
      Size = 15
    end
    object odsListT100_DESC: TStringField
      FieldName = 'T100_DESC'
      Size = 1000
    end
    object odsListT203_ID: TFloatField
      FieldName = 'T203_ID'
    end
    object odsListT203_NAME: TStringField
      FieldName = 'T203_NAME'
      Size = 255
    end
    object odsListT100_ENABLED: TStringField
      FieldName = 'T100_ENABLED'
      Size = 1
    end
    object odsListT100_POSITION: TFloatField
      FieldName = 'T100_POSITION'
    end
    object odsListT100_IMAGE_INDEX: TFloatField
      FieldName = 'T100_IMAGE_INDEX'
    end
    object odsListT100_SELECTED_INDEX: TFloatField
      FieldName = 'T100_SELECTED_INDEX'
    end
    object odsListT100_HIERARCHY_NAME: TStringField
      FieldName = 'T100_HIERARCHY_NAME'
      Size = 4000
    end
    object odsListNODE_LEVEL: TFloatField
      FieldName = 'NODE_LEVEL'
    end
    object odsListT100_ORDER_POS: TFloatField
      FieldName = 'T100_ORDER_POS'
    end
    object odsListT100_FLAG_IN: TStringField
      Alignment = taCenter
      FieldName = 'T100_FLAG_IN'
      Size = 1
    end
    object odsListT100_FLAG_IN_NAME: TStringField
      Alignment = taCenter
      FieldName = 'T100_FLAG_IN_NAME'
      Size = 1
    end
    object odsListT100_FLAG_OUT: TStringField
      Alignment = taCenter
      FieldName = 'T100_FLAG_OUT'
      Size = 1
    end
    object odsListT100_FLAG_OUT_NAME: TStringField
      Alignment = taCenter
      FieldName = 'T100_FLAG_OUT_NAME'
      Size = 1
    end
    object odsListT100_DEF_INDUSTRY: TStringField
      FieldName = 'T100_DEF_INDUSTRY'
      Size = 4
    end
    object odsListIND_NAME: TStringField
      Alignment = taCenter
      FieldName = 'IND_NAME'
      Size = 3
    end
    object odsListT100_DEF_REGION: TIntegerField
      FieldName = 'T100_DEF_REGION'
    end
    object odsListREG_NAME: TStringField
      Alignment = taCenter
      FieldName = 'REG_NAME'
      Size = 40
    end
    object odsListT100_DEF_COUNTRY: TIntegerField
      FieldName = 'T100_DEF_COUNTRY'
    end
    object odsListCNT_NAME: TStringField
      Alignment = taCenter
      FieldName = 'CNT_NAME'
      Size = 40
    end
  end
end

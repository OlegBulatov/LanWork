inherited A12_ReportsListPage2: TA12_ReportsListPage2
  inherited xxxDBGrid: TxxxDBGrid
    AdvSettings.Indexes = <
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'T037_POSITION'
        SortType = stAsc
      end
      item
        FieldName = 'T036_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NAME'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Сумма'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CHANGE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата изменения'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_DPB_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 120
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbSelect: TToolBar
      Width = 116
      ButtonHeight = 22
      ButtonWidth = 85
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actChanges
      end
    end
  end
  inherited actList: TActionList
    object actChanges: TAction
      Caption = 'Изменения'
      Hint = 'История изменений'
      ImageIndex = 11
      OnExecute = actChangesExecute
      OnUpdate = actChangesUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T055_ID,'
      '       T020_BANK_CODE,'
      '       T021_ID,'
      '       T037_ID,'
      '       T037_POSITION,'
      '       T037_STATE,'
      '       T037_PART,'
      '       T037_NAME,'
      '       T036_ID,'
      '       T036_CODE,'
      '       T021_COUNTRY,'
      '       T021_CURRENCY,'
      '       T021_SUM_OUT,'
      '       T021_MODIFIED,'
      '       T021_CHANGE_DATE,'
      '       T021_DPB_COMMENT'
      'from v_410_CHANGES_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000543035355F49440100000000000E000000543032
      305F42414E4B5F434F444501000000000007000000543032315F494401000000
      00000D000000543033375F504F534954494F4E0100000000000A000000543033
      375F535441544501000000000009000000543033375F50415254010000000000
      09000000543033365F434F44450100000000000C000000543032315F434F554E
      5452590100000000000D000000543032315F43555252454E4359010000000000
      0C000000543032315F53554D5F4F555401000000000010000000543032315F43
      48414E47455F4441544501000000000009000000543033375F4E414D45010000
      0000000D000000543032315F4D4F444946494544010000000000100000005430
      32315F4450425F434F4D4D454E5401000000000007000000543033375F494401
      000000000007000000543033365F4944010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT021_ID: TFloatField
      FieldName = 'T021_ID'
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_POSITION: TFloatField
      FieldName = 'T037_POSITION'
    end
    object odsListT037_STATE: TStringField
      FieldName = 'T037_STATE'
      Size = 1
    end
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
    end
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT037_NAME: TStringField
      FieldName = 'T037_NAME'
      Size = 320
    end
    object odsListT021_COUNTRY: TIntegerField
      FieldName = 'T021_COUNTRY'
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListT021_SUM_OUT: TFloatField
      FieldName = 'T021_SUM_OUT'
    end
    object odsListT021_MODIFIED: TFloatField
      FieldName = 'T021_MODIFIED'
    end
    object odsListT021_CHANGE_DATE: TDateTimeField
      FieldName = 'T021_CHANGE_DATE'
    end
    object odsListT021_DPB_COMMENT: TStringField
      FieldName = 'T021_DPB_COMMENT'
      Size = 255
    end
  end
end

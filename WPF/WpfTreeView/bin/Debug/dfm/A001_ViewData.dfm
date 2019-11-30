inherited fmGrid1: TfmGrid1
  Width = 942
  inherited xxxDBGrid: TxxxDBGrid
    Width = 942
    Columns = <
      item
        Expanded = False
        FieldName = 'T001_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Квартал'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T101_ID'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Страна'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T102_ID'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Валюта'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_IN'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Вход'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OPR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Операция'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OTH'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Прочие'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OUT'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Исход'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_IN_US'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Вход US'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OPR_US'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Операция US'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OTH_US'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Прочие US'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PER_US'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_OUT_US'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Исход US'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_UPDATED'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Дата изменения'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 942
    inherited tlbNav: TToolBar
      inherited tbFirst: TToolButton
        Hint = ''
        Action = nil
        Caption = '-'
      end
    end
  end
  inherited actList: TActionList
    inherited actAdd: TAction
      Visible = True
    end
    inherited actEdit: TAction
      Visible = True
    end
    inherited actDelete: TAction
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '  T001_ID,'
      '  T055_ID,'
      '  T101_ID,'
      '  T102_ID,'
      '  T001_IN,'
      '  T001_OPR,'
      '  T001_OTH,'
      '  T001_OUT,'
      '  T001_IN_US,'
      '  T001_OPR_US,'
      '  T001_OTH_US,'
      '  T001_PER_US,'
      '  T001_OUT_US,'
      '  T001_UPDATED'
      'from V_408_t001_sum')
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543030315F494401000000000007000000543035
      355F494401000000000007000000543130315F49440100000000000700000054
      3130325F494401000000000007000000543030315F494E010000000000080000
      00543030315F4F505201000000000008000000543030315F4F54480100000000
      0008000000543030315F4F55540100000000000A000000543030315F494E5F55
      530100000000000B000000543030315F4F50525F55530100000000000B000000
      543030315F4F54485F55530100000000000B000000543030315F5045525F5553
      0100000000000B000000543030315F4F55545F55530100000000000C00000054
      3030315F55504441544544010000000000}
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT101_ID: TFloatField
      FieldName = 'T101_ID'
    end
    object odsListT102_ID: TFloatField
      FieldName = 'T102_ID'
    end
    object odsListT001_IN: TFloatField
      FieldName = 'T001_IN'
    end
    object odsListT001_OPR: TFloatField
      FieldName = 'T001_OPR'
    end
    object odsListT001_OTH: TFloatField
      FieldName = 'T001_OTH'
    end
    object odsListT001_OUT: TFloatField
      FieldName = 'T001_OUT'
    end
    object odsListT001_IN_US: TFloatField
      FieldName = 'T001_IN_US'
    end
    object odsListT001_OPR_US: TFloatField
      FieldName = 'T001_OPR_US'
    end
    object odsListT001_OTH_US: TFloatField
      FieldName = 'T001_OTH_US'
    end
    object odsListT001_PER_US: TFloatField
      FieldName = 'T001_PER_US'
    end
    object odsListT001_OUT_US: TFloatField
      FieldName = 'T001_OUT_US'
    end
    object odsListT001_UPDATED: TDateTimeField
      FieldName = 'T001_UPDATED'
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 24
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      'PK_408_DO.insert_into_t001_sum('
      ':T001_ID,'
      ':T055_ID,'
      ':T101_ID,'
      ':T102_ID,'
      ':T001_IN,'
      ':T001_OPR,'
      ':T001_OTH,'
      ':T001_OUT,'
      ':T001_IN_US,'
      ':T001_OPR_US,'
      ':T001_OTH_US,'
      ':T001_PER_US,'
      ':T001_OUT_US,'
      ':T001_UPDATED);'
      'end;')
    Variables.Data = {
      030000000E000000080000003A543030315F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000080000003A543130
      315F4944040000000000000000000000080000003A543130325F494404000000
      0000000000000000080000003A543030315F494E040000000000000000000000
      090000003A543030315F4F5052040000000000000000000000090000003A5430
      30315F4F5448040000000000000000000000090000003A543030315F4F555404
      00000000000000000000000B0000003A543030315F494E5F5553040000000000
      0000000000000C0000003A543030315F4F50525F555304000000000000000000
      00000C0000003A543030315F4F54485F55530400000000000000000000000C00
      00003A543030315F5045525F55530400000000000000000000000C0000003A54
      3030315F4F55545F55530400000000000000000000000D0000003A543030315F
      555044415445440C0000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      'PK_408_DO.update_into_t001_sum('
      ':T001_ID,'
      ':T055_ID,'
      ':T101_ID,'
      ':T102_ID,'
      ':T001_IN,'
      ':T001_OPR,'
      ':T001_OTH,'
      ':T001_OUT,'
      ':T001_IN_US,'
      ':T001_OPR_US,'
      ':T001_OTH_US,'
      ':T001_PER_US,'
      ':T001_OUT_US,'
      ':T001_UPDATED);'
      'end;')
    Variables.Data = {
      030000000E000000080000003A543030315F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000080000003A543130
      315F4944040000000000000000000000080000003A543130325F494404000000
      0000000000000000080000003A543030315F494E040000000000000000000000
      090000003A543030315F4F5052040000000000000000000000090000003A5430
      30315F4F5448040000000000000000000000090000003A543030315F4F555404
      00000000000000000000000B0000003A543030315F494E5F5553040000000000
      0000000000000C0000003A543030315F4F50525F555304000000000000000000
      00000C0000003A543030315F4F54485F55530400000000000000000000000C00
      00003A543030315F5045525F55530400000000000000000000000C0000003A54
      3030315F4F55545F55530400000000000000000000000D0000003A543030315F
      555044415445440C0000000000000000000000}
    Top = 188
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'begin'
      ' PK_408_DO.delete_from_t001_sum(:T001_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Top = 244
  end
end

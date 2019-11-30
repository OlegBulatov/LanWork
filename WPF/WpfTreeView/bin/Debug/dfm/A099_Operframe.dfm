inherited A099_Oper: TA099_Oper
  inherited xxxDBGrid: TxxxDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T030_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'ко'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_ROW_NUM'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REG_FL'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_DATE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_OP_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_REM'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_CURR'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_SUM'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_SUM_USD'
        PickList.Strings = ()
        Title.Caption = 'safsdfsdf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_OP_DIR'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAY_DIR_NAME'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_BIC_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SWIFT_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_COUNTRY_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIC_SWIFT_COUNTRY'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REZ_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_NAME'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_VID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REZ_BUY_SELL'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_TYPE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_NREZ_ID'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZ_NAME'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZ_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZ_COUNTRY_NAME'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZ_COUNTRY'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_NREZ_TYPE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NREZ_TYPE_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CONTRACT_C'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T038_CONTRACT_C_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CONTRACT_T'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T039_CONTRACT_T_CODE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REM_15'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REM_16'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REM_17'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_REM'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_CHANGED'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHANGE_TYPE'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_DPB_COMMENT'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T030_PERIOD_NAME'
        PickList.Strings = ()
        Visible = True
      end>
  end
  inherited actList: TActionList
    inherited actAdd: TAction
      Visible = True
    end
    inherited actEdit: TAction
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T055_ID,'
      '  T030_BANK_CODE,'
      '  T020_ID,'
      '  T021_ID,'
      '  T021_ROW_NUM,'
      '  T021_REG_FL,'
      '  T021_OP_DATE,'
      '  T021_OP_CODE,'
      '  T036_OP_CODE,'
      '  T021_OP_REM,'
      '  T021_OP_CURR,'
      '  T021_OP_SUM,'
      '  T021_OP_SUM_USD,'
      '  T021_OP_DIR,'
      '  PAY_DIR_NAME,'
      '  T021_BIC_CODE,'
      '  T021_SWIFT_CODE,'
      '  T021_COUNTRY_CODE,'
      '  BIC_SWIFT_COUNTRY,'
      '  T021_REZ_ID,'
      '  REZ_NAME,'
      '  REZ_CODE,'
      '  REZ_VID,'
      '  T021_REZ_BUY_SELL,'
      '  REZ_TYPE,'
      '  T021_NREZ_ID,'
      '  NREZ_NAME,'
      '  NREZ_CODE,'
      '  NREZ_COUNTRY_NAME,'
      '  NREZ_CODE || '#39'   '#39' || NREZ_COUNTRY_NAME NREZ_COUNTRY,'
      '  T021_NREZ_TYPE,'
      '  T037_NREZ_TYPE_CODE,'
      '  T021_CONTRACT_C,'
      '  T038_CONTRACT_C_CODE,'
      '  T021_CONTRACT_T,'
      '  T039_CONTRACT_T_CODE,'
      '  T021_REM_15,'
      '  T021_REM_16,'
      '  T021_REM_17,'
      '  T021_REM,'
      '  IS_CHANGED,'
      '  CHANGE_TYPE,'
      '  T021_DPB_COMMENT,'
      '  T030_PERIOD_NAME'
      'from V_404_SUM_DATA'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000002C00000007000000543035355F49440100000000000E000000543033
      305F42414E4B5F434F444501000000000007000000543032305F494401000000
      000007000000543032315F49440100000000000C000000543032315F524F575F
      4E554D0100000000000B000000543032315F5245475F464C0100000000000C00
      0000543032315F4F505F444154450100000000000C000000543032315F4F505F
      434F44450100000000000C000000543033365F4F505F434F4445010000000000
      0B000000543032315F4F505F52454D0100000000000C000000543032315F4F50
      5F435552520100000000000B000000543032315F4F505F53554D010000000000
      0F000000543032315F4F505F53554D5F5553440100000000000B000000543032
      315F4F505F4449520100000000000C0000005041595F4449525F4E414D450100
      000000000D000000543032315F4249435F434F44450100000000000F00000054
      3032315F53574946545F434F444501000000000011000000543032315F434F55
      4E5452595F434F4445010000000000110000004249435F53574946545F434F55
      4E5452590100000000000B000000543032315F52455A5F494401000000000008
      00000052455A5F4E414D450100000000000800000052455A5F434F4445010000
      0000000700000052455A5F56494401000000000011000000543032315F52455A
      5F4255595F53454C4C0100000000000800000052455A5F545950450100000000
      000C000000543032315F4E52455A5F4944010000000000090000004E52455A5F
      4E414D45010000000000090000004E52455A5F434F4445010000000000110000
      004E52455A5F434F554E5452595F4E414D450100000000000C0000004E52455A
      5F434F554E5452590100000000000E000000543032315F4E52455A5F54595045
      01000000000013000000543033375F4E52455A5F545950455F434F4445010000
      0000000F000000543032315F434F4E54524143545F4301000000000014000000
      543033385F434F4E54524143545F435F434F44450100000000000F0000005430
      32315F434F4E54524143545F5401000000000014000000543033395F434F4E54
      524143545F545F434F44450100000000000B000000543032315F52454D5F3135
      0100000000000B000000543032315F52454D5F31360100000000000B00000054
      3032315F52454D5F313701000000000008000000543032315F52454D01000000
      00000A00000049535F4348414E4745440100000000000B0000004348414E4745
      5F5459504501000000000010000000543032315F4450425F434F4D4D454E5401
      000000000010000000543033305F504552494F445F4E414D45010000000000}
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT030_BANK_CODE: TStringField
      FieldName = 'T030_BANK_CODE'
      Size = 9
    end
    object odsListT020_ID: TFloatField
      FieldName = 'T020_ID'
    end
    object odsListT021_ID: TFloatField
      FieldName = 'T021_ID'
    end
    object odsListT021_ROW_NUM: TFloatField
      FieldName = 'T021_ROW_NUM'
    end
    object odsListT021_REG_FL: TStringField
      FieldName = 'T021_REG_FL'
      Size = 9
    end
    object odsListT021_OP_DATE: TDateTimeField
      FieldName = 'T021_OP_DATE'
    end
    object odsListT021_OP_CODE: TFloatField
      FieldName = 'T021_OP_CODE'
    end
    object odsListT036_OP_CODE: TFloatField
      FieldName = 'T036_OP_CODE'
    end
    object odsListT021_OP_REM: TStringField
      FieldName = 'T021_OP_REM'
      Size = 128
    end
    object odsListT021_OP_CURR: TStringField
      FieldName = 'T021_OP_CURR'
      Size = 3
    end
    object odsListT021_OP_SUM: TFloatField
      FieldName = 'T021_OP_SUM'
    end
    object odsListT021_OP_SUM_USD: TFloatField
      FieldName = 'T021_OP_SUM_USD'
    end
    object odsListT021_OP_DIR: TStringField
      FieldName = 'T021_OP_DIR'
      Size = 1
    end
    object odsListPAY_DIR_NAME: TStringField
      FieldName = 'PAY_DIR_NAME'
      Size = 10
    end
    object odsListT021_BIC_CODE: TStringField
      FieldName = 'T021_BIC_CODE'
      Size = 9
    end
    object odsListT021_SWIFT_CODE: TStringField
      FieldName = 'T021_SWIFT_CODE'
      Size = 11
    end
    object odsListT021_COUNTRY_CODE: TIntegerField
      FieldName = 'T021_COUNTRY_CODE'
    end
    object odsListBIC_SWIFT_COUNTRY: TStringField
      FieldName = 'BIC_SWIFT_COUNTRY'
      Size = 40
    end
    object odsListT021_REZ_ID: TFloatField
      FieldName = 'T021_REZ_ID'
    end
    object odsListREZ_NAME: TStringField
      FieldName = 'REZ_NAME'
      Size = 255
    end
    object odsListREZ_CODE: TStringField
      FieldName = 'REZ_CODE'
      Size = 255
    end
    object odsListREZ_VID: TStringField
      FieldName = 'REZ_VID'
      Size = 9
    end
    object odsListT021_REZ_BUY_SELL: TStringField
      FieldName = 'T021_REZ_BUY_SELL'
      Size = 1
    end
    object odsListREZ_TYPE: TStringField
      FieldName = 'REZ_TYPE'
      Size = 10
    end
    object odsListT021_NREZ_ID: TFloatField
      FieldName = 'T021_NREZ_ID'
    end
    object odsListNREZ_NAME: TStringField
      FieldName = 'NREZ_NAME'
      Size = 255
    end
    object odsListNREZ_CODE: TStringField
      FieldName = 'NREZ_CODE'
      Size = 255
    end
    object odsListNREZ_COUNTRY_NAME: TStringField
      FieldName = 'NREZ_COUNTRY_NAME'
      Size = 250
    end
    object odsListNREZ_COUNTRY: TStringField
      FieldName = 'NREZ_COUNTRY'
      Size = 508
    end
    object odsListT021_NREZ_TYPE: TFloatField
      FieldName = 'T021_NREZ_TYPE'
    end
    object odsListT037_NREZ_TYPE_CODE: TStringField
      FieldName = 'T037_NREZ_TYPE_CODE'
      Size = 1
    end
    object odsListT021_CONTRACT_C: TFloatField
      FieldName = 'T021_CONTRACT_C'
    end
    object odsListT038_CONTRACT_C_CODE: TStringField
      FieldName = 'T038_CONTRACT_C_CODE'
      Size = 2
    end
    object odsListT021_CONTRACT_T: TFloatField
      FieldName = 'T021_CONTRACT_T'
    end
    object odsListT039_CONTRACT_T_CODE: TStringField
      FieldName = 'T039_CONTRACT_T_CODE'
      Size = 1
    end
    object odsListT021_REM_15: TStringField
      FieldName = 'T021_REM_15'
      Size = 255
    end
    object odsListT021_REM_16: TStringField
      FieldName = 'T021_REM_16'
      Size = 255
    end
    object odsListT021_REM_17: TStringField
      FieldName = 'T021_REM_17'
      Size = 255
    end
    object odsListT021_REM: TStringField
      FieldName = 'T021_REM'
      Size = 255
    end
    object odsListIS_CHANGED: TStringField
      FieldName = 'IS_CHANGED'
      Size = 1
    end
    object odsListCHANGE_TYPE: TStringField
      FieldName = 'CHANGE_TYPE'
      Size = 9
    end
    object odsListT021_DPB_COMMENT: TStringField
      FieldName = 'T021_DPB_COMMENT'
      Size = 255
    end
    object odsListT030_PERIOD_NAME: TStringField
      FieldName = 'T030_PERIOD_NAME'
      Size = 255
    end
  end
end

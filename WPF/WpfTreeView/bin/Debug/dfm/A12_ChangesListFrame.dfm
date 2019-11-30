inherited A12_ChangesList: TA12_ChangesList
  Width = 918
  inherited xxxDBGrid: TxxxDBGrid
    Width = 918
    AdvSettings.Indexes = <
      item
        FieldName = 'T022_CHANGE_DATE'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 6
            LastCol = 7
            Caption = 'Операция'
          end
          item
            FirstCol = 8
            LastCol = 12
            Caption = 'Платеж'
          end
          item
            FirstCol = 14
            LastCol = 17
            Caption = 'Резидент'
          end
          item
            FirstCol = 18
            LastCol = 20
            Caption = 'Нерезидент'
          end
          item
            FirstCol = 21
            LastCol = 22
            Caption = 'Контракт'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T022_CHANGE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата изменения'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_CHANGE_SOURCE'
        PickList.Strings = ()
        Title.Caption = 'Тип изменения'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_CHANGER'
        PickList.Strings = ()
        Title.Caption = 'Пользователь'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_REG_FL'
        PickList.Strings = ()
        Title.Caption = 'Филиал'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ строки'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_OP_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_OP_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_OP_REM'
        PickList.Strings = ()
        Title.Caption = 'Назначение'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_OP_CURR'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_OP_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_OP_SUM_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма ($)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAY_DIR_NAME'
        PickList.Strings = ()
        Title.Caption = 'Направление'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIC_SWIFT_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Код банка нерезидента'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZ_VID'
        PickList.Strings = ()
        Title.Caption = 'Вид'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZ_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZ_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_NREZ_TYPE_CODE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T038_CONTRACT_C_CODE'
        PickList.Strings = ()
        Title.Caption = 'Вид'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T039_CONTRACT_T_CODE'
        PickList.Strings = ()
        Title.Caption = 'Тип'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_REM'
        PickList.Strings = ()
        Title.Caption = 'Пояснения'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T022_DPB_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Комментарии ДПБ'
        Width = 150
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 918
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T021_ID,'
      '       T022_CHANGE_DATE,'
      '       T022_CHANGE_SOURCE,'
      '       T022_CHANGER,'
      '       T020_BANK_CODE,'
      '       T022_ROW_NUM,'
      '       T022_REG_FL,'
      '       T022_OP_DATE,'
      '       T036_OP_CODE,'
      '       T022_OP_REM,'
      '       T022_OP_CURR,'
      '       T022_OP_SUM,'
      '       T022_OP_SUM_USD,'
      '       PAY_DIR_NAME,'
      '       BIC_SWIFT_COUNTRY,'
      '       REZ_NAME,'
      '       REZ_CODE,'
      '       REZ_VID,'
      '       REZ_TYPE,'
      '       NREZ_NAME,'
      '       NREZ_CODE,'
      '       T037_NREZ_TYPE_CODE,'
      '       T038_CONTRACT_C_CODE,'
      '       T039_CONTRACT_T_CODE,'
      '       T022_REM,'
      '       T022_DPB_COMMENT'
      'from   V_404_CHANGES_LIST'
      'where  T021_ID = :T021_ID'
      'order by T022_CHANGE_DATE')
    Variables.Data = {
      0300000001000000080000003A543032315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001A00000007000000543032315F494401000000000010000000543032
      325F4348414E47455F4441544501000000000012000000543032325F4348414E
      47455F534F555243450100000000000C000000543032325F4348414E47455201
      00000000000C000000543032325F524F575F4E554D0100000000001000000054
      3032325F4450425F434F4D4D454E540100000000000E000000543032305F4241
      4E4B5F434F44450100000000000B000000543032325F5245475F464C01000000
      00000C000000543032325F4F505F444154450100000000000C00000054303336
      5F4F505F434F44450100000000000B000000543032325F4F505F52454D010000
      0000000C000000543032325F4F505F435552520100000000000B000000543032
      325F4F505F53554D0100000000000F000000543032325F4F505F53554D5F5553
      440100000000000C0000005041595F4449525F4E414D45010000000000110000
      004249435F53574946545F434F554E5452590100000000000800000052455A5F
      4E414D450100000000000800000052455A5F434F444501000000000007000000
      52455A5F5649440100000000000800000052455A5F5459504501000000000009
      0000004E52455A5F4E414D45010000000000090000004E52455A5F434F444501
      000000000013000000543033375F4E52455A5F545950455F434F444501000000
      000014000000543033385F434F4E54524143545F435F434F4445010000000000
      14000000543033395F434F4E54524143545F545F434F44450100000000000800
      0000543032325F52454D010000000000}
    object odsListT021_ID: TFloatField
      FieldName = 'T021_ID'
    end
    object odsListT022_CHANGE_DATE: TDateTimeField
      FieldName = 'T022_CHANGE_DATE'
    end
    object odsListT022_CHANGE_SOURCE: TStringField
      FieldName = 'T022_CHANGE_SOURCE'
      Size = 16
    end
    object odsListT022_CHANGER: TStringField
      FieldName = 'T022_CHANGER'
      Size = 255
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT022_ROW_NUM: TFloatField
      FieldName = 'T022_ROW_NUM'
    end
    object odsListT022_REG_FL: TStringField
      FieldName = 'T022_REG_FL'
      Size = 9
    end
    object odsListT022_OP_DATE: TDateTimeField
      FieldName = 'T022_OP_DATE'
    end
    object odsListT036_OP_CODE: TFloatField
      FieldName = 'T036_OP_CODE'
    end
    object odsListT022_OP_REM: TStringField
      FieldName = 'T022_OP_REM'
      Size = 128
    end
    object odsListT022_OP_CURR: TStringField
      FieldName = 'T022_OP_CURR'
      Size = 3
    end
    object odsListT022_OP_SUM: TFloatField
      FieldName = 'T022_OP_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT022_OP_SUM_USD: TFloatField
      FieldName = 'T022_OP_SUM_USD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListPAY_DIR_NAME: TStringField
      FieldName = 'PAY_DIR_NAME'
      Size = 10
    end
    object odsListBIC_SWIFT_COUNTRY: TStringField
      FieldName = 'BIC_SWIFT_COUNTRY'
      Size = 40
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
      Size = 8
    end
    object odsListREZ_TYPE: TStringField
      FieldName = 'REZ_TYPE'
      Size = 10
    end
    object odsListNREZ_NAME: TStringField
      FieldName = 'NREZ_NAME'
      Size = 255
    end
    object odsListNREZ_CODE: TStringField
      FieldName = 'NREZ_CODE'
      Size = 255
    end
    object odsListT037_NREZ_TYPE_CODE: TStringField
      FieldName = 'T037_NREZ_TYPE_CODE'
      Size = 1
    end
    object odsListT038_CONTRACT_C_CODE: TStringField
      FieldName = 'T038_CONTRACT_C_CODE'
      Size = 2
    end
    object odsListT039_CONTRACT_T_CODE: TStringField
      FieldName = 'T039_CONTRACT_T_CODE'
      Size = 1
    end
    object odsListT022_REM: TStringField
      FieldName = 'T022_REM'
      Size = 255
    end
    object odsListT022_DPB_COMMENT: TStringField
      FieldName = 'T022_DPB_COMMENT'
      Size = 255
    end
  end
end

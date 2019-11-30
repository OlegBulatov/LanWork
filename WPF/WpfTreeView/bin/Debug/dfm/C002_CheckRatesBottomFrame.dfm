inherited C002_CheckRatesBottom: TC002_CheckRatesBottom
  Width = 714
  inherited xxxDBGrid: TxxxDBGrid
    Width = 714
    AdvSettings.Indexes = <
      item
        FieldName = 'OP_DATE'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'PAY_GROUP_ID'
        PickList.Strings = ()
        Title.Caption = 'Группа'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_CHECKED'
        PickList.Strings = ()
        Title.Caption = 'Выбор'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N9'
        PickList.Strings = ()
        Title.Caption = 'Расср. 405'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата операции'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER'
        PickList.Strings = ()
        Title.Caption = 'Эмитент'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZID'
        PickList.Strings = ()
        Title.Caption = 'Резидент'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZID'
        PickList.Strings = ()
        Title.Caption = 'Нерезидент'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_COUNT'
        PickList.Strings = ()
        Title.Caption = 'К-во ц.б. (шт.)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма (млн.$)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PRICE'
        PickList.Strings = ()
        Title.Caption = 'Цена 405 ($)'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_RATE'
        PickList.Strings = ()
        Title.Caption = 'Цена на бирже ($)'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE_DIFF'
        PickList.Strings = ()
        Title.Caption = 'Разница цен (%)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код опер.'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Width = 46
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 714
    inherited tlbSelect: TToolBar
      Width = 217
      ButtonHeight = 22
      ButtonWidth = 115
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actGroup
      end
      object ToolButton2: TToolButton
        Left = 198
        Top = 0
        Action = actUngroup
      end
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actGroup: TAction
      Caption = 'Сгруппировать'
      Hint = 'Создать группу операций рассроченного  платежа'
      ImageIndex = 22
      OnExecute = actGroupExecute
      OnUpdate = actGroupUpdate
    end
    object actUngroup: TAction
      Caption = 'Разгруппировать'
      Hint = 'Удалить группу записей рассроченноого платежа'
      ImageIndex = 23
      OnExecute = actUngroupExecute
      OnUpdate = actUngroupUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select v1.T001_ID,'
      '       v1.T027_ID,'
      '       v1.SEC_TYPE,'
      '       v1.T001_OP_ID,'
      '       v1.OP_CODE,'
      '       v1.T002_BANK_CODE,'
      '       v1.ISSUER,'
      '       v1.REZID,'
      '       v1.NREZID,'
      '       v1.OP_DATE,'
      '       v1.PAY_DIR,'
      '       v1.T001_N9,'
      '       v1.OP_COUNT,'
      '       v1.OP_SUM / 1000000 as OP_SUM,'
      '       v1.T001_PRICE,'
      '       v1.T001_RATE,'
      '       v1.PRICE_DIFF,'
      ''
      '       DECODE(v1.PAY_GROUP_ID, NULL, 1, 0) as IS_CHECKED,'
      '       v1.PAY_GROUP_ID'
      ''
      'from   V_405_IIPS_OPERATIONS v1'
      ''
      'where  v1.T055_ID >= :T055_ID_S -- 1936'
      'and    v1.T055_ID <= :T055_ID_E -- 1938'
      'and    v1.T027_ID = :T027_ID -- (3)'
      'and    v1.T001_OP_ID = :T001_OP_ID -- (1)'
      'and    v1.T002_BANK_CODE = :T002_BANK_CODE'
      'and    v1.T028_ID_MAIN = :T028_ID_MAIN'
      'and    v1.T012_ID_MAIN = :T012_ID_MAIN'
      'and    v1.T013_ID_MAIN = :T013_ID_MAIN'
      
        'and    DECODE(NVL(v1.OP_COUNT, -1), 0, v1.OLD_OP_COUNT, NVL(v1.O' +
        'P_COUNT, -1)) = NVL(:OP_COUNT, -1)')
    Variables.Data = {
      03000000090000000A0000003A543035355F49445F5304000000000000000000
      00000A0000003A543035355F49445F4504000000000000000000000008000000
      3A543032375F49440400000000000000000000000B0000003A543030315F4F50
      5F49440400000000000000000000000F0000003A543030325F42414E4B5F434F
      44450500000000000000000000000D0000003A543032385F49445F4D41494E04
      00000000000000000000000D0000003A543031325F49445F4D41494E04000000
      00000000000000000D0000003A543031335F49445F4D41494E04000000000000
      0000000000090000003A4F505F434F554E54040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001300000007000000543032375F494401000000000008000000534543
      5F545950450100000000000A000000543030315F4F505F494401000000000007
      0000004F505F434F44450100000000000E000000543030325F42414E4B5F434F
      4445010000000000060000004953535545520100000000000500000052455A49
      44010000000000060000004E52455A4944010000000000070000005041595F44
      4952010000000000080000004F505F434F554E54010000000000060000004F50
      5F53554D0100000000000A000000543030315F50524943450100000000000900
      0000543030315F524154450100000000000A00000050524943455F4449464601
      0000000000070000004F505F4441544501000000000007000000543030315F4E
      3901000000000007000000543030315F49440100000000000A00000049535F43
      4845434B45440100000000000C0000005041595F47524F55505F494401000000
      0000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListSEC_TYPE: TStringField
      FieldName = 'SEC_TYPE'
      Size = 255
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
    end
    object odsListOP_CODE: TFloatField
      FieldName = 'OP_CODE'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListISSUER: TStringField
      FieldName = 'ISSUER'
      Size = 255
    end
    object odsListREZID: TStringField
      FieldName = 'REZID'
      Size = 255
    end
    object odsListNREZID: TStringField
      FieldName = 'NREZID'
      Size = 255
    end
    object odsListPAY_DIR: TIntegerField
      FieldName = 'PAY_DIR'
    end
    object odsListOP_COUNT: TFloatField
      FieldName = 'OP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOP_SUM: TFloatField
      FieldName = 'OP_SUM'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT001_PRICE: TFloatField
      FieldName = 'T001_PRICE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT001_RATE: TFloatField
      FieldName = 'T001_RATE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListPRICE_DIFF: TFloatField
      FieldName = 'PRICE_DIFF'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOP_DATE: TDateTimeField
      FieldName = 'OP_DATE'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListIS_CHECKED: TFloatField
      FieldName = 'IS_CHECKED'
    end
    object odsListPAY_GROUP_ID: TFloatField
      FieldName = 'PAY_GROUP_ID'
    end
  end
  object oqSaveGroup: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :GROUP_ID := Pk_405_SHS_IIP.f_create_pay_group(:T001_IDS);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000090000003A47524F55505F49440400000000000000000000
      00090000003A543030315F494453040000000000000001000000000400000000
      0000}
    Left = 400
    Top = 136
  end
  object oqDeleteGroup: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_delete_pay_group(:GROUP_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000090000003A47524F55505F49440400000000000000000000
      00}
    Left = 400
    Top = 176
  end
end

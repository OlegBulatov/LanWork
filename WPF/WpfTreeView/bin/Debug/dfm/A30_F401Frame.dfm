inherited A30_F401: TA30_F401
  Width = 536
  Height = 317
  inherited xxxDBGrid: TxxxDBGrid
    Width = 536
    Height = 271
    AdvSettings.Indexes = <
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'M019_CODE'
        SortType = stAsc
      end
      item
        FieldName = 'M150_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'КО'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M019_CODE'
        PickList.Strings = ()
        Title.Caption = 'Показатель 401'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M151_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор 401'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M150_CODE'
        PickList.Strings = ()
        Title.Caption = 'Тип нерезидента'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Сумма в млн.$'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M_COUNTRY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CURRENCY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'C_COUNTRY'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T071_ID'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T072_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 536
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 536
    inherited Panel1: TPanel
      Left = 509
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT M019_CODE,'
      '       CURRENCY,'
      '       C_COUNTRY,'
      '       SUM_OUT,'
      '       M150_CODE,'
      '       M151_CODE,'
      '       T020_BANK_CODE,'
      '       M_COUNTRY,'
      '       T071_ID,'
      '       T072_ID'
      'FROM V_410_BOP_SUM_401'
      'WHERE T055_ID = :T055_ID'
      'AND   T071_ID = :T071_ID'
      'AND   T072_ID = :T072_ID'
      'AND   M_COUNTRY = :T020_M_COUNTRY'
      'AND   C_COUNTRY = :T021_C_COUNTRY'
      'AND   CURRENCY = :T021_CURRENCY'
      ''
      ' '
      ' ')
    Variables.Data = {
      0300000006000000080000003A543037315F4944040000000800000000000000
      0000144000000000080000003A543037325F4944040000000800000000000000
      00001840000000000E0000003A543032315F43555252454E4359050000000400
      000036343300000000000F0000003A543032305F4D5F434F554E545259040000
      0000000000000000000F0000003A543032315F435F434F554E54525904000000
      0000000000000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000E000000543032305F42414E4B5F434F4445010000000000
      07000000543037315F494401000000000007000000543037325F494401000000
      0000090000004D3031395F434F4445010000000000090000004D3135305F434F
      4445010000000000090000004D3135315F434F44450100000000000800000043
      555252454E435901000000000009000000435F434F554E545259010000000000
      0700000053554D5F4F5554010000000000090000004D5F434F554E5452590100
      00000000}
    object odsListM019_CODE: TStringField
      FieldName = 'M019_CODE'
      Size = 500
    end
    object odsListCURRENCY: TIntegerField
      FieldName = 'CURRENCY'
    end
    object odsListC_COUNTRY: TFloatField
      FieldName = 'C_COUNTRY'
    end
    object odsListSUM_OUT: TFloatField
      FieldName = 'SUM_OUT'
    end
    object odsListM150_CODE: TStringField
      FieldName = 'M150_CODE'
      Size = 10
    end
    object odsListM151_CODE: TStringField
      FieldName = 'M151_CODE'
      Size = 3
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListM_COUNTRY: TIntegerField
      FieldName = 'M_COUNTRY'
    end
    object odsListT071_ID: TFloatField
      FieldName = 'T071_ID'
    end
    object odsListT072_ID: TFloatField
      FieldName = 'T072_ID'
    end
  end
end

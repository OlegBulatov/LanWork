inherited F005_Opers23: TF005_Opers23
  Width = 768
  Height = 404
  inherited xxxDBGrid: TxxxDBGrid
    Top = 116
    Width = 768
    Height = 288
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 1
            LastCol = 5
            Caption = 'Главная эмиссия'
          end
          item
            FirstCol = 6
            LastCol = 12
            Caption = 'Исходная эмиссия'
          end
          item
            FirstCol = 13
            LastCol = 21
            Caption = 'Вексель'
          end
          item
            FirstCol = 22
            LastCol = 26
            Caption = 'Векселедержатель'
          end
          item
            FirstCol = 28
            LastCol = 29
            Caption = 'Отчитывающаяся организация'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IS_LINKED'
        PickList.Strings = ()
        Title.Caption = 'Распозн.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Векселедатель'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_INN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_COUNTRY_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T027_SEC_TYPE_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T026_SEC_REGN_MAIN'
        PickList.Strings = ()
        Title.Caption = 'Номер векселя'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDAT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Векселедатель'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDAT_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDAT_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDAT_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDAT_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_SEC_TYPE'
        PickList.Strings = ()
        Title.Caption = 'Тип ц.б.'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_NUM'
        PickList.Strings = ()
        Title.Caption = 'Номер векселя'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_SERIAL'
        PickList.Strings = ()
        Title.Caption = 'Серия'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_BLANK'
        PickList.Strings = ()
        Title.Caption = 'Номер бланка'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_DTSOST'
        PickList.Strings = ()
        Title.Caption = 'Дата составления'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_SROKPLAT'
        PickList.Strings = ()
        Title.Caption = 'Срок и условия платежа'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_KODVAL'
        PickList.Strings = ()
        Title.Caption = 'Валюта ном.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_SUM'
        PickList.Strings = ()
        Title.Caption = 'Сумма вал.ном'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_SUM_USD'
        PickList.Strings = ()
        Title.Caption = 'Сумма в $'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_DTBAL'
        PickList.Strings = ()
        Title.Caption = 'Дата поступления'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKS_OSNPRI'
        PickList.Strings = ()
        Title.Caption = 'Основание'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDERJ_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDERJ_CODE'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDERJ_OGRN'
        PickList.Strings = ()
        Title.Caption = 'ОГРН'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDERJ_STRAN'
        PickList.Strings = ()
        Title.Caption = 'Код страны'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_VEKSDERJ_REGION'
        PickList.Strings = ()
        Title.Caption = 'Регион'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T240_PRIM'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T243_REPORTER_SHORT_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T243_REPORTER_INN'
        PickList.Strings = ()
        Title.Caption = 'ИНН'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T055_LONG_NAME'
        PickList.Strings = ()
        Title.Caption = 'Период'
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 70
    Width = 768
    inherited tlbSelect: TToolBar
      Width = 132
      ButtonHeight = 22
      ButtonWidth = 101
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actGoToLink
        AutoSize = True
      end
    end
  end
  inherited paFilters: TPanel
    Width = 768
    Height = 70
    inherited GroupBox1: TGroupBox
      Width = 541
      Height = 65
      inline PeriodFilter: TF005_DataPeriodFilter
        Left = 12
        Top = 14
      end
      inline ReporterFilter: TF005_ReporterFilter
        Left = 12
        Top = 38
        Width = 512
        TabOrder = 1
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 351
        end
      end
    end
    inherited Button1: TButton
      Left = 560
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Top = 95
    Width = 768
    inherited Panel1: TPanel
      Left = 741
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Top = 264
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    object actGoToLink: TAction
      Caption = 'К связыванию'
      Hint = 'Переход к связыванию'
      ImageIndex = 13
      OnExecute = actGoToLinkExecute
      OnUpdate = actGoToLinkUpdate
    end
  end
  inherited dsList: TDataSource
    Top = 203
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  IS_LINKED,'
      '  T240_ID,'
      '  T243_ID,'
      '  T055_ID,'
      '  T233_ROW_NUM,'
      '  T240_VEKSDAT_NAME,'
      '  T240_VEKSDAT_CODE,'
      '  T240_VEKSDAT_OGRN,'
      '  T240_VEKSDAT_STRAN,'
      '  T240_VEKSDAT_REGION,'
      '  T027_ID,'
      '  T240_SEC_TYPE,'
      '  T240_VEKS_SERIAL,'
      '  T240_VEKS_NUM,'
      '  T240_VEKS_BLANK,'
      '  T240_VEKS_DTSOST,'
      '  T240_VEKS_KODVAL,'
      '  T240_VEKS_SROKPLAT,'
      '  T240_VEKS_SUM,'
      '  T240_VEKS_DTBAL,'
      '  T240_VEKS_OSNPRI,'
      '  T240_VEKSDERJ_NAME,'
      '  T240_VEKSDERJ_CODE,'
      '  T240_VEKSDERJ_OGRN,'
      '  T240_VEKSDERJ_STRAN,'
      '  T240_VEKSDERJ_REGION,'
      '  T240_PRIM,'
      '  T243_REPORTER_SHORT_NAME,'
      '  T243_REPORTER_INN,'
      '  T030_ID,'
      '  T028_ID,'
      '  T030_ID_MAIN,'
      '  T027_ID_MAIN,'
      '  T027_SEC_TYPE_MAIN,'
      '  T026_SEC_REGN_MAIN,'
      '  T028_SHOT_NAME_MAIN,'
      '  T028_INN_MAIN,'
      '  T028_COUNTRY_MAIN,'
      '  T055_LONG_NAME'
      'from V_405_415_DATA_23')
    QBEDefinition.QBEFieldDefs = {
      040000002700000007000000543035355F49440100000000000C000000543233
      335F524F575F4E554D01000000000007000000543033305F4944010000000000
      0C000000543033305F49445F4D41494E01000000000012000000543032375F53
      45435F545950455F4D41494E01000000000012000000543032365F5345435F52
      45474E5F4D41494E01000000000013000000543032385F53484F545F4E414D45
      5F4D41494E0100000000000D000000543032385F494E4E5F4D41494E01000000
      000011000000543032385F434F554E5452595F4D41494E010000000000090000
      0049535F4C494E4B45440100000000000E000000543035355F4C4F4E475F4E41
      4D4501000000000011000000543234305F56454B534441545F4E414D45010000
      00000011000000543234305F56454B534441545F434F44450100000000001100
      0000543234305F56454B534441545F4F47524E01000000000012000000543234
      305F56454B534441545F535452414E0100000000000D000000543234305F5345
      435F5459504501000000000010000000543234305F56454B535F53455249414C
      0100000000000D000000543234305F56454B535F4E554D0100000000000F0000
      00543234305F56454B535F424C414E4B01000000000010000000543234305F56
      454B535F4454534F535401000000000010000000543234305F56454B535F4B4F
      4456414C01000000000012000000543234305F56454B535F53524F4B504C4154
      0100000000000D000000543234305F56454B535F53554D0100000000000F0000
      00543234305F56454B535F445442414C01000000000010000000543234305F56
      454B535F4F534E50524901000000000012000000543234305F56454B53444552
      4A5F4E414D4501000000000012000000543234305F56454B534445524A5F434F
      444501000000000012000000543234305F56454B534445524A5F4F47524E0100
      0000000013000000543234305F56454B534445524A5F535452414E0100000000
      0009000000543234305F5052494D01000000000007000000543234335F494401
      000000000018000000543234335F5245504F525445525F53484F52545F4E414D
      4501000000000011000000543234335F5245504F525445525F494E4E01000000
      000013000000543234305F56454B534441545F524547494F4E01000000000014
      000000543234305F56454B534445524A5F524547494F4E010000000000070000
      00543234305F49440100000000000C000000543032375F49445F4D41494E0100
      0000000007000000543032375F494401000000000007000000543032385F4944
      010000000000}
    Top = 201
    object odsListIS_LINKED: TStringField
      FieldName = 'IS_LINKED'
      Size = 3
    end
    object odsListT240_ID: TFloatField
      FieldName = 'T240_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT233_ROW_NUM: TFloatField
      FieldName = 'T233_ROW_NUM'
    end
    object odsListT240_VEKSDAT_NAME: TStringField
      FieldName = 'T240_VEKSDAT_NAME'
      Size = 255
    end
    object odsListT240_VEKSDAT_CODE: TStringField
      FieldName = 'T240_VEKSDAT_CODE'
      Size = 255
    end
    object odsListT240_VEKSDAT_OGRN: TStringField
      FieldName = 'T240_VEKSDAT_OGRN'
      Size = 255
    end
    object odsListT240_VEKSDAT_STRAN: TStringField
      FieldName = 'T240_VEKSDAT_STRAN'
      Size = 3
    end
    object odsListT240_SEC_TYPE: TStringField
      FieldName = 'T240_SEC_TYPE'
      Size = 255
    end
    object odsListT240_VEKS_SERIAL: TStringField
      FieldName = 'T240_VEKS_SERIAL'
      Size = 255
    end
    object odsListT240_VEKS_NUM: TStringField
      FieldName = 'T240_VEKS_NUM'
      Size = 255
    end
    object odsListT240_VEKS_BLANK: TStringField
      FieldName = 'T240_VEKS_BLANK'
      Size = 255
    end
    object odsListT240_VEKS_DTSOST: TDateTimeField
      FieldName = 'T240_VEKS_DTSOST'
    end
    object odsListT240_VEKS_KODVAL: TStringField
      FieldName = 'T240_VEKS_KODVAL'
      Size = 3
    end
    object odsListT240_VEKS_SROKPLAT: TStringField
      FieldName = 'T240_VEKS_SROKPLAT'
      Size = 255
    end
    object odsListT240_VEKS_SUM: TFloatField
      FieldName = 'T240_VEKS_SUM'
    end
    object odsListT240_VEKS_DTBAL: TDateTimeField
      FieldName = 'T240_VEKS_DTBAL'
    end
    object odsListT240_VEKS_OSNPRI: TStringField
      FieldName = 'T240_VEKS_OSNPRI'
      Size = 255
    end
    object odsListT240_VEKSDERJ_NAME: TStringField
      FieldName = 'T240_VEKSDERJ_NAME'
      Size = 255
    end
    object odsListT240_VEKSDERJ_CODE: TStringField
      FieldName = 'T240_VEKSDERJ_CODE'
      Size = 255
    end
    object odsListT240_VEKSDERJ_OGRN: TStringField
      FieldName = 'T240_VEKSDERJ_OGRN'
      Size = 255
    end
    object odsListT240_VEKSDERJ_STRAN: TStringField
      FieldName = 'T240_VEKSDERJ_STRAN'
      Size = 3
    end
    object odsListT240_PRIM: TStringField
      FieldName = 'T240_PRIM'
      Size = 255
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT030_ID_MAIN: TFloatField
      FieldName = 'T030_ID_MAIN'
    end
    object odsListT027_SEC_TYPE_MAIN: TStringField
      FieldName = 'T027_SEC_TYPE_MAIN'
      Size = 255
    end
    object odsListT026_SEC_REGN_MAIN: TStringField
      FieldName = 'T026_SEC_REGN_MAIN'
      Size = 265
    end
    object odsListT028_SHOT_NAME_MAIN: TStringField
      FieldName = 'T028_SHOT_NAME_MAIN'
      Size = 255
    end
    object odsListT028_INN_MAIN: TStringField
      FieldName = 'T028_INN_MAIN'
      Size = 255
    end
    object odsListT028_COUNTRY_MAIN: TStringField
      FieldName = 'T028_COUNTRY_MAIN'
      Size = 255
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Size = 255
    end
    object odsListT243_ID: TFloatField
      FieldName = 'T243_ID'
    end
    object odsListT243_REPORTER_SHORT_NAME: TStringField
      FieldName = 'T243_REPORTER_SHORT_NAME'
      Size = 255
    end
    object odsListT243_REPORTER_INN: TStringField
      FieldName = 'T243_REPORTER_INN'
      Size = 16
    end
    object odsListT240_VEKSDAT_REGION: TStringField
      FieldName = 'T240_VEKSDAT_REGION'
      Size = 3
    end
    object odsListT240_VEKSDERJ_REGION: TStringField
      FieldName = 'T240_VEKSDERJ_REGION'
      Size = 3
    end
    object odsListT027_ID_MAIN: TFloatField
      FieldName = 'T027_ID_MAIN'
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
  end
  inherited PopupMenu: TPopupMenu
    Top = 195
  end
  inherited oqAdd: TOracleQuery
    Top = 204
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_415_Data.p_update_415_23 ('
      '   :T240_ID,'
      '   :T240_VEKSDAT_NAME,'
      '   :T240_VEKSDAT_CODE,'
      '   :T240_VEKSDAT_OGRN,'
      '   :T240_VEKSDAT_STRAN,'
      '   :T240_VEKSDAT_REGION,'
      '   :T240_SEC_TYPE,'
      '   :T240_VEKS_SERIAL,'
      '   :T240_VEKS_NUM,'
      '   :T240_VEKS_BLANK,'
      '   :T240_VEKS_KODVAL,'
      '   :T240_VEKS_SUM,'
      '   :T240_VEKS_DTSOST,'
      '   :T240_VEKS_SROKPLAT,'
      '   :T240_VEKS_DTBAL,'
      '   :T240_VEKS_OSNPRI,'
      '   :T240_VEKSDERJ_NAME,'
      '   :T240_VEKSDERJ_CODE,'
      '   :T240_VEKSDERJ_OGRN,'
      '   :T240_VEKSDERJ_STRAN,'
      '   :T240_VEKSDERJ_REGION,'
      '   :T240_PRIM,'
      '   :USER'
      '   );'
      'end;')
    Variables.Data = {
      0300000017000000080000003A543234305F4944040000000000000000000000
      120000003A543234305F56454B534441545F4E414D4505000000000000000000
      0000120000003A543234305F56454B534441545F434F44450500000000000000
      00000000120000003A543234305F56454B534441545F4F47524E050000000000
      000000000000130000003A543234305F56454B534441545F535452414E050000
      000000000000000000140000003A543234305F56454B534441545F524547494F
      4E0500000000000000000000000E0000003A543234305F5345435F5459504505
      0000000000000000000000110000003A543234305F56454B535F53455249414C
      0500000000000000000000000E0000003A543234305F56454B535F4E554D0500
      00000000000000000000100000003A543234305F56454B535F424C414E4B0500
      00000000000000000000110000003A543234305F56454B535F4B4F4456414C05
      00000000000000000000000E0000003A543234305F56454B535F53554D040000
      000000000000000000110000003A543234305F56454B535F4454534F53540C00
      00000000000000000000130000003A543234305F56454B535F53524F4B504C41
      54050000000000000000000000100000003A543234305F56454B535F44544241
      4C0C0000000000000000000000110000003A543234305F56454B535F4F534E50
      5249050000000000000000000000130000003A543234305F56454B534445524A
      5F4E414D45050000000000000000000000130000003A543234305F56454B5344
      45524A5F434F4445050000000000000000000000130000003A543234305F5645
      4B534445524A5F4F47524E050000000000000000000000140000003A54323430
      5F56454B534445524A5F535452414E050000000000000000000000150000003A
      543234305F56454B534445524A5F524547494F4E050000000000000000000000
      0A0000003A543234305F5052494D050000000000000000000000050000003A55
      534552050000000000000000000000}
    Top = 240
  end
  inherited oqDelete: TOracleQuery
    Top = 280
  end
  inherited odsFetchRecord: TOracleDataSet
    Top = 262
  end
end

inherited A12_BanksList: TA12_BanksList
  Width = 925
  Height = 565
  inherited xxxDBGrid: TxxxDBGrid
    Width = 925
    Height = 519
    AdvSettings.Indexes = <
      item
        FieldName = 'T020_BANK_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T020_BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Рег. №'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_NOT_CHANGE'
        PickList.Strings = ()
        Title.Caption = 'Незамещаемый'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_CHANGED'
        PickList.Strings = ()
        Title.Caption = 'Исправления'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_ERRORS'
        PickList.Strings = ()
        Title.Caption = 'Ошибки'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_SWIFT'
        PickList.Strings = ()
        Title.Caption = 'Код SWIFT'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_OKOPF'
        PickList.Strings = ()
        Title.Caption = 'ОКОПФ'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_KP'
        PickList.Strings = ()
        Title.Caption = 'ГУ'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_ADDR'
        PickList.Strings = ()
        Title.Caption = 'Адрес'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_OFFICER'
        PickList.Strings = ()
        Title.Caption = 'Исполнитель'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_CHIEFNAME'
        PickList.Strings = ()
        Title.Caption = 'ФИО исполнителя'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_PHONE'
        PickList.Strings = ()
        Title.Caption = 'Телефон'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_EMAIL'
        PickList.Strings = ()
        Title.Caption = 'E-mail'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T020_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Width = 925
    inherited tlbList: TToolBar
      Width = 89
      ShowCaptions = False
      inherited tbSeparator02: TToolButton
        Visible = False
      end
      inherited tbUpdate: TToolButton
        Left = 35
      end
      inherited tbDelete: TToolButton
        Left = 62
      end
    end
    inherited tlbExcel: TToolBar
      Left = 166
    end
    inherited tlbSeach: TToolBar
      Left = 200
      Width = 35
      ShowCaptions = False
    end
    inherited tlbFilter: TToolBar
      Left = 235
      Width = 35
      ShowCaptions = False
      inherited tbFilter: TToolButton
        AutoSize = True
      end
    end
    inherited tlbSelect: TToolBar
      Left = 270
      Width = 62
      ButtonWidth = 27
      Visible = True
      inherited tbSelect: TToolButton
        Caption = ''
        Enabled = False
        ImageIndex = 24
        Visible = False
      end
      object tbCheck: TToolButton
        Left = 35
        Top = 0
        Action = actCheck
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 925
    inherited Panel1: TPanel
      Left = 898
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    object actCheck: TAction
      Caption = 'Сверка с 401'
      Hint = 'Сверить повторно отчеты всех банков с данными 401ф'
      ImageIndex = 24
      OnExecute = actCheckExecute
      OnUpdate = actCheckUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T020_ID,'
      '       T020_BANK_CODE,'
      '       T020_BANK_NAME,'
      '       BANK_KP,'
      '       BANK_ADDR,'
      '       T055_ID,'
      '       T020_OFFICER,'
      '       T020_CHIEFNAME,'
      '       T020_PHONE,'
      '       T020_EMAIL,'
      '       T020_SWIFT,'
      '       T020_OKOPF,'
      '       T020_NOT_CHANGE,'
      '       T023_ERRORS,'
      '       IS_CHANGED'
      'from   V_410_REPORTS_LEFT')
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543032305F49440100000000000E000000543032
      305F42414E4B5F434F44450100000000000E000000543032305F42414E4B5F4E
      414D4501000000000007000000543035355F49440100000000000C0000005430
      32305F4F4646494345520100000000000E000000543032305F43484945464E41
      4D450100000000000A000000543032305F50484F4E450100000000000B000000
      543032335F4552524F52530100000000000700000042414E4B5F4B5001000000
      00000900000042414E4B5F414444520100000000000F000000543032305F4E4F
      545F4348414E47450100000000000A00000049535F4348414E47454401000000
      00000A000000543032305F454D41494C0100000000000A000000543032305F53
      574946540100000000000A000000543032305F4F4B4F5046010000000000}
    object odsListT020_ID: TFloatField
      FieldName = 'T020_ID'
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT020_BANK_NAME: TStringField
      FieldName = 'T020_BANK_NAME'
      Size = 45
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT020_OFFICER: TStringField
      FieldName = 'T020_OFFICER'
      Size = 64
    end
    object odsListT020_CHIEFNAME: TStringField
      FieldName = 'T020_CHIEFNAME'
      Size = 64
    end
    object odsListT020_PHONE: TStringField
      FieldName = 'T020_PHONE'
      Size = 64
    end
    object odsListT020_EMAIL: TStringField
      FieldName = 'T020_EMAIL'
      Size = 255
    end
    object odsListT020_SWIFT: TStringField
      FieldName = 'T020_SWIFT'
      Size = 255
    end
    object odsListT020_OKOPF: TStringField
      FieldName = 'T020_OKOPF'
      Size = 8
    end
    object odsListT023_ERRORS: TFloatField
      FieldName = 'T023_ERRORS'
    end
    object odsListBANK_KP: TStringField
      FieldName = 'BANK_KP'
      Size = 2
    end
    object odsListBANK_ADDR: TStringField
      FieldName = 'BANK_ADDR'
      Size = 62
    end
    object odsListT020_NOT_CHANGE: TStringField
      FieldName = 'T020_NOT_CHANGE'
      Size = 1
    end
    object odsListIS_CHANGED: TStringField
      FieldName = 'IS_CHANGED'
      Size = 8
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Handcorrect.p_BankReportEdit (:T020_ID,'
      '                                       :T020_SWIFT,'
      '                                       :T020_OKOPF,'
      '                                       :T020_OFFICER,'
      '                                       :T020_CHIEFNAME,'
      '                                       :T020_PHONE,'
      '                                       :T020_EMAIL);'
      'end;')
    Variables.Data = {
      0300000007000000080000003A543032305F4944040000000000000000000000
      0B0000003A543032305F53574946540500000000000000000000000B0000003A
      543032305F4F4B4F50460500000000000000000000000D0000003A543032305F
      4F4646494345520500000000000000000000000F0000003A543032305F434849
      45464E414D450500000000000000000000000B0000003A543032305F50484F4E
      450500000000000000000000000B0000003A543032305F454D41494C05000000
      0000000000000000}
  end
end

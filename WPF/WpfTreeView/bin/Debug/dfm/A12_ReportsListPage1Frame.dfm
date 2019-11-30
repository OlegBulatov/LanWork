inherited A12_ReportsListPage1: TA12_ReportsListPage1
  Width = 926
  inherited xxxDBGrid: TxxxDBGrid
    Width = 926
    AdvSettings.Enabled = False
    Columns = <
      item
        Expanded = False
        FieldName = 'T021_ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ стр.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_ITEM_NAME'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_SECTOR_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CO_ID'
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
        FieldName = 'IS_CHANGED'
        PickList.Strings = ()
        Title.Caption = 'Изменения'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_DPB_COMMENT'
        PickList.Strings = ()
        Title.Caption = 'Примечание'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_COUNTRY_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название страны'
        Width = 110
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 926
    inherited tlbSelect: TToolBar
      Width = 305
      ButtonHeight = 22
      ButtonWidth = 85
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Caption = ''
        Enabled = False
        ImageIndex = 0
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 42
        Top = 0
        Action = actChanges
      end
      object ToolButton2: TToolButton
        Left = 127
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 135
        Top = 0
        Action = actReload
      end
      object ToolButton4: TToolButton
        Left = 220
        Top = 0
        Action = actReload3
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 926
    inherited Panel1: TPanel
      Left = 899
    end
  end
  inherited actList: TActionList
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    object actChanges: TAction
      Caption = 'Изменения'
      Hint = 'История изменений'
      ImageIndex = 11
      OnExecute = actChangesExecute
      OnUpdate = actChangesUpdate
    end
    object actReload: TAction
      Caption = 'Форвард'
      Hint = 'Загрузить данные Forward из ф401'
      ImageIndex = 14
      OnExecute = actReloadExecute
    end
    object actReload3: TAction
      Caption = '3А3, 3П3'
      Hint = 'Загрузить данные показателя из ф401'
      ImageIndex = 14
      OnExecute = actReload3Execute
      OnUpdate = actReload3Update
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T021_ID,'
      '       T055_ID,'
      '       T020_ID,'
      '       T020_BANK_CODE,'
      '       T037_ID,'
      '       T037_CODE,'
      '       T037_PART,'
      '       T021_ROW_NUM,'
      '       T037_TYPE,'
      '       T037_STATE,'
      '       T037_ITEM_NAME,'
      '       T036_ID,'
      '       T036_SECTOR_CODE,'
      '       T021_COUNTRY,'
      '--       T021_CO_LAT3,'
      '       T021_CO_ID,'
      '       T021_CURRENCY,'
      '       T021_SUM_OUT,'
      '       DATA_TYPE,'
      '       T021_MODIFIED,'
      '       IS_CHANGED,'
      '       T021_DPB_COMMENT,'
      '       T021_COUNTRY_NAME'
      'from V_410_REPORT_RIGHT_1'
      'where T020_ID = :T020_ID')
    Variables.Data = {
      0300000001000000080000003A543032305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001600000007000000543032315F494401000000000007000000543032
      305F494401000000000009000000543033375F50415254010000000000090000
      00543033375F545950450100000000000E000000543033375F4954454D5F4E41
      4D4501000000000010000000543033365F534543544F525F434F444501000000
      00000C000000543032315F53554D5F4F55540100000000000900000044415441
      5F545950450100000000000D000000543032315F4D4F44494649454401000000
      00000A000000543033375F53544154450100000000000D000000543032315F43
      555252454E43590100000000000C000000543032315F524F575F4E554D010000
      00000007000000543033365F49440100000000000C000000543032315F434F55
      4E54525901000000000007000000543033375F49440100000000000A00000049
      535F4348414E47454401000000000007000000543035355F4944010000000000
      10000000543032315F4450425F434F4D4D454E540100000000000A0000005430
      32315F434F5F494401000000000011000000543032315F434F554E5452595F4E
      414D450100000000000E000000543032305F42414E4B5F434F44450100000000
      0009000000543033375F434F4445010000000000}
    BeforeInsert = odsListBeforeInsert
    object odsListT021_ID: TFloatField
      FieldName = 'T021_ID'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT020_ID: TFloatField
      FieldName = 'T020_ID'
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
    end
    object odsListT037_ITEM_NAME: TStringField
      FieldName = 'T037_ITEM_NAME'
      Size = 268
    end
    object odsListT036_ID: TFloatField
      FieldName = 'T036_ID'
    end
    object odsListT036_SECTOR_CODE: TStringField
      FieldName = 'T036_SECTOR_CODE'
      Size = 5
    end
    object odsListT021_COUNTRY: TFloatField
      FieldName = 'T021_COUNTRY'
    end
    object odsListT021_SUM_OUT: TFloatField
      FieldName = 'T021_SUM_OUT'
      DisplayFormat = '### ### ### ##0.000'
      EditFormat = '###########0.000'
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListDATA_TYPE: TStringField
      FieldName = 'DATA_TYPE'
      Size = 1
    end
    object odsListT021_MODIFIED: TFloatField
      FieldName = 'T021_MODIFIED'
    end
    object odsListIS_CHANGED: TStringField
      FieldName = 'IS_CHANGED'
      Size = 8
    end
    object odsListT037_TYPE: TStringField
      FieldName = 'T037_TYPE'
      Size = 1
    end
    object odsListT037_STATE: TStringField
      FieldName = 'T037_STATE'
      Size = 1
    end
    object odsListT021_ROW_NUM: TStringField
      DisplayWidth = 16
      FieldName = 'T021_ROW_NUM'
      Size = 81
    end
    object odsListT021_DPB_COMMENT: TStringField
      FieldName = 'T021_DPB_COMMENT'
      Size = 255
    end
    object odsListT021_CO_ID: TStringField
      FieldName = 'T021_CO_ID'
      Size = 4
    end
    object odsListT021_COUNTRY_NAME: TStringField
      DisplayWidth = 60
      FieldName = 'T021_COUNTRY_NAME'
      Size = 60
    end
    object odsListT020_BANK_CODE: TStringField
      FieldName = 'T020_BANK_CODE'
      Size = 9
    end
    object odsListT037_CODE: TStringField
      FieldName = 'T037_CODE'
      Size = 12
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :T021_ID := Pk_410_HandCorrect.f_ReportData_Add( :T020_ID,'
      '                                                   :T037_ID,'
      '                                                   :T036_ID,'
      
        '                                                   :T021_COUNTRY' +
        ','
      
        '                                                   :T021_CURRENC' +
        'Y,'
      
        '                                                   :T021_SUM_OUT' +
        ','
      
        '                                                   :T021_DPB_COM' +
        'MENT,'
      '                                                   :CHANGER'
      '                                                 );'
      'end;')
    Variables.Data = {
      0300000009000000080000003A543032315F4944040000000000000000000000
      080000003A543032305F4944040000000000000000000000080000003A543033
      365F49440400000000000000000000000D0000003A543032315F434F554E5452
      590400000000000000000000000E0000003A543032315F43555252454E435905
      00000000000000000000000D0000003A543032315F53554D5F4F555404000000
      0000000000000000080000003A543033375F4944040000000000000000000000
      080000003A4348414E474552050000000000000000000000110000003A543032
      315F4450425F434F4D4D454E54050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ReportData_Edit( :T021_ID,'
      '                                        :T036_ID,'
      '                                        :T021_COUNTRY,'
      '                                        :T021_CURRENCY,'
      '                                        :T021_SUM_OUT,'
      '                                        :T021_DPB_COMMENT,'
      '                                        :CHANGER'
      '                                       );'
      'end;')
    Variables.Data = {
      0300000007000000080000003A543032315F4944040000000000000000000000
      080000003A543033365F49440400000000000000000000000D0000003A543032
      315F434F554E5452590400000000000000000000000E0000003A543032315F43
      555252454E43590500000000000000000000000D0000003A543032315F53554D
      5F4F5554040000000000000000000000080000003A4348414E47455205000000
      0000000000000000110000003A543032315F4450425F434F4D4D454E54050000
      000000000000000000}
  end
  object oqMoveSum: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_ReportData_MoveSum( :T020_ID,'
      '                                           :T037_ID,'
      '                                           :T021_ID,'
      '                                           :T036_ID,'
      '                                           :T021_COUNTRY,'
      '                                           :T021_CURRENCY,'
      '                                           :T021_SUM_OUT,'
      '                                           :T021_DPB_COMMENT,'
      '                                           :CHANGER'
      '                                         );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000009000000080000003A543032305F4944040000000000000000000000
      080000003A543033375F4944040000000000000000000000080000003A543032
      315F4944040000000000000000000000080000003A543033365F494404000000
      00000000000000000D0000003A543032315F434F554E54525904000000000000
      00000000000E0000003A543032315F43555252454E4359050000000000000000
      0000000D0000003A543032315F53554D5F4F5554040000000000000000000000
      110000003A543032315F4450425F434F4D4D454E540500000000000000000000
      00080000003A4348414E474552050000000000000000000000}
    Left = 280
    Top = 256
  end
  object oqLoadForward: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_load_11111111(:T020_ID, :USER);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032305F4944040000000000000000000000
      050000003A55534552050000000000000000000000}
    Left = 280
    Top = 304
  end
  object oqLoadDate: TOracleQuery
    SQL.Strings = (
      'SELECT T020_GCI_DATE'
      'FROM   V_410_LOAD_1_DATE'
      'WHERE T020_ID = :T020_ID')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032305F4944040000000000000000000000}
    Left = 280
    Top = 352
  end
  object oqLoadPart3: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_load_401_3(:T020_ID, :USER);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032305F4944040000000000000000000000
      050000003A55534552050000000000000000000000}
    Left = 320
    Top = 304
  end
  object dlgOpen: TOpenDialog
    Filter = 'Файлы Excel (*.xls, *.xlsx)|*.xls;*xlsx|Все файлы (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Выберите файл для загрузки'
    Left = 392
    Top = 192
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'declare'
      '  vT020_ID NUMBER;'
      'begin'
      '  vT020_ID := Pk_410_Load.f_do_before_load_111(:i_SHEET);'
      '  COMMIT;'
      '  :T020_ID := vT020_ID;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A495F5348454554050000000000000000000000
      080000003A543032305F4944040000000000000000000000}
    Left = 432
    Top = 192
  end
  object oqLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_load_111 ('
      '    :i_T020_ID,'
      '    :i_LINE_NO,'
      '    :i_ITEM,'
      '    :i_SECTOR,'
      '    :i_COUNTRY,'
      '    :i_CURRENCY,'
      '    :i_SUM,'
      '    :i_SOURCE,'
      '    :i_USER'
      '    );'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000090000000A0000003A495F4C494E455F4E4F04000000000000000000
      0000070000003A495F4954454D050000000000000000000000090000003A495F
      534543544F520500000000000000000000000A0000003A495F434F554E545259
      0500000000000000000000000B0000003A495F43555252454E43590500000000
      00000000000000060000003A495F53554D040000000000000000000000090000
      003A495F534F55524345050000000000000000000000070000003A495F555345
      520500000000000000000000000A0000003A495F543032305F49440400000000
      00000000000000}
    Left = 464
    Top = 192
  end
  object oqAfterLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_do_after_load_111(:T020_ID);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032305F4944040000000000000000000000}
    Left = 496
    Top = 192
  end
end

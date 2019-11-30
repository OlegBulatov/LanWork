inherited frm101_2_LoadFile: Tfrm101_2_LoadFile
  Left = 73
  Top = 257
  Width = 1036
  Height = 686
  Caption = 'Данные в файле'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1025
    Height = 601
  end
  object Label9: TLabel [1]
    Left = 12
    Top = 20
    Width = 33
    Height = 13
    Hint = 'Всего компаний'
    Caption = 'Всего:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object DBText9: TDBText [2]
    Left = 45
    Top = 20
    Width = 46
    Height = 17
    DataField = 'ALL_COUNT'
    DataSource = dsTotal
    ParentShowHint = False
    ShowHint = True
  end
  inherited paRight: TPanel
    Left = 1028
    Height = 601
  end
  inherited paMain: TPanel
    Width = 1025
    Height = 601
    inherited ToolBar2: TToolBar
      Top = 108
      Width = 1025
      inherited ToolButton18: TToolButton
        Hint = 'Перезагрузить файл (Ctrl+L)'
        Action = nil
        Caption = 'Перезагрузить'
        ImageIndex = 12
        MenuItem = N3
        OnClick = nil
      end
      inherited ToolButton19: TToolButton
        Left = 189
      end
      inherited ToolButton4: TToolButton
        Left = 263
      end
      inherited ToolBar1: TToolBar
        Left = 271
      end
      inherited sp02: TToolButton
        Left = 340
      end
      inherited tbSimFilter: TToolButton
        Left = 348
      end
      inherited tbSep01: TToolButton
        Left = 432
      end
      inherited tlbSearch: TToolBar
        Left = 440
      end
      inherited ToolButton13: TToolButton
        Left = 500
      end
      inherited tbExcel: TToolButton
        Left = 508
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 131
      Width = 1025
      Height = 425
      AdvSettings.Indexes = <
        item
          FieldName = 'T111_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 7
              Caption = 'Регион'
            end
            item
              FirstCol = 8
              LastCol = 12
              Caption = 'Отрасль'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T111_FIRM_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T111_FIRM_INN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ИНН'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_MAIN_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Найдено в реестре'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_NL_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Не связ.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_REG_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Требутся замена'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_REGION_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код в реестре'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_REGION_CODE'
          PickList.Strings = ()
          Title.Caption = 'Поиск кода в спр-ке Регионов'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_REGION'
          PickList.Strings = ()
          Title.Caption = 'Регион СПАРК'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_IND_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Требутся замена'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код в реестре'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код СПАРК'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Поиск отрасли в спр-ке ОКВЭД'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Отрасль (СПАРК)'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_SPARK_ID'
          PickList.Strings = ()
          Title.Caption = 'Код СПАРК'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_FULL_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OPF'
          PickList.Strings = ()
          Title.Caption = 'ОПФ'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OWN_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Форма собств.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_REG_NUMBER'
          PickList.Strings = ()
          Title.Caption = 'ОГРН'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKPO'
          PickList.Strings = ()
          Title.Caption = 'ОКПО'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKATO'
          PickList.Strings = ()
          Title.Caption = 'ОКАТО'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKFS'
          PickList.Strings = ()
          Title.Caption = 'ОКФС'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_KPP'
          PickList.Strings = ()
          Title.Caption = 'КПП'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKOGU'
          PickList.Strings = ()
          Title.Caption = 'ОКОГУ'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OKTMO'
          PickList.Strings = ()
          Title.Caption = 'ОКТМО'
          Width = 50
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'T111_DO_LOAD'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Записать'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_CHANGED'
          PickList.Strings = ()
          Title.Caption = 'Признак изменения региона или отрасли'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_COMPANY_HEAD'
          PickList.Strings = ()
          Title.Caption = 'Руководитель'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_HEAD_POS'
          PickList.Strings = ()
          Title.Caption = 'Руководитель - должность'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_HEAD_INN'
          PickList.Strings = ()
          Title.Caption = 'Руководитель - ИНН'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_TICKER_SKRIN'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_U_ADRESS'
          PickList.Strings = ()
          Title.Caption = 'Юр. адрес'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_F_ADRESS'
          PickList.Strings = ()
          Title.Caption = 'Факт. адрес'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_TELEPHONE'
          PickList.Strings = ()
          Title.Caption = 'Телефон'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_FAX'
          PickList.Strings = ()
          Title.Caption = 'Факс'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_WEB'
          PickList.Strings = ()
          Title.Caption = 'Веб сайт'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_EMAIL_ADRESS'
          PickList.Strings = ()
          Title.Caption = 'E-mail'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_CO_OWNERS'
          PickList.Strings = ()
          Title.Caption = 'Совладельцы'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_COMPANY_SIZE'
          PickList.Strings = ()
          Title.Caption = 'Размер компании'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_STATE'
          PickList.Strings = ()
          Title.Caption = 'Cостояние'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_SHARE_CAPITAL'
          PickList.Strings = ()
          Title.Caption = 'Уставный капитал, руб'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_COMPANY_AGE'
          PickList.Strings = ()
          Title.Caption = 'Возраст компании'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_DATE_START'
          PickList.Strings = ()
          Title.Caption = 'Дата регистрации'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_DATE_END'
          PickList.Strings = ()
          Title.Caption = 'Дата ликвидации'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_INN_OLD'
          PickList.Strings = ()
          Title.Caption = 'Ранее использ. ИНН'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_OGRN_OLD'
          PickList.Strings = ()
          Title.Caption = 'Ранее использ. ОГРН'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_FIRM_STATE'
          PickList.Strings = ()
          Title.Caption = 'Статус компании'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_REGION_IS_FOUND'
          PickList.Strings = ()
          Title.Caption = 'Регион найден'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_INDUSTRY_IS_FOUND'
          PickList.Strings = ()
          Title.Caption = 'Отрасль найдена'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_COMMENT_2'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Важная инф.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T111_IS_INN_DOUBLE'
          PickList.Strings = ()
          Title.Caption = 'Код задвоения'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T111_IS_INN_DOUBLE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Задвоение ИНН'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 66
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 87
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 556
      Width = 1025
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label1: TLabel
        Left = 12
        Top = 7
        Width = 33
        Height = 13
        Hint = 'Всего компаний'
        Caption = 'Всего:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label2: TLabel
        Left = 131
        Top = 7
        Width = 37
        Height = 13
        Caption = 'Новые:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 267
        Top = 7
        Width = 112
        Height = 13
        Caption = 'Не найдено регионов:'
        ParentShowHint = False
        ShowHint = True
      end
      object Label4: TLabel
        Left = 131
        Top = 23
        Width = 81
        Height = 13
        Caption = 'Существующие:'
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 598
        Top = 7
        Width = 87
        Height = 13
        Caption = 'Двойников ИНН:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 45
        Top = 7
        Width = 46
        Height = 17
        DataField = 'ALL_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 215
        Top = 7
        Width = 46
        Height = 17
        DataField = 'NEW_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText3: TDBText
        Left = 215
        Top = 23
        Width = 46
        Height = 17
        DataField = 'OLD_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 381
        Top = 7
        Width = 46
        Height = 17
        DataField = 'REG_NOT_FOUND_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText5: TDBText
        Left = 685
        Top = 7
        Width = 46
        Height = 17
        DataField = 'INN_DOUBLE_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 434
        Top = 7
        Width = 112
        Height = 13
        Caption = 'Не найдено отраслей:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText6: TDBText
        Left = 546
        Top = 7
        Width = 46
        Height = 17
        DataField = 'IND_NOT_FOUND_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label7: TLabel
        Left = 267
        Top = 23
        Width = 91
        Height = 13
        Caption = 'Заменить регион:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText7: TDBText
        Left = 382
        Top = 23
        Width = 46
        Height = 17
        DataField = 'T111_REG_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TLabel
        Left = 434
        Top = 23
        Width = 97
        Height = 13
        Caption = 'Заменить отрасль:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText8: TDBText
        Left = 546
        Top = 23
        Width = 46
        Height = 17
        DataField = 'T111_IND_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 598
        Top = 23
        Width = 79
        Height = 13
        Hint = 'Всего компаний'
        Caption = 'Пустые строки:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText10: TDBText
        Left = 685
        Top = 23
        Width = 46
        Height = 17
        DataField = 'EMPTY_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1025
      Height = 66
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object CbEmitents: TCheckBox
        Tag = 800
        Left = 7
        Top = 10
        Width = 80
        Height = 17
        Caption = 'Эмитенты'
        TabOrder = 0
      end
      object CmbEmitents: TComboBox
        Tag = 801
        Left = 81
        Top = 8
        Width = 162
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          'Новые'
          'Существующие'
          'Двойников ИНН'
          'Пустые строки')
      end
      object CbRegion: TCheckBox
        Tag = 900
        Left = 253
        Top = 10
        Width = 80
        Height = 17
        Caption = 'Регион'
        TabOrder = 1
      end
      object Button1: TButton
        Left = 487
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Обновить'
        TabOrder = 3
        OnClick = Button1Click
      end
      object CmbRegion: TComboBox
        Tag = 901
        Left = 321
        Top = 8
        Width = 162
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'Регион СПАРК не идентифицируется'
          'Требуется замена'
          'Замена не требуется ')
      end
      object CbIndustries: TCheckBox
        Tag = 900
        Left = 253
        Top = 36
        Width = 80
        Height = 17
        Caption = 'Отрасли'
        TabOrder = 5
      end
      object CmbIndustries: TComboBox
        Tag = 901
        Left = 321
        Top = 34
        Width = 162
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          'Отрасль СПАРК  не идентифицируется'
          'Требуется замена'
          'Замена не требуется ')
      end
      object cbInn: TCheckBox
        Tag = 800
        Left = 7
        Top = 36
        Width = 80
        Height = 17
        Caption = 'ПИФ'
        TabOrder = 7
      end
      object cmbInn: TComboBox
        Tag = 801
        Left = 81
        Top = 34
        Width = 162
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
        Items.Strings = (
          'ПИФ')
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 633
    Width = 1028
  end
  inherited pnlButtons: TPanel
    Top = 601
    Width = 1028
    Height = 32
    inherited OKBtn: TButton
      Left = 1006
      Hint = 'Загрузить отмеченные записи'
      Caption = 'Загрузить'
    end
    inherited CancelBtn: TButton
      Left = 1086
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Caption = 'Пересчитать'
      Hint = 'Пересчитать период'
    end
  end
  inherited PopupMenu: TPopupMenu
    inherited N3: TMenuItem
      Action = nil
      Caption = 'Перезагрузить'
      Hint = 'Перезагрузить файл (Ctrl+L)'
      ImageIndex = 12
      ShortCut = 16460
      OnClick = nil
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '  T111_ID,'
      '  T111_FIRM_NAME,'
      '  T111_FULL_NAME,'
      '  T111_INDUSTRY,'
      '  T111_FIRM_INN,'
      '  T111_FIRM_STATE,'
      '  T028_ID,'
      '  T111_INDUSTRY_CODE,'
      '  T028_INDUSTRY_CODE,'
      '  T111_CHANGED,'
      '  T111_REGION,'
      '  T111_REGION_CODE,'
      '  T028_REGION_CODE,'
      '  T111_TICKER_SKRIN,'
      '  T111_INF_TYPE,'
      '  T111_REG_NUMBER,'
      '  T037_ID,'
      '  T111_COMPANY_HEAD,'
      '  T111_EMAIL_ADRESS, '
      '  T111_U_ADRESS,'
      '  T111_F_ADRESS,'
      '  T111_TELEPHONE, '
      '  T111_FAX,'
      '  T111_WEB,'
      '  T111_MAIN_COUNT, '
      '  T111_NL_COUNT,'
      '  T111_REG_COUNT,'
      '  T111_IND_COUNT,'
      '  T111_IS_INN_DOUBLE,'
      '  T111_IS_INN_DOUBLE_DESC,'
      '  T111_INDUSTRY_IS_FOUND,'
      '  T111_REGION_IS_FOUND,'
      '  T111_KPP,'
      '  T111_OKFS,'
      '  T111_OKOGU,'
      '  T111_COMMENT,'
      '  T111_SPARK_ID,'
      '  T111_OKATO,'
      '  T111_OKPO,'
      '  T111_COMPANY_SIZE,'
      '  T111_STATE,'
      '  T111_HEAD_POS,'
      '  T111_HEAD_INN,'
      '  T111_DATE_START,'
      '  T111_COMPANY_AGE,'
      '  T111_DATE_END,'
      '  T111_CO_OWNERS,'
      '  T111_OKTMO,'
      '  T111_INDUSTRY_NAME,'
      '  T111_OPF,'
      '  T111_OWN_TYPE,'
      '  T111_INN_OLD,'
      '  T111_OGRN_OLD,'
      '  T111_COMMENT_2,'
      '  T111_SHARE_CAPITAL'
      'from V_405_EMIT_LOAD'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000003700000012000000543032385F494E4455535452595F434F44450100
      0000000007000000543131315F49440100000000000E000000543131315F4649
      524D5F4E414D450100000000000D000000543131315F4649524D5F494E4E0100
      0000000007000000543032385F494401000000000012000000543131315F494E
      4455535452595F434F44450100000000000C000000543131315F4348414E4745
      440100000000000B000000543131315F524547494F4E01000000000010000000
      543131315F524547494F4E5F434F444501000000000010000000543032385F52
      4547494F4E5F434F444501000000000011000000543131315F5449434B45525F
      534B52494E0100000000000D000000543131315F494E465F5459504501000000
      00000F000000543131315F5245475F4E554D4245520100000000000700000054
      3033375F494401000000000011000000543131315F434F4D50414E595F484541
      4401000000000011000000543131315F454D41494C5F41445245535301000000
      00000D000000543131315F555F4144524553530100000000000D000000543131
      315F465F4144524553530100000000000E000000543131315F54454C4550484F
      4E4501000000000008000000543131315F464158010000000000080000005431
      31315F5745420100000000000F000000543131315F4D41494E5F434F554E5401
      00000000000D000000543131315F4E4C5F434F554E540100000000000E000000
      543131315F5245475F434F554E540100000000000E000000543131315F494E44
      5F434F554E5401000000000012000000543131315F49535F494E4E5F444F5542
      4C4501000000000017000000543131315F49535F494E4E5F444F55424C455F44
      4553430100000000000D000000543131315F494E445553545259010000000000
      0F000000543131315F4649524D5F535441544501000000000016000000543131
      315F494E4455535452595F49535F464F554E4401000000000014000000543131
      315F524547494F4E5F49535F464F554E4401000000000008000000543131315F
      4B505001000000000009000000543131315F4F4B46530100000000000A000000
      543131315F4F4B4F47550100000000000C000000543131315F434F4D4D454E54
      0100000000000D000000543131315F535041524B5F4944010000000000090000
      00543131315F4F4B504F0100000000000E000000543131315F46554C4C5F4E41
      4D450100000000000A000000543131315F4F4B41544F01000000000011000000
      543131315F434F4D50414E595F53495A450100000000000A000000543131315F
      53544154450100000000000D000000543131315F484541445F504F5301000000
      00000D000000543131315F484541445F494E4E0100000000000F000000543131
      315F444154455F535441525401000000000010000000543131315F434F4D5041
      4E595F4147450100000000000D000000543131315F444154455F454E44010000
      0000000E000000543131315F434F5F4F574E4552530100000000000A00000054
      3131315F4F4B544D4F01000000000012000000543131315F494E445553545259
      5F4E414D4501000000000008000000543131315F4F50460100000000000D0000
      00543131315F4F574E5F545950450100000000000C000000543131315F494E4E
      5F4F4C440100000000000D000000543131315F4F47524E5F4F4C440100000000
      000E000000543131315F434F4D4D454E545F3201000000000012000000543131
      315F53484152455F4341504954414C010000000000}
    Left = 88
    Top = 227
    object odsListT111_ID: TFloatField
      FieldName = 'T111_ID'
      Required = True
    end
    object odsListT111_FIRM_NAME: TStringField
      FieldName = 'T111_FIRM_NAME'
      Required = True
      Size = 255
    end
    object odsListT111_FIRM_INDUSTRY: TStringField
      FieldName = 'T111_INDUSTRY'
      Required = True
      Size = 255
    end
    object odsListT111_FIRM_INN: TStringField
      FieldName = 'T111_FIRM_INN'
      Required = True
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT111_INDUSTRY_CODE: TStringField
      FieldName = 'T111_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT111_CHANGED: TStringField
      FieldName = 'T111_CHANGED'
      Size = 1
    end
    object odsListT111_REGION: TStringField
      FieldName = 'T111_REGION'
      Size = 255
    end
    object odsListT111_REGION_CODE: TFloatField
      FieldName = 'T111_REGION_CODE'
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
    end
    object odsListT111_TICKER_SKRIN: TStringField
      FieldName = 'T111_TICKER_SKRIN'
      Size = 255
    end
    object odsListT111_INF_TYPE: TStringField
      FieldName = 'T111_INF_TYPE'
      Size = 255
    end
    object odsListT111_REG_NUMBER: TStringField
      FieldName = 'T111_REG_NUMBER'
      Size = 255
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT111_COMPANY_HEAD: TStringField
      FieldName = 'T111_COMPANY_HEAD'
      Size = 255
    end
    object odsListT111_EMAIL_ADRESS: TStringField
      FieldName = 'T111_EMAIL_ADRESS'
      Size = 255
    end
    object odsListT111_U_ADRESS: TStringField
      FieldName = 'T111_U_ADRESS'
      Size = 255
    end
    object odsListT111_F_ADRESS: TStringField
      FieldName = 'T111_F_ADRESS'
      Size = 255
    end
    object odsListT111_TELEPHONE: TStringField
      FieldName = 'T111_TELEPHONE'
      Size = 255
    end
    object odsListT111_FAX: TStringField
      FieldName = 'T111_FAX'
      Size = 255
    end
    object odsListT111_WEB: TStringField
      FieldName = 'T111_WEB'
      Size = 255
    end
    object odsListT111_MAIN_COUNT: TFloatField
      FieldName = 'T111_MAIN_COUNT'
    end
    object odsListT111_NL_COUNT: TFloatField
      FieldName = 'T111_NL_COUNT'
    end
    object odsListT111_REG_COUNT: TFloatField
      FieldName = 'T111_REG_COUNT'
    end
    object odsListT111_IND_COUNT: TFloatField
      FieldName = 'T111_IND_COUNT'
    end
    object odsListT111_IS_INN_DOUBLE: TStringField
      FieldName = 'T111_IS_INN_DOUBLE'
      Required = True
      Size = 1
    end
    object odsListT111_IS_INN_DOUBLE_DESC: TStringField
      FieldName = 'T111_IS_INN_DOUBLE_DESC'
      Size = 13
    end
    object odsListFIRM_STATE: TStringField
      FieldName = 'T111_FIRM_STATE'
      Size = 1
    end
    object odsListT111_INDUSTRY_IS_FOUND: TStringField
      FieldName = 'T111_INDUSTRY_IS_FOUND'
      Size = 1
    end
    object odsListT111_REGION_IS_FOUND: TStringField
      FieldName = 'T111_REGION_IS_FOUND'
      Size = 1
    end
    object odsListT111_KPP: TFloatField
      FieldName = 'T111_KPP'
    end
    object odsListT111_OKFS: TStringField
      FieldName = 'T111_OKFS'
      Size = 255
    end
    object odsListT111_OKOGU: TStringField
      FieldName = 'T111_OKOGU'
      Size = 255
    end
    object odsListT111_COMMENT: TStringField
      FieldName = 'T111_COMMENT'
      Size = 255
    end
    object odsListT111_SPARK_ID: TFloatField
      FieldName = 'T111_SPARK_ID'
      Required = True
    end
    object odsListT111_OKPO: TStringField
      FieldName = 'T111_OKPO'
      Size = 255
    end
    object odsListT111_FULL_NAME: TStringField
      FieldName = 'T111_FULL_NAME'
      Size = 255
    end
    object odsListT111_OKATO: TStringField
      FieldName = 'T111_OKATO'
      Size = 255
    end
    object odsListT111_COMPANY_SIZE: TStringField
      FieldName = 'T111_COMPANY_SIZE'
      Size = 255
    end
    object odsListT111_STATE: TStringField
      FieldName = 'T111_STATE'
      Size = 255
    end
    object odsListT111_HEAD_POS: TStringField
      FieldName = 'T111_HEAD_POS'
      Size = 255
    end
    object odsListT111_HEAD_INN: TStringField
      FieldName = 'T111_HEAD_INN'
      Size = 255
    end
    object odsListT111_DATE_START: TStringField
      FieldName = 'T111_DATE_START'
      Size = 255
    end
    object odsListT111_COMPANY_AGE: TStringField
      FieldName = 'T111_COMPANY_AGE'
      Size = 255
    end
    object odsListT111_DATE_END: TStringField
      FieldName = 'T111_DATE_END'
      Size = 255
    end
    object odsListT111_CO_OWNERS: TStringField
      FieldName = 'T111_CO_OWNERS'
      Size = 255
    end
    object odsListT111_OKTMO: TStringField
      FieldName = 'T111_OKTMO'
      Size = 255
    end
    object odsListT111_INDUSTRY_NAME: TStringField
      FieldName = 'T111_INDUSTRY_NAME'
      Size = 255
    end
    object odsListT111_OPF: TStringField
      FieldName = 'T111_OPF'
      Size = 255
    end
    object odsListT111_OWN_TYPE: TStringField
      FieldName = 'T111_OWN_TYPE'
      Size = 255
    end
    object odsListT111_INN_OLD: TStringField
      FieldName = 'T111_INN_OLD'
      Size = 255
    end
    object odsListT111_OGRN_OLD: TStringField
      FieldName = 'T111_OGRN_OLD'
      Size = 255
    end
    object odsListT111_COMMENT_2: TStringField
      FieldName = 'T111_COMMENT_2'
      Size = 255
    end
    object odsListT111_SHARE_CAPITAL: TStringField
      FieldName = 'T111_SHARE_CAPITAL'
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'begin'
      'INSERT INTO T111_EMIT_LOAD ('
      '  T111_FIRM_NAME,'
      '  T111_REGION,'
      '  T111_FIRM_INDUSTRY,'
      '  T111_FIRM_INN)'
      'VALUES'
      '  (:vName, :vRegion, :vIndustry, :vInn);'
      ''
      'commit;'
      'end;'
      ' ')
    Variables.Data = {
      0300000004000000060000003A564E414D450500000000000000000000000A00
      00003A56494E445553545259050000000000000000000000050000003A56494E
      4E050000000000000000000000080000003A56524547494F4E05000000000000
      0000000000}
    StringFieldsOnly = True
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'delete from T111_EMIT_LOAD')
    Top = 216
  end
  inherited oqDupl: TOracleQuery
    Top = 216
  end
  inherited pmFilter: TPopupMenu
    Left = 616
    Top = 24
  end
  object oqChanged: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_changed'#9'NUMBER;'
      'BEGIN'
      '  SELECT count(*) INTO v_changed'
      '  FROM   T111_EMIT_LOAD'
      '  WHERE  T028_ID IS NOT NULL'
      '  AND    T111_CHANGED = '#39'Y'#39';'
      ''
      '  :VRESULT := v_changed;'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A56524553554C54030000000000000000000000}
    Left = 440
    Top = 296
  end
  object oqNotFoundInn: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_notfound'#9'NUMBER;'
      'begin'
      '  SELECT COUNT(*) INTO v_notfound'
      '    FROM T111_EMIT_LOAD'
      '    WHERE T028_ID IS NULL;'
      ''
      '  :VRESULT := v_notfound;'
      'end;'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A56524553554C54030000000000000000000000}
    Left = 440
    Top = 228
  end
  object oqNotFoundIndustry: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_notfound'#9'NUMBER;'
      'begin'
      '  SELECT COUNT(*) INTO v_notfound'
      '    FROM T111_EMIT_LOAD'
      '    WHERE T111_INDUSTRY_CODE IS NULL;'
      ' '
      '  :VRESULT := v_notfound;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A56524553554C54030000000000000000000000}
    Left = 440
    Top = 260
  end
  object oqAfterLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :VRESULT := pk_form_405.f_check_InnDoubles;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A56524553554C54040000000000000000000000}
    Left = 440
    Top = 192
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      
        'SELECT ALL_COUNT, OLD_COUNT, NEW_COUNT, REG_NOT_FOUND_COUNT, IND' +
        '_NOT_FOUND_COUNT, '
      ' INN_DOUBLE_COUNT, T111_REG_COUNT, T111_IND_COUNT, EMPTY_COUNT'
      'FROM V_405_EMIT_LOAD_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000000900000009000000414C4C5F434F554E54010000000000090000004F
      4C445F434F554E54010000000000090000004E45575F434F554E540100000000
      00130000005245475F4E4F545F464F554E445F434F554E540100000000001300
      0000494E445F4E4F545F464F554E445F434F554E540100000000001000000049
      4E4E5F444F55424C455F434F554E540100000000000E000000543131315F5245
      475F434F554E540100000000000E000000543131315F494E445F434F554E5401
      00000000000B000000454D5054595F434F554E54010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsTotalAfterOpen
    Left = 104
    Top = 264
    object odsTotalALL_COUNT: TFloatField
      FieldName = 'ALL_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalOLD_COUNT: TFloatField
      FieldName = 'OLD_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalNEW_COUNT: TFloatField
      FieldName = 'NEW_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalREG_NOT_FOUND_COUNT: TFloatField
      FieldName = 'REG_NOT_FOUND_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalIND_NOT_FOUND_COUNT: TFloatField
      FieldName = 'IND_NOT_FOUND_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalINN_DOUBLE_COUNT: TFloatField
      FieldName = 'INN_DOUBLE_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalT111_REG_COUNT: TFloatField
      FieldName = 'T111_REG_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalT111_IND_COUNT: TFloatField
      FieldName = 'T111_IND_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalEMPTY_COUNT: TFloatField
      FieldName = 'EMPTY_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 136
    Top = 264
  end
end

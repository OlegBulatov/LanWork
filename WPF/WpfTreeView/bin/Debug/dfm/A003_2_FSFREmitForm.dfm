inherited A003_2_FSFREmit: TA003_2_FSFREmit
  Left = 100
  Top = 140
  Width = 1172
  Height = 800
  Caption = 'Данные в файле'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1161
    Height = 715
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
    Left = 1164
    Height = 715
  end
  inherited paMain: TPanel
    Width = 1161
    Height = 715
    inherited ToolBar2: TToolBar
      Top = 105
      Width = 1161
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
      Top = 128
      Width = 1161
      Height = 542
      AdvSettings.Indexes = <
        item
          FieldName = 'T144_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 5
              LastCol = 6
              Caption = 'Отрасль'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T144_FIRM_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Эмитент'
          Width = 340
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T144_FIRM_INN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ИНН'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_LICENCE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '№ лицензии'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_MAIN_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Найдено компаний в реестре по ИНН'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_NEED_CHANGE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Требуемое действие'
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код в реестре'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_IND_CODE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Код'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_ACT_DATE'
          PickList.Strings = ()
          Title.Caption = 'По состоянию на'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T144_NEED_CHANGE'
          PickList.Strings = ()
          Title.Caption = 'Код изменения'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T144_FIRM_STATE'
          PickList.Strings = ()
          Title.Caption = 'Код состояния'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 63
      Width = 1161
      inherited Panel1: TPanel
        Left = 1134
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 84
      Width = 1161
      inherited Panel1: TPanel
        Left = 1134
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 670
      Width = 1161
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
        Left = 111
        Top = 7
        Width = 75
        Height = 13
        Caption = 'Нет в реестре:'
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
        Left = 263
        Top = 7
        Width = 132
        Height = 13
        Caption = 'Изменения не требуются:'
        ParentShowHint = False
        ShowHint = True
      end
      object Label4: TLabel
        Left = 111
        Top = 23
        Width = 80
        Height = 13
        Caption = 'Существующих:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 54
        Top = 7
        Width = 46
        Height = 17
        DataField = 'ALL_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 195
        Top = 7
        Width = 46
        Height = 17
        DataField = 'NEW_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText3: TDBText
        Left = 195
        Top = 23
        Width = 46
        Height = 17
        DataField = 'OLD_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 417
        Top = 7
        Width = 46
        Height = 17
        DataField = 'NOT_CHANGED_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 481
        Top = 7
        Width = 135
        Height = 13
        Caption = 'Исключить из списка ФП:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText6: TDBText
        Left = 620
        Top = 7
        Width = 46
        Height = 17
        DataField = 'SET_NOT_FP_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label7: TLabel
        Left = 263
        Top = 23
        Width = 156
        Height = 13
        Hint = 'Код ОКВЭД не [65.23, 67.11, 67.12, 67.13 ]:'
        Caption = 'Код ОКВЭД не [65.23,67.11... ]:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText7: TDBText
        Left = 418
        Top = 23
        Width = 46
        Height = 17
        DataField = 'UNKNOWN_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TLabel
        Left = 481
        Top = 23
        Width = 122
        Height = 13
        Caption = 'Включить в список ФП:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText8: TDBText
        Left = 620
        Top = 23
        Width = 46
        Height = 17
        DataField = 'SET_FP_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 12
        Top = 23
        Width = 41
        Height = 13
        Hint = 'Всего компаний'
        Caption = 'Пустые:'
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
        Left = 54
        Top = 23
        Width = 46
        Height = 17
        DataField = 'EMPTY_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 687
        Top = 7
        Width = 334
        Height = 13
        Hint = 'Код ОКВЭД не [65.23, 67.11, 67.12, 67.13 ]:'
        Caption = 'Примечание: коды ОКВЭД для поиска [65.23, 67.11, 67.12, 67.13 ]'
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1161
      Height = 63
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
        Left = 91
        Top = 8
        Width = 224
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'Нет в реестре'
          'Существующие'
          'Пустые строки')
      end
      object Button1: TButton
        Left = 319
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Обновить'
        TabOrder = 2
        OnClick = Button1Click
      end
      object CbIndustries: TCheckBox
        Tag = 900
        Left = 7
        Top = 35
        Width = 80
        Height = 17
        Caption = 'Лицензия'
        TabOrder = 3
      end
      object CmbIndustries: TComboBox
        Tag = 901
        Left = 91
        Top = 33
        Width = 224
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'Включить в список фин. посредников'
          'Исключить из списка фин. посредников'
          'Изменения не требуются'
          'Код ОКВЭД не соответствует [66, 67.2]')
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 747
    Width = 1164
  end
  inherited pnlButtons: TPanel
    Top = 715
    Width = 1164
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
      
        'SELECT T144_ID, T144_FIRM_NAME, T144_FIRM_INN, T144_IND_CODE, T1' +
        '44_LICENCE, '
      
        ' T144_ACT_DATE, T144_MAIN_COUNT, T144_NEED_CHANGE, T144_NEED_CHA' +
        'NGE_DESC, T028_INDUSTRY_CODE, T144_FIRM_STATE'
      'FROM V_405_LOAD_FSFR'
      ''
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000B00000012000000543032385F494E4455535452595F434F44450100
      0000000007000000543134345F49440100000000000E000000543134345F4649
      524D5F4E414D450100000000000D000000543134345F4649524D5F494E4E0100
      000000000D000000543134345F494E445F434F44450100000000000C00000054
      3134345F4C4943454E43450100000000000D000000543134345F4143545F4441
      54450100000000000F000000543134345F4D41494E5F434F554E540100000000
      0010000000543134345F4E4545445F4348414E47450100000000001500000054
      3134345F4E4545445F4348414E47455F444553430100000000000F0000005431
      34345F4649524D5F5354415445010000000000}
    object odsListT144_ID: TFloatField
      FieldName = 'T144_ID'
    end
    object odsListT144_FIRM_NAME: TStringField
      FieldName = 'T144_FIRM_NAME'
      Size = 255
    end
    object odsListT144_FIRM_INN: TStringField
      FieldName = 'T144_FIRM_INN'
      Size = 255
    end
    object odsListT144_IND_CODE: TStringField
      FieldName = 'T144_IND_CODE'
      Size = 255
    end
    object odsListT144_LICENCE: TStringField
      FieldName = 'T144_LICENCE'
      Size = 255
    end
    object odsListT144_ACT_DATE: TDateTimeField
      FieldName = 'T144_ACT_DATE'
    end
    object odsListT144_MAIN_COUNT: TFloatField
      FieldName = 'T144_MAIN_COUNT'
    end
    object odsListT144_NEED_CHANGE: TStringField
      FieldName = 'T144_NEED_CHANGE'
      Size = 1
    end
    object odsListT144_NEED_CHANGE_DESC: TStringField
      FieldName = 'T144_NEED_CHANGE_DESC'
      Size = 255
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT144_FIRM_STATE: TStringField
      FieldName = 'T144_FIRM_STATE'
      Size = 1
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
    Left = 248
    Top = 32
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
      
        'SELECT ALL_COUNT, OLD_COUNT, NEW_COUNT, EMPTY_COUNT, UNKNOWN_COU' +
        'NT, '
      ' NOT_CHANGED_COUNT, SET_NOT_FP_COUNT, SET_FP_COUNT'
      'FROM V_405_LOAD_FSFR_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000000800000009000000414C4C5F434F554E54010000000000090000004F
      4C445F434F554E54010000000000090000004E45575F434F554E540100000000
      000B000000454D5054595F434F554E540100000000000D000000554E4B4E4F57
      4E5F434F554E54010000000000110000004E4F545F4348414E4745445F434F55
      4E54010000000000100000005345545F4E4F545F46505F434F554E5401000000
      00000C0000005345545F46505F434F554E54010000000000}
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
    object odsTotalEMPTY_COUNT: TFloatField
      FieldName = 'EMPTY_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalUNKNOWN_COUNT: TFloatField
      FieldName = 'UNKNOWN_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalNOT_CHANGED_COUNT: TFloatField
      FieldName = 'NOT_CHANGED_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalSET_NOT_FP_COUNT: TFloatField
      FieldName = 'SET_NOT_FP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsTotalSET_FP_COUNT: TFloatField
      FieldName = 'SET_FP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 136
    Top = 264
  end
end

inherited A005_2_MCEmit: TA005_2_MCEmit
  Left = 139
  Top = 186
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
      Top = 81
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
      Top = 104
      Width = 1025
      Height = 452
      AdvSettings.Indexes = <
        item
          FieldName = 'T142_ID'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 7
              Caption = 'Признак Управляющая компания'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T142_SHOT_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Наименование'
          Width = 364
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_FULL_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Visible = False
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T142_INN'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ИНН'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_SPARK_ID'
          PickList.Strings = ()
          Title.Caption = 'Код СПАРК'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_MAIN_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Найдено в реестре'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_IS_MC_CHANGED'
          PickList.Strings = ()
          Title.Caption = 'Требутся замена'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_IS_MC_DESC'
          PickList.Strings = ()
          Title.Caption = 'В реестре'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_SPARK_IS_MC'
          PickList.Strings = ()
          Title.Caption = 'По данным...'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T142_MC_STATE'
          PickList.Strings = ()
          Title.Caption = 'Код состояния'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 39
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 60
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
        Width = 62
        Height = 13
        Caption = 'Не найдено:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
      object Label7: TLabel
        Left = 296
        Top = 7
        Width = 54
        Height = 13
        Caption = 'Изменить:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText7: TDBText
        Left = 392
        Top = 7
        Width = 46
        Height = 17
        DataField = 'MC_CHANGED_COUNT'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 296
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
        Left = 392
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
      Height = 39
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
        Width = 232
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'Не найдено'
          'Существующие'
          'Пустые строки')
      end
      object Button1: TButton
        Left = 325
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Обновить'
        TabOrder = 2
        OnClick = Button1Click
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
      
        'SELECT T142_ID, T142_SHOT_NAME, T142_FULL_NAME, T142_INN, T142_S' +
        'PARK_ID,'
      
        ' T028_ID, T036_IS_MC, T142_MAIN_COUNT, T036_IS_MC_DESC, T142_SPA' +
        'RK_IS_MC,'
      ' T142_IS_MC_CHANGED, T142_MC_STATE'
      'FROM  V_405_LOAD_MC '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000C00000007000000543032385F494401000000000007000000543134
      325F49440100000000000E000000543134325F53484F545F4E414D4501000000
      00000E000000543134325F46554C4C5F4E414D45010000000000080000005431
      34325F494E4E0100000000000D000000543134325F535041524B5F4944010000
      0000000A000000543033365F49535F4D430100000000000F000000543134325F
      4D41494E5F434F554E540100000000000F000000543033365F49535F4D435F44
      45534301000000000010000000543134325F535041524B5F49535F4D43010000
      00000012000000543134325F49535F4D435F4348414E4745440100000000000D
      000000543134325F4D435F5354415445010000000000}
    object odsListT142_ID: TFloatField
      FieldName = 'T142_ID'
      Required = True
    end
    object odsListT142_SHOT_NAME: TStringField
      FieldName = 'T142_SHOT_NAME'
      Size = 255
    end
    object odsListT142_FULL_NAME: TStringField
      FieldName = 'T142_FULL_NAME'
      Size = 255
    end
    object odsListT142_INN: TStringField
      FieldName = 'T142_INN'
      Required = True
      Size = 255
    end
    object odsListT142_SPARK_ID: TFloatField
      FieldName = 'T142_SPARK_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
    object odsListT036_IS_MC: TStringField
      FieldName = 'T036_IS_MC'
      Size = 1
    end
    object odsListT142_MAIN_COUNT: TFloatField
      FieldName = 'T142_MAIN_COUNT'
    end
    object odsListT036_IS_MC_DESC: TStringField
      FieldName = 'T036_IS_MC_DESC'
      Size = 3
    end
    object odsListT142_SPARK_IS_MC: TStringField
      FieldName = 'T142_SPARK_IS_MC'
      Size = 2
    end
    object odsListT142_IS_MC_CHANGED: TStringField
      FieldName = 'T142_IS_MC_CHANGED'
      Size = 3
    end
    object odsListT142_MC_STATE: TStringField
      FieldName = 'T142_MC_STATE'
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
      
        'select ALL_COUNT, OLD_COUNT, NEW_COUNT, EMPTY_COUNT, MC_CHANGED_' +
        'COUNT'
      'from  V_405_LOAD_MC_TOTAL'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000500000009000000414C4C5F434F554E54010000000000090000004F
      4C445F434F554E54010000000000090000004E45575F434F554E540100000000
      000B000000454D5054595F434F554E54010000000000100000004D435F434841
      4E4745445F434F554E54010000000000}
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
    object odsTotalMC_CHANGED_COUNT: TFloatField
      FieldName = 'MC_CHANGED_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 136
    Top = 264
  end
end

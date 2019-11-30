inherited A009_2_LoadedFile: TA009_2_LoadedFile
  Left = 90
  Top = 180
  Width = 767
  Height = 686
  Caption = 'Данные в файле'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 756
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
  inherited paRight: TPanel
    Left = 759
    Height = 601
  end
  inherited paMain: TPanel
    Width = 756
    Height = 601
    inherited ToolBar2: TToolBar
      Top = 78
      Width = 756
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
      Top = 101
      Width = 756
      Height = 471
      OnColEnter = xxxDBGridColEnter
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T030_NAME'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Эмиссия'
          Width = 120
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'T042_PAY_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата выплаты'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COUPON_RATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Ставка купона, % годовых'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COUPON_SUM'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Сумма купона'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_MATURITY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Погашение номинала'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COMMENT_RUS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Примечание (русск.)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T042_COMMENT_ENG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Примечаниие (англ.)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_FILE_NAME'
          PickList.Strings = ()
          Title.Caption = 'Файл загрузки'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_LOAD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата загрузки'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_LOADER'
          PickList.Strings = ()
          Title.Caption = 'Кем загружено'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T033_FOR_FILTER'
          PickList.Strings = ()
          Title.Caption = 'Для фильтра'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_EMISSION_ID'
          PickList.Strings = ()
          Title.Caption = 'ID эмиссии'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T042_FOR_FILTER'
          PickList.Strings = ()
          Title.Caption = 'Для фильтра'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 36
      Width = 756
      inherited Panel1: TPanel
        Left = 729
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 57
      Width = 756
      inherited Panel1: TPanel
        Left = 729
      end
    end
    object GroupBox1: TPanel
      Left = 0
      Top = 572
      Width = 756
      Height = 29
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
        Left = 126
        Top = 7
        Width = 137
        Height = 13
        Caption = 'Нераспознанных эмиссий:'
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
        Left = 518
        Top = 7
        Width = 68
        Height = 13
        Caption = 'Измененных:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 53
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_TOTAL'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 439
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_NEW'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 593
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_CHANGED'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 761
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
      object DBText3: TDBText
        Left = 270
        Top = 7
        Width = 46
        Height = 17
        DataField = 'E_NEW'
        DataSource = dsTotal
      end
      object Label6: TLabel
        Left = 351
        Top = 7
        Width = 81
        Height = 13
        Caption = 'Новых записей:'
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 756
      Height = 36
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object Label4: TLabel
        Left = 27
        Top = 11
        Width = 105
        Height = 13
        Caption = 'Показывать записи:'
      end
      object CbShow: TCheckBox
        Tag = 800
        Left = 7
        Top = 10
        Width = 14
        Height = 17
        Caption = 'Показывать записи:'
        Enabled = False
        State = cbGrayed
        TabOrder = 0
      end
      object CmbShow: TComboBox
        Tag = 801
        Left = 148
        Top = 8
        Width = 331
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'Все'
          'Нераспознанные эмиссии'
          'Новые, измененнные и удаленные'
          'Только новые записи'
          'Только измененные'
          'Измененные новыми данными'
          'Измененные старыми данными'
          'Удаленные записи')
      end
      object Button1: TButton
        Left = 487
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
    Width = 759
  end
  inherited pnlButtons: TPanel
    Top = 601
    Width = 759
    Height = 32
    inherited OKBtn: TButton
      Left = 737
      Hint = 'Загрузить отмеченные записи'
      Caption = 'Загрузить'
    end
    inherited CancelBtn: TButton
      Left = 817
    end
  end
  inherited dsList: TDataSource
    Top = 267
  end
  inherited ActionList: TActionList
    Left = 104
    Top = 235
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
      'select'
      '  T042_EMISSION_ID,'
      '  T030_NAME,'
      '  T042_PAY_DATE,'
      '  T042_COUPON_RATE,'
      '  T042_COUPON_SUM,'
      '  T042_MATURITY,'
      '  T042_COMMENT_RUS,'
      '  T042_COMMENT_ENG,'
      '  T042_LOAD_DATE,'
      '  T042_FILE_NAME,'
      '  T042_LOADER,'
      '  T042_FOR_FILTER,'
      '  T042_COUPON_RATE_OLD,'
      '  T042_COUPON_SUM_OLD,'
      '  T042_MATURITY_OLD,'
      '  T042_COMMENT_RUS_OLD,'
      '  T042_COMMENT_ENG_OLD,'
      '  T042_COUPON_RATE_CHD,'
      '  T042_COUPON_SUM_CHD,'
      '  T042_MATURITY_CHD,'
      '  T042_COMMENT_RUS_CHD,'
      '  T042_COMMENT_ENG_CHD'
      'from V_DS_FLOWS_LOAD'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000001800000010000000543034325F454D495353494F4E5F494401000000
      00000D000000543034325F5041595F4441544501000000000010000000543034
      325F434F55504F4E5F524154450100000000000F000000543034325F434F5550
      4F4E5F53554D0100000000000D000000543034325F4D41545552495459010000
      00000010000000543034325F434F4D4D454E545F525553010000000000100000
      00543034325F434F4D4D454E545F454E470100000000000E000000543034325F
      4C4F41445F444154450100000000000E000000543034325F46494C455F4E414D
      450100000000000B000000543034325F4C4F414445520100000000000F000000
      543034325F464F525F46494C54455201000000000011000000543034325F5041
      595F444154455F4F4C4401000000000014000000543034325F434F55504F4E5F
      524154455F4F4C4401000000000013000000543034325F434F55504F4E5F5355
      4D5F4F4C4401000000000011000000543034325F4D415455524954595F4F4C44
      01000000000014000000543034325F434F4D4D454E545F5255535F4F4C440100
      0000000014000000543034325F434F4D4D454E545F454E475F4F4C4401000000
      000011000000543034325F5041595F444154455F434844010000000000140000
      00543034325F434F55504F4E5F524154455F4348440100000000001300000054
      3034325F434F55504F4E5F53554D5F4348440100000000001100000054303432
      5F4D415455524954595F43484401000000000014000000543034325F434F4D4D
      454E545F5255535F43484401000000000014000000543034325F434F4D4D454E
      545F454E475F43484401000000000009000000543033305F4E414D4501000000
      0000}
    AfterScroll = odsListAfterScroll
    Top = 267
    object odsListT042_EMISSION_ID: TFloatField
      FieldName = 'T042_EMISSION_ID'
    end
    object odsListT030_NAME: TStringField
      FieldName = 'T030_NAME'
      Size = 255
    end
    object odsListT042_PAY_DATE: TDateTimeField
      FieldName = 'T042_PAY_DATE'
    end
    object odsListT042_COUPON_RATE: TFloatField
      FieldName = 'T042_COUPON_RATE'
    end
    object odsListT042_COUPON_SUM: TFloatField
      FieldName = 'T042_COUPON_SUM'
    end
    object odsListT042_MATURITY: TFloatField
      FieldName = 'T042_MATURITY'
    end
    object odsListT042_COMMENT_RUS: TStringField
      FieldName = 'T042_COMMENT_RUS'
      Size = 255
    end
    object odsListT042_COMMENT_ENG: TStringField
      FieldName = 'T042_COMMENT_ENG'
      Size = 255
    end
    object odsListT042_LOAD_DATE: TDateTimeField
      FieldName = 'T042_LOAD_DATE'
    end
    object odsListT042_FILE_NAME: TStringField
      FieldName = 'T042_FILE_NAME'
      Size = 255
    end
    object odsListT042_LOADER: TStringField
      FieldName = 'T042_LOADER'
      Size = 255
    end
    object odsListT042_FOR_FILTER: TFloatField
      FieldName = 'T042_FOR_FILTER'
    end
    object odsListT042_COUPON_RATE_OLD: TStringField
      FieldName = 'T042_COUPON_RATE_OLD'
      Size = 56
    end
    object odsListT042_COUPON_SUM_OLD: TStringField
      FieldName = 'T042_COUPON_SUM_OLD'
      Size = 56
    end
    object odsListT042_MATURITY_OLD: TStringField
      FieldName = 'T042_MATURITY_OLD'
      Size = 56
    end
    object odsListT042_COMMENT_RUS_OLD: TStringField
      FieldName = 'T042_COMMENT_RUS_OLD'
      Size = 271
    end
    object odsListT042_COMMENT_ENG_OLD: TStringField
      FieldName = 'T042_COMMENT_ENG_OLD'
      Size = 271
    end
    object odsListT042_COUPON_RATE_CHD: TStringField
      FieldName = 'T042_COUPON_RATE_CHD'
      Size = 1
    end
    object odsListT042_COUPON_SUM_CHD: TStringField
      FieldName = 'T042_COUPON_SUM_CHD'
      Size = 1
    end
    object odsListT042_MATURITY_CHD: TStringField
      FieldName = 'T042_MATURITY_CHD'
      Size = 1
    end
    object odsListT042_COMMENT_RUS_CHD: TStringField
      FieldName = 'T042_COMMENT_RUS_CHD'
      Size = 1
    end
    object odsListT042_COMMENT_ENG_CHD: TStringField
      FieldName = 'T042_COMMENT_ENG_CHD'
      Size = 1
    end
  end
  inherited pkList: TOraclePackage
    Left = 392
    Top = 347
  end
  inherited oqAdd: TOracleQuery
    StringFieldsOnly = True
    Left = 216
    Top = 264
  end
  inherited oqUpdate: TOracleQuery
    Left = 256
    Top = 264
  end
  inherited oqDelete: TOracleQuery
    Left = 296
    Top = 264
  end
  inherited oqDupl: TOracleQuery
    Left = 336
    Top = 264
  end
  inherited pmFilter: TPopupMenu
    Left = 616
    Top = 24
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT R_TOTAL,'
      '       E_NEW,'
      '       R_NEW,'
      '       R_UPDATED,'
      '       R_ROLLED,'
      '       R_CHANGED'
      'FROM   V_DS_FLOWS_LOAD_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000525F544F54414C01000000000005000000525F4E
      455701000000000009000000525F4348414E4745440100000000000900000052
      5F5550444154454401000000000008000000525F524F4C4C4544010000000000
      05000000455F4E4557010000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 352
    object odsTotalR_TOTAL: TFloatField
      FieldName = 'R_TOTAL'
    end
    object odsTotalE_NEW: TFloatField
      FieldName = 'E_NEW'
    end
    object odsTotalR_NEW: TFloatField
      FieldName = 'R_NEW'
    end
    object odsTotalR_UPDATED: TFloatField
      FieldName = 'R_UPDATED'
    end
    object odsTotalR_ROLLED: TFloatField
      FieldName = 'R_ROLLED'
    end
    object odsTotalR_CHANGED: TStringField
      FieldName = 'R_CHANGED'
      Size = 81
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 144
    Top = 352
  end
end

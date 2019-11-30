inherited I001_LoadedFile: TI001_LoadedFile
  Height = 580
  Caption = 'I001_LoadedFile'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 41
    Height = 455
  end
  inherited paRight: TPanel
    Top = 41
    Height = 455
  end
  inherited paMain: TPanel
    Top = 41
    Height = 455
    inherited xxxDBGrid: TxxxDBGrid
      Height = 359
      OnColEnter = xxxDBGridColEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование  эмитента'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН УК'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. № ц.б.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_REG'
          PickList.Strings = ()
          Title.Caption = 'Дата откр.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CLOSE'
          PickList.Strings = ()
          Title.Caption = 'Дата закр.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T145_FOR_FILTER'
          PickList.Strings = ()
          Visible = False
        end>
    end
    object paCounts: TPanel
      Left = 0
      Top = 424
      Width = 703
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
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
      object Label2: TLabel
        Left = 131
        Top = 7
        Width = 36
        Height = 13
        Caption = 'Новых:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText2: TDBText
        Left = 175
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_NEW'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 259
        Top = 7
        Width = 68
        Height = 13
        Caption = 'Измененных:'
        ParentShowHint = False
        ShowHint = True
      end
      object DBText4: TDBText
        Left = 333
        Top = 7
        Width = 46
        Height = 17
        DataField = 'R_CHANGED'
        DataSource = dsTotal
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 501
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 527
  end
  inherited pnlButtons: TPanel
    Top = 496
    Height = 31
  end
  object paFilters: TPanel [5]
    Left = 0
    Top = 0
    Width = 706
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label4: TLabel
      Left = 27
      Top = 11
      Width = 105
      Height = 13
      Caption = 'Показывать записи:'
    end
    object cbShow: TCheckBox
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
    object cmbShow: TComboBox
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
        'Только новые'
        'Новые и измененнные'
        'Только измененные')
    end
    object Button1: TButton
      Left = 487
      Top = 6
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 2
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T028_NAME,'
      '       T028_INN,'
      '       T028_TYPE,'
      '       T026_SEC_REGN,'
      '       DATA_REG,'
      '       --T030_ID,'
      '       --T145_ID,'
      '       DATA_CLOSE,'
      '       T145_FOR_FILTER'
      'from V_405_PIF_LOAD')
    QBEDefinition.QBEFieldDefs = {
      040000000700000009000000543032385F4E414D450100000000000800000054
      3032385F494E4E01000000000009000000543032385F54595045010000000000
      0D000000543032365F5345435F5245474E01000000000008000000444154415F
      5245470100000000000A000000444154415F434C4F53450100000000000F0000
      00543134355F464F525F46494C544552010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT028_NAME: TStringField
      FieldName = 'T028_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Required = True
      Size = 50
    end
    object odsListT028_TYPE: TStringField
      FieldName = 'T028_TYPE'
      Required = True
      Size = 10
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 50
    end
    object odsListDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
      Required = True
    end
    object odsListDATA_CLOSE: TDateTimeField
      FieldName = 'DATA_CLOSE'
    end
    object odsListT145_FOR_FILTER: TFloatField
      FieldName = 'T145_FOR_FILTER'
    end
  end
  inherited pmFilter: TPopupMenu
    Left = 520
    Top = 72
  end
  object odsTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT R_TOTAL,'
      '       R_NEW,'
      '       R_CHANGED,'
      '       R_SAME'
      'FROM   V_405_PIF_LOAD_TOTAL')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000525F544F54414C01000000000005000000525F4E
      455701000000000009000000525F4348414E4745440100000000000600000052
      5F53414D45010000000000}
    Session = dmMain.OracleSession
    Left = 104
    Top = 352
    object odsTotalR_TOTAL: TFloatField
      FieldName = 'R_TOTAL'
    end
    object odsTotalR_NEW: TFloatField
      FieldName = 'R_NEW'
    end
    object odsTotalR_CHANGED: TFloatField
      FieldName = 'R_CHANGED'
    end
    object odsTotalR_SAME: TFloatField
      FieldName = 'R_SAME'
    end
  end
  object dsTotal: TDataSource
    DataSet = odsTotal
    Left = 144
    Top = 352
  end
end

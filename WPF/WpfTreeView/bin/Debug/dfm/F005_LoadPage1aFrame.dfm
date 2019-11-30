inherited F005_LoadPage1a: TF005_LoadPage1a
  Width = 879
  Height = 500
  inherited Bevel: TBevel
    Width = 879
  end
  inherited PanelStepCaption: TPanel
    Width = 879
    OnResize = PanelStepCaptionResize
    inherited Label1: TLabel
      Width = 218
      Caption = 'Шаг 1 - Выбор отчетов для загрузки'
    end
    inherited Label2: TLabel
      Width = 232
      Caption = 'Выберите отчеты и нажмите кнопку "Далее".'
    end
    object sbReload: TSpeedButton
      Left = 743
      Top = 15
      Width = 23
      Height = 22
      Action = actReload
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BFBF000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
        0000BFBF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000BFBF0000BFBF0000BFBF00000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BFBF0000BFBF0000BFBF00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
    object stLoadDate: TStaticText
      Left = 580
      Top = 24
      Width = 161
      Height = 17
      Caption = 'Данные от 20.12.2045 18:40:00'
      TabOrder = 0
    end
  end
  inherited PanelStepBody: TPanel
    Width = 879
    Height = 448
    object Filters: TPanel
      Left = 0
      Top = 0
      Width = 879
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 5
        Top = 0
        Width = 870
        Height = 86
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Фильтр '
        TabOrder = 0
        inline PeriodFilter: TF005_LoadPeriodFilter
          Left = 12
          Top = 15
          Width = 515
          inherited Label1: TLabel
            Left = 345
          end
          inherited lcb: TxxxDBLookupCheckCombo
            Left = 165
            Width = 150
          end
          inherited lcb2: TRxDBLookupCombo
            Left = 364
            Width = 150
          end
          inherited actList: TActionList
            Left = 312
            Top = 12
          end
        end
        inline ReportTypeFilter: TB000_ReportTypeFilter
          Left = 11
          Top = 40
          Width = 515
          TabOrder = 1
          inherited lcb: TxxxDBLookupCheckCombo
            Left = 166
            Width = 349
          end
          inherited cb: TCheckBox
            Checked = False
            State = cbUnchecked
          end
        end
        object Button1: TButton
          Left = 536
          Top = 14
          Width = 75
          Height = 25
          Action = Grid.actRefresh
          TabOrder = 2
        end
      end
    end
    inline Grid: TF005_LoadPage1aGrid
      Top = 89
      Width = 879
      Height = 359
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 879
        Height = 311
        Columns = <
          item
            Expanded = False
            FieldName = 'T055_LONG_NAME'
            PickList.Strings = ()
            Title.Caption = 'Отчет за период'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPORTER_INN'
            PickList.Strings = ()
            Title.Caption = 'ИНН отч. орг.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPORTER_SHORT_NAME'
            PickList.Strings = ()
            Title.Caption = 'Название отч. орг.'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GCI_DATE'
            PickList.Strings = ()
            Title.Caption = 'Дата ДИТ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPB_DATE'
            PickList.Strings = ()
            Title.Caption = 'Дата ДС'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REPORT_TYPE_NAME'
            PickList.Strings = ()
            Title.Caption = 'Тип отчета'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IS_CHECKED'
            PickList.Strings = ()
            Title.Caption = 'Загрузить'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'F711_ID'
            PickList.Strings = ()
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'T055_ID'
            PickList.Strings = ()
            Visible = False
          end>
      end
      inherited paToolButton: TPanel
        Width = 879
      end
      inherited Panel1: TPanel
        Top = 336
        Width = 879
        inherited cbLoadN: TCheckBox
          OnClick = nil
        end
        inherited cbLoadR: TCheckBox
          OnClick = nil
        end
      end
      inherited odsList: TOracleDataSet
        AfterOpen = GridodsListAfterOpen
      end
    end
  end
  inherited actList: TActionList
    Top = 8
    object actReload: TAction
      Hint = 'Обновить данные ДИТ'
      ImageIndex = 16
      OnExecute = actReloadExecute
      OnUpdate = actReloadUpdate
    end
  end
  object oqReload: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_415_data.p_refresh_415_gci_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 464
    Top = 8
  end
  object odsLastLoad: TOracleDataSet
    SQL.Strings = (
      'SELECT T244_DATE'
      'FROM   V_405_415_GCI_LOADS')
    QBEDefinition.QBEFieldDefs = {040000000100000009000000543234345F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsLastLoadAfterOpen
    Left = 416
    Top = 8
    object odsLastLoadT244_DATE: TDateTimeField
      FieldName = 'T244_DATE'
    end
  end
end

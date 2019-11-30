inherited A09_LoadPage1: TA09_LoadPage1
  Width = 772
  Height = 507
  inherited Bevel: TBevel
    Width = 772
  end
  inherited PanelStepCaption: TPanel
    Width = 772
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
      Left = 731
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
      Left = 565
      Top = 24
      Width = 161
      Height = 17
      Caption = 'Данные от 20.12.2045 18:40:00'
      TabOrder = 0
    end
  end
  inherited PanelStepBody: TPanel
    Width = 772
    Height = 455
    inline Filters: TA09_LoadPage1Filter
      Width = 772
      Align = alTop
      inherited GroupBox1: TGroupBox
        Width = 772
        inherited Panel1: TPanel
          Width = 245
          inherited Button1: TButton
            Action = Grid.actRefresh
          end
        end
        inherited paFilterItems: TPanel
          inherited ReportTypeFilter: TA09_ReportTypeFilter
            inherited odsList: TOracleDataSet
              SQL.Strings = (
                'select TYPE_ID,'
                '       TYPE_NAME'
                'from   V_410_REPORT_TYPES'
                ''
                ''
                '')
            end
          end
        end
      end
    end
    inline Grid: TA09_LoadPage1Grid
      Top = 72
      Width = 772
      Height = 383
      Align = alClient
      TabOrder = 1
      inherited xxxDBGrid: TxxxDBGrid
        Width = 772
        Height = 335
        Columns = <
          item
            Expanded = False
            FieldName = 'PERIOD'
            PickList.Strings = ()
            Title.Caption = 'Отчет за период'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GCI_BANK_CODE'
            PickList.Strings = ()
            Title.Caption = 'Код КО'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPB_BANK_NAME'
            PickList.Strings = ()
            Title.Caption = 'Название КО'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GCI_DATE'
            PickList.Strings = ()
            Title.Caption = 'Дата ЦИТ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DPB_DATE'
            PickList.Strings = ()
            Title.Caption = 'Дата ДПБ'
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
            FieldName = 'DIFF1'
            PickList.Strings = ()
            Title.Caption = 'Раздел 1'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFF2'
            PickList.Strings = ()
            Title.Caption = 'Раздел 2'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFF3'
            PickList.Strings = ()
            Title.Caption = 'Раздел 3'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFF4'
            PickList.Strings = ()
            Title.Caption = 'Раздел 4'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFF6'
            PickList.Strings = ()
            Title.Caption = 'Раздел 6'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'F410_ID'
            PickList.Strings = ()
            Visible = False
          end>
      end
      inherited paToolButton: TPanel
        Width = 772
        inherited tlbSelect: TToolBar
          Width = 89
          inherited tb_Select: TToolButton
            Action = Grid.actSelectAll
          end
          inherited tb_Unselect: TToolButton
            Action = Grid.actUnselectAll
          end
        end
        inherited tlbDetails: TToolBar
          Left = 590
        end
      end
      inherited Panel1: TPanel
        Top = 360
        Width = 772
      end
      inherited actList: TActionList
        inherited actSelectAll: TAction
          OnExecute = GridactSelectAllExecute
          OnUpdate = GridactSelectAllUpdate
        end
        inherited actUnselectAll: TAction
          OnExecute = GridactUnselectAllExecute
          OnUpdate = GridactUnselectAllUpdate
        end
      end
      inherited odsList: TOracleDataSet
        AfterOpen = GridodsListAfterOpen
      end
    end
  end
  inherited actList: TActionList
    Left = 328
    Top = 7
    object actReload: TAction
      Hint = 'Обновить данные ЦИТ'
      ImageIndex = 16
      OnExecute = actReloadExecute
      OnUpdate = actReloadUpdate
    end
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_before_load;'
      'end;')
    Session = dmMain.OracleSession
    Left = 400
    Top = 256
  end
  object oqReload: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Load.p_refresh_gci_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 464
    Top = 8
  end
  object odsLastLoad: TOracleDataSet
    SQL.Strings = (
      'SELECT MAX(T056_DATE) T056_DATE'
      'FROM   V_410_GCI_LOADS')
    QBEDefinition.QBEFieldDefs = {040000000100000009000000543035365F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsLastLoadAfterOpen
    Left = 416
    Top = 8
    object odsLastLoadT056_DATE: TDateTimeField
      FieldName = 'T056_DATE'
    end
  end
end

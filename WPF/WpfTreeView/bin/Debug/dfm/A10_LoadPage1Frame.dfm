inherited A10_LoadPage1: TA10_LoadPage1
  Width = 668
  Height = 557
  inherited Bevel: TBevel
    Width = 668
  end
  inherited PanelStepCaption: TPanel
    Width = 668
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
      Left = 628
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
      Left = 457
      Top = 24
      Width = 161
      Height = 17
      Caption = 'Данные от 20.12.2045 18:40:00'
      TabOrder = 0
    end
  end
  inherited PanelStepBody: TPanel
    Width = 668
    Height = 505
    inline Grid: TA10_LoadPage1Grid
      Top = 73
      Width = 668
      Height = 432
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 668
        Height = 384
      end
      inherited paToolButton: TPanel
        Width = 668
        inherited tlbSelect: TToolBar
          Width = 89
        end
      end
      inherited Panel1: TPanel
        Top = 409
        Width = 668
      end
      inherited actList: TActionList
        Top = 71
        inherited actSelectAll: TAction
          OnExecute = GridactSelectAllExecute
          OnUpdate = GridactSelectAllUpdate
        end
        inherited actUnselectAll: TAction
          OnExecute = GridactUnselectAllExecute
          OnUpdate = GridactUnselectAllUpdate
        end
      end
      inherited dsList: TDataSource
        Top = 66
      end
      inherited odsList: TOracleDataSet
        AfterOpen = GridodsListAfterOpen
        Top = 64
      end
      inherited PopupMenu: TPopupMenu
        Top = 142
      end
      inherited oqAdd: TOracleQuery
        Top = 67
      end
      inherited oqUpdate: TOracleQuery
        Top = 103
      end
      inherited oqDelete: TOracleQuery
        Top = 143
      end
      inherited odsFetchRecord: TOracleDataSet
        Top = 125
      end
      inherited oqCount: TOracleQuery
        Left = 352
        Top = 124
      end
      inherited oqBeforeLoad: TOracleQuery
        Left = 348
        Top = 68
      end
    end
    inline Filters: TA10_LoadPage1Filters
      Width = 668
      Height = 73
      Align = alTop
      TabOrder = 1
      inherited GroupBox1: TGroupBox
        Width = 668
        Height = 73
        inherited Panel1: TPanel
          Width = 142
          Height = 56
          inherited Button1: TButton
            Action = Grid.actRefresh
          end
        end
        inherited paFilterItems: TPanel
          Height = 56
          inherited PeriodFilter: TA10_PeriodFilter
            inherited cb: TCheckBox
              Checked = False
              State = cbUnchecked
            end
          end
          inherited ReportTypeFilter: TA10_ReportTypeFilter
            inherited cb: TCheckBox
              Checked = False
              State = cbUnchecked
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 288
    Top = 16
    object actReload: TAction
      ImageIndex = 16
      OnExecute = actReloadExecute
      OnUpdate = actReloadUpdate
    end
  end
  object odsLastLoad: TOracleDataSet
    SQL.Strings = (
      'SELECT MAX(T056_DATE) T056_DATE'
      'FROM   V_406_LAST_LOAD')
    QBEDefinition.QBEFieldDefs = {040000000100000009000000543035365F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsLastLoadAfterOpen
    Left = 360
    Top = 16
    object odsLastLoadT056_DATE: TDateTimeField
      FieldName = 'T056_DATE'
    end
  end
  object oqReload: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_406_Load.p_refresh_gci_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 400
    Top = 16
  end
end

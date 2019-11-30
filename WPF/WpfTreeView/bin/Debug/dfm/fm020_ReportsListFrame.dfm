inherited fm020_ReportsList: Tfm020_ReportsList
  inherited tvList: TTreeView
    Top = 0
    Height = 419
  end
  inherited paToolButton: TPanel
    Height = 0
    Enabled = False
    Visible = False
    inherited tlbNav: TToolBar
      Height = 0
    end
    inherited tlbList: TToolBar
      Width = 245
      Height = 0
    end
    inherited tlbExcel: TToolBar
      Left = 322
      Height = 0
    end
    inherited tlbSeach: TToolBar
      Left = 356
      Width = 71
      Height = 0
    end
    inherited tlbFilter: TToolBar
      Left = 427
      Width = 94
      Height = 0
    end
    inherited tlbSelect: TToolBar
      Left = 521
      Width = 35
      Height = 0
    end
  end
  inherited actList: TActionList
    Left = 312
    Top = 140
  end
  inherited dsList: TDataSource
    Left = 272
    Top = 19
  end
  inherited odsList: TOracleDataSet
    Left = 240
    Top = 21
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 484
  end
end

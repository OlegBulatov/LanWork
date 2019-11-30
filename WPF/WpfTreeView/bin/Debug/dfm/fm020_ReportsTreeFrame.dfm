inherited fm020_ReportsTree: Tfm020_ReportsTree
  inherited tvList: TTreeView
    Top = 0
    Height = 419
    OnCollapsed = tvListCollapsed
    OnDblClick = tvListDblClick
    OnExpanded = tvListExpanded
  end
  inherited paToolButton: TPanel
    Height = 0
    Enabled = False
    Visible = False
    inherited tlbNav: TToolBar
      Height = 0
    end
    inherited tlbList: TToolBar
      Height = 0
    end
    inherited tlbExcel: TToolBar
      Height = 0
    end
    inherited tlbSeach: TToolBar
      Height = 0
    end
    inherited tlbFilter: TToolBar
      Height = 0
    end
    inherited tlbSelect: TToolBar
      Height = 0
    end
  end
  inherited actList: TActionList
    Left = 312
    Top = 140
  end
  inherited dsList: TDataSource
    Left = 520
    Top = 59
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT F_ID ID, '
      '       F_PARENT_ID PARENT_ID, '
      '       F_DISPL_NAME DISPLAY_NAME, '
      '       F_IMAGE_INDEX IMAGE_INDEX,'
      '       F_SELECTED_INDEX SELECT_INDEX,'
      '       F_VISIBLE VISIBLE'
      'FROM   V_XXX_REPORTS_LIST')
    Left = 488
    Top = 61
  end
  inherited oqAdd: TOracleQuery
    Top = 180
  end
  inherited oqUpdate: TOracleQuery
    Top = 204
  end
  inherited oqDelete: TOracleQuery
    Top = 232
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 484
    Top = 206
  end
end

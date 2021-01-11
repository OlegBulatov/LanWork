inherited fm006_TreeList: Tfm006_TreeList
  inherited paTreeParent: TPanel
    inherited tvList: TTreeView
      Top = 17
      Height = 538
    end
    object hcTreeColums: THeaderControl
      Left = 0
      Top = 0
      Width = 796
      Height = 17
      DragReorder = False
      Images = dmPicters.ilCommonPictures
      Sections = <
        item
          ImageIndex = -1
          Width = 400
        end>
      OnSectionResize = hcTreeColumsSectionResize
    end
  end
  inherited paToolButton: TPanel
    inherited tlbList: TToolBar
      Width = 245
    end
    inherited tlbExcel: TToolBar
      Left = 322
    end
    inherited tlbSeach: TToolBar
      Left = 356
      Width = 71
    end
    inherited tlbFilter: TToolBar
      Left = 427
      Width = 94
    end
    inherited tlbSelect: TToolBar
      Left = 521
      Width = 35
    end
  end
end

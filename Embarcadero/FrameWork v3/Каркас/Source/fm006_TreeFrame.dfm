inherited fmTree: TfmTree
  Width = 800
  Height = 584
  object paTreeParent: TPanel [0]
    Left = 0
    Top = 25
    Width = 800
    Height = 559
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'paTreeParent'
    TabOrder = 1
    object tvList: TTreeView
      Left = 0
      Top = 0
      Width = 796
      Height = 555
      Align = alClient
      BorderStyle = bsNone
      HideSelection = False
      Images = dmPicters.ilCommonPictures
      Indent = 19
      PopupMenu = PopupMenu
      StateImages = dmPicters.ilTreeState
      TabOrder = 0
      OnClick = tvListClick
      OnExpanding = tvListExpanding
      Items.Data = {
        030000001A0000000000000000000000FFFFFFFFFFFFFFFF0000000004000000
        01311B0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000231
        311B0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000023132
        1B0000000000000000000000FFFFFFFFFFFFFFFF000000000000000002313319
        0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000001A000000
        000000000000000001000000FFFFFFFF000000000000000001321A0000001000
        00000000000002000000FFFFFFFF00000000000000000133}
    end
  end
  inherited paToolButton: TPanel
    Width = 800
    inherited tlbList: TToolBar
      Width = 242
    end
    inherited tlbExcel: TToolBar
      Left = 319
    end
    inherited tlbSeach: TToolBar
      Left = 353
      Width = 67
    end
    inherited tlbFilter: TToolBar
      Left = 420
      Width = 81
    end
    inherited tlbSelect: TToolBar
      Left = 501
      Width = 31
    end
  end
  inherited dsList: TDataSource
    Left = 264
    Top = 43
  end
  inherited odsList: TOracleDataSet
    Left = 228
    Top = 41
  end
end

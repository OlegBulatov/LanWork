inherited A10_LoadWizard_701: TA10_LoadWizard_701
  Width = 825
  Height = 588
  inherited Bevel: TBevel
    Top = 549
    Width = 825
  end
  inherited Panel1: TPanel
    Top = 551
    Width = 825
    inherited Panel3: TPanel
      Left = 574
    end
  end
  inherited PageControl: TPageControl
    Width = 825
    Height = 549
    inherited TabSheet1: TTabSheet
      inline Page1: TA10_LoadPage1_701
        Width = 817
        Height = 518
        Align = alClient
        inherited Bevel: TBevel
          Width = 817
        end
        inherited PanelStepCaption: TPanel
          Width = 817
        end
        inherited PanelStepBody: TPanel
          Width = 817
          Height = 466
          inherited Grid: TA10_LoadPage1_701Grid
            Width = 817
            Height = 395
            inherited xxxDBGrid: TxxxDBGrid
              Width = 817
              Height = 347
            end
            inherited paToolButton: TPanel
              Width = 817
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
              end
            end
            inherited Panel1: TPanel
              Top = 372
              Width = 817
            end
          end
          inherited Filters: TA10_LoadPage1_701Filters
            Width = 817
            inherited GroupBox1: TGroupBox
              Width = 817
              inherited Panel1: TPanel
                Width = 291
              end
            end
          end
        end
        inherited actList: TActionList
          inherited actReload: TAction
            OnExecute = Page1actReloadExecute
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TA10_LoadPage2_701
        Width = 817
        Height = 518
        Align = alClient
        inherited Bevel: TBevel
          Width = 817
        end
        inherited PanelStepCaption: TPanel
          Width = 817
        end
        inherited PanelStepBody: TPanel
          Width = 817
          Height = 466
          inherited Progress: TA10_LoadPage2_701Progress
            Width = 817
            Height = 466
            inherited Bevel1: TBevel
              Width = 797
            end
            inherited ProgressBar1: TGauge
              Width = 797
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'иру 3...'
      ImageIndex = 2
      inline Page3: TA10_LoadPage3_701
        Width = 817
        Height = 518
        Align = alClient
        inherited Bevel: TBevel
          Width = 817
        end
        inherited PanelStepCaption: TPanel
          Width = 817
        end
        inherited PanelStepBody: TPanel
          Width = 817
          Height = 466
          inherited Grid: TA10_LoadPage3_701Grid
            Width = 817
            Height = 466
            inherited xxxDBGrid: TxxxDBGrid
              Width = 817
              Height = 441
            end
            inherited paToolButton: TPanel
              Width = 817
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 148
    Top = 156
  end
end

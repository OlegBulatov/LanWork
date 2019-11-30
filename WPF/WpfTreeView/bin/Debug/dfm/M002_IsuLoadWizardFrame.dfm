inherited M002_IsuLoadWizard: TM002_IsuLoadWizard
  Width = 855
  Height = 653
  inherited Bevel: TBevel
    Top = 614
    Width = 855
  end
  inherited Panel1: TPanel
    Top = 616
    Width = 855
    inherited Panel3: TPanel
      Left = 604
    end
  end
  inherited PageControl: TPageControl
    Width = 855
    Height = 614
    ActivePage = TabSheet2
    OnChanging = PageControlChanging
    inherited TabSheet1: TTabSheet
      inline Page1: TM002_IsuLoadPage1
        Width = 847
        Height = 583
        Align = alClient
        inherited Bevel: TBevel
          Width = 847
        end
        inherited PanelStepCaption: TPanel
          Width = 847
        end
        inherited PanelStepBody: TPanel
          Width = 847
          Height = 531
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TM002_IsuLoadPage2
        Width = 847
        Height = 583
        Align = alClient
        inherited Bevel: TBevel
          Width = 847
        end
        inherited PanelStepCaption: TPanel
          Width = 847
        end
        inherited PanelStepBody: TPanel
          Width = 847
          Height = 531
          inherited Grid: TM002_IsuLoadPage2Grid
            Width = 847
            Height = 531
            inherited xxxDBGrid: TxxxDBGrid
              Width = 847
              Height = 392
            end
            inherited paToolButton: TPanel
              Width = 847
            end
            inherited paFilters: TPanel
              Width = 847
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 847
              inherited Panel1: TPanel
                Left = 820
              end
            end
          end
        end
        inherited actList: TActionList
          Left = 656
          Top = 104
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 656
    Top = 80
  end
end

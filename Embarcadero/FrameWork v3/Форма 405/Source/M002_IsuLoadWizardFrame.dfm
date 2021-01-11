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
    TabHeight = 4
    OnChanging = PageControlChanging
    OnResize = PageControlResize
    inherited TabSheet1: TTabSheet
      inline Page1: TM002_IsuLoadPage1
        Width = 847
        Height = 600
        Align = alClient
        inherited Bevel: TBevel
          Width = 847
        end
        inherited PanelStepCaption: TPanel
          Width = 847
        end
        inherited PanelStepBody: TPanel
          Width = 847
          Height = 548
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TM002_IsuLoadPage2
        Width = 847
        Height = 600
        Align = alClient
        inherited Bevel: TBevel
          Width = 847
        end
        inherited PanelStepCaption: TPanel
          Width = 847
        end
        inherited PanelStepBody: TPanel
          Width = 847
          Height = 548
          inherited Progress: TM002_IsuLoadPage2Progress
            Width = 847
            Height = 548
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      inline Page3: TM002_IsuLoadPage3
        Width = 847
        Height = 600
        Align = alClient
        inherited Bevel: TBevel
          Width = 847
        end
        inherited PanelStepCaption: TPanel
          Width = 847
        end
        inherited PanelStepBody: TPanel
          Width = 847
          Height = 548
          inherited Grid: TM002_IsuLoadPage3Grid
            Width = 847
            Height = 548
            inherited xxxDBGrid: TxxxDBGrid
              Width = 847
              Height = 409
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
      end
    end
  end
  object PanelShield: TPanel [3]
    Left = 328
    Top = 1
    Width = 185
    Height = 32
    BevelOuter = bvNone
    TabOrder = 2
  end
  inherited actList: TActionList
    Left = 656
    Top = 80
  end
end

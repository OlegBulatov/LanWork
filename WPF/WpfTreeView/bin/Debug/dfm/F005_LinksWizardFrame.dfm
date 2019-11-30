inherited F005_LinksWizard: TF005_LinksWizard
  inherited PageControl: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      inline Step1: TF005_LinksStep1
        Width = 618
        Height = 329
        Align = alClient
        inherited Bevel: TBevel
          Width = 618
        end
        inherited PanelStepCaption: TPanel
          Width = 618
        end
        inherited PanelStepBody: TPanel
          Width = 618
          Height = 277
          inherited Grid: TF005_LinksStep1Grid
            Width = 618
            Height = 277
            inherited xxxDBGrid: TxxxDBGrid
              Width = 618
              Height = 59
            end
            inherited paToolButton: TPanel
              Width = 618
            end
            inherited paFilters: TPanel
              Width = 618
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 618
              inherited Panel1: TPanel
                Left = 591
              end
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Step2: TF005_LinksStep2
        Width = 618
        Height = 329
        Align = alClient
        inherited Bevel: TBevel
          Width = 618
        end
        inherited PanelStepCaption: TPanel
          Width = 618
        end
        inherited PanelStepBody: TPanel
          Width = 618
          Height = 277
          inherited Grid: TF005_LinksStep2Grid
            Width = 618
            Height = 277
            inherited xxxDBGrid: TxxxDBGrid
              Width = 618
              Height = 231
            end
            inherited paToolButton: TPanel
              Width = 618
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 618
              inherited Panel1: TPanel
                Left = 591
              end
            end
          end
        end
      end
    end
  end
end

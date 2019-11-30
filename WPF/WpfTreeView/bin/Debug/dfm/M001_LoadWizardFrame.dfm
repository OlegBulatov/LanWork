inherited M001_LoadWizard: TM001_LoadWizard
  Width = 693
  Height = 470
  inherited Bevel: TBevel
    Top = 431
    Width = 693
  end
  inherited Panel1: TPanel
    Top = 433
    Width = 693
    inherited Panel3: TPanel
      Left = 442
    end
  end
  inherited PageControl: TPageControl
    Width = 693
    Height = 431
    OnChanging = PageControlChanging
    inherited TabSheet1: TTabSheet
      inline Page1: TM001_LoadPage1
        Width = 685
        Height = 400
        Align = alClient
        inherited Bevel: TBevel
          Width = 685
        end
        inherited PanelStepCaption: TPanel
          Width = 685
        end
        inherited PanelStepBody: TPanel
          Width = 685
          Height = 348
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TM001_LoadPage2
        Width = 685
        Height = 400
        Align = alClient
        inherited Bevel: TBevel
          Width = 685
        end
        inherited PanelStepCaption: TPanel
          Width = 685
        end
        inherited PanelStepBody: TPanel
          Width = 685
          Height = 348
          inherited Grid: TM001_LoadPage2Grid
            Width = 685
            Height = 348
            inherited xxxDBGrid: TxxxDBGrid
              Width = 685
              Height = 249
            end
            inherited paToolButton: TPanel
              Width = 685
            end
            inherited paFilters: TPanel
              Width = 685
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 685
              inherited Panel1: TPanel
                Left = 658
              end
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 472
    Top = 8
  end
end

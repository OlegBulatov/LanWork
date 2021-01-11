inherited F005_LoadWizard: TF005_LoadWizard
  Width = 577
  Height = 323
  inherited Bevel: TBevel
    Top = 284
    Width = 577
  end
  inherited Panel1: TPanel
    Top = 286
    Width = 577
    inherited Panel3: TPanel
      Left = 326
    end
  end
  inherited PageControl: TPageControl
    Width = 577
    Height = 284
    inherited TabSheet1: TTabSheet
      inline Page1: TF005_LoadPage1
        Width = 569
        Height = 253
        Align = alClient
        inherited Bevel: TBevel
          Width = 569
        end
        inherited PanelStepCaption: TPanel
          Width = 569
        end
        inherited PanelStepBody: TPanel
          Width = 569
          Height = 201
        end
        inherited actList: TActionList
          Left = 536
          Top = 8
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TF005_LoadPage2
        Width = 569
        Height = 253
        Align = alClient
        inherited Bevel: TBevel
          Width = 569
        end
        inherited PanelStepCaption: TPanel
          Width = 569
        end
        inherited PanelStepBody: TPanel
          Width = 569
          Height = 201
          inherited Grid: TF005_LoadPage2Grid
            Width = 569
            Height = 201
            inherited xxxDBGrid: TxxxDBGrid
              Width = 569
              Height = 120
            end
            inherited paToolButton: TPanel
              Width = 569
            end
            inherited GroupBox1: TPanel
              Top = 178
              Width = 569
            end
            inherited paFilters: TPanel
              Width = 569
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 448
    Top = 248
  end
end

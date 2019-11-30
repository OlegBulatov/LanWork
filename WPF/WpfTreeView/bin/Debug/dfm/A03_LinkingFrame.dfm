inherited A03_Linking: TA03_Linking
  Width = 1014
  Height = 517
  inherited Bevel: TBevel
    Top = 478
    Width = 1014
  end
  inherited Panel1: TPanel
    Top = 480
    Width = 1014
    inherited Panel3: TPanel
      Left = 763
    end
  end
  inherited PageControl: TPageControl
    Width = 1014
    Height = 478
    inherited TabSheet1: TTabSheet
      inline Page1: TA03_LinkingPage1
        Width = 1006
        Height = 447
        Align = alClient
        inherited Bevel: TBevel
          Width = 1006
        end
        inherited PanelStepCaption: TPanel
          Width = 1006
        end
        inherited PanelStepBody: TPanel
          Width = 1006
          Height = 395
          inherited Grid: TA03_LinkingPage1Grid
            Width = 1006
            Height = 395
            inherited xxxDBGrid: TxxxDBGrid
              Width = 1006
              Height = 293
            end
            inherited paToolButton: TPanel
              Width = 1006
            end
            inherited Panel1: TPanel
              Width = 1006
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TA03_LinkingPage2
        Width = 1006
        Height = 447
        Align = alClient
        inherited Bevel: TBevel
          Width = 1006
        end
        inherited PanelStepCaption: TPanel
          Width = 1006
        end
        inherited PanelStepBody: TPanel
          Width = 1006
          Height = 395
          inherited Grid: TA03_LinkingPage2Grid
            Width = 1006
            Height = 395
            inherited xxxDBGrid: TxxxDBGrid
              Width = 1006
              Height = 370
            end
            inherited paToolButton: TPanel
              Width = 1006
            end
          end
        end
      end
    end
  end
end

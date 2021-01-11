inherited J002_LoadWizard: TJ002_LoadWizard
  Width = 782
  Height = 547
  inherited Bevel: TBevel
    Top = 508
    Width = 782
  end
  inherited Panel1: TPanel
    Top = 510
    Width = 782
    inherited Panel3: TPanel
      Left = 531
    end
  end
  inherited PageControl: TPageControl
    Width = 782
    Height = 508
    inherited TabSheet1: TTabSheet
      inline Page1: TJ002_LoadPage1
        Width = 774
        Height = 477
        Align = alClient
        inherited Bevel: TBevel
          Width = 774
        end
        inherited PanelStepCaption: TPanel
          Width = 774
        end
        inherited PanelStepBody: TPanel
          Width = 774
          Height = 425
          inherited Filters: TPanel
            Width = 774
            inherited GroupBox1: TGroupBox
              inherited Button1: TButton
                Action = Grid.actRefresh
              end
            end
          end
          inherited Grid: TJ002_LoadPage1Grid
            Width = 774
            Height = 336
            inherited xxxDBGrid: TxxxDBGrid
              Width = 774
              Height = 267
            end
            inherited paToolButton: TPanel
              Width = 774
            end
            inherited Panel1: TPanel
              Top = 313
              Width = 774
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 774
              inherited Panel1: TPanel
                Left = 747
              end
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TJ002_LoadPage2
        Width = 774
        Height = 477
        Align = alClient
        inherited Bevel: TBevel
          Width = 774
        end
        inherited PanelStepCaption: TPanel
          Width = 774
        end
        inherited PanelStepBody: TPanel
          Width = 774
          Height = 425
          inherited Progress: TJ002_LoadPage2Progress
            Width = 774
            Height = 425
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'иру 3'
      ImageIndex = 2
      inline Page3: TJ002_LoadPage3
        Width = 774
        Height = 477
        Align = alClient
        inherited Bevel: TBevel
          Width = 774
        end
        inherited PanelStepCaption: TPanel
          Width = 774
        end
        inherited PanelStepBody: TPanel
          Width = 774
          Height = 425
          inherited Grid: TJ002_LoadPage3Grid
            Width = 774
            Height = 425
            inherited xxxDBGrid: TxxxDBGrid
              Width = 774
              Height = 379
            end
            inherited paToolButton: TPanel
              Width = 774
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 774
              inherited Panel1: TPanel
                Left = 747
              end
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 584
    Top = 112
  end
end

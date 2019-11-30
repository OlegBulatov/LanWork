inherited F005_LoadWizard_a: TF005_LoadWizard_a
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
    ActivePage = TabSheet3
    inherited TabSheet1: TTabSheet
      inline Page1: TF005_LoadPage1a
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
          inherited Grid: TF005_LoadPage1aGrid
            Width = 774
            Height = 336
            inherited xxxDBGrid: TxxxDBGrid
              Width = 774
              Height = 288
            end
            inherited paToolButton: TPanel
              Width = 774
            end
            inherited Panel1: TPanel
              Top = 313
              Width = 774
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TF005_LoadPage2a
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
          inherited Progress: TF005_LoadPage2aProgress
            Width = 774
            Height = 425
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'иру 3'
      ImageIndex = 2
      inline Page3: TF005_LoadPage3a
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
          inherited Grid: TF005_LoadPage3aGrid
            Width = 774
            Height = 425
            inherited xxxDBGrid: TxxxDBGrid
              Width = 774
              Height = 400
            end
            inherited paToolButton: TPanel
              Width = 774
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

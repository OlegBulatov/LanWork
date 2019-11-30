inherited A09_LoadWizard: TA09_LoadWizard
  Width = 871
  Height = 561
  inherited Bevel: TBevel
    Top = 522
    Width = 871
  end
  inherited Panel1: TPanel
    Top = 524
    Width = 871
    inherited Panel3: TPanel
      Left = 620
    end
  end
  inherited PageControl: TPageControl
    Width = 871
    Height = 522
    inherited TabSheet1: TTabSheet
      inline Page1: TA09_LoadPage1
        Width = 863
        Height = 491
        Align = alClient
        inherited Bevel: TBevel
          Width = 863
        end
        inherited PanelStepCaption: TPanel
          Width = 863
        end
        inherited PanelStepBody: TPanel
          Width = 863
          Height = 439
          inherited Filters: TA09_LoadPage1Filter
            Width = 863
            inherited GroupBox1: TGroupBox
              Width = 863
              inherited Panel1: TPanel
                Width = 336
                inherited Button1: TButton
                  Action = Grid.actRefresh
                end
              end
            end
          end
          inherited Grid: TA09_LoadPage1Grid
            Width = 863
            Height = 367
            inherited xxxDBGrid: TxxxDBGrid
              Width = 863
              Height = 319
            end
            inherited paToolButton: TPanel
              Width = 863
            end
            inherited Panel1: TPanel
              Top = 344
              Width = 863
            end
            inherited actList: TActionList
              Left = 20
              Top = 156
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TA09_LoadPage2
        Width = 863
        Height = 491
        Align = alClient
        inherited Bevel: TBevel
          Width = 863
        end
        inherited PanelStepCaption: TPanel
          Width = 863
        end
        inherited PanelStepBody: TPanel
          Width = 863
          Height = 439
          inherited Progress: TA09_LoadPage2Progress
            Width = 863
            Height = 439
            inherited Bevel1: TBevel
              Width = 944
            end
            inherited ProgressBar1: TGauge
              Width = 944
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'иру 3 ...'
      ImageIndex = 2
      inline Page3: TA09_LoadPage3
        Width = 863
        Height = 491
        Align = alClient
        inherited Bevel: TBevel
          Width = 863
        end
        inherited PanelStepCaption: TPanel
          Width = 863
        end
        inherited PanelStepBody: TPanel
          Width = 863
          Height = 439
          inherited Grid: TA09_LoadPage3Grid
            Width = 863
            Height = 439
            inherited xxxDBGrid: TxxxDBGrid
              Width = 863
              Height = 414
            end
            inherited paToolButton: TPanel
              Width = 863
            end
          end
        end
      end
    end
  end
end

inherited B004_Wizard: TB004_Wizard
  Width = 774
  Height = 559
  inherited Bevel: TBevel
    Top = 520
    Width = 774
  end
  inherited Panel1: TPanel
    Top = 522
    Width = 774
    inherited Panel3: TPanel
      Left = 523
    end
  end
  inherited PageControl: TPageControl
    Width = 774
    Height = 520
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      inline B004_Step011: TB004_Step01
        Width = 766
        Height = 489
        Align = alClient
        inherited Bevel: TBevel
          Width = 766
        end
        inherited PanelStepCaption: TPanel
          Width = 766
        end
        inherited PanelStepBody: TPanel
          Width = 766
          Height = 437
          inherited B004_Issuers1: TB004_Issuers
            Width = 766
            Height = 437
            inherited xxxDBGrid: TxxxDBGrid
              Width = 766
              Height = 238
            end
            inherited paToolButton: TPanel
              Width = 766
            end
            inherited paFilter: TPanel
              Width = 766
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 766
              inherited Panel1: TPanel
                Left = 739
              end
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline B004_Step021: TB004_Step02
        Width = 766
        Height = 489
        Align = alClient
        inherited Bevel: TBevel
          Width = 766
        end
        inherited PanelStepCaption: TPanel
          Width = 766
        end
        inherited PanelStepBody: TPanel
          Width = 766
          Height = 437
          inherited B004_Emissions1: TB004_Emissions
            Width = 766
            Height = 437
            inherited xxxDBGrid: TxxxDBGrid
              Width = 766
              Height = 391
            end
            inherited paToolButton: TPanel
              Width = 766
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 766
              inherited Panel1: TPanel
                Left = 739
              end
            end
          end
        end
      end
    end
  end
end

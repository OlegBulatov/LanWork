inherited E001_Wizard: TE001_Wizard
  Width = 960
  Height = 709
  inherited Bevel: TBevel
    Top = 670
    Width = 960
  end
  inherited Panel1: TPanel
    Top = 672
    Width = 960
    inherited Panel3: TPanel
      Left = 709
    end
  end
  inherited PageControl: TPageControl
    Width = 960
    Height = 670
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      inline E001_Step011: TE001_Step01
        Width = 952
        Height = 639
        Align = alClient
        inherited Bevel: TBevel
          Width = 952
        end
        inherited PanelStepCaption: TPanel
          Width = 952
        end
        inherited PanelStepBody: TPanel
          Width = 952
          Height = 587
          inherited Panel1: TPanel
            Width = 952
          end
          inherited Panel2: TPanel
            Width = 952
          end
          inherited Panel3: TPanel
            Width = 952
          end
          inherited E001_LogMIP1: TE001_LogMIP
            Width = 952
            Height = 292
            inherited Splitter1: TSplitter
              Width = 935
            end
            inherited xxxDBGrid: TxxxDBGrid
              Width = 935
            end
            inherited paToolButton: TPanel
              Width = 935
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 935
              inherited Panel1: TPanel
                Left = 908
              end
            end
            inherited Panel1: TPanel
              Width = 935
            end
            inherited Panel2: TPanel
              Width = 935
            end
          end
          inherited Panel4: TPanel
            Width = 952
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline E001_Step021: TE001_Step02
        Width = 952
        Height = 639
        Align = alClient
        inherited Bevel: TBevel
          Width = 952
        end
        inherited PanelStepCaption: TPanel
          Width = 952
        end
        inherited PanelStepBody: TPanel
          Width = 952
          Height = 587
          inherited E001_Remains1: TE001_Remains
            Width = 952
            Height = 587
            inherited xxxDBGrid: TxxxDBGrid
              Width = 952
              Height = 510
            end
            inherited paToolButton: TPanel
              Width = 952
            end
            inherited paFilter: TPanel
              Width = 952
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 952
              inherited Panel1: TPanel
                Left = 925
              end
            end
          end
        end
      end
    end
  end
end

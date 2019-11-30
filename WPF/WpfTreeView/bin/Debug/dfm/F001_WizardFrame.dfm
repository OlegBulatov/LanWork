inherited F001_Wizard: TF001_Wizard
  inherited PageControl: TPageControl
    inherited TabSheet1: TTabSheet
      inline F001_Step011: TF001_Step01
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
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline F001_Step021: TF001_Step02
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
          inherited F001_Files1: TF001_Files
            Width = 618
            Height = 277
            inherited xxxDBGrid: TxxxDBGrid
              Width = 618
              Height = 229
            end
            inherited paToolButton: TPanel
              Width = 618
            end
            inherited GroupBox1: TPanel
              Top = 254
              Width = 618
            end
          end
        end
      end
    end
  end
end

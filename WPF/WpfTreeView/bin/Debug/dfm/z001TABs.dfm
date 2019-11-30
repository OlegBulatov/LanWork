inherited z001TABs_frame: Tz001TABs_frame
  Width = 956
  Height = 685
  inherited Bevel: TBevel
    Top = 646
    Width = 956
  end
  inherited Panel1: TPanel
    Top = 648
    Width = 956
    inherited Panel3: TPanel
      Left = 705
    end
  end
  inherited PageControl: TPageControl
    Width = 956
    Height = 646
    inherited TabSheet1: TTabSheet
      inline z001_wp1frame1: Tz001_wp1frame
        Width = 948
        Height = 615
        Align = alClient
        inherited Bevel: TBevel
          Width = 948
        end
        inherited PanelStepCaption: TPanel
          Width = 948
        end
        inherited PanelStepBody: TPanel
          Width = 948
          Height = 563
          inherited z001_p1_frame1: Tz001_p1_frame
            Width = 948
            Height = 563
            inherited xxxDBGrid: TxxxDBGrid
              Width = 948
              Height = 492
              OnDblClick = z001_p1_frame1xxxDBGridDblClick
            end
            inherited paToolButton: TPanel
              Width = 948
            end
            inherited paTop: TPanel
              Width = 948
            end
            inherited PopupMenu: TPopupMenu
              inherited mLoad: TMenuItem
                inherited mLoad1: TMenuItem
                  Action = z001_wp1frame1.actLoadKO
                end
                inherited mLoad2: TMenuItem
                  Action = z001_wp1frame1.actLoadKOS
                end
              end
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline z001_wp21: Tz001_wp2
        Width = 948
        Height = 615
        Align = alClient
        inherited Bevel: TBevel
          Width = 948
        end
        inherited PanelStepCaption: TPanel
          Width = 948
        end
        inherited PanelStepBody: TPanel
          Width = 948
          Height = 563
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      inline z001_wp3_frame1: Tz001_wp3_frame
        Width = 948
        Height = 615
        Align = alClient
        inherited Bevel: TBevel
          Width = 948
        end
        inherited PanelStepCaption: TPanel
          Width = 948
        end
        inherited PanelStepBody: TPanel
          Width = 948
          Height = 563
          inherited z001_p4_frame1: Tz001_p4_frame
            Width = 948
            Height = 519
            inherited xxxDBGrid: TxxxDBGrid
              Width = 948
              Height = 462
            end
            inherited paToolButton: TPanel
              Width = 948
            end
            inherited Panel1: TPanel
              Width = 948
            end
          end
          inherited Panel1: TPanel
            Top = 519
            Width = 948
          end
        end
      end
    end
  end
end

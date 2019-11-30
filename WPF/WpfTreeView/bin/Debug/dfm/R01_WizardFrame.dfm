inherited R01_Wizard: TR01_Wizard
  Width = 1007
  Height = 826
  inherited Bevel: TBevel
    Top = 787
    Width = 1007
  end
  inherited Panel1: TPanel
    Top = 789
    Width = 1007
    inherited Panel3: TPanel
      Left = 756
    end
  end
  inherited PageControl: TPageControl
    Width = 1007
    Height = 787
    ActivePage = TabSheet3
    OnChanging = PageControlChanging
    inherited TabSheet1: TTabSheet
      inline R01_Step011: TR01_Step01
        Width = 999
        Height = 756
        Align = alClient
        inherited Bevel: TBevel
          Width = 999
        end
        inherited PanelStepCaption: TPanel
          Width = 999
        end
        inherited PanelStepBody: TPanel
          Width = 999
          Height = 704
          inherited R01_Issuers1: TR01_Issuers
            Width = 999
            Height = 704
            inherited xxxDBGrid: TxxxDBGrid
              Width = 999
              Height = 579
            end
            inherited paToolButton: TPanel
              Width = 999
            end
            inherited Panel1: TPanel
              Width = 999
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet [1]
      Caption = 'Ўаг2...'
      ImageIndex = 2
      inline R01_Step021: TR01_Step02
        Width = 999
        Height = 756
        Align = alClient
        inherited Bevel: TBevel
          Width = 999
        end
        inherited PanelStepCaption: TPanel
          Width = 999
        end
        inherited PanelStepBody: TPanel
          Width = 999
          Height = 704
          inherited R01_DivCheck1: TR01_DivCheck
            Width = 999
            Height = 704
            inherited xxxDBGrid: TxxxDBGrid
              Width = 999
              Height = 568
            end
            inherited paToolButton: TPanel
              Width = 999
            end
            inherited paHideClosed: TPanel
              Top = 683
              Width = 999
            end
            inherited GroupBox1: TGroupBox
              Width = 999
            end
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      Caption = 'Ўаг 3...'
      inline R01_Step031: TR01_Step03
        Width = 999
        Height = 756
        Align = alClient
        inherited Bevel: TBevel
          Width = 999
        end
        inherited PanelStepCaption: TPanel
          Width = 999
          inherited Label1: TLabel
            Caption = 'Ўаг 3 - —в€зывание объ€влений и платежей'
          end
        end
        inherited PanelStepBody: TPanel
          Width = 999
          Height = 704
          inherited R01_Link1: TR01_Link
            Width = 999
            Height = 704
            inherited Splitter1: TSplitter
              Height = 704
            end
            inherited PageControl1: TPageControl
              Height = 704
              inherited tsDiv: TTabSheet
                inherited R01_Dividens1: TR01_Dividens
                  Height = 676
                  inherited paTreeParent: TPanel
                    Height = 551
                    inherited tvList: TTreeView
                      Height = 530
                    end
                  end
                  inherited paDivDetail: TPanel
                    Top = 576
                  end
                end
              end
            end
            inherited PageControl2: TPageControl
              Width = 769
              Height = 704
              inherited tsOpers: TTabSheet
                inherited R01_Opers1: TR01_Opers
                  Width = 761
                  Height = 676
                  inherited xxxDBGrid: TxxxDBGrid
                    Width = 761
                    Height = 519
                  end
                  inherited paToolButton: TPanel
                    Width = 761
                  end
                  inherited paLink: TPanel
                    Top = 576
                    Width = 761
                    inherited fmCheckBox1: TfmCheckBox
                      Left = 625
                    end
                  end
                  inherited paFilter: TPanel
                    Width = 761
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

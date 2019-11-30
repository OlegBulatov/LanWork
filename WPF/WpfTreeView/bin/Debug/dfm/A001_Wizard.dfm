inherited fmWizard1: TfmWizard1
  Width = 1041
  Height = 690
  inherited Bevel: TBevel
    Top = 651
    Width = 1041
  end
  inherited Panel1: TPanel
    Top = 653
    Width = 1041
    inherited Panel3: TPanel
      Left = 790
    end
  end
  inherited PageControl: TPageControl
    Width = 1041
    Height = 651
    ActivePage = TabSheet3
    inherited TabSheet1: TTabSheet
      inline fmWizardPage11: TfmWizardPage1
        Width = 1033
        Height = 620
        Align = alClient
        inherited Bevel: TBevel
          Width = 1033
        end
        inherited PanelStepCaption: TPanel
          Width = 1033
        end
        inherited PanelStepBody: TPanel
          Width = 1033
          Height = 568
        end
        inherited actList: TActionList
          Left = 368
          Top = 104
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inline fmWizardPage21: TfmWizardPage2
        Width = 1033
        Height = 620
        Align = alClient
        inherited Bevel: TBevel
          Width = 1033
        end
        inherited PanelStepCaption: TPanel
          Width = 1033
        end
        inherited PanelStepBody: TPanel
          Width = 1033
          Height = 568
          inherited fmGrid_PreviewFile1: TfmGrid_PreviewFile
            Width = 1033
            Height = 568
            inherited xxxDBGrid: TxxxDBGrid
              Width = 1033
              Height = 502
            end
            inherited paToolButton: TPanel
              Width = 1033
              inherited tlbList: TToolBar
                Width = 242
              end
              inherited tlbExcel: TToolBar
                Left = 319
              end
              inherited tlbSeach: TToolBar
                Left = 353
                Width = 67
              end
              inherited tlbFilter: TToolBar
                Left = 420
                Width = 81
              end
              inherited tlbSelect: TToolBar
                Left = 501
                Width = 31
              end
            end
            inherited Panel1: TPanel
              Width = 1033
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'иру 3...'
      ImageIndex = 2
      inline fmWizardPage31: TfmWizardPage3
        Width = 1033
        Height = 620
        Align = alClient
        inherited Bevel: TBevel
          Width = 1033
        end
        inherited PanelStepCaption: TPanel
          Width = 1033
        end
        inherited PanelStepBody: TPanel
          Width = 1033
          Height = 568
          inherited fm_ExcelData1: Tfm_ExcelData
            Width = 1033
            Height = 568
            inherited xxxDBGrid: TxxxDBGrid
              Width = 1033
              Height = 543
            end
            inherited paToolButton: TPanel
              Width = 1033
            end
          end
        end
      end
    end
  end
end

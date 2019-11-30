inherited R01_Step03: TR01_Step03
  Width = 990
  Height = 819
  inherited Bevel: TBevel
    Width = 990
  end
  inherited PanelStepCaption: TPanel
    Width = 990
    inherited Label1: TLabel
      Width = 267
      Caption = 'Шаг 2 - Связывание объявлений и платежей'
    end
    inherited Label2: TLabel
      Width = 326
      Caption = 'Выберите собственника, платежи и нажмите кнопку "Связать".'
    end
    object lbIssuer: TLabel
      Left = 733
      Top = 17
      Width = 36
      Height = 13
      Caption = 'lbIssuer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbPeriod: TLabel
      Left = 733
      Top = 33
      Width = 38
      Height = 13
      Caption = 'lbPeriod'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbType: TLabel
      Left = 733
      Top = 1
      Width = 32
      Height = 13
      Caption = 'lbType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 668
      Top = 33
      Width = 58
      Height = 13
      Caption = 'Выплаты:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 668
      Top = 17
      Width = 55
      Height = 13
      Caption = 'Эмитент:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 668
      Top = 1
      Width = 27
      Height = 13
      Caption = 'Тип:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited PanelStepBody: TPanel
    Width = 990
    Height = 767
    inline R01_Link1: TR01_Link
      Width = 990
      Height = 767
      Align = alClient
      inherited Splitter1: TSplitter
        Height = 767
      end
      inherited PageControl1: TPageControl
        Height = 767
        inherited tsDiv: TTabSheet
          inherited R01_Dividens1: TR01_Dividens
            Height = 739
            inherited paTreeParent: TPanel
              Height = 614
              inherited tvList: TTreeView
                Height = 593
              end
            end
            inherited paDivDetail: TPanel
              Top = 639
            end
          end
        end
      end
      inherited PageControl2: TPageControl
        Width = 760
        Height = 767
        inherited tsOpers: TTabSheet
          inherited R01_Opers1: TR01_Opers
            Width = 752
            Height = 739
            inherited xxxDBGrid: TxxxDBGrid
              Width = 752
              Height = 582
            end
            inherited paToolButton: TPanel
              Width = 752
            end
            inherited paLink: TPanel
              Top = 639
              Width = 752
              inherited fmCheckBox1: TfmCheckBox
                Left = 616
              end
            end
            inherited paFilter: TPanel
              Width = 752
            end
          end
        end
      end
    end
  end
end

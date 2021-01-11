inherited A006_0_PT: TA006_0_PT
  Left = 128
  Top = 100
  Width = 871
  Height = 690
  Caption = 'A006_0_PT'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 619
    Width = 863
    Height = 37
    Align = alBottom
    TabOrder = 0
    object Panel3: TPanel
      Left = 680
      Top = 1
      Width = 182
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object OKBtn: TButton
        Left = 14
        Top = 5
        Width = 75
        Height = 23
        Action = actBack
        TabOrder = 0
      end
      object CancelBtn: TButton
        Left = 90
        Top = 5
        Width = 75
        Height = 23
        Action = actNext
        Cancel = True
        TabOrder = 1
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 863
    Height = 619
    ActivePage = Tab2
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl1Changing
    object Tab1: TTabSheet
      Caption = 'Шаг 1'
      ImageIndex = 3
      inline fm21SepDescription1: Tfm21SepDescription
        Width = 855
        Align = alTop
        TabOrder = 1
        inherited Bevel1: TBevel
          Width = 855
        end
        inherited Panel1: TPanel
          Width = 855
          inherited Label1: TLabel
            Width = 454
            Caption = 
              'Выберите поля, укажите параметры для фильтрации данных и нажмите' +
              ' кнопку "Далее".'
          end
        end
        inherited Panel2: TPanel
          Width = 855
          inherited Label3: TLabel
            Width = 340
            Caption = 'Шаг 1 - Выбор полей для отображения в сводном отчете'
          end
          inherited Label4: TLabel
            Width = 281
            Caption = 'Какие поля необходимо отобразить в сводном отчете?'
          end
          inherited lblDesc1: TLabel
            Left = 791
          end
          inherited lblDesc2: TLabel
            Left = 791
          end
        end
      end
      inline A006_1_PTSettings: TA006_1_PTSettings
        Top = 89
        Width = 855
        Height = 502
        Align = alClient
        inherited Splitter1: TSplitter
          Height = 502
        end
        inherited paMain: TPanel
          Width = 600
          Height = 502
          inherited xxxDBGrid: TxxxDBGrid
            Width = 600
            Height = 437
          end
          inherited fmSeach: TfmSeachFrame
            Width = 600
            inherited Panel1: TPanel
              Left = 573
            end
          end
          inherited fm31_Filter: Tfm31_Filter
            Width = 600
            inherited Panel1: TPanel
              Left = 573
            end
          end
          inherited paTopToolBar: TPanel
            Width = 600
          end
        end
        inherited paSettings: TPanel
          Width = 600
          Height = 502
          inherited Splitter2: TSplitter
            Width = 600
          end
          inherited pcFilter: TPageControl
            Width = 600
            Height = 220
            inherited tsFilter: TTabSheet
              inherited A006_FilterList1: TA006_FilterList
                Width = 592
                Height = 192
                inherited paMain: TPanel
                  Width = 592
                  Height = 192
                  inherited xxxDBGrid: TxxxDBGrid
                    Width = 592
                    Height = 127
                  end
                  inherited fmSeach: TfmSeachFrame
                    Width = 592
                    inherited Panel1: TPanel
                      Left = 565
                    end
                  end
                  inherited fm31_Filter: Tfm31_Filter
                    Width = 592
                    inherited Panel1: TPanel
                      Left = 565
                    end
                  end
                  inherited paTopToolBar: TPanel
                    Width = 592
                  end
                end
              end
            end
          end
          inherited pcSelectedFields: TPageControl
            Width = 600
            inherited tsSelected: TTabSheet
              inherited A006_SelectedFields1: TA006_SelectedFields
                Width = 592
                inherited paMain: TPanel
                  Width = 592
                  inherited xxxDBGrid: TxxxDBGrid
                    Width = 592
                  end
                  inherited fmSeach: TfmSeachFrame
                    Width = 592
                    inherited Panel1: TPanel
                      Left = 565
                    end
                  end
                  inherited fm31_Filter: Tfm31_Filter
                    Width = 592
                    inherited Panel1: TPanel
                      Left = 565
                    end
                  end
                  inherited paTopToolBar: TPanel
                    Width = 592
                  end
                end
              end
            end
          end
        end
        inherited PageControl1: TPageControl
          Height = 502
          inherited tsMenu: TTabSheet
            inherited A006_FieldsList1: TA006_FieldsList
              Height = 474
              inherited tvMenu: TTreeView
                Height = 451
              end
            end
          end
        end
      end
    end
    object Tab2: TTabSheet
      Caption = 'Шаг 2'
      ImageIndex = 2
      inline fm21SepDescription2: Tfm21SepDescription
        Width = 855
        Align = alTop
        inherited Bevel1: TBevel
          Width = 855
        end
        inherited Panel1: TPanel
          Width = 855
          inherited Label1: TLabel
            Width = 239
            Caption = 'Для эксопрта данных нажмите кнопку "Excel".'
          end
        end
        inherited Panel2: TPanel
          Width = 855
          inherited Label3: TLabel
            Width = 153
            Caption = 'Шаг 2 - Просмотр данных'
          end
          inherited Label4: TLabel
            Width = 258
            Caption = 'Шаг 2 - Просмотр данных перед экспортом в Excel'
          end
          inherited lblDesc1: TLabel
            Left = 791
          end
          inherited lblDesc2: TLabel
            Left = 791
          end
        end
      end
      inline A006_2_PTData1: TA006_2_PTData
        Top = 89
        Width = 855
        Height = 502
        Align = alClient
        TabOrder = 1
        inherited paMain: TPanel
          Width = 855
          Height = 502
          inherited xxxDBGrid: TxxxDBGrid
            Width = 855
            Height = 417
          end
          inherited fmSeach: TfmSeachFrame
            Width = 855
            inherited Panel1: TPanel
              Left = 828
            end
          end
          inherited fm31_Filter: Tfm31_Filter
            Width = 855
            inherited Panel1: TPanel
              Left = 828
            end
          end
          inherited paTopToolBar: TPanel
            Width = 855
          end
          inherited Panel1: TPanel
            Top = 482
            Width = 855
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 492
    Top = 160
    object actBack: TAction
      Caption = '< Назад'
      OnExecute = actBackExecute
      OnUpdate = actBackUpdate
    end
    object actNext: TAction
      Caption = 'Далее >'
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
  end
end

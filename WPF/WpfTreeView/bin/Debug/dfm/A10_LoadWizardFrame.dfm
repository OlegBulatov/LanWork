inherited A10_LoadWizard: TA10_LoadWizard
  Width = 858
  Height = 538
  inherited Bevel: TBevel
    Top = 499
    Width = 858
  end
  inherited Panel1: TPanel
    Top = 501
    Width = 858
    inherited Panel3: TPanel
      Left = 607
    end
  end
  inherited PageControl: TPageControl
    Width = 858
    Height = 499
    OnChanging = PageControlChanging
    inherited TabSheet1: TTabSheet
      object Label1: TLabel
        Left = 805
        Top = 64
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
      inline Page1: TA10_LoadPage1
        Width = 850
        Height = 468
        Align = alClient
        inherited Bevel: TBevel
          Width = 850
        end
        inherited PanelStepCaption: TPanel
          Width = 850
          inherited sbReload: TSpeedButton
            OnMouseMove = Page1sbReloadMouseMove
          end
        end
        inherited PanelStepBody: TPanel
          Width = 850
          Height = 416
          inherited Grid: TA10_LoadPage1Grid
            Width = 850
            Height = 343
            inherited xxxDBGrid: TxxxDBGrid
              Width = 850
              Height = 274
            end
            inherited paToolButton: TPanel
              Width = 850
            end
            inherited Panel1: TPanel
              Top = 320
              Width = 850
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 850
              inherited Panel1: TPanel
                Left = 823
              end
            end
            inherited oqCount: TOracleQuery
              Top = 132
            end
          end
          inherited Filters: TA10_LoadPage1Filters
            Width = 850
            inherited GroupBox1: TGroupBox
              Width = 850
              inherited Panel1: TPanel
                Width = 324
                inherited Button1: TButton
                  Action = Grid.actRefresh
                end
              end
            end
          end
        end
        inherited actList: TActionList
          inherited actReload: TAction
            OnExecute = Page1actReloadExecute
          end
        end
      end
      object Button3: TButton
        Left = 536
        Top = 96
        Width = 281
        Height = 25
        Caption = 'Эмуляция Создания Корректироовочного Отчёта'
        TabOrder = 1
        Visible = False
        OnClick = Button3Click
      end
    end
    inherited TabSheet2: TTabSheet
      inline Page2: TA10_LoadPage2
        Width = 850
        Height = 468
        Align = alClient
        inherited Bevel: TBevel
          Width = 850
        end
        inherited PanelStepCaption: TPanel
          Width = 850
        end
        inherited PanelStepBody: TPanel
          Width = 850
          Height = 416
          inherited Progress: TA10_LoadPage2Progress
            Width = 850
            Height = 416
            inherited Bevel1: TBevel
              Width = 830
            end
            inherited ProgressBar1: TGauge
              Width = 830
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Шаг 3...'
      ImageIndex = 2
      inline Page3: TA10_LoadPage3
        Width = 850
        Height = 468
        Align = alClient
        inherited Bevel: TBevel
          Width = 850
        end
        inherited PanelStepCaption: TPanel
          Width = 850
        end
        inherited PanelStepBody: TPanel
          Width = 850
          Height = 416
          inherited Grid: TA10_LoadPage3Grid
            Width = 850
            Height = 416
            inherited xxxDBGrid: TxxxDBGrid
              Width = 850
              Height = 370
            end
            inherited paToolButton: TPanel
              Width = 850
              inherited tlbList: TToolBar
                Width = 245
              end
              inherited tlbExcel: TToolBar
                Left = 322
              end
              inherited tlbSeach: TToolBar
                Left = 356
                Width = 71
              end
              inherited tlbFilter: TToolBar
                Left = 427
                Width = 96
              end
              inherited tlbSelect: TToolBar
                Left = 523
                Width = 35
              end
            end
            inherited fm031_Filter1: Tfm031_Filter
              Width = 850
              inherited Panel1: TPanel
                Left = 823
              end
            end
          end
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 524
    Top = 236
  end
  object OqPseudoLoad: TOracleQuery
    SQL.Strings = (
      'begin'
      '  p_cr_data ( p_dl => :p_dl );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000050000003A505F444C050000000000000000000000}
    Left = 756
    Top = 251
  end
  object OqPseudoLoaddit: TOracleQuery
    SQL.Strings = (
      'begin'
      '  p_cr_data ( p_dl => :p_dl );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000050000003A505F444C050000000000000000000000}
    Left = 748
    Top = 299
  end
  object oqDel: TOracleQuery
    SQL.Strings = (
      'begin'
      'p_del_data;'
      'end;')
    Session = dmMain.OracleSession
    Left = 604
    Top = 371
  end
  object oqShiftData: TOracleQuery
    SQL.Strings = (
      'begin'
      'p_shiftCGI;'
      'end;')
    Session = dmMain.OracleSession
    Left = 644
    Top = 307
  end
end

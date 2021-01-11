inherited z001_wp3_frame: Tz001_wp3_frame
  Width = 1016
  Height = 539
  inherited Bevel: TBevel
    Width = 1016
  end
  inherited PanelStepCaption: TPanel
    Width = 1016
    inherited Label1: TLabel
      Width = 382
      Caption = 'Шаг 3 - Просмотр операций и действий над ними при загрузке '
    end
    inherited Label2: TLabel
      Width = 135
      Caption = '"Далее - возврат на Шаг 1'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 1016
    Height = 487
    inline z001_p4_frame1: Tz001_p4_frame
      Height = 443
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Height = 365
      end
      inherited paToolButton: TPanel
        inherited tlbSelect: TToolBar
          inherited ToolButton2: TToolButton
            Visible = True
          end
        end
      end
      inherited pmFilter: TPopupMenu
        Left = 320
        Top = 80
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 443
      Width = 1016
      Height = 44
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 1
      inline SumDataSEC: TSumData
        Left = -1
        Width = 1079
      end
    end
  end
end

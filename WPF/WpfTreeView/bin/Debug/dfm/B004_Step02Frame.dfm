inherited B004_Step02: TB004_Step02
  Width = 735
  Height = 525
  inherited Bevel: TBevel
    Width = 735
  end
  inherited PanelStepCaption: TPanel
    Width = 735
    inherited Label1: TLabel
      Width = 175
      Caption = '��� 2 - ���������� �������'
    end
    inherited Label2: TLabel
      Width = 252
      Caption = '�������� ������� � ������� ������ "�������".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 735
    Height = 473
    inline B004_Emissions1: TB004_Emissions
      Width = 735
      Height = 473
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 735
        Height = 448
      end
      inherited paToolButton: TPanel
        Width = 735
        inherited tlbSelect: TToolBar
          Width = 460
        end
      end
    end
  end
end

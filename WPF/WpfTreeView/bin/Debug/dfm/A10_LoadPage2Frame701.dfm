inherited A10_LoadPage2_701: TA10_LoadPage2_701
  Width = 700
  inherited Bevel: TBevel
    Width = 700
  end
  inherited PanelStepCaption: TPanel
    Width = 700
    inherited Label1: TLabel
      Width = 299
      Caption = '��� 2 - �������� ������� ��������� �����������'
    end
    inherited Label2: TLabel
      Width = 349
      Caption = '��������� ��������� �������� ������� � ������� ������ "�����".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 700
    inline Progress: TA10_LoadPage2_701Progress
      Width = 700
      Height = 347
      Align = alClient
      inherited Bevel1: TBevel
        Width = 680
      end
      inherited ProgressBar1: TGauge
        Width = 680
      end
    end
  end
end

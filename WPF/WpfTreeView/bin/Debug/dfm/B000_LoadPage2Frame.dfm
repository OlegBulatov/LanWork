inherited B000_LoadPage2: TB000_LoadPage2
  inherited PanelStepCaption: TPanel
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
    inline Progress: TB000_LoadPage2Progress
      Width = 557
      Height = 347
      Align = alClient
      inherited Bevel1: TBevel
        Width = 537
      end
      inherited ProgressBar1: TGauge
        Width = 537
      end
    end
  end
  inherited actList: TActionList
    Left = 416
    Top = 8
  end
end

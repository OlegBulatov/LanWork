inherited A09_LoadPage3: TA09_LoadPage3
  inherited PanelStepCaption: TPanel
    inherited Label1: TLabel
      Width = 225
      Caption = '��� 3 - ���������� �������� �������'
    end
    inherited Label2: TLabel
      Width = 367
      Caption = 
        '��������� ��������� �������� ������� � ������� ������ "���������' +
        '".'
    end
  end
  inherited PanelStepBody: TPanel
    inline Grid: TA09_LoadPage3Grid
      Width = 557
      Height = 347
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 557
        Height = 322
      end
      inherited paToolButton: TPanel
        Width = 557
      end
    end
  end
end

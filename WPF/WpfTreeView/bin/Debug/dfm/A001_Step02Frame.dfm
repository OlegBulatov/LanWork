inherited fmWizardPage2: TfmWizardPage2
  Width = 700
  Height = 692
  inherited Bevel: TBevel
    Width = 700
  end
  inherited PanelStepCaption: TPanel
    Width = 700
    inherited Label1: TLabel
      Width = 257
      Caption = '��� 2 - ��������������� �������� �����'
    end
    inherited Label2: TLabel
      Width = 437
      Caption = 
        '������� ������ ������. �������� ������� ��� �������� � ������� �' +
        '����� "�����".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 700
    Height = 640
    inline fmGrid_PreviewFile1: TfmGrid_PreviewFile
      Width = 700
      Height = 640
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 700
        Height = 574
      end
      inherited paToolButton: TPanel
        Width = 700
      end
      inherited Panel1: TPanel
        Width = 700
      end
    end
  end
end

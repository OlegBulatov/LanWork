inherited fmWizardPage3: TfmWizardPage3
  Width = 984
  Height = 622
  inherited Bevel: TBevel
    Width = 984
  end
  inherited PanelStepCaption: TPanel
    Width = 984
    inherited Label1: TLabel
      Width = 270
      Caption = '��� 3 - �������� ������ �� ������� ������'
    end
    inherited Label2: TLabel
      Width = 389
      Caption = 
        '��������� � ���������� ��������� ������ � ������� ������ "������' +
        '���".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 984
    Height = 570
    inline fm_ExcelData1: Tfm_ExcelData
      Width = 984
      Height = 570
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 984
        Height = 545
      end
      inherited paToolButton: TPanel
        Width = 984
      end
    end
  end
end

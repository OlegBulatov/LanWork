inherited M002_IsuLoadPage1: TM002_IsuLoadPage1
  Width = 771
  inherited Bevel: TBevel
    Width = 771
  end
  inherited PanelStepCaption: TPanel
    Width = 771
    inherited Label1: TLabel
      Width = 209
      Caption = '��� 1 - ����� ����� ��� ��������'
    end
    inherited Label2: TLabel
      Width = 223
      Caption = '�������� ���� � ������� ������ "�����".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 771
    object Label3: TLabel
      Left = 24
      Top = 19
      Width = 81
      Height = 13
      Caption = '��������� ����'
    end
    object btnFile: TButton
      Left = 515
      Top = 13
      Width = 86
      Height = 25
      Action = actSelectFile
      TabOrder = 0
    end
    object edFile: TEdit
      Left = 112
      Top = 16
      Width = 393
      Height = 21
      TabOrder = 1
    end
  end
  inherited actList: TActionList
    Left = 512
    Top = 8
    object actSelectFile: TAction
      Caption = '����� �����'
      Hint = '�������� ���� ��� ��������'
      OnExecute = actSelectFileExecute
      OnUpdate = actSelectFileUpdate
    end
  end
  object od1: TOpenDialog
    Filter = '����� Excel (*.xls, *.xlsx)|*.xls;*xlsx|��� ����� (*.*)|*.*'
    Title = '�������� ����'
    Left = 608
    Top = 100
  end
end

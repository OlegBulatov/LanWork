inherited M001_LoadPage1: TM001_LoadPage1
  Width = 694
  inherited Bevel: TBevel
    Width = 694
  end
  inherited PanelStepCaption: TPanel
    Width = 694
    inherited Label1: TLabel
      Width = 209
      Caption = '��� 1 - ����� ����� ��� ��������'
    end
    inherited Label2: TLabel
      Width = 274
      Caption = '�������� ���� � ��������� ��������� ��� ��������.'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 694
    object Label3: TLabel
      Left = 136
      Top = 22
      Width = 3
      Height = 13
    end
    object Button1: TButton
      Left = 40
      Top = 16
      Width = 75
      Height = 25
      Caption = '����...'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  inherited actList: TActionList
    Left = 24
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Filter = '����� Excel (*.xls, *.xlsx)|*.xls;*xlsx|��� ����� (*.*)|*.*'
    Title = '�������� ����'
    Left = 608
    Top = 100
  end
end

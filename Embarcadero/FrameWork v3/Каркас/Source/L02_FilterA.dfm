object dmFilter: TdmFilter
  OldCreateOrder = False
  Left = 282
  Top = 339
  Height = 274
  Width = 506
  object alSearchFrame: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 56
    Top = 20
    object actSearch: TAction
      Caption = '����� �����'
      Hint = '����� �����'
      ImageIndex = 3
      OnExecute = actSearchExecute
      OnUpdate = actSearchUpdate
    end
    object actClose: TAction
      Caption = 'actClose'
      Hint = '������ ���� ������'
      ImageIndex = 4
    end
    object actSelect: TAction
      Caption = '�'
      Hint = '������ �� ����'
    end
    object actShowHide: TAction
      Caption = '�&����'
      Hint = '�������� ���� ������'
      ImageIndex = 3
      ShortCut = 16454
    end
  end
end

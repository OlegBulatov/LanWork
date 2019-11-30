object dmSearch: TdmSearch
  OldCreateOrder = False
  Left = 218
  Top = 399
  Height = 274
  Width = 506
  object alSearchFrame: TActionList
    Images = dmPicters.ilCommonPictures
    Left = 56
    Top = 20
    object actSearch: TAction
      Caption = 'Найти далее'
      Hint = 'Найти далее'
      ImageIndex = 3
      OnExecute = actSearchExecute
      OnUpdate = actSearchUpdate
    end
    object actClose: TAction
      Caption = 'actClose'
      Hint = 'Скрыть окно поиска'
      ImageIndex = 4
    end
    object actSelect: TAction
      Caption = 'в'
      Hint = 'Искать по полю'
    end
    object actShowHide: TAction
      Caption = 'П&оиск'
      Hint = 'Показать окно поиска'
      ImageIndex = 3
      ShortCut = 16454
    end
  end
end

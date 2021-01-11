inherited actDoubleList: TactDoubleList
  OldCreateOrder = True
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited ActionList: TActionList
    object actMoveToRight: TAction
      Hint = 'Переместить элемент левого списка в правый список'
      ImageIndex = 7
      OnExecute = actMoveToRightExecute
      OnUpdate = actMoveToRightUpdate
    end
    object actMoveAllToRight: TAction
      Hint = 'Переместить все элементы левого списка в правый список'
      ImageIndex = 6
      OnExecute = actMoveAllToRightExecute
      OnUpdate = actMoveAllToRightUpdate
    end
    object actMoveAllToLeft: TAction
      Hint = 'Переместить все элементы правого списка в левый список'
      ImageIndex = 8
      OnExecute = actMoveAllToLeftExecute
      OnUpdate = actMoveAllToLeftUpdate
    end
    object actMoveToLeft: TAction
      Hint = 'Переместить элемент правого списка в левый список'
      ImageIndex = 9
      OnExecute = actMoveToLeftExecute
      OnUpdate = actMoveToLeftUpdate
    end
  end
  object oqMoveToLeft: TOracleQuery
    SQL.Strings = (
      '')
    Session = dmMain.OracleSession
    Left = 384
    Top = 168
  end
  object oqAllMoveToLeft: TOracleQuery
    Session = dmMain.OracleSession
    Left = 384
    Top = 216
  end
  object oqMoveToRight: TOracleQuery
    Session = dmMain.OracleSession
    Left = 384
    Top = 112
  end
  object oqMoveAllToRight: TOracleQuery
    Session = dmMain.OracleSession
    Left = 384
    Top = 64
  end
end

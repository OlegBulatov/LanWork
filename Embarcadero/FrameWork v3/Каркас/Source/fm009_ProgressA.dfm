inherited actProgress: TactProgress
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited ActionList: TActionList
    object actStartThread: TAction
      Caption = 'Запуск...'
      OnExecute = actStartThreadExecute
    end
  end
  object oqThread: TOracleQuery
    Session = osThread
    Left = 120
    Top = 272
  end
  object osThread: TOracleSession
    Cursor = crDefault
    Left = 56
    Top = 272
  end
end

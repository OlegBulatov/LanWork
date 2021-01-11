inherited z001_wp2: Tz001_wp2
  Width = 945
  Height = 785
  inherited Bevel: TBevel
    Width = 945
  end
  inherited PanelStepCaption: TPanel
    Width = 945
  end
  inherited PanelStepBody: TPanel
    Width = 945
    Height = 733
    object Button1: TButton
      Left = 600
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Загрузка'
      TabOrder = 0
      OnClick = actLoadSECExecute
    end
  end
  inherited actList: TActionList
    Left = 240
    Top = 72
    object actLoadSEC: TAction
      Caption = 'actLoadSEC'
      OnExecute = actLoadSECExecute
    end
    object actClean01: TAction
      Caption = 'Текущую'
      OnExecute = actClean01Execute
    end
    object actClean02: TAction
      Caption = 'Bce'
      OnExecute = actClean02Execute
    end
  end
  object oqLoadSec: TOracleQuery
    SQL.Strings = (
      'begin'
      ' pk_405_z_show.p_load_SEC;'
      'end;')
    Session = dmMain.OracleSession
    Left = 536
    Top = 220
  end
  object oqClean1: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.b_clear_sec(:i_T002, :i_sec);'
      'end;')
    Left = 616
    Top = 244
  end
  object oqClean2: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.b_clear_bank_sec(:i_T002);'
      'end;')
    Left = 704
    Top = 252
  end
end

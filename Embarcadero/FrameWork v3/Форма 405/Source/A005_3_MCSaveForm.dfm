inherited A005_3_MCSave: TA005_3_MCSave
  Left = 248
  Top = 314
  Width = 684
  Caption = 'A005_3_MCSave'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 12
    Width = 231
    Height = 13
    Caption = 'Укажие какие действия следует произвести:'
  end
  object Bevel3: TBevel
    Left = 20
    Top = 391
    Width = 637
    Height = 14
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsBottomLine
    Visible = False
  end
  object Label13: TLabel
    Left = 42
    Top = 419
    Width = 284
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Для завершения работы нажмите кнопку "Завершить".'
  end
  object Label5: TLabel
    Left = 420
    Top = 34
    Width = 180
    Height = 13
    Caption = '(найдено существующих компаний)'
  end
  object BtnSave: TButton
    Left = 326
    Top = 63
    Width = 87
    Height = 25
    Caption = 'Записать'
    TabOrder = 0
    OnClick = BtnSaveClick
  end
  object chbOth: TCheckBox
    Left = 52
    Top = 34
    Width = 341
    Height = 17
    Hint = 
      'Обновить "Наименование",  "ОГРН", "ОКОПФ", "Тиккер", "Адрес", "Р' +
      'уководитель" и т.д.'
    Caption = 'Проставить признак "Управляющая компания"'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 325
    Top = 32
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'MC_CHANGED_COUNT'
    DataSource = A005_2_MCEmit.dsTotal
    ReadOnly = True
    TabOrder = 2
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_MC.p_save_mc_data('
      '    :i_upd'
      '  );'
      'end;'
      ''
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000060000003A495F555044050000000000000000000000}
    Cursor = crSQLWait
    Threaded = True
    OnThreadFinished = oqSaveThreadFinished
    OnThreadError = oqSaveThreadError
    Left = 324
    Top = 208
  end
end

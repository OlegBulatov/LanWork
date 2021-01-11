inherited A003_3_FSFRSave: TA003_3_FSFRSave
  Left = 248
  Top = 314
  Width = 684
  Caption = 'A003_3_FSFRSave'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
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
  object Label2: TLabel
    Left = 383
    Top = 31
    Width = 117
    Height = 13
    Caption = '(количество компаний)'
  end
  object Label3: TLabel
    Left = 383
    Top = 55
    Width = 117
    Height = 13
    Caption = '(количество компаний)'
  end
  object Label5: TLabel
    Left = 67
    Top = 31
    Width = 205
    Height = 13
    Caption = 'Исключить из списка фин. посредников'
  end
  object Label6: TLabel
    Left = 67
    Top = 55
    Width = 214
    Height = 13
    Caption = 'Восстановить в списке фин. посредников'
  end
  object BtnSave: TButton
    Left = 289
    Top = 82
    Width = 87
    Height = 25
    Caption = 'Записать'
    TabOrder = 0
    OnClick = BtnSaveClick
  end
  object DBEdit1: TDBEdit
    Left = 289
    Top = 29
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'SET_NOT_FP_COUNT'
    DataSource = A003_2_FSFREmit.dsTotal
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 289
    Top = 53
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'SET_FP_COUNT'
    DataSource = A003_2_FSFREmit.dsTotal
    ReadOnly = True
    TabOrder = 2
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_RSN.p_save_rsn_data;'
      'end;'
      ''
      ' ')
    Session = dmMain.OracleSession
    Cursor = crSQLWait
    Threaded = True
    OnThreadFinished = oqSaveThreadFinished
    OnThreadError = oqSaveThreadError
    Left = 324
    Top = 208
  end
end

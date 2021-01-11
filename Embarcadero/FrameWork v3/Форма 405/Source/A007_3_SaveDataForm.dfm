inherited A007_3_SaveData: TA007_3_SaveData
  Left = 56
  Top = 270
  Width = 800
  Caption = 'A007_3_SaveData'
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
    Width = 753
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
    Left = 362
    Top = 32
    Width = 127
    Height = 13
    Caption = '(найдено новых записей)'
  end
  object Label3: TLabel
    Left = 362
    Top = 56
    Width = 254
    Height = 13
    Caption = '(найдено записей, измененных новыми данными)'
  end
  object LInsert: TLabel
    Left = 632
    Top = 32
    Width = 57
    Height = 13
    Caption = 'Добавлено'
  end
  object LUpdate: TLabel
    Left = 632
    Top = 56
    Width = 56
    Height = 13
    Caption = 'Обновлено'
  end
  object Label4: TLabel
    Left = 362
    Top = 80
    Width = 259
    Height = 13
    Caption = '(найдено записей, измененных старыми данными)'
  end
  object LRollback: TLabel
    Left = 632
    Top = 80
    Width = 52
    Height = 13
    Caption = 'Изменено'
  end
  object BtnSave: TButton
    Left = 284
    Top = 168
    Width = 87
    Height = 25
    Caption = 'Записать'
    TabOrder = 0
    OnClick = BtnSaveClick
  end
  object cbInsert: TCheckBox
    Left = 67
    Top = 32
    Width = 198
    Height = 17
    Caption = 'Добавить новые записи в реестр'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object cbUpdate: TCheckBox
    Left = 67
    Top = 56
    Width = 198
    Height = 17
    Caption = 'Обновить записи в реестре'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 268
    Top = 29
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'R_NEW'
    DataSource = A007_2_LoadedFile.dsTotal
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 268
    Top = 53
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'R_UPDATED'
    DataSource = A007_2_LoadedFile.dsTotal
    ReadOnly = True
    TabOrder = 4
  end
  object cbRollback: TCheckBox
    Left = 67
    Top = 80
    Width = 198
    Height = 17
    Caption = 'Изменить записи в реестре'
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 268
    Top = 78
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'R_ROLLED'
    DataSource = A007_2_LoadedFile.dsTotal
    ReadOnly = True
    TabOrder = 6
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_Bonds_Load.p_save_stocks(:NEW, :UPDATE, :CHANGE);'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000040000003A4E455704000000000000000000000007000000
      3A555044415445040000000000000000000000070000003A4348414E47450400
      00000000000000000000}
    Left = 324
    Top = 208
  end
end

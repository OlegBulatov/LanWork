inherited A002_3_ScrinSave: TA002_3_ScrinSave
  Left = 248
  Top = 314
  Width = 684
  Caption = 'A002_3_ScrinSave'
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
    Left = 378
    Top = 31
    Width = 135
    Height = 13
    Caption = '(найдено новых компаний)'
  end
  object Label3: TLabel
    Left = 378
    Top = 55
    Width = 219
    Height = 13
    Caption = '(количество компаний требующих замены)'
  end
  object Label4: TLabel
    Left = 378
    Top = 79
    Width = 219
    Height = 13
    Caption = '(количество компаний требующих замены)'
  end
  object BtnSave: TButton
    Left = 284
    Top = 128
    Width = 87
    Height = 25
    Caption = 'Записать'
    TabOrder = 0
    OnClick = BtnSaveClick
  end
  object CheckBox1: TCheckBox
    Left = 67
    Top = 31
    Width = 217
    Height = 17
    Caption = 'Добавить новые компании в реестр'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 67
    Top = 55
    Width = 217
    Height = 17
    Caption = 'Обновить значение в поле "Регион"'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object CheckBox3: TCheckBox
    Left = 67
    Top = 79
    Width = 217
    Height = 17
    Caption = 'Обновить значение в поле "Отрасль"'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 284
    Top = 29
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'NEW_COUNT'
    DataSource = A002_2_ScrinEmit.dsTotal
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 284
    Top = 53
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'T111_REG_COUNT'
    DataSource = A002_2_ScrinEmit.dsTotal
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 284
    Top = 77
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'T111_IND_COUNT'
    DataSource = A002_2_ScrinEmit.dsTotal
    ReadOnly = True
    TabOrder = 6
  end
  object CheckBox4: TCheckBox
    Left = 67
    Top = 102
    Width = 561
    Height = 17
    Hint = 
      'Обновить прочие поля  ("ОГРН", "ОКОПФ", "Тиккер", "Адрес", "Руко' +
      'водитель" и т.д.)'
    Caption = 
      'Обновить "ОГРН", "ОКОПФ", "Тиккер", "Адрес", "Руководитель" и т.' +
      'д.'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 7
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :UPDATED := pk_FORM_405.f_emit_save;'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A55504441544544040000000000000000000000}
    Left = 324
    Top = 208
  end
end

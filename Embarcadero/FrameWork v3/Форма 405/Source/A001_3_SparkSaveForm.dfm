inherited frm101_3_SaveData: Tfrm101_3_SaveData
  Left = 651
  Top = 413
  Width = 684
  Caption = 'frm101_3_SaveData'
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
    Left = 395
    Top = 31
    Width = 135
    Height = 13
    Caption = '(найдено новых компаний)'
  end
  object Label5: TLabel
    Left = 395
    Top = 55
    Width = 180
    Height = 13
    Caption = '(найдено существующих компаний)'
  end
  object BtnSave: TButton
    Left = 301
    Top = 128
    Width = 87
    Height = 25
    Caption = 'Записать'
    TabOrder = 0
    OnClick = BtnSaveClick
  end
  object chbNew: TCheckBox
    Left = 67
    Top = 31
    Width = 217
    Height = 17
    Caption = 'Добавить новые компании в реестр'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object chbReg: TCheckBox
    Left = 67
    Top = 79
    Width = 270
    Height = 17
    Caption = 'Обновить "Регион" у несвязанных компаний'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object chbInd: TCheckBox
    Left = 67
    Top = 103
    Width = 286
    Height = 17
    Caption = 'Обновить "Отрасль" у несвязанных компаний'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 301
    Top = 29
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'NEW_COUNT'
    DataSource = frm101_2_LoadFile.dsTotal
    ReadOnly = True
    TabOrder = 4
  end
  object chbOth: TCheckBox
    Left = 67
    Top = 55
    Width = 231
    Height = 17
    Hint = 
      'Обновить "Наименование",  "ОГРН", "ОКОПФ", "Тиккер", "Адрес", "Р' +
      'уководитель" и т.д.'
    Caption = 'Обновить данные о компаниях в реестре'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 300
    Top = 53
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'OLD_COUNT'
    DataSource = frm101_2_LoadFile.dsTotal
    ReadOnly = True
    TabOrder = 6
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_Load_Issuers.p_save_spark_data('
      '    :i_add_new,'
      '    :i_upd_ind,'
      '    :i_upd_reg,'
      '    :i_upd_oth'
      '  );'
      'end;'
      ''
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000A0000003A495F4144445F4E455705000000000000000000
      00000A0000003A495F5550445F494E440500000000000000000000000A000000
      3A495F5550445F5245470500000000000000000000000A0000003A495F555044
      5F4F5448050000000000000000000000}
    Cursor = crSQLWait
    Threaded = True
    OnThreadFinished = oqSaveThreadFinished
    OnThreadError = oqSaveThreadError
    Left = 324
    Top = 208
  end
end

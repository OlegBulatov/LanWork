inherited I001_SaveData: TI001_SaveData
  Left = 143
  Top = 348
  Width = 782
  Caption = 'I001_SaveData'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 12
    Width = 203
    Height = 13
    Caption = '����� ��������� ��������� ��������:'
  end
  object Label2: TLabel
    Left = 362
    Top = 32
    Width = 127
    Height = 13
    Caption = '(������� ����� �������)'
  end
  object LInsert: TLabel
    Left = 631
    Top = 32
    Width = 57
    Height = 13
    Caption = '���������'
  end
  object Label3: TLabel
    Left = 362
    Top = 56
    Width = 159
    Height = 13
    Caption = '(������� ���������� �������)'
  end
  object LUpdate: TLabel
    Left = 632
    Top = 56
    Width = 56
    Height = 13
    Caption = '���������'
  end
  object Bevel3: TBevel
    Left = -65
    Top = 391
    Width = 839
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
    Caption = '��� ���������� ������ ������� ������ "���������".'
  end
  object Label4: TLabel
    Left = 66
    Top = 32
    Width = 183
    Height = 13
    Caption = '��������� �����  ������ � ������'
  end
  object Label5: TLabel
    Left = 66
    Top = 56
    Width = 150
    Height = 13
    Caption = '��������� ������ � �������'
  end
  object DBEdit1: TDBEdit
    Left = 268
    Top = 29
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'R_NEW'
    DataSource = I001_LoadedFile.dsTotal
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 268
    Top = 53
    Width = 87
    Height = 21
    Color = clBtnFace
    DataField = 'R_CHANGED'
    DataSource = I001_LoadedFile.dsTotal
    ReadOnly = True
    TabOrder = 1
  end
  object BtnSave: TButton
    Left = 268
    Top = 120
    Width = 87
    Height = 25
    Action = actProceed
    TabOrder = 2
  end
  object oqSave: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_405_LOAD_PIF.p_save_data(:ADDED, :UPDATED);'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000060000003A41444445440400000000000000000000000800
      00003A55504441544544040000000000000000000000}
    Left = 324
    Top = 208
  end
  object ActionList1: TActionList
    Left = 448
    Top = 160
    object actProceed: TAction
      Caption = '���������'
      OnExecute = actProceedExecute
      OnUpdate = actProceedUpdate
    end
  end
end

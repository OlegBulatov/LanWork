object MemTableDataForm: TMemTableDataForm
  Left = 261
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Client DataSet Data'
  ClientHeight = 235
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 11
    Top = 4
    Width = 289
    Height = 176
    Caption = ' Assign Data From '
    TabOrder = 0
    object DataSetList: TListBox
      Left = 10
      Top = 23
      Width = 268
      Height = 142
      Enabled = False
      ItemHeight = 16
      Sorted = True
      TabOrder = 0
      OnDblClick = DataSetListDblClick
      OnKeyPress = DataSetListKeyPress
    end
  end
  object OkBtn: TButton
    Left = 14
    Top = 188
    Width = 92
    Height = 31
    Caption = 'OK'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 1
    OnClick = OkBtnClick
  end
  object CancelBtn: TButton
    Left = 111
    Top = 188
    Width = 92
    Height = 31
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object HelpBtn: TButton
    Left = 208
    Top = 188
    Width = 92
    Height = 31
    Caption = '&Help'
    TabOrder = 3
    OnClick = HelpBtnClick
  end
end

inherited frmDialogForm: TfrmDialogForm
  Left = 133
  Top = 135
  BorderStyle = bsDialog
  Caption = 'frmDialogForm'
  ClientHeight = 379
  ClientWidth = 500
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 346
    Width = 500
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 335
      Top = 0
      Width = 165
      Height = 33
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object OKBtn: TButton
        Left = 5
        Top = 5
        Width = 75
        Height = 23
        Action = actSave
        ModalResult = 1
        TabOrder = 0
      end
      object CancelBtn: TButton
        Left = 85
        Top = 5
        Width = 75
        Height = 23
        Action = actCancel
        Cancel = True
        ModalResult = 2
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Left = 80
    Top = 152
    object actSave: TAction
      Caption = 'OK'
      OnUpdate = actSaveUpdate
    end
    object actCancel: TAction
      Caption = '������'
      OnUpdate = actCancelUpdate
    end
  end
end

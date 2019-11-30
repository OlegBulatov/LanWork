inherited fm24_Proc: Tfm24_Proc
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 93
    Height = 13
    Caption = 'Процент различия'
    Layout = tlCenter
  end
  object Edit1: TEdit
    Left = 103
    Top = 4
    Width = 252
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
end

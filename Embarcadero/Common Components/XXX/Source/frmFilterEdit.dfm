inherited frmFilterEditForm: TfrmFilterEditForm
  Left = 272
  Top = 121
  Action = actForm
  Caption = 'Добавить условие'
  ClientHeight = 85
  ClientWidth = 405
  OnClick = actFormExecute
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 405
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Поле'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 5
      Top = 34
      Width = 44
      Height = 13
      Caption = 'Условие'
      Layout = tlCenter
    end
  end
  inherited Panel2: TPanel
    Top = 52
    Width = 405
    inherited Panel3: TPanel
      Left = 240
    end
  end
  object cmbFields: TComboBox [2]
    Left = 61
    Top = 5
    Width = 338
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 2
    OnChange = cmbFieldsChange
  end
  object cmbCondition: TComboBox [3]
    Left = 61
    Top = 31
    Width = 338
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    TabOrder = 3
    OnChange = cmbConditionChange
  end
  inherited ActionList1: TActionList
    Left = 112
    Top = 16
    object actForm: TAction
      Caption = 'Добавить условие'
      OnExecute = actFormExecute
      OnUpdate = actFormUpdate
    end
  end
end

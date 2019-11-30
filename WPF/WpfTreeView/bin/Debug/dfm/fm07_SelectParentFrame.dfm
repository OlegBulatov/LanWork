object fm07_SelectParent: Tfm07_SelectParent
  Left = 0
  Top = 0
  Width = 466
  Height = 21
  TabOrder = 0
  object btnSelect: TSpeedButton
    Left = 7
    Top = 0
    Width = 90
    Height = 21
    Caption = 'Название...'
    Flat = True
    Margin = 0
    Spacing = 0
    OnClick = btnSelectClick
  end
  object lcbSelect: TDBLookupComboBox
    Left = 98
    Top = 0
    Width = 360
    Height = 21
    Anchors = [akLeft, akTop, akRight, akBottom]
    DropDownRows = 10
    KeyField = 'REGN'
    ListField = 'NAME'
    ListSource = dsSelect
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object odsSelect: TOracleDataSet
    QueryAllRecords = False
    Session = dmMain.OracleSession
    AfterScroll = odsSelectAfterScroll
    Left = 120
  end
  object dsSelect: TDataSource
    DataSet = odsSelect
    Left = 152
  end
end

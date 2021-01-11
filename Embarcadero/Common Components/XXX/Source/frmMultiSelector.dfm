inherited frmMultiSelectorForm: TfrmMultiSelectorForm
  Left = 330
  Top = 145
  Caption = 'Выберете значения'
  PixelsPerInch = 96
  TextHeight = 13
  object xxxDBGrid: TxxxDBGrid [1]
    Left = 0
    Top = 0
    Width = 500
    Height = 346
    Align = alClient
    DataSource = DataSource
    Options = [dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = xxxDBGridCellClick
    OnDrawColumnCell = xxxDBGridDrawColumnCell
    AdvSettings.Guid = '{21BB5746-6B92-499F-A1BE-13EB23D582FC}'
    AdvSettings.HeadersLines = <>
    AdvSettings.ColumnsAutoSize = False
    AdvSettings.SQLBuilder.AutoFilter = False
    AdvSettings.SQLBuilder.Enabled = False
    AdvSettings.SQLBuilder.Indexes = <>
  end
  object DataSource: TDataSource
    Left = 112
    Top = 152
  end
end

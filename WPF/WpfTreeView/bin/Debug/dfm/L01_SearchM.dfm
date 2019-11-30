inherited frmSearch: TfrmSearch
  Left = 309
  Top = 375
  ActiveControl = fmSearch1.edSearchText
  Caption = 'Поиск'
  ClientHeight = 167
  ClientWidth = 350
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 134
    Width = 350
    inherited Panel3: TPanel
      Left = 185
      inherited OKBtn: TButton
        ModalResult = 0
      end
    end
  end
  inline fmSearch1: TfmSearch [1]
    TabOrder = 1
  end
  inherited ActionList: TActionList
    Left = 16
    Top = 136
    inherited actCancel: TAction
      Caption = 'Закрыть'
    end
  end
end

inherited frm20_ReportsPrm: Tfrm20_ReportsPrm
  Caption = 'frm20_ReportsPrm'
  ClientHeight = 33
  ClientWidth = 398
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 0
    Width = 398
    inherited Panel3: TPanel
      Left = 224
      Width = 174
      inherited OKBtn: TButton
        Left = 3
      end
      inherited CancelBtn: TButton
        Left = 83
      end
    end
  end
  inherited ActionList: TActionList
    Left = 0
    Top = 0
  end
end

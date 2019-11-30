inherited E002_DrLink: TE002_DrLink
  Left = 209
  Top = 201
  Width = 895
  Height = 499
  BorderStyle = bsSizeable
  Caption = 'E002_DrLink'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 432
    Width = 887
    inherited Panel3: TPanel
      Left = 722
      inherited OKBtn: TButton
        Caption = 'Выбрать'
      end
    end
  end
  inline Grid: TE002_DrLinkGrid [1]
    Width = 887
    Height = 432
    Align = alClient
    TabOrder = 1
    inherited xxxDBGrid: TxxxDBGrid
      Width = 887
      Height = 333
    end
    inherited paToolButton: TPanel
      Width = 887
    end
    inherited paFilters: TPanel
      Width = 887
    end
  end
end

inherited R01_Step02: TR01_Step02
  Width = 1115
  Height = 551
  inherited Bevel: TBevel
    Width = 1115
  end
  inherited PanelStepCaption: TPanel
    Width = 1115
    inherited Label1: TLabel
      Width = 263
      Caption = 'Шаг 2 - Контроль остатков по объявлениям'
    end
    inherited Label2: TLabel
      Width = 227
      Caption = 'Для продолжения нажмите кнопку "Далее".'
    end
    object Label5: TLabel
      Left = 668
      Top = 1
      Width = 27
      Height = 13
      Caption = 'Тип:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbType: TLabel
      Left = 733
      Top = 1
      Width = 32
      Height = 13
      Caption = 'lbType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 668
      Top = 17
      Width = 55
      Height = 13
      Caption = 'Эмитент:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbIssuer: TLabel
      Left = 733
      Top = 17
      Width = 36
      Height = 13
      Caption = 'lbIssuer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 668
      Top = 33
      Width = 58
      Height = 13
      Caption = 'Выплаты:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbPeriod: TLabel
      Left = 733
      Top = 33
      Width = 38
      Height = 13
      Caption = 'lbPeriod'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited PanelStepBody: TPanel
    Width = 1115
    Height = 499
    inline R01_DivCheck1: TR01_DivCheck
      Width = 1115
      Height = 499
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 1115
        Height = 362
      end
      inherited paToolButton: TPanel
        Width = 1115
      end
      inherited paHideClosed: TPanel
        Top = 478
        Width = 1115
      end
      inherited GroupBox1: TGroupBox
        Width = 1115
      end
    end
  end
end

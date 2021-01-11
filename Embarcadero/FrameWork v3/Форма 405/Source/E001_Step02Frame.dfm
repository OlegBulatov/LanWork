inherited E001_Step02: TE001_Step02
  Width = 1008
  Height = 502
  inherited Bevel: TBevel
    Width = 1008
  end
  inherited PanelStepCaption: TPanel
    Width = 1008
    inherited Label1: TLabel
      Width = 108
      Caption = 'Шаг 2 - Расчет IIP'
    end
    inherited Label2: TLabel
      Width = 307
      Caption = 'Для сохранения результатов нажмите кнопку "Завершить".'
    end
    object Label3: TLabel
      Left = 843
      Top = 6
      Width = 140
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'МИП за 1990 год 1 квартал'
    end
    object Label4: TLabel
      Left = 778
      Top = 24
      Width = 93
      Height = 13
      Caption = 'Тип ц.б. - SHS3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited PanelStepBody: TPanel
    Width = 1008
    Height = 450
    inline E001_Remains1: TE001_Remains
      Width = 1008
      Height = 450
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 1008
        Height = 373
      end
      inherited paToolButton: TPanel
        Width = 1008
      end
      inherited paFilter: TPanel
        Width = 1008
        inherited Label1: TLabel
          Left = 1265
        end
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 1008
        inherited Panel1: TPanel
          Left = 981
        end
      end
    end
  end
  inherited actList: TActionList
    Left = 88
    Top = 344
  end
end

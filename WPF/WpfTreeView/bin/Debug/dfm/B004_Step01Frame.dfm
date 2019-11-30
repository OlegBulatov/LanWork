inherited B004_Step01: TB004_Step01
  Width = 849
  Height = 624
  inherited Bevel: TBevel
    Width = 849
  end
  inherited PanelStepCaption: TPanel
    Width = 849
    inherited Label1: TLabel
      Width = 187
      Caption = 'Шаг 1 - Связывание эмитентов'
    end
    inherited Label2: TLabel
      Width = 245
      Caption = 'Выберите эмитента и нажмите кнопку "Далее".'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 849
    Height = 572
    inline B004_Issuers1: TB004_Issuers
      Width = 849
      Height = 572
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 849
        Height = 373
      end
      inherited paToolButton: TPanel
        Width = 849
        inherited tlbSelect: TToolBar
          Width = 172
        end
      end
      inherited paFilter: TPanel
        Width = 849
        inherited PeriodFilter: TB004_PeriodFilter
          inherited lbCaption: TLabel
            Width = 82
            Caption = 'Остатки на дату'
          end
          inherited odsList: TOracleDataSet
            SQL.Strings = (
              'SELECT T055_ID,'
              '       T002_NUMB_IN_YEA,'
              #9'T002_NUMB_IN_YEA_TEXT'
              'FROM   V_405_DBF_711_NUMB_IN_YEA_DESC'
              'ORDER BY T002_NUMB_IN_YEA')
          end
        end
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 849
        inherited Panel1: TPanel
          Left = 822
        end
      end
      inherited dsList: TDataSource
        Top = 263
      end
      inherited odsList: TOracleDataSet
        Top = 261
      end
      inherited oqAdd: TOracleQuery
        Top = 264
      end
      inherited oqUpdate: TOracleQuery
        Top = 300
      end
      inherited oqDelete: TOracleQuery
        Top = 340
      end
      inherited odsFetchRecord: TOracleDataSet
        Top = 314
      end
    end
  end
  inherited actList: TActionList
    Left = 592
    Top = 120
  end
end

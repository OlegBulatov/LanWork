inherited A12_ReportsList: TA12_ReportsList
  Width = 708
  Height = 696
  inherited PanelLeft: TPanel
    Top = 84
    Width = 252
    Height = 591
    object PageControlLeft: TPageControl
      Left = 0
      Top = 0
      Width = 252
      Height = 591
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Все банки'
        inline BanksList: TA12_BanksList
          Width = 244
          Height = 563
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 244
            Height = 538
          end
          inherited paToolButton: TPanel
            Width = 244
            inherited tlbSelect: TToolBar
              Width = 62
            end
          end
          inherited odsList: TOracleDataSet
            AfterOpen = BanksListodsListAfterOpen
          end
        end
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Left = 252
    Top = 84
    Height = 591
  end
  inherited PanelTop: TPanel
    Width = 708
    Height = 84
    inline Filters: TA12_ReportsListFilter
      Width = 708
      Align = alClient
      inherited GroupBox1: TGroupBox
        Width = 708
        inherited Panel1: TPanel
          Width = 121
          inherited Button1: TButton
            Action = BanksList.actRefresh
          end
        end
        inherited paFilterItems: TPanel
          inherited PeriodFilter: TA12_PeriodFilterAll
            inherited lcb: TxxxDBLookupCheckCombo
              OnChange = PeriodFilterlcbChange
            end
          end
        end
      end
    end
  end
  inherited PanelRight: TPanel
    Left = 255
    Top = 84
    Width = 453
    Height = 591
    object PageControlRight: TPageControl
      Left = 0
      Top = 0
      Width = 453
      Height = 591
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Отчет'
        inline Page1: TA12_ReportsListPage1
          Width = 445
          Height = 563
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 445
            Height = 538
          end
          inherited paToolButton: TPanel
            Width = 445
            inherited tlbSelect: TToolBar
              Width = 271
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Исправления'
        ImageIndex = 1
        inline Page2: TA12_ReportsListPage2
          Width = 445
          Height = 563
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 445
            Height = 538
            OnDblClick = Page2xxxDBGridDblClick
          end
          inherited paToolButton: TPanel
            Width = 445
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Сверка с формой 401'
        ImageIndex = 2
        inline Page3: TA12_ReportsListPage3
          Width = 445
          Height = 563
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 445
            Height = 538
            OnDblClick = Page3xxxDBGridDblClick
          end
          inherited paToolButton: TPanel
            Width = 445
            inherited tlbSelect: TToolBar
              Width = 331
            end
          end
        end
      end
    end
  end
  inherited PanelBottom: TPanel
    Top = 675
    Width = 708
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 76
      Height = 13
      Caption = 'Отчетов всего:'
    end
    object DBText1: TDBText
      Left = 89
      Top = 4
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'TOTAL_COUNT'
      DataSource = dsCount
    end
    object Label2: TLabel
      Left = 135
      Top = 4
      Width = 64
      Height = 13
      Caption = 'c ошибками:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 206
      Top = 4
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'TOTAL_ERRORS'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited actList: TActionList
    Left = 328
    Top = 168
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'select TOTAL_COUNT,'
      '       TOTAL_ERRORS'
      'from   V_410_REPORTS_COUNT'
      'where  T055_ID = :T055_ID')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000B000000544F54414C5F434F554E540100000000000C0000
      00544F54414C5F4552524F5253010000000000}
    Session = dmMain.OracleSession
    Left = 147
    Top = 620
    object odsCountTOTAL_COUNT: TFloatField
      FieldName = 'TOTAL_COUNT'
    end
    object odsCountTOTAL_ERRORS: TFloatField
      FieldName = 'TOTAL_ERRORS'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 191
    Top = 620
  end
end

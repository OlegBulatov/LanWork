inherited A30_Main: TA30_Main
  Width = 1284
  Height = 769
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1284
    Height = 535
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 913
      Top = 0
      Width = 3
      Height = 535
      Cursor = crHSplit
    end
    inline A30_SumMinus1: TA30_SumMinus
      Width = 913
      Height = 535
      Align = alLeft
      inherited xxxDBGrid: TxxxDBGrid
        Width = 913
        Height = 408
      end
      inherited paToolButton: TPanel
        Width = 913
      end
      inherited Panel1: TPanel
        Width = 913
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 913
        inherited Panel1: TPanel
          Left = 886
        end
      end
    end
    object Panel3: TPanel
      Left = 916
      Top = 0
      Width = 368
      Height = 535
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      inline A30_SumDetail1: TA30_SumDetail
        Width = 368
        Height = 192
        Align = alTop
        inherited xxxDBGrid: TxxxDBGrid
          Width = 368
          Height = 146
        end
        inherited paToolButton: TPanel
          Width = 368
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 368
        end
      end
      inline A30_Matrix: TA30_Matrix
        Top = 192
        Width = 368
        Height = 343
        Align = alClient
        TabOrder = 1
        inherited xxxDBGrid: TxxxDBGrid
          Width = 368
          Height = 297
          AdvSettings.Indexes = <
            item
              FieldName = 'FORM_NAME'
              SortType = stAsc
            end>
        end
        inherited paToolButton: TPanel
          Width = 368
        end
        inherited fm031_Filter1: Tfm031_Filter
          Width = 368
          inherited Panel1: TPanel
            Left = 477
          end
        end
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 535
    Width = 1284
    Height = 234
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 0
      Top = 0
      Width = 1284
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Beveled = True
    end
    object PageControl2: TPageControl
      Left = 0
      Top = 5
      Width = 1284
      Height = 229
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Форма 410'
        inline A30_F4101: TA30_F410
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
            inherited tlbList: TToolBar
              Width = 245
            end
            inherited tlbExcel: TToolBar
              Left = 322
            end
            inherited tlbSeach: TToolBar
              Left = 356
              Width = 71
            end
            inherited tlbFilter: TToolBar
              Left = 427
              Width = 96
            end
            inherited tlbSelect: TToolBar
              Left = 523
              Width = 35
            end
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
          inherited odsList: TOracleDataSet
            Active = True
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Форма 410 - корректровка'
        ImageIndex = 1
        inline A30_F410Minus1: TA30_F410Minus
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
            inherited tlbList: TToolBar
              Width = 245
            end
            inherited tlbExcel: TToolBar
              Left = 322
            end
            inherited tlbSeach: TToolBar
              Left = 356
              Width = 71
            end
            inherited tlbFilter: TToolBar
              Left = 427
              Width = 94
            end
            inherited tlbSelect: TToolBar
              Left = 521
              Width = 35
            end
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Форма 101'
        ImageIndex = 2
        inline A30_F1011: TA30_F101
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
            inherited tlbList: TToolBar
              Width = 245
            end
            inherited tlbExcel: TToolBar
              Left = 322
            end
            inherited tlbSeach: TToolBar
              Left = 356
              Width = 71
            end
            inherited tlbFilter: TToolBar
              Left = 427
              Width = 94
            end
            inherited tlbSelect: TToolBar
              Left = 521
              Width = 35
            end
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Форма 401'
        ImageIndex = 3
        inline A30_F401: TA30_F401
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
          inherited odsList: TOracleDataSet
            SQL.Strings = (
              'SELECT'
              'M019_CODE,'
              'CURRENCY as M022_CURRENCY,'
              'COUNTRY as M022_C_COUNTRY,'
              'SUM_OUT as M022_SUM_OUT,'
              'M150_CODE,'
              'M151_CODE,'
              'T020_BANK_CODE,'
              'M_COUNTRY as T020_M_COUNTRY,'
              'T071_ID,'
              'T072_ID'
              'FROM V_410_BOP_SUM_401'
              'WHERE T055_ID = 1922'
              'AND   T071_ID = :T071_ID'
              'AND   T072_ID = :T072_ID'
              'AND   M_COUNTRY = :T020_M_COUNTRY'
              'AND   C_COUNTRY = :T021_C_COUNTRY'
              'AND   CURRENCY = :T021_CURRENCY'
              ''
              ' '
              ' ')
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Форма 501'
        ImageIndex = 4
        inline A30_F501: TA30_F501
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Форма 603'
        ImageIndex = 5
        inline A30_F603: TA30_F603
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Свод по КО'
        ImageIndex = 6
        inline A30_SumByKO: TA30_SumByKO
          Width = 1276
          Height = 201
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 1276
            Height = 155
          end
          inherited paToolButton: TPanel
            Width = 1276
          end
          inherited fm031_Filter1: Tfm031_Filter
            Width = 1276
            inherited Panel1: TPanel
              Left = 1249
            end
          end
        end
      end
    end
  end
end

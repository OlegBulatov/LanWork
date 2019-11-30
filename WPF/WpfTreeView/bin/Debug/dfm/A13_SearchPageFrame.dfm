inherited A13_SearchPage: TA13_SearchPage
  Width = 1103
  Height = 791
  inherited PanelLeft: TPanel
    Top = 0
    Width = 336
    Height = 770
    BevelOuter = bvRaised
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 334
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = clGrayText
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 4
        Width = 40
        Height = 13
        Caption = 'Фильтр'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    inline Filters: TA13_SearchFilters
      Left = 1
      Top = 23
      Height = 746
      Align = alClient
      TabOrder = 1
      inherited Button1: TButton
        Left = 195
        OnClick = FiltersButton1Click
      end
      inherited CurrencyFilter: TA13_CurrencyFilter
        Width = 318
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited DetailsFilter: TA12_DetailsFilter
        Width = 318
        inherited cb: TCheckBox
          OnClick = DetailsFiltercbClick
        end
      end
      inherited ItemsGroupFilter: TA13_ItemsGroupFilter
        Width = 310
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited ItemFilter: TA13_ItemFilter
        Width = 310
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited CountriesGroupFilter: TA13_CountriesGroupFilter
        Width = 310
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited CountryFilter: TA13_CountryFilter
        Width = 310
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited BanksGroupFilter: TA13_BanksGroupFilter
        Width = 310
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited ItemsTypeFilter: TA13_ItemsTypeFilter
        Width = 310
        Anchors = [akLeft, akTop, akRight]
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited NkoFilter: TA13_NkoFilter
        Width = 310
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited SngGroupFilter: TA13_CountriesSngGroupFilter
        Width = 310
        inherited lcb: TxxxDBLookupCheckCombo
          Width = 198
        end
      end
      inherited PeriodFilterTo: TA12_PeriodFilterAll
        inherited lcb: TxxxDBLookupCheckCombo
          OnChange = nil
        end
      end
    end
  end
  inherited Splitter1: TRxSplitter
    Left = 336
    Top = 0
    Height = 770
  end
  inherited PanelTop: TPanel
    Width = 1103
    Height = 0
    Visible = False
  end
  inherited PanelRight: TPanel
    Left = 339
    Top = 0
    Width = 764
    Height = 770
    object pcLeft: TPageControl
      Left = 0
      Top = 0
      Width = 764
      Height = 770
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Остатки'
        inline fmRemains: TA13_SearchPageGrid
          Width = 756
          Height = 742
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 756
            Height = 717
          end
          inherited paToolButton: TPanel
            Width = 756
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'IIP'
        ImageIndex = 1
        inline fmIIP: TA13_SearchIIP
          Width = 756
          Height = 742
          Align = alClient
          inherited xxxDBGrid: TxxxDBGrid
            Width = 756
            Height = 717
          end
          inherited paToolButton: TPanel
            Width = 756
          end
        end
      end
    end
  end
  inherited PanelBottom: TPanel
    Top = 770
    Width = 1103
  end
end

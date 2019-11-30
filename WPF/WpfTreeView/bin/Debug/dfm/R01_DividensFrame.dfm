inherited R01_Dividens: TR01_Dividens
  Width = 556
  Height = 472
  inherited paTreeParent: TPanel
    Width = 556
    Height = 347
    inherited tvList: TTreeView
      Width = 552
      Height = 326
      ReadOnly = True
      OnAdvancedCustomDrawItem = tvListAdvancedCustomDrawItem
      OnChange = tvListChange
    end
    inherited hcTreeColums: THeaderControl
      Width = 552
      Sections = <
        item
          Alignment = taRightJustify
          ImageIndex = -1
          Width = 230
        end
        item
          ImageIndex = -1
          Text = '% владения'
          Width = 60
        end
        item
          ImageIndex = -1
          Text = 'Тип инвестиции'
          Width = 60
        end
        item
          ImageIndex = -1
          Text = 'Страна'
          Width = 100
        end>
    end
  end
  inherited paToolButton: TPanel
    Width = 556
    inherited tlbList: TToolBar
      Left = 180
    end
    inherited tlbExcel: TToolBar
      Left = 422
      inherited tbSeparator03: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited tlbSeach: TToolBar
      Left = 456
      inherited tbSeparator04: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited tlbFilter: TToolBar
      Left = 523
    end
    inherited tlbSelect: TToolBar
      Left = 604
    end
    object tbShowDetail: TToolBar
      Left = 77
      Top = 0
      Width = 103
      Height = 25
      Align = alLeft
      AutoSize = True
      ButtonWidth = 95
      Caption = 'tlbList'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = dmPicters.ilCommonPictures
      List = True
      ParentFont = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 6
      Wrapable = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'tbSeparator02'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbShowRemains: TToolButton
        Left = 8
        Top = 0
        Action = actShowOwnerDetail
        AutoSize = True
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  object paDivDetail: TPanel [2]
    Left = 0
    Top = 372
    Width = 556
    Height = 100
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label12: TLabel
      Left = 8
      Top = 8
      Width = 86
      Height = 13
      Caption = 'За 1 акцию (руб.)'
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 69
      Height = 13
      Caption = 'Доля участия'
    end
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 69
      Height = 13
      Caption = 'Налог (прям.)'
    end
    object Label3: TLabel
      Left = 8
      Top = 82
      Width = 74
      Height = 13
      Caption = 'Налог (портф.)'
    end
    object edOneSum: TEdit
      Left = 98
      Top = 4
      Width = 456
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      Color = clBtnFace
      ParentBiDiMode = False
      TabOrder = 0
    end
    object edPrc: TEdit
      Left = 98
      Top = 28
      Width = 456
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
    end
    object edTaxPr: TEdit
      Left = 98
      Top = 53
      Width = 456
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 2
    end
    object edTaxPf: TEdit
      Left = 98
      Top = 78
      Width = 456
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 3
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    inherited actExcel: TAction
      Enabled = False
      Visible = False
    end
    inherited actSearch: TAction
      Enabled = False
      Visible = False
    end
    object actShowOwnerDetail: TAction
      Category = 'ShowDetail'
      Caption = 'Детализация'
      Hint = 'Детализация....'
      ImageIndex = 11
      OnExecute = actShowOwnerDetailExecute
    end
    object actShowClosed: TAction
      Category = 'Filter'
      Caption = 'Показать выплаченные'
      Hint = 'Показать выплаченные'
      OnExecute = actShowClosedExecute
    end
    object actHideClosed: TAction
      Category = 'Filter'
      Caption = 'Скрывать выплаченные'
      Hint = 'Скрывать выплаченные'
      OnExecute = actHideClosedExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   M050_ID,'
      '         M050_DATE,'
      '         M050_SUM,'
      '         T028_ID_BUY,'
      '         T028_SHOT_NAME_BUY,'
      '         T028_INN_BUY,'
      '         M050_TYPE,'
      '         M050_TYPE_DESC,'
      '         M030_ID,'
      '         M050_TAX_VALUE_PR,'
      '         M050_TAX_VALUE_PF,'
      '         M030_PRC,'
      '         OUT_CNT,OUT_SUM_USD,DIV_IS_CLOSED'
      'FROM     V_NR_LINK_OWNERS_LIST'
      'WHERE    T028_ID_SALE = :T028_ID'
      'AND      T027_ID = :T027_ID'
      'AND      T055_ID = :T055_ID'
      'ORDER BY M050_DATE DESC,'
      '         T028_SHOT_NAME_BUY'
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032385F4944050000000000000000000000
      080000003A543032375F4944050000000000000000000000080000003A543035
      355F4944050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F000000070000004D3035305F4944010000000000090000004D3035
      305F44415445010000000000080000004D3035305F53554D0100000000000B00
      0000543032385F49445F42555901000000000012000000543032385F53484F54
      5F4E414D455F4255590100000000000C000000543032385F494E4E5F42555901
      0000000000080000004D3033305F505243010000000000070000004F55545F43
      4E54010000000000090000004D3035305F545950450100000000000E0000004D
      3035305F545950455F44455343010000000000070000004D3033305F49440100
      000000000D0000004449565F49535F434C4F534544010000000000110000004D
      3035305F5441585F56414C55455F5052010000000000110000004D3035305F54
      41585F56414C55455F50460100000000000B0000004F55545F53554D5F555344
      010000000000}
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
    end
    object odsListM050_DATE: TDateTimeField
      FieldName = 'M050_DATE'
    end
    object odsListM050_SUM: TFloatField
      FieldName = 'M050_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT028_ID_BUY: TFloatField
      FieldName = 'T028_ID_BUY'
    end
    object odsListT028_SHOT_NAME_BUY: TStringField
      FieldName = 'T028_SHOT_NAME_BUY'
      Size = 255
    end
    object odsListT028_INN_BUY: TStringField
      FieldName = 'T028_INN_BUY'
      Size = 255
    end
    object odsListM050_TYPE: TIntegerField
      FieldName = 'M050_TYPE'
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object odsListM030_PRC: TFloatField
      FieldName = 'M030_PRC'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_CNT: TFloatField
      FieldName = 'OUT_CNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListM030_ID: TFloatField
      FieldName = 'M030_ID'
    end
    object odsListDIV_IS_CLOSED: TStringField
      FieldName = 'DIV_IS_CLOSED'
      Size = 1
    end
    object odsListM050_TAX_VALUE_PR: TFloatField
      FieldName = 'M050_TAX_VALUE_PR'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListM050_TAX_VALUE_PF: TFloatField
      FieldName = 'M050_TAX_VALUE_PF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_SUM_USD: TFloatField
      FieldName = 'OUT_SUM_USD'
      DisplayFormat = '### ### ### ##0'
    end
  end
  inherited PopupMenu: TPopupMenu
    object N3: TMenuItem [4]
      Action = actShowClosed
    end
    object N2: TMenuItem [5]
      Action = actHideClosed
    end
    object N1: TMenuItem [6]
      Caption = '-'
    end
  end
end

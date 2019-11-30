inherited frm38_SelectIssList: Tfrm38_SelectIssList
  Left = 107
  Top = 118
  Width = 1036
  Height = 633
  Caption = 'Выбор эмитента'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1025
    Height = 547
  end
  inherited Panel2: TPanel
    Top = 566
    Width = 1028
    inherited Panel3: TPanel
      Left = 863
    end
  end
  inherited paRight: TPanel
    Left = 1028
    Height = 547
  end
  inherited paMain: TPanel
    Width = 1025
    Height = 547
    inherited paToolBars: TPanel
      Width = 1025
      inherited ToolBar2: TToolBar
        Width = 1025
        ButtonWidth = 118
        inherited ToolButton6: TToolButton
          Left = 685
          AutoSize = True
        end
        object ToolButton7: TToolButton
          Left = 772
          Top = 0
          AutoSize = True
          Caption = 'Дивиденды'
          DropdownMenu = PopupMenu1
          Style = tbsDropDown
        end
        object ToolButton8: TToolButton
          Left = 855
          Top = 0
          AutoSize = True
          Caption = 'Реинвест. доходы'
          DropdownMenu = PopupMenu2
          Style = tbsDropDown
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1025
      Height = 482
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'M029_IS_DIV'
          PickList.Strings = ()
          ReadOnly = False
          Title.Caption = 'Дивид.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M029_IS_REINV'
          PickList.Strings = ()
          ReadOnly = False
          Title.Caption = 'Реинв.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_REG_NUMBER'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_TICKER_SKRIN'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_ISBANK'
          PickList.Strings = ()
          Title.Caption = 'Признак Банк'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Для связывания эмиссий'
          Width = 90
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 547
    Width = 1028
  end
  inherited ActionList: TActionList
    object actClearDiv: TAction
      Caption = 'Снять'
      Hint = 'Очистить флаг дивидендов'
      ImageIndex = 23
      OnExecute = actClearDivExecute
    end
    object actSetDiv: TAction
      Caption = 'Установить'
      Hint = 'Установить флаг дивидендов'
      ImageIndex = 22
      OnExecute = actSetDivExecute
    end
    object actClearReinv: TAction
      Caption = 'Снять'
      Hint = 'Очистить флаг реинвест. доходы'
      ImageIndex = 23
      OnExecute = actClearReinvExecute
    end
    object actSetReinv: TAction
      Caption = 'Установить'
      Hint = 'Установить флаг реинвест. доходы'
      ImageIndex = 22
      OnExecute = actSetReinvExecute
    end
  end
  inherited PopupMenu: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N2: TMenuItem
      Caption = 'Дивиденды'
      Visible = False
      object N4: TMenuItem
        Action = actSetDiv
      end
      object N5: TMenuItem
        Action = actClearDiv
      end
    end
    object N3: TMenuItem
      Caption = 'Реинвест. доходы'
      Visible = False
      object N6: TMenuItem
        Action = actSetReinv
      end
      object N7: TMenuItem
        Action = actClearReinv
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T028_ID,'
      '  T028_SHOT_NAME,'
      '  T036_ISBANK, '
      '  T036_INCLUDE,'
      '  T028_INN,'
      '  T025_ID,'
      '  T025_SHOT_NAME,'
      '  T036_TICKER_SKRIN,'
      '  T036_MAIL_ADDRESS,'
      '  T036_REG_NUMBER,'
      '  T036_COMPANY_HEAD,'
      '  T028_INDUSTRY,'
      '  T028_INDUSTRY_CODE,'
      '  T028_REGION,'
      '  T028_REGION_CODE,'
      '  T037_ID,'
      '  T028_COUNTRY_ID,'
      '  COUNTRY_NAME, '
      '  T028_CODE,'
      '  M029_IS_DIV,'
      '  M029_IS_REINV'
      'FROM   V_NR_SELECT_ISSUERS')
    QBEDefinition.QBEFieldDefs = {
      040000001500000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D4501000000000008000000543032385F494E4E010000
      00000007000000543032355F49440100000000000E000000543032355F53484F
      545F4E414D450100000000000F000000543032385F434F554E5452595F494401
      00000000000C000000434F554E5452595F4E414D450100000000000900000054
      3032385F434F44450100000000000B000000543033365F495342414E4B010000
      0000000C000000543033365F494E434C55444501000000000011000000543033
      365F5449434B45525F534B52494E01000000000011000000543033365F4D4149
      4C5F414444524553530100000000000F000000543033365F5245475F4E554D42
      455201000000000011000000543033365F434F4D50414E595F48454144010000
      00000007000000543033375F49440100000000000D000000543032385F494E44
      555354525901000000000012000000543032385F494E4455535452595F434F44
      450100000000000B0000004D3032395F49535F4449560100000000000D000000
      4D3032395F49535F5245494E560100000000000B000000543032385F52454749
      4F4E01000000000010000000543032385F524547494F4E5F434F444501000000
      0000}
    object odsListM029_IS_DIV: TFloatField [17]
      FieldName = 'M029_IS_DIV'
    end
    object odsListM029_IS_REINV: TFloatField [18]
      FieldName = 'M029_IS_REINV'
    end
  end
  inherited oqClear: TOracleQuery
    Top = 192
  end
  object oqIssSelect: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_NResident.p_select_iss (:T028_ID, :M029_IS_DIV);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      0C0000003A4D3032395F49535F444956040000000000000000000000}
    Left = 896
    Top = 120
  end
  object oqReinvSelect: TOracleQuery
    SQL.Strings = (
      'begin'
      '  PK_NResident.p_select_reinv(:T028_ID, :M029_IS_REINV);'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      0E0000003A4D3032395F49535F5245494E56040000000000000000000000}
    Left = 936
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    Top = 128
    object N10: TMenuItem
      Action = actSetDiv
    end
    object N11: TMenuItem
      Action = actClearDiv
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 704
    Top = 128
    object N13: TMenuItem
      Action = actSetReinv
    end
    object N14: TMenuItem
      Action = actClearReinv
    end
  end
end

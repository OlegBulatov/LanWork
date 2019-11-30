inherited frm06_IssSelLinkerLeft: Tfrm06_IssSelLinkerLeft
  Caption = 'Выбор эмитентов: невыбранные'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      ButtonWidth = 26
      ShowCaptions = False
      inherited ToolButton18: TToolButton
        Left = 27
      end
      inherited ToolButton19: TToolButton
        Left = 54
      end
      inherited ToolButton5: TToolButton
        Left = 81
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Left = 108
      end
      inherited ToolBar1: TToolBar
        Left = 116
      end
      inherited sp02: TToolButton
        Left = 185
      end
      inherited tbSimFilter: TToolButton
        Left = 193
      end
      inherited tbSep01: TToolButton
        Left = 233
      end
      inherited tlbSearch: TToolBar
        Left = 241
      end
      inherited ToolButton13: TToolButton
        Left = 311
      end
      inherited tbExcel: TToolButton
        Left = 319
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_REG_NUMBER'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_TICKER_SKRIN'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_ISBANK'
          PickList.Strings = ()
          Title.Caption = 'Признак банк'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Связывать'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_COMPANY_HEAD'
          PickList.Strings = ()
          Title.Caption = 'Руководитель'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_MAIL_ADDRESS'
          PickList.Strings = ()
          Title.Caption = 'Адрес'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY'
          PickList.Strings = ()
          Title.Caption = 'Отрасль'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T037_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 50
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited paLeft02: TPanel
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft04: TPanel
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited Panel1: TPanel
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited paLeft02: TPanel
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft04: TPanel
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited Panel1: TPanel
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T028_ID,'
      ' T028_SHOT_NAME,'
      ' T025_SHOT_NAME,'
      ' T028_INN,'
      ' COUNTRY_NAME,'
      ' T036_REG_NUMBER,'
      ' T036_TICKER_SKRIN,'
      ' T036_ISBANK,'
      ' T036_INCLUDE,'
      ' T036_COMPANY_HEAD,'
      ' T036_MAIL_ADDRESS,'
      ' T028_INDUSTRY,'
      ' T028_INDUSTRY_CODE,'
      ' T037_SHOT_NAME'
      'FROM V_NR_ISSUERS_NOT_SELECT')
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000E000000543032355F53484F545F4E
      414D4501000000000008000000543032385F494E4E0100000000000C00000043
      4F554E5452595F4E414D450100000000000F000000543033365F5245475F4E55
      4D4245520100000000000B000000543033365F495342414E4B0100000000000C
      000000543033365F494E434C55444501000000000011000000543033365F434F
      4D50414E595F4845414401000000000011000000543033365F4D41494C5F4144
      44524553530100000000000E000000543033375F53484F545F4E414D45010000
      00000011000000543033365F5449434B45525F534B52494E0100000000000D00
      0000543032385F494E44555354525901000000000012000000543032385F494E
      4455535452595F434F4445010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT036_REG_NUMBER: TStringField
      FieldName = 'T036_REG_NUMBER'
      Size = 255
    end
    object odsListT036_TICKER_SKRIN: TStringField
      FieldName = 'T036_TICKER_SKRIN'
      Size = 30
    end
    object odsListT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Size = 1
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 1
    end
    object odsListT036_COMPANY_HEAD: TStringField
      FieldName = 'T036_COMPANY_HEAD'
      Size = 355
    end
    object odsListT036_MAIL_ADDRESS: TStringField
      FieldName = 'T036_MAIL_ADDRESS'
      Size = 255
    end
    object odsListT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_INDUSTRY: TStringField
      FieldName = 'T028_INDUSTRY'
      Size = 255
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
  end
end

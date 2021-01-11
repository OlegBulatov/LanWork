inherited frm68_CountryStateList: Tfrm68_CountryStateList
  Left = 310
  Top = 182
  Width = 606
  Height = 392
  Caption = 'Страны с негативной репутацией'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 595
    Height = 306
  end
  inherited paRight: TPanel
    Left = 598
    Height = 306
  end
  inherited paMain: TPanel
    Width = 595
    Height = 306
    inherited ToolBar2: TToolBar
      Width = 595
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 595
      Height = 241
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Квартал'
          Width = 302
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Признак негативной репутации'
          Width = 178
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 595
      inherited Panel1: TPanel
        Left = 568
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 595
      inherited Panel1: TPanel
        Left = 568
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 339
    Width = 598
  end
  inherited pnlButtons: TPanel
    Top = 306
    Width = 598
    inherited OKBtn: TButton
      Left = 333
    end
    inherited CancelBtn: TButton
      Left = 413
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select SN015_ISO_DIG, T055_ID, T055_START_DATE, T055_LONG_NAME, '
      'STATE_ID, STATE_DESC'
      'from  V_405_GOS_LIST_STATE'
      'WHERE SN015_ISO_DIG = :SN015_ISO_DIG'
      'ORDER BY T055_START_DATE')
    Variables.Data = {
      03000000010000000E0000003A534E3031355F49534F5F444947040000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000060000000D000000534E3031355F49534F5F44494701000000000007
      000000543035355F49440100000000000F000000543035355F53544152545F44
      4154450100000000000E000000543035355F4C4F4E475F4E414D450100000000
      000800000053544154455F49440100000000000A00000053544154455F444553
      43010000000000}
    MasterFields = 'SN015_ISO_DIG'
    object odsListSN015_ISO_DIG: TFloatField
      FieldName = 'SN015_ISO_DIG'
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListSTATE_ID: TStringField
      FieldName = 'STATE_ID'
      Size = 4
    end
    object odsListSTATE_DESC: TStringField
      FieldName = 'STATE_DESC'
      ReadOnly = True
      Size = 23
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_Form_405.P_SET_TO_NEGATIVE_STATE ( :I_T055_ID, :I_ISO_DIG )' +
        ';'
      '  COMMIT; '
      'END;'
      ' ')
    Variables.Data = {
      03000000020000000A0000003A495F543035355F494405000000000000000000
      00000A0000003A495F49534F5F444947040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      
        '  Pk_Form_405.P_SET_TO_POSITIVE_STATE ( :I_T055_ID, :I_ISO_DIG )' +
        ';'
      '  COMMIT; '
      'END;'
      ' ')
    Variables.Data = {
      03000000020000000A0000003A495F543035355F494405000000000000000000
      00000A0000003A495F49534F5F444947040000000000000000000000}
  end
end

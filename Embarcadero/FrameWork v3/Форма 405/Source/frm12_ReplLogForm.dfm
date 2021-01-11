inherited frm12_ReplLog: Tfrm12_ReplLog
  Left = 142
  Top = 142
  Width = 851
  Height = 532
  Caption = 'Журнал загрузки'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 840
    Height = 445
  end
  inherited paRight: TPanel
    Left = 843
    Height = 445
  end
  inherited paMain: TPanel
    Width = 840
    Height = 445
    inherited ToolBar2: TToolBar
      Width = 840
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 840
      Height = 380
      AdvSettings.Indexes = <
        item
          FieldName = 'T015_START_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T002_NUMB_IN_YEA_TEXT'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          PickList.Strings = ()
          Title.Caption = 'Название банка'
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T015_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Начало загрузки'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T015_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Окончание загрузки'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T015_DESC'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Width = 214
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 840
      inherited Panel1: TPanel
        Left = 813
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 840
      inherited Panel1: TPanel
        Left = 813
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 478
    Width = 843
    Height = 20
  end
  inherited pnlButtons: TPanel
    Top = 445
    Width = 843
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
      'SELECT T015_ID,'
      '       T015_START_DATE,'
      '       T015_END_DATE,'
      '       T015_SUCCESS,'
      '       T015_DESC,'
      '       REGN, NAME,       '
      '       T002_NUMB_IN_YEA_TEXT'
      'FROM V_405_REPLICATION_LOG'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543031355F49440100000000000F000000543031
      355F53544152545F444154450100000000000D000000543031355F454E445F44
      4154450100000000000C000000543031355F5355434345535301000000000009
      000000543031355F4445534301000000000015000000543030325F4E554D425F
      494E5F5945415F54455854010000000000040000005245474E01000000000004
      0000004E414D45010000000000}
    object odsListT015_ID: TFloatField
      FieldName = 'T015_ID'
      Required = True
    end
    object odsListT015_START_DATE: TDateTimeField
      FieldName = 'T015_START_DATE'
      Required = True
    end
    object odsListT015_END_DATE: TDateTimeField
      FieldName = 'T015_END_DATE'
    end
    object odsListT015_SUCCESS: TStringField
      FieldName = 'T015_SUCCESS'
      Required = True
      Size = 1
    end
    object odsListT015_DESC: TStringField
      FieldName = 'T015_DESC'
      Size = 2000
    end
    object odsListT002_NUMB_IN_YEA_TEXT: TStringField
      FieldName = 'T002_NUMB_IN_YEA_TEXT'
      Size = 4000
    end
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 250
    end
  end
end

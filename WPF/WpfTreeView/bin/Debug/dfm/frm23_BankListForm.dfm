inherited frm23_BankList: Tfrm23_BankList
  Left = 234
  Width = 1039
  Height = 647
  Caption = 'Реестр КО'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1028
    Height = 561
  end
  inherited paRight: TPanel
    Left = 1031
    Height = 561
  end
  inherited paMain: TPanel
    Width = 1028
    Height = 561
    inherited ToolBar2: TToolBar
      Width = 1028
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1028
      Height = 496
      Columns = <
        item
          Expanded = False
          FieldName = 'REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEWNUM'
          PickList.Strings = ()
          Title.Caption = 'БИК'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_P'
          PickList.Strings = ()
          Title.Caption = 'Город'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADR'
          PickList.Strings = ()
          Title.Caption = 'Адрес'
          Width = 250
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1028
      inherited Panel1: TPanel
        Left = 1001
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1028
      inherited Panel1: TPanel
        Left = 1001
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 594
    Width = 1031
  end
  inherited pnlButtons: TPanel
    Top = 561
    Width = 1031
    inherited OKBtn: TButton
      Left = 873
    end
    inherited CancelBtn: TButton
      Left = 953
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT REGN, NAME, NEWNUM, NAME_P, ADR'
      'FROM   V_BANC_LIST'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      0400000005000000040000005245474E010000000000040000004E414D450100
      00000000060000004E414D455F50010000000000030000004144520100000000
      00060000004E45574E554D010000000000}
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Size = 9
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 250
    end
    object odsListNAME_P: TStringField
      FieldName = 'NAME_P'
      Size = 250
    end
    object odsListADR: TStringField
      FieldName = 'ADR'
      Size = 30
    end
    object odsListNEWNUM: TStringField
      FieldName = 'NEWNUM'
      Size = 9
    end
  end
end

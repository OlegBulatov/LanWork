inherited frm69_CurrencyList: Tfrm69_CurrencyList
  Left = 213
  Top = 155
  Width = 640
  Height = 480
  Caption = 'Справочник валют'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 629
    Height = 394
  end
  inherited paRight: TPanel
    Left = 632
    Height = 394
  end
  inherited paMain: TPanel
    Width = 629
    Height = 394
    inherited ToolBar2: TToolBar
      Width = 629
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 629
      Height = 329
      AdvSettings.Indexes = <
        item
          FieldName = 'ISO_ID'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'ISO_ID'
          PickList.Strings = ()
          Title.Caption = 'Код ISO'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISO_LAT3'
          PickList.Strings = ()
          Title.Caption = 'Код LAT'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_RUSH'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 437
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 629
      inherited Panel1: TPanel
        Left = 602
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 629
      inherited Panel1: TPanel
        Left = 602
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 427
    Width = 632
  end
  inherited pnlButtons: TPanel
    Top = 394
    Width = 632
    inherited OKBtn: TButton
      Left = 474
    end
    inherited CancelBtn: TButton
      Left = 554
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
      'SELECT ISO_ID, NAME_RUSH, ISO_LAT3, CURR_DESC'
      'FROM V_405_CURRENCY')
    QBEDefinition.QBEFieldDefs = {
      04000000040000000600000049534F5F4944010000000000090000004E414D45
      5F525553480100000000000800000049534F5F4C415433010000000000090000
      00435552525F44455343010000000000}
    object odsListISO_ID: TStringField
      FieldName = 'ISO_ID'
      Size = 3
    end
    object odsListNAME_RUSH: TStringField
      FieldName = 'NAME_RUSH'
      Size = 100
    end
    object odsListISO_LAT3: TStringField
      FieldName = 'ISO_LAT3'
      Size = 3
    end
    object odsListCURR_DESC: TStringField
      FieldName = 'CURR_DESC'
      Size = 106
    end
  end
end

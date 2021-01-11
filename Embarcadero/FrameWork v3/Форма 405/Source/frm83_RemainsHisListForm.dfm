inherited frm83_RemainsHisList: Tfrm83_RemainsHisList
  Left = 320
  Top = 237
  Width = 497
  Caption = 'История'
  Constraints.MinHeight = 353
  Constraints.MinWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 486
  end
  inherited paRight: TPanel
    Left = 489
  end
  inherited paMain: TPanel
    Width = 486
    inherited ToolBar2: TToolBar
      Width = 486
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 486
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_END_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Период'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR'
          PickList.Strings = ()
          Title.Caption = 'Используемая форма'
          Width = 150
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 486
      inherited Panel1: TPanel
        Left = 459
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 486
      inherited Panel1: TPanel
        Left = 477
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 489
  end
  inherited pnlButtons: TPanel
    Width = 489
    Visible = True
    inherited OKBtn: TButton
      Left = 207
      Hint = ''
      Action = nil
      Caption = 'ОК'
      Enabled = True
      Visible = True
    end
    inherited CancelBtn: TButton
      Left = 411
      Visible = False
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
      
        'select V3.T055_END_DATE, V3.T055_LONG_NAME, DECODE(V1.T095_FLAG,' +
        ' '#39'1'#39', '#39'Форма 405'#39', '#39'2'#39', '#39'Форма 711'#39') DESCR'
      'from T095_REMAINS V1,'
      '     T094_REMAINS_PERIOD V2,'
      '     V_405_TIME V3'
      'where V1.T094_ID = V2.T094_ID'
      'and  V2.T094_ID > 0'
      'and  V2.T094_ID <= :T094_ID'
      'and  V2.T055_ID = V3.T055_ID'
      'and  V1.T030_ID = :T030_ID'
      'and  V2.T027_ID = :T027_ID'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543033305F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543039
      345F4944040000000000000000000000}
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListDESCR: TStringField
      FieldName = 'DESCR'
      Size = 9
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
    end
  end
end

inherited A006_Selector: TA006_Selector
  Left = 324
  Top = 246
  Width = 522
  Height = 470
  Caption = 'Фильтр'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 511
    Height = 384
  end
  inherited paRight: TPanel
    Left = 514
    Height = 384
  end
  inherited paMain: TPanel
    Width = 511
    Height = 384
    inherited ToolBar2: TToolBar
      Width = 511
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 511
      Height = 319
      Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      OnMouseUp = nil
      AdvSettings.Guid = '{AB3BF6E4-9E1C-43F5-B283-0C0D66A62DA7}'
      AdvSettings.Enabled = False
      Columns = <
        item
          Expanded = False
          FieldName = 'CHECK_BOX'
          PickList.Strings = ()
          Title.Caption = 'Поле для выбора'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIELD_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Значение'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOOKUP_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 400
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 511
      inherited Panel1: TPanel
        Left = 484
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 511
      inherited Panel1: TPanel
        Left = 484
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 417
    Width = 514
  end
  inherited pnlButtons: TPanel
    Top = 384
    Width = 514
    inherited OKBtn: TButton
      Left = 356
    end
    inherited CancelBtn: TButton
      Left = 436
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
    CountAllRecords = True
    AfterOpen = odsListAfterOpen
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE '
      '  RetVal VARCHAR2(255);'
      'BEGIN '
      
        '  :RetVal := DPB_405_BOSS.PK_405_PIVOT_TABLE.F_GET_SELECT_SQL ( ' +
        ':I_T161_ID );'
      'END; ')
    Variables.Data = {
      0300000002000000070000003A52455456414C0500000000000000000000000A
      0000003A495F543136315F4944040000000000000000000000}
  end
end

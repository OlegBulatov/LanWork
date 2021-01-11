inherited A006_Selector: TA006_Selector
  Left = 324
  Top = 246
  Caption = #1060#1080#1083#1100#1090#1088
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 511
    ExplicitHeight = 384
  end
  inherited paRight: TPanel
    ExplicitLeft = 514
    ExplicitHeight = 384
  end
  inherited paMain: TPanel
    ExplicitWidth = 511
    ExplicitHeight = 384
    inherited ToolBar2: TToolBar
      ExplicitWidth = 511
    end
    inherited xxxDBGrid: TxxxDBGrid
      Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      OnMouseUp = nil
      AdvSettings.Guid = '{AB3BF6E4-9E1C-43F5-B283-0C0D66A62DA7}'
      AdvSettings.Enabled = False
      Columns = <
        item
          Expanded = False
          FieldName = 'CHECK_BOX'
          Title.Caption = #1055#1086#1083#1077' '#1076#1083#1103' '#1074#1099#1073#1086#1088#1072
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIELD_VALUE'
          Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOOKUP_VALUE'
          Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Width = 400
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 484
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 484
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 417
    ExplicitWidth = 514
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 384
    ExplicitWidth = 514
    inherited OKBtn: TButton
      Left = 356
      ExplicitLeft = 356
    end
    inherited CancelBtn: TButton
      Left = 436
      ExplicitLeft = 436
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
      04000000020000000E0000003A00520045005400560041004C00050000000000
      000000000000140000003A0049005F0054003100360031005F00490044000400
      00000000000000000000}
  end
end

inherited frm14_DBFParentList: Tfrm14_DBFParentList
  Left = 133
  Top = 74
  Caption = 'frm14_DBFParentList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 273
    ExplicitTop = 314
    ExplicitWidth = 883
  end
  inherited spRight: TSplitter
    Top = 18
    Height = 203
    ExplicitLeft = 880
    ExplicitTop = 18
    ExplicitHeight = 296
  end
  inherited paRight: TPanel
    Top = 18
    Height = 203
    ExplicitLeft = 883
    ExplicitTop = 18
    ExplicitHeight = 296
  end
  inherited paMain: TPanel
    Top = 18
    Height = 203
    ExplicitTop = 18
    ExplicitWidth = 880
    ExplicitHeight = 296
    inherited ToolBar2: TToolBar
      ExplicitWidth = 880
      inherited ToolButton4: TToolButton
        Enabled = False
        Visible = False
      end
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      inherited ToolButton5: TToolButton
        Left = 593
        ExplicitLeft = 593
      end
      inherited ToolButton7: TToolButton
        Left = 601
        AutoSize = True
        ExplicitLeft = 601
      end
      object ToolButton9: TToolButton
        Left = 688
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 696
        Top = 0
        Action = actDelAll
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 138
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 853
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 853
      end
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 0
    Width = 680
    Height = 18
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitWidth = 883
    object Label1: TLabel
      Left = 7
      Top = 2
      Width = 110
      Height = 13
      Caption = #1047#1072#1075#1088#1091#1078#1077#1085#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    end
  end
  inherited Panel1: TPanel
    Top = 276
    Height = 167
    ExplicitTop = 317
    ExplicitWidth = 883
    ExplicitHeight = 167
    inherited pc01: TPageControl
      Height = 165
      ExplicitWidth = 881
      ExplicitHeight = 165
      inherited ts01: TTabSheet
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1092#1072#1081#1083#1072
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 873
          Height = 23
          ButtonWidth = 108
          Caption = 'ToolBar2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Images = dm02_Picters.ilCommonPictures
          List = True
          ParentFont = False
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          Wrapable = False
          object tbSelectFile: TToolButton
            Left = 0
            Top = 0
            Action = actSelect
            AutoSize = True
          end
          object tbViewFile: TToolButton
            Left = 112
            Top = 0
            Action = actView
            AutoSize = True
          end
          object tbLoadFile: TToolButton
            Left = 194
            Top = 0
            Action = actLoad
            AutoSize = True
          end
        end
        object ListView: TListView
          Left = 0
          Top = 23
          Width = 873
          Height = 114
          Align = alClient
          Checkboxes = True
          Columns = <
            item
              Caption = #1060#1072#1081#1083
              Width = 500
            end
            item
              Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1079#1072#1075#1088#1091#1079#1082#1080
              Width = 350
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 254
    ExplicitWidth = 883
  end
  inherited pnlButtons: TPanel
    Top = 221
    ExplicitWidth = 883
    inherited OKBtn: TButton
      Left = 725
      ExplicitLeft = 725
    end
    inherited CancelBtn: TButton
      Left = 805
      ExplicitLeft = 805
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
    inherited actShowDetail: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072'...'
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1082#1088#1099#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1079#1072#1075#1088#1091#1079#1082#1080'...'
    end
    object actSelect: TAction
      Category = 'DBF'
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083#1099
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083#1099' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080
      ImageIndex = 12
      OnExecute = actSelectExecute
    end
    object actView: TAction
      Category = 'DBF'
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1092#1072#1081#1083#1072
      ImageIndex = 11
      OnExecute = actViewExecute
      OnUpdate = actViewUpdate
    end
    object actLoad: TAction
      Category = 'DBF'
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083#1099' '#1074' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      ImageIndex = 13
      OnExecute = actLoadExecute
      OnUpdate = actLoadUpdate
    end
    object actDelAll: TAction
      Category = 'DBF'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080' '#1080#1079' '#1090#1072#1073#1083#1080#1094#1099
      ImageIndex = 2
      OnExecute = actDelAllExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select 1 from dual')
  end
  object OpenDialog: TOpenDialog
    Filter = 'DBF files (*.dbf)|*.dbf|CSV files (*.csv)|*.csv'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 47
    Top = 80
  end
  object oqLoad: TOracleQuery
    Session = dmMain.OracleSession
    Optimize = False
    Left = 136
    Top = 216
  end
  object PkDBF: TOraclePackage
    Session = dmMain.OracleSession
    PackageName = 'PK_LOAD_DBF'
    Left = 168
    Top = 147
  end
end

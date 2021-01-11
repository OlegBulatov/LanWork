inherited frm831_EmissPaymentsList: Tfrm831_EmissPaymentsList
  Left = 358
  Top = 110
  Caption = #1042#1099#1087#1083#1072#1090#1099' '#1101#1084#1080#1089#1089#1080#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 486
    ExplicitHeight = 746
  end
  inherited paRight: TPanel
    ExplicitLeft = 489
    ExplicitHeight = 746
  end
  inherited paMain: TPanel
    ExplicitWidth = 486
    ExplicitHeight = 746
    inherited ToolBar2: TToolBar
      ExplicitWidth = 486
    end
    inherited xxxDBGrid: TxxxDBGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'PAY_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_DEFAULT'
          Title.Caption = #1044#1077#1092#1086#1083#1090
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_TYPE_DESC'
          Title.Caption = #1058#1080#1087' '#1074#1099#1087#1083#1072#1090#1099
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_DATE'
          Title.Caption = #1044#1072#1090#1072
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_RATE'
          Title.Caption = #1057#1090#1072#1074#1082#1072' (%)'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 459
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 477
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 779
    ExplicitWidth = 489
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 746
    ExplicitWidth = 489
    inherited OKBtn: TButton
      Left = 331
      ExplicitLeft = 331
    end
    inherited CancelBtn: TButton
      Left = 411
      ExplicitLeft = 411
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
      'SELECT IS_DEFAULT,'
      '       T030_ID,'
      '       T092_ID,'
      '       T032_ID,'
      '       PAY_TYPE_DESC,'
      '       PAY_DATE,'
      '       PAY_RATE'
      'FROM   V_405_EMISS_PAYMENTS_DEF'
      'WHERE  T030_ID = :T030_ID')
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000000E00000054003000330030005F0049004400010000000000
      0E00000054003000390032005F00490044000100000000000E00000054003000
      330032005F00490044000100000000001A0000005000410059005F0054005900
      500045005F004400450053004300010000000000100000005000410059005F00
      4400410054004500010000000000100000005000410059005F00520041005400
      450001000000000014000000490053005F00440045004600410055004C005400
      010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT092_ID: TFloatField
      FieldName = 'T092_ID'
    end
    object odsListT032_ID: TFloatField
      FieldName = 'T032_ID'
    end
    object odsListPAY_TYPE_DESC: TStringField
      FieldName = 'PAY_TYPE_DESC'
      Size = 9
    end
    object odsListPAY_DATE: TDateTimeField
      FieldName = 'PAY_DATE'
    end
    object odsListPAY_RATE: TFloatField
      FieldName = 'PAY_RATE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIS_DEFAULT: TFloatField
      FieldName = 'IS_DEFAULT'
    end
  end
  object oqDefaultAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_T150_rec PK_405_Default_NEW.t_T150_rec;'
      'BEGIN'
      '  v_T150_rec.T030_ID := :T030_ID;'
      '  v_T150_rec.T032_ID := :T032_ID;'
      '  v_T150_rec.T092_ID := :T092_ID;'
      '  PK_405_Default_NEW.p_default_add (v_T150_rec);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A0054003000330032005F004900440004000000
      0000000000000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    Left = 136
    Top = 224
  end
  object oqDefaultDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_default_delete (:T092_ID, :T032_ID);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330032005F004900440004000000
      0000000000000000}
    Left = 168
    Top = 224
  end
end

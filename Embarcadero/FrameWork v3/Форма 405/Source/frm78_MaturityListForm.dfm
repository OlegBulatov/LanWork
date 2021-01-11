inherited frm78_MaturityList: Tfrm78_MaturityList
  Left = 235
  Top = 165
  Caption = #1052#1072#1090#1088#1080#1094#1072' '#1087#1086#1075#1072#1096#1077#1085#1080#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 746
    ExplicitHeight = 346
  end
  inherited paRight: TPanel
    ExplicitLeft = 749
    ExplicitHeight = 346
  end
  inherited paMain: TPanel
    ExplicitWidth = 746
    ExplicitHeight = 346
    inherited ToolBar2: TToolBar
      ExplicitWidth = 746
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actFill
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T092_DATE'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T092_DATE'
          Title.Caption = #1044#1072#1090#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T092_RATE'
          Title.Caption = #1057#1090#1072#1074#1082#1072' (%)'
          Width = 94
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      inherited Panel1: TPanel
        ExplicitLeft = 719
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      inherited Panel1: TPanel
        ExplicitLeft = 719
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 379
    ExplicitWidth = 749
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 346
    ExplicitWidth = 749
  end
  inherited ActionList: TActionList
    object actFill: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      Enabled = False
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1084#1072#1090#1088#1080#1094#1091' '#1076#1086' '#1076#1072#1090#1099' '#1087#1086#1075#1072#1096#1077#1085#1080#1103
      ImageIndex = 19
      Visible = False
      OnExecute = actFillExecute
      OnUpdate = actFillUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T092_ROWID,'
      '       T092_ID,'
      '       T030_ID,'
      '       T092_DATE,'
      '       T092_RATE'
      'FROM   V_405_MATURITY_MATRIX'
      'WHERE  T030_ID = :T030_ID'
      ' ')
    Variables.Data = {
      0400000001000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000E00000054003000330030005F0049004400010000000000
      0E00000054003000390032005F00490044000100000000001200000054003000
      390032005F004400410054004500010000000000120000005400300039003200
      5F005200410054004500010000000000}
    MasterFields = 'T030_ID'
    object odsListT092_ID: TFloatField
      FieldName = 'T092_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT092_DATE: TDateTimeField
      FieldName = 'T092_DATE'
      Required = True
    end
    object odsListT092_RATE: TFloatField
      FieldName = 'T092_RATE'
      Required = True
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  v_rec.T092_RATE := :T092_RATE;'
      '  Pk_Form_405.p_maturity_date_add(v_rec);'
      '  :T092_ID := v_rec.T092_ID;'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T092_DATE := v_rec.T092_DATE;'
      '  :T092_RATE := v_rec.T092_RATE;'
      'END;'
      ' ')
    Variables.Data = {
      0400000004000000100000003A0054003000330030005F004900440004000000
      0000000000000000140000003A0054003000390032005F004400410054004500
      0C0000000000000000000000100000003A0054003000390032005F0049004400
      040000000000000000000000140000003A0054003000390032005F0052004100
      54004500040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T092_ID := :T092_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  v_rec.T092_RATE := :T092_RATE;'
      '  Pk_Form_405.p_maturity_date_update(v_rec);'
      '  :T030_ID := v_rec.T030_ID;'
      '  :T092_DATE := v_rec.T092_DATE;'
      '  :T092_RATE := v_rec.T092_RATE;'
      'END;'
      ' ')
    Variables.Data = {
      0400000004000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330030005F004900440004000000
      0000000000000000140000003A0054003000390032005F004400410054004500
      0C0000000000000000000000140000003A0054003000390032005F0052004100
      54004500040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T092_ID := :T092_ID;'
      '  Pk_Form_405.p_maturity_date_delete(v_rec);'
      'END;')
    Variables.Data = {
      0400000001000000100000003A0054003000390032005F004900440004000000
      0000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T092_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T092_ID := :T092_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T092_DATE := :T092_DATE;'
      '  :o_result := Pk_Form_405.f_maturity_date_check(v_rec);'
      'END;')
    Variables.Data = {
      0400000004000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330030005F004900440004000000
      0000000000000000140000003A0054003000390032005F004400410054004500
      0C0000000000000000000000120000003A004F005F0052004500530055004C00
      5400040000000000000000000000}
  end
  object oqFill: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      ' Pk_Form_405.p_maturity_date_fill(:T030_ID, :T092_ID);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000100000003A0054003000390032005F004900440004000000
      0000000000000000100000003A0054003000330030005F004900440004000000
      0000000000000000}
    Left = 320
    Top = 184
  end
end

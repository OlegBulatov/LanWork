inherited A006_2_PTData: TA006_2_PTData
  Width = 819
  Height = 461
  ExplicitWidth = 819
  ExplicitHeight = 461
  inherited paMain: TPanel
    Width = 819
    Height = 461
    ExplicitWidth = 819
    ExplicitHeight = 461
    inherited xxxDBGrid: TxxxDBGrid
      Width = 819
      Height = 376
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 819
      ExplicitWidth = 819
      inherited Panel1: TPanel
        Left = 792
        ExplicitLeft = 792
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 819
      ExplicitWidth = 819
      inherited Panel1: TPanel
        Left = 792
        ExplicitLeft = 792
      end
    end
    inherited paTopToolBar: TPanel
      Width = 819
      ExplicitWidth = 819
      inherited tbDB: TToolBar
        Enabled = False
        Visible = False
        inherited tbAdd: TToolButton
          Enabled = False
        end
        inherited tbEdit: TToolButton
          Enabled = False
        end
        inherited ToolButton8: TToolButton
          Enabled = False
        end
      end
      inherited tbExtend: TToolBar
        inherited ToolButton14: TToolButton
          Action = nil
          Enabled = False
          Visible = False
        end
        inherited ToolButton11: TToolButton
          Enabled = False
          Visible = False
        end
        inherited tbSearch: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton15: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    object Memo1: TMemo
      Left = 408
      Top = 144
      Width = 409
      Height = 241
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
    end
    object Panel1: TPanel
      Left = 0
      Top = 441
      Width = 819
      Height = 20
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
      object Label1: TLabel
        Left = 4
        Top = 4
        Width = 43
        Height = 13
        Caption = #1042#1088#1077#1084#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTime: TLabel
        Left = 56
        Top = 4
        Width = 30
        Height = 13
        Caption = 'lbTime'
      end
      object chbShowSQL: TCheckBox
        Left = 131
        Top = 4
        Width = 142
        Height = 17
        Caption = #1087#1086#1082#1072#1079#1072#1090#1100' '#1090#1077#1082#1089#1090' SQL'
        TabOrder = 0
      end
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '   PK_405_PIVOT_TABLE.p_build_sql_text ('
      '    :i_column_id     ,   '
      '    :i_field_id      ,       '
      '    :o_select_text   ,   '
      '    :o_table_text    ,    '
      '    :o_where_text    ,  '
      '    :o_group_by_text  '
      '   );'
      'END; '
      ' '
      ' ')
    Variables.Data = {
      0400000006000000180000003A0049005F0043004F004C0055004D004E005F00
      49004400040000000000000001000000FF00000000000000160000003A004900
      5F004600490045004C0044005F0049004400040000000000000001000000FF00
      0000000000001C0000003A004F005F00530045004C004500430054005F005400
      45005800540005000000000000000100000032000000FF0000001A0000003A00
      4F005F005400410042004C0045005F0054004500580054000500000000000000
      0100000032000000FF0000001A0000003A004F005F0057004800450052004500
      5F00540045005800540005000000000000000100000032000000FF0000002000
      00003A004F005F00470052004F00550050005F00420059005F00540045005800
      540005000000000000000100000032000000FF000000}
  end
  object odsFields: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T162_ID,'
      '  T162_POSITION,'
      'T162_DISPLAY_NAME,'
      '  DISPLAY_NAME,'
      '  T161_ID,'
      '  T161_POSITION,'
      'T161_DISPLAY_NAME,'
      'T161_SQL_NAME,'
      'T161_DISPLAY_FORMAT,'
      'T160_PREFIX'
      'FROM V_405_PT_FIELDS')
    ReadBuffer = 50
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000E00000054003100360032005F0049004400010000000000
      1A00000054003100360032005F0050004F0053004900540049004F004E000100
      000000001800000044004900530050004C00410059005F004E0041004D004500
      0100000000000E00000054003100360031005F00490044000100000000001A00
      000054003100360031005F0050004F0053004900540049004F004E0001000000
      00002200000054003100360032005F0044004900530050004C00410059005F00
      4E0041004D0045000100000000002200000054003100360031005F0044004900
      530050004C00410059005F004E0041004D004500010000000000160000005400
      3100360030005F005000520045004600490058000100000000001A0000005400
      3100360031005F00530051004C005F004E0041004D0045000100000000002600
      000054003100360031005F0044004900530050004C00410059005F0046004F00
      52004D0041005400010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    OnApplyRecord = odsListApplyRecord
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 104
    Top = 289
    object odsFieldsT162_ID: TFloatField
      FieldName = 'T162_ID'
      Required = True
    end
    object odsFieldsT162_POSITION: TFloatField
      FieldName = 'T162_POSITION'
      Required = True
    end
    object odsFieldsT162_DISPLAY_NAME: TStringField
      FieldName = 'T162_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsFieldsDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 513
    end
    object odsFieldsT161_ID: TFloatField
      FieldName = 'T161_ID'
      Required = True
    end
    object odsFieldsT161_POSITION: TFloatField
      FieldName = 'T161_POSITION'
      Required = True
    end
    object odsFieldsT161_DISPLAY_NAME: TStringField
      FieldName = 'T161_DISPLAY_NAME'
      Required = True
      Size = 255
    end
    object odsFieldsT161_SQL_NAME: TStringField
      FieldName = 'T161_SQL_NAME'
      Required = True
      Size = 255
    end
    object odsFieldsT160_PREFIX: TStringField
      FieldName = 'T160_PREFIX'
      Required = True
      Size = 50
    end
    object odsFieldsT161_DISPLAY_FORMAT: TStringField
      FieldName = 'T161_DISPLAY_FORMAT'
      Size = 255
    end
  end
end

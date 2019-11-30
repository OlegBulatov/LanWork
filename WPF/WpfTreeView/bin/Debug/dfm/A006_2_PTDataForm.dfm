inherited A006_2_PTData: TA006_2_PTData
  Width = 819
  Height = 461
  inherited paMain: TPanel
    Width = 819
    Height = 461
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
          PickList.Strings = ()
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 819
      inherited Panel1: TPanel
        Left = 792
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 819
      inherited Panel1: TPanel
        Left = 792
      end
    end
    inherited paTopToolBar: TPanel
      Width = 819
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
        Caption = 'Время:'
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
        Width = 31
        Height = 13
        Caption = 'lbTime'
      end
      object chbShowSQL: TCheckBox
        Left = 131
        Top = 4
        Width = 142
        Height = 17
        Caption = 'показать текст SQL'
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
      03000000060000000C0000003A495F434F4C554D4E5F49440400000000000000
      01000000FF000000000000000B0000003A495F4649454C445F49440400000000
      00000001000000FF000000000000000E0000003A4F5F53454C4543545F544558
      5405000000000000000100000032000000FF0000000D0000003A4F5F5441424C
      455F5445585405000000000000000100000032000000FF0000000D0000003A4F
      5F57484552455F5445585405000000000000000100000032000000FF00000010
      0000003A4F5F47524F55505F42595F5445585405000000000000000100000032
      000000FF000000}
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
    QBEDefinition.QBEFieldDefs = {
      040000000A00000007000000543136325F49440100000000000D000000543136
      325F504F534954494F4E0100000000000C000000444953504C41595F4E414D45
      01000000000007000000543136315F49440100000000000D000000543136315F
      504F534954494F4E01000000000011000000543136325F444953504C41595F4E
      414D4501000000000011000000543136315F444953504C41595F4E414D450100
      000000000B000000543136305F5052454649580100000000000D000000543136
      315F53514C5F4E414D4501000000000013000000543136315F444953504C4159
      5F464F524D4154010000000000}
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

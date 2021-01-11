inherited frm58_101List: Tfrm58_101List
  Left = 152
  Top = 253
  Caption = #1044#1072#1085#1085#1099#1077' '#1092#1086#1088#1084#1099' 101'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'REGN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'REGN'
          Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088' '#1050#1054
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1050#1054
          Width = 272
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          Title.Caption = #1055#1077#1088#1080#1086#1076
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T061_SUM'
          Title.Caption = #1057#1091#1084#1084#1072' ('#1084#1083#1085'. '#1076#1086#1083#1083'.)'
          Width = 125
          Visible = True
        end>
    end
  end
  inherited Panel1: TPanel
    inherited pc01: TPageControl
      inherited ts01: TTabSheet
        inherited ToolBar3: TToolBar
          Height = 22
          AutoSize = True
          ExplicitHeight = 22
        end
        inherited ListView: TListView
          Top = 22
          Height = 115
          ExplicitTop = 22
          ExplicitHeight = 115
        end
      end
    end
  end
  inherited pnlButtons: TPanel
    TabOrder = 2
    ExplicitWidth = 883
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = True
      Visible = True
    end
    inherited actDeleteAttributes: TAction
      Enabled = True
      Visible = True
    end
    inherited actEditAttributes: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select'
      '  T061_ROWID,'
      '  T061_ID,'
      '  T055_ID,'
      '  T055_LONG_NAME,'
      '  T061_SUM,'
      '  REGN,'
      '  BANK_NAME'
      'from V_405_KO_SUM'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      05000000060000000E00000054003000360031005F0049004400010000000000
      0E00000054003000350035005F00490044000100000000001C00000054003000
      350035005F004C004F004E0047005F004E0041004D0045000100000000001000
      000054003000360031005F00530055004D000100000000000800000052004500
      47004E0001000000000012000000420041004E004B005F004E0041004D004500
      010000000000}
    object odsListT061_ID: TFloatField
      FieldName = 'T061_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT061_SUM: TFloatField
      FieldName = 'T061_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListREGN: TStringField
      FieldName = 'REGN'
      Required = True
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 45
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.REGN := :REGN;'
      '  v_rec.T061_SUM := :T061_SUM;'
      ''
      '  Pk_Form_405.p_dbf_101_add(v_rec);'
      '  :T061_ID := v_rec.T061_ID;'
      '  :T055_ID := v_rec.T055_ID;'
      '  :REGN := v_rec.REGN;'
      '  :T061_SUM := v_rec.T061_SUM;'
      'END;'
      ''
      '  ')
    Variables.Data = {
      0400000004000000100000003A0054003000350035005F004900440004000000
      00000000000000000A0000003A005200450047004E0005000000000000000000
      0000120000003A0054003000360031005F00530055004D000400000000000000
      00000000100000003A0054003000360031005F00490044000400000000000000
      00000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T061_ID := :T061_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.REGN := :REGN;'
      '  v_rec.T061_SUM := :T061_SUM;'
      ''
      '  Pk_Form_405.p_dbf_101_update(v_rec);'
      '  :T061_ID := v_rec.T061_ID;'
      '  :T055_ID := v_rec.T055_ID;'
      '  :REGN := v_rec.REGN;'
      '  :T061_SUM := v_rec.T061_SUM;'
      'END;'
      ''
      '')
    Variables.Data = {
      0400000004000000100000003A0054003000360031005F004900440004000000
      0000000000000000100000003A0054003000350035005F004900440004000000
      00000000000000000A0000003A005200450047004E0005000000000000000000
      0000120000003A0054003000360031005F00530055004D000400000000000000
      00000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T061_ID := :T061_ID;'
      '  Pk_Form_405.p_dbf_101_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0400000001000000100000003A0054003000360031005F004900440004000000
      0000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_Form_405.t_T061_rec;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_rec.T061_ID := :T061_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.REGN := :REGN;'
      '  v_rec.T061_SUM := :T061_SUM;'
      '  :o_result := Pk_Form_405.f_dbf_101_check(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0400000005000000100000003A0054003000360031005F004900440004000000
      0000000000000000100000003A0054003000350035005F004900440004000000
      00000000000000000A0000003A005200450047004E0005000000000000000000
      0000120000003A0054003000360031005F00530055004D000400000000000000
      00000000120000003A004F005F0052004500530055004C005400040000000000
      000000000000}
  end
  inherited OpenDialog: TOpenDialog
    Filter = #1050#1085#1080#1075#1080' Excel (*.xls, *.xslx)|*.xls;*.xlsx'
    Top = 176
  end
end

inherited C002_CheckRatesBottom: TC002_CheckRatesBottom
  Width = 714
  ExplicitWidth = 714
  inherited xxxDBGrid: TxxxDBGrid
    Width = 714
    AdvSettings.Indexes = <
      item
        FieldName = 'OP_DATE'
        SortType = stAsc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'PAY_GROUP_ID'
        Title.Caption = #1043#1088#1091#1087#1087#1072
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IS_CHECKED'
        Title.Caption = #1042#1099#1073#1086#1088
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_N9'
        Title.Caption = #1056#1072#1089#1089#1088'. 405'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISSUER'
        Title.Caption = #1069#1084#1080#1090#1077#1085#1090
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REZID'
        Title.Caption = #1056#1077#1079#1080#1076#1077#1085#1090
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NREZID'
        Title.Caption = #1053#1077#1088#1077#1079#1080#1076#1077#1085#1090
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_COUNT'
        Title.Caption = #1050'-'#1074#1086' '#1094'.'#1073'. ('#1096#1090'.)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_SUM'
        Title.Caption = #1057#1091#1084#1084#1072' ('#1084#1083#1085'.$)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_PRICE'
        Title.Caption = #1062#1077#1085#1072' 405 ($)'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T001_RATE'
        Title.Caption = #1062#1077#1085#1072' '#1085#1072' '#1073#1080#1088#1078#1077' ($)'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE_DIFF'
        Title.Caption = #1056#1072#1079#1085#1080#1094#1072' '#1094#1077#1085' (%)'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_TYPE'
        Title.Caption = #1058#1080#1087' '#1094'.'#1073'.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP_CODE'
        Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088'.'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T002_BANK_CODE'
        Title.Caption = #1050#1086#1076' '#1050#1054
        Width = 46
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 714
    ExplicitWidth = 714
    inherited tlbList: TToolBar
      inherited tbAdd: TToolButton
        ExplicitWidth = 78
      end
      inherited tbUpdate: TToolButton
        ExplicitWidth = 78
      end
      inherited tbDelete: TToolButton
        ExplicitWidth = 78
      end
    end
    inherited tlbSeach: TToolBar
      inherited tbSearch: TToolButton
        ExplicitWidth = 57
      end
    end
    inherited tlbFilter: TToolBar
      inherited tbSeparator05: TToolButton
        ExplicitHeight = 22
      end
      inherited tbFilter: TToolButton
        ExplicitHeight = 22
      end
    end
    inherited tlbSelect: TToolBar
      Width = 217
      ButtonHeight = 22
      ButtonWidth = 115
      ShowCaptions = True
      Visible = True
      ExplicitWidth = 217
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
        ExplicitWidth = 23
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actGroup
      end
      object ToolButton2: TToolButton
        Left = 198
        Top = 0
        Action = actUngroup
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 714
    ExplicitWidth = 714
    inherited Panel1: TPanel
      Left = 687
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actGroup: TAction
      Caption = #1057#1075#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1088#1072#1089#1089#1088#1086#1095#1077#1085#1085#1086#1075#1086'  '#1087#1083#1072#1090#1077#1078#1072
      ImageIndex = 22
      OnExecute = actGroupExecute
      OnUpdate = actGroupUpdate
    end
    object actUngroup: TAction
      Caption = #1056#1072#1079#1075#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091' '#1079#1072#1087#1080#1089#1077#1081' '#1088#1072#1089#1089#1088#1086#1095#1077#1085#1085#1086#1086#1075#1086' '#1087#1083#1072#1090#1077#1078#1072
      ImageIndex = 23
      OnExecute = actUngroupExecute
      OnUpdate = actUngroupUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select v1.T001_ID,'
      '       v1.T027_ID,'
      '       v1.SEC_TYPE,'
      '       v1.T001_OP_ID,'
      '       v1.OP_CODE,'
      '       v1.T002_BANK_CODE,'
      '       v1.ISSUER,'
      '       v1.REZID,'
      '       v1.NREZID,'
      '       v1.OP_DATE,'
      '       v1.PAY_DIR,'
      '       v1.T001_N9,'
      '       v1.OP_COUNT,'
      '       v1.OP_SUM / 1000000 as OP_SUM,'
      '       v1.T001_PRICE,'
      '       v1.T001_RATE,'
      '       v1.PRICE_DIFF,'
      ''
      '       DECODE(v1.PAY_GROUP_ID, NULL, 1, 0) as IS_CHECKED,'
      '       v1.PAY_GROUP_ID'
      ''
      'from   V_405_IIPS_OPERATIONS v1'
      ''
      'where  v1.T055_ID >= :T055_ID_S -- 1936'
      'and    v1.T055_ID <= :T055_ID_E -- 1938'
      'and    v1.T027_ID = :T027_ID -- (3)'
      'and    v1.T001_OP_ID = :T001_OP_ID -- (1)'
      'and    v1.T002_BANK_CODE = :T002_BANK_CODE'
      'and    v1.T028_ID_MAIN = :T028_ID_MAIN'
      'and    v1.T012_ID_MAIN = :T012_ID_MAIN'
      'and    v1.T013_ID_MAIN = :T013_ID_MAIN'
      
        'and    DECODE(NVL(v1.OP_COUNT, -1), 0, v1.OLD_OP_COUNT, NVL(v1.O' +
        'P_COUNT, -1)) = NVL(:OP_COUNT, -1)')
    Variables.Data = {
      0400000009000000140000003A0054003000350035005F00490044005F005300
      040000000000000000000000140000003A0054003000350035005F0049004400
      5F004500040000000000000000000000100000003A0054003000320037005F00
      49004400040000000000000000000000160000003A0054003000300031005F00
      4F0050005F00490044000400000000000000000000001E0000003A0054003000
      300032005F00420041004E004B005F0043004F00440045000500000000000000
      000000001A0000003A0054003000320038005F00490044005F004D0041004900
      4E000400000000000000000000001A0000003A0054003000310032005F004900
      44005F004D00410049004E000400000000000000000000001A0000003A005400
      3000310033005F00490044005F004D00410049004E0004000000000000000000
      0000120000003A004F0050005F0043004F0055004E0054000400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000130000000E00000054003000320037005F0049004400010000000000
      100000005300450043005F005400590050004500010000000000140000005400
      3000300031005F004F0050005F00490044000100000000000E0000004F005000
      5F0043004F00440045000100000000001C00000054003000300032005F004200
      41004E004B005F0043004F00440045000100000000000C000000490053005300
      5500450052000100000000000A000000520045005A0049004400010000000000
      0C0000004E00520045005A00490044000100000000000E000000500041005900
      5F00440049005200010000000000100000004F0050005F0043004F0055004E00
      54000100000000000C0000004F0050005F00530055004D000100000000001400
      000054003000300031005F005000520049004300450001000000000012000000
      54003000300031005F0052004100540045000100000000001400000050005200
      4900430045005F0044004900460046000100000000000E0000004F0050005F00
      44004100540045000100000000000E00000054003000300031005F004E003900
      0100000000000E00000054003000300031005F00490044000100000000001400
      0000490053005F0043004800450043004B004500440001000000000018000000
      5000410059005F00470052004F00550050005F0049004400010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
    end
    object odsListSEC_TYPE: TStringField
      FieldName = 'SEC_TYPE'
      Size = 255
    end
    object odsListT001_OP_ID: TFloatField
      FieldName = 'T001_OP_ID'
    end
    object odsListOP_CODE: TFloatField
      FieldName = 'OP_CODE'
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Size = 9
    end
    object odsListISSUER: TStringField
      FieldName = 'ISSUER'
      Size = 255
    end
    object odsListREZID: TStringField
      FieldName = 'REZID'
      Size = 255
    end
    object odsListNREZID: TStringField
      FieldName = 'NREZID'
      Size = 255
    end
    object odsListPAY_DIR: TIntegerField
      FieldName = 'PAY_DIR'
    end
    object odsListOP_COUNT: TFloatField
      FieldName = 'OP_COUNT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOP_SUM: TFloatField
      FieldName = 'OP_SUM'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT001_PRICE: TFloatField
      FieldName = 'T001_PRICE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT001_RATE: TFloatField
      FieldName = 'T001_RATE'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListPRICE_DIFF: TFloatField
      FieldName = 'PRICE_DIFF'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOP_DATE: TDateTimeField
      FieldName = 'OP_DATE'
    end
    object odsListT001_N9: TFloatField
      FieldName = 'T001_N9'
    end
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
    end
    object odsListIS_CHECKED: TFloatField
      FieldName = 'IS_CHECKED'
    end
    object odsListPAY_GROUP_ID: TFloatField
      FieldName = 'PAY_GROUP_ID'
    end
  end
  object oqSaveGroup: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :GROUP_ID := Pk_405_SHS_IIP.f_create_pay_group(:T001_IDS);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A00470052004F00550050005F00490044000400
      00000000000000000000120000003A0054003000300031005F00490044005300
      0400000000000000010000000004000000000000}
    Left = 400
    Top = 136
  end
  object oqDeleteGroup: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_405_SHS_IIP.p_delete_pay_group(:GROUP_ID);'
      'end;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A00470052004F00550050005F00490044000400
      00000000000000000000}
    Left = 400
    Top = 176
  end
end

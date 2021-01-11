inherited frm90_SumReports: Tfrm90_SumReports
  Left = 39
  Top = 235
  Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1087#1086#1076#1072#1095#1077' '#1086#1090#1095#1077#1090#1086#1074' '#1092#1086#1088#1084#1099' 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitLeft = 1025
    ExplicitHeight = 324
  end
  inherited paRight: TPanel
    ExplicitLeft = 1028
    ExplicitHeight = 324
  end
  inherited paMain: TPanel
    ExplicitWidth = 1025
    ExplicitHeight = 324
    inherited ToolBar2: TToolBar
      Top = 23
      ExplicitTop = 23
      ExplicitWidth = 1025
      inherited ToolButton17: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Enabled = False
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Height = 303
      ImeMode = imDisable
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1050#1054
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH1'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH2'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH3'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH4'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH5'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH6'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH7'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH8'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH9'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH10'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH11'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH12'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      ExplicitTop = 46
      inherited Panel1: TPanel
        ExplicitLeft = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      ExplicitTop = 67
      inherited Panel1: TPanel
        ExplicitLeft = 998
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitWidth = 1025
      inline fm01_Period: Tfm01_Period
        Left = 2
        Top = 0
        Width = 275
        Height = 20
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitWidth = 275
        ExplicitHeight = 20
        inherited Label1: TLabel
          Width = 111
          Height = 20
          ExplicitWidth = 111
          ExplicitHeight = 20
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 111
          Width = 164
          KeyField = 'T055_ID'
          OnCloseUp = fm01_PeriodlcbPeriodCloseUp
          ExplicitLeft = 111
          ExplicitWidth = 164
        end
        inherited odsPeriod: TOracleDataSet
          QBEDefinition.QBEFieldDefs = {
            05000000030000002000000054003000300032005F004E0055004D0042005F00
            49004E005F005900450041000100000000002A00000054003000300032005F00
            4E0055004D0042005F0049004E005F005900450041005F005400450058005400
            0100000000000E00000054003000350035005F0049004400010000000000}
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    ExplicitTop = 357
    ExplicitWidth = 1028
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 324
    ExplicitWidth = 1028
    inherited OKBtn: TButton
      Left = 874
      ExplicitLeft = 874
    end
    inherited CancelBtn: TButton
      Left = 954
      ExplicitLeft = 954
    end
  end
  inherited ActionList: TActionList
    Left = 176
  end
  inherited PopupMenu: TPopupMenu
    Left = 96
    Top = 163
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT BANK_NAME,'
      'Month1,'
      'Month2,'
      'Month3,'
      'Month4,'
      'Month5,'
      'Month6,'
      'Month7,'
      'Month8,'
      'Month9,'
      'Month10,'
      'Month11,'
      'Month12'
      'FROM V_405_BANC_BY_MONTH'
      'ORDER BY BANK_NAME'
      ' '
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      050000000D0000000E0000004D004F004E005400480031003100010000000000
      0C0000004D004F004E005400480031000100000000000C0000004D004F004E00
      5400480032000100000000000C0000004D004F004E0054004800330001000000
      00000C0000004D004F004E005400480034000100000000000C0000004D004F00
      4E005400480035000100000000000C0000004D004F004E005400480036000100
      000000000C0000004D004F004E005400480037000100000000000C0000004D00
      4F004E005400480038000100000000000C0000004D004F004E00540048003900
      0100000000000E0000004D004F004E0054004800310030000100000000000E00
      00004D004F004E00540048003100320001000000000012000000420041004E00
      4B005F004E0041004D004500010000000000}
    Left = 96
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 259
    end
    object odsListMONTH1: TStringField
      FieldName = 'MONTH1'
      Size = 3
    end
    object odsListMONTH2: TStringField
      FieldName = 'MONTH2'
      Size = 3
    end
    object odsListMONTH3: TStringField
      FieldName = 'MONTH3'
      Size = 3
    end
    object odsListMONTH4: TStringField
      FieldName = 'MONTH4'
      Size = 3
    end
    object odsListMONTH5: TStringField
      FieldName = 'MONTH5'
      Size = 3
    end
    object odsListMONTH6: TStringField
      FieldName = 'MONTH6'
      Size = 3
    end
    object odsListMONTH7: TStringField
      FieldName = 'MONTH7'
      Size = 3
    end
    object odsListMONTH8: TStringField
      FieldName = 'MONTH8'
      Size = 3
    end
    object odsListMONTH9: TStringField
      FieldName = 'MONTH9'
      Size = 3
    end
    object odsListMONTH10: TStringField
      FieldName = 'MONTH10'
      Size = 3
    end
    object odsListMONTH11: TStringField
      FieldName = 'MONTH11'
      Size = 3
    end
    object odsListMONTH12: TStringField
      FieldName = 'MONTH12'
      Size = 3
    end
  end
  inherited pkList: TOraclePackage
    Top = 163
  end
  inherited oqAdd: TOracleQuery
    Left = 200
    Top = 192
  end
  inherited oqUpdate: TOracleQuery
    Left = 240
    Top = 192
  end
  inherited oqDelete: TOracleQuery
    Left = 280
    Top = 192
  end
  inherited oqDupl: TOracleQuery
    Left = 312
    Top = 192
  end
  inherited pmFilter: TPopupMenu
    Left = 328
    Top = 120
  end
  object oqChDate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '   PK_FORM_405.p_set_prevmonths_id(:T055_ID);'
      '  :MONTH1 := PK_FORM_405.f_get_prev_month_name (11);'
      '  :MONTH2 := PK_FORM_405.f_get_prev_month_name (10);'
      '  :MONTH3 := PK_FORM_405.f_get_prev_month_name (9);'
      '  :MONTH4 := PK_FORM_405.f_get_prev_month_name (8);'
      '  :MONTH5 := PK_FORM_405.f_get_prev_month_name (7);'
      '  :MONTH6 := PK_FORM_405.f_get_prev_month_name (6);'
      '  :MONTH7 := PK_FORM_405.f_get_prev_month_name (5);'
      '  :MONTH8 := PK_FORM_405.f_get_prev_month_name (4);'
      '  :MONTH9 := PK_FORM_405.f_get_prev_month_name (3);'
      '  :MONTH10 := PK_FORM_405.f_get_prev_month_name (2);'
      '  :MONTH11 := PK_FORM_405.f_get_prev_month_name (1);'
      '  :MONTH12 := PK_FORM_405.f_get_prev_month_name (0);'
      'END;')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      040000000D000000100000003A0054003000350035005F004900440003000000
      00000000000000000E0000003A004D004F004E00540048003100050000000000
      0000000000000E0000003A004D004F004E005400480032000500000000000000
      000000000E0000003A004D004F004E0054004800330005000000000000000000
      00000E0000003A004D004F004E00540048003400050000000000000000000000
      0E0000003A004D004F004E005400480035000500000000000000000000000E00
      00003A004D004F004E005400480036000500000000000000000000000E000000
      3A004D004F004E005400480037000500000000000000000000000E0000003A00
      4D004F004E005400480038000500000000000000000000000E0000003A004D00
      4F004E00540048003900050000000000000000000000100000003A004D004F00
      4E005400480031003000050000000000000000000000100000003A004D004F00
      4E005400480031003100050000000000000000000000100000003A004D004F00
      4E005400480031003200050000000000000000000000}
    Left = 344
  end
end

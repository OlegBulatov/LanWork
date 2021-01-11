inherited frm90_SumReports711: Tfrm90_SumReports711
  Left = 221
  Top = 163
  Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1087#1086#1076#1072#1095#1077' '#1086#1090#1095#1077#1090#1086#1074' '#1092#1086#1088#1084#1099' 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    ExplicitHeight = 349
  end
  inherited paRight: TPanel
    ExplicitHeight = 349
  end
  inherited paMain: TPanel
    ExplicitHeight = 349
    inherited ToolBar2: TToolBar
      Top = 25
      ExplicitTop = 25
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
      Top = 90
      Height = 301
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          Title.Caption = #1050#1088#1077#1076#1080#1090#1085#1099#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL1'
          Title.Alignment = taCenter
          Title.Caption = '2004 '#1075#1086#1076'   1 '#1082#1074#1072#1088#1090#1072#1083
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL2'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL3'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL4'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL5'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 69
      ExplicitTop = 69
      inherited ppmSearchFrame: TPopupMenu
        Left = 72
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 48
      ExplicitTop = 48
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 677
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitWidth = 703
      inline fm01_Period: Tfm01_Period
        Left = 0
        Top = 0
        Width = 570
        Height = 20
        TabOrder = 0
        ExplicitWidth = 570
        ExplicitHeight = 20
        inherited Label1: TLabel
          Width = 113
          Height = 20
          ExplicitWidth = 113
          ExplicitHeight = 20
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 114
          Width = 162
          KeyField = 'T055_ID'
          OnCloseUp = fm01_PeriodlcbPeriodCloseUp
          ExplicitLeft = 114
          ExplicitWidth = 162
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA')
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
    ExplicitTop = 382
  end
  inherited pnlButtons: TPanel
    ExplicitTop = 349
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT BANK_NAME, '
      'QVARTAL1, '
      'QVARTAL2, '
      'QVARTAL3, '
      'QVARTAL4, '
      'QVARTAL5'
      'FROM V_405_DBF_711_BANC_BY_QVARTAL')
    QBEDefinition.QBEFieldDefs = {
      0500000006000000100000005100560041005200540041004C00310001000000
      0000100000005100560041005200540041004C00320001000000000010000000
      5100560041005200540041004C00330001000000000010000000510056004100
      5200540041004C00340001000000000012000000420041004E004B005F004E00
      41004D004500010000000000100000005100560041005200540041004C003500
      010000000000}
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 259
    end
    object odsListQVARTAL1: TStringField
      FieldName = 'QVARTAL1'
      Size = 3
    end
    object odsListQVARTAL2: TStringField
      FieldName = 'QVARTAL2'
      Size = 3
    end
    object odsListQVARTAL3: TStringField
      FieldName = 'QVARTAL3'
      Size = 3
    end
    object odsListQVARTAL4: TStringField
      FieldName = 'QVARTAL4'
      Size = 3
    end
    object odsListQVARTAL5: TStringField
      FieldName = 'QVARTAL5'
      Size = 3
    end
  end
  object oqChDate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '   PK_FORM_405.p_set_prevqvartals_id(:T055_ID);'
      '  :QVARTAL1 := PK_FORM_405.f_get_prev_qvartal_name (4);'
      '  :QVARTAL2 := PK_FORM_405.f_get_prev_qvartal_name (3);'
      '  :QVARTAL3 := PK_FORM_405.f_get_prev_qvartal_name (2);'
      '  :QVARTAL4 := PK_FORM_405.f_get_prev_qvartal_name (1);'
      '  :QVARTAL5 := PK_FORM_405.f_get_prev_qvartal_name (0);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000006000000120000003A005100560041005200540041004C0031000500
      00000000000000000000120000003A005100560041005200540041004C003200
      050000000000000000000000120000003A005100560041005200540041004C00
      3300050000000000000000000000120000003A00510056004100520054004100
      4C003400050000000000000000000000120000003A0051005600410052005400
      41004C003500050000000000000000000000100000003A005400300035003500
      5F0049004400030000000000000000000000}
    Left = 336
  end
end

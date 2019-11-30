inherited frm90_SumReports: Tfrm90_SumReports
  Left = 39
  Top = 235
  Width = 1036
  Height = 410
  Caption = 'Данные о подаче отчетов формы 405'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1025
    Height = 324
  end
  inherited paRight: TPanel
    Left = 1028
    Height = 324
  end
  inherited paMain: TPanel
    Width = 1025
    Height = 324
    inherited ToolBar2: TToolBar
      Top = 23
      Width = 1025
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
      Width = 1025
      Height = 236
      ImeMode = imDisable
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Название КО'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH1'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH4'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH5'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH6'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH7'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH8'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH9'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH10'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH11'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTH12'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1025
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      inline fm01_Period: Tfm01_Period
        Left = 2
        Width = 275
        Height = 20
        inherited Label1: TLabel
          Width = 111
          Height = 20
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 111
          Width = 164
          KeyField = 'T055_ID'
          OnCloseUp = fm01_PeriodlcbPeriodCloseUp
        end
        inherited odsPeriod: TOracleDataSet
          QBEDefinition.QBEFieldDefs = {
            040000000300000010000000543030325F4E554D425F494E5F59454101000000
            000015000000543030325F4E554D425F494E5F5945415F544558540100000000
            0007000000543035355F4944010000000000}
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 357
    Width = 1028
  end
  inherited pnlButtons: TPanel
    Top = 324
    Width = 1028
    inherited OKBtn: TButton
      Left = 874
    end
    inherited CancelBtn: TButton
      Left = 954
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
      040000000D000000070000004D4F4E54483131010000000000060000004D4F4E
      544831010000000000060000004D4F4E544832010000000000060000004D4F4E
      544833010000000000060000004D4F4E544834010000000000060000004D4F4E
      544835010000000000060000004D4F4E544836010000000000060000004D4F4E
      544837010000000000060000004D4F4E544838010000000000060000004D4F4E
      544839010000000000070000004D4F4E54483130010000000000070000004D4F
      4E544831320100000000000900000042414E4B5F4E414D45010000000000}
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
    Variables.Data = {
      030000000D000000080000003A543035355F4944030000000000000000000000
      070000003A4D4F4E544831050000000000000000000000070000003A4D4F4E54
      4832050000000000000000000000070000003A4D4F4E54483305000000000000
      0000000000070000003A4D4F4E54483405000000000000000000000007000000
      3A4D4F4E544835050000000000000000000000070000003A4D4F4E5448360500
      00000000000000000000070000003A4D4F4E5448370500000000000000000000
      00070000003A4D4F4E544838050000000000000000000000070000003A4D4F4E
      544839050000000000000000000000080000003A4D4F4E544831300500000000
      00000000000000080000003A4D4F4E5448313105000000000000000000000008
      0000003A4D4F4E54483132050000000000000000000000}
    Left = 344
  end
end

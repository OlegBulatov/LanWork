inherited frm90_SumReports711: Tfrm90_SumReports711
  Left = 221
  Top = 163
  Height = 435
  Caption = 'Данные о подаче отчетов формы 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Height = 349
  end
  inherited paRight: TPanel
    Height = 349
  end
  inherited paMain: TPanel
    Height = 349
    inherited ToolBar2: TToolBar
      Top = 25
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
      Height = 259
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'Кредитные организации'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL1'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '2004 год   1 квартал'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL4'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QVARTAL5'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 69
      inherited ppmSearchFrame: TPopupMenu
        Left = 72
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 48
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 703
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      inline fm01_Period: Tfm01_Period
        Width = 570
        Height = 20
        inherited Label1: TLabel
          Width = 113
          Height = 20
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 114
          Width = 162
          KeyField = 'T055_ID'
          OnCloseUp = fm01_PeriodlcbPeriodCloseUp
        end
        inherited odsPeriod: TOracleDataSet
          SQL.Strings = (
            'SELECT   T055_ID, T002_NUMB_IN_YEA,'
            #9' T002_NUMB_IN_YEA_TEXT'
            'FROM     V_405_DBF_711_NUMB_IN_YEA_DESC'
            'ORDER BY T002_NUMB_IN_YEA')
          QBEDefinition.QBEFieldDefs = {
            040000000300000010000000543030325F4E554D425F494E5F59454101000000
            000015000000543030325F4E554D425F494E5F5945415F544558540100000000
            0007000000543035355F4944010000000000}
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 382
  end
  inherited pnlButtons: TPanel
    Top = 349
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
      0400000006000000080000005156415254414C31010000000000080000005156
      415254414C32010000000000080000005156415254414C330100000000000800
      00005156415254414C340100000000000900000042414E4B5F4E414D45010000
      000000080000005156415254414C35010000000000}
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
    Variables.Data = {
      0300000006000000090000003A5156415254414C310500000000000000000000
      00090000003A5156415254414C32050000000000000000000000090000003A51
      56415254414C33050000000000000000000000090000003A5156415254414C34
      050000000000000000000000090000003A5156415254414C3505000000000000
      0000000000080000003A543035355F4944030000000000000000000000}
    Left = 336
  end
end

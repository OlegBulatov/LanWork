inherited frm38_NewReports: Tfrm38_NewReports
  Left = 0
  Top = 391
  Width = 1024
  Height = 497
  Caption = 'Обновления отчетов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1005
    Height = 406
  end
  inherited paRight: TPanel
    Left = 1008
    Height = 406
  end
  inherited paMain: TPanel
    Width = 1005
    Height = 406
    inherited ToolBar2: TToolBar
      Width = 1005
      inherited ToolButton4: TToolButton
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 591
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 599
        Top = 0
        Action = actOpGci
      end
      object ToolButton6: TToolButton
        Left = 706
        Top = 0
        Action = actCopyReports
      end
      object pnlRefresh: TPanel
        Left = 813
        Top = 0
        Width = 273
        Height = 22
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '  Дата последнего обновления: 00.00.0000 00:00:00 '
        TabOrder = 2
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1005
      Height = 341
      ReadOnly = False
      OnCellClick = xxxDBGridCellClick
      OnColExit = xxxDBGridColExit
      AdvSettings.Indexes = <
        item
          FieldName = 'T093_BANK_CODE'
          SortType = stAsc
        end
        item
          FieldName = 'T093_NUMB_IN_YEA_DESC'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <
            item
              FirstCol = 4
              LastCol = 6
              Caption = 'В Россию (в тыс. $)'
            end
            item
              FirstCol = 7
              LastCol = 9
              Caption = 'Из России (в тыс. $)'
            end
            item
              FirstCol = 10
              LastCol = 12
              Caption = 'Сальдо (в тыс. $)'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T093_BANK_CODE'
          PickList.Strings = ()
          Title.Caption = 'КО'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_NUMB_IN_YEA_DESC'
          PickList.Strings = ()
          Title.Caption = 'Отчетный период'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_FICT_OPER_DESC'
          PickList.Strings = ()
          Title.Caption = 'Фикт. опер.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_WAS_HAND_CHANGE'
          PickList.Strings = ()
          Title.Caption = 'Были изменения'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_GCI_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'ДИТ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_DPB_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'ДПБ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_RAZN_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'Разница'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_GCI_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'ДИТ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_DPB_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'ДПБ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_RAZN_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'Разница'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_GCI_SALDO'
          PickList.Strings = ()
          Title.Caption = 'ДИТ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_DPB_SALDO'
          PickList.Strings = ()
          Title.Caption = 'ДПБ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_RAZN_SALDO'
          PickList.Strings = ()
          Title.Caption = 'Разница'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_LOAD_DATE_GCI'
          PickList.Strings = ()
          Title.Caption = 'Дата предоставления отчета (ДИТ)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_LOAD_DATE_DPB'
          PickList.Strings = ()
          Title.Caption = 'Дата предоставления отчета (ДПБ)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T093_CAN_LOAD'
          PickList.Strings = ()
          Title.Caption = 'Необходима загрузка'
          Width = 36
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1005
      inherited Panel1: TPanel
        Left = 978
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1005
      inherited Panel1: TPanel
        Left = 978
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 439
    Width = 1008
  end
  inherited pnlButtons: TPanel
    Top = 406
    Width = 1008
    inherited OKBtn: TButton
      Left = 798
    end
    inherited CancelBtn: TButton
      Left = 878
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
    object actCopyReports: TAction
      Caption = 'Отчеты ДИТ'
      Hint = 'Сверить с отчетами ДИТ'
      ImageIndex = 16
      OnExecute = actCopyReportsExecute
    end
    object actOpGci: TAction
      Caption = 'Операции ДИТ'
      ImageIndex = 11
      OnExecute = actOpGciExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  '
      'T093_ID,'
      'T093_NUMB_IN_YEA, '
      'T093_NUMB_IN_YEA_DESC, '
      'T093_BANK_CODE, '
      'T093_LOAD_DATE_GCI, '
      'T093_LOAD_DATE_DPB, '
      'T093_CAN_LOAD,  '
      'T093_GCI_SUM_IN, '
      'T093_GCI_SUM_OUT, '
      'T093_GCI_SALDO, '
      'T093_DPB_SUM_IN, '
      'T093_DPB_SUM_OUT, '
      'T093_DPB_SALDO,'
      'T093_RAZN_SUM_IN,'
      'T093_RAZN_SUM_OUT,'
      'T093_RAZN_SALDO,'
      'T093_FICT_OPER_DESC,'
      'T093_WAS_HAND_CHANGE'
      'FROM V_405_GCI_REPORTS')
    QBEDefinition.QBEFieldDefs = {
      040000001200000010000000543039335F4E554D425F494E5F59454101000000
      000015000000543039335F4E554D425F494E5F5945415F444553430100000000
      000E000000543039335F42414E4B5F434F444501000000000012000000543039
      335F4C4F41445F444154455F47434901000000000012000000543039335F4C4F
      41445F444154455F4450420100000000000D000000543039335F43414E5F4C4F
      414401000000000007000000543039335F49440100000000000F000000543039
      335F4743495F53554D5F494E01000000000010000000543039335F4743495F53
      554D5F4F55540100000000000E000000543039335F4743495F53414C444F0100
      000000000F000000543039335F4450425F53554D5F494E010000000000100000
      00543039335F4450425F53554D5F4F55540100000000000E000000543039335F
      4450425F53414C444F01000000000010000000543039335F52415A4E5F53554D
      5F494E01000000000011000000543039335F52415A4E5F53554D5F4F55540100
      000000000F000000543039335F52415A4E5F53414C444F010000000000130000
      00543039335F464943545F4F5045525F44455343010000000000140000005430
      39335F5741535F48414E445F4348414E4745010000000000}
    object odsListT093_ID: TFloatField
      FieldName = 'T093_ID'
      Required = True
    end
    object odsListT093_NUMB_IN_YEA: TStringField
      FieldName = 'T093_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsListT093_NUMB_IN_YEA_DESC: TStringField
      FieldName = 'T093_NUMB_IN_YEA_DESC'
      Required = True
      Size = 50
    end
    object odsListT093_BANK_CODE: TStringField
      FieldName = 'T093_BANK_CODE'
      Size = 9
    end
    object odsListT093_LOAD_DATE_GCI: TDateTimeField
      FieldName = 'T093_LOAD_DATE_GCI'
    end
    object odsListT093_LOAD_DATE_DPB: TDateTimeField
      FieldName = 'T093_LOAD_DATE_DPB'
    end
    object odsListT093_CAN_LOAD: TStringField
      FieldName = 'T093_CAN_LOAD'
      Size = 1
    end
    object odsListT093_GCI_SUM_IN: TFloatField
      FieldName = 'T093_GCI_SUM_IN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT093_GCI_SUM_OUT: TFloatField
      FieldName = 'T093_GCI_SUM_OUT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_GCI_SALDO: TFloatField
      FieldName = 'T093_GCI_SALDO'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_DPB_SUM_IN: TFloatField
      FieldName = 'T093_DPB_SUM_IN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_DPB_SUM_OUT: TFloatField
      FieldName = 'T093_DPB_SUM_OUT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_DPB_SALDO: TFloatField
      FieldName = 'T093_DPB_SALDO'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_RAZN_SUM_IN: TFloatField
      FieldName = 'T093_RAZN_SUM_IN'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_RAZN_SUM_OUT: TFloatField
      FieldName = 'T093_RAZN_SUM_OUT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_RAZN_SALDO: TFloatField
      FieldName = 'T093_RAZN_SALDO'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0.00'
    end
    object odsListT093_FICT_OPER_DESC: TStringField
      FieldName = 'T093_FICT_OPER_DESC'
      Size = 4000
    end
    object odsListT093_WAS_HAND_CHANGE: TStringField
      FieldName = 'T093_WAS_HAND_CHANGE'
      Size = 3
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_Form_405.t_T093_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T093_ID := :T093_ID;'
      '  v_rec.T093_CAN_LOAD := :T093_CAN_LOAD;'
      '  Pk_Form_405.p_gci_reports_update(v_rec);'
      '  :T093_ID := v_rec.T093_ID;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000002000000080000003A543039335F4944040000000000000000000000
      0E0000003A543039335F43414E5F4C4F4144050000000000000000000000}
  end
  object oqCopyReports: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Replication.p_sync_reports;'
      'END;')
    Session = dmMain.OracleSession
    Left = 347
    Top = 184
  end
end

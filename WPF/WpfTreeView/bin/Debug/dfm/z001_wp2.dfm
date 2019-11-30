inherited z001_wp2_frame: Tz001_wp2_frame
  Width = 1014
  Height = 695
  inherited Bevel: TBevel
    Width = 1014
  end
  inherited PanelStepCaption: TPanel
    Width = 1014
    inherited Label1: TLabel
      Width = 267
      Caption = 'Шаг 2 - Список ценных бумаг  в этом отчёте'
    end
    inherited Label2: TLabel
      Width = 288
      Caption = '"Далее" - посмотреть операци над этой ценной бумагой'
    end
    object Button1: TButton
      Left = 648
      Top = 0
      Width = 97
      Height = 25
      Caption = 'Это Моя Кнопка'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
  end
  inherited PanelStepBody: TPanel
    Width = 1014
    Height = 643
    inline z001_p2_frame1: Tz001_p2_frame
      Width = 1014
      Height = 599
      inherited xxxDBGrid: TxxxDBGrid
        Width = 1014
        Height = 522
      end
      inherited paToolButton: TPanel
        Width = 1014
        inherited tlbSelect: TToolBar
          inherited ToolButton1: TToolButton
            DropdownMenu = z001_p2_frame1.PopupMenu
          end
        end
      end
      inherited paFilters: TPanel
        Width = 1014
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 1014
        inherited Panel1: TPanel
          Left = 987
        end
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'SELECT  '
          'PERIOD,'
          'T002_ID,'
          'SEC_ID,'
          'SEC_TYPE,'
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
          'FROM V_405_DIT_REPORTS_SEC'
          'WHERE T093_BANK_CODE = :BANK_CODE and PERIOD = :PERIOD '
          '--order BY SEC_ID')
      end
      inherited PopupMenu: TPopupMenu
        inherited mLoadSEC: TMenuItem
          inherited mLoadSEC1: TMenuItem
            Action = actLoadSEC
          end
          inherited mLoadSEC2: TMenuItem
            Action = actLoadSECKO
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 599
      Width = 1014
      Height = 44
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 1
      inline SumDataKO: TSumData
        Left = -1
        Top = 1
        Width = 1079
        Height = 57
      end
    end
  end
  inherited actList: TActionList
    Left = 336
    Top = 24
    object actLoadSEC: TAction
      Caption = 'Текущая'
      OnExecute = actLoadSECExecute
    end
    object actLoadSECKO: TAction
      Caption = 'Все'
      OnExecute = actLoadSECKOExecute
    end
    object actClear1: TAction
      Caption = 'Текущая'
      OnExecute = actClear1Execute
    end
    object actClear2: TAction
      Caption = 'Все помеченные'
      OnExecute = actClear2Execute
    end
  end
  object oqLoadSEC: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_load_sec( :i_t002, :i_sec );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A495F5430303204000000000000000000000006
      0000003A495F534543040000000000000000000000}
    Left = 480
    Top = 520
  end
  object oqLoadSECKO: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_load_secko( :i_t002 );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000070000003A495F54303032040000000000000000000000}
    Left = 520
    Top = 172
  end
  object oqClear1: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_clear_sec( :i_t002, :i_sec );'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000070000003A495F5430303204000000000000000000000006
      0000003A495F534543040000000000000000000000}
    Left = 680
    Top = 180
  end
  object oqClear2: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_clear_bank_sec(:i_t002);'
      'end;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000070000003A495F54303032040000000000000000000000}
    Left = 752
    Top = 228
  end
end

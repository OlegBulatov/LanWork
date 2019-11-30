inherited z001_wp1frame: Tz001_wp1frame
  Width = 1014
  Height = 695
  inherited Bevel: TBevel
    Width = 1014
  end
  inherited PanelStepCaption: TPanel
    Width = 1014
    inherited Label1: TLabel
      Width = 342
      Caption = 'Шаг 1 - Выбор отчета кредитной организации за  период'
    end
    inherited Label2: TLabel
      Left = 44
      Width = 219
      Caption = '"Далее" -детализация по ценным бумагам'
    end
  end
  inherited PanelStepBody: TPanel
    Width = 1014
    Height = 643
    inline Grid: Tz001_p1_frame
      Width = 1014
      Height = 643
      Align = alClient
      inherited xxxDBGrid: TxxxDBGrid
        Width = 1014
        Height = 551
        OnMouseUp = nil
      end
      inherited paToolButton: TPanel
        Width = 1014
      end
      inherited paTop: TPanel
        Width = 1014
      end
      inherited fm031_Filter1: Tfm031_Filter
        Width = 1014
        inherited Panel1: TPanel
          Left = 987
        end
      end
      inherited actList: TActionList
        inherited actSelectAllRows: TAction
          OnExecute = z001_p1_frame1actSelectAllRowsExecute
        end
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'SELECT '
          'T002_ID, '
          'PERIOD,'
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
          'T093_WAS_HAND_CHANGE,'
          'done'
          'FROM V_405_DIT_REPORTS '
          'where '
          '--do_action <> 0'
          'order by T093_BANK_CODE,PERIOD')
      end
      inherited PopupMenu: TPopupMenu
        Left = 88
        Top = 279
        inherited mLoad: TMenuItem
          inherited mLoad1: TMenuItem
            Action = actLoadKO
          end
          inherited mLoad2: TMenuItem
            Action = actLoadKOS
          end
        end
      end
      inherited pmFilter: TPopupMenu
        Left = 208
        Top = 240
      end
    end
  end
  inherited actList: TActionList
    Left = 624
    object actLoadKOS: TAction
      Caption = 'Все помеченные'
      OnExecute = actLoadKOSExecute
    end
    object actClean: TAction
      Caption = 'Все помеченные'
    end
    object actLoadKO: TAction
      Caption = 'Текущий'
      OnExecute = actLoadKOExecute
    end
    object actClean1: TAction
      Caption = 'Текущий'
    end
  end
  object oqLoadKO: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_405_z_show.p_load_KO(:T002_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543030325F4944040000000000000000000000}
    Left = 424
    Top = 276
  end
  object oqClean: TOracleQuery
    SQL.Strings = (
      'begin'
      'pk_405_z_show.p_clear_bank(:i_t002);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000070000003A495F54303032040000000000000000000000}
    Left = 528
    Top = 252
  end
  object oqLoadKOS: TOracleQuery
    SQL.Strings = (
      'begin'
      '  pk_405_z_show.p_load_KOS;'
      'end;')
    Session = dmMain.OracleSession
    Left = 424
    Top = 324
  end
  object oqClean1: TOracleQuery
    Left = 536
    Top = 292
  end
end

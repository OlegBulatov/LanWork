inherited frm86_RemainsPortDayList: Tfrm86_RemainsPortDayList
  Left = 89
  Top = 208
  Width = 798
  Height = 598
  Caption = 'Список дат расчета портфеля'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 107
    Width = 4
    Height = 512
    Align = alLeft
    Visible = True
  end
  inherited paRight: TPanel
    Left = 111
    Width = 679
    Height = 512
    Align = alClient
  end
  inherited paMain: TPanel
    Width = 107
    Height = 512
    Align = alLeft
    inherited ToolBar2: TToolBar
      Width = 107
      Visible = False
      inherited ToolButton19: TToolButton
        Left = 186
      end
      inherited ToolButton4: TToolButton
        Left = 260
      end
      inherited ToolBar1: TToolBar
        Left = 268
      end
      inherited sp02: TToolButton
        Left = 337
      end
      inherited tbSimFilter: TToolButton
        Left = 345
      end
      inherited tbSep01: TToolButton
        Left = 429
      end
      inherited tlbSearch: TToolBar
        Left = 437
      end
      inherited ToolButton13: TToolButton
        Left = 497
      end
      inherited tbExcel: TToolButton
        Left = 505
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 107
      Height = 447
      AdvSettings.Indexes = <
        item
          FieldName = 'T099_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T099_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T099_CALC_STATE'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 107
      inherited Panel1: TPanel
        Left = 365
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 107
      inherited Panel1: TPanel
        Left = 477
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 545
    Width = 790
  end
  inherited pnlButtons: TPanel
    Top = 512
    Width = 790
    inherited OKBtn: TButton
      Left = 632
    end
    inherited CancelBtn: TButton
      Left = 712
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
      Caption = 'Пересчитать...'
      Enabled = False
      Hint = 'Пересчитать котировки за период...'
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T099_ID, T030_ID, T055_ID, T099_DATE, T099_CALC_STATE'
      'FROM V_405_CALC_REM_PORTF_PER'
      'WHERE T055_ID = :T055_ID'
      'AND T030_ID = :T030_ID')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543035355F494401000000000007000000543039
      395F494401000000000007000000543033305F49440100000000000900000054
      3039395F444154450100000000000F000000543039395F43414C435F53544154
      45010000000000}
    object odsListT099_ID: TFloatField
      FieldName = 'T099_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT099_DATE: TDateTimeField
      FieldName = 'T099_DATE'
      Required = True
    end
    object odsListT099_CALC_STATE: TStringField
      FieldName = 'T099_CALC_STATE'
      Size = 1
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_PORTF_DATA_FIFO.P_CALC_PORTF (:I_T055_ID);'
      'END;')
    Variables.Data = {
      03000000010000000A0000003A495F543035355F494404000000000000000000
      0000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  Pk_405_Rts_Mmvb_Rates.P_CALC_QUOTATION(:I_T030_ID, :I_T055_ID_' +
        'S, :I_T055_ID_E, :I_TYPE);'
      'END;'
      ' ')
    Variables.Data = {
      03000000040000000A0000003A495F543033305F494404000000000000000000
      00000C0000003A495F543035355F49445F530400000000000000000000000C00
      00003A495F543035355F49445F45040000000000000000000000070000003A49
      5F54595045030000000000000000000000}
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      
        ':o_result := Pk_Portf_Data_FIFO.f_get_rec_count(:T055_ID,:T027_I' +
        'D);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000090000003A4F5F524553554C540400000000000000000000
      00080000003A543035355F4944040000000000000000000000080000003A5430
      32375F4944040000000000000000000000}
    Left = 135
    Top = 232
  end
end

inherited frm34_CouponList: Tfrm34_CouponList
  Left = 139
  Top = 171
  Width = 759
  Height = 434
  Caption = 'График выплаты купонов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 748
    Height = 348
  end
  inherited paRight: TPanel
    Left = 751
    Height = 348
  end
  inherited paMain: TPanel
    Width = 748
    Height = 348
    inherited ToolBar2: TToolBar
      Width = 748
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actFill
        AutoSize = True
        Wrap = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 748
      Height = 283
      AdvSettings.Indexes = <
        item
          FieldName = 'T032_DATE_END'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 2
              Caption = 'Начисление %'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'COUPON_NUMBER'
          PickList.Strings = ()
          Title.Caption = '№'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_DATE_START'
          PickList.Strings = ()
          Title.Caption = 'Начало'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_DATE_END'
          PickList.Strings = ()
          Title.Caption = 'Окончание'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUPON_DAYS'
          PickList.Strings = ()
          Title.Caption = 'Период, дней'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T032_RATE'
          PickList.Strings = ()
          Title.Caption = 'Ставка, % в год'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма на 1 обл.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T032_EXD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Экс. див. дата'
          Width = 90
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 748
      inherited Panel1: TPanel
        Left = 721
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 748
      inherited Panel1: TPanel
        Left = 721
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 381
    Width = 751
  end
  inherited pnlButtons: TPanel
    Top = 348
    Width = 751
  end
  inherited ActionList: TActionList
    object actFill: TAction
      Caption = 'Заполнить'
      Hint = 'Заполнить матрицу до даты погашения'
      ImageIndex = 19
      OnExecute = actFillExecute
      OnUpdate = actFillUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  COUPON_NUMBER,'
      '  T032_DATE_START,'
      'T032_DATE_END,'
      '  COUPON_DAYS,'
      '  T032_CALC_DATE_TYPE,'
      ' T032_EXD_DATE, '
      '  T032_RATE,'
      '  T032_SUM,'
      '  T032_ID,'
      '  T030_ID'
      'FROM   V_405_COUPON_EXT'
      'WHERE T030_ID = :T030_ID'
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000B00000007000000543033325F494401000000000007000000543033
      305F494401000000000009000000543033325F52415445010000000000080000
      00543033325F53554D0100000000000D000000434F55504F4E5F4E554D424552
      0100000000000F000000543033325F444154455F53544152540100000000000B
      000000434F55504F4E5F4441595301000000000013000000543033325F43414C
      435F444154455F545950450100000000000D000000543033325F4558445F4441
      54450100000000000D000000543033325F444154455F454E4401000000000008
      000000543033325F504F53010000000000}
    MasterFields = 'T030_ID'
    AfterScroll = odsListAfterScroll
    object odsListT032_DATE_START: TDateTimeField
      FieldName = 'T032_DATE_START'
    end
    object odsListT032_DATE_END: TDateTimeField
      FieldName = 'T032_DATE_END'
      Required = True
    end
    object odsListCOUPON_DAYS: TFloatField
      FieldName = 'COUPON_DAYS'
    end
    object odsListT032_CALC_DATE_TYPE: TIntegerField
      FieldName = 'T032_CALC_DATE_TYPE'
      Required = True
    end
    object odsListT032_EXD_DATE: TDateTimeField
      FieldName = 'T032_EXD_DATE'
    end
    object odsListT032_RATE: TFloatField
      FieldName = 'T032_RATE'
      Required = True
    end
    object odsListT032_SUM: TFloatField
      FieldName = 'T032_SUM'
      Required = True
    end
    object odsListT032_ID: TFloatField
      FieldName = 'T032_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListCOUPON_NUMBER: TFloatField
      FieldName = 'COUPON_NUMBER'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec pk_405_coupons.t_T032_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T032_RATE := :T032_RATE;'
      '  v_rec.T032_SUM := :T032_SUM;'
      '  v_rec.T032_DATE_START := :T032_DATE_START;'
      '  v_rec.T032_PERIOD := :T032_PERIOD;'
      '  v_rec.T032_EXD_DATE := :T032_EXD_DATE;'
      '  v_rec.T032_DATE_END := :T032_DATE_END;'
      '  v_rec.T032_POS := :T032_POS;'
      '  v_rec.T032_CALC_DATE_TYPE := :T032_CALC_DATE_TYPE;'
      ''
      '  pk_405_coupons.p_coupon_add(v_rec);'
      ''
      '  :T032_ID := v_rec.T032_ID;'
      'END;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Variables.Data = {
      030000000A000000080000003A543033305F4944040000000000000000000000
      0A0000003A543033325F52415445040000000000000000000000080000003A54
      3033325F4944040000000000000000000000090000003A543033325F53554D04
      0000000000000000000000100000003A543033325F444154455F53544152540C
      0000000000000000000000090000003A543033325F504F530400000000000000
      00000000140000003A543033325F43414C435F444154455F5459504504000000
      00000000000000000E0000003A543033325F4558445F444154450C0000000000
      0000000000000C0000003A543033325F504552494F4404000000000000000000
      00000E0000003A543033325F444154455F454E440C0000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec pk_405_coupons.t_T032_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T032_ID := :T032_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T032_RATE := :T032_RATE;'
      '  v_rec.T032_SUM := :T032_SUM;'
      '  v_rec.T032_DATE_START := :T032_DATE_START;'
      '  v_rec.T032_PERIOD := :T032_PERIOD;'
      '  v_rec.T032_EXD_DATE := :T032_EXD_DATE;'
      '  v_rec.T032_DATE_END := :T032_DATE_END;'
      '  v_rec.T032_POS := :T032_POS;'
      '  v_rec.T032_CALC_DATE_TYPE := :T032_CALC_DATE_TYPE;'
      '  pk_405_coupons.p_coupon_update(v_rec);'
      'END;'
      ''
      ' '
      ' ')
    Variables.Data = {
      030000000A000000080000003A543033325F4944040000000000000000000000
      080000003A543033305F49440400000000000000000000000A0000003A543033
      325F52415445040000000000000000000000090000003A543033325F53554D04
      0000000000000000000000100000003A543033325F444154455F53544152540C
      00000000000000000000000C0000003A543033325F504552494F440400000000
      000000000000000E0000003A543033325F4558445F444154450C000000000000
      0000000000090000003A543033325F504F530400000000000000000000001400
      00003A543033325F43414C435F444154455F5459504504000000000000000000
      00000E0000003A543033325F444154455F454E440C0000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec pk_405_coupons.t_T032_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T032_ID := :T032_ID;'
      '  pk_405_coupons.p_coupon_delete(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033325F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec pk_405_coupons.t_T032_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T032_ID := :T032_ID;'
      '  v_rec.T030_ID := :T030_ID;'
      '  v_rec.T032_DATE_END := :T032_DATE_END;'
      '  :o_result := pk_405_coupons.f_coupon_check(v_rec);'
      'END;'
      ' ')
    Variables.Data = {
      0300000004000000080000003A543033305F4944040000000000000000000000
      090000003A4F5F524553554C54040000000000000000000000080000003A5430
      33325F49440400000000000000000000000E0000003A543033325F444154455F
      454E440C0000000000000000000000}
  end
  object oqFill: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        ' :RESULT := pk_405_coupons.f_coupon_matrix_fill(:pDateMethod, :T' +
        '030_ID);'
      'END;'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543033305F4944040000000000000000000000
      070000003A524553554C540400000000000000000000000C0000003A50444154
      454D4554484F44040000000000000000000000}
    Left = 320
    Top = 184
  end
  object oqGetPos: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  :RESULT := pk_405_coupons.f_is_last_coupon(:T030_ID, :T032_ID,' +
        ' :T032_DATE_END);'
      'end;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000070000003A524553554C5404000000000000000000000008
      0000003A543033305F4944040000000000000000000000080000003A54303332
      5F49440400000000000000000000000E0000003A543033325F444154455F454E
      440C0000000000000000000000}
    Left = 384
    Top = 184
  end
end

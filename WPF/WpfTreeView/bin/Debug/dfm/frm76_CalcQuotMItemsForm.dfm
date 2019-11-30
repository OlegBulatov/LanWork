inherited frm76_CalcQuotMItems: Tfrm76_CalcQuotMItems
  Left = 49
  Top = 205
  Width = 902
  Caption = 'Месячные котировки'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 891
  end
  inherited paRight: TPanel
    Left = 894
  end
  inherited paMain: TPanel
    Width = 891
    inherited ToolBar2: TToolBar
      Width = 891
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Action = actCalc
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 891
      Height = 176
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_END_DATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 2
              Caption = 'Котировка в валюте номинала'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_FULL_RATE'
          PickList.Strings = ()
          Title.Caption = 'с НКД'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_RATE_VALUE'
          PickList.Strings = ()
          Title.Caption = 'без НКД'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T121_NKD'
          PickList.Strings = ()
          Title.Caption = 'НКД'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_CHANGE_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата изменения'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_CALC_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата расчета'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Статус'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T083_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 140
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 891
      inherited Panel1: TPanel
        Left = 864
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 891
      inherited Panel1: TPanel
        Left = 864
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 241
      Width = 891
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 241
        Top = 8
        Width = 222
        Height = 13
        Caption = 'Данные ММВБ с 00/00/0000 по 00/00/0000'
      end
      object Label2: TLabel
        Left = 4
        Top = 8
        Width = 227
        Height = 13
        Caption = 'Данные Reuters c 00/00/0000 по 00/00/0000'
      end
      object Label3: TLabel
        Left = 472
        Top = 8
        Width = 211
        Height = 13
        Caption = 'Данные РТС с 00/00/0000 по 00/00/0000'
      end
      object Label4: TLabel
        Left = 692
        Top = 8
        Width = 234
        Height = 13
        Caption = 'Данные ГКО-ОФЗ c 00/00/000 по 00/00/0000'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Width = 894
  end
  inherited pnlButtons: TPanel
    Width = 894
    inherited OKBtn: TButton
      Left = 753
    end
    inherited CancelBtn: TButton
      Left = 833
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
    object actCalc: TAction
      Caption = 'Пересчитать...'
      Hint = 'Пересчитать котировки за период...'
      ImageIndex = 28
      OnExecute = actCalcExecute
      OnUpdate = actCalcUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T083_ID,'
      '  T030_ID,'
      '  T055_ID,'
      '  T055_END_DATE,'
      '  T055_LONG_NAME,'
      '  T083_FULL_RATE,'
      '  T083_STATE,'
      '  T083_STATE_DESC,'
      '  T083_CALC_DATE,'
      '  T083_CHANGE_DATE,'
      '  T121_NKD,'
      '  T083_COMMENT,'
      '  T083_RATE_VALUE'
      'FROM V_405_QUOTATION_MONTH'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543038335F494401000000000007000000543033
      305F494401000000000007000000543035355F49440100000000000E00000054
      3035355F4C4F4E475F4E414D450100000000000A000000543038335F53544154
      450100000000000F000000543038335F53544154455F44455343010000000000
      0D000000543035355F454E445F444154450100000000000E000000543038335F
      43414C435F4441544501000000000010000000543038335F4348414E47455F44
      4154450100000000000C000000543038335F434F4D4D454E5401000000000008
      000000543132315F4E4B440100000000000F000000543038335F524154455F56
      414C55450100000000000E000000543038335F46554C4C5F5241544501000000
      0000}
    MasterFields = 'T030_ID'
    object odsListT083_ID: TFloatField
      FieldName = 'T083_ID'
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
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT083_STATE: TStringField
      FieldName = 'T083_STATE'
      Required = True
      Size = 1
    end
    object odsListT083_STATE_DESC: TStringField
      DisplayWidth = 32
      FieldName = 'T083_STATE_DESC'
      Size = 32
    end
    object odsListT055_END_DATE: TDateTimeField
      FieldName = 'T055_END_DATE'
      Required = True
    end
    object odsListT083_CALC_DATE: TDateTimeField
      FieldName = 'T083_CALC_DATE'
    end
    object odsListT083_CHANGE_DATE: TDateTimeField
      FieldName = 'T083_CHANGE_DATE'
    end
    object odsListT083_COMMENT: TStringField
      FieldName = 'T083_COMMENT'
      Size = 255
    end
    object odsListT121_NKD: TFloatField
      FieldName = 'T121_NKD'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT083_RATE_VALUE: TFloatField
      FieldName = 'T083_RATE_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT083_FULL_RATE: TFloatField
      FieldName = 'T083_FULL_RATE'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  Pk_405_Rts_Mmvb_Rates.P_CHANGE_MONTH_RATE(:I_T083_ID, :I_T083_' +
        'VALUE);'
      '  COMMIT;'
      'END;'
      ' '
      '')
    Variables.Data = {
      03000000020000000A0000003A495F543038335F494404000000000000000000
      00000D0000003A495F543038335F56414C5545040000000000000000000000}
  end
  object oqCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  Pk_405_Rts_Mmvb_Rates.P_CALC_QUOTATION(:I_T030_ID, :I_T055_END' +
        '_DATE_S, :I_T055_END_DATE_E);'
      'END;'
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000030000000A0000003A495F543033305F494404000000000000000000
      0000120000003A495F543035355F454E445F444154455F530C00000000000000
      00000000120000003A495F543035355F454E445F444154455F450C0000000000
      000000000000}
    Left = 336
    Top = 176
  end
  object odsMMVB: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM V_405_MMVB_DATES'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004D494E5F44415445010000000000080000004D41
      585F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsMMVBAfterOpen
    AfterRefresh = odsMMVBAfterOpen
    Left = 240
    Top = 216
    object odsMMVBMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsMMVBMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
  object odsReuters: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM V_405_REUTERS_DATES'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004D494E5F44415445010000000000080000004D41
      585F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsReutersAfterOpen
    AfterRefresh = odsReutersAfterOpen
    Left = 24
    Top = 216
    object odsReutersMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsReutersMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
  object odsRTS: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM V_405_RTS_DATES'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004D494E5F44415445010000000000080000004D41
      585F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsRTSAfterOpen
    AfterRefresh = odsRTSAfterOpen
    Left = 744
    Top = 216
    object odsRTSMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsRTSMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
  object odsGko: TOracleDataSet
    SQL.Strings = (
      'SELECT MIN_DATE, MAX_DATE'
      'FROM   V_405_GKO_DATES'
      'WHERE  T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004D494E5F44415445010000000000080000004D41
      585F44415445010000000000}
    Session = dmMain.OracleSession
    AfterOpen = odsGkoAfterOpen
    AfterRefresh = odsGkoAfterOpen
    Left = 504
    Top = 216
    object odsGkoMIN_DATE: TDateTimeField
      FieldName = 'MIN_DATE'
    end
    object odsGkoMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
  end
end

inherited H003_FlowsList: TH003_FlowsList
  Width = 828
  Height = 401
  Caption = 'Выплаты'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 817
    Height = 315
  end
  inherited paRight: TPanel
    Left = 820
    Height = 315
  end
  inherited paMain: TPanel
    Width = 817
    Height = 315
    inherited ToolBar2: TToolBar
      Width = 817
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
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 817
      Height = 250
      AdvSettings.Indexes = <
        item
          FieldName = 'T040_PAY_DATE'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T040_EMISSION_ID'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'ID эмиссии'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T040_PAY_DATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Дата выплаты'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T040_COUPON_RATE'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Ставка купона, % годовых'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T040_COUPON_SUM'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Сумма купона'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T040_MATURITY'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Погашение номинала'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T040_COMMENT_RUS'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Примечание - русск.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T040_COMMENT_ENG'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = 'Примечание - англ.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T030_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 817
      inherited Panel1: TPanel
        Left = 790
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 817
      inherited Panel1: TPanel
        Left = 790
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 348
    Width = 820
  end
  inherited pnlButtons: TPanel
    Top = 315
    Width = 820
    Visible = True
    inherited OKBtn: TButton
      Left = 662
    end
    inherited CancelBtn: TButton
      Left = 742
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select '
      '  T040_ID,'
      '  T030_ID,'
      '  T040_EMISSION_ID,'
      '  T040_PAY_DATE,'
      '  T040_COUPON_RATE,'
      '  T040_COUPON_SUM,'
      '  T040_MATURITY,'
      '  T040_COMMENT_RUS,'
      '  T040_COMMENT_ENG,'
      '  T040_LOAD_DATE,'
      '  T040_FILE_NAME,'
      '  T040_LOADER,'
      '  T040_DELETED'
      'from V_CB_FLOWS'
      'where T040_DELETED = 0')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543034305F494401000000000007000000543033
      305F49440100000000000D000000543034305F5041595F444154450100000000
      0010000000543034305F434F55504F4E5F524154450100000000000F00000054
      3034305F434F55504F4E5F53554D0100000000000D000000543034305F4D4154
      555249545901000000000010000000543034305F434F4D4D454E545F52555301
      000000000010000000543034305F434F4D4D454E545F454E470100000000000E
      000000543034305F4C4F41445F444154450100000000000E000000543034305F
      46494C455F4E414D450100000000000B000000543034305F4C4F414445520100
      000000000C000000543034305F44454C45544544010000000000100000005430
      34305F454D495353494F4E5F4944010000000000}
    object odsListT040_ID: TFloatField
      FieldName = 'T040_ID'
      Required = True
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT040_EMISSION_ID: TFloatField
      FieldName = 'T040_EMISSION_ID'
    end
    object odsListT040_PAY_DATE: TDateTimeField
      FieldName = 'T040_PAY_DATE'
    end
    object odsListT040_COUPON_RATE: TFloatField
      FieldName = 'T040_COUPON_RATE'
    end
    object odsListT040_COUPON_SUM: TFloatField
      FieldName = 'T040_COUPON_SUM'
    end
    object odsListT040_MATURITY: TFloatField
      FieldName = 'T040_MATURITY'
    end
    object odsListT040_COMMENT_RUS: TStringField
      FieldName = 'T040_COMMENT_RUS'
      Size = 255
    end
    object odsListT040_COMMENT_ENG: TStringField
      FieldName = 'T040_COMMENT_ENG'
      Size = 255
    end
    object odsListT040_LOAD_DATE: TDateTimeField
      FieldName = 'T040_LOAD_DATE'
    end
    object odsListT040_FILE_NAME: TStringField
      FieldName = 'T040_FILE_NAME'
      Size = 255
    end
    object odsListT040_LOADER: TStringField
      FieldName = 'T040_LOADER'
      Size = 255
    end
    object odsListT040_DELETED: TIntegerField
      FieldName = 'T040_DELETED'
    end
  end
end

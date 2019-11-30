inherited frm74_MMVBItems: Tfrm74_MMVBItems
  Left = 241
  Top = 250
  Width = 1036
  Height = 355
  Caption = 'Котировки ММВБ'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1025
    Height = 269
  end
  inherited paRight: TPanel
    Left = 1028
    Height = 269
  end
  inherited paMain: TPanel
    Width = 1025
    Height = 269
    inherited ToolBar2: TToolBar
      Width = 1025
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1025
      Height = 204
      AdvSettings.Indexes = <
        item
          FieldName = 'T080_TRADEDATE'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 3
              LastCol = 7
              Caption = 'В валюте номинала'
            end
            item
              FirstCol = 8
              LastCol = 13
              Caption = 'В валюте торгов'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T080_TRADEDATE'
          PickList.Strings = ()
          Title.Caption = 'Дата торгов'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_NUMTRADES'
          PickList.Strings = ()
          Title.Caption = 'Кол-во сделок'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_VOLUME'
          PickList.Strings = ()
          Title.Caption = 'Оборот (шт)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_VALUE_NOM'
          PickList.Strings = ()
          Title.Caption = 'Оборот'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_WAPRICE_NOM'
          PickList.Strings = ()
          Title.Caption = 'Ср. цена %'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_ACCINT_NOM'
          PickList.Strings = ()
          Title.Caption = 'НКД'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_BID_NOM'
          PickList.Strings = ()
          Title.Caption = 'Наиб. спрос %'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_OFFER_NOM'
          PickList.Strings = ()
          Title.Caption = 'Наиб. предл. %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Оборот'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_WAPRICE'
          PickList.Strings = ()
          Title.Caption = 'Ср. цена %'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_ACCINT'
          PickList.Strings = ()
          Title.Caption = 'НКД'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_BID'
          PickList.Strings = ()
          Title.Caption = 'Наиб. спрос %'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_OFFER'
          PickList.Strings = ()
          Title.Caption = 'Наиб. предл. %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_CURRENCY'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_SHORTNAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_FILE_NAME'
          PickList.Strings = ()
          Title.Caption = 'Имя файла'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_LOAD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Загружен'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_REM'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 180
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1025
      inherited Panel1: TPanel
        Left = 998
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 302
    Width = 1028
  end
  inherited pnlButtons: TPanel
    Top = 269
    Width = 1028
    inherited OKBtn: TButton
      Left = 995
    end
    inherited CancelBtn: TButton
      Left = 1075
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
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T080_ID,'
      ' T081_ID,'
      ' T080_TRADEDATE,'
      ' T080_VALUE,'
      ' T080_VALUE_NOM,'
      ' T080_VOLUME,'
      ' T080_BID,'
      ' T080_BID_NOM,'
      ' T080_OFFER,'
      ' T080_OFFER_NOM,'
      ' T080_NUMTRADES,'
      ' T080_WAPRICE,'
      ' T080_WAPRICE_NOM,'
      ' T080_FILE_NAME,'
      ' T080_LOAD_DATE,'
      ' T080_SHORTNAME,'
      ' T080_ACCINT,'
      ' T080_ACCINT_NOM,'
      ' T080_CURRENCY,'
      ' T080_REM'
      ' '
      'FROM V_405_MMVB_RATES'
      'WHERE T081_ID = :T081_ID'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543038315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001400000007000000543038305F494401000000000007000000543038
      315F49440100000000000E000000543038305F54524144454441544501000000
      00000A000000543038305F56414C554501000000000008000000543038305F42
      49440100000000000A000000543038305F4F464645520100000000000E000000
      543038305F4E554D5452414445530100000000000C000000543038305F574150
      524943450100000000000E000000543038305F46494C455F4E414D4501000000
      00000E000000543038305F53484F52544E414D450100000000000B0000005430
      38305F564F4C554D450100000000000B000000543038305F414343494E540100
      000000000D000000543038305F43555252454E43590100000000000E00000054
      3038305F56414C55455F4E4F4D0100000000000C000000543038305F4249445F
      4E4F4D0100000000000E000000543038305F4F464645525F4E4F4D0100000000
      0010000000543038305F574150524943455F4E4F4D0100000000000F00000054
      3038305F414343494E545F4E4F4D01000000000008000000543038305F52454D
      0100000000000E000000543038305F4C4F41445F44415445010000000000}
    MasterFields = 'T081_ID'
    object odsListT080_ID: TFloatField
      FieldName = 'T080_ID'
      Required = True
    end
    object odsListT081_ID: TFloatField
      FieldName = 'T081_ID'
      Required = True
    end
    object odsListT080_TRADEDATE: TDateTimeField
      FieldName = 'T080_TRADEDATE'
      Required = True
    end
    object odsListT080_VALUE: TFloatField
      FieldName = 'T080_VALUE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0'
    end
    object odsListT080_BID: TFloatField
      FieldName = 'T080_BID'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0'
    end
    object odsListT080_OFFER: TFloatField
      FieldName = 'T080_OFFER'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0'
    end
    object odsListT080_NUMTRADES: TFloatField
      FieldName = 'T080_NUMTRADES'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT080_WAPRICE: TFloatField
      FieldName = 'T080_WAPRICE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0'
    end
    object odsListT080_FILE_NAME: TStringField
      FieldName = 'T080_FILE_NAME'
      Size = 255
    end
    object odsListT080_SHORTNAME: TStringField
      FieldName = 'T080_SHORTNAME'
      Size = 255
    end
    object odsListT080_VOLUME: TFloatField
      FieldName = 'T080_VOLUME'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT080_ACCINT: TFloatField
      FieldName = 'T080_ACCINT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0'
    end
    object odsListT080_CURRENCY: TStringField
      FieldName = 'T080_CURRENCY'
      Size = 3
    end
    object odsListT080_VALUE_NOM: TFloatField
      FieldName = 'T080_VALUE_NOM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT080_BID_NOM: TFloatField
      FieldName = 'T080_BID_NOM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT080_OFFER_NOM: TFloatField
      FieldName = 'T080_OFFER_NOM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT080_WAPRICE_NOM: TFloatField
      FieldName = 'T080_WAPRICE_NOM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT080_ACCINT_NOM: TFloatField
      FieldName = 'T080_ACCINT_NOM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT080_LOAD_DATE: TDateTimeField
      FieldName = 'T080_LOAD_DATE'
    end
    object odsListT080_REM: TStringField
      DisplayWidth = 32
      FieldName = 'T080_REM'
      Size = 32
    end
  end
end

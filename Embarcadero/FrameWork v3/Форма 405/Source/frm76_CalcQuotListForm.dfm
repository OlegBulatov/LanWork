inherited frm76_CalcQuotList: Tfrm76_CalcQuotList
  Left = 120
  Top = 193
  Width = 950
  Height = 753
  Caption = 'Эмиссии котировок'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 298
    Width = 942
  end
  inherited spRight: TSplitter
    Left = 939
    Height = 298
  end
  inherited paRight: TPanel
    Left = 942
    Height = 298
  end
  inherited paMain: TPanel
    Width = 939
    Height = 298
    inherited ToolBar2: TToolBar
      Width = 939
      inherited ToolButton17: TToolButton
        Enabled = False
      end
      inherited ToolButton19: TToolButton
        Enabled = False
      end
      inherited ToolButton7: TToolButton
        Hint = 'Показать/скрыть состояние расчета котировок...'
        Caption = 'Котировки...'
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 939
      Height = 207
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          PickList.Strings = ()
          Title.Caption = 'ISIN'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T092_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата погашения'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_NOMINAL'
          PickList.Strings = ()
          Title.Caption = 'Номинал'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_CURRENCY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Width = 50
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 939
      inherited Panel1: TPanel
        Left = 912
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 939
      inherited Panel1: TPanel
        Left = 912
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 272
      Width = 939
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 56
        Height = 13
        Caption = 'RIC ММВБ:'
      end
      object DBText1: TDBText
        Left = 80
        Top = 8
        Width = 137
        Height = 17
        DataField = 'T081_SECURITYID'
        DataSource = dsList
      end
      object Label2: TLabel
        Left = 288
        Top = 8
        Width = 56
        Height = 13
        Caption = 'Файл РТС:'
      end
      object DBText2: TDBText
        Left = 352
        Top = 8
        Width = 137
        Height = 17
        DataField = 'T086_FILE_NAME'
        DataSource = dsList
      end
    end
  end
  inherited Panel1: TPanel
    Top = 301
    Width = 942
    Height = 366
    inherited pc01: TPageControl
      Width = 940
      Height = 364
      inherited ts01: TTabSheet
        Caption = 'Расчетные котировки'
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 700
    Width = 942
  end
  inherited pnlButtons: TPanel
    Top = 667
    Width = 942
    inherited OKBtn: TButton
      Left = 784
    end
    inherited CancelBtn: TButton
      Left = 864
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actShowDetail: TAction
      Caption = 'Расчет портфеля...'
      Hint = 'Показать/скрыть состояние расчета портфеля ценных бумаг...'
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  T030_ID,'
      '        T026_ID,'
      '        T026_SEC_REGN,'
      '        T027_ID,'
      '        T027_SEC_TYPE,'
      '        T028_ID,'
      '        T028_SHOT_NAME,'
      '        T028_CODE,'
      '        T025_SHOT_NAME,'
      '        T081_SECURITYID,'
      '        T086_FILE_NAME,'
      '        T010_ISIN_TRANSL,'
      '        T092_DATE,'
      '        T031_CURRENCY_NAME,'
      '        T031_NOMINAL'
      'FROM'#9'V_405_QUOTATION_EMISSION')
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543033305F49440100000000000D000000543032
      365F5345435F5245474E0100000000000D000000543032375F5345435F545950
      450100000000000E000000543032385F53484F545F4E414D450100000000000E
      000000543032355F53484F545F4E414D4501000000000009000000543032385F
      434F444501000000000007000000543032365F49440100000000000700000054
      3032375F494401000000000007000000543032385F49440100000000000F0000
      00543038315F534543555249545949440100000000000E000000543038365F46
      494C455F4E414D4501000000000009000000543039325F444154450100000000
      0012000000543033315F43555252454E43595F4E414D450100000000000C0000
      00543033315F4E4F4D494E414C01000000000010000000543031305F4953494E
      5F5452414E534C010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT081_SECURITYID: TStringField
      FieldName = 'T081_SECURITYID'
      Size = 255
    end
    object odsListT086_FILE_NAME: TStringField
      FieldName = 'T086_FILE_NAME'
      Size = 255
    end
    object odsListT092_DATE: TDateTimeField
      FieldName = 'T092_DATE'
    end
    object odsListT031_CURRENCY_NAME: TStringField
      FieldName = 'T031_CURRENCY_NAME'
      Size = 3
    end
    object odsListT031_NOMINAL: TFloatField
      FieldName = 'T031_NOMINAL'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
  end
end

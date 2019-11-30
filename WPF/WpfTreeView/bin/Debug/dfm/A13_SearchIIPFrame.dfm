inherited A13_SearchIIP: TA13_SearchIIP
  Width = 882
  Height = 587
  inherited xxxDBGrid: TxxxDBGrid
    Width = 882
    Height = 562
    AdvSettings.Enabled = False
    AdvSettings.HeadersLines = <
      item
        Headers = <
          item
            FirstCol = 4
            LastCol = 7
            Caption = 'В долл. США'
          end
          item
            FirstCol = 8
            LastCol = 11
            Caption = 'В вал. операции'
          end>
      end
      item
        Headers = <>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'T037_ITEM_NAME'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T036_CODE'
        PickList.Strings = ()
        Title.Caption = 'Сектор'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_COUNTRY'
        PickList.Strings = ()
        Title.Caption = 'Страна'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_CURRENCY'
        PickList.Strings = ()
        Title.Caption = 'Валюта'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_IN'
        PickList.Strings = ()
        Title.Caption = 'Вх. остаток'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OPER'
        PickList.Strings = ()
        Title.Caption = 'Операции'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_PER'
        PickList.Strings = ()
        Title.Caption = 'Переоц.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Исх. остаток'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_IN_C'
        PickList.Strings = ()
        Title.Caption = 'Вх. остаток'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OPER_C'
        PickList.Strings = ()
        Title.Caption = 'Операции'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_PER_C'
        PickList.Strings = ()
        Title.Caption = 'Переоц.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T021_SUM_OUT_C'
        PickList.Strings = ()
        Title.Caption = 'Исх. остаток'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T048_CURS_IN'
        PickList.Strings = ()
        Title.Caption = 'Курс (вх)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T048_CURS_OPER'
        PickList.Strings = ()
        Title.Caption = 'Курс (опер)'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T048_CURS_OUT'
        PickList.Strings = ()
        Title.Caption = 'Курс (исх)'
        Width = 80
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 882
    inherited tlbSelect: TToolBar
      Width = 175
      ButtonHeight = 22
      ButtonWidth = 88
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actReport
        AutoSize = True
      end
    end
  end
  inherited actList: TActionList
    object actReport: TAction
      Caption = 'Отчет BPM6'
      ImageIndex = 42
      OnExecute = actReportExecute
      OnUpdate = actReportUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T037_TYPE,'
      '  T037_ITEM_NAME,'
      '  T037_POSITION,'
      '  T036_CODE,'
      '  T021_COUNTRY,'
      '  T021_CURRENCY,'
      '  T021_SUM_IN,'
      '  T021_SUM_OPER,'
      '  T021_SUM_PER,'
      '  T021_SUM_OUT,'
      '  T021_SUM_IN_C,'
      '  T021_SUM_OPER_C,'
      '  T021_SUM_PER_C,'
      '  T021_SUM_OUT_C,'
      '  T048_CURS_IN,'
      '  T048_CURS_OUT,'
      '  T048_CURS_OPER,'
      '  DATA_TYPE'
      'FROM   V_410_SD_IIP'
      'WHERE  DATA_TYPE = '#39'S'#39
      'OR DATA_TYPE = :DATA_TYPE'
      
        'ORDER BY T037_POSITION, DATA_TYPE DESC, T021_COUNTRY, T021_CURRE' +
        'NCY'
      ' ')
    Variables.Data = {
      03000000010000000A0000003A444154415F5459504505000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      04000000120000000C000000543032315F53554D5F4F55540100000000000D00
      0000543032315F43555252454E43590100000000000C000000543032315F434F
      554E54525901000000000009000000543033365F434F44450100000000000E00
      0000543033375F4954454D5F4E414D4501000000000009000000543033375F54
      5950450100000000000D000000543033375F504F534954494F4E010000000000
      09000000444154415F545950450100000000000B000000543032315F53554D5F
      494E0100000000000D000000543032315F53554D5F4F5045520100000000000C
      000000543032315F53554D5F5045520100000000000D000000543032315F5355
      4D5F494E5F430100000000000F000000543032315F53554D5F4F5045525F4301
      00000000000E000000543032315F53554D5F5045525F430100000000000E0000
      00543032315F53554D5F4F55545F430100000000000C000000543034385F4355
      52535F494E0100000000000D000000543034385F435552535F4F555401000000
      00000E000000543034385F435552535F4F504552010000000000}
    BeforeOpen = odsListBeforeOpen
    Left = 181
    Top = 141
    object odsListT037_ITEM_NAME: TStringField
      FieldName = 'T037_ITEM_NAME'
      Size = 255
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT021_CURRENCY: TStringField
      FieldName = 'T021_CURRENCY'
      Size = 3
    end
    object odsListT021_SUM_OUT: TFloatField
      FieldName = 'T021_SUM_OUT'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT037_TYPE: TStringField
      FieldName = 'T037_TYPE'
      Size = 1
    end
    object odsListT037_POSITION: TFloatField
      FieldName = 'T037_POSITION'
    end
    object odsListDATA_TYPE: TStringField
      FieldName = 'DATA_TYPE'
      Size = 1
    end
    object odsListT021_SUM_IN: TFloatField
      FieldName = 'T021_SUM_IN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_SUM_OPER: TFloatField
      FieldName = 'T021_SUM_OPER'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_SUM_PER: TFloatField
      FieldName = 'T021_SUM_PER'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_SUM_IN_C: TFloatField
      FieldName = 'T021_SUM_IN_C'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_SUM_OPER_C: TFloatField
      FieldName = 'T021_SUM_OPER_C'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_SUM_PER_C: TFloatField
      FieldName = 'T021_SUM_PER_C'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_SUM_OUT_C: TFloatField
      FieldName = 'T021_SUM_OUT_C'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT048_CURS_IN: TFloatField
      FieldName = 'T048_CURS_IN'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT048_CURS_OUT: TFloatField
      FieldName = 'T048_CURS_OUT'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT048_CURS_OPER: TFloatField
      FieldName = 'T048_CURS_OPER'
      DisplayFormat = '### ### ### ##0.0'
    end
    object odsListT021_COUNTRY: TFloatField
      FieldName = 'T021_COUNTRY'
    end
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 185
    Top = 206
  end
end

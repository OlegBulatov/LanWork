inherited A13_SearchPageGrid: TA13_SearchPageGrid
  Width = 978
  Height = 422
  inherited xxxDBGrid: TxxxDBGrid
    Width = 978
    Height = 397
    AdvSettings.Enabled = False
    FlatStyle = True
    Columns = <
      item
        Expanded = False
        FieldName = 'T037_ITEM_NAME'
        PickList.Strings = ()
        Title.Caption = 'Показатель'
        Width = 420
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
        FieldName = 'T021_SUM_OUT'
        PickList.Strings = ()
        Title.Caption = 'Сумма'
        Width = 80
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 978
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 145
      ButtonHeight = 22
      ButtonWidth = 114
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actUpload
      end
    end
  end
  inherited actList: TActionList
    object actUpload: TAction
      Caption = 'Сводная таблица'
      ImageIndex = 5
      OnExecute = actUploadExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T037_TYPE,'
      '       T037_POSITION,'
      '       T037_ITEM_NAME,'
      '       T036_CODE,'
      '       T021_SUM_OUT,'
      '       T021_CURRENCY,'
      '       T021_COUNTRY,'
      '       DATA_TYPE'
      'FROM   V_410_SD_REMAINS'
      'WHERE  DATA_TYPE = '#39'S'#39
      'OR DATA_TYPE = :DATA_TYPE'
      
        'ORDER BY T037_POSITION, DATA_TYPE DESC, T021_COUNTRY, T021_CURRE' +
        'NCY')
    Variables.Data = {
      03000000010000000A0000003A444154415F5459504505000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      04000000080000000C000000543032315F53554D5F4F55540100000000000D00
      0000543032315F43555252454E43590100000000000C000000543032315F434F
      554E54525901000000000009000000543033365F434F44450100000000000E00
      0000543033375F4954454D5F4E414D4501000000000009000000543033375F54
      5950450100000000000D000000543033375F504F534954494F4E010000000000
      09000000444154415F54595045010000000000}
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
    object odsListT021_COUNTRY: TFloatField
      FieldName = 'T021_COUNTRY'
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
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 185
    Top = 206
  end
end

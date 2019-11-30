inherited A12_ReportsListPage3: TA12_ReportsListPage3
  Width = 842
  inherited xxxDBGrid: TxxxDBGrid
    Width = 842
    Columns = <
      item
        Expanded = False
        FieldName = 'T037_PART'
        PickList.Strings = ()
        Title.Caption = 'Раздел'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T037_CODE'
        PickList.Strings = ()
        Title.Caption = 'Описание ошибки'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_SUM_410'
        PickList.Strings = ()
        Title.Caption = 'Сумма 410'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_SUM_401'
        PickList.Strings = ()
        Title.Caption = 'Сумма 401'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_DIFF'
        PickList.Strings = ()
        Title.Caption = 'Расхождение'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_CHECK_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата выявления'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_STATE_TEXT'
        PickList.Strings = ()
        Title.Caption = 'Состояние'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T023_CLOSE_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата закрытия'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 842
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      Width = 215
      ButtonHeight = 22
      ButtonWidth = 105
      ShowCaptions = True
      Visible = True
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
      object ToolButton1: TToolButton
        Left = 83
        Top = 0
        Action = actCheck
      end
      object ToolButton2: TToolButton
        Left = 188
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 25
        Style = tbsSeparator
      end
      object tbError: TToolButton
        Left = 196
        Top = 0
        Hint = 'Закрыть ошибку'
        AutoSize = True
        Caption = 'Закрываеммм!'
        ImageIndex = 29
      end
    end
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 842
    inherited Panel1: TPanel
      Left = 815
    end
  end
  inherited actList: TActionList
    Images = dmPicters.ilCommonPictures
    object actCheck: TAction
      Caption = 'Сверка'
      Hint = 'Сверить повторно отчет выбранного банка с данными 401ф'
      ImageIndex = 24
      OnExecute = actCheckExecute
      OnUpdate = actCheckUpdate
    end
    object actCloseError: TAction
      Caption = 'Закрыть'
      Hint = 'Закрыть ошибку'
      ImageIndex = 29
      OnExecute = actCloseErrorExecute
      OnUpdate = actCloseErrorUpdate
    end
    object actOpenError: TAction
      Caption = 'Открыть'
      Hint = 'Открыть ошибку'
      ImageIndex = 27
      OnExecute = actOpenErrorExecute
      OnUpdate = actOpenErrorUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T023_ID,'
      '       T020_ID,'
      '       T037_ID,'
      '       T037_PART,'
      '       T037_CODE,'
      '       T036_CODE,'
      '       T023_COUNTRY_ID,'
      '       T023_SUM_410,'
      '       T023_SUM_401,'
      '       T023_DIFF,'
      '       T023_CHECK_DATE,'
      '       T023_STATE,'
      '       T023_STATE_TEXT,'
      '       T023_CLOSE_DATE'
      'from   V_410_SUM_DATA_CHECK'
      'where T020_ID = :T020_ID')
    Variables.Data = {
      0300000001000000080000003A543032305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543032335F494401000000000007000000543032
      305F494401000000000009000000543033375F434F44450100000000000C0000
      00543032335F53554D5F3431300100000000000C000000543032335F53554D5F
      34303101000000000009000000543032335F444946460100000000000A000000
      543032335F53544154450100000000000F000000543032335F53544154455F54
      4558540100000000000F000000543032335F434C4F53455F4441544501000000
      00000F000000543032335F434845434B5F444154450100000000000900000054
      3033365F434F44450100000000000F000000543032335F434F554E5452595F49
      4401000000000007000000543033375F49440100000000000900000054303337
      5F50415254010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT023_ID: TFloatField
      FieldName = 'T023_ID'
    end
    object odsListT020_ID: TFloatField
      FieldName = 'T020_ID'
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT037_PART: TIntegerField
      FieldName = 'T037_PART'
    end
    object odsListT037_CODE: TStringField
      FieldName = 'T037_CODE'
      Size = 52
    end
    object odsListT036_CODE: TStringField
      FieldName = 'T036_CODE'
      Size = 3
    end
    object odsListT023_COUNTRY_ID: TIntegerField
      FieldName = 'T023_COUNTRY_ID'
    end
    object odsListT023_SUM_410: TFloatField
      FieldName = 'T023_SUM_410'
    end
    object odsListT023_SUM_401: TFloatField
      FieldName = 'T023_SUM_401'
    end
    object odsListT023_DIFF: TFloatField
      FieldName = 'T023_DIFF'
    end
    object odsListT023_CHECK_DATE: TDateTimeField
      FieldName = 'T023_CHECK_DATE'
    end
    object odsListT023_STATE: TStringField
      FieldName = 'T023_STATE'
      Size = 1
    end
    object odsListT023_STATE_TEXT: TStringField
      FieldName = 'T023_STATE_TEXT'
      Size = 8
    end
    object odsListT023_CLOSE_DATE: TDateTimeField
      FieldName = 'T023_CLOSE_DATE'
    end
  end
  object oqCheck: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_Check.p_check_bank_data(:T020_ID);'
      '  COMMIT;'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032305F4944040000000000000000000000}
    Left = 192
    Top = 248
  end
  object oqCloseError: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_CloseCheckError(:T023_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032335F4944040000000000000000000000}
    Left = 196
    Top = 312
  end
  object oqOpenError: TOracleQuery
    SQL.Strings = (
      'begin'
      '  Pk_410_HandCorrect.p_OpenCheckError(:T023_ID);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A543032335F4944040000000000000000000000}
    Left = 240
    Top = 312
  end
end

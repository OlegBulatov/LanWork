inherited frm21_DBF402LoadList: Tfrm21_DBF402LoadList
  Left = 454
  Top = 209
  Caption = 'frm21_DBF402LoadList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 24
    Height = 325
  end
  inherited paRight: TPanel
    Top = 24
    Height = 325
  end
  inherited paMain: TPanel
    Top = 24
    Height = 325
    inherited paToolBars: TPanel
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 260
      AdvSettings.Indexes = <
        item
          FieldName = 'T001_DATE_OP'
          SortType = stAsc
        end
        item
          FieldName = 'COUNTRY_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата операции'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код страны'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_PROC_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа (в $)'
          Width = 150
          Visible = True
        end>
    end
  end
  object Panel4: TPanel [7]
    Left = 0
    Top = 0
    Width = 925
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    inline fm01_PeriodS: Tfm01_Period
      Width = 281
      inherited Label1: TLabel
        Width = 121
        Caption = '    Отчетный период: c'
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 120
        Width = 161
        KeyField = 'T055_ID'
      end
      inherited odsPeriod: TOracleDataSet
        SQL.Strings = (
          'SELECT   T055_ID, T002_NUMB_IN_YEA,'
          #9' T002_NUMB_IN_YEA_TEXT'
          'FROM     V_NR_NUMB_IN_YEA_DESC'
          'ORDER BY t055_id desc')
      end
    end
    inline fm01_PeriodE: Tfm01_Period
      Left = 282
      Width = 199
      TabOrder = 1
      inherited Label1: TLabel
        Width = 33
        Caption = '    по'
      end
      inherited lcbPeriod: TDBLookupComboBox
        Left = 32
        Width = 161
        KeyField = 'T055_ID'
      end
      inherited dsPeriod: TDataSource
        Left = 112
      end
      inherited odsPeriod: TOracleDataSet
        SQL.Strings = (
          'SELECT   T055_ID, T002_NUMB_IN_YEA,'
          #9' T002_NUMB_IN_YEA_TEXT'
          'FROM     V_NR_NUMB_IN_YEA_DESC'
          'ORDER BY t055_id desc')
        Left = 80
      end
    end
    object Button1: TButton
      Left = 480
      Top = 0
      Width = 75
      Height = 22
      Action = actApplyPeriod
      TabOrder = 2
    end
  end
  inherited ActionList: TActionList
    inherited actDeleteAttributes: TAction
      Enabled = True
      Visible = True
    end
    inherited actLoad: TAction
      OnExecute = actLoadExecute
    end
    inherited actDelAll: TAction
      Enabled = False
      Visible = False
    end
    object actApplyPeriod: TAction
      Caption = 'Обновить'
      OnExecute = actApplyPeriodExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT   T001_ID,'
      '         T001_DATE_OP,'
      '         T055_ID,'
      '         COUNTRY_CODE,'
      '         COUNTRY_NAME,'
      '         T027_SEC_TYPE,'
      '         T001_OP_PROC_CROSS'
      'FROM     V_NR_402_OPERS'
      'WHERE    T055_ID BETWEEN :T055_S_ID AND :T055_E_ID')
    Variables.Data = {
      03000000020000000A0000003A543035355F535F494404000000000000000000
      00000A0000003A543035355F455F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000543030315F49440100000000000C000000543030
      315F444154455F4F5001000000000007000000543035355F4944010000000000
      0C000000434F554E5452595F4E414D4501000000000012000000543030315F4F
      505F50524F435F43524F53530100000000000D000000543032375F5345435F54
      5950450100000000000C000000434F554E5452595F434F4445010000000000}
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT001_OP_PROC_CROSS: TFloatField
      FieldName = 'T001_OP_PROC_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListCOUNTRY_CODE: TFloatField
      FieldName = 'COUNTRY_CODE'
      Required = True
    end
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NResident.p_t001_sum_delete(:T001_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
  end
  inherited OpenDialog: TOpenDialog
    Filter = 'XLS files (*.xls)|*.xls'
  end
  object oqBeforeLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NR_402_TO_405.p_clear_402_temp;'
      'END;')
    Session = dmMain.OracleSession
    Left = 352
    Top = 184
  end
  object oqAfterLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NR_402_TO_405.p_402_to_405;'
      'END;')
    Session = dmMain.OracleSession
    Left = 352
    Top = 224
  end
end

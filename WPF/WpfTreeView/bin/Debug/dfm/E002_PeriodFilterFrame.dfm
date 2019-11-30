inherited E002_PeriodFilter: TE002_PeriodFilter
  Width = 517
  inherited lbCaption: TLabel
    Width = 103
    Caption = 'Отчетный период   с'
  end
  inherited Label1: TLabel
    Left = 317
  end
  inherited lcb: TxxxDBLookupCheckCombo
    Left = 124
    Width = 181
    LookupField = 'T055_ID'
    LookupDisplay = 'T002_NUMB_IN_YEA_TEXT'
  end
  inherited lcb2: TRxDBLookupCombo
    Left = 335
    Width = 181
    LookupField = 'T055_ID'
    LookupDisplay = 'T002_NUMB_IN_YEA_TEXT'
  end
  inherited actList: TActionList
    Left = 256
  end
  inherited dsList: TDataSource
    Left = 200
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       T002_NUMB_IN_YEA,'
      #9'T002_NUMB_IN_YEA_TEXT'
      'FROM   V_405_NUMB_IN_YEA_DESC'
      'where  T055_ID <= :PERIOD_TO'
      'ORDER BY T002_NUMB_IN_YEA')
    Variables.Data = {
      03000000010000000A0000003A504552494F445F544F04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F494401000000000010000000543030
      325F4E554D425F494E5F59454101000000000015000000543030325F4E554D42
      5F494E5F5945415F54455854010000000000}
    Left = 160
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Size = 5
    end
    object odsListT002_NUMB_IN_YEA_TEXT: TStringField
      FieldName = 'T002_NUMB_IN_YEA_TEXT'
      Size = 50
    end
  end
  inherited odsList2: TOracleDataSet
    SQL.Strings = (
      'SELECT T055_ID,'
      '       T002_NUMB_IN_YEA,'
      #9'T002_NUMB_IN_YEA_TEXT'
      'FROM   V_405_NUMB_IN_YEA_DESC'
      'where  T055_ID >= :PERIOD_FROM'
      'ORDER BY T002_NUMB_IN_YEA')
    Variables.Data = {
      03000000010000000C0000003A504552494F445F46524F4D0400000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035355F494401000000000010000000543030
      325F4E554D425F494E5F59454101000000000015000000543030325F4E554D42
      5F494E5F5945415F54455854010000000000}
    object odsList2T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsList2T002_NUMB_IN_YEA: TStringField
      FieldName = 'T002_NUMB_IN_YEA'
      Required = True
      Size = 5
    end
    object odsList2T002_NUMB_IN_YEA_TEXT: TStringField
      FieldName = 'T002_NUMB_IN_YEA_TEXT'
      Required = True
      Size = 50
    end
  end
end

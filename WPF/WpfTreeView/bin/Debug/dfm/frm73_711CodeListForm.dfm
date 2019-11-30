inherited frm73_711CodeList: Tfrm73_711CodeList
  Left = 206
  Top = 234
  Caption = 'Коды формы 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T053_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T053_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 400
          Visible = True
        end>
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
      'Select T053_ID, T053_NAME, T053_DESCR from T053_711_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543035335F494401000000000009000000543035
      335F4E414D450100000000000A000000543035335F4445534352010000000000}
    object odsListT053_ID: TFloatField
      FieldName = 'T053_ID'
      Required = True
    end
    object odsListT053_NAME: TStringField
      FieldName = 'T053_NAME'
      Required = True
      Size = 255
    end
    object odsListT053_DESCR: TStringField
      FieldName = 'T053_DESCR'
      Size = 500
    end
  end
end

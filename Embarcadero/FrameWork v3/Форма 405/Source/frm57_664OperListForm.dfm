inherited frm57_664OperList: Tfrm57_664OperList
  Caption = 'Коды формы 664'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T089_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T089_GROUP_NAME'
          PickList.Strings = ()
          Title.Caption = 'Группа'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T089_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T089_NAME_FULL'
          PickList.Strings = ()
          Title.Caption = 'Полное описание'
          Width = 450
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
      'select * from T089_664_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543038395F494401000000000009000000543038
      395F434F444501000000000009000000543038395F4E414D450100000000000E
      000000543038395F4E414D455F46554C4C0100000000000F000000543038395F
      47524F55505F4E414D45010000000000}
    object odsListT089_ID: TFloatField
      FieldName = 'T089_ID'
      Required = True
    end
    object odsListT089_CODE: TStringField
      FieldName = 'T089_CODE'
      Required = True
      Size = 255
    end
    object odsListT089_NAME: TStringField
      FieldName = 'T089_NAME'
      Required = True
      Size = 255
    end
    object odsListT089_NAME_FULL: TStringField
      FieldName = 'T089_NAME_FULL'
      Required = True
      Size = 255
    end
    object odsListT089_GROUP_NAME: TStringField
      FieldName = 'T089_GROUP_NAME'
      Required = True
      Size = 255
    end
  end
end

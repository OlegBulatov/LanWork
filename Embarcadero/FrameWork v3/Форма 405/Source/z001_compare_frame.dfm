inherited z001_compare: Tz001_compare
  Width = 809
  Height = 337
  inherited xxxDBGrid: TxxxDBGrid
    Width = 809
    Height = 250
    AdvSettings.Indexes = <
      item
        FieldName = 'id'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        PickList.Strings = ()
        Title.Caption = '№'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        PickList.Strings = ()
        Title.Caption = 'Наименование поля'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPER_1'
        PickList.Strings = ()
        Title.Caption = 'Операция №1'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPER_2'
        PickList.Strings = ()
        Title.Caption = 'Операция №2'
        Width = 300
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 809
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 296
    Width = 809
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 3
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 809
    inherited Panel1: TPanel
      Left = 782
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  id, NAME, oper_1, oper_2 FROM z_comp_oper')
    QBEDefinition.QBEFieldDefs = {
      0400000004000000040000004E414D45010000000000060000004F5045525F31
      010000000000060000004F5045525F3201000000000002000000494401000000
      0000}
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListNAME: TStringField
      FieldName = 'NAME'
      Size = 255
    end
    object odsListOPER_1: TStringField
      FieldName = 'OPER_1'
      Size = 255
    end
    object odsListOPER_2: TStringField
      FieldName = 'OPER_2'
      Size = 255
    end
  end
end

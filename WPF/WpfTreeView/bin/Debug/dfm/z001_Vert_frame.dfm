inherited z001_Vert: Tz001_Vert
  Width = 507
  Height = 799
  inherited xxxDBGrid: TxxxDBGrid
    Width = 507
    Height = 712
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
        Title.Caption = 'Значение'
        Width = 300
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 507
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 758
    Width = 507
    Height = 41
    Align = alBottom
    TabOrder = 3
  end
  inherited fm031_Filter1: Tfm031_Filter
    Width = 507
    inherited Panel1: TPanel
      Left = 480
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  * FROM v_view_oper')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000004E414D45010000000000060000004F5045525F31
      010000000000020000004944010000000000}
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
  end
end

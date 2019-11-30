inherited fmGrid_PreviewFile: TfmGrid_PreviewFile
  Width = 752
  Height = 515
  inherited xxxDBGrid: TxxxDBGrid
    Top = 66
    Width = 752
    Height = 449
    Columns = <
      item
        Expanded = False
        FieldName = 'ROW_NUM'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F1'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F2'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F3'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F4'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F5'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F6'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F7'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F8'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F9'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F10'
        PickList.Strings = ()
        Width = 60
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 752
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 25
    Width = 752
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object cbStartRow: TComboBox
      Left = 32
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT rownum as ROW_NUM,  '
      #39' '#39' AS F1,'
      #39' '#39' AS F2,'
      #39' '#39' AS F3,'
      #39' '#39' AS F4,'
      #39' '#39' AS F5,'
      #39' '#39' AS F6,'
      #39' '#39' AS F7,'
      #39' '#39' AS F8,'
      #39' '#39' AS F9,'
      #39' '#39' AS F10'
      'FROM DUAL')
    QBEDefinition.QBEFieldDefs = {
      040000000B000000020000004631010000000000020000004632010000000000
      0200000046330100000000000200000046340100000000000200000046350100
      0000000002000000463601000000000002000000463701000000000002000000
      4638010000000000020000004639010000000000030000004631300100000000
      0004000000524E554D010000000000}
    object odsListRNUM: TFloatField
      FieldName = 'ROW_NUM'
    end
    object odsListF1: TStringField
      FieldName = 'F1'
    end
    object odsListF2: TStringField
      FieldName = 'F2'
    end
    object odsListF3: TStringField
      FieldName = 'F3'
    end
    object odsListF4: TStringField
      FieldName = 'F4'
    end
    object odsListF5: TStringField
      FieldName = 'F5'
    end
    object odsListF6: TStringField
      FieldName = 'F6'
    end
    object odsListF7: TStringField
      FieldName = 'F7'
    end
    object odsListF8: TStringField
      FieldName = 'F8'
    end
    object odsListF9: TStringField
      FieldName = 'F9'
    end
    object odsListF10: TStringField
      FieldName = 'F10'
    end
  end
  inherited oqUpdate: TOracleQuery
    Top = 172
  end
  object oqSetDate: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      '  PK_408_LOAD.p_set_start_date(:START_DATE);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000B0000003A53544152545F44415445050000000000000000
      000000}
    Left = 200
    Top = 296
  end
end
